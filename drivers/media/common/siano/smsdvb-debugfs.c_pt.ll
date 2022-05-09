; ModuleID = '/llk/IR_all_yes/drivers/media/common/siano/smsdvb-debugfs.c_pt.bc'
source_filename = "../drivers/media/common/siano/smsdvb-debugfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.smsdvb_client_t = type { %struct.list_head, ptr, ptr, %struct.dvb_adapter, %struct.dvb_demux, %struct.dmxdev, %struct.dvb_frontend, i32, %struct.completion, %struct.completion, i32, i32, i32, i32, i32, i32, i32, i8, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, ptr, [6 x i8], ptr, ptr, ptr, i32, ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.dvb_demux = type { %struct.dmx_demux, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.list_head, [20 x ptr], [20 x i16], %struct.list_head, [204 x i8], i32, %struct.mutex, %struct.spinlock, ptr, i64, i32, i32, i32 }
%struct.dmx_demux = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.dmxdev = type { ptr, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.dvb_ringbuffer, %struct.dvb_vb2_ctx, %struct.mutex, %struct.spinlock }
%struct.dvb_ringbuffer = type { ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dvb_vb2_ctx = type { %struct.vb2_queue, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, i32, i32, i32, i32, i32, i32, i32, i32, [21 x i8] }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.92], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.92 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.93 }>
%union.anon.93 = type { i64 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.smscore_device_t = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.spinlock, i32, ptr, i32, i32, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.completion, %struct.completion, %struct.completion, %struct.completion, %struct.completion, %struct.completion, %struct.completion, %struct.completion, %struct.completion, %struct.completion, %struct.completion, %struct.completion, %struct.wait_queue_head, i32, i32, ptr, i32, i16, %struct.ir_t, i8, i32, ptr }
%struct.ir_t = type { ptr, [40 x i8], [32 x i8], ptr, i32, i32 }
%struct.smsdvb_debugfs = type { %struct.kref, %struct.spinlock, [4096 x i8], i32, i8, %struct.wait_queue_head }
%struct.sms_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [10 x i32] }
%struct.sms_isdbt_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x %struct.sms_isdbt_layer_stats], i32 }
%struct.sms_isdbt_layer_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sms_isdbt_stats_ex = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x %struct.sms_isdbt_layer_stats], i32, i32, i32, i32, i32, i32, i32, i32, [8 x i8], i32, i32, [4 x i32] }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.94, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.95, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.96, ptr, %struct.address_space, %struct.list_head, %union.anon.97, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.94 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.95 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.96 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.97 = type { ptr }

