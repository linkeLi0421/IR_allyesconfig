; ModuleID = '/llk/IR_all_yes/drivers/media/usb/dvb-usb/af9005-fe.c_pt.bc'
source_filename = "../drivers/media/usb/dvb-usb/af9005-fe.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.RegDesc = type { i16, i8, i8, i8 }
%struct.mt2060_config = type { i8, i8 }
%struct.qt1010_config = type { i8 }
%struct.af9005_fe_state = type { ptr, i32, i32, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i16, i32, i32, i32, %struct.dvb_frontend }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon }>
%union.anon = type { i64 }
%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, ptr, [6 x i8], ptr, ptr, ptr, i32, ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.dvb_usb_device = type { %struct.dvb_usb_device_properties, ptr, ptr, i32, i32, %struct.mutex, %struct.mutex, %struct.mutex, %struct.i2c_adapter, i32, [2 x %struct.dvb_usb_adapter], ptr, ptr, [64 x i8], %struct.delayed_work, i32, i32, ptr, ptr }
%struct.dvb_usb_device_properties = type { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, [2 x %struct.dvb_usb_adapter_properties], ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, [12 x %struct.dvb_usb_device_description] }
%struct.dvb_usb_adapter_properties = type { i32, ptr, i32, [3 x %struct.dvb_usb_adapter_fe_properties] }
%struct.dvb_usb_adapter_fe_properties = type { i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.usb_data_stream_properties, i32 }
%struct.usb_data_stream_properties = type { i32, i32, i32, %union.anon.131 }
%union.anon.131 = type { %struct.anon.133 }
%struct.anon.133 = type { i32, i32, i32 }
%struct.anon.134 = type { i32, %struct.dvb_rc_legacy, %struct.dvb_rc }
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
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.dvb_usb_adapter = type { ptr, %struct.dvb_usb_adapter_properties, i32, i8, i32, %struct.dvb_adapter, %struct.dmxdev, %struct.dvb_demux, %struct.dvb_net, [3 x %struct.dvb_usb_fe_adapter], i32, i32, ptr }
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
%struct.hlist_node = type { ptr, ptr }

