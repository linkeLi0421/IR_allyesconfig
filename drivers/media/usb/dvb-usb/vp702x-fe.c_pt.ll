; ModuleID = '/llk/IR_all_yes/drivers/media/usb/dvb-usb/vp702x-fe.c_pt.bc'
source_filename = "../drivers/media/usb/dvb-usb/vp702x-fe.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.vp702x_fe_state = type { %struct.dvb_frontend, ptr, %struct.dvb_frontend_ops, i32, i32, [8 x i8], i8, i8, i8, i32, i32 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon }>
%union.anon = type { i64 }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.hlist_node = type { ptr, ptr }
%struct.vp702x_device_state = type { %struct.mutex, i32, ptr }
%struct.dvb_diseqc_master_cmd = type { [6 x i8], i8 }

@vp702x_fe_ops = internal constant { %struct.dvb_frontend_ops, [128 x i8] } { %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"Twinhan DST-like frontend (VP7021/VP7020) DVB-S\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 950000000, i32 -2144967296, i32 1000000, i32 0, i32 1000000, i32 45000000, i32 500, i32 1710 }, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr null, ptr @vp702x_fe_release, ptr null, ptr @vp702x_fe_init, ptr @vp702x_fe_sleep, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vp702x_fe_set_frontend, ptr @vp702x_fe_get_tune_settings, ptr null, ptr @vp702x_fe_read_status, ptr @vp702x_fe_read_ber, ptr @vp702x_fe_read_signal_strength, ptr @vp702x_fe_read_snr, ptr @vp702x_fe_read_unc_blocks, ptr null, ptr @vp702x_fe_send_diseqc_msg, ptr null, ptr @vp702x_fe_send_diseqc_burst, ptr @vp702x_fe_set_tone, ptr @vp702x_fe_set_voltage, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, [128 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@dvb_usb_vp702x_debug = external dso_local local_unnamed_addr global i32, align 4
@vp702x_fe_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 200, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"vp702x_fe_init\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/media/usb/dvb-usb/vp702x-fe.c\00", [58 x i8] zeroinitializer }, align 32
@vp702x_fe_init._entry_ptr = internal global ptr @vp702x_fe_init._entry, section ".printk_index", align 4
@vp702x_fe_sleep._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.3, ptr @.str.2, i32 207, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"vp702x_fe_sleep\00", [16 x i8] zeroinitializer }, align 32
@vp702x_fe_sleep._entry_ptr = internal global ptr @vp702x_fe_sleep._entry, section ".printk_index", align 4
@vp702x_fe_set_frontend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 163, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"setting frontend to: %u -> %u (%x) LNB-based GHz, symbolrate: %d -> %lu (%lx)\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"vp702x_fe_set_frontend\00", [41 x i8] zeroinitializer }, align 32
@vp702x_fe_set_frontend._entry_ptr = internal global ptr @vp702x_fe_set_frontend._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@vp702x_fe_set_frontend._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.5, ptr @.str.2, i32 188, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tuning failed.\0A\00", [16 x i8] zeroinitializer }, align 32
@vp702x_fe_set_frontend._entry_ptr.8 = internal global ptr @vp702x_fe_set_frontend._entry.6, section ".printk_index", align 4
@vp702x_fe_set_frontend._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.2, i32 190, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tuning succeeded.\0A\00", [45 x i8] zeroinitializer }, align 32
@vp702x_fe_set_frontend._entry_ptr.11 = internal global ptr @vp702x_fe_set_frontend._entry.9, section ".printk_index", align 4
@vp702x_fe_get_tune_settings._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.12, ptr @.str.2, i32 130, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"vp702x_fe_get_tune_settings\00", [36 x i8] zeroinitializer }, align 32
@vp702x_fe_get_tune_settings._entry_ptr = internal global ptr @vp702x_fe_get_tune_settings._entry, section ".printk_index", align 4
@vp702x_fe_read_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.13, ptr @.str.2, i32 76, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"vp702x_fe_read_status\00", [42 x i8] zeroinitializer }, align 32
@vp702x_fe_read_status._entry_ptr = internal global ptr @vp702x_fe_read_status._entry, section ".printk_index", align 4
@vp702x_fe_send_diseqc_msg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.14, ptr @.str.2, i32 218, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"vp702x_fe_send_diseqc_msg\00", [38 x i8] zeroinitializer }, align 32
@vp702x_fe_send_diseqc_msg._entry_ptr = internal global ptr @vp702x_fe_send_diseqc_msg._entry, section ".printk_index", align 4
@vp702x_fe_send_diseqc_msg._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.2, i32 234, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"diseqc cmd failed.\0A\00", [44 x i8] zeroinitializer }, align 32
@vp702x_fe_send_diseqc_msg._entry_ptr.17 = internal global ptr @vp702x_fe_send_diseqc_msg._entry.15, section ".printk_index", align 4
@vp702x_fe_send_diseqc_msg._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.14, ptr @.str.2, i32 236, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"diseqc cmd succeeded.\0A\00", [41 x i8] zeroinitializer }, align 32
@vp702x_fe_send_diseqc_msg._entry_ptr.20 = internal global ptr @vp702x_fe_send_diseqc_msg._entry.18, section ".printk_index", align 4
@vp702x_fe_send_diseqc_burst._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.21, ptr @.str.2, i32 246, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"vp702x_fe_send_diseqc_burst\00", [36 x i8] zeroinitializer }, align 32
@vp702x_fe_send_diseqc_burst._entry_ptr = internal global ptr @vp702x_fe_send_diseqc_burst._entry, section ".printk_index", align 4
@vp702x_fe_set_tone._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.22, ptr @.str.2, i32 257, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"vp702x_fe_set_tone\00", [45 x i8] zeroinitializer }, align 32
@vp702x_fe_set_tone._entry_ptr = internal global ptr @vp702x_fe_set_tone._entry, section ".printk_index", align 4
@vp702x_fe_set_tone._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.2, i32 275, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"set_tone cmd failed.\0A\00", [42 x i8] zeroinitializer }, align 32
@vp702x_fe_set_tone._entry_ptr.25 = internal global ptr @vp702x_fe_set_tone._entry.23, section ".printk_index", align 4
@vp702x_fe_set_tone._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.22, ptr @.str.2, i32 277, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"set_tone cmd succeeded.\0A\00", [39 x i8] zeroinitializer }, align 32
@vp702x_fe_set_tone._entry_ptr.28 = internal global ptr @vp702x_fe_set_tone._entry.26, section ".printk_index", align 4
@vp702x_fe_set_voltage._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.29, ptr @.str.2, i32 290, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"vp702x_fe_set_voltage\00", [42 x i8] zeroinitializer }, align 32
@vp702x_fe_set_voltage._entry_ptr = internal global ptr @vp702x_fe_set_voltage._entry, section ".printk_index", align 4
@vp702x_fe_set_voltage._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.2, i32 308, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"set_voltage cmd failed.\0A\00", [39 x i8] zeroinitializer }, align 32
@vp702x_fe_set_voltage._entry_ptr.32 = internal global ptr @vp702x_fe_set_voltage._entry.30, section ".printk_index", align 4
@vp702x_fe_set_voltage._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.29, ptr @.str.2, i32 310, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"set_voltage cmd succeeded.\0A\00", [36 x i8] zeroinitializer }, align 32
@vp702x_fe_set_voltage._entry_ptr.35 = internal global ptr @vp702x_fe_set_voltage._entry.33, section ".printk_index", align 4
@___asan_gen_.36 = private unnamed_addr constant [14 x i8] c"vp702x_fe_ops\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 344, i32 38 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 200, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 207, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 161, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 188, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 190, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 130, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 76, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 218, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 234, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 236, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 246, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 257, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 275, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 277, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 290, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 308, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.147 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.148 = private constant [41 x i8] c"../drivers/media/usb/dvb-usb/vp702x-fe.c\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 310, i32 3 }
@llvm.compiler.used = appending global [55 x ptr] [ptr @vp702x_fe_get_tune_settings._entry, ptr @vp702x_fe_get_tune_settings._entry_ptr, ptr @vp702x_fe_init._entry, ptr @vp702x_fe_init._entry_ptr, ptr @vp702x_fe_read_status._entry, ptr @vp702x_fe_read_status._entry_ptr, ptr @vp702x_fe_send_diseqc_burst._entry, ptr @vp702x_fe_send_diseqc_burst._entry_ptr, ptr @vp702x_fe_send_diseqc_msg._entry, ptr @vp702x_fe_send_diseqc_msg._entry.15, ptr @vp702x_fe_send_diseqc_msg._entry.18, ptr @vp702x_fe_send_diseqc_msg._entry_ptr, ptr @vp702x_fe_send_diseqc_msg._entry_ptr.17, ptr @vp702x_fe_send_diseqc_msg._entry_ptr.20, ptr @vp702x_fe_set_frontend._entry, ptr @vp702x_fe_set_frontend._entry.6, ptr @vp702x_fe_set_frontend._entry.9, ptr @vp702x_fe_set_frontend._entry_ptr, ptr @vp702x_fe_set_frontend._entry_ptr.11, ptr @vp702x_fe_set_frontend._entry_ptr.8, ptr @vp702x_fe_set_tone._entry, ptr @vp702x_fe_set_tone._entry.23, ptr @vp702x_fe_set_tone._entry.26, ptr @vp702x_fe_set_tone._entry_ptr, ptr @vp702x_fe_set_tone._entry_ptr.25, ptr @vp702x_fe_set_tone._entry_ptr.28, ptr @vp702x_fe_set_voltage._entry, ptr @vp702x_fe_set_voltage._entry.30, ptr @vp702x_fe_set_voltage._entry.33, ptr @vp702x_fe_set_voltage._entry_ptr, ptr @vp702x_fe_set_voltage._entry_ptr.32, ptr @vp702x_fe_set_voltage._entry_ptr.35, ptr @vp702x_fe_sleep._entry, ptr @vp702x_fe_sleep._entry_ptr, ptr @vp702x_fe_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @.str.34], section "llvm.metadata"
@0 = internal global [38 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp702x_fe_ops to i32), i32 544, i32 672, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp702x_fe_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp702x_fe_sleep._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp702x_fe_set_frontend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp702x_fe_set_frontend._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp702x_fe_set_frontend._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp702x_fe_get_tune_settings._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp702x_fe_read_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp702x_fe_send_diseqc_msg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp702x_fe_send_diseqc_msg._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp702x_fe_send_diseqc_msg._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp702x_fe_send_diseqc_burst._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp702x_fe_set_tone._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp702x_fe_set_tone._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp702x_fe_set_tone._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp702x_fe_set_voltage._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp702x_fe_set_voltage._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp702x_fe_set_voltage._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @vp702x_fe_attach(ptr noundef %d) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1616) #7
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %d1 = getelementptr inbounds %struct.vp702x_fe_state, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %d1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %d, ptr %d1, align 8
  %ops = getelementptr inbounds %struct.dvb_frontend, ptr %call7.i.i, i32 0, i32 1
  %2 = call ptr @memcpy(ptr %ops, ptr @vp702x_fe_ops, i32 544)
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %call7.i.i, i32 0, i32 3
  %3 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i, ptr %demodulator_priv, align 8
  %arrayidx = getelementptr %struct.vp702x_fe_state, ptr %call7.i.i, i32 0, i32 5, i32 1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 9, ptr %arrayidx, align 1
  %arrayidx4 = getelementptr %struct.vp702x_fe_state, ptr %call7.i.i, i32 0, i32 5, i32 3
  %5 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %arrayidx4, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vp702x_fe_release(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  tail call void @kfree(ptr noundef %1) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vp702x_fe_init(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_vp702x_debug to i32))
  %2 = load i32, ptr @dvb_usb_vp702x_debug, align 4
  %and = and i32 %2, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #8
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %d = getelementptr inbounds %struct.vp702x_fe_state, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %d, align 4
  %call4 = tail call i32 @vp702x_usb_in_op(ptr noundef %4, i8 noundef zeroext -66, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null, i32 noundef 0) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vp702x_fe_sleep(ptr nocapture noundef readnone %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_vp702x_debug to i32))
  %0 = load i32, ptr @dvb_usb_vp702x_debug, align 4
  %and = and i32 %0, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end2_crit_edge, label %do.end