@smsdvb_debugfs_usb_root = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@smsdvb_debugfs_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 466, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016%s:%s: Unable to create debugfs %s directory.\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"smsdvb_debugfs_create\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/media/common/siano/smsdvb-debugfs.c\00", [52 x i8] zeroinitializer }, align 32
@smsdvb_debugfs_create._entry_ptr = internal global ptr @smsdvb_debugfs_create._entry, section ".printk_index", align 4
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"smsdvb\00", [25 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"stats\00", [26 x i8] zeroinitializer }, align 32
@debugfs_stats_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @smsdvb_stats_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @smsdvb_stats_poll, ptr null, ptr null, ptr null, i32 0, ptr @smsdvb_stats_open, ptr null, ptr @smsdvb_stats_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@smsdvb_debugfs_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&debug_data->stats_queue\00", [39 x i8] zeroinitializer }, align 32
@smsdvb_debugfs_create.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&debug_data->lock\00", [46 x i8] zeroinitializer }, align 32
@usb_debug_root = external dso_local local_unnamed_addr global ptr, align 4
@smsdvb_debugfs_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 525, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013%s:%s: Couldn't create sysfs node for smsdvb\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"smsdvb_debugfs_register\00", [40 x i8] zeroinitializer }, align 32
@smsdvb_debugfs_register._entry_ptr = internal global ptr @smsdvb_debugfs_register._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"is_rf_locked = %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"is_demod_locked = %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"is_external_lna_on = %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"SNR = %d\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ber = %d\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"FIB_CRC = %d\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ts_per = %d\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"MFER = %d\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"RSSI = %d\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"in_band_pwr = %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"carrier_offset = %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"modem_state = %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"frequency = %d\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bandwidth = %d\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"transmission_mode = %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"guard_interval = %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"code_rate = %d\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"lp_code_rate = %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hierarchy = %d\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"constellation = %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"burst_size = %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"burst_duration = %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"burst_cycle_time = %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"calc_burst_cycle_time = %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"num_of_rows = %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"num_of_padd_cols = %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"num_of_punct_cols = %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"error_ts_packets = %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"total_ts_packets = %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"num_of_valid_mpe_tlbs = %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"num_of_invalid_mpe_tlbs = %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"num_of_corrected_mpe_tlbs = %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ber_error_count = %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ber_bit_count = %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"sms_to_host_tx_errors = %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pre_ber = %d\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cell_id = %d\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dvbh_srv_ind_hp = %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dvbh_srv_ind_lp = %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"num_mpe_received = %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"statistics_type = %d\09\00", [42 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"full_size = %d\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"is_rf_locked = %d\09\09\00", [44 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"is_demod_locked = %d\09\00", [42 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"SNR = %d dB\09\09\00", [18 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"RSSI = %d dBm\09\09\00", [16 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"in_band_pwr = %d dBm\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"carrier_offset = %d\09\00", [43 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bandwidth = %d\09\09\00", [47 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"frequency = %d Hz\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"transmission_mode = %d\09\00", [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"modem_state = %d\09\09\00", [45 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"system_type = %d\09\09\00", [45 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"partial_reception = %d\09\00", [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"num_of_layers = %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"\0ALayer %d\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\09code_rate = %d\09\00", [47 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\09ber = %-5d\09\00", [19 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\09ber_error_count = %-5d\09\00", [39 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ber_bit_count = %-5d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\09pre_ber = %-5d\09\00", [47 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\09ts_per = %-5d\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\09error_ts_packets = %-5d\09\00", [38 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"total_ts_packets = %-5d\09\00", [39 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ti_ldepth_i = %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\09number_of_segments = %d\09\00", [38 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tmcc_errors = %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"segment_number = %d\09\00", [43 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tune_bw = %d\0A\00", [18 x i8] zeroinitializer }, align 32
@___asan_gen_.79 = private unnamed_addr constant [24 x i8] c"smsdvb_debugfs_usb_root\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 21, i32 23 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 465, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 470, i32 26 }
@___asan_gen_.100 = private unnamed_addr constant [18 x i8] c"debugfs_stats_ops\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 441, i32 37 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 486, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 487, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 525, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 49, i32 9 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 51, i32 9 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 53, i32 9 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 55, i32 9 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 57, i32 9 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 59, i32 9 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 61, i32 9 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 63, i32 9 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 65, i32 9 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 67, i32 9 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 69, i32 9 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 71, i32 9 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 73, i32 9 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 75, i32 9 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 77, i32 9 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 81, i32 9 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 83, i32 9 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 85, i32 9 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 87, i32 9 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 89, i32 9 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 91, i32 9 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 93, i32 9 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 95, i32 9 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 97, i32 9 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 100, i32 9 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 102, i32 9 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 104, i32 9 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 106, i32 9 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 108, i32 9 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 110, i32 9 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 112, i32 9 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 114, i32 9 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 116, i32 9 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 118, i32 9 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 120, i32 9 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 122, i32 9 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 124, i32 9 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 126, i32 9 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 128, i32 9 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 130, i32 9 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 152, i32 9 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 154, i32 9 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 157, i32 9 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 159, i32 9 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 163, i32 9 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 165, i32 9 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 167, i32 9 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 169, i32 9 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 171, i32 9 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 173, i32 9 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 175, i32 9 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 177, i32 9 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 181, i32 9 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 183, i32 9 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 185, i32 9 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 194, i32 42 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 195, i32 42 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 199, i32 42 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 202, i32 10 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 204, i32 42 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 206, i32 42 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 208, i32 42 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 211, i32 10 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 214, i32 10 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 216, i32 42 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 219, i32 10 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 221, i32 42 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 279, i32 41 }
@___asan_gen_.328 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.329 = private constant [47 x i8] c"../drivers/media/common/siano/smsdvb-debugfs.c\00", align 1
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 281, i32 41 }
@llvm.compiler.used = appending global [86 x ptr] [ptr @smsdvb_debugfs_create._entry, ptr @smsdvb_debugfs_create._entry_ptr, ptr @smsdvb_debugfs_register._entry, ptr @smsdvb_debugfs_register._entry_ptr, ptr @smsdvb_debugfs_usb_root, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @debugfs_stats_ops, ptr @smsdvb_debugfs_create.__key, ptr @.str.5, ptr @smsdvb_debugfs_create.__key.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78], section "llvm.metadata"
@0 = internal global [84 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smsdvb_debugfs_usb_root to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smsdvb_debugfs_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debugfs_stats_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smsdvb_debugfs_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smsdvb_debugfs_create.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smsdvb_debugfs_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smsdvb_debugfs_create(ptr noundef %client) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %coredev1 = getelementptr inbounds %struct.smsdvb_client_t, ptr %client, i32 0, i32 1
  %0 = ptrtoint ptr %coredev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %coredev1, align 8
  %2 = load ptr, ptr @smsdvb_debugfs_usb_root, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %is_usb_device = getelementptr inbounds %struct.smscore_device_t, ptr %1, i32 0, i32 42
  %3 = ptrtoint ptr %is_usb_device to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %is_usb_device, align 4, !range !171
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool2.not = icmp eq i8 %4, 0
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %devpath = getelementptr inbounds %struct.smscore_device_t, ptr %1, i32 0, i32 13
  %call = tail call ptr @debugfs_create_dir(ptr noundef %devpath, ptr noundef nonnull %2) #6
  %debugfs = getelementptr inbounds %struct.smsdvb_client_t, ptr %client, i32 0, i32 18
  %5 = ptrtoint ptr %debugfs to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call, ptr %debugfs, align 4
  %tobool.not.i = icmp eq ptr %call, null
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %do.end, label %if.end9

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, ptr noundef %devpath) #9
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call11 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.4, i16 noundef zeroext 420, ptr noundef nonnull %call, ptr noundef %client, ptr noundef nonnull @debugfs_stats_ops) #6
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %debugfs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %debugfs, align 4
  tail call void @debugfs_remove(ptr noundef %7) #6
  br label %cleanup

if.end15:                                         ; preds = %if.end9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 4204) #10
  %tobool17.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool17.not, label %if.end15.cleanup_crit_edge, label %if.end19

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end19:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  %debug_data20 = getelementptr inbounds %struct.smsdvb_client_t, ptr %client, i32 0, i32 19
  %9 = ptrtoint ptr %debug_data20 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call7.i.i, ptr %debug_data20, align 8
  %prt_dvb_stats = getelementptr inbounds %struct.smsdvb_client_t, ptr %client, i32 0, i32 20
  %10 = ptrtoint ptr %prt_dvb_stats to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @smsdvb_print_dvb_stats, ptr %prt_dvb_stats, align 4
  %prt_isdb_stats = getelementptr inbounds %struct.smsdvb_client_t, ptr %client, i32 0, i32 21
  %11 = ptrtoint ptr %prt_isdb_stats to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @smsdvb_print_isdb_stats, ptr %prt_isdb_stats, align 8
  %prt_isdb_stats_ex = getelementptr inbounds %struct.smsdvb_client_t, ptr %client, i32 0, i32 22
  %12 = ptrtoint ptr %prt_isdb_stats_ex to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @smsdvb_print_isdb_stats_ex, ptr %prt_isdb_stats_ex, align 4
  %stats_queue = getelementptr inbounds %struct.smsdvb_debugfs, ptr %call7.i.i, i32 0, i32 5
  tail call void @__init_waitqueue_head(ptr noundef %stats_queue, ptr noundef nonnull @.str.5, ptr noundef nonnull @smsdvb_debugfs_create.__key) #6
  %lock = getelementptr inbounds %struct.smsdvb_debugfs, ptr %call7.i.i, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.7, ptr noundef nonnull @smsdvb_debugfs_create.__key.6, i16 noundef signext 3) #6
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call7.i.i, i32 noundef 4) #6
  %13 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile i32 1, ptr %call7.i.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.end15.cleanup_crit_edge, %if.then13, %do.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end ], [ 0, %if.end19 ], [ -12, %if.then13 ], [ -19, %lor.lhs.false.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smsdvb_print_dvb_stats(ptr noundef %debug_data, ptr noundef readonly %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.smsdvb_debugfs, ptr %debug_data, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock) #6
  %stats_count = getelementptr inbounds %struct.smsdvb_debugfs, ptr %debug_data, i32 0, i32 3
  %0 = ptrtoint ptr %stats_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %stats_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_unlock(ptr noundef %lock) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %stats_data = getelementptr inbounds %struct.smsdvb_debugfs, ptr %debug_data, i32 0, i32 2
  %is_rf_locked = getelementptr inbounds %struct.sms_stats, ptr %p, i32 0, i32 1
  %2 = ptrtoint ptr %is_rf_locked to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %is_rf_locked, align 4
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %stats_data, i32 noundef 4096, ptr noundef nonnull @.str.10, i32 noundef %3) #6
  %arrayidx2 = getelementptr i8, ptr %stats_data, i32 %call
  %sub3 = sub i32 4096, %call
  %is_demod_locked = getelementptr inbounds %struct.sms_stats, ptr %p, i32 0, i32 2
  %4 = ptrtoint ptr %is_demod_locked to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %is_demod_locked, align 4
  %call4 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx2, i32 noundef %sub3, ptr noundef nonnull @.str.11, i32 noundef %5) #6
  %add5 = add i32 %call4, %call
  %arrayidx6 = getelementptr i8, ptr %stats_data, i32 %add5
  %sub7 = sub i32 4096, %add5
  %is_external_lna_on = getelementptr inbounds %struct.sms_stats, ptr %p, i32 0, i32 3
  %6 = ptrtoint ptr %is_external_lna_on to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %is_external_lna_on, align 4
  %call8 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx6, i32 noundef %sub7, ptr noundef nonnull @.str.12, i32 noundef %7) #6
  %add9 = add i32 %call8, %add5
  %arrayidx10 = getelementptr i8, ptr %stats_data, i32 %add9
  %sub11 = sub i32 4096, %add9
  %SNR = getelementptr inbounds %struct.sms_stats, ptr %p, i32 0, i32 4
  %8 = ptrtoint ptr %SNR to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %SNR, align 4
  %call12 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx10, i32 noundef %sub11, ptr noundef nonnull @.str.13, i32 noundef %9) #6
  %add13 = add i32 %call12, %add9
  %arrayidx14 = getelementptr i8, ptr %stats_data, i32 %add13
  %sub15 = sub i32 4096, %add13
  %ber = getelementptr inbounds %struct.sms_stats, ptr %p, i32 0, i32 5
  %10 = ptrtoint ptr %ber to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ber, align 4
  %call16 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx14, i32 noundef %sub15, ptr noundef nonnull @.str.14, i32 noundef %11) #6
  %add17 = add i32 %call16, %add13
  %arrayidx18 = getelementptr i8, ptr %stats_data, i32 %add17
  %sub19 = sub i32 4096, %add17
  %FIB_CRC = getelementptr inbounds %struct.sms_stats, ptr %p, i32 0, i32 6
  %12 = ptrtoint ptr %FIB_CRC to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %FIB_CRC, align 4
  %call20 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx18, i32 noundef %sub19, ptr noundef nonnull @.str.15, i32 noundef %13) #6
  %add21 = add i32 %call20, %add17
  %arrayidx22 = getelementptr i8, ptr %stats_data, i32 %add21
  %sub23 = sub i32 4096, %add21
  %ts_per = getelementptr inbounds %struct.sms_stats, ptr %p, i32 0, i32 7
  %14 = ptrtoint ptr %ts_per to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ts_per, align 4
  %call24 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx22, i32 noundef %sub23, ptr noundef nonnull @.str.16, i32 noundef %15) #6
  %add25 = add i32 %call24, %add21
  %arrayidx26 = getelementptr i8, ptr %stats_data, i32 %add25
  %sub27 = sub i32 4096, %add25
  %MFER = getelementptr inbounds %struct.sms_stats, ptr %p, i32 0, i32 8
  %16 = ptrtoint ptr %MFER to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %MFER, align 4
  %call28 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx26, i32 noundef %sub27, ptr noundef nonnull @.str.17, i32 noundef %17) #6
  %add29 = add i32 %call28, %add25
  %arrayidx30 = getelementptr i8, ptr %stats_data, i32 %add29
  %sub31 = sub i32 4096, %add29
  %RSSI = getelementptr inbounds %struct.sms_stats, ptr %p, i32 0, i32 9
  %18 = ptrtoint ptr %RSSI to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %RSSI, align 4
  %call32 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx30, i32 noundef %sub31, ptr noundef nonnull @.str.18, i32 noundef %19) #6
  %add33 = add i32 %call32, %add29
  %arrayidx34 = getelementptr i8, ptr %stats_data, i32 %add33
  %sub35 = sub i32 4096, %add33
  %in_band_pwr = getelementptr inbounds %struct.sms_stats, ptr %p, i32 0, i32 10
  %20 = ptrtoint ptr %in_band_pwr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %in_band_pwr, align 4
  %call36 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx34, i32 noundef %sub35, ptr noundef nonnull @.str.19, i32 noundef %21) #6
  %add37 = add i32 %call36, %add33
  %arrayidx38 = getelementptr i8, ptr %stats_data, i32 %add37
  %sub39 = sub i32 4096, %add37
  %carrier_offset = getelementptr inbounds %struct.sms_stats, ptr %p, i32 0, i32 11
  %22 = ptrtoint ptr %carrier_offset to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %carrier_offset, align 4
  %call40 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx38, i32 noundef %sub39, ptr noundef nonnull @.str.20, i32 noundef %23) #6
  %add41 = add i32 %call40, %add37
  %arrayidx42 = getelementptr i8, ptr %stats_data, i32 %add41
  %sub43 = sub i32 4096, %add41
  %modem_state = getelementptr inbounds %struct.sms_stats, ptr %p, i32 0, i32 15
  %24 = ptrtoint ptr %modem_state to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %modem_state, align 4
  %call44 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx42, i32 noundef %sub43, ptr noundef nonnull @.str.21, i32 noundef %25) #6
  %add45 = add i32 %call44, %add41
  %arrayidx46 = getelementptr i8, ptr %stats_data, i32 %add45
  %sub47 = sub i32 4096, %add45
  %frequency = getelementptr inbounds %struct.sms_stats, ptr %p, i32 0, i32 12
  %26 = ptrtoint ptr %frequency to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %frequency, align 4
  %call48 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx46, i32 noundef %sub47, ptr noundef nonnull @.str.22, i32 noundef %27) #6
  %add49 = add i32 %call48, %add45
  %arrayidx50 = getelementptr i8, ptr %stats_data, i32 %add49
  %sub51 = sub i32 4096, %add49
  %bandwidth = getelementptr inbounds %struct.sms_stats, ptr %p, i32 0, i32 13
  %28 = ptrtoint ptr %bandwidth to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %bandwidth, align 4
  %call52 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx50, i32 noundef %sub51, ptr noundef nonnull @.str.23, i32 noundef %29) #6
  %add53 = add i32 %call52, %add49
  %arrayidx54 = getelementptr i8, ptr %stats_data, i32 %add53
  %sub55 = sub i32 4096, %add53
  %transmission_mode = getelementptr inbounds %struct.sms_stats, ptr %p, i32 0, i32 14
  %30 = ptrtoint ptr %transmission_mode to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %transmission_mode, align 4
  %call56 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx54, i32 noundef %sub55, ptr noundef nonnull @.str.24, i32 noundef %31) #6
  %add57 = add i32 %call56, %add53
  %arrayidx58 = getelementptr i8, ptr %stats_data, i32 %add57
  %sub59 = sub i32 4096, %add57
  %32 = ptrtoint ptr %modem_state to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %modem_state, align 4
  %call61 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx58, i32 noundef %sub59, ptr noundef nonnull @.str.21, i32 noundef %33) #6
  %add62 = add i32 %call61, %add57
  %arrayidx63 = getelementptr i8, ptr %stats_data, i32 %add62
  %sub64 = sub i32 4096, %add62
  %guard_interval = getelementptr inbounds %struct.sms_stats, ptr %p, i32 0, i32 16
  %34 = ptrtoint ptr %guard_interval to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %guard_interval, align 4
  %call65 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx63, i32 noundef %sub64, ptr noundef nonnull @.str.25, i32 noundef %35) #6
  %add66 = add i32 %call65, %add62
  %arrayidx67 = getelementptr i8, ptr %stats_data, i32 %add66
  %sub68 = sub i32 4096, %add66
  %code_rate = getelementptr inbounds %struct.sms_stats, ptr %p, i32 0, i32 17
  %36 = ptrtoint ptr %code_rate to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %code_rate, align 4
  %call69 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx67, i32 noundef %sub68, ptr noundef nonnull @.str.26, i32 noundef %37) #6
  %add70 = add i32 %call69, %add66
  %arrayidx71 = getelementptr i8, ptr %stats_data, i32 %add70
  %sub72 = sub i32 4096, %add70
  %lp_code_rate = getelementptr inbounds %struct.sms_stats, ptr %p, i32 0, i32 18
  %38 = ptrtoint ptr %lp_code_rate to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %lp_code_rate, align 4
  %call73 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx71, i32 noundef %sub72, ptr noundef nonnull @.str.27, i32 noundef %39) #6
  %add74 = add i32 %call73, %add70
  %arrayidx75 = getelementptr i8, ptr %stats_data, i32 %add74
  %sub76 = sub i32 4096, %add74
  %hierarchy = getelementptr inbounds %struct.sms_stats, ptr %p, i32 0, i32 19
  %40 = ptrtoint ptr %hierarchy to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %hierarchy, align 4
  %call77 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx75, i32 noundef %sub76, ptr noundef nonnull @.str.28, i32 noundef %41) #6
  %add78 = add i32 %call77, %add74
  %arrayidx79 = getelementptr i8, ptr %stats_data, i32 %add78
  %sub80 = sub i32 4096, %add78
  %constellation = getelementptr inbounds %struct.sms_stats, ptr %p, i32 0, i32 20
  %42 = ptrtoint ptr %constellation to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %constellation, align 4
  %call81 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx79, i32 noundef %sub80, ptr noundef nonnull @.str.29, i32 noundef %43) #6
  %add82 = add i32 %call81, %add78
  %arrayidx83 = getelementptr i8, ptr %stats_data, i32 %add82
  %sub84 = sub i32 4096, %add82
  %burst_size = getelementptr inbounds %struct.sms_stats, ptr %p, i32 0, i32 21
  %44 = ptrtoint ptr %burst_size to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %burst_size, align 4
  %call85 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx83, i32 noundef %sub84, ptr noundef nonnull @.str.30, i32 noundef %45) #6
  %add86 = add i32 %call85, %add82
  %arrayidx87 = getelementptr i8, ptr %stats_data, i32 %add86
  %sub88 = sub i32 4096, %add86
  %burst_duration = getelementptr inbounds %struct.sms_stats, ptr %p, i32 0, i32 22
  %46 = ptrtoint ptr %burst_duration to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %burst_duration, align 4
  %call89 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx87, i32 noundef %sub88, ptr noundef nonnull @.str.31, i32 noundef %47) #6
  %add90 = add i32 %call89, %add86
  %arrayidx91 = getelementptr i8, ptr %stats_data, i32 %add90
  %sub92 = sub i32 4096, %add90
  %burst_cycle_time = getelementptr inbounds %struct.sms_stats, ptr %p, i32 0, i32 23
  %48 = ptrtoint ptr %burst_cycle_time to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %burst_cycle_time, align 4
  %call93 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx91, i32 noundef %sub92, ptr noundef nonnull @.str.32, i32 noundef %49) #6
  %add94 = add i32 %call93, %add90
  %arrayidx95 = getelementptr i8, ptr %stats_data, i32 %add94
  %sub96 = sub i32 4096, %add94
  %calc_burst_cycle_time = getelementptr inbounds %struct.sms_stats, ptr %p, i32 0, i32 24
  %50 = ptrtoint ptr %calc_burst_cycle_time to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %calc_burst_cycle_time, align 4
  %call97 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx95, i32 noundef %sub96, ptr noundef nonnull @.str.33, i32 noundef %51) #6
  %add98 = add i32 %call97, %add94
  %arrayidx99 = getelementptr i8, ptr %stats_data, i32 %add98
  %sub100 = sub i32 4096, %add98
  %num_of_rows = getelementptr inbounds %struct.sms_stats, ptr %p, i32 0, i32 25
  %52 = ptrtoint ptr %num_of_rows to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %num_of_rows, align 4
  %call101 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx99, i32 noundef %sub100, ptr noundef nonnull @.str.34, i32 noundef %53) #6
  %add102 = add i32 %call101, %add98
  %arrayidx103 = getelementptr i8, ptr %stats_data, i32 %add102
  %sub104 = sub i32 4096, %add102
  %num_of_padd_cols = getelementptr inbounds %struct.sms_stats, ptr %p, i32 0, i32 26
  %54 = ptrtoint ptr %num_of_padd_cols to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %num_of_padd_cols, align 4
  %call105 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx103, i32 noundef %sub104, ptr noundef nonnull @.str.35, i32 noundef %55) #6
  %add106 = add i32 %call105, %add102
  %arrayidx107 = getelementptr i8, ptr %stats_data, i32 %add106
  %sub108 = sub i32 4096, %add106
  %num_of_punct_cols = getelementptr inbounds %struct.sms_stats, ptr %p, i32 0, i32 27
  %56 = ptrtoint ptr %num_of_punct_cols to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %num_of_punct_cols, align 4
  %call109 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx107, i32 noundef %sub108, ptr noundef nonnull @.str.36, i32 noundef %57) #6
  %add110 = add i32 %call109, %add106
  %arrayidx111 = getelementptr i8, ptr %stats_data, i32 %add110
  %sub112 = sub i32 4096, %add110
  %error_ts_packets = getelementptr inbounds %struct.sms_stats, ptr %p, i32 0, i32 28
  %58 = ptrtoint ptr %error_ts_packets to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %error_ts_packets, align 4
  %call113 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx111, i32 noundef %sub112, ptr noundef nonnull @.str.37, i32 noundef %59) #6
  %add114 = add i32 %call113, %add110
  %arrayidx115 = getelementptr i8, ptr %stats_data, i32 %add114
  %sub116 = sub i32 4096, %add114
  %total_ts_packets = getelementptr inbounds %struct.sms_stats, ptr %p, i32 0, i32 29
  %60 = ptrtoint ptr %total_ts_packets to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %total_ts_packets, align 4
  %call117 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx115, i32 noundef %sub116, ptr noundef nonnull @.str.38, i32 noundef %61) #6
  %add118 = add i32 %call117, %add114
  %arrayidx119 = getelementptr i8, ptr %stats_data, i32 %add118
  %sub120 = sub i32 4096, %add118
  %num_of_valid_mpe_tlbs = getelementptr inbounds %struct.sms_stats, ptr %p, i32 0, i32 30
  %62 = ptrtoint ptr %num_of_valid_mpe_tlbs to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %num_of_valid_mpe_tlbs, align 4
  %call121 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx119, i32 noundef %sub120, ptr noundef nonnull @.str.39, i32 noundef %63) #6
  %add122 = add i32 %call121, %add118
  %arrayidx123 = getelementptr i8, ptr %stats_data, i32 %add122
  %sub124 = sub i32 4096, %add122
  %num_of_invalid_mpe_tlbs = getelementptr inbounds %struct.sms_stats, ptr %p, i32 0, i32 31
  %64 = ptrtoint ptr %num_of_invalid_mpe_tlbs to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %num_of_invalid_mpe_tlbs, align 4
  %call125 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx123, i32 noundef %sub124, ptr noundef nonnull @.str.40, i32 noundef %65) #6
  %add126 = add i32 %call125, %add122
  %arrayidx127 = getelementptr i8, ptr %stats_data, i32 %add126
  %sub128 = sub i32 4096, %add126
  %num_of_corrected_mpe_tlbs = getelementptr inbounds %struct.sms_stats, ptr %p, i32 0, i32 32
  %66 = ptrtoint ptr %num_of_corrected_mpe_tlbs to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %num_of_corrected_mpe_tlbs, align 4
  %call129 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx127, i32 noundef %sub128, ptr noundef nonnull @.str.41, i32 noundef %67) #6
  %add130 = add i32 %call129, %add126
  %arrayidx131 = getelementptr i8, ptr %stats_data, i32 %add130
  %sub132 = sub i32 4096, %add130
  %ber_error_count = getelementptr inbounds %struct.sms_stats, ptr %p, i32 0, i32 33
  %68 = ptrtoint ptr %ber_error_count to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %ber_error_count, align 4
  %call133 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx131, i32 noundef %sub132, ptr noundef nonnull @.str.42, i32 noundef %69) #6
  %add134 = add i32 %call133, %add130
  %arrayidx135 = getelementptr i8, ptr %stats_data, i32 %add134
  %sub136 = sub i32 4096, %add134
  %ber_bit_count = getelementptr inbounds %struct.sms_stats, ptr %p, i32 0, i32 34
  %70 = ptrtoint ptr %ber_bit_count to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %ber_bit_count, align 4
  %call137 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx135, i32 noundef %sub136, ptr noundef nonnull @.str.43, i32 noundef %71) #6
  %add138 = add i32 %call137, %add134
  %arrayidx139 = getelementptr i8, ptr %stats_data, i32 %add138
  %sub140 = sub i32 4096, %add138
  %sms_to_host_tx_errors = getelementptr inbounds %struct.sms_stats, ptr %p, i32 0, i32 35
  %72 = ptrtoint ptr %sms_to_host_tx_errors to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %sms_to_host_tx_errors, align 4
  %call141 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx139, i32 noundef %sub140, ptr noundef nonnull @.str.44, i32 noundef %73) #6
  %add142 = add i32 %call141, %add138
  %arrayidx143 = getelementptr i8, ptr %stats_data, i32 %add142
  %sub144 = sub i32 4096, %add142
  %pre_ber = getelementptr inbounds %struct.sms_stats, ptr %p, i32 0, i32 36
  %74 = ptrtoint ptr %pre_ber to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %pre_ber, align 4
  %call145 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx143, i32 noundef %sub144, ptr noundef nonnull @.str.45, i32 noundef %75) #6
  %add146 = add i32 %call145, %add142
  %arrayidx147 = getelementptr i8, ptr %stats_data, i32 %add146
  %sub148 = sub i32 4096, %add146
  %cell_id = getelementptr inbounds %struct.sms_stats, ptr %p, i32 0, i32 37
  %76 = ptrtoint ptr %cell_id to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %cell_id, align 4
  %call149 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx147, i32 noundef %sub148, ptr noundef nonnull @.str.46, i32 noundef %77) #6
  %add150 = add i32 %call149, %add146
  %arrayidx151 = getelementptr i8, ptr %stats_data, i32 %add150
  %sub152 = sub i32 4096, %add150
  %dvbh_srv_ind_hp = getelementptr inbounds %struct.sms_stats, ptr %p, i32 0, i32 38
  %78 = ptrtoint ptr %dvbh_srv_ind_hp to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %dvbh_srv_ind_hp, align 4
  %call153 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx151, i32 noundef %sub152, ptr noundef nonnull @.str.47, i32 noundef %79) #6
  %add154 = add i32 %call153, %add150
  %arrayidx155 = getelementptr i8, ptr %stats_data, i32 %add154
  %sub156 = sub i32 4096, %add154
  %dvbh_srv_ind_lp = getelementptr inbounds %struct.sms_stats, ptr %p, i32 0, i32 39
  %80 = ptrtoint ptr %dvbh_srv_ind_lp to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %dvbh_srv_ind_lp, align 4
  %call157 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx155, i32 noundef %sub156, ptr noundef nonnull @.str.48, i32 noundef %81) #6
  %add158 = add i32 %call157, %add154
  %arrayidx159 = getelementptr i8, ptr %stats_data, i32 %add158
  %sub160 = sub i32 4096, %add158
  %num_mpe_received = getelementptr inbounds %struct.sms_stats, ptr %p, i32 0, i32 40
  %82 = ptrtoint ptr %num_mpe_received to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %num_mpe_received, align 4
  %call161 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx159, i32 noundef %sub160, ptr noundef nonnull @.str.49, i32 noundef %83) #6
  %add162 = add i32 %call161, %add158
  %84 = ptrtoint ptr %stats_count to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %add162, ptr %stats_count, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock) #6
  %stats_queue = getelementptr inbounds %struct.smsdvb_debugfs, ptr %debug_data, i32 0, i32 5
  tail call void @__wake_up(ptr noundef %stats_queue, i32 noundef 3, i32 noundef 1, ptr noundef null) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smsdvb_print_isdb_stats(ptr noundef %debug_data, ptr noundef readonly %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.smsdvb_debugfs, ptr %debug_data, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock) #6
  %stats_count = getelementptr inbounds %struct.smsdvb_debugfs, ptr %debug_data, i32 0, i32 3
  %0 = ptrtoint ptr %stats_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %stats_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_unlock(ptr noundef %lock) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %stats_data = getelementptr inbounds %struct.smsdvb_debugfs, ptr %debug_data, i32 0, i32 2
  %2 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %p, align 4
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %stats_data, i32 noundef 4096, ptr noundef nonnull @.str.50, i32 noundef %3) #6
  %arrayidx2 = getelementptr i8, ptr %stats_data, i32 %call
  %sub3 = sub i32 4096, %call
  %full_size = getelementptr inbounds %struct.sms_isdbt_stats, ptr %p, i32 0, i32 1
  %4 = ptrtoint ptr %full_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %full_size, align 4
  %call4 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx2, i32 noundef %sub3, ptr noundef nonnull @.str.51, i32 noundef %5) #6
  %add5 = add i32 %call4, %call
  %arrayidx6 = getelementptr i8, ptr %stats_data, i32 %add5
  %sub7 = sub i32 4096, %add5
  %is_rf_locked = getelementptr inbounds %struct.sms_isdbt_stats, ptr %p, i32 0, i32 2
  %6 = ptrtoint ptr %is_rf_locked to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %is_rf_locked, align 4
  %call8 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx6, i32 noundef %sub7, ptr noundef nonnull @.str.52, i32 noundef %7) #6
  %add9 = add i32 %call8, %add5
  %arrayidx10 = getelementptr i8, ptr %stats_data, i32 %add9
  %sub11 = sub i32 4096, %add9
  %is_demod_locked = getelementptr inbounds %struct.sms_isdbt_stats, ptr %p, i32 0, i32 3
  %8 = ptrtoint ptr %is_demod_locked to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %is_demod_locked, align 4
  %call12 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx10, i32 noundef %sub11, ptr noundef nonnull @.str.53, i32 noundef %9) #6
  %add13 = add i32 %call12, %add9
  %arrayidx14 = getelementptr i8, ptr %stats_data, i32 %add13
  %sub15 = sub i32 4096, %add13
  %is_external_lna_on = getelementptr inbounds %struct.sms_isdbt_stats, ptr %p, i32 0, i32 4
  %10 = ptrtoint ptr %is_external_lna_on to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %is_external_lna_on, align 4
  %call16 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx14, i32 noundef %sub15, ptr noundef nonnull @.str.12, i32 noundef %11) #6
  %add17 = add i32 %call16, %add13
  %arrayidx18 = getelementptr i8, ptr %stats_data, i32 %add17
  %sub19 = sub i32 4096, %add17
  %SNR = getelementptr inbounds %struct.sms_isdbt_stats, ptr %p, i32 0, i32 5
  %12 = ptrtoint ptr %SNR to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %SNR, align 4
  %call20 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx18, i32 noundef %sub19, ptr noundef nonnull @.str.54, i32 noundef %13) #6
  %add21 = add i32 %call20, %add17
  %arrayidx22 = getelementptr i8, ptr %stats_data, i32 %add21
  %sub23 = sub i32 4096, %add21
  %RSSI = getelementptr inbounds %struct.sms_isdbt_stats, ptr %p, i32 0, i32 6
  %14 = ptrtoint ptr %RSSI to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %RSSI, align 4
  %call24 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx22, i32 noundef %sub23, ptr noundef nonnull @.str.55, i32 noundef %15) #6
  %add25 = add i32 %call24, %add21
  %arrayidx26 = getelementptr i8, ptr %stats_data, i32 %add25
  %sub27 = sub i32 4096, %add25
  %in_band_pwr = getelementptr inbounds %struct.sms_isdbt_stats, ptr %p, i32 0, i32 7
  %16 = ptrtoint ptr %in_band_pwr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %in_band_pwr, align 4
  %call28 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx26, i32 noundef %sub27, ptr noundef nonnull @.str.56, i32 noundef %17) #6
  %add29 = add i32 %call28, %add25
  %arrayidx30 = getelementptr i8, ptr %stats_data, i32 %add29
  %sub31 = sub i32 4096, %add29
  %carrier_offset = getelementptr inbounds %struct.sms_isdbt_stats, ptr %p, i32 0, i32 8
  %18 = ptrtoint ptr %carrier_offset to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %carrier_offset, align 4
  %call32 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx30, i32 noundef %sub31, ptr noundef nonnull @.str.57, i32 noundef %19) #6
  %add33 = add i32 %call32, %add29
  %arrayidx34 = getelementptr i8, ptr %stats_data, i32 %add33
  %sub35 = sub i32 4096, %add33
  %bandwidth = getelementptr inbounds %struct.sms_isdbt_stats, ptr %p, i32 0, i32 10
  %20 = ptrtoint ptr %bandwidth to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bandwidth, align 4
  %call36 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx34, i32 noundef %sub35, ptr noundef nonnull @.str.58, i32 noundef %21) #6
  %add37 = add i32 %call36, %add33
  %arrayidx38 = getelementptr i8, ptr %stats_data, i32 %add37
  %sub39 = sub i32 4096, %add37
  %frequency = getelementptr inbounds %struct.sms_isdbt_stats, ptr %p, i32 0, i32 9
  %22 = ptrtoint ptr %frequency to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %frequency, align 4
  %call40 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx38, i32 noundef %sub39, ptr noundef nonnull @.str.59, i32 noundef %23) #6
  %add41 = add i32 %call40, %add37
  %arrayidx42 = getelementptr i8, ptr %stats_data, i32 %add41
  %sub43 = sub i32 4096, %add41
  %transmission_mode = getelementptr inbounds %struct.sms_isdbt_stats, ptr %p, i32 0, i32 11
  %24 = ptrtoint ptr %transmission_mode to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %transmission_mode, align 4
  %call44 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx42, i32 noundef %sub43, ptr noundef nonnull @.str.60, i32 noundef %25) #6
  %add45 = add i32 %call44, %add41
  %arrayidx46 = getelementptr i8, ptr %stats_data, i32 %add45
  %sub47 = sub i32 4096, %add45
  %modem_state = getelementptr inbounds %struct.sms_isdbt_stats, ptr %p, i32 0, i32 12
  %26 = ptrtoint ptr %modem_state to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %modem_state, align 4
  %call48 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx46, i32 noundef %sub47, ptr noundef nonnull @.str.61, i32 noundef %27) #6
  %add49 = add i32 %call48, %add45
  %arrayidx50 = getelementptr i8, ptr %stats_data, i32 %add49
  %sub51 = sub i32 4096, %add49
  %guard_interval = getelementptr inbounds %struct.sms_isdbt_stats, ptr %p, i32 0, i32 13
  %28 = ptrtoint ptr %guard_interval to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %guard_interval, align 4
  %call52 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx50, i32 noundef %sub51, ptr noundef nonnull @.str.25, i32 noundef %29) #6
  %add53 = add i32 %call52, %add49
  %arrayidx54 = getelementptr i8, ptr %stats_data, i32 %add53
  %sub55 = sub i32 4096, %add53
  %system_type = getelementptr inbounds %struct.sms_isdbt_stats, ptr %p, i32 0, i32 14
  %30 = ptrtoint ptr %system_type to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %system_type, align 4
  %call56 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx54, i32 noundef %sub55, ptr noundef nonnull @.str.62, i32 noundef %31) #6
  %add57 = add i32 %call56, %add53
  %arrayidx58 = getelementptr i8, ptr %stats_data, i32 %add57
  %sub59 = sub i32 4096, %add57
  %partial_reception = getelementptr inbounds %struct.sms_isdbt_stats, ptr %p, i32 0, i32 15
  %32 = ptrtoint ptr %partial_reception to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %partial_reception, align 4
  %call60 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx58, i32 noundef %sub59, ptr noundef nonnull @.str.63, i32 noundef %33) #6
  %add61 = add i32 %call60, %add57
  %arrayidx62 = getelementptr i8, ptr %stats_data, i32 %add61
  %sub63 = sub i32 4096, %add61
  %num_of_layers = getelementptr inbounds %struct.sms_isdbt_stats, ptr %p, i32 0, i32 16
  %34 = ptrtoint ptr %num_of_layers to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %num_of_layers, align 4
  %call64 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx62, i32 noundef %sub63, ptr noundef nonnull @.str.64, i32 noundef %35) #6
  %add65 = add i32 %call64, %add61
  %arrayidx66 = getelementptr i8, ptr %stats_data, i32 %add65
  %sub67 = sub i32 4096, %add65
  %sms_to_host_tx_errors = getelementptr inbounds %struct.sms_isdbt_stats, ptr %p, i32 0, i32 18
  %36 = ptrtoint ptr %sms_to_host_tx_errors to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %sms_to_host_tx_errors, align 4
  %call68 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx66, i32 noundef %sub67, ptr noundef nonnull @.str.44, i32 noundef %37) #6
  %add69 = add i32 %call68, %add65
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end
  %n.0337 = phi i32 [ %add69, %if.end ], [ %n.1, %for.inc.for.body_crit_edge ]
  %i.0335 = phi i32 [ 0, %if.end ], [ %inc, %for.inc.for.body_crit_edge ]
  %number_of_segments = getelementptr %struct.sms_isdbt_stats, ptr %p, i32 0, i32 17, i32 %i.0335, i32 10
  %38 = ptrtoint ptr %number_of_segments to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %number_of_segments, align 4
  %40 = add i32 %39, -14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -13, i32 %40)
  %41 = icmp ult i32 %40, -13
  br i1 %41, label %for.body.for.inc_crit_edge, label %if.end77

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end77:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx70 = getelementptr %struct.sms_isdbt_stats, ptr %p, i32 0, i32 17, i32 %i.0335
  %arrayidx78 = getelementptr i8, ptr %stats_data, i32 %n.0337
  %sub79 = sub i32 4096, %n.0337
  %call80 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx78, i32 noundef %sub79, ptr noundef nonnull @.str.65, i32 noundef %i.0335) #6
  %add81 = add i32 %call80, %n.0337
  %arrayidx82 = getelementptr i8, ptr %stats_data, i32 %add81
  %sub83 = sub i32 4096, %add81
  %42 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx70, align 4
  %call86 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx82, i32 noundef %sub83, ptr noundef nonnull @.str.66, i32 noundef %43) #6
  %add87 = add i32 %call86, %add81
  %arrayidx88 = getelementptr i8, ptr %stats_data, i32 %add87
  %sub89 = sub i32 4096, %add87
  %constellation = getelementptr %struct.sms_isdbt_stats, ptr %p, i32 0, i32 17, i32 %i.0335, i32 1
  %44 = ptrtoint ptr %constellation to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %constellation, align 4
  %call92 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx88, i32 noundef %sub89, ptr noundef nonnull @.str.29, i32 noundef %45) #6
  %add93 = add i32 %call92, %add87
  %arrayidx94 = getelementptr i8, ptr %stats_data, i32 %add93
  %sub95 = sub i32 4096, %add93
  %ber = getelementptr %struct.sms_isdbt_stats, ptr %p, i32 0, i32 17, i32 %i.0335, i32 2
  %46 = ptrtoint ptr %ber to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %ber, align 4
  %call98 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx94, i32 noundef %sub95, ptr noundef nonnull @.str.67, i32 noundef %47) #6
  %add99 = add i32 %call98, %add93
  %arrayidx100 = getelementptr i8, ptr %stats_data, i32 %add99
  %sub101 = sub i32 4096, %add99
  %ber_error_count = getelementptr %struct.sms_isdbt_stats, ptr %p, i32 0, i32 17, i32 %i.0335, i32 3
  %48 = ptrtoint ptr %ber_error_count to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %ber_error_count, align 4
  %call104 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx100, i32 noundef %sub101, ptr noundef nonnull @.str.68, i32 noundef %49) #6
  %add105 = add i32 %call104, %add99
  %arrayidx106 = getelementptr i8, ptr %stats_data, i32 %add105
  %sub107 = sub i32 4096, %add105
  %ber_bit_count = getelementptr %struct.sms_isdbt_stats, ptr %p, i32 0, i32 17, i32 %i.0335, i32 4
  %50 = ptrtoint ptr %ber_bit_count to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %ber_bit_count, align 4
  %call110 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx106, i32 noundef %sub107, ptr noundef nonnull @.str.69, i32 noundef %51) #6
  %add111 = add i32 %call110, %add105
  %arrayidx112 = getelementptr i8, ptr %stats_data, i32 %add111
  %sub113 = sub i32 4096, %add111
  %pre_ber = getelementptr %struct.sms_isdbt_stats, ptr %p, i32 0, i32 17, i32 %i.0335, i32 5
  %52 = ptrtoint ptr %pre_ber to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %pre_ber, align 4
  %call116 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx112, i32 noundef %sub113, ptr noundef nonnull @.str.70, i32 noundef %53) #6
  %add117 = add i32 %call116, %add111
  %arrayidx118 = getelementptr i8, ptr %stats_data, i32 %add117
  %sub119 = sub i32 4096, %add117
  %ts_per = getelementptr %struct.sms_isdbt_stats, ptr %p, i32 0, i32 17, i32 %i.0335, i32 6
  %54 = ptrtoint ptr %ts_per to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %ts_per, align 4
  %call122 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx118, i32 noundef %sub119, ptr noundef nonnull @.str.71, i32 noundef %55) #6
  %add123 = add i32 %call122, %add117
  %arrayidx124 = getelementptr i8, ptr %stats_data, i32 %add123
  %sub125 = sub i32 4096, %add123
  %error_ts_packets = getelementptr %struct.sms_isdbt_stats, ptr %p, i32 0, i32 17, i32 %i.0335, i32 7
  %56 = ptrtoint ptr %error_ts_packets to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %error_ts_packets, align 4
  %call128 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx124, i32 noundef %sub125, ptr noundef nonnull @.str.72, i32 noundef %57) #6
  %add129 = add i32 %call128, %add123
  %arrayidx130 = getelementptr i8, ptr %stats_data, i32 %add129
  %sub131 = sub i32 4096, %add129
  %total_ts_packets = getelementptr %struct.sms_isdbt_stats, ptr %p, i32 0, i32 17, i32 %i.0335, i32 8
  %58 = ptrtoint ptr %total_ts_packets to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %total_ts_packets, align 4
  %call134 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx130, i32 noundef %sub131, ptr noundef nonnull @.str.73, i32 noundef %59) #6
  %add135 = add i32 %call134, %add129
  %arrayidx136 = getelementptr i8, ptr %stats_data, i32 %add135
  %sub137 = sub i32 4096, %add135
  %ti_ldepth_i = getelementptr %struct.sms_isdbt_stats, ptr %p, i32 0, i32 17, i32 %i.0335, i32 9
  %60 = ptrtoint ptr %ti_ldepth_i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %ti_ldepth_i, align 4
  %call140 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx136, i32 noundef %sub137, ptr noundef nonnull @.str.74, i32 noundef %61) #6
  %add141 = add i32 %call140, %add135
  %arrayidx142 = getelementptr i8, ptr %stats_data, i32 %add141
  %sub143 = sub i32 4096, %add141
  %62 = ptrtoint ptr %number_of_segments to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %number_of_segments, align 4
  %call147 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx142, i32 noundef %sub143, ptr noundef nonnull @.str.75, i32 noundef %63) #6
  %add148 = add i32 %call147, %add141
  %arrayidx149 = getelementptr i8, ptr %stats_data, i32 %add148
  %sub150 = sub i32 4096, %add148
  %tmcc_errors = getelementptr %struct.sms_isdbt_stats, ptr %p, i32 0, i32 17, i32 %i.0335, i32 11
  %64 = ptrtoint ptr %tmcc_errors to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %tmcc_errors, align 4
  %call153 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx149, i32 noundef %sub150, ptr noundef nonnull @.str.76, i32 noundef %65) #6
  %add154 = add i32 %call153, %add148
  br label %for.inc