@dvb_usb_af9005_debug = external dso_local local_unnamed_addr global i32, align 4
@af9005_fe_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1431, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"attaching frontend af9005\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"af9005_fe_attach\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/media/usb/dvb-usb/af9005-fe.c\00", [58 x i8] zeroinitializer }, align 32
@af9005_fe_attach._entry_ptr = internal global ptr @af9005_fe_attach._entry, section ".printk_index", align 4
@af9005_fe_ops = internal constant { %struct.dvb_frontend_ops, [128 x i8] } { %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"AF9005 USB DVB-T\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 44250000, i32 867250000, i32 250000, i32 0, i32 0, i32 0, i32 0, i32 1075523247 }, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr null, ptr @af9005_fe_release, ptr null, ptr @af9005_fe_init, ptr @af9005_fe_sleep, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @af9005_fe_set_frontend, ptr null, ptr @af9005_fe_get_frontend, ptr @af9005_fe_read_status, ptr @af9005_fe_read_ber, ptr @af9005_fe_read_signal_strength, ptr @af9005_fe_read_snr, ptr @af9005_fe_read_unc_blocks, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @af9005_ts_bus_ctrl, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, [128 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@af9005_fe_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 812, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"in af9005_fe_init\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"af9005_fe_init\00", [17 x i8] zeroinitializer }, align 32
@af9005_fe_init._entry_ptr = internal global ptr @af9005_fe_init._entry, section ".printk_index", align 4
@af9005_fe_init._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.4, ptr @.str.2, i32 815, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"reset\0A\00", [25 x i8] zeroinitializer }, align 32
@af9005_fe_init._entry_ptr.7 = internal global ptr @af9005_fe_init._entry.5, section ".printk_index", align 4
@af9005_fe_init._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.2, i32 823, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"clear ofdm reset\0A\00", [46 x i8] zeroinitializer }, align 32
@af9005_fe_init._entry_ptr.10 = internal global ptr @af9005_fe_init._entry.8, section ".printk_index", align 4
@regmask = external dso_local local_unnamed_addr global [8 x i8], align 1
@af9005_fe_init._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.4, ptr @.str.2, i32 879, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"set stand alone chip\0A\00", [42 x i8] zeroinitializer }, align 32
@af9005_fe_init._entry_ptr.13 = internal global ptr @af9005_fe_init._entry.11, section ".printk_index", align 4
@af9005_fe_init._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.4, ptr @.str.2, i32 887, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"set dca upper & lower chip\0A\00", [36 x i8] zeroinitializer }, align 32
@af9005_fe_init._entry_ptr.16 = internal global ptr @af9005_fe_init._entry.14, section ".printk_index", align 4
@af9005_fe_init._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.4, ptr @.str.2, i32 900, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"set 2wire master clock to 0x14 (for 60KHz)\0A\00", [52 x i8] zeroinitializer }, align 32
@af9005_fe_init._entry_ptr.19 = internal global ptr @af9005_fe_init._entry.17, section ".printk_index", align 4
@af9005_fe_init._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.4, ptr @.str.2, i32 906, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"clear dca enable chip\0A\00", [41 x i8] zeroinitializer }, align 32
@af9005_fe_init._entry_ptr.22 = internal global ptr @af9005_fe_init._entry.20, section ".printk_index", align 4
@af9005_fe_init._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.4, ptr @.str.2, i32 920, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"program cfoe\0A\00", [18 x i8] zeroinitializer }, align 32
@af9005_fe_init._entry_ptr.25 = internal global ptr @af9005_fe_init._entry.23, section ".printk_index", align 4
@af9005_fe_init._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.4, ptr @.str.2, i32 925, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"set read-update bit for modulation\0A\00", [60 x i8] zeroinitializer }, align 32
@af9005_fe_init._entry_ptr.28 = internal global ptr @af9005_fe_init._entry.26, section ".printk_index", align 4
@af9005_fe_init._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.4, ptr @.str.2, i32 936, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"set read-update bit 1 for DCA modulation\0A\00", [54 x i8] zeroinitializer }, align 32
@af9005_fe_init._entry_ptr.31 = internal global ptr @af9005_fe_init._entry.29, section ".printk_index", align 4
@af9005_fe_init._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.4, ptr @.str.2, i32 944, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"enable fec monitor\0A\00", [44 x i8] zeroinitializer }, align 32
@af9005_fe_init._entry_ptr.34 = internal global ptr @af9005_fe_init._entry.32, section ".printk_index", align 4
@af9005_fe_init._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.4, ptr @.str.2, i32 955, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"set api_retrain_never_freeze\0A\00", [34 x i8] zeroinitializer }, align 32
@af9005_fe_init._entry_ptr.37 = internal global ptr @af9005_fe_init._entry.35, section ".printk_index", align 4
@af9005_fe_init._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.4, ptr @.str.2, i32 960, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"load init script\0A\00", [46 x i8] zeroinitializer }, align 32
@af9005_fe_init._entry_ptr.40 = internal global ptr @af9005_fe_init._entry.38, section ".printk_index", align 4
@script = internal constant { [185 x %struct.RegDesc], [266 x i8] } { [185 x %struct.RegDesc] [%struct.RegDesc { i16 -24192, i8 0, i8 8, i8 10 }, %struct.RegDesc { i16 -24191, i8 0, i8 8, i8 -41 }, %struct.RegDesc { i16 -24190, i8 0, i8 8, i8 -93 }, %struct.RegDesc { i16 -24416, i8 0, i8 8, i8 0 }, %struct.RegDesc { i16 -24415, i8 0, i8 5, i8 0 }, %struct.RegDesc { i16 -24415, i8 5, i8 1, i8 1 }, %struct.RegDesc { i16 -24384, i8 0, i8 4, i8 1 }, %struct.RegDesc { i16 -24050, i8 4, i8 4, i8 10 }, %struct.RegDesc { i16 -24049, i8 0, i8 8, i8 64 }, %struct.RegDesc { i16 -24048, i8 0, i8 8, i8 8 }, %struct.RegDesc { i16 -23766, i8 0, i8 4, i8 10 }, %struct.RegDesc { i16 -23764, i8 0, i8 8, i8 32 }, %struct.RegDesc { i16 -23765, i8 0, i8 8, i8 21 }, %struct.RegDesc { i16 -24160, i8 1, i8 1, i8 1 }, %struct.RegDesc { i16 -24576, i8 0, i8 1, i8 1 }, %struct.RegDesc { i16 -24576, i8 1, i8 1, i8 0 }, %struct.RegDesc { i16 -24575, i8 1, i8 1, i8 1 }, %struct.RegDesc { i16 -24575, i8 0, i8 1, i8 0 }, %struct.RegDesc { i16 -24575, i8 5, i8 1, i8 0 }, %struct.RegDesc { i16 -24562, i8 0, i8 5, i8 16 }, %struct.RegDesc { i16 -24561, i8 0, i8 3, i8 4 }, %struct.RegDesc { i16 -24561, i8 3, i8 3, i8 5 }, %struct.RegDesc { i16 -24560, i8 0, i8 3, i8 4 }, %struct.RegDesc { i16 -24560, i8 3, i8 3, i8 5 }, %struct.RegDesc { i16 -24554, i8 4, i8 4, i8 3 }, %struct.RegDesc { i16 -24545, i8 0, i8 6, i8 10 }, %struct.RegDesc { i16 -24544, i8 0, i8 6, i8 10 }, %struct.RegDesc { i16 -23876, i8 0, i8 1, i8 1 }, %struct.RegDesc { i16 -23876, i8 5, i8 1, i8 1 }, %struct.RegDesc { i16 -24555, i8 0, i8 8, i8 80 }, %struct.RegDesc { i16 -24554, i8 0, i8 1, i8 0 }, %struct.RegDesc { i16 -24534, i8 0, i8 8, i8 80 }, %struct.RegDesc { i16 -24535, i8 0, i8 8, i8 75 }, %struct.RegDesc { i16 -23020, i8 0, i8 8, i8 70 }, %struct.RegDesc { i16 -24574, i8 0, i8 5, i8 25 }, %struct.RegDesc { i16 -24573, i8 0, i8 5, i8 26 }, %struct.RegDesc { i16 -24572, i8 0, i8 5, i8 25 }, %struct.RegDesc { i16 -24571, i8 0, i8 5, i8 26 }, %struct.RegDesc { i16 -24568, i8 0, i8 8, i8 105 }, %struct.RegDesc { i16 -24567, i8 0, i8 2, i8 2 }, %struct.RegDesc { i16 -20965, i8 0, i8 8, i8 105 }, %struct.RegDesc { i16 -20964, i8 0, i8 8, i8 2 }, %struct.RegDesc { i16 -20963, i8 0, i8 8, i8 42 }, %struct.RegDesc { i16 -24542, i8 0, i8 8, i8 -86 }, %struct.RegDesc { i16 -24570, i8 0, i8 8, i8 -56 }, %struct.RegDesc { i16 -24569, i8 0, i8 2, i8 0 }, %struct.RegDesc { i16 -24564, i8 0, i8 8, i8 -70 }, %struct.RegDesc { i16 -24563, i8 0, i8 2, i8 2 }, %struct.RegDesc { i16 -23032, i8 0, i8 8, i8 -70 }, %struct.RegDesc { i16 -23026, i8 0, i8 2, i8 2 }, %struct.RegDesc { i16 -23031, i8 0, i8 8, i8 -128 }, %struct.RegDesc { i16 -23026, i8 2, i8 2, i8 3 }, %struct.RegDesc { i16 -24566, i8 0, i8 8, i8 -74 }, %struct.RegDesc { i16 -24565, i8 0, i8 2, i8 0 }, %struct.RegDesc { i16 -24559, i8 0, i8 8, i8 -71 }, %struct.RegDesc { i16 -24558, i8 0, i8 2, i8 0 }, %struct.RegDesc { i16 -24557, i8 0, i8 8, i8 -67 }, %struct.RegDesc { i16 -24556, i8 0, i8 2, i8 2 }, %struct.RegDesc { i16 -23706, i8 0, i8 1, i8 1 }, %struct.RegDesc { i16 -23876, i8 3, i8 1, i8 0 }, %struct.RegDesc { i16 -23875, i8 0, i8 8, i8 10 }, %struct.RegDesc { i16 -23874, i8 0, i8 8, i8 20 }, %struct.RegDesc { i16 -23873, i8 0, i8 8, i8 8 }, %struct.RegDesc { i16 -23030, i8 0, i8 8, i8 -67 }, %struct.RegDesc { i16 -23026, i8 4, i8 2, i8 2 }, %struct.RegDesc { i16 -23029, i8 0, i8 8, i8 -122 }, %struct.RegDesc { i16 -23026, i8 6, i8 2, i8 3 }, %struct.RegDesc { i16 -24575, i8 2, i8 2, i8 1 }, %struct.RegDesc { i16 -24121, i8 0, i8 8, i8 -11 }, %struct.RegDesc { i16 -24515, i8 0, i8 8, i8 -79 }, %struct.RegDesc { i16 -23018, i8 0, i8 8, i8 -1 }, %struct.RegDesc { i16 -23017, i8 0, i8 8, i8 -83 }, %struct.RegDesc { i16 -23016, i8 0, i8 8, i8 -83 }, %struct.RegDesc { i16 -23010, i8 3, i8 1, i8 1 }, %struct.RegDesc { i16 -20966, i8 0, i8 8, i8 0 }, %struct.RegDesc { i16 -20967, i8 0, i8 8, i8 -56 }, %struct.RegDesc { i16 -20968, i8 0, i8 8, i8 97 }, %struct.RegDesc { i16 -24256, i8 0, i8 8, i8 0 }, %struct.RegDesc { i16 -24255, i8 0, i8 8, i8 -56 }, %struct.RegDesc { i16 -24254, i8 0, i8 7, i8 97 }, %struct.RegDesc { i16 -24541, i8 0, i8 8, i8 -1 }, %struct.RegDesc { i16 -24543, i8 0, i8 8, i8 -83 }, %struct.RegDesc { i16 -24538, i8 0, i8 1, i8 0 }, %struct.RegDesc { i16 -24540, i8 0, i8 8, i8 -1 }, %struct.RegDesc { i16 -24539, i8 0, i8 8, i8 -1 }, %struct.RegDesc { i16 -24120, i8 0, i8 8, i8 15 }, %struct.RegDesc { i16 -23876, i8 1, i8 1, i8 0 }, %struct.RegDesc { i16 -23028, i8 0, i8 4, i8 5 }, %struct.RegDesc { i16 -23028, i8 4, i8 4, i8 6 }, %struct.RegDesc { i16 -23027, i8 0, i8 8, i8 10 }, %struct.RegDesc { i16 -23695, i8 0, i8 1, i8 1 }, %struct.RegDesc { i16 -23706, i8 1, i8 3, i8 7 }, %struct.RegDesc { i16 -23752, i8 0, i8 8, i8 16 }, %struct.RegDesc { i16 -23751, i8 0, i8 6, i8 7 }, %struct.RegDesc { i16 -23750, i8 0, i8 6, i8 31 }, %struct.RegDesc { i16 -23749, i8 0, i8 8, i8 -10 }, %struct.RegDesc { i16 -23748, i8 3, i8 5, i8 4 }, %struct.RegDesc { i16 -23747, i8 4, i8 4, i8 0 }, %struct.RegDesc { i16 -23747, i8 1, i8 1, i8 1 }, %struct.RegDesc { i16 -23747, i8 2, i8 1, i8 1 }, %struct.RegDesc { i16 -23747, i8 3, i8 1, i8 1 }, %struct.RegDesc { i16 -24211, i8 0, i8 4, i8 15 }, %struct.RegDesc { i16 -24223, i8 0, i8 5, i8 5 }, %struct.RegDesc { i16 -24222, i8 0, i8 4, i8 5 }, %struct.RegDesc { i16 -24219, i8 0, i8 8, i8 -1 }, %struct.RegDesc { i16 -24218, i8 0, i8 8, i8 -100 }, %struct.RegDesc { i16 -23869, i8 0, i8 4, i8 5 }, %struct.RegDesc { i16 -23014, i8 0, i8 6, i8 15 }, %struct.RegDesc { i16 -19968, i8 0, i8 8, i8 -95 }, %struct.RegDesc { i16 -19967, i8 0, i8 8, i8 7 }, %struct.RegDesc { i16 -24429, i8 0, i8 1, i8 0 }, %struct.RegDesc { i16 -24429, i8 1, i8 5, i8 15 }, %struct.RegDesc { i16 -24428, i8 0, i8 8, i8 -1 }, %struct.RegDesc { i16 -24427, i8 0, i8 8, i8 15 }, %struct.RegDesc { i16 -24448, i8 2, i8 5, i8 3 }, %struct.RegDesc { i16 -24447, i8 0, i8 4, i8 0 }, %struct.RegDesc { i16 -24447, i8 4, i8 4, i8 9 }, %struct.RegDesc { i16 -24446, i8 0, i8 5, i8 31 }, %struct.RegDesc { i16 -24435, i8 0, i8 8, i8 1 }, %struct.RegDesc { i16 -24445, i8 0, i8 8, i8 50 }, %struct.RegDesc { i16 -24444, i8 0, i8 1, i8 0 }, %struct.RegDesc { i16 -24434, i8 0, i8 8, i8 3 }, %struct.RegDesc { i16 -24443, i8 0, i8 8, i8 50 }, %struct.RegDesc { i16 -24442, i8 0, i8 3, i8 0 }, %struct.RegDesc { i16 -24441, i8 0, i8 8, i8 110 }, %struct.RegDesc { i16 -24440, i8 0, i8 5, i8 21 }, %struct.RegDesc { i16 -24439, i8 0, i8 8, i8 0 }, %struct.RegDesc { i16 -24438, i8 0, i8 5, i8 25 }, %struct.RegDesc { i16 -24437, i8 0, i8 8, i8 -110 }, %struct.RegDesc { i16 -24436, i8 0, i8 5, i8 28 }, %struct.RegDesc { i16 -24288, i8 0, i8 8, i8 0 }, %struct.RegDesc { i16 -24287, i8 0, i8 5, i8 16 }, %struct.RegDesc { i16 -24286, i8 0, i8 8, i8 0 }, %struct.RegDesc { i16 -24285, i8 0, i8 7, i8 64 }, %struct.RegDesc { i16 -24285, i8 7, i8 1, i8 0 }, %struct.RegDesc { i16 -24284, i8 0, i8 8, i8 19 }, %struct.RegDesc { i16 -24283, i8 0, i8 7, i8 16 }, %struct.RegDesc { i16 -24128, i8 0, i8 8, i8 0 }, %struct.RegDesc { i16 -24127, i8 0, i8 5, i8 4 }, %struct.RegDesc { i16 -24126, i8 0, i8 8, i8 0 }, %struct.RegDesc { i16 -24125, i8 0, i8 5, i8 16 }, %struct.RegDesc { i16 -24125, i8 5, i8 3, i8 0 }, %struct.RegDesc { i16 -24124, i8 0, i8 6, i8 0 }, %struct.RegDesc { i16 -24123, i8 0, i8 7, i8 16 }, %struct.RegDesc { i16 -24320, i8 0, i8 8, i8 0 }, %struct.RegDesc { i16 -24319, i8 0, i8 5, i8 16 }, %struct.RegDesc { i16 -24318, i8 0, i8 8, i8 0 }, %struct.RegDesc { i16 -24317, i8 0, i8 7, i8 64 }, %struct.RegDesc { i16 -24317, i8 7, i8 1, i8 0 }, %struct.RegDesc { i16 -24316, i8 0, i8 8, i8 24 }, %struct.RegDesc { i16 -24315, i8 0, i8 7, i8 10 }, %struct.RegDesc { i16 -24314, i8 0, i8 8, i8 32 }, %struct.RegDesc { i16 -24313, i8 0, i8 8, i8 64 }, %struct.RegDesc { i16 -24312, i8 0, i8 4, i8 0 }, %struct.RegDesc { i16 -23668, i8 0, i8 8, i8 -4 }, %struct.RegDesc { i16 -23667, i8 0, i8 8, i8 0 }, %struct.RegDesc { i16 -23666, i8 0, i8 8, i8 126 }, %struct.RegDesc { i16 -23665, i8 0, i8 8, i8 0 }, %struct.RegDesc { i16 -23664, i8 0, i8 8, i8 47 }, %struct.RegDesc { i16 -23025, i8 5, i8 1, i8 1 }, %struct.RegDesc { i16 -24208, i8 0, i8 8, i8 -36 }, %struct.RegDesc { i16 -24207, i8 0, i8 2, i8 0 }, %struct.RegDesc { i16 -23890, i8 0, i8 1, i8 1 }, %struct.RegDesc { i16 -23890, i8 1, i8 1, i8 1 }, %struct.RegDesc { i16 -23662, i8 0, i8 1, i8 1 }, %struct.RegDesc { i16 -23663, i8 2, i8 1, i8 0 }, %struct.RegDesc { i16 -21567, i8 0, i8 8, i8 -1 }, %struct.RegDesc { i16 -21566, i8 0, i8 8, i8 0 }, %struct.RegDesc { i16 -21560, i8 0, i8 8, i8 8 }, %struct.RegDesc { i16 -21558, i8 0, i8 8, i8 16 }, %struct.RegDesc { i16 -21557, i8 0, i8 1, i8 0 }, %struct.RegDesc { i16 -21565, i8 5, i8 3, i8 7 }, %struct.RegDesc { i16 -21568, i8 6, i8 1, i8 0 }, %struct.RegDesc { i16 -21568, i8 4, i8 2, i8 0 }, %struct.RegDesc { i16 -23740, i8 4, i8 4, i8 1 }, %struct.RegDesc { i16 -21568, i8 7, i8 1, i8 1 }, %struct.RegDesc { i16 -21568, i8 2, i8 1, i8 1 }, %struct.RegDesc { i16 -23739, i8 0, i8 8, i8 102 }, %struct.RegDesc { i16 -23738, i8 0, i8 8, i8 102 }, %struct.RegDesc { i16 -23737, i8 0, i8 4, i8 0 }, %struct.RegDesc { i16 -23741, i8 0, i8 4, i8 10 }, %struct.RegDesc { i16 -23737, i8 4, i8 4, i8 2 }, %struct.RegDesc { i16 -23736, i8 0, i8 4, i8 12 }, %struct.RegDesc { i16 -23736, i8 4, i8 4, i8 7 }, %struct.RegDesc { i16 -23735, i8 0, i8 6, i8 2 }], [266 x i8] zeroinitializer }, align 32
@af9005_fe_init._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.4, ptr @.str.2, i32 992, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"save original TOPs\0A\00", [44 x i8] zeroinitializer }, align 32
@af9005_fe_init._entry_ptr.43 = internal global ptr @af9005_fe_init._entry.41, section ".printk_index", align 4
@af9005_fe_init._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.4, ptr @.str.2, i32 1031, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013af9005: Impossible to read EEPROM\0A\0A\00", [58 x i8] zeroinitializer }, align 32
@af9005_fe_init._entry_ptr.46 = internal global ptr @af9005_fe_init._entry.44, section ".printk_index", align 4
@af9005_fe_init._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.4, ptr @.str.2, i32 1034, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Tuner id %d, board id %d\0A\00", [38 x i8] zeroinitializer }, align 32
@af9005_fe_init._entry_ptr.49 = internal global ptr @af9005_fe_init._entry.47, section ".printk_index", align 4
@af9005_fe_init._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.4, ptr @.str.2, i32 1040, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@af9005_fe_init._entry_ptr.51 = internal global ptr @af9005_fe_init._entry.50, section ".printk_index", align 4
@.str.52 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mt2060_attach\00", [18 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"symbol:mt2060_attach\00", [43 x i8] zeroinitializer }, align 32
@af9005_mt2060_config = internal global { %struct.mt2060_config, [30 x i8] } { %struct.mt2060_config { i8 -64, i8 0 }, [30 x i8] zeroinitializer }, align 32
@af9005_fe_init._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.4, ptr @.str.2, i32 1045, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013DVB: Unable to find symbol mt2060_attach()\0A\00", [50 x i8] zeroinitializer }, align 32
@af9005_fe_init._entry_ptr.56 = internal global ptr @af9005_fe_init._entry.54, section ".printk_index", align 4
@af9005_fe_init._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.4, ptr @.str.2, i32 1046, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"MT2060 attach failed\0A\00", [42 x i8] zeroinitializer }, align 32
@af9005_fe_init._entry_ptr.59 = internal global ptr @af9005_fe_init._entry.57, section ".printk_index", align 4
@.str.60 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"qt1010_attach\00", [18 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"symbol:qt1010_attach\00", [43 x i8] zeroinitializer }, align 32
@af9005_qt1010_config = internal global { %struct.qt1010_config, [31 x i8] } { %struct.qt1010_config { i8 -60 }, [31 x i8] zeroinitializer }, align 32
@af9005_fe_init._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.4, ptr @.str.2, i32 1053, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013DVB: Unable to find symbol qt1010_attach()\0A\00", [50 x i8] zeroinitializer }, align 32
@af9005_fe_init._entry_ptr.64 = internal global ptr @af9005_fe_init._entry.62, section ".printk_index", align 4
@af9005_fe_init._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.4, ptr @.str.2, i32 1054, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"QT1010 attach failed\0A\00", [42 x i8] zeroinitializer }, align 32
@af9005_fe_init._entry_ptr.67 = internal global ptr @af9005_fe_init._entry.65, section ".printk_index", align 4
@af9005_fe_init._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.4, ptr @.str.2, i32 1059, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013af9005: Unsupported tuner type %d\0A\00", [59 x i8] zeroinitializer }, align 32
@af9005_fe_init._entry_ptr.70 = internal global ptr @af9005_fe_init._entry.68, section ".printk_index", align 4
@af9005_fe_init._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.4, ptr @.str.2, i32 1067, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"profit!\0A\00", [23 x i8] zeroinitializer }, align 32
@af9005_fe_init._entry_ptr.73 = internal global ptr @af9005_fe_init._entry.71, section ".printk_index", align 4
@af9005_fe_program_cfoe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str.2, i32 569, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013af9005: Invalid bandwidth %d.\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"af9005_fe_program_cfoe\00", [41 x i8] zeroinitializer }, align 32
@af9005_fe_program_cfoe._entry_ptr = internal global ptr @af9005_fe_program_cfoe._entry, section ".printk_index", align 4
@af9005_read_word_agc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.77, ptr @.str.2, i32 84, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013af9005: invalid pos in read word agc\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"af9005_read_word_agc\00", [43 x i8] zeroinitializer }, align 32
@af9005_read_word_agc._entry_ptr = internal global ptr @af9005_read_word_agc._entry, section ".printk_index", align 4
@af9005_fe_power._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.79, ptr @.str.2, i32 790, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"power %s tuner\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"af9005_fe_power\00", [16 x i8] zeroinitializer }, align 32
@af9005_fe_power._entry_ptr = internal global ptr @af9005_fe_power._entry, section ".printk_index", align 4
@.str.81 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@af9005_fe_set_frontend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.83, ptr @.str.2, i32 1099, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"af9005_fe_set_frontend freq %d bw %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"af9005_fe_set_frontend\00", [41 x i8] zeroinitializer }, align 32
@af9005_fe_set_frontend._entry_ptr = internal global ptr @af9005_fe_set_frontend._entry, section ".printk_index", align 4
@af9005_fe_set_frontend._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.83, ptr @.str.2, i32 1101, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013af9005: Tuner not attached\0A\00", [34 x i8] zeroinitializer }, align 32
@af9005_fe_set_frontend._entry_ptr.86 = internal global ptr @af9005_fe_set_frontend._entry.84, section ".printk_index", align 4
@af9005_fe_set_frontend._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.83, ptr @.str.2, i32 1105, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"turn off led\0A\00", [18 x i8] zeroinitializer }, align 32
@af9005_fe_set_frontend._entry_ptr.89 = internal global ptr @af9005_fe_set_frontend._entry.87, section ".printk_index", align 4
@af9005_fe_set_frontend._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.83, ptr @.str.2, i32 1116, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"set FCW to default value\0A\00", [38 x i8] zeroinitializer }, align 32
@af9005_fe_set_frontend._entry_ptr.92 = internal global ptr @af9005_fe_set_frontend._entry.90, section ".printk_index", align 4
@af9005_fe_set_frontend._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.83, ptr @.str.2, i32 1131, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"restore original TOPs\0A\00", [41 x i8] zeroinitializer }, align 32
@af9005_fe_set_frontend._entry_ptr.95 = internal global ptr @af9005_fe_set_frontend._entry.93, section ".printk_index", align 4
@af9005_fe_set_frontend._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.83, ptr @.str.2, i32 1158, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"select bandwidth\00", [47 x i8] zeroinitializer }, align 32
@af9005_fe_set_frontend._entry_ptr.98 = internal global ptr @af9005_fe_set_frontend._entry.96, section ".printk_index", align 4
@af9005_fe_set_frontend._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.83, ptr @.str.2, i32 1167, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"clear easy mode flag\0A\00", [42 x i8] zeroinitializer }, align 32
@af9005_fe_set_frontend._entry_ptr.101 = internal global ptr @af9005_fe_set_frontend._entry.99, section ".printk_index", align 4
@af9005_fe_set_frontend._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.83, ptr @.str.2, i32 1173, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"set unplug threshold to original value\0A\00", [56 x i8] zeroinitializer }, align 32
@af9005_fe_set_frontend._entry_ptr.104 = internal global ptr @af9005_fe_set_frontend._entry.102, section ".printk_index", align 4
@af9005_fe_set_frontend._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.83, ptr @.str.2, i32 1180, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"set tuner\0A\00", [21 x i8] zeroinitializer }, align 32
@af9005_fe_set_frontend._entry_ptr.107 = internal global ptr @af9005_fe_set_frontend._entry.105, section ".printk_index", align 4
@af9005_fe_set_frontend._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.83, ptr @.str.2, i32 1186, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"trigger ofsm\0A\00", [18 x i8] zeroinitializer }, align 32
@af9005_fe_set_frontend._entry_ptr.110 = internal global ptr @af9005_fe_set_frontend._entry.108, section ".printk_index", align 4
@af9005_fe_set_frontend._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.83, ptr @.str.2, i32 1193, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"clear retrain and freeze flag\0A\00", [33 x i8] zeroinitializer }, align 32
@af9005_fe_set_frontend._entry_ptr.113 = internal global ptr @af9005_fe_set_frontend._entry.111, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@af9005_fe_select_bw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.114, ptr @.str.2, i32 778, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"af9005_fe_select_bw\00", [44 x i8] zeroinitializer }, align 32
@af9005_fe_select_bw._entry_ptr = internal global ptr @af9005_fe_select_bw._entry, section ".printk_index", align 4
@af9005_fe_get_frontend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.116, ptr @.str.2, i32 1231, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"===== fe_get_frontend_legacy = =============\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"af9005_fe_get_frontend\00", [41 x i8] zeroinitializer }, align 32
@af9005_fe_get_frontend._entry_ptr = internal global ptr @af9005_fe_get_frontend._entry, section ".printk_index", align 4
@af9005_fe_get_frontend._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.116, ptr @.str.2, i32 1232, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"CONSTELLATION \00", [17 x i8] zeroinitializer }, align 32
@af9005_fe_get_frontend._entry_ptr.119 = internal global ptr @af9005_fe_get_frontend._entry.117, section ".printk_index", align 4
@af9005_fe_get_frontend._entry.120 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.116, ptr @.str.2, i32 1236, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"QPSK\0A\00", [26 x i8] zeroinitializer }, align 32
@af9005_fe_get_frontend._entry_ptr.122 = internal global ptr @af9005_fe_get_frontend._entry.120, section ".printk_index", align 4
@af9005_fe_get_frontend._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.116, ptr @.str.2, i32 1240, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"QAM_16\0A\00", [24 x i8] zeroinitializer }, align 32
@af9005_fe_get_frontend._entry_ptr.125 = internal global ptr @af9005_fe_get_frontend._entry.123, section ".printk_index", align 4
@af9005_fe_get_frontend._entry.126 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.116, ptr @.str.2, i32 1244, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"QAM_64\0A\00", [24 x i8] zeroinitializer }, align 32
@af9005_fe_get_frontend._entry_ptr.128 = internal global ptr @af9005_fe_get_frontend._entry.126, section ".printk_index", align 4
@af9005_fe_get_frontend._entry.129 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.116, ptr @.str.2, i32 1255, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"HIERARCHY \00", [21 x i8] zeroinitializer }, align 32
@af9005_fe_get_frontend._entry_ptr.131 = internal global ptr @af9005_fe_get_frontend._entry.129, section ".printk_index", align 4
@af9005_fe_get_frontend._entry.132 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.116, ptr @.str.2, i32 1259, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"NONE\0A\00", [26 x i8] zeroinitializer }, align 32
@af9005_fe_get_frontend._entry_ptr.134 = internal global ptr @af9005_fe_get_frontend._entry.132, section ".printk_index", align 4
@af9005_fe_get_frontend._entry.135 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.136, ptr @.str.116, ptr @.str.2, i32 1263, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"1\0A\00", [29 x i8] zeroinitializer }, align 32
@af9005_fe_get_frontend._entry_ptr.137 = internal global ptr @af9005_fe_get_frontend._entry.135, section ".printk_index", align 4
@af9005_fe_get_frontend._entry.138 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.116, ptr @.str.2, i32 1267, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"2\0A\00", [29 x i8] zeroinitializer }, align 32
@af9005_fe_get_frontend._entry_ptr.140 = internal global ptr @af9005_fe_get_frontend._entry.138, section ".printk_index", align 4
@af9005_fe_get_frontend._entry.141 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.142, ptr @.str.116, ptr @.str.2, i32 1271, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"4\0A\00", [29 x i8] zeroinitializer }, align 32
@af9005_fe_get_frontend._entry_ptr.143 = internal global ptr @af9005_fe_get_frontend._entry.141, section ".printk_index", align 4
@af9005_fe_get_frontend._entry.144 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.145, ptr @.str.116, ptr @.str.2, i32 1282, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"PRIORITY %s\0A\00", [19 x i8] zeroinitializer }, align 32
@af9005_fe_get_frontend._entry_ptr.146 = internal global ptr @af9005_fe_get_frontend._entry.144, section ".printk_index", align 4
@.str.147 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"high\00", [27 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"low\00", [28 x i8] zeroinitializer }, align 32
@af9005_fe_get_frontend._entry.149 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.150, ptr @.str.116, ptr @.str.2, i32 1291, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"CODERATE HP \00", [19 x i8] zeroinitializer }, align 32
@af9005_fe_get_frontend._entry_ptr.151 = internal global ptr @af9005_fe_get_frontend._entry.149, section ".printk_index", align 4
@af9005_fe_get_frontend._entry.152 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.153, ptr @.str.116, ptr @.str.2, i32 1295, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"FEC_1_2\0A\00", [23 x i8] zeroinitializer }, align 32
@af9005_fe_get_frontend._entry_ptr.154 = internal global ptr @af9005_fe_get_frontend._entry.152, section ".printk_index", align 4
@af9005_fe_get_frontend._entry.155 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.116, ptr @.str.2, i32 1299, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"FEC_2_3\0A\00", [23 x i8] zeroinitializer }, align 32
@af9005_fe_get_frontend._entry_ptr.157 = internal global ptr @af9005_fe_get_frontend._entry.155, section ".printk_index", align 4
@af9005_fe_get_frontend._entry.158 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.116, ptr @.str.2, i32 1303, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"FEC_3_4\0A\00", [23 x i8] zeroinitializer }, align 32
@af9005_fe_get_frontend._entry_ptr.160 = internal global ptr @af9005_fe_get_frontend._entry.158, section ".printk_index", align 4
@af9005_fe_get_frontend._entry.161 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.162, ptr @.str.116, ptr @.str.2, i32 1307, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"FEC_5_6\0A\00", [23 x i8] zeroinitializer }, align 32
@af9005_fe_get_frontend._entry_ptr.163 = internal global ptr @af9005_fe_get_frontend._entry.161, section ".printk_index", align 4
@af9005_fe_get_frontend._entry.164 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.165, ptr @.str.116, ptr @.str.2, i32 1311, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"FEC_7_8\0A\00", [23 x i8] zeroinitializer }, align 32
@af9005_fe_get_frontend._entry_ptr.166 = internal global ptr @af9005_fe_get_frontend._entry.164, section ".printk_index", align 4
@af9005_fe_get_frontend._entry.167 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.168, ptr @.str.116, ptr @.str.2, i32 1322, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"CODERATE LP \00", [19 x i8] zeroinitializer }, align 32
@af9005_fe_get_frontend._entry_ptr.169 = internal global ptr @af9005_fe_get_frontend._entry.167, section ".printk_index", align 4
@af9005_fe_get_frontend._entry.170 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.153, ptr @.str.116, ptr @.str.2, i32 1326, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@af9005_fe_get_frontend._entry_ptr.171 = internal global ptr @af9005_fe_get_frontend._entry.170, section ".printk_index", align 4
@af9005_fe_get_frontend._entry.172 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.116, ptr @.str.2, i32 1330, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@af9005_fe_get_frontend._entry_ptr.173 = internal global ptr @af9005_fe_get_frontend._entry.172, section ".printk_index", align 4
@af9005_fe_get_frontend._entry.174 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.116, ptr @.str.2, i32 1334, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@af9005_fe_get_frontend._entry_ptr.175 = internal global ptr @af9005_fe_get_frontend._entry.174, section ".printk_index", align 4
@af9005_fe_get_frontend._entry.176 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.162, ptr @.str.116, ptr @.str.2, i32 1338, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@af9005_fe_get_frontend._entry_ptr.177 = internal global ptr @af9005_fe_get_frontend._entry.176, section ".printk_index", align 4
@af9005_fe_get_frontend._entry.178 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.165, ptr @.str.116, ptr @.str.2, i32 1342, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@af9005_fe_get_frontend._entry_ptr.179 = internal global ptr @af9005_fe_get_frontend._entry.178, section ".printk_index", align 4
@af9005_fe_get_frontend._entry.180 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.181, ptr @.str.116, ptr @.str.2, i32 1352, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"GUARD INTERVAL \00", [16 x i8] zeroinitializer }, align 32
@af9005_fe_get_frontend._entry_ptr.182 = internal global ptr @af9005_fe_get_frontend._entry.180, section ".printk_index", align 4
@af9005_fe_get_frontend._entry.183 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.184, ptr @.str.116, ptr @.str.2, i32 1356, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"1_32\0A\00", [26 x i8] zeroinitializer }, align 32
@af9005_fe_get_frontend._entry_ptr.185 = internal global ptr @af9005_fe_get_frontend._entry.183, section ".printk_index", align 4
@af9005_fe_get_frontend._entry.186 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.187, ptr @.str.116, ptr @.str.2, i32 1360, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"1_16\0A\00", [26 x i8] zeroinitializer }, align 32
@af9005_fe_get_frontend._entry_ptr.188 = internal global ptr @af9005_fe_get_frontend._entry.186, section ".printk_index", align 4
@af9005_fe_get_frontend._entry.189 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.190, ptr @.str.116, ptr @.str.2, i32 1364, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"1_8\0A\00", [27 x i8] zeroinitializer }, align 32
@af9005_fe_get_frontend._entry_ptr.191 = internal global ptr @af9005_fe_get_frontend._entry.189, section ".printk_index", align 4
@af9005_fe_get_frontend._entry.192 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.193, ptr @.str.116, ptr @.str.2, i32 1368, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"1_4\0A\00", [27 x i8] zeroinitializer }, align 32
@af9005_fe_get_frontend._entry_ptr.194 = internal global ptr @af9005_fe_get_frontend._entry.192, section ".printk_index", align 4
@af9005_fe_get_frontend._entry.195 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.196, ptr @.str.116, ptr @.str.2, i32 1379, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"TRANSMISSION MODE \00", [45 x i8] zeroinitializer }, align 32
@af9005_fe_get_frontend._entry_ptr.197 = internal global ptr @af9005_fe_get_frontend._entry.195, section ".printk_index", align 4
@af9005_fe_get_frontend._entry.198 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.199, ptr @.str.116, ptr @.str.2, i32 1383, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"2K\0A\00", [28 x i8] zeroinitializer }, align 32
@af9005_fe_get_frontend._entry_ptr.200 = internal global ptr @af9005_fe_get_frontend._entry.198, section ".printk_index", align 4
@af9005_fe_get_frontend._entry.201 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.202, ptr @.str.116, ptr @.str.2, i32 1387, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"8K\0A\00", [28 x i8] zeroinitializer }, align 32
@af9005_fe_get_frontend._entry_ptr.203 = internal global ptr @af9005_fe_get_frontend._entry.201, section ".printk_index", align 4
@af9005_fe_get_frontend._entry.204 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.205, ptr @.str.116, ptr @.str.2, i32 1395, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"BANDWIDTH \00", [21 x i8] zeroinitializer }, align 32
@af9005_fe_get_frontend._entry_ptr.206 = internal global ptr @af9005_fe_get_frontend._entry.204, section ".printk_index", align 4
@af9005_fe_get_frontend._entry.207 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.208, ptr @.str.116, ptr @.str.2, i32 1399, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"6\0A\00", [29 x i8] zeroinitializer }, align 32
@af9005_fe_get_frontend._entry_ptr.209 = internal global ptr @af9005_fe_get_frontend._entry.207, section ".printk_index", align 4
@af9005_fe_get_frontend._entry.210 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.211, ptr @.str.116, ptr @.str.2, i32 1403, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"7\0A\00", [29 x i8] zeroinitializer }, align 32
@af9005_fe_get_frontend._entry_ptr.212 = internal global ptr @af9005_fe_get_frontend._entry.210, section ".printk_index", align 4
@af9005_fe_get_frontend._entry.213 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.214, ptr @.str.116, ptr @.str.2, i32 1407, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"8\0A\00", [29 x i8] zeroinitializer }, align 32
@af9005_fe_get_frontend._entry_ptr.215 = internal global ptr @af9005_fe_get_frontend._entry.213, section ".printk_index", align 4
@af9005_fe_read_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.216, ptr @.str.217, ptr @.str.2, i32 471, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"adjust for strong signal %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"af9005_fe_read_status\00", [42 x i8] zeroinitializer }, align 32
@af9005_fe_read_status._entry_ptr = internal global ptr @af9005_fe_read_status._entry, section ".printk_index", align 4
@af9005_fe_refresh_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.218, ptr @.str.219, ptr @.str.2, i32 417, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"REFRESH STATE\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"af9005_fe_refresh_state\00", [40 x i8] zeroinitializer }, align 32
@af9005_fe_refresh_state._entry_ptr = internal global ptr @af9005_fe_refresh_state._entry, section ".printk_index", align 4
@af9005_fe_refresh_state._entry.220 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.221, ptr @.str.219, ptr @.str.2, i32 421, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013af9005: get_statistic_failed\0A\00", [32 x i8] zeroinitializer }, align 32
@af9005_fe_refresh_state._entry_ptr.222 = internal global ptr @af9005_fe_refresh_state._entry.220, section ".printk_index", align 4
@af9005_get_statistic._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.223, ptr @.str.224, ptr @.str.2, i32 375, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GET STATISTIC\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"af9005_get_statistic\00", [43 x i8] zeroinitializer }, align 32
@af9005_get_statistic._entry_ptr = internal global ptr @af9005_get_statistic._entry, section ".printk_index", align 4
@af9005_get_statistic._entry.225 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.226, ptr @.str.224, ptr @.str.2, i32 380, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fecmon not available\0A\00", [42 x i8] zeroinitializer }, align 32
@af9005_get_statistic._entry_ptr.227 = internal global ptr @af9005_get_statistic._entry.225, section ".printk_index", align 4
@af9005_get_pre_vit_err_bit_count._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.228, ptr @.str.229, ptr @.str.2, i32 239, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"viterbi counter not ready\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"af9005_get_pre_vit_err_bit_count\00", [63 x i8] zeroinitializer }, align 32
@af9005_get_pre_vit_err_bit_count._entry_ptr = internal global ptr @af9005_get_pre_vit_err_bit_count._entry, section ".printk_index", align 4
@af9005_get_pre_vit_err_bit_count._entry.230 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.231, ptr @.str.229, ptr @.str.2, i32 271, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"super frame count 0\0A\00", [43 x i8] zeroinitializer }, align 32
@af9005_get_pre_vit_err_bit_count._entry_ptr.232 = internal global ptr @af9005_get_pre_vit_err_bit_count._entry.230, section ".printk_index", align 4
@af9005_get_pre_vit_err_bit_count._entry.233 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.234, ptr @.str.229, ptr @.str.2, i32 289, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013af9005: Invalid fft mode\0A\00", [36 x i8] zeroinitializer }, align 32
@af9005_get_pre_vit_err_bit_count._entry_ptr.235 = internal global ptr @af9005_get_pre_vit_err_bit_count._entry.233, section ".printk_index", align 4
@af9005_get_pre_vit_err_bit_count._entry.236 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.237, ptr @.str.229, ptr @.str.2, i32 311, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.237 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013af9005: invalid modulation mode\0A\00", [61 x i8] zeroinitializer }, align 32
@af9005_get_pre_vit_err_bit_count._entry_ptr.238 = internal global ptr @af9005_get_pre_vit_err_bit_count._entry.236, section ".printk_index", align 4
@af9005_get_pre_vit_err_bit_count._entry.239 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.240, ptr @.str.229, ptr @.str.2, i32 316, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.240 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"PRE err count %d frame count %d bit count %d\0A\00", [50 x i8] zeroinitializer }, align 32
@af9005_get_pre_vit_err_bit_count._entry_ptr.241 = internal global ptr @af9005_get_pre_vit_err_bit_count._entry.239, section ".printk_index", align 4
@af9005_get_post_vit_err_cw_count._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.242, ptr @.str.243, ptr @.str.2, i32 142, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.242 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rsd counter not ready\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.243 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"af9005_get_post_vit_err_cw_count\00", [63 x i8] zeroinitializer }, align 32
@af9005_get_post_vit_err_cw_count._entry_ptr = internal global ptr @af9005_get_post_vit_err_cw_count._entry, section ".printk_index", align 4
@af9005_get_post_vit_err_cw_count._entry.244 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.245, ptr @.str.243, ptr @.str.2, i32 192, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.245 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013af9005: wrong RSD packet count\0A\00", [62 x i8] zeroinitializer }, align 32
@af9005_get_post_vit_err_cw_count._entry_ptr.246 = internal global ptr @af9005_get_post_vit_err_cw_count._entry.244, section ".printk_index", align 4
@af9005_get_post_vit_err_cw_count._entry.247 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.248, ptr @.str.243, ptr @.str.2, i32 196, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.248 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"POST abort count %d err count %d rsd packets %d\0A\00", [47 x i8] zeroinitializer }, align 32
@af9005_get_post_vit_err_cw_count._entry_ptr.249 = internal global ptr @af9005_get_post_vit_err_cw_count._entry.247, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 16, i64 40993, i64 40995, i64 40996, i64 40997, i64 44568, i64 44569, i64 44570]
@__sancov_gen_cov_switch_values.250 = internal global [5 x i64] [i64 3, i64 8, i64 2, i64 3, i64 9]
@__sancov_gen_cov_switch_values.251 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.252 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.253 = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.254 = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.255 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.256 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.257 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.258 = internal global [5 x i64] [i64 3, i64 32, i64 6000000, i64 7000000, i64 8000000]
@__sancov_gen_cov_switch_values.259 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 2, i64 4, i64 6]
@__sancov_gen_cov_switch_values.260 = internal global [5 x i64] [i64 3, i64 32, i64 6000000, i64 7000000, i64 8000000]
@__sancov_gen_cov_switch_values.261 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1431, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant [14 x i8] c"af9005_fe_ops\00", align 1
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1445, i32 38 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 812, i32 2 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 815, i32 2 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 823, i32 2 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 879, i32 2 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 887, i32 2 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 900, i32 2 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 906, i32 2 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 920, i32 2 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 925, i32 2 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 936, i32 2 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 944, i32 2 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 955, i32 2 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 960, i32 2 }
@___asan_gen_.358 = private unnamed_addr constant [7 x i8] c"script\00", align 1
@___asan_gen_.359 = private unnamed_addr constant [45 x i8] c"../drivers/media/usb/dvb-usb/af9005-script.h\00", align 1
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 18, i32 16 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 992, i32 2 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1031, i32 4 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1034, i32 3 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1040, i32 5 }
@___asan_gen_.388 = private unnamed_addr constant [21 x i8] c"af9005_mt2060_config\00", align 1
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 795, i32 29 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1044, i32 8 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1046, i32 5 }
@___asan_gen_.409 = private unnamed_addr constant [21 x i8] c"af9005_qt1010_config\00", align 1
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 799, i32 29 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1052, i32 8 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1054, i32 5 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1059, i32 4 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1067, i32 2 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 569, i32 3 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 84, i32 3 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 790, i32 2 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1098, i32 2 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1101, i32 3 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1105, i32 2 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1116, i32 2 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1131, i32 2 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1158, i32 2 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1167, i32 2 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1173, i32 2 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1180, i32 2 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1186, i32 2 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1193, i32 2 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 778, i32 3 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1231, i32 2 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1232, i32 2 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1236, i32 3 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1240, i32 3 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1244, i32 3 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1255, i32 2 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1259, i32 3 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1263, i32 3 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1267, i32 3 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1271, i32 3 }
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1282, i32 2 }
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1291, i32 2 }
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1295, i32 3 }
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1299, i32 3 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1303, i32 3 }
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1307, i32 3 }
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1311, i32 3 }
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1322, i32 2 }
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1326, i32 3 }
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1330, i32 3 }
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1334, i32 3 }
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1338, i32 3 }
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1342, i32 3 }
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1352, i32 2 }
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1356, i32 3 }
@___asan_gen_.690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1360, i32 3 }
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1364, i32 3 }
@___asan_gen_.702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1368, i32 3 }
@___asan_gen_.708 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1379, i32 2 }
@___asan_gen_.714 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1383, i32 3 }
@___asan_gen_.720 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1387, i32 3 }
@___asan_gen_.726 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1395, i32 2 }
@___asan_gen_.732 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1399, i32 3 }
@___asan_gen_.738 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1403, i32 3 }
@___asan_gen_.744 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1407, i32 3 }
@___asan_gen_.753 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 471, i32 3 }
@___asan_gen_.762 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 417, i32 3 }
@___asan_gen_.768 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 421, i32 4 }
@___asan_gen_.777 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 375, i32 2 }
@___asan_gen_.783 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 380, i32 3 }
@___asan_gen_.792 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 239, i32 3 }
@___asan_gen_.798 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 271, i32 3 }
@___asan_gen_.804 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 289, i32 3 }
@___asan_gen_.810 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 311, i32 3 }
@___asan_gen_.816 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 315, i32 2 }
@___asan_gen_.825 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 142, i32 3 }
@___asan_gen_.831 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 192, i32 3 }
@___asan_gen_.832 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.835 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.836 = private constant [41 x i8] c"../drivers/media/usb/dvb-usb/af9005-fe.c\00", align 1
@___asan_gen_.837 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 195, i32 2 }
@llvm.compiler.used = appending global [279 x ptr] [ptr @af9005_fe_attach._entry, ptr @af9005_fe_attach._entry_ptr, ptr @af9005_fe_get_frontend._entry, ptr @af9005_fe_get_frontend._entry.117, ptr @af9005_fe_get_frontend._entry.120, ptr @af9005_fe_get_frontend._entry.123, ptr @af9005_fe_get_frontend._entry.126, ptr @af9005_fe_get_frontend._entry.129, ptr @af9005_fe_get_frontend._entry.132, ptr @af9005_fe_get_frontend._entry.135, ptr @af9005_fe_get_frontend._entry.138, ptr @af9005_fe_get_frontend._entry.141, ptr @af9005_fe_get_frontend._entry.144, ptr @af9005_fe_get_frontend._entry.149, ptr @af9005_fe_get_frontend._entry.152, ptr @af9005_fe_get_frontend._entry.155, ptr @af9005_fe_get_frontend._entry.158, ptr @af9005_fe_get_frontend._entry.161, ptr @af9005_fe_get_frontend._entry.164, ptr @af9005_fe_get_frontend._entry.167, ptr @af9005_fe_get_frontend._entry.170, ptr @af9005_fe_get_frontend._entry.172, ptr @af9005_fe_get_frontend._entry.174, ptr @af9005_fe_get_frontend._entry.176, ptr @af9005_fe_get_frontend._entry.178, ptr @af9005_fe_get_frontend._entry.180, ptr @af9005_fe_get_frontend._entry.183, ptr @af9005_fe_get_frontend._entry.186, ptr @af9005_fe_get_frontend._entry.189, ptr @af9005_fe_get_frontend._entry.192, ptr @af9005_fe_get_frontend._entry.195, ptr @af9005_fe_get_frontend._entry.198, ptr @af9005_fe_get_frontend._entry.201, ptr @af9005_fe_get_frontend._entry.204, ptr @af9005_fe_get_frontend._entry.207, ptr @af9005_fe_get_frontend._entry.210, ptr @af9005_fe_get_frontend._entry.213, ptr @af9005_fe_get_frontend._entry_ptr, ptr @af9005_fe_get_frontend._entry_ptr.119, ptr @af9005_fe_get_frontend._entry_ptr.122, ptr @af9005_fe_get_frontend._entry_ptr.125, ptr @af9005_fe_get_frontend._entry_ptr.128, ptr @af9005_fe_get_frontend._entry_ptr.131, ptr @af9005_fe_get_frontend._entry_ptr.134, ptr @af9005_fe_get_frontend._entry_ptr.137, ptr @af9005_fe_get_frontend._entry_ptr.140, ptr @af9005_fe_get_frontend._entry_ptr.143, ptr @af9005_fe_get_frontend._entry_ptr.146, ptr @af9005_fe_get_frontend._entry_ptr.151, ptr @af9005_fe_get_frontend._entry_ptr.154, ptr @af9005_fe_get_frontend._entry_ptr.157, ptr @af9005_fe_get_frontend._entry_ptr.160, ptr @af9005_fe_get_frontend._entry_ptr.163, ptr @af9005_fe_get_frontend._entry_ptr.166, ptr @af9005_fe_get_frontend._entry_ptr.169, ptr @af9005_fe_get_frontend._entry_ptr.171, ptr @af9005_fe_get_frontend._entry_ptr.173, ptr @af9005_fe_get_frontend._entry_ptr.175, ptr @af9005_fe_get_frontend._entry_ptr.177, ptr @af9005_fe_get_frontend._entry_ptr.179, ptr @af9005_fe_get_frontend._entry_ptr.182, ptr @af9005_fe_get_frontend._entry_ptr.185, ptr @af9005_fe_get_frontend._entry_ptr.188, ptr @af9005_fe_get_frontend._entry_ptr.191, ptr @af9005_fe_get_frontend._entry_ptr.194, ptr @af9005_fe_get_frontend._entry_ptr.197, ptr @af9005_fe_get_frontend._entry_ptr.200, ptr @af9005_fe_get_frontend._entry_ptr.203, ptr @af9005_fe_get_frontend._entry_ptr.206, ptr @af9005_fe_get_frontend._entry_ptr.209, ptr @af9005_fe_get_frontend._entry_ptr.212, ptr @af9005_fe_get_frontend._entry_ptr.215, ptr @af9005_fe_init._entry, ptr @af9005_fe_init._entry.11, ptr @af9005_fe_init._entry.14, ptr @af9005_fe_init._entry.17, ptr @af9005_fe_init._entry.20, ptr @af9005_fe_init._entry.23, ptr @af9005_fe_init._entry.26, ptr @af9005_fe_init._entry.29, ptr @af9005_fe_init._entry.32, ptr @af9005_fe_init._entry.35, ptr @af9005_fe_init._entry.38, ptr @af9005_fe_init._entry.41, ptr @af9005_fe_init._entry.44, ptr @af9005_fe_init._entry.47, ptr @af9005_fe_init._entry.5, ptr @af9005_fe_init._entry.50, ptr @af9005_fe_init._entry.54, ptr @af9005_fe_init._entry.57, ptr @af9005_fe_init._entry.62, ptr @af9005_fe_init._entry.65, ptr @af9005_fe_init._entry.68, ptr @af9005_fe_init._entry.71, ptr @af9005_fe_init._entry.8, ptr @af9005_fe_init._entry_ptr, ptr @af9005_fe_init._entry_ptr.10, ptr @af9005_fe_init._entry_ptr.13, ptr @af9005_fe_init._entry_ptr.16, ptr @af9005_fe_init._entry_ptr.19, ptr @af9005_fe_init._entry_ptr.22, ptr @af9005_fe_init._entry_ptr.25, ptr @af9005_fe_init._entry_ptr.28, ptr @af9005_fe_init._entry_ptr.31, ptr @af9005_fe_init._entry_ptr.34, ptr @af9005_fe_init._entry_ptr.37, ptr @af9005_fe_init._entry_ptr.40, ptr @af9005_fe_init._entry_ptr.43, ptr @af9005_fe_init._entry_ptr.46, ptr @af9005_fe_init._entry_ptr.49, ptr @af9005_fe_init._entry_ptr.51, ptr @af9005_fe_init._entry_ptr.56, ptr @af9005_fe_init._entry_ptr.59, ptr @af9005_fe_init._entry_ptr.64, ptr @af9005_fe_init._entry_ptr.67, ptr @af9005_fe_init._entry_ptr.7, ptr @af9005_fe_init._entry_ptr.70, ptr @af9005_fe_init._entry_ptr.73, ptr @af9005_fe_power._entry, ptr @af9005_fe_power._entry_ptr, ptr @af9005_fe_program_cfoe._entry, ptr @af9005_fe_program_cfoe._entry_ptr, ptr @af9005_fe_read_status._entry, ptr @af9005_fe_read_status._entry_ptr, ptr @af9005_fe_refresh_state._entry, ptr @af9005_fe_refresh_state._entry.220, ptr @af9005_fe_refresh_state._entry_ptr, ptr @af9005_fe_refresh_state._entry_ptr.222, ptr @af9005_fe_select_bw._entry, ptr @af9005_fe_select_bw._entry_ptr, ptr @af9005_fe_set_frontend._entry, ptr @af9005_fe_set_frontend._entry.102, ptr @af9005_fe_set_frontend._entry.105, ptr @af9005_fe_set_frontend._entry.108, ptr @af9005_fe_set_frontend._entry.111, ptr @af9005_fe_set_frontend._entry.84, ptr @af9005_fe_set_frontend._entry.87, ptr @af9005_fe_set_frontend._entry.90, ptr @af9005_fe_set_frontend._entry.93, ptr @af9005_fe_set_frontend._entry.96, ptr @af9005_fe_set_frontend._entry.99, ptr @af9005_fe_set_frontend._entry_ptr, ptr @af9005_fe_set_frontend._entry_ptr.101, ptr @af9005_fe_set_frontend._entry_ptr.104, ptr @af9005_fe_set_frontend._entry_ptr.107, ptr @af9005_fe_set_frontend._entry_ptr.110, ptr @af9005_fe_set_frontend._entry_ptr.113, ptr @af9005_fe_set_frontend._entry_ptr.86, ptr @af9005_fe_set_frontend._entry_ptr.89, ptr @af9005_fe_set_frontend._entry_ptr.92, ptr @af9005_fe_set_frontend._entry_ptr.95, ptr @af9005_fe_set_frontend._entry_ptr.98, ptr @af9005_get_post_vit_err_cw_count._entry, ptr @af9005_get_post_vit_err_cw_count._entry.244, ptr @af9005_get_post_vit_err_cw_count._entry.247, ptr @af9005_get_post_vit_err_cw_count._entry_ptr, ptr @af9005_get_post_vit_err_cw_count._entry_ptr.246, ptr @af9005_get_post_vit_err_cw_count._entry_ptr.249, ptr @af9005_get_pre_vit_err_bit_count._entry, ptr @af9005_get_pre_vit_err_bit_count._entry.230, ptr @af9005_get_pre_vit_err_bit_count._entry.233, ptr @af9005_get_pre_vit_err_bit_count._entry.236, ptr @af9005_get_pre_vit_err_bit_count._entry.239, ptr @af9005_get_pre_vit_err_bit_count._entry_ptr, ptr @af9005_get_pre_vit_err_bit_count._entry_ptr.232, ptr @af9005_get_pre_vit_err_bit_count._entry_ptr.235, ptr @af9005_get_pre_vit_err_bit_count._entry_ptr.238, ptr @af9005_get_pre_vit_err_bit_count._entry_ptr.241, ptr @af9005_get_statistic._entry, ptr @af9005_get_statistic._entry.225, ptr @af9005_get_statistic._entry_ptr, ptr @af9005_get_statistic._entry_ptr.227, ptr @af9005_read_word_agc._entry, ptr @af9005_read_word_agc._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @af9005_fe_ops, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @.str.36, ptr @.str.39, ptr @script, ptr @.str.42, ptr @.str.45, ptr @.str.48, ptr @.str.52, ptr @.str.53, ptr @af9005_mt2060_config, ptr @.str.55, ptr @.str.58, ptr @.str.60, ptr @.str.61, ptr @af9005_qt1010_config, ptr @.str.63, ptr @.str.66, ptr @.str.69, ptr @.str.72, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.85, ptr @.str.88, ptr @.str.91, ptr @.str.94, ptr @.str.97, ptr @.str.100, ptr @.str.103, ptr @.str.106, ptr @.str.109, ptr @.str.112, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.118, ptr @.str.121, ptr @.str.124, ptr @.str.127, ptr @.str.130, ptr @.str.133, ptr @.str.136, ptr @.str.139, ptr @.str.142, ptr @.str.145, ptr @.str.147, ptr @.str.148, ptr @.str.150, ptr @.str.153, ptr @.str.156, ptr @.str.159, ptr @.str.162, ptr @.str.165, ptr @.str.168, ptr @.str.181, ptr @.str.184, ptr @.str.187, ptr @.str.190, ptr @.str.193, ptr @.str.196, ptr @.str.199, ptr @.str.202, ptr @.str.205, ptr @.str.208, ptr @.str.211, ptr @.str.214, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @.str.221, ptr @.str.223, ptr @.str.224, ptr @.str.226, ptr @.str.228, ptr @.str.229, ptr @.str.231, ptr @.str.234, ptr @.str.237, ptr @.str.240, ptr @.str.242, ptr @.str.243, ptr @.str.245, ptr @.str.248], section "llvm.metadata"
@0 = internal global [192 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_fe_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_fe_ops to i32), i32 544, i32 672, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_fe_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_fe_init._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_fe_init._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_fe_init._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_fe_init._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_fe_init._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_fe_init._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_fe_init._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_fe_init._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_fe_init._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_fe_init._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_fe_init._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_fe_init._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @script to i32), i32 1110, i32 1376, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_fe_init._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_fe_init._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_fe_init._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_fe_init._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_mt2060_config to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_fe_init._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_fe_init._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_qt1010_config to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_fe_init._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_fe_init._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_fe_init._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_fe_init._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_fe_program_cfoe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_read_word_agc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_fe_power._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_fe_set_frontend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_fe_set_frontend._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_fe_set_frontend._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_fe_set_frontend._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_fe_set_frontend._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_fe_set_frontend._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_fe_set_frontend._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_fe_set_frontend._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_fe_set_frontend._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_fe_set_frontend._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_fe_set_frontend._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_fe_select_bw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_fe_get_frontend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_fe_get_frontend._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_fe_get_frontend._entry.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_fe_get_frontend._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_fe_get_frontend._entry.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_fe_get_frontend._entry.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_fe_get_frontend._entry.132 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_fe_get_frontend._entry.135 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_fe_get_frontend._entry.138 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_fe_get_frontend._entry.141 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_fe_get_frontend._entry.144 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_fe_get_frontend._entry.149 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_fe_get_frontend._entry.152 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_fe_get_frontend._entry.155 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_fe_get_frontend._entry.158 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_fe_get_frontend._entry.161 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_fe_get_frontend._entry.164 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_fe_get_frontend._entry.167 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_fe_get_frontend._entry.170 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_fe_get_frontend._entry.172 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_fe_get_frontend._entry.174 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_fe_get_frontend._entry.176 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_fe_get_frontend._entry.178 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_fe_get_frontend._entry.180 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_fe_get_frontend._entry.183 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_fe_get_frontend._entry.186 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_fe_get_frontend._entry.189 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_fe_get_frontend._entry.192 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_fe_get_frontend._entry.195 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_fe_get_frontend._entry.198 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_fe_get_frontend._entry.201 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_fe_get_frontend._entry.204 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_fe_get_frontend._entry.207 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_fe_get_frontend._entry.210 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_fe_get_frontend._entry.213 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_fe_read_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_fe_refresh_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_fe_refresh_state._entry.220 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_get_statistic._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_get_statistic._entry.225 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_get_pre_vit_err_bit_count._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_get_pre_vit_err_bit_count._entry.230 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_get_pre_vit_err_bit_count._entry.233 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_get_pre_vit_err_bit_count._entry.236 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_get_pre_vit_err_bit_count._entry.239 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_get_post_vit_err_cw_count._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.243 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_get_post_vit_err_cw_count._entry.244 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.245 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_get_post_vit_err_cw_count._entry.247 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.248 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @af9005_fe_attach(ptr noundef %d) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1108) #9
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_af9005_debug to i32))
  %1 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.do.end6_crit_edge, label %do.end