entry.do.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.3) #8
  br label %do.end2

do.end2:                                          ; preds = %do.end, %entry.do.end2_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vp702x_fe_set_frontend(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %d = getelementptr inbounds %struct.vp702x_fe_state, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d, align 4
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %3, i32 0, i32 18
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 8
  %6 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dtv_property_cache, align 4
  %div = udiv i32 %7, 1000
  tail call void @mutex_lock_nested(ptr noundef %5, i32 noundef 0) #4
  %buf = getelementptr inbounds %struct.vp702x_device_state, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %buf, align 4
  %10 = getelementptr inbounds i8, ptr %9, i32 3
  %11 = call ptr @memset(ptr %10, i32 0, i32 7)
  %shr = lshr i32 %div, 8
  %12 = trunc i32 %shr to i8
  %conv = and i8 %12, 127
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv, ptr %9, align 1
  %conv2 = trunc i32 %div to i8
  %arrayidx3 = getelementptr i8, ptr %9, i32 1
  %14 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv2, ptr %arrayidx3, align 1
  %arrayidx4 = getelementptr i8, ptr %9, i32 2
  %15 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %arrayidx4, align 1
  %symbol_rate = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 10
  %16 = ptrtoint ptr %symbol_rate to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %symbol_rate, align 4
  %div5 = udiv i32 %17, 1000
  %conv6 = zext i32 %div5 to i64
  %shl = shl nuw nsw i64 %conv6, 20
  %18 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -4708950668997856449, i64 %shl, i32 0) #9, !srcloc !82
  %asmresult.i = extractvalue { i64, i32 } %18, 0
  %asmresult4.i = extractvalue { i64, i32 } %18, 1
  %19 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -4708950668997856449, i64 %shl, i64 %asmresult.i, i32 %asmresult4.i) #9, !srcloc !83
  %asmresult10.i = extractvalue { i64, i32 } %19, 0
  %div170371 = lshr i64 %asmresult10.i, 16
  %shr192 = lshr i64 %asmresult10.i, 28
  %conv194 = trunc i64 %shr192 to i8
  %arrayidx195 = getelementptr i8, ptr %9, i32 3
  %20 = ptrtoint ptr %arrayidx195 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv194, ptr %arrayidx195, align 1
  %shr196 = lshr i64 %asmresult10.i, 20
  %conv198 = trunc i64 %shr196 to i8
  %arrayidx199 = getelementptr i8, ptr %9, i32 4
  %21 = ptrtoint ptr %arrayidx199 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv198, ptr %arrayidx199, align 1
  %shl200 = shl nuw nsw i64 %div170371, 4
  %conv202 = trunc i64 %shl200 to i8
  %arrayidx203 = getelementptr i8, ptr %9, i32 5
  %22 = ptrtoint ptr %arrayidx203 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv202, ptr %arrayidx203, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_vp702x_debug to i32))
  %23 = load i32, ptr @dvb_usb_vp702x_debug, align 4
  %and204 = and i32 %23, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and204)
  %tobool205.not = icmp eq i32 %and204, 0
  br i1 %tobool205.not, label %entry.do.end216_crit_edge, label %do.end