for.inc:                                          ; preds = %if.end77, %for.body.for.inc_crit_edge
  %n.1 = phi i32 [ %n.0337, %for.body.for.inc_crit_edge ], [ %add154, %if.end77 ]
  %inc = add nuw nsw i32 %i.0335, 1
  %exitcond.not = icmp eq i32 %inc, 3
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  %66 = ptrtoint ptr %stats_count to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %n.1, ptr %stats_count, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock) #6
  %stats_queue = getelementptr inbounds %struct.smsdvb_debugfs, ptr %debug_data, i32 0, i32 5
  tail call void @__wake_up(ptr noundef %stats_queue, i32 noundef 3, i32 noundef 1, ptr noundef null) #6
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smsdvb_print_isdb_stats_ex(ptr noundef %debug_data, ptr noundef readonly %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.smsdvb_debugfs, ptr %debug_data, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock) #6
  %stats_count = getelementptr inbounds %struct.smsdvb_debugfs, ptr %debug_data, i32 0, i32 3
  %0 = ptrtoint ptr %stats_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %stats_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_unlock(ptr noundef %lock) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %stats_data = getelementptr inbounds %struct.smsdvb_debugfs, ptr %debug_data, i32 0, i32 2
  %2 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %p, align 4
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %stats_data, i32 noundef 4096, ptr noundef nonnull @.str.50, i32 noundef %3) #6
  %arrayidx2 = getelementptr i8, ptr %stats_data, i32 %call
  %sub3 = sub i32 4096, %call
  %full_size = getelementptr inbounds %struct.sms_isdbt_stats_ex, ptr %p, i32 0, i32 1
  %4 = ptrtoint ptr %full_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %full_size, align 4
  %call4 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx2, i32 noundef %sub3, ptr noundef nonnull @.str.51, i32 noundef %5) #6
  %add5 = add i32 %call4, %call
  %arrayidx6 = getelementptr i8, ptr %stats_data, i32 %add5
  %sub7 = sub i32 4096, %add5
  %is_rf_locked = getelementptr inbounds %struct.sms_isdbt_stats_ex, ptr %p, i32 0, i32 2
  %6 = ptrtoint ptr %is_rf_locked to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %is_rf_locked, align 4
  %call8 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx6, i32 noundef %sub7, ptr noundef nonnull @.str.52, i32 noundef %7) #6
  %add9 = add i32 %call8, %add5
  %arrayidx10 = getelementptr i8, ptr %stats_data, i32 %add9
  %sub11 = sub i32 4096, %add9
  %is_demod_locked = getelementptr inbounds %struct.sms_isdbt_stats_ex, ptr %p, i32 0, i32 3
  %8 = ptrtoint ptr %is_demod_locked to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %is_demod_locked, align 4
  %call12 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx10, i32 noundef %sub11, ptr noundef nonnull @.str.53, i32 noundef %9) #6
  %add13 = add i32 %call12, %add9
  %arrayidx14 = getelementptr i8, ptr %stats_data, i32 %add13
  %sub15 = sub i32 4096, %add13
  %is_external_lna_on = getelementptr inbounds %struct.sms_isdbt_stats_ex, ptr %p, i32 0, i32 4
  %10 = ptrtoint ptr %is_external_lna_on to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %is_external_lna_on, align 4
  %call16 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx14, i32 noundef %sub15, ptr noundef nonnull @.str.12, i32 noundef %11) #6
  %add17 = add i32 %call16, %add13
  %arrayidx18 = getelementptr i8, ptr %stats_data, i32 %add17
  %sub19 = sub i32 4096, %add17
  %SNR = getelementptr inbounds %struct.sms_isdbt_stats_ex, ptr %p, i32 0, i32 5
  %12 = ptrtoint ptr %SNR to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %SNR, align 4
  %call20 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx18, i32 noundef %sub19, ptr noundef nonnull @.str.54, i32 noundef %13) #6
  %add21 = add i32 %call20, %add17
  %arrayidx22 = getelementptr i8, ptr %stats_data, i32 %add21
  %sub23 = sub i32 4096, %add21
  %RSSI = getelementptr inbounds %struct.sms_isdbt_stats_ex, ptr %p, i32 0, i32 6
  %14 = ptrtoint ptr %RSSI to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %RSSI, align 4
  %call24 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx22, i32 noundef %sub23, ptr noundef nonnull @.str.55, i32 noundef %15) #6
  %add25 = add i32 %call24, %add21
  %arrayidx26 = getelementptr i8, ptr %stats_data, i32 %add25
  %sub27 = sub i32 4096, %add25
  %in_band_pwr = getelementptr inbounds %struct.sms_isdbt_stats_ex, ptr %p, i32 0, i32 7
  %16 = ptrtoint ptr %in_band_pwr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %in_band_pwr, align 4
  %call28 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx26, i32 noundef %sub27, ptr noundef nonnull @.str.56, i32 noundef %17) #6
  %add29 = add i32 %call28, %add25
  %arrayidx30 = getelementptr i8, ptr %stats_data, i32 %add29
  %sub31 = sub i32 4096, %add29
  %carrier_offset = getelementptr inbounds %struct.sms_isdbt_stats_ex, ptr %p, i32 0, i32 8
  %18 = ptrtoint ptr %carrier_offset to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %carrier_offset, align 4
  %call32 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx30, i32 noundef %sub31, ptr noundef nonnull @.str.57, i32 noundef %19) #6
  %add33 = add i32 %call32, %add29
  %arrayidx34 = getelementptr i8, ptr %stats_data, i32 %add33
  %sub35 = sub i32 4096, %add33
  %bandwidth = getelementptr inbounds %struct.sms_isdbt_stats_ex, ptr %p, i32 0, i32 10
  %20 = ptrtoint ptr %bandwidth to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bandwidth, align 4
  %call36 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx34, i32 noundef %sub35, ptr noundef nonnull @.str.58, i32 noundef %21) #6
  %add37 = add i32 %call36, %add33
  %arrayidx38 = getelementptr i8, ptr %stats_data, i32 %add37
  %sub39 = sub i32 4096, %add37
  %frequency = getelementptr inbounds %struct.sms_isdbt_stats_ex, ptr %p, i32 0, i32 9
  %22 = ptrtoint ptr %frequency to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %frequency, align 4
  %call40 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx38, i32 noundef %sub39, ptr noundef nonnull @.str.59, i32 noundef %23) #6
  %add41 = add i32 %call40, %add37
  %arrayidx42 = getelementptr i8, ptr %stats_data, i32 %add41
  %sub43 = sub i32 4096, %add41
  %transmission_mode = getelementptr inbounds %struct.sms_isdbt_stats_ex, ptr %p, i32 0, i32 11
  %24 = ptrtoint ptr %transmission_mode to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %transmission_mode, align 4
  %call44 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx42, i32 noundef %sub43, ptr noundef nonnull @.str.60, i32 noundef %25) #6
  %add45 = add i32 %call44, %add41
  %arrayidx46 = getelementptr i8, ptr %stats_data, i32 %add45
  %sub47 = sub i32 4096, %add45
  %modem_state = getelementptr inbounds %struct.sms_isdbt_stats_ex, ptr %p, i32 0, i32 12
  %26 = ptrtoint ptr %modem_state to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %modem_state, align 4
  %call48 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx46, i32 noundef %sub47, ptr noundef nonnull @.str.61, i32 noundef %27) #6
  %add49 = add i32 %call48, %add45
  %arrayidx50 = getelementptr i8, ptr %stats_data, i32 %add49
  %sub51 = sub i32 4096, %add49
  %guard_interval = getelementptr inbounds %struct.sms_isdbt_stats_ex, ptr %p, i32 0, i32 13
  %28 = ptrtoint ptr %guard_interval to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %guard_interval, align 4
  %call52 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx50, i32 noundef %sub51, ptr noundef nonnull @.str.25, i32 noundef %29) #6
  %add53 = add i32 %call52, %add49
  %arrayidx54 = getelementptr i8, ptr %stats_data, i32 %add53
  %sub55 = sub i32 4096, %add53
  %system_type = getelementptr inbounds %struct.sms_isdbt_stats_ex, ptr %p, i32 0, i32 14
  %30 = ptrtoint ptr %system_type to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %system_type, align 4
  %call56 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx54, i32 noundef %sub55, ptr noundef nonnull @.str.62, i32 noundef %31) #6
  %add57 = add i32 %call56, %add53
  %arrayidx58 = getelementptr i8, ptr %stats_data, i32 %add57
  %sub59 = sub i32 4096, %add57
  %partial_reception = getelementptr inbounds %struct.sms_isdbt_stats_ex, ptr %p, i32 0, i32 15
  %32 = ptrtoint ptr %partial_reception to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %partial_reception, align 4
  %call60 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx58, i32 noundef %sub59, ptr noundef nonnull @.str.63, i32 noundef %33) #6
  %add61 = add i32 %call60, %add57
  %arrayidx62 = getelementptr i8, ptr %stats_data, i32 %add61
  %sub63 = sub i32 4096, %add61
  %num_of_layers = getelementptr inbounds %struct.sms_isdbt_stats_ex, ptr %p, i32 0, i32 16
  %34 = ptrtoint ptr %num_of_layers to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %num_of_layers, align 4
  %call64 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx62, i32 noundef %sub63, ptr noundef nonnull @.str.64, i32 noundef %35) #6
  %add65 = add i32 %call64, %add61
  %arrayidx66 = getelementptr i8, ptr %stats_data, i32 %add65
  %sub67 = sub i32 4096, %add65
  %segment_number = getelementptr inbounds %struct.sms_isdbt_stats_ex, ptr %p, i32 0, i32 17
  %36 = ptrtoint ptr %segment_number to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %segment_number, align 4
  %call68 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx66, i32 noundef %sub67, ptr noundef nonnull @.str.77, i32 noundef %37) #6
  %add69 = add i32 %call68, %add65
  %arrayidx70 = getelementptr i8, ptr %stats_data, i32 %add69
  %sub71 = sub i32 4096, %add69
  %tune_bw = getelementptr inbounds %struct.sms_isdbt_stats_ex, ptr %p, i32 0, i32 18
  %38 = ptrtoint ptr %tune_bw to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %tune_bw, align 4
  %call72 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx70, i32 noundef %sub71, ptr noundef nonnull @.str.78, i32 noundef %39) #6
  %add73 = add i32 %call72, %add69
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end
  %n.0346 = phi i32 [ %add73, %if.end ], [ %n.1, %for.inc.for.body_crit_edge ]
  %i.0344 = phi i32 [ 0, %if.end ], [ %inc, %for.inc.for.body_crit_edge ]
  %number_of_segments = getelementptr %struct.sms_isdbt_stats_ex, ptr %p, i32 0, i32 19, i32 %i.0344, i32 10
  %40 = ptrtoint ptr %number_of_segments to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %number_of_segments, align 4
  %42 = add i32 %41, -14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -13, i32 %42)
  %43 = icmp ult i32 %42, -13
  br i1 %43, label %for.body.for.inc_crit_edge, label %if.end81

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end81:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx74 = getelementptr %struct.sms_isdbt_stats_ex, ptr %p, i32 0, i32 19, i32 %i.0344
  %arrayidx82 = getelementptr i8, ptr %stats_data, i32 %n.0346
  %sub83 = sub i32 4096, %n.0346
  %call84 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx82, i32 noundef %sub83, ptr noundef nonnull @.str.65, i32 noundef %i.0344) #6
  %add85 = add i32 %call84, %n.0346
  %arrayidx86 = getelementptr i8, ptr %stats_data, i32 %add85
  %sub87 = sub i32 4096, %add85
  %44 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx74, align 4
  %call90 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx86, i32 noundef %sub87, ptr noundef nonnull @.str.66, i32 noundef %45) #6
  %add91 = add i32 %call90, %add85
  %arrayidx92 = getelementptr i8, ptr %stats_data, i32 %add91
  %sub93 = sub i32 4096, %add91
  %constellation = getelementptr %struct.sms_isdbt_stats_ex, ptr %p, i32 0, i32 19, i32 %i.0344, i32 1
  %46 = ptrtoint ptr %constellation to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %constellation, align 4
  %call96 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx92, i32 noundef %sub93, ptr noundef nonnull @.str.29, i32 noundef %47) #6
  %add97 = add i32 %call96, %add91
  %arrayidx98 = getelementptr i8, ptr %stats_data, i32 %add97
  %sub99 = sub i32 4096, %add97
  %ber = getelementptr %struct.sms_isdbt_stats_ex, ptr %p, i32 0, i32 19, i32 %i.0344, i32 2
  %48 = ptrtoint ptr %ber to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %ber, align 4
  %call102 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx98, i32 noundef %sub99, ptr noundef nonnull @.str.67, i32 noundef %49) #6
  %add103 = add i32 %call102, %add97
  %arrayidx104 = getelementptr i8, ptr %stats_data, i32 %add103
  %sub105 = sub i32 4096, %add103
  %ber_error_count = getelementptr %struct.sms_isdbt_stats_ex, ptr %p, i32 0, i32 19, i32 %i.0344, i32 3
  %50 = ptrtoint ptr %ber_error_count to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %ber_error_count, align 4
  %call108 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx104, i32 noundef %sub105, ptr noundef nonnull @.str.68, i32 noundef %51) #6
  %add109 = add i32 %call108, %add103
  %arrayidx110 = getelementptr i8, ptr %stats_data, i32 %add109
  %sub111 = sub i32 4096, %add109
  %ber_bit_count = getelementptr %struct.sms_isdbt_stats_ex, ptr %p, i32 0, i32 19, i32 %i.0344, i32 4
  %52 = ptrtoint ptr %ber_bit_count to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %ber_bit_count, align 4
  %call114 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx110, i32 noundef %sub111, ptr noundef nonnull @.str.69, i32 noundef %53) #6
  %add115 = add i32 %call114, %add109
  %arrayidx116 = getelementptr i8, ptr %stats_data, i32 %add115
  %sub117 = sub i32 4096, %add115
  %pre_ber = getelementptr %struct.sms_isdbt_stats_ex, ptr %p, i32 0, i32 19, i32 %i.0344, i32 5
  %54 = ptrtoint ptr %pre_ber to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %pre_ber, align 4
  %call120 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx116, i32 noundef %sub117, ptr noundef nonnull @.str.70, i32 noundef %55) #6
  %add121 = add i32 %call120, %add115
  %arrayidx122 = getelementptr i8, ptr %stats_data, i32 %add121
  %sub123 = sub i32 4096, %add121
  %ts_per = getelementptr %struct.sms_isdbt_stats_ex, ptr %p, i32 0, i32 19, i32 %i.0344, i32 6
  %56 = ptrtoint ptr %ts_per to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %ts_per, align 4
  %call126 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx122, i32 noundef %sub123, ptr noundef nonnull @.str.71, i32 noundef %57) #6
  %add127 = add i32 %call126, %add121
  %arrayidx128 = getelementptr i8, ptr %stats_data, i32 %add127
  %sub129 = sub i32 4096, %add127
  %error_ts_packets = getelementptr %struct.sms_isdbt_stats_ex, ptr %p, i32 0, i32 19, i32 %i.0344, i32 7
  %58 = ptrtoint ptr %error_ts_packets to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %error_ts_packets, align 4
  %call132 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx128, i32 noundef %sub129, ptr noundef nonnull @.str.72, i32 noundef %59) #6
  %add133 = add i32 %call132, %add127
  %arrayidx134 = getelementptr i8, ptr %stats_data, i32 %add133
  %sub135 = sub i32 4096, %add133
  %total_ts_packets = getelementptr %struct.sms_isdbt_stats_ex, ptr %p, i32 0, i32 19, i32 %i.0344, i32 8
  %60 = ptrtoint ptr %total_ts_packets to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %total_ts_packets, align 4
  %call138 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx134, i32 noundef %sub135, ptr noundef nonnull @.str.73, i32 noundef %61) #6
  %add139 = add i32 %call138, %add133
  %arrayidx140 = getelementptr i8, ptr %stats_data, i32 %add139
  %sub141 = sub i32 4096, %add139
  %ti_ldepth_i = getelementptr %struct.sms_isdbt_stats_ex, ptr %p, i32 0, i32 19, i32 %i.0344, i32 9
  %62 = ptrtoint ptr %ti_ldepth_i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %ti_ldepth_i, align 4
  %call144 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx140, i32 noundef %sub141, ptr noundef nonnull @.str.74, i32 noundef %63) #6
  %add145 = add i32 %call144, %add139
  %arrayidx146 = getelementptr i8, ptr %stats_data, i32 %add145
  %sub147 = sub i32 4096, %add145
  %64 = ptrtoint ptr %number_of_segments to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %number_of_segments, align 4
  %call151 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx146, i32 noundef %sub147, ptr noundef nonnull @.str.75, i32 noundef %65) #6
  %add152 = add i32 %call151, %add145
  %arrayidx153 = getelementptr i8, ptr %stats_data, i32 %add152
  %sub154 = sub i32 4096, %add152
  %tmcc_errors = getelementptr %struct.sms_isdbt_stats_ex, ptr %p, i32 0, i32 19, i32 %i.0344, i32 11
  %66 = ptrtoint ptr %tmcc_errors to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %tmcc_errors, align 4
  %call157 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %arrayidx153, i32 noundef %sub154, ptr noundef nonnull @.str.76, i32 noundef %67) #6
  %add158 = add i32 %call157, %add152
  br label %for.inc