do.body.do.end6_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end6

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #10
  br label %do.end6

do.end6:                                          ; preds = %do.end, %do.body.do.end6_crit_edge
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %d, ptr %call7.i.i, align 8
  %opened = getelementptr inbounds %struct.af9005_fe_state, ptr %call7.i.i, i32 0, i32 20
  %3 = ptrtoint ptr %opened to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %opened, align 8
  %frontend = getelementptr inbounds %struct.af9005_fe_state, ptr %call7.i.i, i32 0, i32 23
  %ops = getelementptr inbounds %struct.af9005_fe_state, ptr %call7.i.i, i32 0, i32 23, i32 1
  %4 = call ptr @memcpy(ptr %ops, ptr @af9005_fe_ops, i32 544)
  %demodulator_priv = getelementptr inbounds %struct.af9005_fe_state, ptr %call7.i.i, i32 0, i32 23, i32 3
  %5 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i, ptr %demodulator_priv, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end6, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %frontend, %do.end6 ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @af9005_fe_release(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  tail call void @kfree(ptr noundef %1) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @af9005_fe_init(ptr noundef %fe) #0 align 64 {
entry:
  %temp = alloca i8, align 1
  %buf = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %dvb = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %2 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dvb, align 4
  %priv = getelementptr inbounds %struct.dvb_adapter, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %temp) #6
  %6 = ptrtoint ptr %temp to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %temp, align 1, !annotation !380
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf) #6
  %7 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %buf, align 1, !annotation !380
  %8 = getelementptr inbounds [2 x i8], ptr %buf, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %8, align 1, !annotation !380
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_af9005_debug to i32))
  %10 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.body4_crit_edge, label %do.end

entry.do.body4_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #10
  br label %do.body4

do.body4:                                         ; preds = %do.end, %entry.do.body4_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_af9005_debug to i32))
  %11 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and5 = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %do.body4.do.end15_crit_edge, label %do.end10

do.body4.do.end15_crit_edge:                      ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end15

do.end10:                                         ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #8
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #10
  br label %do.end15

do.end15:                                         ; preds = %do.end10, %do.body4.do.end15_crit_edge
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %call16 = tail call i32 @af9005_write_register_bits(ptr noundef %13, i16 noundef zeroext -23537, i8 noundef zeroext 4, i8 noundef zeroext 1, i8 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %do.end15.cleanup_crit_edge

do.end15.cleanup_crit_edge:                       ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end19:                                         ; preds = %do.end15
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %call21 = tail call i32 @af9005_write_ofdm_register(ptr noundef %15, i16 noundef zeroext -20737, i8 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %do.body25, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body25:                                        ; preds = %if.end19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_af9005_debug to i32))
  %16 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and26 = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %do.body25.for.body.preheader_crit_edge, label %do.end31

do.body25.for.body.preheader_crit_edge:           ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.preheader

do.end31:                                         ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #8
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #10
  br label %for.body.preheader

for.body.preheader:                               ; preds = %do.end31, %do.body25.for.body.preheader_crit_edge
  br label %for.body

for.body:                                         ; preds = %if.end46.for.body_crit_edge, %for.body.preheader
  %i.0743 = phi i32 [ %inc, %if.end46.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %call38 = call i32 @af9005_read_ofdm_register(ptr noundef %18, i16 noundef zeroext -23537, ptr noundef nonnull %temp) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end41, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end41:                                         ; preds = %for.body
  %19 = ptrtoint ptr %temp to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %temp, align 1
  %conv = zext i8 %20 to i32
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @regmask to i32))
  %21 = load i8, ptr @regmask, align 1
  %conv42 = zext i8 %21 to i32
  %shl = shl nuw nsw i32 %conv42, 1
  %and43 = and i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %if.end46, label %if.end50

if.end46:                                         ; preds = %if.end41
  call void @msleep(i32 noundef 10) #6
  %inc = add nuw nsw i32 %i.0743, 1
  %exitcond.not = icmp eq i32 %inc, 150
  br i1 %exitcond.not, label %if.end46.cleanup_crit_edge, label %if.end46.for.body_crit_edge

if.end46.for.body_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end50:                                         ; preds = %if.end41
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %call52 = call i32 @af9005_write_ofdm_register(ptr noundef %23, i16 noundef zeroext -19968, i8 noundef zeroext -87) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end55, label %if.end50.cleanup_crit_edge

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end55:                                         ; preds = %if.end50
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 4
  %call57 = call i32 @af9005_write_ofdm_register(ptr noundef %25, i16 noundef zeroext -23600, i8 noundef zeroext 7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.end60, label %if.end55.cleanup_crit_edge

if.end55.cleanup_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end60:                                         ; preds = %if.end55
  %26 = ptrtoint ptr %temp to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %temp, align 1
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 4
  %call62 = call i32 @af9005_send_command(ptr noundef %28, i8 noundef zeroext 3, ptr noundef nonnull %temp, i32 noundef 1, ptr noundef null, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.end65, label %if.end60.cleanup_crit_edge

if.end60.cleanup_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end65:                                         ; preds = %if.end60
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 4
  %call67 = call i32 @af9005_write_ofdm_register(ptr noundef %30, i16 noundef zeroext -23600, i8 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.end70, label %if.end65.cleanup_crit_edge

if.end65.cleanup_crit_edge:                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end70:                                         ; preds = %if.end65
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %1, align 4
  %call72 = call i32 @af9005_write_ofdm_register(ptr noundef %32, i16 noundef zeroext -19968, i8 noundef zeroext -95) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %if.end75, label %if.end70.cleanup_crit_edge

if.end70.cleanup_crit_edge:                       ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end75:                                         ; preds = %if.end70
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @regmask to i32))
  %33 = load i8, ptr @regmask, align 1
  %shl77 = shl i8 %33, 1
  %34 = ptrtoint ptr %temp to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %shl77, ptr %temp, align 1
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %1, align 4
  %call80 = call i32 @af9005_write_register_bits(ptr noundef %36, i16 noundef zeroext -23537, i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %if.end83, label %if.end75.cleanup_crit_edge

if.end75.cleanup_crit_edge:                       ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end83:                                         ; preds = %if.end75
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %1, align 4
  %call85 = call i32 @af9005_write_register_bits(ptr noundef %38, i16 noundef zeroext -23537, i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %if.end88, label %if.end83.cleanup_crit_edge

if.end83.cleanup_crit_edge:                       ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end88:                                         ; preds = %if.end83
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %1, align 4
  %call90 = call i32 @af9005_write_ofdm_register(ptr noundef %40, i16 noundef zeroext -20740, i8 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %do.body94, label %if.end88.cleanup_crit_edge

if.end88.cleanup_crit_edge:                       ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body94:                                        ; preds = %if.end88
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_af9005_debug to i32))
  %41 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and95 = and i32 %41, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and95)
  %tobool96.not = icmp eq i32 %and95, 0
  br i1 %tobool96.not, label %do.body94.do.end105_crit_edge, label %do.end100

do.body94.do.end105_crit_edge:                    ; preds = %do.body94
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end105

do.end100:                                        ; preds = %do.body94
  call void @__sanitizer_cov_trace_pc() #8
  %call102 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #10
  br label %do.end105

do.end105:                                        ; preds = %do.end100, %do.body94.do.end105_crit_edge
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %1, align 4
  %call107 = call i32 @af9005_write_register_bits(ptr noundef %43, i16 noundef zeroext -24212, i8 noundef zeroext 0, i8 noundef zeroext 1, i8 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107)
  %tobool108.not = icmp eq i32 %call107, 0
  br i1 %tobool108.not, label %do.body111, label %do.end105.cleanup_crit_edge

do.end105.cleanup_crit_edge:                      ; preds = %do.end105
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body111:                                       ; preds = %do.end105
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_af9005_debug to i32))
  %44 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and112 = and i32 %44, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and112)
  %tobool113.not = icmp eq i32 %and112, 0
  br i1 %tobool113.not, label %do.body111.do.end122_crit_edge, label %do.end117

do.body111.do.end122_crit_edge:                   ; preds = %do.body111
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end122

do.end117:                                        ; preds = %do.body111
  call void @__sanitizer_cov_trace_pc() #8
  %call119 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #10
  br label %do.end122

do.end122:                                        ; preds = %do.end117, %do.body111.do.end122_crit_edge
  %45 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %1, align 4
  %call124 = call i32 @af9005_write_register_bits(ptr noundef %46, i16 noundef zeroext -24224, i8 noundef zeroext 3, i8 noundef zeroext 1, i8 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call124)
  %tobool125.not = icmp eq i32 %call124, 0
  br i1 %tobool125.not, label %if.end127, label %do.end122.cleanup_crit_edge

do.end122.cleanup_crit_edge:                      ; preds = %do.end122
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end127:                                        ; preds = %do.end122
  %47 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %1, align 4
  %call129 = call i32 @af9005_write_register_bits(ptr noundef %48, i16 noundef zeroext -24224, i8 noundef zeroext 2, i8 noundef zeroext 1, i8 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call129)
  %tobool130.not = icmp eq i32 %call129, 0
  br i1 %tobool130.not, label %do.body133, label %if.end127.cleanup_crit_edge

if.end127.cleanup_crit_edge:                      ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body133:                                       ; preds = %if.end127
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_af9005_debug to i32))
  %49 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and134 = and i32 %49, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and134)
  %tobool135.not = icmp eq i32 %and134, 0
  br i1 %tobool135.not, label %do.body133.do.end144_crit_edge, label %do.end139

do.body133.do.end144_crit_edge:                   ; preds = %do.body133
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end144

do.end139:                                        ; preds = %do.body133
  call void @__sanitizer_cov_trace_pc() #8
  %call141 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #10
  br label %do.end144

do.end144:                                        ; preds = %do.end139, %do.body133.do.end144_crit_edge
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %1, align 4
  %call146 = call i32 @af9005_write_ofdm_register(ptr noundef %51, i16 noundef zeroext -23538, i8 noundef zeroext 20) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call146)
  %tobool147.not = icmp eq i32 %call146, 0
  br i1 %tobool147.not, label %do.body150, label %do.end144.cleanup_crit_edge

do.end144.cleanup_crit_edge:                      ; preds = %do.end144
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body150:                                       ; preds = %do.end144
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_af9005_debug to i32))
  %52 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and151 = and i32 %52, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and151)
  %tobool152.not = icmp eq i32 %and151, 0
  br i1 %tobool152.not, label %do.body150.do.end161_crit_edge, label %do.end156

do.body150.do.end161_crit_edge:                   ; preds = %do.body150
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end161

do.end156:                                        ; preds = %do.body150
  call void @__sanitizer_cov_trace_pc() #8
  %call158 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #10
  br label %do.end161

do.end161:                                        ; preds = %do.end156, %do.body150.do.end161_crit_edge
  %53 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %1, align 4
  %call163 = call i32 @af9005_write_register_bits(ptr noundef %54, i16 noundef zeroext -24149, i8 noundef zeroext 0, i8 noundef zeroext 1, i8 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call163)
  %tobool164.not = icmp eq i32 %call163, 0
  br i1 %tobool164.not, label %if.end166, label %do.end161.cleanup_crit_edge

do.end161.cleanup_crit_edge:                      ; preds = %do.end161
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end166:                                        ; preds = %do.end161
  %55 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %1, align 4
  %call168 = call i32 @af9005_write_ofdm_register(ptr noundef %56, i16 noundef zeroext -24212, i8 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call168)
  %tobool169.not = icmp eq i32 %call168, 0
  br i1 %tobool169.not, label %if.end171, label %if.end166.cleanup_crit_edge

if.end166.cleanup_crit_edge:                      ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end171:                                        ; preds = %if.end166
  %57 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %1, align 4
  %call173 = call i32 @af9005_write_ofdm_register(ptr noundef %58, i16 noundef zeroext -23615, i8 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call173)
  %tobool174.not = icmp eq i32 %call173, 0
  br i1 %tobool174.not, label %do.body177, label %if.end171.cleanup_crit_edge

if.end171.cleanup_crit_edge:                      ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body177:                                       ; preds = %if.end171
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_af9005_debug to i32))
  %59 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and178 = and i32 %59, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and178)
  %tobool179.not = icmp eq i32 %and178, 0
  br i1 %tobool179.not, label %do.body177.do.end188_crit_edge, label %do.end183

do.body177.do.end188_crit_edge:                   ; preds = %do.body177
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end188

do.end183:                                        ; preds = %do.body177
  call void @__sanitizer_cov_trace_pc() #8
  %call185 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #10
  br label %do.end188

do.end188:                                        ; preds = %do.end183, %do.body177.do.end188_crit_edge
  %60 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %1, align 4
  %call190 = call fastcc i32 @af9005_fe_program_cfoe(ptr noundef %61, i32 noundef 6000000)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call190)
  %tobool191.not = icmp eq i32 %call190, 0
  br i1 %tobool191.not, label %do.body194, label %do.end188.cleanup_crit_edge

do.end188.cleanup_crit_edge:                      ; preds = %do.end188
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body194:                                       ; preds = %do.end188
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_af9005_debug to i32))
  %62 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and195 = and i32 %62, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and195)
  %tobool196.not = icmp eq i32 %and195, 0
  br i1 %tobool196.not, label %do.body194.do.end205_crit_edge, label %do.end200

do.body194.do.end205_crit_edge:                   ; preds = %do.body194
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end205

do.end200:                                        ; preds = %do.body194
  call void @__sanitizer_cov_trace_pc() #8
  %call202 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27) #10
  br label %do.end205

do.end205:                                        ; preds = %do.end200, %do.body194.do.end205_crit_edge
  %63 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %1, align 4
  %call207 = call i32 @af9005_write_register_bits(ptr noundef %64, i16 noundef zeroext -23695, i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call207)
  %tobool208.not = icmp eq i32 %call207, 0
  br i1 %tobool208.not, label %do.body211, label %do.end205.cleanup_crit_edge

do.end205.cleanup_crit_edge:                      ; preds = %do.end205
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body211:                                       ; preds = %do.end205
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_af9005_debug to i32))
  %65 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and212 = and i32 %65, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and212)
  %tobool213.not = icmp eq i32 %and212, 0
  br i1 %tobool213.not, label %do.body211.do.end222_crit_edge, label %do.end217

do.body211.do.end222_crit_edge:                   ; preds = %do.body211
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end222

do.end217:                                        ; preds = %do.body211
  call void @__sanitizer_cov_trace_pc() #8
  %call219 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30) #10
  br label %do.end222

do.end222:                                        ; preds = %do.end217, %do.body211.do.end222_crit_edge
  %66 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %1, align 4
  %call224 = call i32 @af9005_write_register_bits(ptr noundef %67, i16 noundef zeroext -24205, i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call224)
  %tobool225.not = icmp eq i32 %call224, 0
  br i1 %tobool225.not, label %do.body228, label %do.end222.cleanup_crit_edge

do.end222.cleanup_crit_edge:                      ; preds = %do.end222
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body228:                                       ; preds = %do.end222
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_af9005_debug to i32))
  %68 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and229 = and i32 %68, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and229)
  %tobool230.not = icmp eq i32 %and229, 0
  br i1 %tobool230.not, label %do.body228.do.end239_crit_edge, label %do.end234

do.body228.do.end239_crit_edge:                   ; preds = %do.body228
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end239

do.end234:                                        ; preds = %do.body228
  call void @__sanitizer_cov_trace_pc() #8
  %call236 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33) #10
  br label %do.end239

do.end239:                                        ; preds = %do.end234, %do.body228.do.end239_crit_edge
  %69 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %1, align 4
  %call241 = call i32 @af9005_write_register_bits(ptr noundef %70, i16 noundef zeroext -23662, i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call241)
  %tobool242.not = icmp eq i32 %call241, 0
  br i1 %tobool242.not, label %if.end244, label %do.end239.cleanup_crit_edge

do.end239.cleanup_crit_edge:                      ; preds = %do.end239
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end244:                                        ; preds = %do.end239
  %71 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %1, align 4
  %call246 = call i32 @af9005_write_ofdm_register(ptr noundef %72, i16 noundef zeroext -23039, i8 noundef zeroext 0) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_af9005_debug to i32))
  %73 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and248 = and i32 %73, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and248)
  %tobool249.not = icmp eq i32 %and248, 0
  br i1 %tobool249.not, label %if.end244.do.end258_crit_edge, label %do.end253

if.end244.do.end258_crit_edge:                    ; preds = %if.end244
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end258

do.end253:                                        ; preds = %if.end244
  call void @__sanitizer_cov_trace_pc() #8
  %call255 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #10
  br label %do.end258

do.end258:                                        ; preds = %do.end253, %if.end244.do.end258_crit_edge
  %74 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %1, align 4
  %call260 = call i32 @af9005_write_ofdm_register(ptr noundef %75, i16 noundef zeroext -20741, i8 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call260)
  %tobool261.not = icmp eq i32 %call260, 0
  br i1 %tobool261.not, label %do.body264, label %do.end258.cleanup_crit_edge

do.end258.cleanup_crit_edge:                      ; preds = %do.end258
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body264:                                       ; preds = %do.end258
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_af9005_debug to i32))
  %76 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and265 = and i32 %76, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and265)
  %tobool266.not = icmp eq i32 %and265, 0
  br i1 %tobool266.not, label %do.body264.do.end275_crit_edge, label %do.end270

do.body264.do.end275_crit_edge:                   ; preds = %do.body264
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end275

do.end270:                                        ; preds = %do.body264
  call void @__sanitizer_cov_trace_pc() #8
  %call272 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39) #10
  br label %do.end275

do.end275:                                        ; preds = %do.end270, %do.body264.do.end275_crit_edge
  %original_dtop_rf_unplug_th = getelementptr inbounds %struct.af9005_fe_state, ptr %1, i32 0, i32 12
  %original_dtop_if_unplug_th = getelementptr inbounds %struct.af9005_fe_state, ptr %1, i32 0, i32 11
  %original_rf_unplug_th = getelementptr inbounds %struct.af9005_fe_state, ptr %1, i32 0, i32 10
  %original_if_unplug_th = getelementptr inbounds %struct.af9005_fe_state, ptr %1, i32 0, i32 9
  br label %for.body279

for.body279:                                      ; preds = %for.inc351.for.body279_crit_edge, %do.end275
  %i.1747 = phi i32 [ 0, %do.end275 ], [ %inc352, %for.inc351.for.body279_crit_edge ]
  %temp0.0746 = phi i8 [ 0, %do.end275 ], [ %temp0.1691696705710, %for.inc351.for.body279_crit_edge ]
  %temp1.0745 = phi i8 [ 0, %do.end275 ], [ %temp1.1684689698703712, %for.inc351.for.body279_crit_edge ]
  %temp2.0744 = phi i8 [ 0, %do.end275 ], [ %temp2.1679683690697704711, %for.inc351.for.body279_crit_edge ]
  %77 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %1, align 4
  %arrayidx = getelementptr [185 x %struct.RegDesc], ptr @script, i32 0, i32 %i.1747
  %79 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %arrayidx, align 2
  %pos = getelementptr [185 x %struct.RegDesc], ptr @script, i32 0, i32 %i.1747, i32 1
  %81 = ptrtoint ptr %pos to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %pos, align 2
  %len = getelementptr [185 x %struct.RegDesc], ptr @script, i32 0, i32 %i.1747, i32 2
  %83 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %len, align 1
  %val = getelementptr [185 x %struct.RegDesc], ptr @script, i32 0, i32 %i.1747, i32 3
  %85 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %val, align 2
  %call284 = call i32 @af9005_write_register_bits(ptr noundef %78, i16 noundef zeroext %80, i8 noundef zeroext %82, i8 noundef zeroext %84, i8 noundef zeroext %86) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call284)
  %tobool285.not = icmp eq i32 %call284, 0
  br i1 %tobool285.not, label %if.end287, label %for.body279.cleanup_crit_edge

for.body279.cleanup_crit_edge:                    ; preds = %for.body279
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end287:                                        ; preds = %for.body279
  %87 = zext i16 %80 to i64
  call void @__sanitizer_cov_trace_switch(i64 %87, ptr @__sancov_gen_cov_switch_values)
  switch i16 %80, label %for.inc351.fold.split735 [
    i16 -20968, label %if.end287.for.inc351_crit_edge
    i16 -20967, label %for.inc351.fold.split
    i16 -20966, label %for.inc351.fold.split734
    i16 -24543, label %if.then320
    i16 -24541, label %if.end332.thread
    i16 -24539, label %if.then338
    i16 -24540, label %if.then347
  ]

if.end287.for.inc351_crit_edge:                   ; preds = %if.end287
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc351

if.then320:                                       ; preds = %if.end287
  call void @__sanitizer_cov_trace_pc() #8
  %88 = ptrtoint ptr %original_if_unplug_th to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %86, ptr %original_if_unplug_th, align 4
  br label %for.inc351

if.end332.thread:                                 ; preds = %if.end287
  call void @__sanitizer_cov_trace_pc() #8
  %89 = ptrtoint ptr %original_rf_unplug_th to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %86, ptr %original_rf_unplug_th, align 1
  br label %for.inc351

if.then338:                                       ; preds = %if.end287
  call void @__sanitizer_cov_trace_pc() #8
  %90 = ptrtoint ptr %original_dtop_if_unplug_th to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %86, ptr %original_dtop_if_unplug_th, align 2
  br label %for.inc351

if.then347:                                       ; preds = %if.end287
  call void @__sanitizer_cov_trace_pc() #8
  %91 = ptrtoint ptr %original_dtop_rf_unplug_th to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %86, ptr %original_dtop_rf_unplug_th, align 1
  br label %for.inc351

for.inc351.fold.split:                            ; preds = %if.end287
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc351

for.inc351.fold.split734:                         ; preds = %if.end287
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc351

for.inc351.fold.split735:                         ; preds = %if.end287
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc351

for.inc351:                                       ; preds = %for.inc351.fold.split735, %for.inc351.fold.split734, %for.inc351.fold.split, %if.then347, %if.then338, %if.end332.thread, %if.then320, %if.end287.for.inc351_crit_edge
  %temp1.1684689698703712 = phi i8 [ %temp1.0745, %if.then347 ], [ %temp1.0745, %if.then338 ], [ %temp1.0745, %if.end332.thread ], [ %temp1.0745, %if.then320 ], [ %temp1.0745, %if.end287.for.inc351_crit_edge ], [ %86, %for.inc351.fold.split ], [ %temp1.0745, %for.inc351.fold.split734 ], [ %temp1.0745, %for.inc351.fold.split735 ]
  %temp2.1679683690697704711 = phi i8 [ %temp2.0744, %if.then347 ], [ %temp2.0744, %if.then338 ], [ %temp2.0744, %if.end332.thread ], [ %temp2.0744, %if.then320 ], [ %86, %if.end287.for.inc351_crit_edge ], [ %temp2.0744, %for.inc351.fold.split ], [ %temp2.0744, %for.inc351.fold.split734 ], [ %temp2.0744, %for.inc351.fold.split735 ]
  %temp0.1691696705710 = phi i8 [ %temp0.0746, %if.then347 ], [ %temp0.0746, %if.then338 ], [ %temp0.0746, %if.end332.thread ], [ %temp0.0746, %if.then320 ], [ %temp0.0746, %if.end287.for.inc351_crit_edge ], [ %temp0.0746, %for.inc351.fold.split ], [ %86, %for.inc351.fold.split734 ], [ %temp0.0746, %for.inc351.fold.split735 ]
  %inc352 = add nuw nsw i32 %i.1747, 1
  %exitcond752.not = icmp eq i32 %inc352, 185
  br i1 %exitcond752.not, label %for.end353, label %for.inc351.for.body279_crit_edge

for.inc351.for.body279_crit_edge:                 ; preds = %for.inc351
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body279

for.end353:                                       ; preds = %for.inc351
  %conv354 = zext i8 %temp2.1679683690697704711 to i32
  %shl355 = shl nuw nsw i32 %conv354, 16
  %conv356 = zext i8 %temp1.1684689698703712 to i32
  %shl357 = shl nuw nsw i32 %conv356, 8
  %add = or i32 %shl357, %shl355
  %conv358 = zext i8 %temp0.1691696705710 to i32
  %add359 = or i32 %add, %conv358
  %original_fcw = getelementptr inbounds %struct.af9005_fe_state, ptr %1, i32 0, i32 2
  %92 = ptrtoint ptr %original_fcw to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %add359, ptr %original_fcw, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_af9005_debug to i32))
  %93 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and361 = and i32 %93, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and361)
  %tobool362.not = icmp eq i32 %and361, 0
  br i1 %tobool362.not, label %for.end353.do.end371_crit_edge, label %do.end366

for.end353.do.end371_crit_edge:                   ; preds = %for.end353
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end371

do.end366:                                        ; preds = %for.end353
  call void @__sanitizer_cov_trace_pc() #8
  %call368 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42) #10
  br label %do.end371

do.end371:                                        ; preds = %do.end366, %for.end353.do.end371_crit_edge
  %94 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %1, align 4
  %original_rf_top = getelementptr inbounds %struct.af9005_fe_state, ptr %1, i32 0, i32 3
  %call373 = call fastcc i32 @af9005_read_word_agc(ptr noundef %95, i16 noundef zeroext -24558, i16 noundef zeroext -24559, i8 noundef zeroext 0, ptr noundef %original_rf_top)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call373)
  %tobool374.not = icmp eq i32 %call373, 0
  br i1 %tobool374.not, label %if.end376, label %do.end371.cleanup_crit_edge

do.end371.cleanup_crit_edge:                      ; preds = %do.end371
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end376:                                        ; preds = %do.end371
  %96 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %1, align 4
  %original_if_top = getelementptr inbounds %struct.af9005_fe_state, ptr %1, i32 0, i32 4
  %call378 = call fastcc i32 @af9005_read_word_agc(ptr noundef %97, i16 noundef zeroext -24556, i16 noundef zeroext -24557, i8 noundef zeroext 0, ptr noundef %original_if_top)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call378)
  %tobool379.not = icmp eq i32 %call378, 0
  br i1 %tobool379.not, label %if.end381, label %if.end376.cleanup_crit_edge

if.end376.cleanup_crit_edge:                      ; preds = %if.end376
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end381:                                        ; preds = %if.end376
  %98 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %1, align 4
  %original_aci0_if_top = getelementptr inbounds %struct.af9005_fe_state, ptr %1, i32 0, i32 6
  %call383 = call fastcc i32 @af9005_read_word_agc(ptr noundef %99, i16 noundef zeroext -23026, i16 noundef zeroext -23030, i8 noundef zeroext 4, ptr noundef %original_aci0_if_top)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call383)
  %tobool384.not = icmp eq i32 %call383, 0
  br i1 %tobool384.not, label %if.end386, label %if.end381.cleanup_crit_edge

if.end381.cleanup_crit_edge:                      ; preds = %if.end381
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end386:                                        ; preds = %if.end381
  %100 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %1, align 4
  %original_aci1_if_top = getelementptr inbounds %struct.af9005_fe_state, ptr %1, i32 0, i32 7
  %call388 = call fastcc i32 @af9005_read_word_agc(ptr noundef %101, i16 noundef zeroext -23026, i16 noundef zeroext -23029, i8 noundef zeroext 6, ptr noundef %original_aci1_if_top)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call388)
  %tobool389.not = icmp eq i32 %call388, 0
  br i1 %tobool389.not, label %if.end391, label %if.end386.cleanup_crit_edge

if.end386.cleanup_crit_edge:                      ; preds = %if.end386
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end391:                                        ; preds = %if.end386
  %release = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 1
  %102 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %release, align 4
  %cmp392 = icmp eq ptr %103, null
  br i1 %cmp392, label %if.then394, label %if.end391.do.body535_crit_edge

if.end391.do.body535_crit_edge:                   ; preds = %if.end391
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body535

if.then394:                                       ; preds = %if.end391
  %104 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %5, align 8
  %call395 = call i32 @af9005_read_eeprom(ptr noundef %105, i8 noundef zeroext -58, ptr noundef nonnull %buf, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call395)
  %tobool396.not = icmp eq i32 %call395, 0
  br i1 %tobool396.not, label %do.body404, label %do.end400

do.end400:                                        ; preds = %if.then394
  call void @__sanitizer_cov_trace_pc() #8
  %call402 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45) #10
  br label %cleanup

do.body404:                                       ; preds = %if.then394
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_af9005_debug to i32))
  %106 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and405 = and i32 %106, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and405)
  %tobool406.not = icmp eq i32 %and405, 0
  br i1 %tobool406.not, label %do.body404.do.end419_crit_edge, label %do.end410

do.body404.do.end419_crit_edge:                   ; preds = %do.body404
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end419

do.end410:                                        ; preds = %do.body404
  call void @__sanitizer_cov_trace_pc() #8
  %107 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %buf, align 1
  %conv413 = zext i8 %108 to i32
  %109 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %8, align 1
  %conv415 = zext i8 %110 to i32
  %call416 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, i32 noundef %conv413, i32 noundef %conv415) #10
  br label %do.end419

do.end419:                                        ; preds = %do.end410, %do.body404.do.end419_crit_edge
  %111 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %buf, align 1
  %113 = zext i8 %112 to i64
  call void @__sanitizer_cov_trace_switch(i64 %113, ptr @__sancov_gen_cov_switch_values.250)
  switch i8 %112, label %do.end523 [
    i8 2, label %sw.bb
    i8 3, label %do.end419.sw.bb477_crit_edge
    i8 9, label %do.end419.sw.bb477_crit_edge760
  ]

do.end419.sw.bb477_crit_edge760:                  ; preds = %do.end419
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb477

do.end419.sw.bb477_crit_edge:                     ; preds = %do.end419
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb477

sw.bb:                                            ; preds = %do.end419
  %114 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %5, align 8
  %call424 = call i32 @af9005_read_eeprom(ptr noundef %115, i8 noundef zeroext -56, ptr noundef nonnull %buf, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call424)
  %tobool425.not = icmp eq i32 %call424, 0
  br i1 %tobool425.not, label %if.end432, label %do.end429

do.end429:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %call431 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45) #10
  br label %cleanup

if.end432:                                        ; preds = %sw.bb
  %116 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %buf, align 1
  %conv434 = zext i8 %117 to i16
  %shl435 = shl nuw i16 %conv434, 8
  %118 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %8, align 1
  %conv439 = zext i8 %119 to i16
  %add440 = or i16 %shl435, %conv439
  %call442 = call ptr @__symbol_get(ptr noundef nonnull @.str.52) #6
  %tobool443.not = icmp eq ptr %call442, null
  br i1 %tobool443.not, label %cond.end, label %if.end432.if.then447_crit_edge

if.end432.if.then447_crit_edge:                   ; preds = %if.end432
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then447

cond.end:                                         ; preds = %if.end432
  %call444 = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.53) #6
  %call445 = call ptr @__symbol_get(ptr noundef nonnull @.str.52) #6
  %tobool446.not = icmp eq ptr %call445, null
  br i1 %tobool446.not, label %do.end456, label %cond.end.if.then447_crit_edge

cond.end.if.then447_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then447