entry.do.end216_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end216

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %24 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dtv_property_cache, align 4
  %26 = ptrtoint ptr %symbol_rate to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %symbol_rate, align 4
  %conv211 = trunc i64 %div170371 to i32
  %call213 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %25, i32 noundef %div, i32 noundef %div, i32 noundef %27, i32 noundef %conv211, i32 noundef %conv211) #8
  br label %do.end216

do.end216:                                        ; preds = %do.end, %entry.do.end216_crit_edge
  %voltage = getelementptr inbounds %struct.vp702x_fe_state, ptr %1, i32 0, i32 3
  %28 = ptrtoint ptr %voltage to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %voltage, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %29)
  %cmp217 = icmp eq i32 %29, 1
  br i1 %cmp217, label %if.then219, label %do.end216.if.end224_crit_edge

do.end216.if.end224_crit_edge:                    ; preds = %do.end216
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end224

if.then219:                                       ; preds = %do.end216
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx220 = getelementptr i8, ptr %9, i32 6
  %30 = ptrtoint ptr %arrayidx220 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx220, align 1
  %32 = or i8 %31, 64
  store i8 %32, ptr %arrayidx220, align 1
  br label %if.end224

if.end224:                                        ; preds = %if.then219, %do.end216.if.end224_crit_edge
  %33 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %9, align 1
  %35 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx3, align 1
  %add2.1.i = add i8 %34, %36
  %37 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx4, align 1
  %add2.2.i = add i8 %add2.1.i, %38
  %39 = ptrtoint ptr %arrayidx195 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx195, align 1
  %add2.3.i = add i8 %add2.2.i, %40
  %41 = ptrtoint ptr %arrayidx199 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx199, align 1
  %add2.4.i = add i8 %add2.3.i, %42
  %43 = ptrtoint ptr %arrayidx203 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx203, align 1
  %add2.5.i = add i8 %add2.4.i, %44
  %arrayidx.6.i = getelementptr i8, ptr %9, i32 6
  %45 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx.6.i, align 1
  %add2.6.i = add i8 %add2.5.i, %46
  %conv6.i = sub i8 0, %add2.6.i
  %arrayidx226 = getelementptr i8, ptr %9, i32 7
  %47 = ptrtoint ptr %arrayidx226 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %conv6.i, ptr %arrayidx226, align 1
  %status_check_interval = getelementptr inbounds %struct.vp702x_fe_state, ptr %1, i32 0, i32 10
  %48 = ptrtoint ptr %status_check_interval to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 250, ptr %status_check_interval, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %49 = load volatile i32, ptr @jiffies, align 128
  %next_status_check = getelementptr inbounds %struct.vp702x_fe_state, ptr %1, i32 0, i32 9
  %50 = ptrtoint ptr %next_status_check to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %next_status_check, align 4
  %51 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %d, align 4
  %call228 = tail call i32 @vp702x_usb_inout_op(ptr noundef %52, ptr noundef %9, i32 noundef 8, ptr noundef %9, i32 noundef 10, i32 noundef 100) #4
  %53 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %cmp231 = icmp eq i8 %54, 0
  br i1 %cmp231, label %land.lhs.true233, label %if.end224.do.body252_crit_edge