for.inc:                                          ; preds = %if.end81, %for.body.for.inc_crit_edge
  %n.1 = phi i32 [ %n.0346, %for.body.for.inc_crit_edge ], [ %add158, %if.end81 ]
  %inc = add nuw nsw i32 %i.0344, 1
  %exitcond.not = icmp eq i32 %inc, 3
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  %68 = ptrtoint ptr %stats_count to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %n.1, ptr %stats_count, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock) #6
  %stats_queue = getelementptr inbounds %struct.smsdvb_debugfs, ptr %debug_data, i32 0, i32 5
  tail call void @__wake_up(ptr noundef %stats_queue, i32 noundef 3, i32 noundef 1, ptr noundef null) #6
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @smsdvb_debugfs_release(ptr nocapture noundef %client) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %debugfs = getelementptr inbounds %struct.smsdvb_client_t, ptr %client, i32 0, i32 18
  %0 = ptrtoint ptr %debugfs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %debugfs, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  %prt_dvb_stats = getelementptr inbounds %struct.smsdvb_client_t, ptr %client, i32 0, i32 20
  %2 = ptrtoint ptr %prt_dvb_stats to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %prt_dvb_stats, align 4
  %prt_isdb_stats = getelementptr inbounds %struct.smsdvb_client_t, ptr %client, i32 0, i32 21
  %3 = ptrtoint ptr %prt_isdb_stats to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %prt_isdb_stats, align 8
  %prt_isdb_stats_ex = getelementptr inbounds %struct.smsdvb_client_t, ptr %client, i32 0, i32 22
  %4 = ptrtoint ptr %prt_isdb_stats_ex to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %prt_isdb_stats_ex, align 4
  tail call void @debugfs_remove(ptr noundef nonnull %1) #6
  %debug_data = getelementptr inbounds %struct.smsdvb_client_t, ptr %client, i32 0, i32 19
  %5 = ptrtoint ptr %debug_data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %debug_data, align 8
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %6, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !172
  tail call void @llvm.prefetch.p0(ptr %6, i32 1, i32 3, i32 1) #6
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %6, ptr %6, i32 1, ptr elementtype(i32) %6) #6, !srcloc !173
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !174

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @refcount_warn_saturate(ptr noundef %6, i32 noundef 3) #6
  br label %kref_put.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !175
  tail call void @kfree(ptr noundef %6) #6
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  %8 = ptrtoint ptr %debug_data to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %debug_data, align 8
  %9 = ptrtoint ptr %debugfs to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %debugfs, align 4
  br label %return