if.then447:                                       ; preds = %cond.end.if.then447_crit_edge, %if.end432.if.then447_crit_edge
  %cond715 = phi ptr [ %call445, %cond.end.if.then447_crit_edge ], [ %call442, %if.end432.if.then447_crit_edge ]
  %120 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %5, align 8
  %i2c_adap = getelementptr inbounds %struct.dvb_usb_device, ptr %121, i32 0, i32 8
  %call449 = call ptr %cond715(ptr noundef %fe, ptr noundef %i2c_adap, ptr noundef nonnull @af9005_mt2060_config, i16 noundef zeroext %add440) #6
  %cmp450 = icmp eq ptr %call449, null
  br i1 %cmp450, label %if.then452, label %if.then447.sw.epilog_crit_edge

if.then447.sw.epilog_crit_edge:                   ; preds = %if.then447
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then452:                                       ; preds = %if.then447
  call void @__sanitizer_cov_trace_pc() #8
  call void @__symbol_put(ptr noundef nonnull @.str.52) #6
  br label %do.body464

do.end456:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  %call458 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55) #10
  br label %do.body464

do.body464:                                       ; preds = %do.end456, %if.then452
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_af9005_debug to i32))
  %122 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and465 = and i32 %122, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and465)
  %tobool466.not = icmp eq i32 %and465, 0
  br i1 %tobool466.not, label %do.body464.cleanup_crit_edge, label %do.end470

do.body464.cleanup_crit_edge:                     ; preds = %do.body464
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end470:                                        ; preds = %do.body464
  call void @__sanitizer_cov_trace_pc() #8
  %call472 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58) #10
  br label %cleanup

sw.bb477:                                         ; preds = %do.end419.sw.bb477_crit_edge, %do.end419.sw.bb477_crit_edge760
  %call480 = call ptr @__symbol_get(ptr noundef nonnull @.str.60) #6
  %tobool481.not = icmp eq ptr %call480, null
  br i1 %tobool481.not, label %cond.end486, label %sw.bb477.if.then489_crit_edge

sw.bb477.if.then489_crit_edge:                    ; preds = %sw.bb477
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then489

cond.end486:                                      ; preds = %sw.bb477
  %call484 = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.61) #6
  %call485 = call ptr @__symbol_get(ptr noundef nonnull @.str.60) #6
  %tobool488.not = icmp eq ptr %call485, null
  br i1 %tobool488.not, label %do.end500, label %cond.end486.if.then489_crit_edge

cond.end486.if.then489_crit_edge:                 ; preds = %cond.end486
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then489

if.then489:                                       ; preds = %cond.end486.if.then489_crit_edge, %sw.bb477.if.then489_crit_edge
  %cond487720 = phi ptr [ %call485, %cond.end486.if.then489_crit_edge ], [ %call480, %sw.bb477.if.then489_crit_edge ]
  %123 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %5, align 8
  %i2c_adap491 = getelementptr inbounds %struct.dvb_usb_device, ptr %124, i32 0, i32 8
  %call492 = call ptr %cond487720(ptr noundef %fe, ptr noundef %i2c_adap491, ptr noundef nonnull @af9005_qt1010_config) #6
  %cmp493 = icmp eq ptr %call492, null
  br i1 %cmp493, label %if.then495, label %if.then489.sw.epilog_crit_edge

if.then489.sw.epilog_crit_edge:                   ; preds = %if.then489
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then495:                                       ; preds = %if.then489
  call void @__sanitizer_cov_trace_pc() #8
  call void @__symbol_put(ptr noundef nonnull @.str.60) #6
  br label %do.body508

do.end500:                                        ; preds = %cond.end486
  call void @__sanitizer_cov_trace_pc() #8
  %call502 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63) #10
  br label %do.body508

do.body508:                                       ; preds = %do.end500, %if.then495
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_af9005_debug to i32))
  %125 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and509 = and i32 %125, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and509)
  %tobool510.not = icmp eq i32 %and509, 0
  br i1 %tobool510.not, label %do.body508.cleanup_crit_edge, label %do.end514

do.body508.cleanup_crit_edge:                     ; preds = %do.body508
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end514:                                        ; preds = %do.body508
  call void @__sanitizer_cov_trace_pc() #8
  %call516 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66) #10
  br label %cleanup

do.end523:                                        ; preds = %do.end419
  call void @__sanitizer_cov_trace_pc() #8
  %conv421 = zext i8 %112 to i32
  %call527 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, i32 noundef %conv421) #10
  br label %cleanup

sw.epilog:                                        ; preds = %if.then489.sw.epilog_crit_edge, %if.then447.sw.epilog_crit_edge
  %init = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 2
  %126 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %init, align 4
  %call530 = call i32 %127(ptr noundef %fe) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call530)
  %tobool531.not = icmp eq i32 %call530, 0
  br i1 %tobool531.not, label %sw.epilog.do.body535_crit_edge, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.epilog.do.body535_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body535

do.body535:                                       ; preds = %sw.epilog.do.body535_crit_edge, %if.end391.do.body535_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_af9005_debug to i32))
  %128 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and536 = and i32 %128, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and536)
  %tobool537.not = icmp eq i32 %and536, 0
  br i1 %tobool537.not, label %do.body535.cleanup_crit_edge, label %do.end541

do.body535.cleanup_crit_edge:                     ; preds = %do.body535
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end541:                                        ; preds = %do.body535
  call void @__sanitizer_cov_trace_pc() #8
  %call543 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end541, %do.body535.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %do.end523, %do.end514, %do.body508.cleanup_crit_edge, %do.end470, %do.body464.cleanup_crit_edge, %do.end429, %do.end400, %if.end386.cleanup_crit_edge, %if.end381.cleanup_crit_edge, %if.end376.cleanup_crit_edge, %do.end371.cleanup_crit_edge, %for.body279.cleanup_crit_edge, %do.end258.cleanup_crit_edge, %do.end239.cleanup_crit_edge, %do.end222.cleanup_crit_edge, %do.end205.cleanup_crit_edge, %do.end188.cleanup_crit_edge, %if.end171.cleanup_crit_edge, %if.end166.cleanup_crit_edge, %do.end161.cleanup_crit_edge, %do.end144.cleanup_crit_edge, %if.end127.cleanup_crit_edge, %do.end122.cleanup_crit_edge, %do.end105.cleanup_crit_edge, %if.end88.cleanup_crit_edge, %if.end83.cleanup_crit_edge, %if.end75.cleanup_crit_edge, %if.end70.cleanup_crit_edge, %if.end65.cleanup_crit_edge, %if.end60.cleanup_crit_edge, %if.end55.cleanup_crit_edge, %if.end50.cleanup_crit_edge, %if.end46.cleanup_crit_edge, %for.body.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %do.end15.cleanup_crit_edge
  %retval.0 = phi i32 [ %call395, %do.end400 ], [ -19, %do.end523 ], [ %call424, %do.end429 ], [ %call16, %do.end15.cleanup_crit_edge ], [ %call21, %if.end19.cleanup_crit_edge ], [ %call52, %if.end50.cleanup_crit_edge ], [ %call57, %if.end55.cleanup_crit_edge ], [ %call62, %if.end60.cleanup_crit_edge ], [ %call67, %if.end65.cleanup_crit_edge ], [ %call72, %if.end70.cleanup_crit_edge ], [ %call80, %if.end75.cleanup_crit_edge ], [ %call85, %if.end83.cleanup_crit_edge ], [ %call90, %if.end88.cleanup_crit_edge ], [ %call107, %do.end105.cleanup_crit_edge ], [ %call124, %do.end122.cleanup_crit_edge ], [ %call129, %if.end127.cleanup_crit_edge ], [ %call146, %do.end144.cleanup_crit_edge ], [ %call163, %do.end161.cleanup_crit_edge ], [ %call168, %if.end166.cleanup_crit_edge ], [ %call173, %if.end171.cleanup_crit_edge ], [ %call190, %do.end188.cleanup_crit_edge ], [ %call207, %do.end205.cleanup_crit_edge ], [ %call224, %do.end222.cleanup_crit_edge ], [ %call241, %do.end239.cleanup_crit_edge ], [ %call260, %do.end258.cleanup_crit_edge ], [ %call373, %do.end371.cleanup_crit_edge ], [ %call378, %if.end376.cleanup_crit_edge ], [ %call383, %if.end381.cleanup_crit_edge ], [ %call388, %if.end386.cleanup_crit_edge ], [ -19, %do.end470 ], [ -19, %do.body464.cleanup_crit_edge ], [ -19, %do.end514 ], [ -19, %do.body508.cleanup_crit_edge ], [ %call530, %sw.epilog.cleanup_crit_edge ], [ 0, %do.end541 ], [ 0, %do.body535.cleanup_crit_edge ], [ %call284, %for.body279.cleanup_crit_edge ], [ %call38, %for.body.cleanup_crit_edge ], [ -110, %if.end46.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %temp) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @af9005_fe_sleep(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  %temp.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %temp.i) #6
  %2 = ptrtoint ptr %temp.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %temp.i, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_af9005_debug to i32))
  %3 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.af9005_fe_power.exit_crit_edge, label %do.end.i

entry.af9005_fe_power.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %af9005_fe_power.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.81) #10
  br label %af9005_fe_power.exit

af9005_fe_power.exit:                             ; preds = %do.end.i, %entry.af9005_fe_power.exit_crit_edge
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %call5.i = call i32 @af9005_send_command(ptr noundef %5, i8 noundef zeroext 3, ptr noundef nonnull %temp.i, i32 noundef 1, ptr noundef null, i32 noundef 0) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %temp.i) #6
  ret i32 %call5.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @af9005_fe_set_frontend(ptr noundef %fe) #0 align 64 {
entry:
  %temp = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %temp) #6
  %2 = ptrtoint ptr %temp to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %temp, align 1, !annotation !380
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_af9005_debug to i32))
  %3 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  %4 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dtv_property_cache, align 4
  %bandwidth_hz = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 7
  %6 = ptrtoint ptr %bandwidth_hz to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bandwidth_hz, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, i32 noundef %5, i32 noundef %7) #10
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %release = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 1
  %8 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %release, align 4
  %cmp = icmp eq ptr %9, null
  br i1 %cmp, label %do.end7, label %do.body11

do.end7:                                          ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #8
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85) #10
  br label %cleanup

do.body11:                                        ; preds = %do.end3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_af9005_debug to i32))
  %10 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and12 = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %do.body11.do.end22_crit_edge, label %do.end17

do.body11.do.end22_crit_edge:                     ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end22

do.end17:                                         ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #8
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88) #10
  br label %do.end22

do.end22:                                         ; preds = %do.end17, %do.body11.do.end22_crit_edge
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %call23 = tail call i32 @af9005_led_control(ptr noundef %12, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %do.end22.cleanup_crit_edge

do.end22.cleanup_crit_edge:                       ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end26:                                         ; preds = %do.end22
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %call28 = tail call i32 @af9005_write_register_bits(ptr noundef %14, i16 noundef zeroext -20473, i8 noundef zeroext 2, i8 noundef zeroext 1, i8 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %do.body32, label %if.end26.cleanup_crit_edge

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body32:                                        ; preds = %if.end26
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_af9005_debug to i32))
  %15 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and33 = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %do.body32.do.end43_crit_edge, label %do.end38

do.body32.do.end43_crit_edge:                     ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end43

do.end38:                                         ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #8
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.91) #10
  br label %do.end43

do.end43:                                         ; preds = %do.end38, %do.body32.do.end43_crit_edge
  %original_fcw = getelementptr inbounds %struct.af9005_fe_state, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %original_fcw to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %original_fcw, align 4
  %conv = trunc i32 %17 to i8
  %and49 = lshr i32 %17, 16
  %conv51 = trunc i32 %and49 to i8
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %call53 = tail call i32 @af9005_write_ofdm_register(ptr noundef %19, i16 noundef zeroext -20966, i8 noundef zeroext %conv) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end56, label %do.end43.cleanup_crit_edge

do.end43.cleanup_crit_edge:                       ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end56:                                         ; preds = %do.end43
  %and46 = lshr i32 %17, 8
  %conv47 = trunc i32 %and46 to i8
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %call58 = tail call i32 @af9005_write_ofdm_register(ptr noundef %21, i16 noundef zeroext -20967, i8 noundef zeroext %conv47) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.end61, label %if.end56.cleanup_crit_edge

if.end56.cleanup_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end61:                                         ; preds = %if.end56
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %call63 = tail call i32 @af9005_write_ofdm_register(ptr noundef %23, i16 noundef zeroext -20968, i8 noundef zeroext %conv51) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %do.body67, label %if.end61.cleanup_crit_edge

if.end61.cleanup_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body67:                                        ; preds = %if.end61
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_af9005_debug to i32))
  %24 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and68 = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %tobool69.not = icmp eq i32 %and68, 0
  br i1 %tobool69.not, label %do.body67.do.end78_crit_edge, label %do.end73

do.body67.do.end78_crit_edge:                     ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end78

do.end73:                                         ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #8
  %call75 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94) #10
  br label %do.end78

do.end78:                                         ; preds = %do.end73, %do.body67.do.end78_crit_edge
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 4
  %original_rf_top = getelementptr inbounds %struct.af9005_fe_state, ptr %1, i32 0, i32 3
  %27 = ptrtoint ptr %original_rf_top to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %original_rf_top, align 4
  %call80 = tail call fastcc i32 @af9005_write_word_agc(ptr noundef %26, i16 noundef zeroext -24558, i16 noundef zeroext -24559, i8 noundef zeroext 0, i16 noundef zeroext %28)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %if.end83, label %do.end78.cleanup_crit_edge

do.end78.cleanup_crit_edge:                       ; preds = %do.end78
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end83:                                         ; preds = %do.end78
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 4
  %original_if_top = getelementptr inbounds %struct.af9005_fe_state, ptr %1, i32 0, i32 4
  %31 = ptrtoint ptr %original_if_top to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %original_if_top, align 2
  %call85 = tail call fastcc i32 @af9005_write_word_agc(ptr noundef %30, i16 noundef zeroext -24556, i16 noundef zeroext -24557, i8 noundef zeroext 0, i16 noundef zeroext %32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %if.end88, label %if.end83.cleanup_crit_edge

if.end83.cleanup_crit_edge:                       ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end88:                                         ; preds = %if.end83
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %1, align 4
  %original_aci0_if_top = getelementptr inbounds %struct.af9005_fe_state, ptr %1, i32 0, i32 6
  %35 = ptrtoint ptr %original_aci0_if_top to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %original_aci0_if_top, align 2
  %call90 = tail call fastcc i32 @af9005_write_word_agc(ptr noundef %34, i16 noundef zeroext -23026, i16 noundef zeroext -23030, i8 noundef zeroext 4, i16 noundef zeroext %36)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %if.end93, label %if.end88.cleanup_crit_edge

if.end88.cleanup_crit_edge:                       ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end93:                                         ; preds = %if.end88
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %1, align 4
  %original_aci1_if_top = getelementptr inbounds %struct.af9005_fe_state, ptr %1, i32 0, i32 7
  %39 = ptrtoint ptr %original_aci1_if_top to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %original_aci1_if_top, align 4
  %call95 = tail call fastcc i32 @af9005_write_word_agc(ptr noundef %38, i16 noundef zeroext -23026, i16 noundef zeroext -23029, i8 noundef zeroext 6, i16 noundef zeroext %40)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %tobool96.not = icmp eq i32 %call95, 0
  br i1 %tobool96.not, label %do.body99, label %if.end93.cleanup_crit_edge

if.end93.cleanup_crit_edge:                       ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body99:                                        ; preds = %if.end93
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_af9005_debug to i32))
  %41 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and100 = and i32 %41, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and100)
  %tobool101.not = icmp eq i32 %and100, 0
  br i1 %tobool101.not, label %do.body99.do.end110_crit_edge, label %do.end105

do.body99.do.end110_crit_edge:                    ; preds = %do.body99
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end110

do.end105:                                        ; preds = %do.body99
  call void @__sanitizer_cov_trace_pc() #8
  %call107 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.97) #10
  br label %do.end110

do.end110:                                        ; preds = %do.end105, %do.body99.do.end110_crit_edge
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %1, align 4
  %bandwidth_hz112 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 7
  %44 = ptrtoint ptr %bandwidth_hz112 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %bandwidth_hz112, align 4
  %call113 = tail call fastcc i32 @af9005_fe_select_bw(ptr noundef %43, i32 noundef %45)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call113)
  %tobool114.not = icmp eq i32 %call113, 0
  br i1 %tobool114.not, label %if.end116, label %do.end110.cleanup_crit_edge

do.end110.cleanup_crit_edge:                      ; preds = %do.end110
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end116:                                        ; preds = %do.end110
  %46 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %1, align 4
  %48 = ptrtoint ptr %bandwidth_hz112 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %bandwidth_hz112, align 4
  %call119 = tail call fastcc i32 @af9005_fe_program_cfoe(ptr noundef %47, i32 noundef %49)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call119)
  %tobool120.not = icmp eq i32 %call119, 0
  br i1 %tobool120.not, label %do.body123, label %if.end116.cleanup_crit_edge

if.end116.cleanup_crit_edge:                      ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body123:                                       ; preds = %if.end116
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_af9005_debug to i32))
  %50 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and124 = and i32 %50, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and124)
  %tobool125.not = icmp eq i32 %and124, 0
  br i1 %tobool125.not, label %do.body123.do.end134_crit_edge, label %do.end129

do.body123.do.end134_crit_edge:                   ; preds = %do.body123
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end134

do.end129:                                        ; preds = %do.body123
  call void @__sanitizer_cov_trace_pc() #8
  %call131 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100) #10
  br label %do.end134

do.end134:                                        ; preds = %do.end129, %do.body123.do.end134_crit_edge
  %51 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %1, align 4
  %call136 = tail call i32 @af9005_write_ofdm_register(ptr noundef %52, i16 noundef zeroext -20739, i8 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call136)
  %tobool137.not = icmp eq i32 %call136, 0
  br i1 %tobool137.not, label %do.body140, label %do.end134.cleanup_crit_edge

do.end134.cleanup_crit_edge:                      ; preds = %do.end134
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body140:                                       ; preds = %do.end134
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_af9005_debug to i32))
  %53 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and141 = and i32 %53, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and141)
  %tobool142.not = icmp eq i32 %and141, 0
  br i1 %tobool142.not, label %do.body140.do.end151_crit_edge, label %do.end146

do.body140.do.end151_crit_edge:                   ; preds = %do.body140
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end151

do.end146:                                        ; preds = %do.body140
  call void @__sanitizer_cov_trace_pc() #8
  %call148 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.103) #10
  br label %do.end151

do.end151:                                        ; preds = %do.end146, %do.body140.do.end151_crit_edge
  %54 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %1, align 4
  %original_if_unplug_th = getelementptr inbounds %struct.af9005_fe_state, ptr %1, i32 0, i32 9
  %56 = ptrtoint ptr %original_if_unplug_th to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %original_if_unplug_th, align 4
  %call153 = tail call i32 @af9005_write_ofdm_register(ptr noundef %55, i16 noundef zeroext -24543, i8 noundef zeroext %57) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call153)
  %tobool154.not = icmp eq i32 %call153, 0
  br i1 %tobool154.not, label %do.body157, label %do.end151.cleanup_crit_edge

do.end151.cleanup_crit_edge:                      ; preds = %do.end151
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body157:                                       ; preds = %do.end151
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_af9005_debug to i32))
  %58 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and158 = and i32 %58, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and158)
  %tobool159.not = icmp eq i32 %and158, 0
  br i1 %tobool159.not, label %do.body157.do.end168_crit_edge, label %do.end163

do.body157.do.end168_crit_edge:                   ; preds = %do.body157
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end168

do.end163:                                        ; preds = %do.body157
  call void @__sanitizer_cov_trace_pc() #8
  %call165 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.106) #10
  br label %do.end168

do.end168:                                        ; preds = %do.end163, %do.body157.do.end168_crit_edge
  %set_params = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 6
  %59 = ptrtoint ptr %set_params to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %set_params, align 4
  %call171 = tail call i32 %60(ptr noundef %fe) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call171)
  %tobool172.not = icmp eq i32 %call171, 0
  br i1 %tobool172.not, label %do.body175, label %do.end168.cleanup_crit_edge

do.end168.cleanup_crit_edge:                      ; preds = %do.end168
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body175:                                       ; preds = %do.end168
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_af9005_debug to i32))
  %61 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and176 = and i32 %61, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and176)
  %tobool177.not = icmp eq i32 %and176, 0
  br i1 %tobool177.not, label %do.body175.do.end186_crit_edge, label %do.end181

do.body175.do.end186_crit_edge:                   ; preds = %do.body175
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end186

do.end181:                                        ; preds = %do.body175
  call void @__sanitizer_cov_trace_pc() #8
  %call183 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.109) #10
  br label %do.end186

do.end186:                                        ; preds = %do.end181, %do.body175.do.end186_crit_edge
  %62 = ptrtoint ptr %temp to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 0, ptr %temp, align 1
  %63 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %1, align 4
  %call188 = call i32 @af9005_write_tuner_registers(ptr noundef %64, i16 noundef zeroext -1, ptr noundef nonnull %temp, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call188)
  %tobool189.not = icmp eq i32 %call188, 0
  br i1 %tobool189.not, label %do.body192, label %do.end186.cleanup_crit_edge

do.end186.cleanup_crit_edge:                      ; preds = %do.end186
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body192:                                       ; preds = %do.end186
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_af9005_debug to i32))
  %65 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and193 = and i32 %65, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and193)
  %tobool194.not = icmp eq i32 %and193, 0
  br i1 %tobool194.not, label %do.body192.do.end203_crit_edge, label %do.end198

do.body192.do.end203_crit_edge:                   ; preds = %do.body192
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end203

do.end198:                                        ; preds = %do.body192
  call void @__sanitizer_cov_trace_pc() #8
  %call200 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.112) #10
  br label %do.end203

do.end203:                                        ; preds = %do.end198, %do.body192.do.end203_crit_edge
  %66 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %1, align 4
  %call205 = call i32 @af9005_write_register_bits(ptr noundef %67, i16 noundef zeroext -23019, i8 noundef zeroext 3, i8 noundef zeroext 2, i8 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call205)
  %tobool206.not = icmp eq i32 %call205, 0
  br i1 %tobool206.not, label %if.end208, label %do.end203.cleanup_crit_edge

do.end203.cleanup_crit_edge:                      ; preds = %do.end203
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end208:                                        ; preds = %do.end203
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @af9005_reset_pre_viterbi(ptr noundef %fe)
  %call210 = call fastcc i32 @af9005_reset_post_viterbi(ptr noundef %fe)
  %pre_vit_error_count = getelementptr inbounds %struct.af9005_fe_state, ptr %1, i32 0, i32 13
  %abort_count = getelementptr inbounds %struct.af9005_fe_state, ptr %1, i32 0, i32 19
  %68 = ptrtoint ptr %abort_count to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 0, ptr %abort_count, align 4
  %69 = call ptr @memset(ptr %pre_vit_error_count, i32 0, i32 16)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %70 = load volatile i32, ptr @jiffies, align 128
  %next_status_check = getelementptr inbounds %struct.af9005_fe_state, ptr %1, i32 0, i32 22
  %71 = ptrtoint ptr %next_status_check to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %next_status_check, align 4
  %strong = getelementptr inbounds %struct.af9005_fe_state, ptr %1, i32 0, i32 21
  %72 = ptrtoint ptr %strong to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 -1, ptr %strong, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end208, %do.end203.cleanup_crit_edge, %do.end186.cleanup_crit_edge, %do.end168.cleanup_crit_edge, %do.end151.cleanup_crit_edge, %do.end134.cleanup_crit_edge, %if.end116.cleanup_crit_edge, %do.end110.cleanup_crit_edge, %if.end93.cleanup_crit_edge, %if.end88.cleanup_crit_edge, %if.end83.cleanup_crit_edge, %do.end78.cleanup_crit_edge, %if.end61.cleanup_crit_edge, %if.end56.cleanup_crit_edge, %do.end43.cleanup_crit_edge, %if.end26.cleanup_crit_edge, %do.end22.cleanup_crit_edge, %do.end7
  %retval.0 = phi i32 [ -19, %do.end7 ], [ 0, %if.end208 ], [ %call23, %do.end22.cleanup_crit_edge ], [ %call28, %if.end26.cleanup_crit_edge ], [ %call53, %do.end43.cleanup_crit_edge ], [ %call58, %if.end56.cleanup_crit_edge ], [ %call63, %if.end61.cleanup_crit_edge ], [ %call80, %do.end78.cleanup_crit_edge ], [ %call85, %if.end83.cleanup_crit_edge ], [ %call90, %if.end88.cleanup_crit_edge ], [ %call95, %if.end93.cleanup_crit_edge ], [ %call113, %do.end110.cleanup_crit_edge ], [ %call119, %if.end116.cleanup_crit_edge ], [ %call136, %do.end134.cleanup_crit_edge ], [ %call153, %do.end151.cleanup_crit_edge ], [ %call171, %do.end168.cleanup_crit_edge ], [ %call188, %do.end186.cleanup_crit_edge ], [ %call205, %do.end203.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %temp) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @af9005_fe_get_frontend(ptr nocapture noundef readonly %fe, ptr noundef writeonly %fep) #0 align 64 {
entry:
  %temp = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %temp) #6
  %2 = ptrtoint ptr %temp to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %temp, align 1, !annotation !380
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %call = call i32 @af9005_read_register_bits(ptr noundef %4, i16 noundef zeroext -23615, i8 noundef zeroext 6, i8 noundef zeroext 2, ptr noundef nonnull %temp) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_af9005_debug to i32))
  %5 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %do.body.do.body8_crit_edge, label %do.end

do.body.do.body8_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body8

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.115) #10
  br label %do.body8

do.body8:                                         ; preds = %do.end, %do.body.do.body8_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_af9005_debug to i32))
  %6 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and9 = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %do.body8.do.end19_crit_edge, label %do.end14

do.body8.do.end19_crit_edge:                      ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end19

do.end14:                                         ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #8
  %call16 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.118) #10
  br label %do.end19

do.end19:                                         ; preds = %do.end14, %do.body8.do.end19_crit_edge
  %7 = ptrtoint ptr %temp to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %temp, align 1
  %9 = zext i8 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.251)
  switch i8 %8, label %do.end19.sw.epilog_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %sw.bb32
    i8 2, label %sw.bb46
  ]

do.end19.sw.epilog_crit_edge:                     ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end19
  %modulation = getelementptr inbounds %struct.dtv_frontend_properties, ptr %fep, i32 0, i32 1
  %10 = ptrtoint ptr %modulation to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %modulation, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_af9005_debug to i32))
  %11 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and21 = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %sw.bb.sw.epilog_crit_edge, label %sw.bb.sw.epilog.sink.split_crit_edge

sw.bb.sw.epilog.sink.split_crit_edge:             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb32:                                          ; preds = %do.end19
  %modulation33 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %fep, i32 0, i32 1
  %12 = ptrtoint ptr %modulation33 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %modulation33, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_af9005_debug to i32))
  %13 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and35 = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %sw.bb32.sw.epilog_crit_edge, label %sw.bb32.sw.epilog.sink.split_crit_edge

sw.bb32.sw.epilog.sink.split_crit_edge:           ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split

sw.bb32.sw.epilog_crit_edge:                      ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb46:                                          ; preds = %do.end19
  %modulation47 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %fep, i32 0, i32 1
  %14 = ptrtoint ptr %modulation47 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 3, ptr %modulation47, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_af9005_debug to i32))
  %15 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and49 = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %sw.bb46.sw.epilog_crit_edge, label %sw.bb46.sw.epilog.sink.split_crit_edge

sw.bb46.sw.epilog.sink.split_crit_edge:           ; preds = %sw.bb46
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split

sw.bb46.sw.epilog_crit_edge:                      ; preds = %sw.bb46
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.epilog.sink.split:                             ; preds = %sw.bb46.sw.epilog.sink.split_crit_edge, %sw.bb32.sw.epilog.sink.split_crit_edge, %sw.bb.sw.epilog.sink.split_crit_edge
  %.str.127.sink = phi ptr [ @.str.121, %sw.bb.sw.epilog.sink.split_crit_edge ], [ @.str.124, %sw.bb32.sw.epilog.sink.split_crit_edge ], [ @.str.127, %sw.bb46.sw.epilog.sink.split_crit_edge ]
  %call56 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.127.sink) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %sw.bb46.sw.epilog_crit_edge, %sw.bb32.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %do.end19.sw.epilog_crit_edge
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %call61 = call i32 @af9005_read_register_bits(ptr noundef %17, i16 noundef zeroext -23616, i8 noundef zeroext 4, i8 noundef zeroext 3, ptr noundef nonnull %temp) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %do.body65, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body65:                                        ; preds = %sw.epilog
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_af9005_debug to i32))
  %18 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and66 = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %tobool67.not = icmp eq i32 %and66, 0
  br i1 %tobool67.not, label %do.body65.do.end76_crit_edge, label %do.end71

do.body65.do.end76_crit_edge:                     ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end76

do.end71:                                         ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #8
  %call73 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.130) #10
  br label %do.end76

do.end76:                                         ; preds = %do.end71, %do.body65.do.end76_crit_edge
  %19 = ptrtoint ptr %temp to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %temp, align 1
  %21 = zext i8 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.252)
  switch i8 %20, label %do.end76.sw.epilog133_crit_edge [
    i8 0, label %sw.bb78
    i8 1, label %sw.bb91
    i8 2, label %sw.bb105
    i8 3, label %sw.bb119
  ]

do.end76.sw.epilog133_crit_edge:                  ; preds = %do.end76
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog133

sw.bb78:                                          ; preds = %do.end76
  %hierarchy = getelementptr inbounds %struct.dtv_frontend_properties, ptr %fep, i32 0, i32 9
  %22 = ptrtoint ptr %hierarchy to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %hierarchy, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_af9005_debug to i32))
  %23 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and80 = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80)
  %tobool81.not = icmp eq i32 %and80, 0
  br i1 %tobool81.not, label %sw.bb78.sw.epilog133_crit_edge, label %sw.bb78.sw.epilog133.sink.split_crit_edge

sw.bb78.sw.epilog133.sink.split_crit_edge:        ; preds = %sw.bb78
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog133.sink.split

sw.bb78.sw.epilog133_crit_edge:                   ; preds = %sw.bb78
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog133

sw.bb91:                                          ; preds = %do.end76
  %hierarchy92 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %fep, i32 0, i32 9
  %24 = ptrtoint ptr %hierarchy92 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %hierarchy92, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_af9005_debug to i32))
  %25 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and94 = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and94)
  %tobool95.not = icmp eq i32 %and94, 0
  br i1 %tobool95.not, label %sw.bb91.sw.epilog133_crit_edge, label %sw.bb91.sw.epilog133.sink.split_crit_edge

sw.bb91.sw.epilog133.sink.split_crit_edge:        ; preds = %sw.bb91
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog133.sink.split

sw.bb91.sw.epilog133_crit_edge:                   ; preds = %sw.bb91
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog133

sw.bb105:                                         ; preds = %do.end76
  %hierarchy106 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %fep, i32 0, i32 9
  %26 = ptrtoint ptr %hierarchy106 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 2, ptr %hierarchy106, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_af9005_debug to i32))
  %27 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and108 = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and108)
  %tobool109.not = icmp eq i32 %and108, 0
  br i1 %tobool109.not, label %sw.bb105.sw.epilog133_crit_edge, label %sw.bb105.sw.epilog133.sink.split_crit_edge

sw.bb105.sw.epilog133.sink.split_crit_edge:       ; preds = %sw.bb105
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog133.sink.split

sw.bb105.sw.epilog133_crit_edge:                  ; preds = %sw.bb105
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog133

sw.bb119:                                         ; preds = %do.end76
  %hierarchy120 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %fep, i32 0, i32 9
  %28 = ptrtoint ptr %hierarchy120 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 3, ptr %hierarchy120, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_af9005_debug to i32))
  %29 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and122 = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and122)
  %tobool123.not = icmp eq i32 %and122, 0
  br i1 %tobool123.not, label %sw.bb119.sw.epilog133_crit_edge, label %sw.bb119.sw.epilog133.sink.split_crit_edge

sw.bb119.sw.epilog133.sink.split_crit_edge:       ; preds = %sw.bb119
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog133.sink.split

sw.bb119.sw.epilog133_crit_edge:                  ; preds = %sw.bb119
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog133