if.end224.do.body252_crit_edge:                   ; preds = %if.end224
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body252

land.lhs.true233:                                 ; preds = %if.end224
  %55 = ptrtoint ptr %arrayidx195 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx195, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %cmp236 = icmp eq i8 %56, 0
  br i1 %cmp236, label %do.body239, label %land.lhs.true233.do.body252_crit_edge

land.lhs.true233.do.body252_crit_edge:            ; preds = %land.lhs.true233
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body252

do.body239:                                       ; preds = %land.lhs.true233
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_vp702x_debug to i32))
  %57 = load i32, ptr @dvb_usb_vp702x_debug, align 4
  %and240 = and i32 %57, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and240)
  %tobool241.not = icmp eq i32 %and240, 0
  br i1 %tobool241.not, label %do.body239.if.end264_crit_edge, label %do.body239.if.end264.sink.split_crit_edge

do.body239.if.end264.sink.split_crit_edge:        ; preds = %do.body239
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end264.sink.split

do.body239.if.end264_crit_edge:                   ; preds = %do.body239
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end264

do.body252:                                       ; preds = %land.lhs.true233.do.body252_crit_edge, %if.end224.do.body252_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_vp702x_debug to i32))
  %58 = load i32, ptr @dvb_usb_vp702x_debug, align 4
  %and253 = and i32 %58, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and253)
  %tobool254.not = icmp eq i32 %and253, 0
  br i1 %tobool254.not, label %do.body252.if.end264_crit_edge, label %do.body252.if.end264.sink.split_crit_edge

do.body252.if.end264.sink.split_crit_edge:        ; preds = %do.body252
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end264.sink.split

do.body252.if.end264_crit_edge:                   ; preds = %do.body252
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end264

if.end264.sink.split:                             ; preds = %do.body252.if.end264.sink.split_crit_edge, %do.body239.if.end264.sink.split_crit_edge
  %.str.10.sink = phi ptr [ @.str.7, %do.body239.if.end264.sink.split_crit_edge ], [ @.str.10, %do.body252.if.end264.sink.split_crit_edge ]
  %call260 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.10.sink) #8
  br label %if.end264

if.end264:                                        ; preds = %if.end264.sink.split, %do.body252.if.end264_crit_edge, %do.body239.if.end264_crit_edge
  tail call void @mutex_unlock(ptr noundef %5) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vp702x_fe_get_tune_settings(ptr nocapture noundef readnone %fe, ptr nocapture noundef writeonly %tune) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_vp702x_debug to i32))
  %0 = load i32, ptr @dvb_usb_vp702x_debug, align 4
  %and = and i32 %0, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end2_crit_edge, label %do.end

entry.do.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.12) #8
  br label %do.end2

do.end2:                                          ; preds = %do.end, %entry.do.end2_crit_edge
  %1 = ptrtoint ptr %tune to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 2000, ptr %tune, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vp702x_fe_read_status(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %status) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  tail call fastcc void @vp702x_fe_refresh_state(ptr noundef %1)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_vp702x_debug to i32))
  %2 = load i32, ptr @dvb_usb_vp702x_debug, align 4
  %and = and i32 %2, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.13) #8
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %lock = getelementptr inbounds %struct.vp702x_fe_state, ptr %1, i32 0, i32 6
  %3 = ptrtoint ptr %lock to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %lock, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp = icmp eq i8 %4, 0
  %. = select i1 %cmp, i32 31, i32 0
  %5 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %., ptr %status, align 4
  %and8 = and i32 %., 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  %spec.select = select i1 %tobool9.not, i32 250, i32 1000
  %6 = getelementptr inbounds %struct.vp702x_fe_state, ptr %1, i32 0, i32 10
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %spec.select, ptr %6, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vp702x_fe_read_ber(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %ber) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  tail call fastcc void @vp702x_fe_refresh_state(ptr noundef %1)
  %2 = ptrtoint ptr %ber to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %ber, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vp702x_fe_read_signal_strength(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %strength) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  tail call fastcc void @vp702x_fe_refresh_state(ptr noundef %1)
  %sig = getelementptr inbounds %struct.vp702x_fe_state, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %sig to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %sig, align 1
  %conv = zext i8 %3 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %or = or i32 %shl, %conv
  %conv3 = trunc i32 %or to i16
  %4 = ptrtoint ptr %strength to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv3, ptr %strength, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vp702x_fe_read_snr(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %snr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  tail call fastcc void @vp702x_fe_refresh_state(ptr noundef %1)
  %snr1 = getelementptr inbounds %struct.vp702x_fe_state, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %snr1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %snr1, align 2
  %4 = and i8 %3, 31
  %and = zext i8 %4 to i16
  %mul = mul nuw nsw i16 %and, 255
  %div = udiv i16 %mul, 31
  %shl = shl nuw i16 %div, 8
  %or = or i16 %shl, %div
  %5 = ptrtoint ptr %snr to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %or, ptr %snr, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vp702x_fe_read_unc_blocks(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %unc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  tail call fastcc void @vp702x_fe_refresh_state(ptr noundef %1)
  %2 = ptrtoint ptr %unc to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %unc, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vp702x_fe_send_diseqc_msg(ptr nocapture noundef readonly %fe, ptr nocapture noundef readonly %m) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %d = getelementptr inbounds %struct.vp702x_fe_state, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d, align 4
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %3, i32 0, i32 18
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_vp702x_debug to i32))
  %6 = load i32, ptr @dvb_usb_vp702x_debug, align 4
  %and = and i32 %6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.14) #8
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %msg_len = getelementptr inbounds %struct.dvb_diseqc_master_cmd, ptr %m, i32 0, i32 1
  %7 = ptrtoint ptr %msg_len to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %msg_len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %8)
  %cmp = icmp ugt i8 %8, 4
  br i1 %cmp, label %do.end3.cleanup_crit_edge, label %if.end6