return:                                           ; preds = %kref_put.exit, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @smsdvb_debugfs_register() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @usb_debug_root to i32))
  %0 = load ptr, ptr @usb_debug_root, align 4
  %call = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.3, ptr noundef %0) #6
  %tobool.not.i = icmp eq ptr %call, null
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.9) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  store ptr %call, ptr @smsdvb_debugfs_usb_root, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @smsdvb_debugfs_unregister() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @smsdvb_debugfs_usb_root, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @debugfs_remove(ptr noundef nonnull %0) #6
  store ptr null, ptr @smsdvb_debugfs_usb_root, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smsdvb_stats_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %nbytes, ptr noundef %ppos) #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %1, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %1, i32 1, i32 3, i32 1) #6
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %1, ptr %1, i32 1, ptr elementtype(i32) %1) #6, !srcloc !176
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %entry.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !177

entry.if.end15.sink.split.i.i.i.i_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %entry
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %3 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %.not.i.i.i.i = icmp sgt i32 %3, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !174

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %1, i32 noundef %.sink.i.i.i.i) #6
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %4 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %f_flags, align 4
  %and = and i32 %5, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %kref_get.exit
  %lock.i = getelementptr inbounds %struct.smsdvb_debugfs, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #6
  %stats_was_read.i = getelementptr inbounds %struct.smsdvb_debugfs, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %stats_was_read.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %stats_was_read.i, align 4, !range !171
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %smsdvb_stats_wait_read.exit, label %smsdvb_stats_wait_read.exit.thread