sw.epilog133.sink.split:                          ; preds = %sw.bb119.sw.epilog133.sink.split_crit_edge, %sw.bb105.sw.epilog133.sink.split_crit_edge, %sw.bb91.sw.epilog133.sink.split_crit_edge, %sw.bb78.sw.epilog133.sink.split_crit_edge
  %.str.142.sink = phi ptr [ @.str.133, %sw.bb78.sw.epilog133.sink.split_crit_edge ], [ @.str.136, %sw.bb91.sw.epilog133.sink.split_crit_edge ], [ @.str.139, %sw.bb105.sw.epilog133.sink.split_crit_edge ], [ @.str.142, %sw.bb119.sw.epilog133.sink.split_crit_edge ]
  %call129 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.142.sink) #10
  br label %sw.epilog133

sw.epilog133:                                     ; preds = %sw.epilog133.sink.split, %sw.bb119.sw.epilog133_crit_edge, %sw.bb105.sw.epilog133_crit_edge, %sw.bb91.sw.epilog133_crit_edge, %sw.bb78.sw.epilog133_crit_edge, %do.end76.sw.epilog133_crit_edge
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 4
  %call135 = call i32 @af9005_read_register_bits(ptr noundef %31, i16 noundef zeroext -23615, i8 noundef zeroext 4, i8 noundef zeroext 1, ptr noundef nonnull %temp) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call135)
  %tobool136.not = icmp eq i32 %call135, 0
  br i1 %tobool136.not, label %do.body139, label %sw.epilog133.cleanup_crit_edge

sw.epilog133.cleanup_crit_edge:                   ; preds = %sw.epilog133
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body139:                                       ; preds = %sw.epilog133
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_af9005_debug to i32))
  %32 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and140 = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and140)
  %tobool141.not = icmp eq i32 %and140, 0
  br i1 %tobool141.not, label %do.body139.do.end152_crit_edge, label %do.end145

do.body139.do.end152_crit_edge:                   ; preds = %do.body139
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end152

do.end145:                                        ; preds = %do.body139
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %temp to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %temp, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool148.not = icmp eq i8 %34, 0
  %cond = select i1 %tobool148.not, ptr @.str.148, ptr @.str.147
  %call149 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.145, ptr noundef nonnull %cond) #10
  br label %do.end152

do.end152:                                        ; preds = %do.end145, %do.body139.do.end152_crit_edge
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %1, align 4
  %call154 = call i32 @af9005_read_register_bits(ptr noundef %36, i16 noundef zeroext -23614, i8 noundef zeroext 0, i8 noundef zeroext 3, ptr noundef nonnull %temp) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call154)
  %tobool155.not = icmp eq i32 %call154, 0
  br i1 %tobool155.not, label %do.body158, label %do.end152.cleanup_crit_edge

do.end152.cleanup_crit_edge:                      ; preds = %do.end152
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body158:                                       ; preds = %do.end152
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_af9005_debug to i32))
  %37 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and159 = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and159)
  %tobool160.not = icmp eq i32 %and159, 0
  br i1 %tobool160.not, label %do.body158.do.end169_crit_edge, label %do.end164

do.body158.do.end169_crit_edge:                   ; preds = %do.body158
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end169

do.end164:                                        ; preds = %do.body158
  call void @__sanitizer_cov_trace_pc() #8
  %call166 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.150) #10
  br label %do.end169

do.end169:                                        ; preds = %do.end164, %do.body158.do.end169_crit_edge
  %38 = ptrtoint ptr %temp to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %temp, align 1
  %40 = zext i8 %39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.253)
  switch i8 %39, label %do.end169.sw.epilog240_crit_edge [
    i8 0, label %sw.bb171
    i8 1, label %sw.bb184
    i8 2, label %sw.bb198
    i8 3, label %sw.bb212
    i8 4, label %sw.bb226
  ]

do.end169.sw.epilog240_crit_edge:                 ; preds = %do.end169
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog240

sw.bb171:                                         ; preds = %do.end169
  %code_rate_HP = getelementptr inbounds %struct.dtv_frontend_properties, ptr %fep, i32 0, i32 11
  %41 = ptrtoint ptr %code_rate_HP to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1, ptr %code_rate_HP, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_af9005_debug to i32))
  %42 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and173 = and i32 %42, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and173)
  %tobool174.not = icmp eq i32 %and173, 0
  br i1 %tobool174.not, label %sw.bb171.sw.epilog240_crit_edge, label %sw.bb171.sw.epilog240.sink.split_crit_edge

sw.bb171.sw.epilog240.sink.split_crit_edge:       ; preds = %sw.bb171
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog240.sink.split

sw.bb171.sw.epilog240_crit_edge:                  ; preds = %sw.bb171
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog240

sw.bb184:                                         ; preds = %do.end169
  %code_rate_HP185 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %fep, i32 0, i32 11
  %43 = ptrtoint ptr %code_rate_HP185 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 2, ptr %code_rate_HP185, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_af9005_debug to i32))
  %44 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and187 = and i32 %44, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and187)
  %tobool188.not = icmp eq i32 %and187, 0
  br i1 %tobool188.not, label %sw.bb184.sw.epilog240_crit_edge, label %sw.bb184.sw.epilog240.sink.split_crit_edge

sw.bb184.sw.epilog240.sink.split_crit_edge:       ; preds = %sw.bb184
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog240.sink.split

sw.bb184.sw.epilog240_crit_edge:                  ; preds = %sw.bb184
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog240

sw.bb198:                                         ; preds = %do.end169
  %code_rate_HP199 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %fep, i32 0, i32 11
  %45 = ptrtoint ptr %code_rate_HP199 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 3, ptr %code_rate_HP199, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_af9005_debug to i32))
  %46 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and201 = and i32 %46, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and201)
  %tobool202.not = icmp eq i32 %and201, 0
  br i1 %tobool202.not, label %sw.bb198.sw.epilog240_crit_edge, label %sw.bb198.sw.epilog240.sink.split_crit_edge

sw.bb198.sw.epilog240.sink.split_crit_edge:       ; preds = %sw.bb198
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog240.sink.split

sw.bb198.sw.epilog240_crit_edge:                  ; preds = %sw.bb198
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog240

sw.bb212:                                         ; preds = %do.end169
  %code_rate_HP213 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %fep, i32 0, i32 11
  %47 = ptrtoint ptr %code_rate_HP213 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 5, ptr %code_rate_HP213, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_af9005_debug to i32))
  %48 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and215 = and i32 %48, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and215)
  %tobool216.not = icmp eq i32 %and215, 0
  br i1 %tobool216.not, label %sw.bb212.sw.epilog240_crit_edge, label %sw.bb212.sw.epilog240.sink.split_crit_edge

sw.bb212.sw.epilog240.sink.split_crit_edge:       ; preds = %sw.bb212
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog240.sink.split

sw.bb212.sw.epilog240_crit_edge:                  ; preds = %sw.bb212
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog240

sw.bb226:                                         ; preds = %do.end169
  %code_rate_HP227 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %fep, i32 0, i32 11
  %49 = ptrtoint ptr %code_rate_HP227 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 7, ptr %code_rate_HP227, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_af9005_debug to i32))
  %50 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and229 = and i32 %50, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and229)
  %tobool230.not = icmp eq i32 %and229, 0
  br i1 %tobool230.not, label %sw.bb226.sw.epilog240_crit_edge, label %sw.bb226.sw.epilog240.sink.split_crit_edge

sw.bb226.sw.epilog240.sink.split_crit_edge:       ; preds = %sw.bb226
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog240.sink.split

sw.bb226.sw.epilog240_crit_edge:                  ; preds = %sw.bb226
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog240

sw.epilog240.sink.split:                          ; preds = %sw.bb226.sw.epilog240.sink.split_crit_edge, %sw.bb212.sw.epilog240.sink.split_crit_edge, %sw.bb198.sw.epilog240.sink.split_crit_edge, %sw.bb184.sw.epilog240.sink.split_crit_edge, %sw.bb171.sw.epilog240.sink.split_crit_edge
  %.str.165.sink = phi ptr [ @.str.153, %sw.bb171.sw.epilog240.sink.split_crit_edge ], [ @.str.156, %sw.bb184.sw.epilog240.sink.split_crit_edge ], [ @.str.159, %sw.bb198.sw.epilog240.sink.split_crit_edge ], [ @.str.162, %sw.bb212.sw.epilog240.sink.split_crit_edge ], [ @.str.165, %sw.bb226.sw.epilog240.sink.split_crit_edge ]
  %call236 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.165.sink) #10
  br label %sw.epilog240

sw.epilog240:                                     ; preds = %sw.epilog240.sink.split, %sw.bb226.sw.epilog240_crit_edge, %sw.bb212.sw.epilog240_crit_edge, %sw.bb198.sw.epilog240_crit_edge, %sw.bb184.sw.epilog240_crit_edge, %sw.bb171.sw.epilog240_crit_edge, %do.end169.sw.epilog240_crit_edge
  %51 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %1, align 4
  %call242 = call i32 @af9005_read_register_bits(ptr noundef %52, i16 noundef zeroext -23614, i8 noundef zeroext 3, i8 noundef zeroext 3, ptr noundef nonnull %temp) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call242)
  %tobool243.not = icmp eq i32 %call242, 0
  br i1 %tobool243.not, label %do.body246, label %sw.epilog240.cleanup_crit_edge

sw.epilog240.cleanup_crit_edge:                   ; preds = %sw.epilog240
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body246:                                       ; preds = %sw.epilog240
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_af9005_debug to i32))
  %53 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and247 = and i32 %53, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and247)
  %tobool248.not = icmp eq i32 %and247, 0
  br i1 %tobool248.not, label %do.body246.do.end257_crit_edge, label %do.end252

do.body246.do.end257_crit_edge:                   ; preds = %do.body246
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end257

do.end252:                                        ; preds = %do.body246
  call void @__sanitizer_cov_trace_pc() #8
  %call254 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.168) #10
  br label %do.end257

do.end257:                                        ; preds = %do.end252, %do.body246.do.end257_crit_edge
  %54 = ptrtoint ptr %temp to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %temp, align 1
  %56 = zext i8 %55 to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values.254)
  switch i8 %55, label %do.end257.sw.epilog328_crit_edge [
    i8 0, label %sw.bb259
    i8 1, label %sw.bb272
    i8 2, label %sw.bb286
    i8 3, label %sw.bb300
    i8 4, label %sw.bb314
  ]

do.end257.sw.epilog328_crit_edge:                 ; preds = %do.end257
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog328

sw.bb259:                                         ; preds = %do.end257
  %code_rate_LP = getelementptr inbounds %struct.dtv_frontend_properties, ptr %fep, i32 0, i32 12
  %57 = ptrtoint ptr %code_rate_LP to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 1, ptr %code_rate_LP, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_af9005_debug to i32))
  %58 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and261 = and i32 %58, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and261)
  %tobool262.not = icmp eq i32 %and261, 0
  br i1 %tobool262.not, label %sw.bb259.sw.epilog328_crit_edge, label %sw.bb259.sw.epilog328.sink.split_crit_edge

sw.bb259.sw.epilog328.sink.split_crit_edge:       ; preds = %sw.bb259
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog328.sink.split

sw.bb259.sw.epilog328_crit_edge:                  ; preds = %sw.bb259
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog328

sw.bb272:                                         ; preds = %do.end257
  %code_rate_LP273 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %fep, i32 0, i32 12
  %59 = ptrtoint ptr %code_rate_LP273 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 2, ptr %code_rate_LP273, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_af9005_debug to i32))
  %60 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and275 = and i32 %60, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and275)
  %tobool276.not = icmp eq i32 %and275, 0
  br i1 %tobool276.not, label %sw.bb272.sw.epilog328_crit_edge, label %sw.bb272.sw.epilog328.sink.split_crit_edge

sw.bb272.sw.epilog328.sink.split_crit_edge:       ; preds = %sw.bb272
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog328.sink.split

sw.bb272.sw.epilog328_crit_edge:                  ; preds = %sw.bb272
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog328

sw.bb286:                                         ; preds = %do.end257
  %code_rate_LP287 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %fep, i32 0, i32 12
  %61 = ptrtoint ptr %code_rate_LP287 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 3, ptr %code_rate_LP287, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_af9005_debug to i32))
  %62 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and289 = and i32 %62, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and289)
  %tobool290.not = icmp eq i32 %and289, 0
  br i1 %tobool290.not, label %sw.bb286.sw.epilog328_crit_edge, label %sw.bb286.sw.epilog328.sink.split_crit_edge

sw.bb286.sw.epilog328.sink.split_crit_edge:       ; preds = %sw.bb286
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog328.sink.split

sw.bb286.sw.epilog328_crit_edge:                  ; preds = %sw.bb286
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog328

sw.bb300:                                         ; preds = %do.end257
  %code_rate_LP301 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %fep, i32 0, i32 12
  %63 = ptrtoint ptr %code_rate_LP301 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 5, ptr %code_rate_LP301, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_af9005_debug to i32))
  %64 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and303 = and i32 %64, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and303)
  %tobool304.not = icmp eq i32 %and303, 0
  br i1 %tobool304.not, label %sw.bb300.sw.epilog328_crit_edge, label %sw.bb300.sw.epilog328.sink.split_crit_edge

sw.bb300.sw.epilog328.sink.split_crit_edge:       ; preds = %sw.bb300
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog328.sink.split

sw.bb300.sw.epilog328_crit_edge:                  ; preds = %sw.bb300
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog328

sw.bb314:                                         ; preds = %do.end257
  %code_rate_LP315 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %fep, i32 0, i32 12
  %65 = ptrtoint ptr %code_rate_LP315 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 7, ptr %code_rate_LP315, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_af9005_debug to i32))
  %66 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and317 = and i32 %66, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and317)
  %tobool318.not = icmp eq i32 %and317, 0
  br i1 %tobool318.not, label %sw.bb314.sw.epilog328_crit_edge, label %sw.bb314.sw.epilog328.sink.split_crit_edge

sw.bb314.sw.epilog328.sink.split_crit_edge:       ; preds = %sw.bb314
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog328.sink.split

sw.bb314.sw.epilog328_crit_edge:                  ; preds = %sw.bb314
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog328

sw.epilog328.sink.split:                          ; preds = %sw.bb314.sw.epilog328.sink.split_crit_edge, %sw.bb300.sw.epilog328.sink.split_crit_edge, %sw.bb286.sw.epilog328.sink.split_crit_edge, %sw.bb272.sw.epilog328.sink.split_crit_edge, %sw.bb259.sw.epilog328.sink.split_crit_edge
  %.str.165.sink553 = phi ptr [ @.str.153, %sw.bb259.sw.epilog328.sink.split_crit_edge ], [ @.str.156, %sw.bb272.sw.epilog328.sink.split_crit_edge ], [ @.str.159, %sw.bb286.sw.epilog328.sink.split_crit_edge ], [ @.str.162, %sw.bb300.sw.epilog328.sink.split_crit_edge ], [ @.str.165, %sw.bb314.sw.epilog328.sink.split_crit_edge ]
  %call324 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.165.sink553) #10
  br label %sw.epilog328

sw.epilog328:                                     ; preds = %sw.epilog328.sink.split, %sw.bb314.sw.epilog328_crit_edge, %sw.bb300.sw.epilog328_crit_edge, %sw.bb286.sw.epilog328_crit_edge, %sw.bb272.sw.epilog328_crit_edge, %sw.bb259.sw.epilog328_crit_edge, %do.end257.sw.epilog328_crit_edge
  %67 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %1, align 4
  %call330 = call i32 @af9005_read_register_bits(ptr noundef %68, i16 noundef zeroext -23616, i8 noundef zeroext 2, i8 noundef zeroext 2, ptr noundef nonnull %temp) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call330)
  %tobool331.not = icmp eq i32 %call330, 0
  br i1 %tobool331.not, label %do.body334, label %sw.epilog328.cleanup_crit_edge

sw.epilog328.cleanup_crit_edge:                   ; preds = %sw.epilog328
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body334:                                       ; preds = %sw.epilog328
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_af9005_debug to i32))
  %69 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and335 = and i32 %69, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and335)
  %tobool336.not = icmp eq i32 %and335, 0
  br i1 %tobool336.not, label %do.body334.do.end345_crit_edge, label %do.end340

do.body334.do.end345_crit_edge:                   ; preds = %do.body334
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end345

do.end340:                                        ; preds = %do.body334
  call void @__sanitizer_cov_trace_pc() #8
  %call342 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.181) #10
  br label %do.end345

do.end345:                                        ; preds = %do.end340, %do.body334.do.end345_crit_edge
  %70 = ptrtoint ptr %temp to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %temp, align 1
  %72 = zext i8 %71 to i64
  call void @__sanitizer_cov_trace_switch(i64 %72, ptr @__sancov_gen_cov_switch_values.255)
  switch i8 %71, label %do.end345.sw.epilog402_crit_edge [
    i8 0, label %sw.bb347
    i8 1, label %sw.bb360
    i8 2, label %sw.bb374
    i8 3, label %sw.bb388
  ]

do.end345.sw.epilog402_crit_edge:                 ; preds = %do.end345
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog402

sw.bb347:                                         ; preds = %do.end345
  %guard_interval = getelementptr inbounds %struct.dtv_frontend_properties, ptr %fep, i32 0, i32 8
  %73 = ptrtoint ptr %guard_interval to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 0, ptr %guard_interval, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_af9005_debug to i32))
  %74 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and349 = and i32 %74, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and349)
  %tobool350.not = icmp eq i32 %and349, 0
  br i1 %tobool350.not, label %sw.bb347.sw.epilog402_crit_edge, label %sw.bb347.sw.epilog402.sink.split_crit_edge

sw.bb347.sw.epilog402.sink.split_crit_edge:       ; preds = %sw.bb347
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog402.sink.split

sw.bb347.sw.epilog402_crit_edge:                  ; preds = %sw.bb347
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog402

sw.bb360:                                         ; preds = %do.end345
  %guard_interval361 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %fep, i32 0, i32 8
  %75 = ptrtoint ptr %guard_interval361 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 1, ptr %guard_interval361, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_af9005_debug to i32))
  %76 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and363 = and i32 %76, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and363)
  %tobool364.not = icmp eq i32 %and363, 0
  br i1 %tobool364.not, label %sw.bb360.sw.epilog402_crit_edge, label %sw.bb360.sw.epilog402.sink.split_crit_edge

sw.bb360.sw.epilog402.sink.split_crit_edge:       ; preds = %sw.bb360
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog402.sink.split

sw.bb360.sw.epilog402_crit_edge:                  ; preds = %sw.bb360
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog402

sw.bb374:                                         ; preds = %do.end345
  %guard_interval375 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %fep, i32 0, i32 8
  %77 = ptrtoint ptr %guard_interval375 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 2, ptr %guard_interval375, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_af9005_debug to i32))
  %78 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and377 = and i32 %78, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and377)
  %tobool378.not = icmp eq i32 %and377, 0
  br i1 %tobool378.not, label %sw.bb374.sw.epilog402_crit_edge, label %sw.bb374.sw.epilog402.sink.split_crit_edge

sw.bb374.sw.epilog402.sink.split_crit_edge:       ; preds = %sw.bb374
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog402.sink.split

sw.bb374.sw.epilog402_crit_edge:                  ; preds = %sw.bb374
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog402

sw.bb388:                                         ; preds = %do.end345
  %guard_interval389 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %fep, i32 0, i32 8
  %79 = ptrtoint ptr %guard_interval389 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 3, ptr %guard_interval389, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_af9005_debug to i32))
  %80 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and391 = and i32 %80, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and391)
  %tobool392.not = icmp eq i32 %and391, 0
  br i1 %tobool392.not, label %sw.bb388.sw.epilog402_crit_edge, label %sw.bb388.sw.epilog402.sink.split_crit_edge

sw.bb388.sw.epilog402.sink.split_crit_edge:       ; preds = %sw.bb388
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog402.sink.split

sw.bb388.sw.epilog402_crit_edge:                  ; preds = %sw.bb388
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog402

sw.epilog402.sink.split:                          ; preds = %sw.bb388.sw.epilog402.sink.split_crit_edge, %sw.bb374.sw.epilog402.sink.split_crit_edge, %sw.bb360.sw.epilog402.sink.split_crit_edge, %sw.bb347.sw.epilog402.sink.split_crit_edge
  %.str.193.sink = phi ptr [ @.str.184, %sw.bb347.sw.epilog402.sink.split_crit_edge ], [ @.str.187, %sw.bb360.sw.epilog402.sink.split_crit_edge ], [ @.str.190, %sw.bb374.sw.epilog402.sink.split_crit_edge ], [ @.str.193, %sw.bb388.sw.epilog402.sink.split_crit_edge ]
  %call398 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.193.sink) #10
  br label %sw.epilog402

sw.epilog402:                                     ; preds = %sw.epilog402.sink.split, %sw.bb388.sw.epilog402_crit_edge, %sw.bb374.sw.epilog402_crit_edge, %sw.bb360.sw.epilog402_crit_edge, %sw.bb347.sw.epilog402_crit_edge, %do.end345.sw.epilog402_crit_edge
  %81 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %1, align 4
  %call404 = call i32 @af9005_read_register_bits(ptr noundef %82, i16 noundef zeroext -23616, i8 noundef zeroext 0, i8 noundef zeroext 2, ptr noundef nonnull %temp) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call404)
  %tobool405.not = icmp eq i32 %call404, 0
  br i1 %tobool405.not, label %do.body408, label %sw.epilog402.cleanup_crit_edge

sw.epilog402.cleanup_crit_edge:                   ; preds = %sw.epilog402
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body408:                                       ; preds = %sw.epilog402
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_af9005_debug to i32))
  %83 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and409 = and i32 %83, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and409)
  %tobool410.not = icmp eq i32 %and409, 0
  br i1 %tobool410.not, label %do.body408.do.end419_crit_edge, label %do.end414

do.body408.do.end419_crit_edge:                   ; preds = %do.body408
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end419

do.end414:                                        ; preds = %do.body408
  call void @__sanitizer_cov_trace_pc() #8
  %call416 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.196) #10
  br label %do.end419

do.end419:                                        ; preds = %do.end414, %do.body408.do.end419_crit_edge
  %84 = ptrtoint ptr %temp to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %temp, align 1
  %86 = zext i8 %85 to i64
  call void @__sanitizer_cov_trace_switch(i64 %86, ptr @__sancov_gen_cov_switch_values.256)
  switch i8 %85, label %do.end419.sw.epilog448_crit_edge [
    i8 0, label %sw.bb421
    i8 1, label %sw.bb434
  ]

do.end419.sw.epilog448_crit_edge:                 ; preds = %do.end419
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog448

sw.bb421:                                         ; preds = %do.end419
  %transmission_mode = getelementptr inbounds %struct.dtv_frontend_properties, ptr %fep, i32 0, i32 6
  %87 = ptrtoint ptr %transmission_mode to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 0, ptr %transmission_mode, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_af9005_debug to i32))
  %88 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and423 = and i32 %88, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and423)
  %tobool424.not = icmp eq i32 %and423, 0
  br i1 %tobool424.not, label %sw.bb421.sw.epilog448_crit_edge, label %sw.bb421.sw.epilog448.sink.split_crit_edge

sw.bb421.sw.epilog448.sink.split_crit_edge:       ; preds = %sw.bb421
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog448.sink.split

sw.bb421.sw.epilog448_crit_edge:                  ; preds = %sw.bb421
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog448

sw.bb434:                                         ; preds = %do.end419
  %transmission_mode435 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %fep, i32 0, i32 6
  %89 = ptrtoint ptr %transmission_mode435 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 1, ptr %transmission_mode435, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_af9005_debug to i32))
  %90 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and437 = and i32 %90, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and437)
  %tobool438.not = icmp eq i32 %and437, 0
  br i1 %tobool438.not, label %sw.bb434.sw.epilog448_crit_edge, label %sw.bb434.sw.epilog448.sink.split_crit_edge

sw.bb434.sw.epilog448.sink.split_crit_edge:       ; preds = %sw.bb434
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog448.sink.split

sw.bb434.sw.epilog448_crit_edge:                  ; preds = %sw.bb434
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog448

sw.epilog448.sink.split:                          ; preds = %sw.bb434.sw.epilog448.sink.split_crit_edge, %sw.bb421.sw.epilog448.sink.split_crit_edge
  %.str.202.sink = phi ptr [ @.str.199, %sw.bb421.sw.epilog448.sink.split_crit_edge ], [ @.str.202, %sw.bb434.sw.epilog448.sink.split_crit_edge ]
  %call444 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.202.sink) #10
  br label %sw.epilog448

sw.epilog448:                                     ; preds = %sw.epilog448.sink.split, %sw.bb434.sw.epilog448_crit_edge, %sw.bb421.sw.epilog448_crit_edge, %do.end419.sw.epilog448_crit_edge
  %91 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %1, align 4
  %call450 = call i32 @af9005_read_register_bits(ptr noundef %92, i16 noundef zeroext -23615, i8 noundef zeroext 2, i8 noundef zeroext 2, ptr noundef nonnull %temp) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_af9005_debug to i32))
  %93 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and452 = and i32 %93, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and452)
  %tobool453.not = icmp eq i32 %and452, 0
  br i1 %tobool453.not, label %sw.epilog448.do.end462_crit_edge, label %do.end457

sw.epilog448.do.end462_crit_edge:                 ; preds = %sw.epilog448
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end462

do.end457:                                        ; preds = %sw.epilog448
  call void @__sanitizer_cov_trace_pc() #8
  %call459 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.205) #10
  br label %do.end462

do.end462:                                        ; preds = %do.end457, %sw.epilog448.do.end462_crit_edge
  %94 = ptrtoint ptr %temp to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %temp, align 1
  %96 = zext i8 %95 to i64
  call void @__sanitizer_cov_trace_switch(i64 %96, ptr @__sancov_gen_cov_switch_values.257)
  switch i8 %95, label %do.end462.cleanup_crit_edge [
    i8 0, label %sw.bb464
    i8 1, label %sw.bb477
    i8 2, label %sw.bb491
  ]

do.end462.cleanup_crit_edge:                      ; preds = %do.end462
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb464:                                         ; preds = %do.end462
  %bandwidth_hz = getelementptr inbounds %struct.dtv_frontend_properties, ptr %fep, i32 0, i32 7
  %97 = ptrtoint ptr %bandwidth_hz to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 6000000, ptr %bandwidth_hz, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_af9005_debug to i32))
  %98 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and466 = and i32 %98, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and466)
  %tobool467.not = icmp eq i32 %and466, 0
  br i1 %tobool467.not, label %sw.bb464.cleanup_crit_edge, label %sw.bb464.cleanup.sink.split_crit_edge

sw.bb464.cleanup.sink.split_crit_edge:            ; preds = %sw.bb464
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

sw.bb464.cleanup_crit_edge:                       ; preds = %sw.bb464
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb477:                                         ; preds = %do.end462
  %bandwidth_hz478 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %fep, i32 0, i32 7
  %99 = ptrtoint ptr %bandwidth_hz478 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 7000000, ptr %bandwidth_hz478, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_af9005_debug to i32))
  %100 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and480 = and i32 %100, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and480)
  %tobool481.not = icmp eq i32 %and480, 0
  br i1 %tobool481.not, label %sw.bb477.cleanup_crit_edge, label %sw.bb477.cleanup.sink.split_crit_edge

sw.bb477.cleanup.sink.split_crit_edge:            ; preds = %sw.bb477
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

sw.bb477.cleanup_crit_edge:                       ; preds = %sw.bb477
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb491:                                         ; preds = %do.end462
  %bandwidth_hz492 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %fep, i32 0, i32 7
  %101 = ptrtoint ptr %bandwidth_hz492 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 8000000, ptr %bandwidth_hz492, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_af9005_debug to i32))
  %102 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and494 = and i32 %102, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and494)
  %tobool495.not = icmp eq i32 %and494, 0
  br i1 %tobool495.not, label %sw.bb491.cleanup_crit_edge, label %sw.bb491.cleanup.sink.split_crit_edge

sw.bb491.cleanup.sink.split_crit_edge:            ; preds = %sw.bb491
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

sw.bb491.cleanup_crit_edge:                       ; preds = %sw.bb491
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup.sink.split:                               ; preds = %sw.bb491.cleanup.sink.split_crit_edge, %sw.bb477.cleanup.sink.split_crit_edge, %sw.bb464.cleanup.sink.split_crit_edge
  %.str.208.sink = phi ptr [ @.str.208, %sw.bb464.cleanup.sink.split_crit_edge ], [ @.str.211, %sw.bb477.cleanup.sink.split_crit_edge ], [ @.str.214, %sw.bb491.cleanup.sink.split_crit_edge ]
  %call473 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.208.sink) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %sw.bb491.cleanup_crit_edge, %sw.bb477.cleanup_crit_edge, %sw.bb464.cleanup_crit_edge, %do.end462.cleanup_crit_edge, %sw.epilog402.cleanup_crit_edge, %sw.epilog328.cleanup_crit_edge, %sw.epilog240.cleanup_crit_edge, %do.end152.cleanup_crit_edge, %sw.epilog133.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call61, %sw.epilog.cleanup_crit_edge ], [ %call135, %sw.epilog133.cleanup_crit_edge ], [ %call154, %do.end152.cleanup_crit_edge ], [ %call242, %sw.epilog240.cleanup_crit_edge ], [ %call330, %sw.epilog328.cleanup_crit_edge ], [ %call404, %sw.epilog402.cleanup_crit_edge ], [ 0, %sw.bb491.cleanup_crit_edge ], [ 0, %sw.bb477.cleanup_crit_edge ], [ 0, %sw.bb464.cleanup_crit_edge ], [ 0, %do.end462.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %temp) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @af9005_fe_read_status(ptr nocapture noundef readonly %fe, ptr nocapture noundef %stat) #0 align 64 {
entry:
  %temp = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %temp) #6
  %2 = ptrtoint ptr %temp to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %temp, align 1, !annotation !380
  %release = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 1
  %3 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %release, align 4
  %cmp = icmp eq ptr %4, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %stat to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %stat, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %call = call i32 @af9005_read_register_bits(ptr noundef %7, i16 noundef zeroext -24160, i8 noundef zeroext 6, i8 noundef zeroext 1, ptr noundef nonnull %temp) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %8 = ptrtoint ptr %temp to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %temp, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool3.not = icmp eq i8 %9, 0
  br i1 %tobool3.not, label %if.end2.if.end5_crit_edge, label %if.then4

if.end2.if.end5_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then4:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %stat to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %stat, align 4
  %or = or i32 %11, 1
  store i32 %or, ptr %stat, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end2.if.end5_crit_edge
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %call7 = call i32 @af9005_read_register_bits(ptr noundef %13, i16 noundef zeroext -23760, i8 noundef zeroext 3, i8 noundef zeroext 1, ptr noundef nonnull %temp) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  %14 = ptrtoint ptr %temp to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %temp, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool11.not = icmp eq i8 %15, 0
  br i1 %tobool11.not, label %if.end10.if.end14_crit_edge, label %if.then12

if.end10.if.end14_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %stat to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %stat, align 4
  %or13 = or i32 %17, 2
  store i32 %or13, ptr %stat, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end10.if.end14_crit_edge
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %call16 = call i32 @af9005_read_register_bits(ptr noundef %19, i16 noundef zeroext -23296, i8 noundef zeroext 3, i8 noundef zeroext 3, ptr noundef nonnull %temp) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end19:                                         ; preds = %if.end14
  %20 = ptrtoint ptr %temp to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %temp, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool20.not = icmp eq i8 %21, 0
  br i1 %tobool20.not, label %if.end19.if.end23_crit_edge, label %if.then21

if.end19.if.end23_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

if.then21:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %stat to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %stat, align 4
  %or22 = or i32 %23, 28
  store i32 %or22, ptr %stat, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.end19.if.end23_crit_edge
  %opened = getelementptr inbounds %struct.af9005_fe_state, ptr %1, i32 0, i32 20
  %24 = ptrtoint ptr %opened to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %opened, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool24.not = icmp eq i32 %25, 0
  br i1 %tobool24.not, label %if.end23.if.end28_crit_edge, label %if.then25

if.end23.if.end28_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

if.then25:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 4
  %28 = ptrtoint ptr %stat to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %stat, align 4
  %and = and i32 %29, 16
  %call27 = call i32 @af9005_led_control(ptr noundef %27, i32 noundef %and) #6
  br label %if.end28