do.end3.cleanup_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end6:                                          ; preds = %do.end3
  tail call void @mutex_lock_nested(ptr noundef %5, i32 noundef 0) #4
  %buf = getelementptr inbounds %struct.vp702x_device_state, ptr %5, i32 0, i32 2
  %9 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %buf, align 4
  %arrayidx = getelementptr i8, ptr %10, i32 1
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 8, ptr %arrayidx, align 1
  %12 = ptrtoint ptr %msg_len to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %msg_len, align 1
  %arrayidx8 = getelementptr i8, ptr %10, i32 2
  %14 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %arrayidx8, align 1
  %arrayidx9 = getelementptr i8, ptr %10, i32 3
  %15 = load i8, ptr %msg_len, align 1
  %conv11 = zext i8 %15 to i32
  %16 = call ptr @memcpy(ptr %arrayidx9, ptr %m, i32 %conv11)
  %17 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %10, align 1
  %19 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx9, align 1
  %arrayidx.4.i = getelementptr i8, ptr %10, i32 4
  %21 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx.4.i, align 1
  %arrayidx.5.i = getelementptr i8, ptr %10, i32 5
  %23 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx.5.i, align 1
  %arrayidx.6.i = getelementptr i8, ptr %10, i32 6
  %25 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx.6.i, align 1
  %27 = add i8 %13, %18
  %28 = add i8 %27, %20
  %29 = add i8 %28, %22
  %30 = add i8 %29, %24
  %31 = add i8 %30, %26
  %add2.6.i.neg = sub i8 -8, %31
  %arrayidx13 = getelementptr i8, ptr %10, i32 7
  %32 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %add2.6.i.neg, ptr %arrayidx13, align 1
  %33 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %d, align 4
  %call15 = tail call i32 @vp702x_usb_inout_op(ptr noundef %34, ptr noundef %10, i32 noundef 8, ptr noundef %10, i32 noundef 10, i32 noundef 100) #4
  %35 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %cmp18 = icmp eq i8 %36, 0
  br i1 %cmp18, label %land.lhs.true, label %if.end6.do.body37_crit_edge

if.end6.do.body37_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body37

land.lhs.true:                                    ; preds = %if.end6
  %37 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %cmp22 = icmp eq i8 %38, 0
  br i1 %cmp22, label %do.body25, label %land.lhs.true.do.body37_crit_edge

land.lhs.true.do.body37_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body37

do.body25:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_vp702x_debug to i32))
  %39 = load i32, ptr @dvb_usb_vp702x_debug, align 4
  %and26 = and i32 %39, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %do.body25.if.end49_crit_edge, label %do.body25.if.end49.sink.split_crit_edge

do.body25.if.end49.sink.split_crit_edge:          ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end49.sink.split

do.body25.if.end49_crit_edge:                     ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end49

do.body37:                                        ; preds = %land.lhs.true.do.body37_crit_edge, %if.end6.do.body37_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_vp702x_debug to i32))
  %40 = load i32, ptr @dvb_usb_vp702x_debug, align 4
  %and38 = and i32 %40, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %do.body37.if.end49_crit_edge, label %do.body37.if.end49.sink.split_crit_edge

do.body37.if.end49.sink.split_crit_edge:          ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end49.sink.split

do.body37.if.end49_crit_edge:                     ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end49

if.end49.sink.split:                              ; preds = %do.body37.if.end49.sink.split_crit_edge, %do.body25.if.end49.sink.split_crit_edge
  %.str.19.sink = phi ptr [ @.str.16, %do.body25.if.end49.sink.split_crit_edge ], [ @.str.19, %do.body37.if.end49.sink.split_crit_edge ]
  %call45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.19.sink) #8
  br label %if.end49

if.end49:                                         ; preds = %if.end49.sink.split, %do.body37.if.end49_crit_edge, %do.body25.if.end49_crit_edge
  tail call void @mutex_unlock(ptr noundef %5) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end49, %do.end3.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end49 ], [ -22, %do.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vp702x_fe_send_diseqc_burst(ptr nocapture noundef readnone %fe, i32 noundef %burst) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_vp702x_debug to i32))
  %0 = load i32, ptr @dvb_usb_vp702x_debug, align 4
  %and = and i32 %0, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end2_crit_edge, label %do.end

entry.do.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.21) #8
  br label %do.end2