smsdvb_stats_wait_read.exit.thread:               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #6
  br label %if.end23

smsdvb_stats_wait_read.exit:                      ; preds = %if.then
  %stats_count.i = getelementptr inbounds %struct.smsdvb_debugfs, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %stats_count.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %stats_count.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool1.not = icmp eq i32 %9, 0
  br i1 %tobool1.not, label %smsdvb_stats_wait_read.exit.ret_crit_edge, label %smsdvb_stats_wait_read.exit.if.end23_crit_edge

smsdvb_stats_wait_read.exit.if.end23_crit_edge:   ; preds = %smsdvb_stats_wait_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

smsdvb_stats_wait_read.exit.ret_crit_edge:        ; preds = %smsdvb_stats_wait_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %ret

if.else:                                          ; preds = %kref_get.exit
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 399) #6
  %lock.i67 = getelementptr inbounds %struct.smsdvb_debugfs, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock.i67) #6
  %stats_was_read.i68 = getelementptr inbounds %struct.smsdvb_debugfs, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %stats_was_read.i68 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %stats_was_read.i68, align 4, !range !171
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i69 = icmp eq i8 %11, 0
  br i1 %tobool.not.i69, label %smsdvb_stats_wait_read.exit73, label %smsdvb_stats_wait_read.exit73.thread