if.end28:                                         ; preds = %if.then25, %if.end23.if.end28_crit_edge
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 4
  %call30 = call i32 @af9005_read_register_bits(ptr noundef %31, i16 noundef zeroext -23876, i8 noundef zeroext 2, i8 noundef zeroext 1, ptr noundef nonnull %temp) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end33, label %if.end28.cleanup_crit_edge

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end33:                                         ; preds = %if.end28
  %32 = ptrtoint ptr %temp to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %temp, align 1
  %conv = zext i8 %33 to i32
  %strong = getelementptr inbounds %struct.af9005_fe_state, ptr %1, i32 0, i32 21
  %34 = ptrtoint ptr %strong to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %strong, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %conv)
  %cmp34.not = icmp eq i32 %35, %conv
  br i1 %cmp34.not, label %if.end33.cleanup_crit_edge, label %do.body

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %if.end33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_af9005_debug to i32))
  %36 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and37 = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %do.body.do.end45_crit_edge, label %do.end

do.body.do.end45_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end45

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %call42 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.216, i32 noundef %conv) #10
  br label %do.end45

do.end45:                                         ; preds = %do.end, %do.body.do.end45_crit_edge
  %37 = ptrtoint ptr %temp to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %temp, align 1
  %conv46 = zext i8 %38 to i32
  %39 = ptrtoint ptr %strong to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %conv46, ptr %strong, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end45, %if.end33.cleanup_crit_edge, %if.end28.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ %call7, %if.end5.cleanup_crit_edge ], [ %call16, %if.end14.cleanup_crit_edge ], [ %call30, %if.end28.cleanup_crit_edge ], [ 0, %do.end45 ], [ 0, %if.end33.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %temp) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @af9005_fe_read_ber(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %ber) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %release = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 1
  %0 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %release, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %2 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %demodulator_priv, align 4
  tail call fastcc void @af9005_fe_refresh_state(ptr noundef %fe)
  %ber1 = getelementptr inbounds %struct.af9005_fe_state, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %ber1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ber1, align 4
  %6 = ptrtoint ptr %ber to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %ber, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @af9005_fe_read_signal_strength(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %strength) #0 align 64 {
entry:
  %if_gain = alloca i8, align 1
  %rf_gain = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %if_gain) #6
  %2 = ptrtoint ptr %if_gain to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %if_gain, align 1, !annotation !380
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rf_gain) #6
  %3 = ptrtoint ptr %rf_gain to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %rf_gain, align 1, !annotation !380
  %release = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 1
  %4 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %release, align 4
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %call = call i32 @af9005_read_ofdm_register(ptr noundef %7, i16 noundef zeroext -24452, ptr noundef nonnull %rf_gain) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %call4 = call i32 @af9005_read_ofdm_register(ptr noundef %9, i16 noundef zeroext -24451, ptr noundef nonnull %if_gain) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end2.cleanup_crit_edge

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %rf_gain to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %rf_gain, align 1
  %conv = zext i8 %11 to i16
  %12 = ptrtoint ptr %if_gain to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %if_gain, align 1
  %conv8 = zext i8 %13 to i16
  %14 = add nuw nsw i16 %conv8, %conv
  %.neg = mul i16 %14, -128
  %15 = ptrtoint ptr %strength to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %.neg, ptr %strength, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ -19, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ %call4, %if.end2.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rf_gain) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %if_gain) #6
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @af9005_fe_read_snr(ptr nocapture noundef readnone %fe, ptr nocapture noundef readnone %snr) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -38
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @af9005_fe_read_unc_blocks(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %unc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %release = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 1
  %0 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %release, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %2 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %demodulator_priv, align 4
  tail call fastcc void @af9005_fe_refresh_state(ptr noundef %fe)
  %unc1 = getelementptr inbounds %struct.af9005_fe_state, ptr %3, i32 0, i32 18
  %4 = ptrtoint ptr %unc1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %unc1, align 4
  %6 = ptrtoint ptr %unc to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %unc, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @af9005_ts_bus_ctrl(ptr nocapture noundef readonly %fe, i32 noundef %acquire) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %acquire)
  %tobool.not = icmp eq i32 %acquire, 0
  %opened1 = getelementptr inbounds %struct.af9005_fe_state, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %opened1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %opened1, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %inc = add i32 %3, 1
  %4 = ptrtoint ptr %opened1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %inc, ptr %opened1, align 4
  br label %if.end5

if.else:                                          ; preds = %entry
  %dec = add i32 %3, -1
  %5 = ptrtoint ptr %opened1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %dec, ptr %opened1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool3.not = icmp eq i32 %dec, 0
  br i1 %tobool3.not, label %if.then4, label %if.else.if.end5_crit_edge

if.else.if.end5_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %call = tail call i32 @af9005_led_control(ptr noundef %7, i32 noundef 0) #6
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.else.if.end5_crit_edge, %if.then
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @af9005_write_register_bits(ptr noundef, i16 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @af9005_write_ofdm_register(ptr noundef, i16 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @af9005_read_ofdm_register(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @af9005_send_command(ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @af9005_fe_program_cfoe(ptr noundef %d, i32 noundef %bw) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %bw to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.258)
  switch i32 %bw, label %do.end [
    i32 6000000, label %entry.sw.epilog_crit_edge
    i32 7000000, label %sw.bb1
    i32 8000000, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, i32 noundef %bw) #10
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb1, %entry.sw.epilog_crit_edge
  %NS_coeff1_2048Nu.0 = phi i32 [ 59918630, %sw.bb2 ], [ 52428801, %sw.bb1 ], [ 44938972, %entry.sw.epilog_crit_edge ]
  %NS_coeff1_8191Nu.0 = phi i32 [ 14981486, %sw.bb2 ], [ 13108800, %sw.bb1 ], [ 11236115, %entry.sw.epilog_crit_edge ]
  %NS_coeff1_8192Nu.0 = phi i32 [ 14979657, %sw.bb2 ], [ 13107200, %sw.bb1 ], [ 11234743, %entry.sw.epilog_crit_edge ]
  %NS_coeff1_8193Nu.0 = phi i32 [ 14977829, %sw.bb2 ], [ 13105600, %sw.bb1 ], [ 11233372, %entry.sw.epilog_crit_edge ]
  %NS_coeff2_2k.0 = phi i32 [ 29959315, %sw.bb2 ], [ 26214400, %sw.bb1 ], [ 22469486, %entry.sw.epilog_crit_edge ]
  %NS_coeff2_8k.0 = phi i32 [ 7489829, %sw.bb2 ], [ 6553600, %sw.bb1 ], [ 5617372, %entry.sw.epilog_crit_edge ]
  %conv = trunc i32 %NS_coeff1_2048Nu.0 to i8
  %and3 = lshr i32 %NS_coeff1_2048Nu.0, 8
  %conv4 = trunc i32 %and3 to i8
  %shr9 = lshr i32 %NS_coeff1_2048Nu.0, 24
  %conv10 = trunc i32 %shr9 to i8
  %call15 = tail call i32 @af9005_write_ofdm_register(ptr noundef %d, i16 noundef zeroext -20992, i8 noundef zeroext %conv10) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool.not = icmp eq i32 %call15, 0
  br i1 %tobool.not, label %if.end, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %sw.epilog
  %and5 = lshr i32 %NS_coeff1_2048Nu.0, 16
  %conv7 = trunc i32 %and5 to i8
  %call17 = tail call i32 @af9005_write_ofdm_register(ptr noundef %d, i16 noundef zeroext -20991, i8 noundef zeroext %conv7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end20:                                         ; preds = %if.end
  %call22 = tail call i32 @af9005_write_ofdm_register(ptr noundef %d, i16 noundef zeroext -20990, i8 noundef zeroext %conv4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end25:                                         ; preds = %if.end20
  %call27 = tail call i32 @af9005_write_ofdm_register(ptr noundef %d, i16 noundef zeroext -20989, i8 noundef zeroext %conv) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %if.end25.cleanup_crit_edge

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end30:                                         ; preds = %if.end25
  %1 = trunc i32 %NS_coeff2_2k.0 to i8
  %conv32 = and i8 %1, 63
  %and33 = lshr i32 %NS_coeff2_2k.0, 6
  %conv35 = trunc i32 %and33 to i8
  %shr40 = lshr i32 %NS_coeff2_2k.0, 22
  %conv41 = trunc i32 %shr40 to i8
  %call47 = tail call i32 @af9005_write_ofdm_register(ptr noundef %d, i16 noundef zeroext -20988, i8 noundef zeroext %conv41) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end50, label %if.end30.cleanup_crit_edge

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end50:                                         ; preds = %if.end30
  %and36 = lshr i32 %NS_coeff2_2k.0, 14
  %conv38 = trunc i32 %and36 to i8
  %call52 = tail call i32 @af9005_write_ofdm_register(ptr noundef %d, i16 noundef zeroext -20987, i8 noundef zeroext %conv38) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end55, label %if.end50.cleanup_crit_edge

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end55:                                         ; preds = %if.end50
  %call57 = tail call i32 @af9005_write_ofdm_register(ptr noundef %d, i16 noundef zeroext -20986, i8 noundef zeroext %conv35) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.end60, label %if.end55.cleanup_crit_edge

if.end55.cleanup_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end60:                                         ; preds = %if.end55
  %call62 = tail call i32 @af9005_write_ofdm_register(ptr noundef %d, i16 noundef zeroext -20985, i8 noundef zeroext %conv32) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.end65, label %if.end60.cleanup_crit_edge

if.end60.cleanup_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end65:                                         ; preds = %if.end60
  %conv67 = trunc i32 %NS_coeff1_8191Nu.0 to i8
  %and68 = lshr i32 %NS_coeff1_8191Nu.0, 8
  %conv70 = trunc i32 %and68 to i8
  %call82 = tail call i32 @af9005_write_ofdm_register(ptr noundef %d, i16 noundef zeroext -20984, i8 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %if.end85, label %if.end65.cleanup_crit_edge

if.end65.cleanup_crit_edge:                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end85:                                         ; preds = %if.end65
  %shr72 = lshr i32 %NS_coeff1_8191Nu.0, 16
  %conv73 = trunc i32 %shr72 to i8
  %call87 = tail call i32 @af9005_write_ofdm_register(ptr noundef %d, i16 noundef zeroext -20983, i8 noundef zeroext %conv73) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %if.end90, label %if.end85.cleanup_crit_edge

if.end85.cleanup_crit_edge:                       ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end90:                                         ; preds = %if.end85
  %call92 = tail call i32 @af9005_write_ofdm_register(ptr noundef %d, i16 noundef zeroext -20982, i8 noundef zeroext %conv70) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %if.end95, label %if.end90.cleanup_crit_edge

if.end90.cleanup_crit_edge:                       ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end95:                                         ; preds = %if.end90
  %call97 = tail call i32 @af9005_write_ofdm_register(ptr noundef %d, i16 noundef zeroext -20981, i8 noundef zeroext %conv67) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %tobool98.not = icmp eq i32 %call97, 0
  br i1 %tobool98.not, label %if.end100, label %if.end95.cleanup_crit_edge

if.end95.cleanup_crit_edge:                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end100:                                        ; preds = %if.end95
  %conv102 = trunc i32 %NS_coeff1_8192Nu.0 to i8
  %and103 = lshr i32 %NS_coeff1_8192Nu.0, 8
  %conv105 = trunc i32 %and103 to i8
  %call117 = tail call i32 @af9005_write_ofdm_register(ptr noundef %d, i16 noundef zeroext -20980, i8 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call117)
  %tobool118.not = icmp eq i32 %call117, 0
  br i1 %tobool118.not, label %if.end120, label %if.end100.cleanup_crit_edge

if.end100.cleanup_crit_edge:                      ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end120:                                        ; preds = %if.end100
  %shr107 = lshr i32 %NS_coeff1_8192Nu.0, 16
  %conv108 = trunc i32 %shr107 to i8
  %call122 = tail call i32 @af9005_write_ofdm_register(ptr noundef %d, i16 noundef zeroext -20979, i8 noundef zeroext %conv108) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call122)
  %tobool123.not = icmp eq i32 %call122, 0
  br i1 %tobool123.not, label %if.end125, label %if.end120.cleanup_crit_edge

if.end120.cleanup_crit_edge:                      ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end125:                                        ; preds = %if.end120
  %call127 = tail call i32 @af9005_write_ofdm_register(ptr noundef %d, i16 noundef zeroext -20978, i8 noundef zeroext %conv105) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call127)
  %tobool128.not = icmp eq i32 %call127, 0
  br i1 %tobool128.not, label %if.end130, label %if.end125.cleanup_crit_edge

if.end125.cleanup_crit_edge:                      ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end130:                                        ; preds = %if.end125
  %call132 = tail call i32 @af9005_write_ofdm_register(ptr noundef %d, i16 noundef zeroext -20977, i8 noundef zeroext %conv102) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call132)
  %tobool133.not = icmp eq i32 %call132, 0
  br i1 %tobool133.not, label %if.end135, label %if.end130.cleanup_crit_edge

if.end130.cleanup_crit_edge:                      ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end135:                                        ; preds = %if.end130
  %conv137 = trunc i32 %NS_coeff1_8193Nu.0 to i8
  %and138 = lshr i32 %NS_coeff1_8193Nu.0, 8
  %conv140 = trunc i32 %and138 to i8
  %call152 = tail call i32 @af9005_write_ofdm_register(ptr noundef %d, i16 noundef zeroext -20976, i8 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call152)
  %tobool153.not = icmp eq i32 %call152, 0
  br i1 %tobool153.not, label %if.end155, label %if.end135.cleanup_crit_edge

if.end135.cleanup_crit_edge:                      ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end155:                                        ; preds = %if.end135
  %shr142 = lshr i32 %NS_coeff1_8193Nu.0, 16
  %conv143 = trunc i32 %shr142 to i8
  %call157 = tail call i32 @af9005_write_ofdm_register(ptr noundef %d, i16 noundef zeroext -20975, i8 noundef zeroext %conv143) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call157)
  %tobool158.not = icmp eq i32 %call157, 0
  br i1 %tobool158.not, label %if.end160, label %if.end155.cleanup_crit_edge

if.end155.cleanup_crit_edge:                      ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end160:                                        ; preds = %if.end155
  %call162 = tail call i32 @af9005_write_ofdm_register(ptr noundef %d, i16 noundef zeroext -20974, i8 noundef zeroext %conv140) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call162)
  %tobool163.not = icmp eq i32 %call162, 0
  br i1 %tobool163.not, label %if.end165, label %if.end160.cleanup_crit_edge

if.end160.cleanup_crit_edge:                      ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end165:                                        ; preds = %if.end160
  %call167 = tail call i32 @af9005_write_ofdm_register(ptr noundef %d, i16 noundef zeroext -20973, i8 noundef zeroext %conv137) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call167)
  %tobool168.not = icmp eq i32 %call167, 0
  br i1 %tobool168.not, label %if.end170, label %if.end165.cleanup_crit_edge

if.end165.cleanup_crit_edge:                      ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end170:                                        ; preds = %if.end165
  %2 = trunc i32 %NS_coeff2_8k.0 to i8
  %conv172 = and i8 %2, 61
  %and173 = lshr i32 %NS_coeff2_8k.0, 6
  %conv175 = trunc i32 %and173 to i8
  %call187 = tail call i32 @af9005_write_ofdm_register(ptr noundef %d, i16 noundef zeroext -20972, i8 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call187)
  %tobool188.not = icmp eq i32 %call187, 0
  br i1 %tobool188.not, label %if.end190, label %if.end170.cleanup_crit_edge

if.end170.cleanup_crit_edge:                      ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end190:                                        ; preds = %if.end170
  %and176 = lshr i32 %NS_coeff2_8k.0, 14
  %conv178 = trunc i32 %and176 to i8
  %call192 = tail call i32 @af9005_write_ofdm_register(ptr noundef %d, i16 noundef zeroext -20971, i8 noundef zeroext %conv178) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call192)
  %tobool193.not = icmp eq i32 %call192, 0
  br i1 %tobool193.not, label %if.end195, label %if.end190.cleanup_crit_edge

if.end190.cleanup_crit_edge:                      ; preds = %if.end190
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end195:                                        ; preds = %if.end190
  %call197 = tail call i32 @af9005_write_ofdm_register(ptr noundef %d, i16 noundef zeroext -20970, i8 noundef zeroext %conv175) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call197)
  %tobool198.not = icmp eq i32 %call197, 0
  br i1 %tobool198.not, label %if.end200, label %if.end195.cleanup_crit_edge

if.end195.cleanup_crit_edge:                      ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end200:                                        ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #8
  %call202 = tail call i32 @af9005_write_ofdm_register(ptr noundef %d, i16 noundef zeroext -20969, i8 noundef zeroext %conv172) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end200, %if.end195.cleanup_crit_edge, %if.end190.cleanup_crit_edge, %if.end170.cleanup_crit_edge, %if.end165.cleanup_crit_edge, %if.end160.cleanup_crit_edge, %if.end155.cleanup_crit_edge, %if.end135.cleanup_crit_edge, %if.end130.cleanup_crit_edge, %if.end125.cleanup_crit_edge, %if.end120.cleanup_crit_edge, %if.end100.cleanup_crit_edge, %if.end95.cleanup_crit_edge, %if.end90.cleanup_crit_edge, %if.end85.cleanup_crit_edge, %if.end65.cleanup_crit_edge, %if.end60.cleanup_crit_edge, %if.end55.cleanup_crit_edge, %if.end50.cleanup_crit_edge, %if.end30.cleanup_crit_edge, %if.end25.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %if.end.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call202, %if.end200 ], [ %call15, %sw.epilog.cleanup_crit_edge ], [ %call17, %if.end.cleanup_crit_edge ], [ %call22, %if.end20.cleanup_crit_edge ], [ %call27, %if.end25.cleanup_crit_edge ], [ %call47, %if.end30.cleanup_crit_edge ], [ %call52, %if.end50.cleanup_crit_edge ], [ %call57, %if.end55.cleanup_crit_edge ], [ %call62, %if.end60.cleanup_crit_edge ], [ %call82, %if.end65.cleanup_crit_edge ], [ %call87, %if.end85.cleanup_crit_edge ], [ %call92, %if.end90.cleanup_crit_edge ], [ %call97, %if.end95.cleanup_crit_edge ], [ %call117, %if.end100.cleanup_crit_edge ], [ %call122, %if.end120.cleanup_crit_edge ], [ %call127, %if.end125.cleanup_crit_edge ], [ %call132, %if.end130.cleanup_crit_edge ], [ %call152, %if.end135.cleanup_crit_edge ], [ %call157, %if.end155.cleanup_crit_edge ], [ %call162, %if.end160.cleanup_crit_edge ], [ %call167, %if.end165.cleanup_crit_edge ], [ %call187, %if.end170.cleanup_crit_edge ], [ %call192, %if.end190.cleanup_crit_edge ], [ %call197, %if.end195.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @af9005_read_word_agc(ptr noundef %d, i16 noundef zeroext %reghi, i16 noundef zeroext %reglo, i8 noundef zeroext %pos, ptr nocapture noundef writeonly %value) unnamed_addr #0 align 64 {
entry:
  %temp0 = alloca i8, align 1
  %temp1 = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %temp0) #6
  %0 = ptrtoint ptr %temp0 to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %temp0, align 1, !annotation !380
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %temp1) #6
  %1 = ptrtoint ptr %temp1 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %temp1, align 1, !annotation !380
  %call = call i32 @af9005_read_ofdm_register(ptr noundef %d, i16 noundef zeroext %reglo, ptr noundef nonnull %temp0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i32 @af9005_read_ofdm_register(ptr noundef %d, i16 noundef zeroext %reghi, ptr noundef nonnull %temp1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %2 = zext i8 %pos to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.259)
  switch i8 %pos, label %do.end [
    i8 0, label %sw.bb
    i8 2, label %sw.bb11
    i8 4, label %sw.bb21
    i8 6, label %sw.bb31
  ]

sw.bb:                                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %temp1 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %temp1, align 1
  %5 = and i8 %4, 3
  %conv7 = zext i8 %5 to i16
  %shl = shl nuw nsw i16 %conv7, 8
  %6 = ptrtoint ptr %temp0 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %temp0, align 1
  %conv9 = zext i8 %7 to i16
  %add = or i16 %shl, %conv9
  %8 = ptrtoint ptr %value to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %add, ptr %value, align 2
  br label %cleanup

sw.bb11:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %temp1 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %temp1, align 1
  %11 = and i8 %10, 12
  %conv15 = zext i8 %11 to i16
  %shl16 = shl nuw nsw i16 %conv15, 6
  %12 = ptrtoint ptr %temp0 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %temp0, align 1
  %conv18 = zext i8 %13 to i16
  %add19 = or i16 %shl16, %conv18
  %14 = ptrtoint ptr %value to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %add19, ptr %value, align 2
  br label %cleanup

sw.bb21:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %temp1 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %temp1, align 1
  %17 = and i8 %16, 48
  %conv25 = zext i8 %17 to i16
  %shl26 = shl nuw nsw i16 %conv25, 4
  %18 = ptrtoint ptr %temp0 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %temp0, align 1
  %conv28 = zext i8 %19 to i16
  %add29 = or i16 %shl26, %conv28
  %20 = ptrtoint ptr %value to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %add29, ptr %value, align 2
  br label %cleanup

sw.bb31:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %temp1 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %temp1, align 1
  %23 = and i8 %22, -64
  %conv35 = zext i8 %23 to i16
  %shl36 = shl nuw nsw i16 %conv35, 2
  %24 = ptrtoint ptr %temp0 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %temp0, align 1
  %conv38 = zext i8 %25 to i16
  %add39 = or i16 %shl36, %conv38
  %26 = ptrtoint ptr %value to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %add39, ptr %value, align 2
  br label %cleanup

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %call41 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %sw.bb31, %sw.bb21, %sw.bb11, %sw.bb, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ 0, %sw.bb31 ], [ 0, %sw.bb21 ], [ 0, %sw.bb11 ], [ 0, %sw.bb ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %temp1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %temp0) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @af9005_read_eeprom(ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__symbol_get(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__symbol_put(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @af9005_led_control(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @af9005_write_word_agc(ptr noundef %d, i16 noundef zeroext %reghi, i16 noundef zeroext %reglo, i8 noundef zeroext %pos, i16 noundef zeroext %value) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %conv1 = trunc i16 %value to i8
  %call = tail call i32 @af9005_write_ofdm_register(ptr noundef %d, i16 noundef zeroext %reglo, i8 noundef zeroext %conv1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = lshr i16 %value, 8
  %1 = trunc i16 %0 to i8
  %conv4 = and i8 %1, 3
  %call5 = tail call i32 @af9005_write_register_bits(ptr noundef %d, i16 noundef zeroext %reghi, i8 noundef zeroext %pos, i8 noundef zeroext 2, i8 noundef zeroext %conv4) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @af9005_fe_select_bw(ptr noundef %d, i32 noundef %bw) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %bw to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.260)
  switch i32 %bw, label %do.end [
    i32 6000000, label %entry.sw.epilog_crit_edge
    i32 7000000, label %sw.bb1
    i32 8000000, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, i32 noundef %bw) #10
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb1, %entry.sw.epilog_crit_edge
  %temp.0 = phi i8 [ 2, %sw.bb2 ], [ 1, %sw.bb1 ], [ 0, %entry.sw.epilog_crit_edge ]
  %call3 = tail call i32 @af9005_write_register_bits(ptr noundef %d, i16 noundef zeroext -23615, i8 noundef zeroext 2, i8 noundef zeroext 2, i8 noundef zeroext %temp.0) #6
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call3, %sw.epilog ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @af9005_write_tuner_registers(ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @af9005_reset_pre_viterbi(ptr nocapture noundef readonly %fe) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call = tail call i32 @af9005_write_ofdm_register(ptr noundef %3, i16 noundef zeroext -23680, i8 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %call2 = tail call i32 @af9005_write_ofdm_register(ptr noundef %5, i16 noundef zeroext -23679, i8 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %call7 = tail call i32 @af9005_write_register_bits(ptr noundef %7, i16 noundef zeroext -23663, i8 noundef zeroext 7, i8 noundef zeroext 1, i8 noundef zeroext 1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @af9005_reset_post_viterbi(ptr nocapture noundef readonly %fe) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call = tail call i32 @af9005_write_ofdm_register(ptr noundef %3, i16 noundef zeroext -23675, i8 noundef zeroext 16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %call2 = tail call i32 @af9005_write_ofdm_register(ptr noundef %5, i16 noundef zeroext -23674, i8 noundef zeroext 39) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %call7 = tail call i32 @af9005_write_register_bits(ptr noundef %7, i16 noundef zeroext -23663, i8 noundef zeroext 5, i8 noundef zeroext 1, i8 noundef zeroext 1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end5 ], [ %call, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @af9005_read_register_bits(ptr noundef, i16 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @af9005_fe_refresh_state(ptr nocapture noundef readonly %fe) unnamed_addr #0 align 64 {
entry:
  %temp.i.i.i = alloca i8, align 1
  %temp0.i.i.i = alloca i8, align 1
  %temp1.i.i.i = alloca i8, align 1
  %temp2.i.i.i = alloca i8, align 1
  %temp.i343.i = alloca i8, align 1
  %temp0.i.i = alloca i8, align 1
  %temp1.i.i = alloca i8, align 1
  %temp2.i.i = alloca i8, align 1
  %temp.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %next_status_check = getelementptr inbounds %struct.af9005_fe_state, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %next_status_check to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %next_status_check, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %3, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %do.body, label %entry.if.end15_crit_edge

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_af9005_debug to i32))
  %5 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.do.end4_crit_edge, label %do.end

do.body.do.end4_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end4

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.218) #10
  br label %do.end4

do.end4:                                          ; preds = %do.end, %do.body.do.end4_crit_edge
  %6 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %demodulator_priv, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_af9005_debug to i32))
  %8 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end4.do.end3.i_crit_edge, label %do.end.i

do.end4.do.end3.i_crit_edge:                      ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end3.i

do.end.i:                                         ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.223) #10
  br label %do.end3.i

do.end3.i:                                        ; preds = %do.end.i, %do.end4.do.end3.i_crit_edge
  %9 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %temp.i.i) #6
  %11 = ptrtoint ptr %temp.i.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -1, ptr %temp.i.i, align 1, !annotation !380
  %12 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %10, align 4
  %call.i.i = call i32 @af9005_read_register_bits(ptr noundef %13, i16 noundef zeroext -23662, i8 noundef zeroext 1, i8 noundef zeroext 1, ptr noundef nonnull %temp.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end3.i.af9005_is_fecmon_available.exit.i_crit_edge

do.end3.i.af9005_is_fecmon_available.exit.i_crit_edge: ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %af9005_is_fecmon_available.exit.i

if.end.i.i:                                       ; preds = %do.end3.i
  %14 = ptrtoint ptr %temp.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %temp.i.i, align 1
  %16 = and i8 %15, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool1.not.i.i = icmp eq i8 %16, 0
  br i1 %tobool1.not.i.i, label %if.end.i.i.do.body10.i_crit_edge, label %if.then2.i.i

if.end.i.i.do.body10.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body10.i

if.then2.i.i:                                     ; preds = %if.end.i.i
  %17 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %10, align 4
  %call4.i.i = call i32 @af9005_read_register_bits(ptr noundef %18, i16 noundef zeroext -23010, i8 noundef zeroext 2, i8 noundef zeroext 1, ptr noundef nonnull %temp.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool5.not.i.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool5.not.i.i, label %if.end7.i.i, label %if.then2.i.i.af9005_is_fecmon_available.exit.i_crit_edge

if.then2.i.i.af9005_is_fecmon_available.exit.i_crit_edge: ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %af9005_is_fecmon_available.exit.i

if.end7.i.i:                                      ; preds = %if.then2.i.i
  %19 = ptrtoint ptr %temp.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %temp.i.i, align 1
  %21 = and i8 %20, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp.i.i = icmp eq i8 %21, 0
  br i1 %cmp.i.i, label %if.end22.i, label %if.end7.i.i.do.body10.i_crit_edge

if.end7.i.i.do.body10.i_crit_edge:                ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body10.i

af9005_is_fecmon_available.exit.i:                ; preds = %if.then2.i.i.af9005_is_fecmon_available.exit.i_crit_edge, %do.end3.i.af9005_is_fecmon_available.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %temp.i.i) #6
  br label %do.end10

do.body10.i:                                      ; preds = %if.end7.i.i.do.body10.i_crit_edge, %if.end.i.i.do.body10.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %temp.i.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_af9005_debug to i32))
  %22 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and11.i = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  br i1 %tobool12.not.i, label %do.body10.i.if.end13_crit_edge, label %do.end16.i

do.body10.i.if.end13_crit_edge:                   ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

do.end16.i:                                       ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #8
  %call18.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.226) #10
  br label %if.end13

if.end22.i:                                       ; preds = %if.end7.i.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %temp.i.i) #6
  %pre_vit_error_count.i = getelementptr inbounds %struct.af9005_fe_state, ptr %7, i32 0, i32 13
  %pre_vit_bit_count.i = getelementptr inbounds %struct.af9005_fe_state, ptr %7, i32 0, i32 14
  %23 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %temp.i343.i) #6
  %25 = ptrtoint ptr %temp.i343.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 -1, ptr %temp.i343.i, align 1, !annotation !380
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %temp0.i.i) #6
  %26 = ptrtoint ptr %temp0.i.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 -1, ptr %temp0.i.i, align 1, !annotation !380
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %temp1.i.i) #6
  %27 = ptrtoint ptr %temp1.i.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 -1, ptr %temp1.i.i, align 1, !annotation !380
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %temp2.i.i) #6
  %28 = ptrtoint ptr %temp2.i.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 -1, ptr %temp2.i.i, align 1, !annotation !380
  %29 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %24, align 4
  %call.i345.i = call i32 @af9005_read_register_bits(ptr noundef %30, i16 noundef zeroext -23663, i8 noundef zeroext 6, i8 noundef zeroext 1, ptr noundef nonnull %temp.i343.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i345.i)
  %tobool.not.i346.i = icmp eq i32 %call.i345.i, 0
  br i1 %tobool.not.i346.i, label %if.end.i348.i, label %if.end22.i.af9005_get_pre_vit_err_bit_count.exit.thread.i_crit_edge

if.end22.i.af9005_get_pre_vit_err_bit_count.exit.thread.i_crit_edge: ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %af9005_get_pre_vit_err_bit_count.exit.thread.i

if.end.i348.i:                                    ; preds = %if.end22.i
  %31 = ptrtoint ptr %temp.i343.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %temp.i343.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool1.not.i347.i = icmp eq i8 %32, 0
  br i1 %tobool1.not.i347.i, label %do.body.i.i, label %if.end10.i.i

do.body.i.i:                                      ; preds = %if.end.i348.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_af9005_debug to i32))
  %33 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and.i.i = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool3.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool3.not.i.i, label %do.body.i.i.af9005_get_pre_vit_err_bit_count.exit.thread.i_crit_edge, label %do.body.i.i.af9005_get_pre_vit_err_bit_count.exit.thread.sink.split.i_crit_edge

do.body.i.i.af9005_get_pre_vit_err_bit_count.exit.thread.sink.split.i_crit_edge: ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %af9005_get_pre_vit_err_bit_count.exit.thread.sink.split.i

do.body.i.i.af9005_get_pre_vit_err_bit_count.exit.thread.i_crit_edge: ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %af9005_get_pre_vit_err_bit_count.exit.thread.i

if.end10.i.i:                                     ; preds = %if.end.i348.i
  %34 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %24, align 4
  %call12.i.i = call i32 @af9005_read_ofdm_register(ptr noundef %35, i16 noundef zeroext -23678, ptr noundef nonnull %temp0.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i)
  %tobool13.not.i.i = icmp eq i32 %call12.i.i, 0
  br i1 %tobool13.not.i.i, label %if.end15.i.i, label %if.end10.i.i.af9005_get_pre_vit_err_bit_count.exit.thread.i_crit_edge

if.end10.i.i.af9005_get_pre_vit_err_bit_count.exit.thread.i_crit_edge: ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %af9005_get_pre_vit_err_bit_count.exit.thread.i