do.end2:                                          ; preds = %do.end, %entry.do.end2_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vp702x_fe_set_tone(ptr nocapture noundef readonly %fe, i32 noundef %tone) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %d = getelementptr inbounds %struct.vp702x_fe_state, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d, align 4
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %3, i32 0, i32 18
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_vp702x_debug to i32))
  %6 = load i32, ptr @dvb_usb_vp702x_debug, align 4
  %and = and i32 %6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.22) #8
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %tone_mode = getelementptr inbounds %struct.vp702x_fe_state, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %tone_mode to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %tone, ptr %tone_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tone)
  %cmp = icmp eq i32 %tone, 0
  %spec.select.neg = select i1 %cmp, i8 -2, i8 0
  %spec.select = select i1 %cmp, i8 2, i8 0
  %8 = getelementptr %struct.vp702x_fe_state, ptr %1, i32 0, i32 5, i32 2
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %spec.select, ptr %8, align 2
  %lnb_buf8 = getelementptr inbounds %struct.vp702x_fe_state, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %lnb_buf8 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %lnb_buf8, align 1
  %arrayidx.1.i = getelementptr %struct.vp702x_fe_state, ptr %1, i32 0, i32 5, i32 1
  %12 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.1.i, align 1
  %add2.1.i = add i8 %11, %13
  %arrayidx.3.i = getelementptr %struct.vp702x_fe_state, ptr %1, i32 0, i32 5, i32 3
  %14 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.3.i, align 1
  %16 = add i8 %add2.1.i, %15
  %arrayidx.4.i = getelementptr %struct.vp702x_fe_state, ptr %1, i32 0, i32 5, i32 4
  %17 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx.4.i, align 1
  %19 = add i8 %16, %18
  %arrayidx.5.i = getelementptr %struct.vp702x_fe_state, ptr %1, i32 0, i32 5, i32 5
  %20 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.5.i, align 1
  %22 = add i8 %19, %21
  %arrayidx.6.i = getelementptr %struct.vp702x_fe_state, ptr %1, i32 0, i32 5, i32 6
  %23 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx.6.i, align 1
  %25 = add i8 %22, %24
  %add2.6.i.neg = sub i8 %spec.select.neg, %25
  %arrayidx11 = getelementptr %struct.vp702x_fe_state, ptr %1, i32 0, i32 5, i32 7
  %26 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %add2.6.i.neg, ptr %arrayidx11, align 1
  tail call void @mutex_lock_nested(ptr noundef %5, i32 noundef 0) #4
  %buf12 = getelementptr inbounds %struct.vp702x_device_state, ptr %5, i32 0, i32 2
  %27 = ptrtoint ptr %buf12 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %buf12, align 4
  %29 = ptrtoint ptr %lnb_buf8 to i32
  call void @__asan_loadN_noabort(i32 %29, i32 8)
  %30 = load i64, ptr %lnb_buf8, align 4
  %31 = ptrtoint ptr %28 to i32
  call void @__asan_storeN_noabort(i32 %31, i32 8)
  store i64 %30, ptr %28, align 1
  %32 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %d, align 4
  %call16 = tail call i32 @vp702x_usb_inout_op(ptr noundef %33, ptr noundef %28, i32 noundef 8, ptr noundef %28, i32 noundef 10, i32 noundef 100) #4
  %arrayidx17 = getelementptr i8, ptr %28, i32 2
  %34 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx17, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %cmp18 = icmp eq i8 %35, 0
  br i1 %cmp18, label %land.lhs.true, label %do.end3.do.body38_crit_edge

do.end3.do.body38_crit_edge:                      ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body38

land.lhs.true:                                    ; preds = %do.end3
  %arrayidx20 = getelementptr i8, ptr %28, i32 3
  %36 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx20, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %cmp22 = icmp eq i8 %37, 0
  br i1 %cmp22, label %do.body25, label %land.lhs.true.do.body38_crit_edge

land.lhs.true.do.body38_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body38

do.body25:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_vp702x_debug to i32))
  %38 = load i32, ptr @dvb_usb_vp702x_debug, align 4
  %and26 = and i32 %38, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %do.body25.if.end50_crit_edge, label %do.body25.if.end50.sink.split_crit_edge

do.body25.if.end50.sink.split_crit_edge:          ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end50.sink.split

do.body25.if.end50_crit_edge:                     ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end50

do.body38:                                        ; preds = %land.lhs.true.do.body38_crit_edge, %do.end3.do.body38_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_vp702x_debug to i32))
  %39 = load i32, ptr @dvb_usb_vp702x_debug, align 4
  %and39 = and i32 %39, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %do.body38.if.end50_crit_edge, label %do.body38.if.end50.sink.split_crit_edge

do.body38.if.end50.sink.split_crit_edge:          ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end50.sink.split

do.body38.if.end50_crit_edge:                     ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end50

if.end50.sink.split:                              ; preds = %do.body38.if.end50.sink.split_crit_edge, %do.body25.if.end50.sink.split_crit_edge
  %.str.27.sink = phi ptr [ @.str.24, %do.body25.if.end50.sink.split_crit_edge ], [ @.str.27, %do.body38.if.end50.sink.split_crit_edge ]
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.27.sink) #8
  br label %if.end50