smsdvb_stats_wait_read.exit73.thread:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_unlock(ptr noundef %lock.i67) #6
  br label %if.end23

smsdvb_stats_wait_read.exit73:                    ; preds = %if.else
  %stats_count.i70 = getelementptr inbounds %struct.smsdvb_debugfs, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %stats_count.i70 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %stats_count.i70, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock.i67) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool7.not = icmp eq i32 %13, 0
  br i1 %tobool7.not, label %if.then8, label %smsdvb_stats_wait_read.exit73.if.end23_crit_edge

smsdvb_stats_wait_read.exit73.if.end23_crit_edge: ; preds = %smsdvb_stats_wait_read.exit73
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

if.then8:                                         ; preds = %smsdvb_stats_wait_read.exit73
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #6
  %14 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #6
  %stats_queue = getelementptr inbounds %struct.smsdvb_debugfs, ptr %1, i32 0, i32 5
  %call10106 = call i32 @prepare_to_wait_event(ptr noundef %stats_queue, ptr noundef nonnull %__wq_entry, i32 noundef 1) #6
  call void @_raw_spin_lock(ptr noundef %lock.i67) #6
  %15 = ptrtoint ptr %stats_was_read.i68 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %stats_was_read.i68, align 4, !range !171
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i76107 = icmp eq i8 %16, 0
  br i1 %tobool.not.i76107, label %if.then8.smsdvb_stats_wait_read.exit80_crit_edge, label %if.then8.smsdvb_stats_wait_read.exit80.thread_crit_edge

if.then8.smsdvb_stats_wait_read.exit80.thread_crit_edge: ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  br label %smsdvb_stats_wait_read.exit80.thread

if.then8.smsdvb_stats_wait_read.exit80_crit_edge: ; preds = %if.then8
  br label %smsdvb_stats_wait_read.exit80

smsdvb_stats_wait_read.exit80.thread:             ; preds = %cleanup.smsdvb_stats_wait_read.exit80.thread_crit_edge, %if.then8.smsdvb_stats_wait_read.exit80.thread_crit_edge
  call void @_raw_spin_unlock(ptr noundef %lock.i67) #6
  br label %if.end19.thread98

smsdvb_stats_wait_read.exit80:                    ; preds = %cleanup.smsdvb_stats_wait_read.exit80_crit_edge, %if.then8.smsdvb_stats_wait_read.exit80_crit_edge
  %call10108 = phi i32 [ %call10, %cleanup.smsdvb_stats_wait_read.exit80_crit_edge ], [ %call10106, %if.then8.smsdvb_stats_wait_read.exit80_crit_edge ]
  %17 = ptrtoint ptr %stats_count.i70 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %stats_count.i70, align 4
  call void @_raw_spin_unlock(ptr noundef %lock.i67) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool12.not = icmp eq i32 %18, 0
  br i1 %tobool12.not, label %if.end14, label %smsdvb_stats_wait_read.exit80.if.end19.thread98_crit_edge

smsdvb_stats_wait_read.exit80.if.end19.thread98_crit_edge: ; preds = %smsdvb_stats_wait_read.exit80
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19.thread98

if.end14:                                         ; preds = %smsdvb_stats_wait_read.exit80
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10108)
  %tobool15.not = icmp eq i32 %call10108, 0
  br i1 %tobool15.not, label %cleanup, label %if.end19

cleanup:                                          ; preds = %if.end14
  call void @schedule() #6
  %call10 = call i32 @prepare_to_wait_event(ptr noundef %stats_queue, ptr noundef nonnull %__wq_entry, i32 noundef 1) #6
  call void @_raw_spin_lock(ptr noundef %lock.i67) #6
  %19 = ptrtoint ptr %stats_was_read.i68 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %stats_was_read.i68, align 4, !range !171
  %tobool.not.i76 = icmp eq i8 %20, 0
  br i1 %tobool.not.i76, label %cleanup.smsdvb_stats_wait_read.exit80_crit_edge, label %cleanup.smsdvb_stats_wait_read.exit80.thread_crit_edge

cleanup.smsdvb_stats_wait_read.exit80.thread_crit_edge: ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %smsdvb_stats_wait_read.exit80.thread

cleanup.smsdvb_stats_wait_read.exit80_crit_edge:  ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %smsdvb_stats_wait_read.exit80

if.end19.thread98:                                ; preds = %smsdvb_stats_wait_read.exit80.if.end19.thread98_crit_edge, %smsdvb_stats_wait_read.exit80.thread
  call void @finish_wait(ptr noundef %stats_queue, ptr noundef nonnull %__wq_entry) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #6
  br label %if.end23

if.end19:                                         ; preds = %if.end14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10108)
  %cmp = icmp slt i32 %call10108, 0
  br i1 %cmp, label %if.end19.ret_crit_edge, label %if.end19.if.end23_crit_edge

if.end19.if.end23_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

if.end19.ret_crit_edge:                           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %ret

if.end23:                                         ; preds = %if.end19.if.end23_crit_edge, %if.end19.thread98, %smsdvb_stats_wait_read.exit73.if.end23_crit_edge, %smsdvb_stats_wait_read.exit73.thread, %smsdvb_stats_wait_read.exit.if.end23_crit_edge, %smsdvb_stats_wait_read.exit.thread
  %stats_was_read = getelementptr inbounds %struct.smsdvb_debugfs, ptr %1, i32 0, i32 4
  %21 = ptrtoint ptr %stats_was_read to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %stats_was_read, align 4, !range !171
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool24.not = icmp eq i8 %22, 0
  br i1 %tobool24.not, label %if.end26, label %if.end23.ret_crit_edge

if.end23.ret_crit_edge:                           ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %ret

if.end26:                                         ; preds = %if.end23
  %stats_count = getelementptr inbounds %struct.smsdvb_debugfs, ptr %1, i32 0, i32 3
  %23 = ptrtoint ptr %stats_count to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %stats_count, align 4
  %25 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %ppos, align 8
  %27 = trunc i64 %26 to i32
  %conv27 = sub i32 %24, %27
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %conv27)
  %cmp28 = icmp sgt i32 %conv27, -1
  br i1 %cmp28, label %if.then30, label %if.end26.if.end33_crit_edge

if.end26.if.end33_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

if.then30:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  %stats_data = getelementptr inbounds %struct.smsdvb_debugfs, ptr %1, i32 0, i32 2
  %call31 = call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %nbytes, ptr noundef %ppos, ptr noundef %stats_data, i32 noundef %conv27) #6
  br label %if.end33

if.end33:                                         ; preds = %if.then30, %if.end26.if.end33_crit_edge
  %rc.0 = phi i32 [ %call31, %if.then30 ], [ 0, %if.end26.if.end33_crit_edge ]
  %28 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %ppos, align 8
  %30 = ptrtoint ptr %stats_count to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %stats_count, align 4
  %conv35 = zext i32 %31 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %29, i64 %conv35)
  %cmp36.not = icmp slt i64 %29, %conv35
  br i1 %cmp36.not, label %if.end33.ret_crit_edge, label %if.then38

if.end33.ret_crit_edge:                           ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %ret

if.then38:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  %lock = getelementptr inbounds %struct.smsdvb_debugfs, ptr %1, i32 0, i32 1
  call void @_raw_spin_lock(ptr noundef %lock) #6
  %32 = ptrtoint ptr %stats_was_read to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %stats_was_read, align 4
  call void @_raw_spin_unlock(ptr noundef %lock) #6
  br label %ret

ret:                                              ; preds = %if.then38, %if.end33.ret_crit_edge, %if.end23.ret_crit_edge, %if.end19.ret_crit_edge, %smsdvb_stats_wait_read.exit.ret_crit_edge
  %rc.1 = phi i32 [ %rc.0, %if.then38 ], [ %rc.0, %if.end33.ret_crit_edge ], [ %call10108, %if.end19.ret_crit_edge ], [ -11, %smsdvb_stats_wait_read.exit.ret_crit_edge ], [ 0, %if.end23.ret_crit_edge ]
  %call.i.i.i.i.i.i81 = call zeroext i1 @__kasan_check_write(ptr noundef %1, i32 noundef 4) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !172
  call void @llvm.prefetch.p0(ptr %1, i32 1, i32 3, i32 1) #6
  %33 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %1, ptr %1, i32 1, ptr elementtype(i32) %1) #6, !srcloc !173
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %33, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %ret
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i82 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i82, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !174

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @refcount_warn_saturate(ptr noundef %1, i32 noundef 3) #6
  br label %kref_put.exit

if.then.i:                                        ; preds = %ret
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !175
  call void @kfree(ptr noundef %1) #6
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  ret i32 %rc.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smsdvb_stats_poll(ptr noundef %file, ptr noundef %wait) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %1, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %1, i32 1, i32 3, i32 1) #6
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %1, ptr %1, i32 1, ptr elementtype(i32) %1) #6, !srcloc !176
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %entry.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !177

entry.if.end15.sink.split.i.i.i.i_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %entry
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %3 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %.not.i.i.i.i = icmp sgt i32 %3, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !174

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %1, i32 noundef %.sink.i.i.i.i) #6
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  %stats_queue = getelementptr inbounds %struct.smsdvb_debugfs, ptr %1, i32 0, i32 5
  %tobool.not.i = icmp eq ptr %wait, null
  br i1 %tobool.not.i, label %kref_get.exit.poll_wait.exit_crit_edge, label %land.lhs.true.i

kref_get.exit.poll_wait.exit_crit_edge:           ; preds = %kref_get.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %poll_wait.exit

land.lhs.true.i:                                  ; preds = %kref_get.exit
  %4 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wait, align 4
  %tobool1.not.i = icmp eq ptr %5, null
  %tobool3.not.i = icmp eq ptr %stats_queue, null
  %or.cond.i = or i1 %tobool3.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.poll_wait.exit_crit_edge, label %if.then.i

land.lhs.true.i.poll_wait.exit_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %poll_wait.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %5(ptr noundef %file, ptr noundef nonnull %stats_queue, ptr noundef nonnull %wait) #6
  br label %poll_wait.exit

poll_wait.exit:                                   ; preds = %if.then.i, %land.lhs.true.i.poll_wait.exit_crit_edge, %kref_get.exit.poll_wait.exit_crit_edge
  %lock.i = getelementptr inbounds %struct.smsdvb_debugfs, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #6
  %stats_was_read.i = getelementptr inbounds %struct.smsdvb_debugfs, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %stats_was_read.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %stats_was_read.i, align 4, !range !171
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i7 = icmp eq i8 %7, 0
  br i1 %tobool.not.i7, label %if.end.i, label %poll_wait.exit.smsdvb_stats_wait_read.exit_crit_edge

poll_wait.exit.smsdvb_stats_wait_read.exit_crit_edge: ; preds = %poll_wait.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %smsdvb_stats_wait_read.exit

if.end.i:                                         ; preds = %poll_wait.exit
  call void @__sanitizer_cov_trace_pc() #8
  %stats_count.i = getelementptr inbounds %struct.smsdvb_debugfs, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %stats_count.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %stats_count.i, align 4
  br label %smsdvb_stats_wait_read.exit

smsdvb_stats_wait_read.exit:                      ; preds = %if.end.i, %poll_wait.exit.smsdvb_stats_wait_read.exit_crit_edge
  %rc.0.i = phi i32 [ 1, %poll_wait.exit.smsdvb_stats_wait_read.exit_crit_edge ], [ %9, %if.end.i ]
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #6
  %call.i.i.i.i.i.i8 = tail call zeroext i1 @__kasan_check_write(ptr noundef %1, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !172
  tail call void @llvm.prefetch.p0(ptr %1, i32 1, i32 3, i32 1) #6
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %1, ptr %1, i32 1, ptr elementtype(i32) %1) #6, !srcloc !173
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i10, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %smsdvb_stats_wait_read.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i9 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i9, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !174

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @refcount_warn_saturate(ptr noundef %1, i32 noundef 3) #6
  br label %kref_put.exit