if.end15.i.i:                                     ; preds = %if.end10.i.i
  %36 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %24, align 4
  %call17.i.i = call i32 @af9005_read_ofdm_register(ptr noundef %37, i16 noundef zeroext -23677, ptr noundef nonnull %temp1.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i.i)
  %tobool18.not.i.i = icmp eq i32 %call17.i.i, 0
  br i1 %tobool18.not.i.i, label %if.end20.i.i, label %if.end15.i.i.af9005_get_pre_vit_err_bit_count.exit.thread.i_crit_edge

if.end15.i.i.af9005_get_pre_vit_err_bit_count.exit.thread.i_crit_edge: ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %af9005_get_pre_vit_err_bit_count.exit.thread.i

if.end20.i.i:                                     ; preds = %if.end15.i.i
  %38 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %24, align 4
  %call22.i.i = call i32 @af9005_read_ofdm_register(ptr noundef %39, i16 noundef zeroext -23676, ptr noundef nonnull %temp2.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i.i)
  %tobool23.not.i.i = icmp eq i32 %call22.i.i, 0
  br i1 %tobool23.not.i.i, label %if.end25.i.i, label %if.end20.i.i.af9005_get_pre_vit_err_bit_count.exit.thread.i_crit_edge

if.end20.i.i.af9005_get_pre_vit_err_bit_count.exit.thread.i_crit_edge: ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %af9005_get_pre_vit_err_bit_count.exit.thread.i

if.end25.i.i:                                     ; preds = %if.end20.i.i
  %40 = ptrtoint ptr %temp2.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %temp2.i.i, align 1
  %conv.i.i = zext i8 %41 to i32
  %shl.i.i = shl nuw nsw i32 %conv.i.i, 16
  %42 = ptrtoint ptr %temp1.i.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %temp1.i.i, align 1
  %conv26.i.i = zext i8 %43 to i32
  %shl27.i.i = shl nuw nsw i32 %conv26.i.i, 8
  %add.i.i = or i32 %shl27.i.i, %shl.i.i
  %44 = ptrtoint ptr %temp0.i.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %temp0.i.i, align 1
  %conv28.i.i = zext i8 %45 to i32
  %add29.i.i = or i32 %add.i.i, %conv28.i.i
  %46 = ptrtoint ptr %pre_vit_error_count.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %add29.i.i, ptr %pre_vit_error_count.i, align 4
  %47 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %24, align 4
  %call31.i.i = call i32 @af9005_read_ofdm_register(ptr noundef %48, i16 noundef zeroext -23680, ptr noundef nonnull %temp0.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i.i)
  %tobool32.not.i.i = icmp eq i32 %call31.i.i, 0
  br i1 %tobool32.not.i.i, label %if.end34.i.i, label %if.end25.i.i.af9005_get_pre_vit_err_bit_count.exit.thread.i_crit_edge

if.end25.i.i.af9005_get_pre_vit_err_bit_count.exit.thread.i_crit_edge: ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %af9005_get_pre_vit_err_bit_count.exit.thread.i

if.end34.i.i:                                     ; preds = %if.end25.i.i
  %49 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %24, align 4
  %call36.i.i = call i32 @af9005_read_ofdm_register(ptr noundef %50, i16 noundef zeroext -23679, ptr noundef nonnull %temp1.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i.i)
  %tobool37.not.i.i = icmp eq i32 %call36.i.i, 0
  br i1 %tobool37.not.i.i, label %if.end39.i.i, label %if.end34.i.i.af9005_get_pre_vit_err_bit_count.exit.thread.i_crit_edge

if.end34.i.i.af9005_get_pre_vit_err_bit_count.exit.thread.i_crit_edge: ; preds = %if.end34.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %af9005_get_pre_vit_err_bit_count.exit.thread.i

if.end39.i.i:                                     ; preds = %if.end34.i.i
  %51 = ptrtoint ptr %temp1.i.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %temp1.i.i, align 1
  %conv40.i.i = zext i8 %52 to i32
  %shl41.i.i = shl nuw nsw i32 %conv40.i.i, 8
  %53 = ptrtoint ptr %temp0.i.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %temp0.i.i, align 1
  %conv42.i.i = zext i8 %54 to i32
  %add43.i.i = or i32 %shl41.i.i, %conv42.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add43.i.i)
  %cmp.i349.i = icmp eq i32 %add43.i.i, 0
  br i1 %cmp.i349.i, label %do.body46.i.i, label %if.end58.i.i

do.body46.i.i:                                    ; preds = %if.end39.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_af9005_debug to i32))
  %55 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and47.i.i = and i32 %55, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47.i.i)
  %tobool48.not.i.i = icmp eq i32 %and47.i.i, 0
  br i1 %tobool48.not.i.i, label %do.body46.i.i.af9005_get_pre_vit_err_bit_count.exit.thread.i_crit_edge, label %do.body46.i.i.af9005_get_pre_vit_err_bit_count.exit.thread.sink.split.i_crit_edge

do.body46.i.i.af9005_get_pre_vit_err_bit_count.exit.thread.sink.split.i_crit_edge: ; preds = %do.body46.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %af9005_get_pre_vit_err_bit_count.exit.thread.sink.split.i

do.body46.i.i.af9005_get_pre_vit_err_bit_count.exit.thread.i_crit_edge: ; preds = %do.body46.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %af9005_get_pre_vit_err_bit_count.exit.thread.i

if.end58.i.i:                                     ; preds = %if.end39.i.i
  %56 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %24, align 4
  %call60.i.i = call i32 @af9005_read_register_bits(ptr noundef %57, i16 noundef zeroext -23616, i8 noundef zeroext 0, i8 noundef zeroext 2, ptr noundef nonnull %temp.i343.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60.i.i)
  %tobool61.not.i.i = icmp eq i32 %call60.i.i, 0
  br i1 %tobool61.not.i.i, label %if.end63.i.i, label %if.end58.i.i.af9005_get_pre_vit_err_bit_count.exit.thread.i_crit_edge

if.end58.i.i.af9005_get_pre_vit_err_bit_count.exit.thread.i_crit_edge: ; preds = %if.end58.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %af9005_get_pre_vit_err_bit_count.exit.thread.i

if.end63.i.i:                                     ; preds = %if.end58.i.i
  %58 = ptrtoint ptr %temp.i343.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %temp.i343.i, align 1
  %60 = zext i8 %59 to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values.261)
  switch i8 %59, label %if.end63.i.i.af9005_get_pre_vit_err_bit_count.exit.thread.sink.split.i_crit_edge [
    i8 0, label %if.end63.i.i.if.end79.i.i_crit_edge
    i8 1, label %if.then71.i.i
  ]

if.end63.i.i.if.end79.i.i_crit_edge:              ; preds = %if.end63.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end79.i.i

if.end63.i.i.af9005_get_pre_vit_err_bit_count.exit.thread.sink.split.i_crit_edge: ; preds = %if.end63.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %af9005_get_pre_vit_err_bit_count.exit.thread.sink.split.i

if.then71.i.i:                                    ; preds = %if.end63.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end79.i.i

if.end79.i.i:                                     ; preds = %if.then71.i.i, %if.end63.i.i.if.end79.i.i_crit_edge
  %x.0.i.i = phi i32 [ 6048, %if.then71.i.i ], [ 1512, %if.end63.i.i.if.end79.i.i_crit_edge ]
  %61 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %24, align 4
  %call81.i.i = call i32 @af9005_read_register_bits(ptr noundef %62, i16 noundef zeroext -23615, i8 noundef zeroext 6, i8 noundef zeroext 2, ptr noundef nonnull %temp.i343.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81.i.i)
  %tobool82.not.i.i = icmp eq i32 %call81.i.i, 0
  br i1 %tobool82.not.i.i, label %if.end84.i.i, label %if.end79.i.i.af9005_get_pre_vit_err_bit_count.exit.thread.i_crit_edge

if.end79.i.i.af9005_get_pre_vit_err_bit_count.exit.thread.i_crit_edge: ; preds = %if.end79.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %af9005_get_pre_vit_err_bit_count.exit.thread.i

if.end84.i.i:                                     ; preds = %if.end79.i.i
  %63 = ptrtoint ptr %temp.i343.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %temp.i343.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %64)
  %65 = icmp ult i8 %64, 3
  br i1 %65, label %switch.lookup, label %if.end84.i.i.af9005_get_pre_vit_err_bit_count.exit.thread.sink.split.i_crit_edge

if.end84.i.i.af9005_get_pre_vit_err_bit_count.exit.thread.sink.split.i_crit_edge: ; preds = %if.end84.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %af9005_get_pre_vit_err_bit_count.exit.thread.sink.split.i

switch.lookup:                                    ; preds = %if.end84.i.i
  %switch.idx.cast = zext i8 %64 to i32
  %switch.idx.mult = shl nuw nsw i32 %switch.idx.cast, 1
  %switch.offset = add nuw nsw i32 %switch.idx.mult, 2
  %mul93.i.i = mul nuw nsw i32 %add43.i.i, 272
  %mul94.i.i = mul i32 %mul93.i.i, %x.0.i.i
  %mul95.i.i = mul i32 %mul94.i.i, %switch.offset
  %66 = ptrtoint ptr %pre_vit_bit_count.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %mul95.i.i, ptr %pre_vit_bit_count.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_af9005_debug to i32))
  %67 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and97.i.i = and i32 %67, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and97.i.i)
  %tobool98.not.i.i = icmp eq i32 %and97.i.i, 0
  br i1 %tobool98.not.i.i, label %switch.lookup.if.then24.i_crit_edge, label %do.end102.i.i

switch.lookup.if.then24.i_crit_edge:              ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then24.i

do.end102.i.i:                                    ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  %68 = ptrtoint ptr %pre_vit_error_count.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %pre_vit_error_count.i, align 4
  %call104.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.240, i32 noundef %69, i32 noundef %add43.i.i, i32 noundef %mul95.i.i) #10
  br label %if.then24.i

af9005_get_pre_vit_err_bit_count.exit.thread.sink.split.i: ; preds = %if.end84.i.i.af9005_get_pre_vit_err_bit_count.exit.thread.sink.split.i_crit_edge, %if.end63.i.i.af9005_get_pre_vit_err_bit_count.exit.thread.sink.split.i_crit_edge, %do.body46.i.i.af9005_get_pre_vit_err_bit_count.exit.thread.sink.split.i_crit_edge, %do.body.i.i.af9005_get_pre_vit_err_bit_count.exit.thread.sink.split.i_crit_edge
  %.str.237.sink.i = phi ptr [ @.str.228, %do.body.i.i.af9005_get_pre_vit_err_bit_count.exit.thread.sink.split.i_crit_edge ], [ @.str.231, %do.body46.i.i.af9005_get_pre_vit_err_bit_count.exit.thread.sink.split.i_crit_edge ], [ @.str.234, %if.end63.i.i.af9005_get_pre_vit_err_bit_count.exit.thread.sink.split.i_crit_edge ], [ @.str.237, %if.end84.i.i.af9005_get_pre_vit_err_bit_count.exit.thread.sink.split.i_crit_edge ]
  %call92.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.237.sink.i) #10
  br label %af9005_get_pre_vit_err_bit_count.exit.thread.i

af9005_get_pre_vit_err_bit_count.exit.thread.i:   ; preds = %af9005_get_pre_vit_err_bit_count.exit.thread.sink.split.i, %if.end79.i.i.af9005_get_pre_vit_err_bit_count.exit.thread.i_crit_edge, %if.end58.i.i.af9005_get_pre_vit_err_bit_count.exit.thread.i_crit_edge, %do.body46.i.i.af9005_get_pre_vit_err_bit_count.exit.thread.i_crit_edge, %if.end34.i.i.af9005_get_pre_vit_err_bit_count.exit.thread.i_crit_edge, %if.end25.i.i.af9005_get_pre_vit_err_bit_count.exit.thread.i_crit_edge, %if.end20.i.i.af9005_get_pre_vit_err_bit_count.exit.thread.i_crit_edge, %if.end15.i.i.af9005_get_pre_vit_err_bit_count.exit.thread.i_crit_edge, %if.end10.i.i.af9005_get_pre_vit_err_bit_count.exit.thread.i_crit_edge, %do.body.i.i.af9005_get_pre_vit_err_bit_count.exit.thread.i_crit_edge, %if.end22.i.af9005_get_pre_vit_err_bit_count.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %temp2.i.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %temp1.i.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %temp0.i.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %temp.i343.i) #6
  br label %if.end225.i

if.then24.i:                                      ; preds = %do.end102.i.i, %switch.lookup.if.then24.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %temp2.i.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %temp1.i.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %temp0.i.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %temp.i343.i) #6
  %70 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %demodulator_priv, align 4
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %71, align 4
  %call.i352.i = call i32 @af9005_write_ofdm_register(ptr noundef %73, i16 noundef zeroext -23680, i8 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i352.i)
  %tobool.not.i353.i = icmp eq i32 %call.i352.i, 0
  br i1 %tobool.not.i353.i, label %if.end.i355.i, label %if.then24.i.af9005_reset_pre_viterbi.exit.i_crit_edge

if.then24.i.af9005_reset_pre_viterbi.exit.i_crit_edge: ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %af9005_reset_pre_viterbi.exit.i

if.end.i355.i:                                    ; preds = %if.then24.i
  %74 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %71, align 4
  %call2.i.i = call i32 @af9005_write_ofdm_register(ptr noundef %75, i16 noundef zeroext -23679, i8 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i354.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i354.i, label %if.end5.i.i, label %if.end.i355.i.af9005_reset_pre_viterbi.exit.i_crit_edge

if.end.i355.i.af9005_reset_pre_viterbi.exit.i_crit_edge: ; preds = %if.end.i355.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %af9005_reset_pre_viterbi.exit.i

if.end5.i.i:                                      ; preds = %if.end.i355.i
  call void @__sanitizer_cov_trace_pc() #8
  %76 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %71, align 4
  %call7.i.i = call i32 @af9005_write_register_bits(ptr noundef %77, i16 noundef zeroext -23663, i8 noundef zeroext 7, i8 noundef zeroext 1, i8 noundef zeroext 1) #6
  br label %af9005_reset_pre_viterbi.exit.i

af9005_reset_pre_viterbi.exit.i:                  ; preds = %if.end5.i.i, %if.end.i355.i.af9005_reset_pre_viterbi.exit.i_crit_edge, %if.then24.i.af9005_reset_pre_viterbi.exit.i_crit_edge
  %78 = ptrtoint ptr %pre_vit_bit_count.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %pre_vit_bit_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %cmp27.not.i = icmp eq i32 %79, 0
  br i1 %cmp27.not.i, label %if.else222.i, label %if.then28.i

if.then28.i:                                      ; preds = %af9005_reset_pre_viterbi.exit.i
  %80 = ptrtoint ptr %pre_vit_error_count.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %pre_vit_error_count.i, align 4
  %conv.i = zext i32 %81 to i64
  %mul.i = mul nuw nsw i64 %conv.i, 1000000000
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul.i)
  %cmp206.i = icmp ult i64 %mul.i, 4294967296
  br i1 %cmp206.i, label %if.then210.i, label %if.else216.i, !prof !381

if.then210.i:                                     ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv211.i = trunc i64 %mul.i to i32
  %rem212.i = urem i32 %conv211.i, %79
  br label %if.end220.i

if.else216.i:                                     ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #8
  %82 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %79, i64 %mul.i) #11, !srcloc !382
  %asmresult.i.i = extractvalue { i64, i64 } %82, 0
  %shr.i.i = lshr i64 %asmresult.i.i, 32
  %conv.i357.i = trunc i64 %shr.i.i to i32
  br label %if.end220.i

if.end220.i:                                      ; preds = %if.else216.i, %if.then210.i
  %__rem.0.i = phi i32 [ %rem212.i, %if.then210.i ], [ %conv.i357.i, %if.else216.i ]
  %ber.i = getelementptr inbounds %struct.af9005_fe_state, ptr %7, i32 0, i32 15
  %83 = ptrtoint ptr %ber.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %__rem.0.i, ptr %ber.i, align 4
  br label %if.end225.i

if.else222.i:                                     ; preds = %af9005_reset_pre_viterbi.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %ber223.i = getelementptr inbounds %struct.af9005_fe_state, ptr %7, i32 0, i32 15
  %84 = ptrtoint ptr %ber223.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 -1, ptr %ber223.i, align 4
  br label %if.end225.i

if.end225.i:                                      ; preds = %if.else222.i, %if.end220.i, %af9005_get_pre_vit_err_bit_count.exit.thread.i
  %post_vit_error_count.i = getelementptr inbounds %struct.af9005_fe_state, ptr %7, i32 0, i32 16
  %post_vit_bit_count.i = getelementptr inbounds %struct.af9005_fe_state, ptr %7, i32 0, i32 17
  %abort_count.i = getelementptr inbounds %struct.af9005_fe_state, ptr %7, i32 0, i32 19
  %85 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %temp.i.i.i) #6
  %87 = ptrtoint ptr %temp.i.i.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 -1, ptr %temp.i.i.i, align 1, !annotation !380
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %temp0.i.i.i) #6
  %88 = ptrtoint ptr %temp0.i.i.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 -1, ptr %temp0.i.i.i, align 1, !annotation !380
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %temp1.i.i.i) #6
  %89 = ptrtoint ptr %temp1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 -1, ptr %temp1.i.i.i, align 1, !annotation !380
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %temp2.i.i.i) #6
  %90 = ptrtoint ptr %temp2.i.i.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 -1, ptr %temp2.i.i.i, align 1, !annotation !380
  %91 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %86, align 4
  %call.i.i.i = call i32 @af9005_read_register_bits(ptr noundef %92, i16 noundef zeroext -23663, i8 noundef zeroext 4, i8 noundef zeroext 1, ptr noundef nonnull %temp.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.end225.i.af9005_get_post_vit_ber.exit.i_crit_edge

if.end225.i.af9005_get_post_vit_ber.exit.i_crit_edge: ; preds = %if.end225.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %af9005_get_post_vit_ber.exit.i

if.end.i.i.i:                                     ; preds = %if.end225.i
  %93 = ptrtoint ptr %temp.i.i.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %temp.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %tobool1.not.i.i.i = icmp eq i8 %94, 0
  br i1 %tobool1.not.i.i.i, label %do.body.i.i.i, label %if.end10.i.i.i

do.body.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_af9005_debug to i32))
  %95 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and.i.i.i = and i32 %95, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %do.body.i.i.i.af9005_get_post_vit_ber.exit.i_crit_edge, label %do.body.i.i.i.af9005_get_post_vit_err_cw_count.exit.thread.sink.split.i.i_crit_edge

do.body.i.i.i.af9005_get_post_vit_err_cw_count.exit.thread.sink.split.i.i_crit_edge: ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %af9005_get_post_vit_err_cw_count.exit.thread.sink.split.i.i

do.body.i.i.i.af9005_get_post_vit_ber.exit.i_crit_edge: ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %af9005_get_post_vit_ber.exit.i

if.end10.i.i.i:                                   ; preds = %if.end.i.i.i
  %96 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %86, align 4
  %call12.i.i.i = call i32 @af9005_read_ofdm_register(ptr noundef %97, i16 noundef zeroext -23670, ptr noundef nonnull %temp0.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i.i)
  %tobool13.not.i.i.i = icmp eq i32 %call12.i.i.i, 0
  br i1 %tobool13.not.i.i.i, label %if.end15.i.i.i, label %if.end10.i.i.i.af9005_get_post_vit_ber.exit.i_crit_edge

if.end10.i.i.i.af9005_get_post_vit_ber.exit.i_crit_edge: ; preds = %if.end10.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %af9005_get_post_vit_ber.exit.i

if.end15.i.i.i:                                   ; preds = %if.end10.i.i.i
  %98 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %86, align 4
  %call17.i.i.i = call i32 @af9005_read_ofdm_register(ptr noundef %99, i16 noundef zeroext -23669, ptr noundef nonnull %temp1.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i.i.i)
  %tobool18.not.i.i.i = icmp eq i32 %call17.i.i.i, 0
  br i1 %tobool18.not.i.i.i, label %if.end20.i.i.i, label %if.end15.i.i.i.af9005_get_post_vit_ber.exit.i_crit_edge

if.end15.i.i.i.af9005_get_post_vit_ber.exit.i_crit_edge: ; preds = %if.end15.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %af9005_get_post_vit_ber.exit.i

if.end20.i.i.i:                                   ; preds = %if.end15.i.i.i
  %100 = ptrtoint ptr %temp1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %temp1.i.i.i, align 1
  %conv21.i.i.i = zext i8 %101 to i16
  %shl.i.i.i = shl nuw i16 %conv21.i.i.i, 8
  %102 = ptrtoint ptr %temp0.i.i.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %temp0.i.i.i, align 1
  %conv22.i.i.i = zext i8 %103 to i16
  %add.i.i.i = or i16 %shl.i.i.i, %conv22.i.i.i
  %104 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %86, align 4
  %call25.i.i.i = call i32 @af9005_read_ofdm_register(ptr noundef %105, i16 noundef zeroext -23673, ptr noundef nonnull %temp0.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i.i.i)
  %tobool26.not.i.i.i = icmp eq i32 %call25.i.i.i, 0
  br i1 %tobool26.not.i.i.i, label %if.end28.i.i.i, label %if.end20.i.i.i.af9005_get_post_vit_ber.exit.i_crit_edge

if.end20.i.i.i.af9005_get_post_vit_ber.exit.i_crit_edge: ; preds = %if.end20.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %af9005_get_post_vit_ber.exit.i

if.end28.i.i.i:                                   ; preds = %if.end20.i.i.i
  %106 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %86, align 4
  %call30.i.i.i = call i32 @af9005_read_ofdm_register(ptr noundef %107, i16 noundef zeroext -23672, ptr noundef nonnull %temp1.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i.i.i)
  %tobool31.not.i.i.i = icmp eq i32 %call30.i.i.i, 0
  br i1 %tobool31.not.i.i.i, label %if.end33.i.i.i, label %if.end28.i.i.i.af9005_get_post_vit_ber.exit.i_crit_edge

if.end28.i.i.i.af9005_get_post_vit_ber.exit.i_crit_edge: ; preds = %if.end28.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %af9005_get_post_vit_ber.exit.i

if.end33.i.i.i:                                   ; preds = %if.end28.i.i.i
  %108 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %86, align 4
  %call35.i.i.i = call i32 @af9005_read_ofdm_register(ptr noundef %109, i16 noundef zeroext -23671, ptr noundef nonnull %temp2.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i.i.i)
  %tobool36.not.i.i.i = icmp eq i32 %call35.i.i.i, 0
  br i1 %tobool36.not.i.i.i, label %if.end38.i.i.i, label %if.end33.i.i.i.af9005_get_post_vit_ber.exit.i_crit_edge

if.end33.i.i.i.af9005_get_post_vit_ber.exit.i_crit_edge: ; preds = %if.end33.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %af9005_get_post_vit_ber.exit.i

if.end38.i.i.i:                                   ; preds = %if.end33.i.i.i
  %110 = ptrtoint ptr %temp2.i.i.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %temp2.i.i.i, align 1
  %conv39.i.i.i = zext i8 %111 to i32
  %shl40.i.i.i = shl nuw nsw i32 %conv39.i.i.i, 16
  %112 = ptrtoint ptr %temp1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %temp1.i.i.i, align 1
  %conv41.i.i.i = zext i8 %113 to i32
  %shl42.i.i.i = shl nuw nsw i32 %conv41.i.i.i, 8
  %add43.i.i.i = or i32 %shl42.i.i.i, %shl40.i.i.i
  %114 = ptrtoint ptr %temp0.i.i.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %temp0.i.i.i, align 1
  %conv44.i.i.i = zext i8 %115 to i32
  %add45.i.i.i = or i32 %add43.i.i.i, %conv44.i.i.i
  %conv46.i.i.i = zext i16 %add.i.i.i to i32
  %mul47.neg.i.i.i = mul nsw i32 %conv46.i.i.i, -64
  %sub.i.i.i = add nsw i32 %add45.i.i.i, %mul47.neg.i.i.i
  %116 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %86, align 4
  %call49.i.i.i = call i32 @af9005_read_ofdm_register(ptr noundef %117, i16 noundef zeroext -23675, ptr noundef nonnull %temp0.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49.i.i.i)
  %tobool50.not.i.i.i = icmp eq i32 %call49.i.i.i, 0
  br i1 %tobool50.not.i.i.i, label %if.end52.i.i.i, label %if.end38.i.i.i.af9005_get_post_vit_ber.exit.i_crit_edge

if.end38.i.i.i.af9005_get_post_vit_ber.exit.i_crit_edge: ; preds = %if.end38.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %af9005_get_post_vit_ber.exit.i

if.end52.i.i.i:                                   ; preds = %if.end38.i.i.i
  %118 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %86, align 4
  %call54.i.i.i = call i32 @af9005_read_ofdm_register(ptr noundef %119, i16 noundef zeroext -23674, ptr noundef nonnull %temp1.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54.i.i.i)
  %tobool55.not.i.i.i = icmp eq i32 %call54.i.i.i, 0
  br i1 %tobool55.not.i.i.i, label %if.end57.i.i.i, label %if.end52.i.i.i.af9005_get_post_vit_ber.exit.i_crit_edge

if.end52.i.i.i.af9005_get_post_vit_ber.exit.i_crit_edge: ; preds = %if.end52.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %af9005_get_post_vit_ber.exit.i

if.end57.i.i.i:                                   ; preds = %if.end52.i.i.i
  %120 = ptrtoint ptr %temp1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %temp1.i.i.i, align 1
  %conv58.i.i.i = zext i8 %121 to i32
  %shl59.i.i.i = shl nuw nsw i32 %conv58.i.i.i, 8
  %122 = ptrtoint ptr %temp0.i.i.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %temp0.i.i.i, align 1
  %conv60.i.i.i = zext i8 %123 to i32
  %add61.i.i.i = or i32 %shl59.i.i.i, %conv60.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add61.i.i.i)
  %cmp.i.i.i = icmp eq i32 %add61.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end57.i.i.i.af9005_get_post_vit_err_cw_count.exit.thread.sink.split.i.i_crit_edge, label %do.body70.i.i.i

if.end57.i.i.i.af9005_get_post_vit_err_cw_count.exit.thread.sink.split.i.i_crit_edge: ; preds = %if.end57.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %af9005_get_post_vit_err_cw_count.exit.thread.sink.split.i.i

do.body70.i.i.i:                                  ; preds = %if.end57.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_af9005_debug to i32))
  %124 = load i32, ptr @dvb_usb_af9005_debug, align 4
  %and71.i.i.i = and i32 %124, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71.i.i.i)
  %tobool72.not.i.i.i = icmp eq i32 %and71.i.i.i, 0
  br i1 %tobool72.not.i.i.i, label %do.body70.i.i.i.if.then229.i_crit_edge, label %do.end76.i.i.i

do.body70.i.i.i.if.then229.i_crit_edge:           ; preds = %do.body70.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then229.i

do.end76.i.i.i:                                   ; preds = %do.body70.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call79.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.248, i32 noundef %conv46.i.i.i, i32 noundef %add45.i.i.i, i32 noundef %add61.i.i.i) #10
  br label %if.then229.i

af9005_get_post_vit_err_cw_count.exit.thread.sink.split.i.i: ; preds = %if.end57.i.i.i.af9005_get_post_vit_err_cw_count.exit.thread.sink.split.i.i_crit_edge, %do.body.i.i.i.af9005_get_post_vit_err_cw_count.exit.thread.sink.split.i.i_crit_edge
  %.str.245.sink.i.i = phi ptr [ @.str.242, %do.body.i.i.i.af9005_get_post_vit_err_cw_count.exit.thread.sink.split.i.i_crit_edge ], [ @.str.245, %if.end57.i.i.i.af9005_get_post_vit_err_cw_count.exit.thread.sink.split.i.i_crit_edge ]
  %call68.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.245.sink.i.i) #10
  br label %af9005_get_post_vit_ber.exit.i

af9005_get_post_vit_ber.exit.i:                   ; preds = %af9005_get_post_vit_err_cw_count.exit.thread.sink.split.i.i, %if.end52.i.i.i.af9005_get_post_vit_ber.exit.i_crit_edge, %if.end38.i.i.i.af9005_get_post_vit_ber.exit.i_crit_edge, %if.end33.i.i.i.af9005_get_post_vit_ber.exit.i_crit_edge, %if.end28.i.i.i.af9005_get_post_vit_ber.exit.i_crit_edge, %if.end20.i.i.i.af9005_get_post_vit_ber.exit.i_crit_edge, %if.end15.i.i.i.af9005_get_post_vit_ber.exit.i_crit_edge, %if.end10.i.i.i.af9005_get_post_vit_ber.exit.i_crit_edge, %do.body.i.i.i.af9005_get_post_vit_ber.exit.i_crit_edge, %if.end225.i.af9005_get_post_vit_ber.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %temp2.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %temp1.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %temp0.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %temp.i.i.i) #6
  br label %if.end13

if.then229.i:                                     ; preds = %do.end76.i.i.i, %do.body70.i.i.i.if.then229.i_crit_edge
  %sub84.i.i.i = sub nsw i32 %add61.i.i.i, %conv46.i.i.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %temp2.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %temp1.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %temp0.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %temp.i.i.i) #6
  %125 = ptrtoint ptr %post_vit_error_count.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %sub.i.i.i, ptr %post_vit_error_count.i, align 4
  %mul1.i.i = mul nsw i32 %sub84.i.i.i, 1632
  %126 = ptrtoint ptr %post_vit_bit_count.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %mul1.i.i, ptr %post_vit_bit_count.i, align 4
  %127 = ptrtoint ptr %abort_count.i to i32
  call void @__asan_store2_noabort(i32 %127)
  store i16 %add.i.i.i, ptr %abort_count.i, align 2
  %128 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %demodulator_priv, align 4
  %130 = ptrtoint ptr %129 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %129, align 4
  %call.i361.i = call i32 @af9005_write_ofdm_register(ptr noundef %131, i16 noundef zeroext -23675, i8 noundef zeroext 16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i361.i)
  %tobool.not.i362.i = icmp eq i32 %call.i361.i, 0
  br i1 %tobool.not.i362.i, label %if.end.i365.i, label %if.then229.i.af9005_reset_post_viterbi.exit.thread.i_crit_edge

if.then229.i.af9005_reset_post_viterbi.exit.thread.i_crit_edge: ; preds = %if.then229.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %af9005_reset_post_viterbi.exit.thread.i

if.end.i365.i:                                    ; preds = %if.then229.i
  %132 = ptrtoint ptr %129 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %129, align 4
  %call2.i363.i = call i32 @af9005_write_ofdm_register(ptr noundef %133, i16 noundef zeroext -23674, i8 noundef zeroext 39) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i363.i)
  %tobool3.not.i364.i = icmp eq i32 %call2.i363.i, 0
  br i1 %tobool3.not.i364.i, label %af9005_reset_post_viterbi.exit.i, label %if.end.i365.i.af9005_reset_post_viterbi.exit.thread.i_crit_edge

if.end.i365.i.af9005_reset_post_viterbi.exit.thread.i_crit_edge: ; preds = %if.end.i365.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %af9005_reset_post_viterbi.exit.thread.i

af9005_reset_post_viterbi.exit.thread.i:          ; preds = %if.end.i365.i.af9005_reset_post_viterbi.exit.thread.i_crit_edge, %if.then229.i.af9005_reset_post_viterbi.exit.thread.i_crit_edge
  %134 = ptrtoint ptr %abort_count.i to i32
  call void @__asan_load2_noabort(i32 %134)
  %135 = load i16, ptr %abort_count.i, align 4
  %conv232387.i = zext i16 %135 to i32
  %unc388.i = getelementptr inbounds %struct.af9005_fe_state, ptr %7, i32 0, i32 18
  %136 = ptrtoint ptr %unc388.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %unc388.i, align 4
  %add233389.i = add i32 %137, %conv232387.i
  store i32 %add233389.i, ptr %unc388.i, align 4
  br label %do.end10