if.end50:                                         ; preds = %if.end50.sink.split, %do.body38.if.end50_crit_edge, %do.body25.if.end50_crit_edge
  tail call void @mutex_unlock(ptr noundef %5) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vp702x_fe_set_voltage(ptr nocapture noundef readonly %fe, i32 noundef %voltage) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %d = getelementptr inbounds %struct.vp702x_fe_state, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d, align 4
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %3, i32 0, i32 18
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_vp702x_debug to i32))
  %6 = load i32, ptr @dvb_usb_vp702x_debug, align 4
  %and = and i32 %6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.29) #8
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %voltage4 = getelementptr inbounds %struct.vp702x_fe_state, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %voltage4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %voltage, ptr %voltage4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %voltage)
  %cmp.not = icmp ne i32 %voltage, 2
  %spec.select.neg = sext i1 %cmp.not to i8
  %spec.select = zext i1 %cmp.not to i8
  %8 = getelementptr %struct.vp702x_fe_state, ptr %1, i32 0, i32 5, i32 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %spec.select, ptr %8, align 4
  %lnb_buf9 = getelementptr inbounds %struct.vp702x_fe_state, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %lnb_buf9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %lnb_buf9, align 1
  %arrayidx.1.i = getelementptr %struct.vp702x_fe_state, ptr %1, i32 0, i32 5, i32 1
  %12 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.1.i, align 1
  %add2.1.i = add i8 %11, %13
  %arrayidx.2.i = getelementptr %struct.vp702x_fe_state, ptr %1, i32 0, i32 5, i32 2
  %14 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.2.i, align 1
  %add2.2.i = add i8 %add2.1.i, %15
  %arrayidx.3.i = getelementptr %struct.vp702x_fe_state, ptr %1, i32 0, i32 5, i32 3
  %16 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.3.i, align 1
  %add2.3.i = add i8 %add2.2.i, %17
  %arrayidx.5.i = getelementptr %struct.vp702x_fe_state, ptr %1, i32 0, i32 5, i32 5
  %18 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.5.i, align 1
  %20 = add i8 %add2.3.i, %19
  %arrayidx.6.i = getelementptr %struct.vp702x_fe_state, ptr %1, i32 0, i32 5, i32 6
  %21 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx.6.i, align 1
  %23 = add i8 %20, %22
  %add2.6.i.neg = sub i8 %spec.select.neg, %23
  %arrayidx12 = getelementptr %struct.vp702x_fe_state, ptr %1, i32 0, i32 5, i32 7
  %24 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %add2.6.i.neg, ptr %arrayidx12, align 1
  tail call void @mutex_lock_nested(ptr noundef %5, i32 noundef 0) #4
  %buf13 = getelementptr inbounds %struct.vp702x_device_state, ptr %5, i32 0, i32 2
  %25 = ptrtoint ptr %buf13 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %buf13, align 4
  %27 = ptrtoint ptr %lnb_buf9 to i32
  call void @__asan_loadN_noabort(i32 %27, i32 8)
  %28 = load i64, ptr %lnb_buf9, align 4
  %29 = ptrtoint ptr %26 to i32
  call void @__asan_storeN_noabort(i32 %29, i32 8)
  store i64 %28, ptr %26, align 1
  %30 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %d, align 4
  %call17 = tail call i32 @vp702x_usb_inout_op(ptr noundef %31, ptr noundef %26, i32 noundef 8, ptr noundef %26, i32 noundef 10, i32 noundef 100) #4
  %arrayidx18 = getelementptr i8, ptr %26, i32 2
  %32 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx18, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %cmp19 = icmp eq i8 %33, 0
  br i1 %cmp19, label %land.lhs.true, label %do.end3.do.body39_crit_edge

do.end3.do.body39_crit_edge:                      ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body39

land.lhs.true:                                    ; preds = %do.end3
  %arrayidx21 = getelementptr i8, ptr %26, i32 3
  %34 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx21, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %cmp23 = icmp eq i8 %35, 0
  br i1 %cmp23, label %do.body26, label %land.lhs.true.do.body39_crit_edge

land.lhs.true.do.body39_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body39

do.body26:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_vp702x_debug to i32))
  %36 = load i32, ptr @dvb_usb_vp702x_debug, align 4
  %and27 = and i32 %36, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %do.body26.if.end51_crit_edge, label %do.body26.if.end51.sink.split_crit_edge

do.body26.if.end51.sink.split_crit_edge:          ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end51.sink.split

do.body26.if.end51_crit_edge:                     ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end51

do.body39:                                        ; preds = %land.lhs.true.do.body39_crit_edge, %do.end3.do.body39_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_vp702x_debug to i32))
  %37 = load i32, ptr @dvb_usb_vp702x_debug, align 4
  %and40 = and i32 %37, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %do.body39.if.end51_crit_edge, label %do.body39.if.end51.sink.split_crit_edge

do.body39.if.end51.sink.split_crit_edge:          ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end51.sink.split

do.body39.if.end51_crit_edge:                     ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end51

if.end51.sink.split:                              ; preds = %do.body39.if.end51.sink.split_crit_edge, %do.body26.if.end51.sink.split_crit_edge
  %.str.34.sink = phi ptr [ @.str.31, %do.body26.if.end51.sink.split_crit_edge ], [ @.str.34, %do.body39.if.end51.sink.split_crit_edge ]
  %call47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.34.sink) #8
  br label %if.end51

if.end51:                                         ; preds = %if.end51.sink.split, %do.body39.if.end51_crit_edge, %do.body26.if.end51_crit_edge
  tail call void @mutex_unlock(ptr noundef %5) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vp702x_usb_in_op(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vp702x_usb_inout_op(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vp702x_fe_refresh_state(ptr nocapture noundef %st) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %d = getelementptr inbounds %struct.vp702x_fe_state, ptr %st, i32 0, i32 1
  %0 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d, align 4
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  %next_status_check = getelementptr inbounds %struct.vp702x_fe_state, ptr %st, i32 0, i32 9
  %4 = ptrtoint ptr %next_status_check to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %next_status_check, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %5, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @mutex_lock_nested(ptr noundef %3, i32 noundef 0) #4
  %buf1 = getelementptr inbounds %struct.vp702x_device_state, ptr %3, i32 0, i32 2
  %7 = ptrtoint ptr %buf1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %buf1, align 4
  %9 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %d, align 4
  %call = tail call i32 @vp702x_usb_in_op(ptr noundef %10, i8 noundef zeroext -72, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %8, i32 noundef 10) #4
  %arrayidx = getelementptr i8, ptr %8, i32 4
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx, align 1
  %lock = getelementptr inbounds %struct.vp702x_fe_state, ptr %st, i32 0, i32 6
  %13 = ptrtoint ptr %lock to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %lock, align 4
  %14 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %d, align 4
  %call4 = tail call i32 @vp702x_usb_in_op(ptr noundef %15, i8 noundef zeroext -71, i16 noundef zeroext 17, i16 noundef zeroext 0, ptr noundef %8, i32 noundef 1) #4
  %16 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %8, align 1
  %snr = getelementptr inbounds %struct.vp702x_fe_state, ptr %st, i32 0, i32 8
  %18 = ptrtoint ptr %snr to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %snr, align 2
  %19 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %d, align 4
  %call7 = tail call i32 @vp702x_usb_in_op(ptr noundef %20, i8 noundef zeroext -71, i16 noundef zeroext 21, i16 noundef zeroext 0, ptr noundef %8, i32 noundef 1) #4
  %21 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %8, align 1
  %sig = getelementptr inbounds %struct.vp702x_fe_state, ptr %st, i32 0, i32 7
  %23 = ptrtoint ptr %sig to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %sig, align 1
  tail call void @mutex_unlock(ptr noundef %3) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %24 = load volatile i32, ptr @jiffies, align 128
  %status_check_interval = getelementptr inbounds %struct.vp702x_fe_state, ptr %st, i32 0, i32 10
  %25 = ptrtoint ptr %status_check_interval to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %status_check_interval, align 4
  %mul = mul i32 %26, 100
  %div = udiv i32 %mul, 1000
  %add = add i32 %div, %24
  %27 = ptrtoint ptr %next_status_check to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %add, ptr %next_status_check, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind allocsize(2) }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !17, !19, !20, !21, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !72}