if.then.i10:                                      ; preds = %smsdvb_stats_wait_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !175
  tail call void @kfree(ptr noundef %1) #6
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i10, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0.i)
  %cmp = icmp sgt i32 %rc.0.i, 0
  %cond = select i1 %cmp, i32 65, i32 0
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smsdvb_stats_open(ptr nocapture noundef readonly %inode, ptr nocapture noundef writeonly %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %debug_data1 = getelementptr inbounds %struct.smsdvb_client_t, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %debug_data1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %debug_data1, align 8
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %3, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %3, i32 1, i32 3, i32 1) #6
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %3, ptr %3, i32 1, ptr elementtype(i32) %3) #6, !srcloc !176
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %entry.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !177

entry.if.end15.sink.split.i.i.i.i_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %entry
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %5 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %.not.i.i.i.i = icmp sgt i32 %5, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !174

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %3, i32 noundef %.sink.i.i.i.i) #6
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  %lock = getelementptr inbounds %struct.smsdvb_debugfs, ptr %3, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock) #6
  %stats_count = getelementptr inbounds %struct.smsdvb_debugfs, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %stats_count to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %stats_count, align 4
  %stats_was_read = getelementptr inbounds %struct.smsdvb_debugfs, ptr %3, i32 0, i32 4
  %7 = ptrtoint ptr %stats_was_read to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %stats_was_read, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock) #6
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %8 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %3, ptr %private_data, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smsdvb_stats_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %lock = getelementptr inbounds %struct.smsdvb_debugfs, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock) #6
  %stats_was_read = getelementptr inbounds %struct.smsdvb_debugfs, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %stats_was_read to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %stats_was_read, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock) #6
  %stats_queue = getelementptr inbounds %struct.smsdvb_debugfs, ptr %1, i32 0, i32 5
  tail call void @__wake_up_sync(ptr noundef %stats_queue, i32 noundef 1) #6
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %1, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !172
  tail call void @llvm.prefetch.p0(ptr %1, i32 1, i32 3, i32 1) #6
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %1, ptr %1, i32 1, ptr elementtype(i32) %1) #6, !srcloc !173
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !174

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @refcount_warn_saturate(ptr noundef %1, i32 noundef 3) #6
  br label %kref_put.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !175
  tail call void @kfree(ptr noundef %1) #6
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %private_data, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up_sync(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 84)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 84)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !9, !11, !12, !14, !15, !17, !18, !19, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160}
!llvm.module.flags = !{!162, !163, !164, !165, !166, !167, !168, !169}
!llvm.ident = !{!170}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/common/siano/smsdvb-debugfs.c", i32 465, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @smsdvb_debugfs_create._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @smsdvb_debugfs_create._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/media/common/siano/smsdvb-debugfs.c", i32 470, i32 26}
!9 = !{ptr @smsdvb_debugfs_create.__key, !10, !"__key", i1 false, i1 false}
!10 = !{!"../drivers/media/common/siano/smsdvb-debugfs.c", i32 486, i32 2}
!11 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @smsdvb_debugfs_create.__key.6, !13, !"__key", i1 false, i1 false}
!13 = !{!"../drivers/media/common/siano/smsdvb-debugfs.c", i32 487, i32 2}
!14 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/media/common/siano/smsdvb-debugfs.c", i32 525, i32 3}
!17 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @smsdvb_debugfs_register._entry, !16, !"_entry", i1 false, i1 false}
!19 = !{ptr @smsdvb_debugfs_register._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @smsdvb_debugfs_usb_root, !21, !"smsdvb_debugfs_usb_root", i1 false, i1 false}
!21 = !{!"../drivers/media/common/siano/smsdvb-debugfs.c", i32 21, i32 23}
!22 = !{ptr @debugfs_stats_ops, !23, !"debugfs_stats_ops", i1 false, i1 false}
!23 = !{!"../drivers/media/common/siano/smsdvb-debugfs.c", i32 441, i32 37}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/common/siano/smsdvb-debugfs.c", i32 49, i32 9}
!26 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/common/siano/smsdvb-debugfs.c", i32 51, i32 9}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/common/siano/smsdvb-debugfs.c", i32 53, i32 9}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/common/siano/smsdvb-debugfs.c", i32 55, i32 9}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/common/siano/smsdvb-debugfs.c", i32 57, i32 9}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/common/siano/smsdvb-debugfs.c", i32 59, i32 9}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/common/siano/smsdvb-debugfs.c", i32 61, i32 9}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/common/siano/smsdvb-debugfs.c", i32 63, i32 9}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/common/siano/smsdvb-debugfs.c", i32 65, i32 9}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/common/siano/smsdvb-debugfs.c", i32 67, i32 9}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/common/siano/smsdvb-debugfs.c", i32 69, i32 9}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/common/siano/smsdvb-debugfs.c", i32 71, i32 9}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/common/siano/smsdvb-debugfs.c", i32 73, i32 9}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/common/siano/smsdvb-debugfs.c", i32 75, i32 9}
!52 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/common/siano/smsdvb-debugfs.c", i32 77, i32 9}
!54 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/common/siano/smsdvb-debugfs.c", i32 81, i32 9}
!56 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/common/siano/smsdvb-debugfs.c", i32 83, i32 9}
!58 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/common/siano/smsdvb-debugfs.c", i32 85, i32 9}
!60 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/media/common/siano/smsdvb-debugfs.c", i32 87, i32 9}
!62 = !{ptr @.str.29, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/media/common/siano/smsdvb-debugfs.c", i32 89, i32 9}
!64 = !{ptr @.str.30, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/media/common/siano/smsdvb-debugfs.c", i32 91, i32 9}
!66 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/media/common/siano/smsdvb-debugfs.c", i32 93, i32 9}
!68 = !{ptr @.str.32, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/common/siano/smsdvb-debugfs.c", i32 95, i32 9}
!70 = !{ptr @.str.33, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/media/common/siano/smsdvb-debugfs.c", i32 97, i32 9}
!72 = !{ptr @.str.34, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/common/siano/smsdvb-debugfs.c", i32 100, i32 9}
!74 = !{ptr @.str.35, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/media/common/siano/smsdvb-debugfs.c", i32 102, i32 9}
!76 = !{ptr @.str.36, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/media/common/siano/smsdvb-debugfs.c", i32 104, i32 9}
!78 = !{ptr @.str.37, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/media/common/siano/smsdvb-debugfs.c", i32 106, i32 9}
!80 = !{ptr @.str.38, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/media/common/siano/smsdvb-debugfs.c", i32 108, i32 9}
!82 = !{ptr @.str.39, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/media/common/siano/smsdvb-debugfs.c", i32 110, i32 9}
!84 = !{ptr @.str.40, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/media/common/siano/smsdvb-debugfs.c", i32 112, i32 9}
!86 = !{ptr @.str.41, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/media/common/siano/smsdvb-debugfs.c", i32 114, i32 9}
!88 = !{ptr @.str.42, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/media/common/siano/smsdvb-debugfs.c", i32 116, i32 9}
!90 = !{ptr @.str.43, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/media/common/siano/smsdvb-debugfs.c", i32 118, i32 9}
!92 = !{ptr @.str.44, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/media/common/siano/smsdvb-debugfs.c", i32 120, i32 9}
!94 = !{ptr @.str.45, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/media/common/siano/smsdvb-debugfs.c", i32 122, i32 9}
!96 = !{ptr @.str.46, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/media/common/siano/smsdvb-debugfs.c", i32 124, i32 9}
!98 = !{ptr @.str.47, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/media/common/siano/smsdvb-debugfs.c", i32 126, i32 9}
!100 = !{ptr @.str.48, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/media/common/siano/smsdvb-debugfs.c", i32 128, i32 9}
!102 = !{ptr @.str.49, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/media/common/siano/smsdvb-debugfs.c", i32 130, i32 9}
!104 = !{ptr @.str.50, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/media/common/siano/smsdvb-debugfs.c", i32 152, i32 9}
!106 = !{ptr @.str.51, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/media/common/siano/smsdvb-debugfs.c", i32 154, i32 9}
!108 = !{ptr @.str.52, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/media/common/siano/smsdvb-debugfs.c", i32 157, i32 9}
!110 = !{ptr @.str.53, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/media/common/siano/smsdvb-debugfs.c", i32 159, i32 9}
!112 = !{ptr @.str.54, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/media/common/siano/smsdvb-debugfs.c", i32 163, i32 9}
!114 = !{ptr @.str.55, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/media/common/siano/smsdvb-debugfs.c", i32 165, i32 9}
!116 = !{ptr @.str.56, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/media/common/siano/smsdvb-debugfs.c", i32 167, i32 9}
!118 = !{ptr @.str.57, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/media/common/siano/smsdvb-debugfs.c", i32 169, i32 9}
!120 = !{ptr @.str.58, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/media/common/siano/smsdvb-debugfs.c", i32 171, i32 9}
!122 = !{ptr @.str.59, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/media/common/siano/smsdvb-debugfs.c", i32 173, i32 9}
!124 = !{ptr @.str.60, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/media/common/siano/smsdvb-debugfs.c", i32 175, i32 9}
!126 = !{ptr @.str.61, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/media/common/siano/smsdvb-debugfs.c", i32 177, i32 9}
!128 = !{ptr @.str.62, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/media/common/siano/smsdvb-debugfs.c", i32 181, i32 9}
!130 = !{ptr @.str.63, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/media/common/siano/smsdvb-debugfs.c", i32 183, i32 9}
!132 = !{ptr @.str.64, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/media/common/siano/smsdvb-debugfs.c", i32 185, i32 9}
!134 = !{ptr @.str.65, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/media/common/siano/smsdvb-debugfs.c", i32 194, i32 42}
!136 = !{ptr @.str.66, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/media/common/siano/smsdvb-debugfs.c", i32 195, i32 42}
!138 = !{ptr @.str.67, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/media/common/siano/smsdvb-debugfs.c", i32 199, i32 42}
!140 = !{ptr @.str.68, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/media/common/siano/smsdvb-debugfs.c", i32 202, i32 10}
!142 = !{ptr @.str.69, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/media/common/siano/smsdvb-debugfs.c", i32 204, i32 42}
!144 = !{ptr @.str.70, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/media/common/siano/smsdvb-debugfs.c", i32 206, i32 42}
!146 = !{ptr @.str.71, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/media/common/siano/smsdvb-debugfs.c", i32 208, i32 42}
!148 = !{ptr @.str.72, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/media/common/siano/smsdvb-debugfs.c", i32 211, i32 10}
!150 = !{ptr @.str.73, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/media/common/siano/smsdvb-debugfs.c", i32 214, i32 10}
!152 = !{ptr @.str.74, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/media/common/siano/smsdvb-debugfs.c", i32 216, i32 42}
!154 = !{ptr @.str.75, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/media/common/siano/smsdvb-debugfs.c", i32 219, i32 10}
!156 = !{ptr @.str.76, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/media/common/siano/smsdvb-debugfs.c", i32 221, i32 42}
!158 = !{ptr @.str.77, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/media/common/siano/smsdvb-debugfs.c", i32 279, i32 41}
!160 = !{ptr @.str.78, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/media/common/siano/smsdvb-debugfs.c", i32 281, i32 41}
!162 = !{i32 1, !"wchar_size", i32 2}
!163 = !{i32 1, !"min_enum_size", i32 4}
!164 = !{i32 8, !"branch-target-enforcement", i32 0}
!165 = !{i32 8, !"sign-return-address", i32 0}
!166 = !{i32 8, !"sign-return-address-all", i32 0}
!167 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!168 = !{i32 7, !"uwtable", i32 1}
!169 = !{i32 7, !"frame-pointer", i32 2}
!170 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!171 = !{i8 0, i8 2}
!172 = !{i64 2148605845}
!173 = !{i64 2148520309, i64 2148520341, i64 2148520370, i64 2148520404, i64 2148520435, i64 2148520458}
!174 = !{!"branch_weights", i32 2000, i32 1}
!175 = !{i64 2149651815}
!176 = !{i64 2148517844, i64 2148517876, i64 2148517905, i64 2148517939, i64 2148517970, i64 2148517993}
!177 = !{!"branch_weights", i32 1, i32 2000}