af9005_reset_post_viterbi.exit.i:                 ; preds = %if.end.i365.i
  %138 = ptrtoint ptr %129 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %129, align 4
  %call7.i366.i = call i32 @af9005_write_register_bits(ptr noundef %139, i16 noundef zeroext -23663, i8 noundef zeroext 5, i8 noundef zeroext 1, i8 noundef zeroext 1) #6
  %140 = ptrtoint ptr %abort_count.i to i32
  call void @__asan_load2_noabort(i32 %140)
  %141 = load i16, ptr %abort_count.i, align 4
  %conv232.i = zext i16 %141 to i32
  %unc.i = getelementptr inbounds %struct.af9005_fe_state, ptr %7, i32 0, i32 18
  %142 = ptrtoint ptr %unc.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %unc.i, align 4
  %add233.i = add i32 %143, %conv232.i
  store i32 %add233.i, ptr %unc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i366.i)
  %tobool234.not.i = icmp eq i32 %call7.i366.i, 0
  br i1 %tobool234.not.i, label %af9005_reset_post_viterbi.exit.i.if.end13_crit_edge, label %af9005_reset_post_viterbi.exit.i.do.end10_crit_edge

af9005_reset_post_viterbi.exit.i.do.end10_crit_edge: ; preds = %af9005_reset_post_viterbi.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

af9005_reset_post_viterbi.exit.i.if.end13_crit_edge: ; preds = %af9005_reset_post_viterbi.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

do.end10:                                         ; preds = %af9005_reset_post_viterbi.exit.i.do.end10_crit_edge, %af9005_reset_post_viterbi.exit.thread.i, %af9005_is_fecmon_available.exit.i
  %call12 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.221) #10
  br label %if.end13

if.end13:                                         ; preds = %do.end10, %af9005_reset_post_viterbi.exit.i.if.end13_crit_edge, %af9005_get_post_vit_ber.exit.i, %do.end16.i, %do.body10.i.if.end13_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %144 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %144, 25
  %145 = ptrtoint ptr %next_status_check to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %add, ptr %next_status_check, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.end13, %entry.if.end15_crit_edge
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 192)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 192)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !11, !12, !13, !15, !16, !17, !19, !20, !21, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !76, !78, !79, !80, !81, !82, !84, !85, !86, !88, !89, !90, !91, !92, !94, !95, !96, !98, !99, !100, !102, !103, !104, !106, !107, !108, !109, !111, !113, !114, !115, !116, !118, !120, !122, !123, !124, !125, !126, !127, !129, !130, !131, !132, !134, !135, !136, !138, !139, !140, !142, !143, !144, !146, !147, !148, !150, !151, !152, !154, !155, !156, !158, !159, !160, !162, !163, !164, !166, !167, !168, !170, !171, !172, !174, !175, !176, !178, !179, !180, !181, !183, !184, !185, !187, !188, !189, !191, !192, !193, !195, !196, !197, !199, !200, !201, !203, !204, !205, !207, !208, !209, !211, !212, !213, !215, !216, !217, !219, !220, !221, !222, !223, !225, !226, !227, !229, !230, !231, !233, !234, !235, !237, !238, !239, !241, !242, !243, !245, !246, !247, !249, !250, !251, !253, !254, !256, !257, !259, !260, !262, !263, !265, !266, !268, !269, !270, !272, !273, !274, !276, !277, !278, !280, !281, !282, !284, !285, !286, !288, !289, !290, !292, !293, !294, !296, !297, !298, !300, !301, !302, !304, !305, !306, !308, !309, !310, !312, !313, !314, !316, !317, !318, !319, !321, !322, !323, !324, !326, !327, !328, !330, !331, !332, !333, !335, !336, !337, !339, !340, !341, !342, !344, !345, !346, !348, !349, !350, !352, !353, !354, !356, !357, !358, !360, !361, !362, !363, !365, !366, !367, !369, !370}
!llvm.module.flags = !{!371, !372, !373, !374, !375, !376, !377, !378}
!llvm.ident = !{!379}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/dvb-usb/af9005-fe.c", i32 1431, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @af9005_fe_attach._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @af9005_fe_attach._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @af9005_fe_ops, !7, !"af9005_fe_ops", i1 false, i1 false}
!7 = !{!"../drivers/media/usb/dvb-usb/af9005-fe.c", i32 1445, i32 38}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/media/usb/dvb-usb/af9005-fe.c", i32 812, i32 2}
!10 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @af9005_fe_init._entry, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @af9005_fe_init._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/media/usb/dvb-usb/af9005-fe.c", i32 815, i32 2}
!15 = !{ptr @af9005_fe_init._entry.5, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @af9005_fe_init._entry_ptr.7, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/media/usb/dvb-usb/af9005-fe.c", i32 823, i32 2}
!19 = !{ptr @af9005_fe_init._entry.8, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @af9005_fe_init._entry_ptr.10, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/media/usb/dvb-usb/af9005-fe.c", i32 879, i32 2}
!23 = !{ptr @af9005_fe_init._entry.11, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @af9005_fe_init._entry_ptr.13, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.15, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/media/usb/dvb-usb/af9005-fe.c", i32 887, i32 2}
!27 = !{ptr @af9005_fe_init._entry.14, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @af9005_fe_init._entry_ptr.16, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.18, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/media/usb/dvb-usb/af9005-fe.c", i32 900, i32 2}
!31 = !{ptr @af9005_fe_init._entry.17, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @af9005_fe_init._entry_ptr.19, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.21, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/media/usb/dvb-usb/af9005-fe.c", i32 906, i32 2}
!35 = !{ptr @af9005_fe_init._entry.20, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @af9005_fe_init._entry_ptr.22, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.24, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/usb/dvb-usb/af9005-fe.c", i32 920, i32 2}
!39 = !{ptr @af9005_fe_init._entry.23, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @af9005_fe_init._entry_ptr.25, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.27, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/usb/dvb-usb/af9005-fe.c", i32 925, i32 2}
!43 = !{ptr @af9005_fe_init._entry.26, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @af9005_fe_init._entry_ptr.28, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.30, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/usb/dvb-usb/af9005-fe.c", i32 936, i32 2}
!47 = !{ptr @af9005_fe_init._entry.29, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @af9005_fe_init._entry_ptr.31, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.33, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/usb/dvb-usb/af9005-fe.c", i32 944, i32 2}
!51 = !{ptr @af9005_fe_init._entry.32, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @af9005_fe_init._entry_ptr.34, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.36, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/usb/dvb-usb/af9005-fe.c", i32 955, i32 2}
!55 = !{ptr @af9005_fe_init._entry.35, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @af9005_fe_init._entry_ptr.37, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.39, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/usb/dvb-usb/af9005-fe.c", i32 960, i32 2}
!59 = !{ptr @af9005_fe_init._entry.38, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @af9005_fe_init._entry_ptr.40, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.42, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/usb/dvb-usb/af9005-fe.c", i32 992, i32 2}
!63 = !{ptr @af9005_fe_init._entry.41, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @af9005_fe_init._entry_ptr.43, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.45, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/media/usb/dvb-usb/af9005-fe.c", i32 1031, i32 4}
!67 = !{ptr @af9005_fe_init._entry.44, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @af9005_fe_init._entry_ptr.46, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.48, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/media/usb/dvb-usb/af9005-fe.c", i32 1034, i32 3}
!71 = !{ptr @af9005_fe_init._entry.47, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @af9005_fe_init._entry_ptr.49, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @af9005_fe_init._entry.50, !74, !"_entry", i1 false, i1 false}
!74 = !{!"../drivers/media/usb/dvb-usb/af9005-fe.c", i32 1040, i32 5}
!75 = !{ptr @af9005_fe_init._entry_ptr.51, !74, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.52, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/media/usb/dvb-usb/af9005-fe.c", i32 1044, i32 8}
!78 = !{ptr @.str.53, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.55, !77, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @af9005_fe_init._entry.54, !77, !"_entry", i1 false, i1 false}
!81 = !{ptr @af9005_fe_init._entry_ptr.56, !77, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.58, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/media/usb/dvb-usb/af9005-fe.c", i32 1046, i32 5}
!84 = !{ptr @af9005_fe_init._entry.57, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @af9005_fe_init._entry_ptr.59, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.60, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/media/usb/dvb-usb/af9005-fe.c", i32 1052, i32 8}
!88 = !{ptr @.str.61, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.63, !87, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @af9005_fe_init._entry.62, !87, !"_entry", i1 false, i1 false}
!91 = !{ptr @af9005_fe_init._entry_ptr.64, !87, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.66, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/media/usb/dvb-usb/af9005-fe.c", i32 1054, i32 5}
!94 = !{ptr @af9005_fe_init._entry.65, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @af9005_fe_init._entry_ptr.67, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.69, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/media/usb/dvb-usb/af9005-fe.c", i32 1059, i32 4}
!98 = !{ptr @af9005_fe_init._entry.68, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @af9005_fe_init._entry_ptr.70, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.72, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/media/usb/dvb-usb/af9005-fe.c", i32 1067, i32 2}
!102 = !{ptr @af9005_fe_init._entry.71, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @af9005_fe_init._entry_ptr.73, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.74, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/media/usb/dvb-usb/af9005-fe.c", i32 569, i32 3}
!106 = !{ptr @.str.75, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @af9005_fe_program_cfoe._entry, !105, !"_entry", i1 false, i1 false}
!108 = !{ptr @af9005_fe_program_cfoe._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @script, !110, !"script", i1 false, i1 false}
!110 = !{!"../drivers/media/usb/dvb-usb/af9005-script.h", i32 18, i32 16}
!111 = !{ptr @.str.76, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/media/usb/dvb-usb/af9005-fe.c", i32 84, i32 3}
!113 = !{ptr @.str.77, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @af9005_read_word_agc._entry, !112, !"_entry", i1 false, i1 false}
!115 = !{ptr @af9005_read_word_agc._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @af9005_mt2060_config, !117, !"af9005_mt2060_config", i1 false, i1 false}
!117 = !{!"../drivers/media/usb/dvb-usb/af9005-fe.c", i32 795, i32 29}
!118 = !{ptr @af9005_qt1010_config, !119, !"af9005_qt1010_config", i1 false, i1 false}
!119 = !{!"../drivers/media/usb/dvb-usb/af9005-fe.c", i32 799, i32 29}
!120 = !{ptr @.str.78, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/media/usb/dvb-usb/af9005-fe.c", i32 790, i32 2}
!122 = !{ptr @.str.79, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @af9005_fe_power._entry, !121, !"_entry", i1 false, i1 false}
!124 = !{ptr @af9005_fe_power._entry_ptr, !121, !"_entry_ptr", i1 false, i1 false}
!125 = distinct !{null, !121, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @.str.81, !121, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @.str.82, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/media/usb/dvb-usb/af9005-fe.c", i32 1098, i32 2}
!129 = !{ptr @.str.83, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @af9005_fe_set_frontend._entry, !128, !"_entry", i1 false, i1 false}
!131 = !{ptr @af9005_fe_set_frontend._entry_ptr, !128, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.85, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/media/usb/dvb-usb/af9005-fe.c", i32 1101, i32 3}
!134 = !{ptr @af9005_fe_set_frontend._entry.84, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @af9005_fe_set_frontend._entry_ptr.86, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.88, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/media/usb/dvb-usb/af9005-fe.c", i32 1105, i32 2}
!138 = !{ptr @af9005_fe_set_frontend._entry.87, !137, !"_entry", i1 false, i1 false}
!139 = !{ptr @af9005_fe_set_frontend._entry_ptr.89, !137, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.91, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/media/usb/dvb-usb/af9005-fe.c", i32 1116, i32 2}
!142 = !{ptr @af9005_fe_set_frontend._entry.90, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @af9005_fe_set_frontend._entry_ptr.92, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.94, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/media/usb/dvb-usb/af9005-fe.c", i32 1131, i32 2}
!146 = !{ptr @af9005_fe_set_frontend._entry.93, !145, !"_entry", i1 false, i1 false}
!147 = !{ptr @af9005_fe_set_frontend._entry_ptr.95, !145, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.97, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/media/usb/dvb-usb/af9005-fe.c", i32 1158, i32 2}
!150 = !{ptr @af9005_fe_set_frontend._entry.96, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @af9005_fe_set_frontend._entry_ptr.98, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.100, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/media/usb/dvb-usb/af9005-fe.c", i32 1167, i32 2}
!154 = !{ptr @af9005_fe_set_frontend._entry.99, !153, !"_entry", i1 false, i1 false}
!155 = !{ptr @af9005_fe_set_frontend._entry_ptr.101, !153, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.103, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/media/usb/dvb-usb/af9005-fe.c", i32 1173, i32 2}
!158 = !{ptr @af9005_fe_set_frontend._entry.102, !157, !"_entry", i1 false, i1 false}
!159 = !{ptr @af9005_fe_set_frontend._entry_ptr.104, !157, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.106, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/media/usb/dvb-usb/af9005-fe.c", i32 1180, i32 2}
!162 = !{ptr @af9005_fe_set_frontend._entry.105, !161, !"_entry", i1 false, i1 false}
!163 = !{ptr @af9005_fe_set_frontend._entry_ptr.107, !161, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.109, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/media/usb/dvb-usb/af9005-fe.c", i32 1186, i32 2}
!166 = !{ptr @af9005_fe_set_frontend._entry.108, !165, !"_entry", i1 false, i1 false}
!167 = !{ptr @af9005_fe_set_frontend._entry_ptr.110, !165, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.112, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/media/usb/dvb-usb/af9005-fe.c", i32 1193, i32 2}
!170 = !{ptr @af9005_fe_set_frontend._entry.111, !169, !"_entry", i1 false, i1 false}
!171 = !{ptr @af9005_fe_set_frontend._entry_ptr.113, !169, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.114, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/media/usb/dvb-usb/af9005-fe.c", i32 778, i32 3}
!174 = !{ptr @af9005_fe_select_bw._entry, !173, !"_entry", i1 false, i1 false}
!175 = !{ptr @af9005_fe_select_bw._entry_ptr, !173, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.115, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/media/usb/dvb-usb/af9005-fe.c", i32 1231, i32 2}
!178 = !{ptr @.str.116, !177, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @af9005_fe_get_frontend._entry, !177, !"_entry", i1 false, i1 false}
!180 = !{ptr @af9005_fe_get_frontend._entry_ptr, !177, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @.str.118, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/media/usb/dvb-usb/af9005-fe.c", i32 1232, i32 2}
!183 = !{ptr @af9005_fe_get_frontend._entry.117, !182, !"_entry", i1 false, i1 false}
!184 = !{ptr @af9005_fe_get_frontend._entry_ptr.119, !182, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @.str.121, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/media/usb/dvb-usb/af9005-fe.c", i32 1236, i32 3}
!187 = !{ptr @af9005_fe_get_frontend._entry.120, !186, !"_entry", i1 false, i1 false}
!188 = !{ptr @af9005_fe_get_frontend._entry_ptr.122, !186, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.124, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/media/usb/dvb-usb/af9005-fe.c", i32 1240, i32 3}
!191 = !{ptr @af9005_fe_get_frontend._entry.123, !190, !"_entry", i1 false, i1 false}
!192 = !{ptr @af9005_fe_get_frontend._entry_ptr.125, !190, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @.str.127, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/media/usb/dvb-usb/af9005-fe.c", i32 1244, i32 3}
!195 = !{ptr @af9005_fe_get_frontend._entry.126, !194, !"_entry", i1 false, i1 false}
!196 = !{ptr @af9005_fe_get_frontend._entry_ptr.128, !194, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @.str.130, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/media/usb/dvb-usb/af9005-fe.c", i32 1255, i32 2}
!199 = !{ptr @af9005_fe_get_frontend._entry.129, !198, !"_entry", i1 false, i1 false}
!200 = !{ptr @af9005_fe_get_frontend._entry_ptr.131, !198, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @.str.133, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/media/usb/dvb-usb/af9005-fe.c", i32 1259, i32 3}
!203 = !{ptr @af9005_fe_get_frontend._entry.132, !202, !"_entry", i1 false, i1 false}
!204 = !{ptr @af9005_fe_get_frontend._entry_ptr.134, !202, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @.str.136, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/media/usb/dvb-usb/af9005-fe.c", i32 1263, i32 3}
!207 = !{ptr @af9005_fe_get_frontend._entry.135, !206, !"_entry", i1 false, i1 false}
!208 = !{ptr @af9005_fe_get_frontend._entry_ptr.137, !206, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @.str.139, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/media/usb/dvb-usb/af9005-fe.c", i32 1267, i32 3}
!211 = !{ptr @af9005_fe_get_frontend._entry.138, !210, !"_entry", i1 false, i1 false}
!212 = !{ptr @af9005_fe_get_frontend._entry_ptr.140, !210, !"_entry_ptr", i1 false, i1 false}
!213 = !{ptr @.str.142, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/media/usb/dvb-usb/af9005-fe.c", i32 1271, i32 3}
!215 = !{ptr @af9005_fe_get_frontend._entry.141, !214, !"_entry", i1 false, i1 false}
!216 = !{ptr @af9005_fe_get_frontend._entry_ptr.143, !214, !"_entry_ptr", i1 false, i1 false}
!217 = !{ptr @.str.145, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/media/usb/dvb-usb/af9005-fe.c", i32 1282, i32 2}
!219 = !{ptr @af9005_fe_get_frontend._entry.144, !218, !"_entry", i1 false, i1 false}
!220 = !{ptr @af9005_fe_get_frontend._entry_ptr.146, !218, !"_entry_ptr", i1 false, i1 false}
!221 = !{ptr @.str.147, !218, !"<string literal>", i1 false, i1 false}
!222 = !{ptr @.str.148, !218, !"<string literal>", i1 false, i1 false}
!223 = !{ptr @.str.150, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/media/usb/dvb-usb/af9005-fe.c", i32 1291, i32 2}
!225 = !{ptr @af9005_fe_get_frontend._entry.149, !224, !"_entry", i1 false, i1 false}
!226 = !{ptr @af9005_fe_get_frontend._entry_ptr.151, !224, !"_entry_ptr", i1 false, i1 false}
!227 = !{ptr @.str.153, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/media/usb/dvb-usb/af9005-fe.c", i32 1295, i32 3}
!229 = !{ptr @af9005_fe_get_frontend._entry.152, !228, !"_entry", i1 false, i1 false}
!230 = !{ptr @af9005_fe_get_frontend._entry_ptr.154, !228, !"_entry_ptr", i1 false, i1 false}
!231 = !{ptr @.str.156, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/media/usb/dvb-usb/af9005-fe.c", i32 1299, i32 3}
!233 = !{ptr @af9005_fe_get_frontend._entry.155, !232, !"_entry", i1 false, i1 false}
!234 = !{ptr @af9005_fe_get_frontend._entry_ptr.157, !232, !"_entry_ptr", i1 false, i1 false}
!235 = !{ptr @.str.159, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/media/usb/dvb-usb/af9005-fe.c", i32 1303, i32 3}
!237 = !{ptr @af9005_fe_get_frontend._entry.158, !236, !"_entry", i1 false, i1 false}
!238 = !{ptr @af9005_fe_get_frontend._entry_ptr.160, !236, !"_entry_ptr", i1 false, i1 false}
!239 = !{ptr @.str.162, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/media/usb/dvb-usb/af9005-fe.c", i32 1307, i32 3}
!241 = !{ptr @af9005_fe_get_frontend._entry.161, !240, !"_entry", i1 false, i1 false}
!242 = !{ptr @af9005_fe_get_frontend._entry_ptr.163, !240, !"_entry_ptr", i1 false, i1 false}
!243 = !{ptr @.str.165, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/media/usb/dvb-usb/af9005-fe.c", i32 1311, i32 3}
!245 = !{ptr @af9005_fe_get_frontend._entry.164, !244, !"_entry", i1 false, i1 false}
!246 = !{ptr @af9005_fe_get_frontend._entry_ptr.166, !244, !"_entry_ptr", i1 false, i1 false}
!247 = !{ptr @.str.168, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/media/usb/dvb-usb/af9005-fe.c", i32 1322, i32 2}
!249 = !{ptr @af9005_fe_get_frontend._entry.167, !248, !"_entry", i1 false, i1 false}
!250 = !{ptr @af9005_fe_get_frontend._entry_ptr.169, !248, !"_entry_ptr", i1 false, i1 false}
!251 = !{ptr @af9005_fe_get_frontend._entry.170, !252, !"_entry", i1 false, i1 false}
!252 = !{!"../drivers/media/usb/dvb-usb/af9005-fe.c", i32 1326, i32 3}
!253 = !{ptr @af9005_fe_get_frontend._entry_ptr.171, !252, !"_entry_ptr", i1 false, i1 false}
!254 = !{ptr @af9005_fe_get_frontend._entry.172, !255, !"_entry", i1 false, i1 false}
!255 = !{!"../drivers/media/usb/dvb-usb/af9005-fe.c", i32 1330, i32 3}
!256 = !{ptr @af9005_fe_get_frontend._entry_ptr.173, !255, !"_entry_ptr", i1 false, i1 false}
!257 = !{ptr @af9005_fe_get_frontend._entry.174, !258, !"_entry", i1 false, i1 false}
!258 = !{!"../drivers/media/usb/dvb-usb/af9005-fe.c", i32 1334, i32 3}
!259 = !{ptr @af9005_fe_get_frontend._entry_ptr.175, !258, !"_entry_ptr", i1 false, i1 false}
!260 = !{ptr @af9005_fe_get_frontend._entry.176, !261, !"_entry", i1 false, i1 false}
!261 = !{!"../drivers/media/usb/dvb-usb/af9005-fe.c", i32 1338, i32 3}
!262 = !{ptr @af9005_fe_get_frontend._entry_ptr.177, !261, !"_entry_ptr", i1 false, i1 false}
!263 = !{ptr @af9005_fe_get_frontend._entry.178, !264, !"_entry", i1 false, i1 false}
!264 = !{!"../drivers/media/usb/dvb-usb/af9005-fe.c", i32 1342, i32 3}
!265 = !{ptr @af9005_fe_get_frontend._entry_ptr.179, !264, !"_entry_ptr", i1 false, i1 false}
!266 = !{ptr @.str.181, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/media/usb/dvb-usb/af9005-fe.c", i32 1352, i32 2}
!268 = !{ptr @af9005_fe_get_frontend._entry.180, !267, !"_entry", i1 false, i1 false}
!269 = !{ptr @af9005_fe_get_frontend._entry_ptr.182, !267, !"_entry_ptr", i1 false, i1 false}
!270 = !{ptr @.str.184, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/media/usb/dvb-usb/af9005-fe.c", i32 1356, i32 3}
!272 = !{ptr @af9005_fe_get_frontend._entry.183, !271, !"_entry", i1 false, i1 false}
!273 = !{ptr @af9005_fe_get_frontend._entry_ptr.185, !271, !"_entry_ptr", i1 false, i1 false}
!274 = !{ptr @.str.187, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/media/usb/dvb-usb/af9005-fe.c", i32 1360, i32 3}
!276 = !{ptr @af9005_fe_get_frontend._entry.186, !275, !"_entry", i1 false, i1 false}
!277 = !{ptr @af9005_fe_get_frontend._entry_ptr.188, !275, !"_entry_ptr", i1 false, i1 false}
!278 = !{ptr @.str.190, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/media/usb/dvb-usb/af9005-fe.c", i32 1364, i32 3}
!280 = !{ptr @af9005_fe_get_frontend._entry.189, !279, !"_entry", i1 false, i1 false}
!281 = !{ptr @af9005_fe_get_frontend._entry_ptr.191, !279, !"_entry_ptr", i1 false, i1 false}
!282 = !{ptr @.str.193, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/media/usb/dvb-usb/af9005-fe.c", i32 1368, i32 3}
!284 = !{ptr @af9005_fe_get_frontend._entry.192, !283, !"_entry", i1 false, i1 false}
!285 = !{ptr @af9005_fe_get_frontend._entry_ptr.194, !283, !"_entry_ptr", i1 false, i1 false}
!286 = !{ptr @.str.196, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/media/usb/dvb-usb/af9005-fe.c", i32 1379, i32 2}
!288 = !{ptr @af9005_fe_get_frontend._entry.195, !287, !"_entry", i1 false, i1 false}
!289 = !{ptr @af9005_fe_get_frontend._entry_ptr.197, !287, !"_entry_ptr", i1 false, i1 false}
!290 = !{ptr @.str.199, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/media/usb/dvb-usb/af9005-fe.c", i32 1383, i32 3}
!292 = !{ptr @af9005_fe_get_frontend._entry.198, !291, !"_entry", i1 false, i1 false}
!293 = !{ptr @af9005_fe_get_frontend._entry_ptr.200, !291, !"_entry_ptr", i1 false, i1 false}
!294 = !{ptr @.str.202, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/media/usb/dvb-usb/af9005-fe.c", i32 1387, i32 3}
!296 = !{ptr @af9005_fe_get_frontend._entry.201, !295, !"_entry", i1 false, i1 false}
!297 = !{ptr @af9005_fe_get_frontend._entry_ptr.203, !295, !"_entry_ptr", i1 false, i1 false}
!298 = !{ptr @.str.205, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/media/usb/dvb-usb/af9005-fe.c", i32 1395, i32 2}
!300 = !{ptr @af9005_fe_get_frontend._entry.204, !299, !"_entry", i1 false, i1 false}
!301 = !{ptr @af9005_fe_get_frontend._entry_ptr.206, !299, !"_entry_ptr", i1 false, i1 false}
!302 = !{ptr @.str.208, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/media/usb/dvb-usb/af9005-fe.c", i32 1399, i32 3}
!304 = !{ptr @af9005_fe_get_frontend._entry.207, !303, !"_entry", i1 false, i1 false}
!305 = !{ptr @af9005_fe_get_frontend._entry_ptr.209, !303, !"_entry_ptr", i1 false, i1 false}
!306 = !{ptr @.str.211, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/media/usb/dvb-usb/af9005-fe.c", i32 1403, i32 3}
!308 = !{ptr @af9005_fe_get_frontend._entry.210, !307, !"_entry", i1 false, i1 false}
!309 = !{ptr @af9005_fe_get_frontend._entry_ptr.212, !307, !"_entry_ptr", i1 false, i1 false}
!310 = !{ptr @.str.214, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/media/usb/dvb-usb/af9005-fe.c", i32 1407, i32 3}
!312 = !{ptr @af9005_fe_get_frontend._entry.213, !311, !"_entry", i1 false, i1 false}
!313 = !{ptr @af9005_fe_get_frontend._entry_ptr.215, !311, !"_entry_ptr", i1 false, i1 false}
!314 = !{ptr @.str.216, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../drivers/media/usb/dvb-usb/af9005-fe.c", i32 471, i32 3}
!316 = !{ptr @.str.217, !315, !"<string literal>", i1 false, i1 false}
!317 = !{ptr @af9005_fe_read_status._entry, !315, !"_entry", i1 false, i1 false}
!318 = !{ptr @af9005_fe_read_status._entry_ptr, !315, !"_entry_ptr", i1 false, i1 false}
!319 = !{ptr @.str.218, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/media/usb/dvb-usb/af9005-fe.c", i32 417, i32 3}
!321 = !{ptr @.str.219, !320, !"<string literal>", i1 false, i1 false}
!322 = !{ptr @af9005_fe_refresh_state._entry, !320, !"_entry", i1 false, i1 false}
!323 = !{ptr @af9005_fe_refresh_state._entry_ptr, !320, !"_entry_ptr", i1 false, i1 false}
!324 = !{ptr @.str.221, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/media/usb/dvb-usb/af9005-fe.c", i32 421, i32 4}
!326 = !{ptr @af9005_fe_refresh_state._entry.220, !325, !"_entry", i1 false, i1 false}
!327 = !{ptr @af9005_fe_refresh_state._entry_ptr.222, !325, !"_entry_ptr", i1 false, i1 false}
!328 = !{ptr @.str.223, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/media/usb/dvb-usb/af9005-fe.c", i32 375, i32 2}
!330 = !{ptr @.str.224, !329, !"<string literal>", i1 false, i1 false}
!331 = !{ptr @af9005_get_statistic._entry, !329, !"_entry", i1 false, i1 false}
!332 = !{ptr @af9005_get_statistic._entry_ptr, !329, !"_entry_ptr", i1 false, i1 false}
!333 = !{ptr @.str.226, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/media/usb/dvb-usb/af9005-fe.c", i32 380, i32 3}
!335 = !{ptr @af9005_get_statistic._entry.225, !334, !"_entry", i1 false, i1 false}
!336 = !{ptr @af9005_get_statistic._entry_ptr.227, !334, !"_entry_ptr", i1 false, i1 false}
!337 = !{ptr @.str.228, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../drivers/media/usb/dvb-usb/af9005-fe.c", i32 239, i32 3}
!339 = !{ptr @.str.229, !338, !"<string literal>", i1 false, i1 false}
!340 = !{ptr @af9005_get_pre_vit_err_bit_count._entry, !338, !"_entry", i1 false, i1 false}
!341 = !{ptr @af9005_get_pre_vit_err_bit_count._entry_ptr, !338, !"_entry_ptr", i1 false, i1 false}
!342 = !{ptr @.str.231, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/media/usb/dvb-usb/af9005-fe.c", i32 271, i32 3}
!344 = !{ptr @af9005_get_pre_vit_err_bit_count._entry.230, !343, !"_entry", i1 false, i1 false}
!345 = !{ptr @af9005_get_pre_vit_err_bit_count._entry_ptr.232, !343, !"_entry_ptr", i1 false, i1 false}
!346 = !{ptr @.str.234, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../drivers/media/usb/dvb-usb/af9005-fe.c", i32 289, i32 3}
!348 = !{ptr @af9005_get_pre_vit_err_bit_count._entry.233, !347, !"_entry", i1 false, i1 false}
!349 = !{ptr @af9005_get_pre_vit_err_bit_count._entry_ptr.235, !347, !"_entry_ptr", i1 false, i1 false}
!350 = !{ptr @.str.237, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../drivers/media/usb/dvb-usb/af9005-fe.c", i32 311, i32 3}
!352 = !{ptr @af9005_get_pre_vit_err_bit_count._entry.236, !351, !"_entry", i1 false, i1 false}
!353 = !{ptr @af9005_get_pre_vit_err_bit_count._entry_ptr.238, !351, !"_entry_ptr", i1 false, i1 false}
!354 = !{ptr @.str.240, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../drivers/media/usb/dvb-usb/af9005-fe.c", i32 315, i32 2}
!356 = !{ptr @af9005_get_pre_vit_err_bit_count._entry.239, !355, !"_entry", i1 false, i1 false}
!357 = !{ptr @af9005_get_pre_vit_err_bit_count._entry_ptr.241, !355, !"_entry_ptr", i1 false, i1 false}
!358 = !{ptr @.str.242, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../drivers/media/usb/dvb-usb/af9005-fe.c", i32 142, i32 3}
!360 = !{ptr @.str.243, !359, !"<string literal>", i1 false, i1 false}
!361 = !{ptr @af9005_get_post_vit_err_cw_count._entry, !359, !"_entry", i1 false, i1 false}
!362 = !{ptr @af9005_get_post_vit_err_cw_count._entry_ptr, !359, !"_entry_ptr", i1 false, i1 false}
!363 = !{ptr @.str.245, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../drivers/media/usb/dvb-usb/af9005-fe.c", i32 192, i32 3}
!365 = !{ptr @af9005_get_post_vit_err_cw_count._entry.244, !364, !"_entry", i1 false, i1 false}
!366 = !{ptr @af9005_get_post_vit_err_cw_count._entry_ptr.246, !364, !"_entry_ptr", i1 false, i1 false}
!367 = !{ptr @.str.248, !368, !"<string literal>", i1 false, i1 false}
!368 = !{!"../drivers/media/usb/dvb-usb/af9005-fe.c", i32 195, i32 2}
!369 = !{ptr @af9005_get_post_vit_err_cw_count._entry.247, !368, !"_entry", i1 false, i1 false}
!370 = !{ptr @af9005_get_post_vit_err_cw_count._entry_ptr.249, !368, !"_entry_ptr", i1 false, i1 false}
!371 = !{i32 1, !"wchar_size", i32 2}
!372 = !{i32 1, !"min_enum_size", i32 4}
!373 = !{i32 8, !"branch-target-enforcement", i32 0}
!374 = !{i32 8, !"sign-return-address", i32 0}
!375 = !{i32 8, !"sign-return-address-all", i32 0}
!376 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!377 = !{i32 7, !"uwtable", i32 1}
!378 = !{i32 7, !"frame-pointer", i32 2}
!379 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!380 = !{!"auto-init"}
!381 = !{!"branch_weights", i32 2000, i32 1}
!382 = !{i64 2148187326, i64 2148187606, i64 2148187940, i64 2148188274}