!llvm.module.flags = !{!73, !74, !75, !76, !77, !78, !79, !80}
!llvm.ident = !{!81}

!0 = !{ptr @vp702x_fe_ops, !1, !"vp702x_fe_ops", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/dvb-usb/vp702x-fe.c", i32 344, i32 38}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/media/usb/dvb-usb/vp702x-fe.c", i32 200, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @vp702x_fe_init._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @vp702x_fe_init._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/media/usb/dvb-usb/vp702x-fe.c", i32 207, i32 2}
!10 = !{ptr @vp702x_fe_sleep._entry, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @vp702x_fe_sleep._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/media/usb/dvb-usb/vp702x-fe.c", i32 161, i32 2}
!14 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @vp702x_fe_set_frontend._entry, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @vp702x_fe_set_frontend._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/media/usb/dvb-usb/vp702x-fe.c", i32 188, i32 3}
!19 = !{ptr @vp702x_fe_set_frontend._entry.6, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @vp702x_fe_set_frontend._entry_ptr.8, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/media/usb/dvb-usb/vp702x-fe.c", i32 190, i32 3}
!23 = !{ptr @vp702x_fe_set_frontend._entry.9, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @vp702x_fe_set_frontend._entry_ptr.11, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/media/usb/dvb-usb/vp702x-fe.c", i32 130, i32 2}
!27 = !{ptr @vp702x_fe_get_tune_settings._entry, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @vp702x_fe_get_tune_settings._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/media/usb/dvb-usb/vp702x-fe.c", i32 76, i32 2}
!31 = !{ptr @vp702x_fe_read_status._entry, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @vp702x_fe_read_status._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/media/usb/dvb-usb/vp702x-fe.c", i32 218, i32 2}
!35 = !{ptr @vp702x_fe_send_diseqc_msg._entry, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @vp702x_fe_send_diseqc_msg._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/usb/dvb-usb/vp702x-fe.c", i32 234, i32 3}
!39 = !{ptr @vp702x_fe_send_diseqc_msg._entry.15, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @vp702x_fe_send_diseqc_msg._entry_ptr.17, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/usb/dvb-usb/vp702x-fe.c", i32 236, i32 3}
!43 = !{ptr @vp702x_fe_send_diseqc_msg._entry.18, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @vp702x_fe_send_diseqc_msg._entry_ptr.20, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/usb/dvb-usb/vp702x-fe.c", i32 246, i32 2}
!47 = !{ptr @vp702x_fe_send_diseqc_burst._entry, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @vp702x_fe_send_diseqc_burst._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/usb/dvb-usb/vp702x-fe.c", i32 257, i32 2}
!51 = !{ptr @vp702x_fe_set_tone._entry, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @vp702x_fe_set_tone._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.24, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/usb/dvb-usb/vp702x-fe.c", i32 275, i32 3}
!55 = !{ptr @vp702x_fe_set_tone._entry.23, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @vp702x_fe_set_tone._entry_ptr.25, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.27, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/usb/dvb-usb/vp702x-fe.c", i32 277, i32 3}
!59 = !{ptr @vp702x_fe_set_tone._entry.26, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @vp702x_fe_set_tone._entry_ptr.28, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.29, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/usb/dvb-usb/vp702x-fe.c", i32 290, i32 2}
!63 = !{ptr @vp702x_fe_set_voltage._entry, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @vp702x_fe_set_voltage._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.31, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/media/usb/dvb-usb/vp702x-fe.c", i32 308, i32 3}
!67 = !{ptr @vp702x_fe_set_voltage._entry.30, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @vp702x_fe_set_voltage._entry_ptr.32, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.34, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/media/usb/dvb-usb/vp702x-fe.c", i32 310, i32 3}
!71 = !{ptr @vp702x_fe_set_voltage._entry.33, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @vp702x_fe_set_voltage._entry_ptr.35, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{i32 1, !"wchar_size", i32 2}
!74 = !{i32 1, !"min_enum_size", i32 4}
!75 = !{i32 8, !"branch-target-enforcement", i32 0}
!76 = !{i32 8, !"sign-return-address", i32 0}
!77 = !{i32 8, !"sign-return-address-all", i32 0}
!78 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!79 = !{i32 7, !"uwtable", i32 1}
!80 = !{i32 7, !"frame-pointer", i32 2}
!81 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!82 = !{i64 558568, i64 558595, i64 558617, i64 558645}
!83 = !{i64 558976, i64 559003, i64 559036, i64 559057, i64 559084, i64 559110}
