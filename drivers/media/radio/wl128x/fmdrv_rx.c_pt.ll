; ModuleID = '/llk/IR_all_yes/drivers/media/radio/wl128x/fmdrv_rx.c_pt.bc'
source_filename = "../drivers/media/radio/wl128x/fmdrv_rx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.fmdev = type { ptr, %struct.v4l2_device, ptr, i16, %struct.spinlock, %struct.spinlock, i32, i32, %struct.sk_buff_head, %struct.tasklet_struct, %struct.sk_buff_head, %struct.tasklet_struct, i32, %struct.atomic_t, ptr, %struct.completion, i8, ptr, %struct.fm_irq, i8, %struct.fm_rx, %struct.fmtx_data, %struct.v4l2_ctrl_handler, %struct.mutex }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.list_head = type { ptr, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.sk_buff_head = type { %union.anon.111, i32, %struct.spinlock }
%union.anon.111 = type { %struct.anon.112 }
%struct.anon.112 = type { ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.133, i32 }
%union.anon.133 = type { ptr }
%struct.atomic_t = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.fm_irq = type { i8, i16, i16, %struct.timer_list, i8, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.fm_rx = type { %struct.region_info, i32, i8, i8, i8, i16, i16, i8, i32, i8, i8, %struct.tuned_station_info, %struct.fm_rds }
%struct.region_info = type { i32, i32, i32, i8 }
%struct.tuned_station_info = type { i16, [25 x i32], i8, i8 }
%struct.fm_rds = type { i8, i8, %struct.wait_queue_head, i32, i32, i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.fmtx_data = type { i8, i8, i8, i8, i16, i32, i32, %struct.tx_rds }
%struct.tx_rds = type { i8, [25 x i8], i8, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }

@fm_rx_set_freq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 42, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013fmdrv: Invalid frequency %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fm_rx_set_freq\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/media/radio/wl128x/fmdrv_rx.c\00", [58 x i8] zeroinitializer }, align 32
@fm_rx_set_freq._entry_ptr = internal global ptr @fm_rx_set_freq._entry, section ".printk_index", align 4
@fm_rx_set_freq._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 96, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013fmdrv: Timeout(%d sec),didn't get tune ended int\0A\00", [44 x i8] zeroinitializer }, align 32
@fm_rx_set_freq._entry_ptr.5 = internal global ptr @fm_rx_set_freq._entry.3, section ".printk_index", align 4
@fm_rx_set_freq._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 111, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\016Frequency is set to (%d) but requested freq is (%d)\0A\00", [41 x i8] zeroinitializer }, align 32
@fm_rx_set_freq._entry_ptr.8 = internal global ptr @fm_rx_set_freq._entry.6, section ".printk_index", align 4
@fm_rx_seek._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 169, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013fmdrv: Failed to set channel spacing\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fm_rx_seek\00", [21 x i8] zeroinitializer }, align 32
@fm_rx_seek._entry_ptr = internal global ptr @fm_rx_seek._entry, section ".printk_index", align 4
@fm_rx_seek._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.10, ptr @.str.2, i32 240, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@fm_rx_seek._entry_ptr.12 = internal global ptr @fm_rx_seek._entry.11, section ".printk_index", align 4
@fm_rx_set_volume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 297, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013fmdrv: Volume is not within(%d-%d) range\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fm_rx_set_volume\00", [47 x i8] zeroinitializer }, align 32
@fm_rx_set_volume._entry_ptr = internal global ptr @fm_rx_set_volume._entry, section ".printk_index", align 4
@fm_rx_get_volume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 319, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\013fmdrv: Invalid memory\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fm_rx_get_volume\00", [47 x i8] zeroinitializer }, align 32
@fm_rx_get_volume._entry_ptr = internal global ptr @fm_rx_get_volume._entry, section ".printk_index", align 4
@fm_rx_set_region._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 355, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\013fmdrv: Invalid band\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fm_rx_set_region\00", [47 x i8] zeroinitializer }, align 32
@fm_rx_set_region._entry_ptr = internal global ptr @fm_rx_set_region._entry, section ".printk_index", align 4
@fm_rx_set_region._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.2, i32 360, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013fmdrv: Requested band is already configured\0A\00", [49 x i8] zeroinitializer }, align 32
@fm_rx_set_region._entry_ptr.21 = internal global ptr @fm_rx_set_region._entry.19, section ".printk_index", align 4
@fm_rx_get_mute_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.22, ptr @.str.2, i32 396, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fm_rx_get_mute_mode\00", [44 x i8] zeroinitializer }, align 32
@fm_rx_get_mute_mode._entry_ptr = internal global ptr @fm_rx_get_mute_mode._entry, section ".printk_index", align 4
@fm_rx_get_rfdepend_softmute._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.23, ptr @.str.2, i32 466, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"fm_rx_get_rfdepend_softmute\00", [36 x i8] zeroinitializer }, align 32
@fm_rx_get_rfdepend_softmute._entry_ptr = internal global ptr @fm_rx_get_rfdepend_softmute._entry, section ".printk_index", align 4
@fm_rx_set_rfdepend_softmute._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 486, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013fmdrv: Invalid RF dependent soft mute\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"fm_rx_set_rfdepend_softmute\00", [36 x i8] zeroinitializer }, align 32
@fm_rx_set_rfdepend_softmute._entry_ptr = internal global ptr @fm_rx_set_rfdepend_softmute._entry, section ".printk_index", align 4
@fm_rx_get_rssi_level._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.26, ptr @.str.2, i32 512, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fm_rx_get_rssi_level\00", [43 x i8] zeroinitializer }, align 32
@fm_rx_get_rssi_level._entry_ptr = internal global ptr @fm_rx_get_rssi_level._entry, section ".printk_index", align 4
@fm_rx_set_rssi_threshold._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 537, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013fmdrv: Invalid RSSI threshold level\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"fm_rx_set_rssi_threshold\00", [39 x i8] zeroinitializer }, align 32
@fm_rx_set_rssi_threshold._entry_ptr = internal global ptr @fm_rx_set_rssi_threshold._entry, section ".printk_index", align 4
@fm_rx_get_rssi_threshold._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.29, ptr @.str.2, i32 558, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"fm_rx_get_rssi_threshold\00", [39 x i8] zeroinitializer }, align 32
@fm_rx_get_rssi_threshold._entry_ptr = internal global ptr @fm_rx_get_rssi_threshold._entry, section ".printk_index", align 4
@fm_rx_set_stereo_mono._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.2, i32 574, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\013fmdrv: Invalid mode\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fm_rx_set_stereo_mono\00", [42 x i8] zeroinitializer }, align 32
@fm_rx_set_stereo_mono._entry_ptr = internal global ptr @fm_rx_set_stereo_mono._entry, section ".printk_index", align 4
@fm_rx_get_stereo_mono._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.32, ptr @.str.2, i32 603, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fm_rx_get_stereo_mono\00", [42 x i8] zeroinitializer }, align 32
@fm_rx_get_stereo_mono._entry_ptr = internal global ptr @fm_rx_get_stereo_mono._entry, section ".printk_index", align 4
@fm_rx_set_deemphasis_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.2, i32 628, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013fmdrv: Invalid rx de-emphasis mode (%d)\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"fm_rx_set_deemphasis_mode\00", [38 x i8] zeroinitializer }, align 32
@fm_rx_set_deemphasis_mode._entry_ptr = internal global ptr @fm_rx_set_deemphasis_mode._entry, section ".printk_index", align 4
@fm_rx_get_deemph_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.35, ptr @.str.2, i32 650, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fm_rx_get_deemph_mode\00", [42 x i8] zeroinitializer }, align 32
@fm_rx_get_deemph_mode._entry_ptr = internal global ptr @fm_rx_get_deemph_mode._entry, section ".printk_index", align 4
@fm_rx_set_rds_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.2, i32 666, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013fmdrv: Invalid rds option\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fm_rx_set_rds_mode\00", [45 x i8] zeroinitializer }, align 32
@fm_rx_set_rds_mode._entry_ptr = internal global ptr @fm_rx_set_rds_mode._entry, section ".printk_index", align 4
@fm_rx_get_rds_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.38, ptr @.str.2, i32 741, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fm_rx_get_rds_mode\00", [45 x i8] zeroinitializer }, align 32
@fm_rx_get_rds_mode._entry_ptr = internal global ptr @fm_rx_get_rds_mode._entry, section ".printk_index", align 4
@fm_rx_set_rds_system._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.2, i32 760, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013fmdrv: Invalid rds mode\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fm_rx_set_rds_system\00", [43 x i8] zeroinitializer }, align 32
@fm_rx_set_rds_system._entry_ptr = internal global ptr @fm_rx_set_rds_system._entry, section ".printk_index", align 4
@fm_rx_set_af_switch._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.2, i32 786, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013fmdrv: Invalid af mode\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fm_rx_set_af_switch\00", [44 x i8] zeroinitializer }, align 32
@fm_rx_set_af_switch._entry_ptr = internal global ptr @fm_rx_set_af_switch._entry, section ".printk_index", align 4
@fm_rx_get_af_switch._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.43, ptr @.str.2, i32 813, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fm_rx_get_af_switch\00", [44 x i8] zeroinitializer }, align 32
@fm_rx_get_af_switch._entry_ptr = internal global ptr @fm_rx_get_af_switch._entry, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.44 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.45 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 42, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 95, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 110, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 169, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 239, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 296, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 319, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 355, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 360, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 396, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 466, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 486, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 512, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 537, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 558, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 574, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 603, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 628, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 650, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 666, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 741, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 760, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 786, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.224 = private constant [41 x i8] c"../drivers/media/radio/wl128x/fmdrv_rx.c\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 813, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.229 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.230 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 87, i32 2 }
@llvm.compiler.used = appending global [86 x ptr] [ptr @fm_rx_get_af_switch._entry, ptr @fm_rx_get_af_switch._entry_ptr, ptr @fm_rx_get_deemph_mode._entry, ptr @fm_rx_get_deemph_mode._entry_ptr, ptr @fm_rx_get_mute_mode._entry, ptr @fm_rx_get_mute_mode._entry_ptr, ptr @fm_rx_get_rds_mode._entry, ptr @fm_rx_get_rds_mode._entry_ptr, ptr @fm_rx_get_rfdepend_softmute._entry, ptr @fm_rx_get_rfdepend_softmute._entry_ptr, ptr @fm_rx_get_rssi_level._entry, ptr @fm_rx_get_rssi_level._entry_ptr, ptr @fm_rx_get_rssi_threshold._entry, ptr @fm_rx_get_rssi_threshold._entry_ptr, ptr @fm_rx_get_stereo_mono._entry, ptr @fm_rx_get_stereo_mono._entry_ptr, ptr @fm_rx_get_volume._entry, ptr @fm_rx_get_volume._entry_ptr, ptr @fm_rx_seek._entry, ptr @fm_rx_seek._entry.11, ptr @fm_rx_seek._entry_ptr, ptr @fm_rx_seek._entry_ptr.12, ptr @fm_rx_set_af_switch._entry, ptr @fm_rx_set_af_switch._entry_ptr, ptr @fm_rx_set_deemphasis_mode._entry, ptr @fm_rx_set_deemphasis_mode._entry_ptr, ptr @fm_rx_set_freq._entry, ptr @fm_rx_set_freq._entry.3, ptr @fm_rx_set_freq._entry.6, ptr @fm_rx_set_freq._entry_ptr, ptr @fm_rx_set_freq._entry_ptr.5, ptr @fm_rx_set_freq._entry_ptr.8, ptr @fm_rx_set_rds_mode._entry, ptr @fm_rx_set_rds_mode._entry_ptr, ptr @fm_rx_set_rds_system._entry, ptr @fm_rx_set_rds_system._entry_ptr, ptr @fm_rx_set_region._entry, ptr @fm_rx_set_region._entry.19, ptr @fm_rx_set_region._entry_ptr, ptr @fm_rx_set_region._entry_ptr.21, ptr @fm_rx_set_rfdepend_softmute._entry, ptr @fm_rx_set_rfdepend_softmute._entry_ptr, ptr @fm_rx_set_rssi_threshold._entry, ptr @fm_rx_set_rssi_threshold._entry_ptr, ptr @fm_rx_set_stereo_mono._entry, ptr @fm_rx_set_stereo_mono._entry_ptr, ptr @fm_rx_set_volume._entry, ptr @fm_rx_set_volume._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @init_completion.__key, ptr @.str.44], section "llvm.metadata"
@0 = internal global [62 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm_rx_set_freq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm_rx_set_freq._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm_rx_set_freq._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm_rx_seek._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm_rx_seek._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm_rx_set_volume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm_rx_get_volume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm_rx_set_region._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm_rx_set_region._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm_rx_get_mute_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm_rx_get_rfdepend_softmute._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm_rx_set_rfdepend_softmute._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm_rx_get_rssi_level._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm_rx_set_rssi_threshold._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm_rx_get_rssi_threshold._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm_rx_set_stereo_mono._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm_rx_get_stereo_mono._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm_rx_set_deemphasis_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm_rx_get_deemph_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm_rx_set_rds_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm_rx_get_rds_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm_rx_set_rds_system._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm_rx_set_af_switch._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm_rx_get_af_switch._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @fm_rx_reset_rds_cache(ptr nocapture noundef %fmdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rds = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 20, i32 12
  %0 = ptrtoint ptr %rds to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %rds, align 4
  %last_blk_idx = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 20, i32 12, i32 1
  %1 = ptrtoint ptr %last_blk_idx to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %last_blk_idx, align 1
  %wr_idx = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 20, i32 12, i32 4
  %2 = ptrtoint ptr %wr_idx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %wr_idx, align 4
  %rd_idx = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 20, i32 12, i32 5
  %3 = ptrtoint ptr %rd_idx to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %rd_idx, align 4
  %af_mode = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 20, i32 10
  %4 = ptrtoint ptr %af_mode to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %af_mode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp = icmp eq i8 %5, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %mask = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 18, i32 2
  %6 = ptrtoint ptr %mask to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %mask, align 4
  %8 = or i16 %7, 32
  store i16 %8, ptr %mask, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @fm_rx_reset_station_info(ptr nocapture noundef writeonly %fmdev) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %stat_info = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 20, i32 11
  %0 = ptrtoint ptr %stat_info to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %stat_info, align 4
  %afcache_size = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 20, i32 11, i32 2
  %1 = ptrtoint ptr %afcache_size to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %afcache_size, align 4
  %af_list_max = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 20, i32 11, i32 3
  %2 = ptrtoint ptr %af_list_max to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %af_list_max, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fm_rx_set_freq(ptr noundef %fmdev, i32 noundef %freq) local_unnamed_addr #2 align 64 {
entry:
  %payload = alloca i16, align 2
  %curr_frq = alloca i16, align 2
  %resp_len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %payload) #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %curr_frq) #7
  %0 = ptrtoint ptr %curr_frq to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %curr_frq, align 2, !annotation !120
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resp_len) #7
  %1 = ptrtoint ptr %resp_len to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %resp_len, align 4, !annotation !120
  %bot_freq = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 20, i32 0, i32 1
  %2 = ptrtoint ptr %bot_freq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bot_freq, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %freq)
  %cmp = icmp ugt i32 %3, %freq
  br i1 %cmp, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %top_freq = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 20, i32 0, i32 2
  %4 = ptrtoint ptr %top_freq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %top_freq, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %freq)
  %cmp3 = icmp ult i32 %5, %freq
  br i1 %cmp3, label %lor.lhs.false.do.end_crit_edge, label %if.end

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %freq) #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %6 = ptrtoint ptr %payload to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 3, ptr %payload, align 2
  %call4 = call i32 @fmc_send_cmd(ptr noundef %fmdev, i8 noundef zeroext 29, i16 noundef zeroext 0, ptr noundef nonnull %payload, i32 noundef 2, ptr noundef null, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %7 = ptrtoint ptr %payload to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 2, ptr %payload, align 2
  %call8 = call i32 @fmc_send_cmd(ptr noundef %fmdev, i8 noundef zeroext 35, i16 noundef zeroext 0, ptr noundef nonnull %payload, i32 noundef 2, ptr noundef null, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.end7.cleanup_crit_edge, label %if.end11

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %8 = ptrtoint ptr %bot_freq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bot_freq, align 4
  %sub = sub i32 %freq, %9
  %div = udiv i32 %sub, 50
  %conv = trunc i32 %div to i16
  %10 = ptrtoint ptr %payload to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv, ptr %payload, align 2
  %call15 = call i32 @fmc_send_cmd(ptr noundef %fmdev, i8 noundef zeroext 10, i16 noundef zeroext 0, ptr noundef nonnull %payload, i32 noundef 2, ptr noundef null, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %if.end11.cleanup_crit_edge, label %if.end19

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end19:                                         ; preds = %if.end11
  %call20 = call i32 @fmc_send_cmd(ptr noundef %fmdev, i8 noundef zeroext 3, i16 noundef zeroext 1, ptr noundef null, i32 noundef 2, ptr noundef null, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %if.end19.cleanup_crit_edge, label %if.end24

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end24:                                         ; preds = %if.end19
  %mask = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 18, i32 2
  %11 = ptrtoint ptr %mask to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %mask, align 4
  store i16 3, ptr %mask, align 4
  %13 = ptrtoint ptr %payload to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 3, ptr %payload, align 2
  %call29 = call i32 @fmc_send_cmd(ptr noundef %fmdev, i8 noundef zeroext 26, i16 noundef zeroext 0, ptr noundef nonnull %payload, i32 noundef 2, ptr noundef null, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30 = icmp slt i32 %call29, 0
  br i1 %cmp30, label %if.end24.cleanup_crit_edge, label %if.end33

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end33:                                         ; preds = %if.end24
  %14 = ptrtoint ptr %payload to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 1, ptr %payload, align 2
  %call34 = call i32 @fmc_send_cmd(ptr noundef %fmdev, i8 noundef zeroext 45, i16 noundef zeroext 0, ptr noundef nonnull %payload, i32 noundef 2, ptr noundef null, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %if.end33.exit_crit_edge, label %if.end38

if.end33.exit_crit_edge:                          ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

if.end38:                                         ; preds = %if.end33
  %maintask_comp = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 15
  %15 = ptrtoint ptr %maintask_comp to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %maintask_comp, align 4
  %wait.i = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 15, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.44, ptr noundef nonnull @init_completion.__key) #7
  %call40 = call i32 @wait_for_completion_timeout(ptr noundef %maintask_comp, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool.not = icmp eq i32 %call40, 0
  br i1 %tobool.not, label %do.end44, label %if.end49

do.end44:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  %call46 = call i32 @jiffies_to_msecs(i32 noundef 500) #7
  %div47 = udiv i32 %call46, 1000
  %call48 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %div47) #10
  br label %exit

if.end49:                                         ; preds = %if.end38
  %call50 = call i32 @fmc_send_cmd(ptr noundef %fmdev, i8 noundef zeroext 10, i16 noundef zeroext 1, ptr noundef null, i32 noundef 2, ptr noundef nonnull %curr_frq, ptr noundef nonnull %resp_len) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %cmp51 = icmp slt i32 %call50, 0
  br i1 %cmp51, label %if.end49.exit_crit_edge, label %if.end54

if.end49.exit_crit_edge:                          ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

if.end54:                                         ; preds = %if.end49
  %16 = ptrtoint ptr %curr_frq to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %curr_frq, align 2
  %18 = ptrtoint ptr %bot_freq to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bot_freq, align 4
  %conv58 = zext i16 %17 to i32
  %mul = mul nuw nsw i32 %conv58, 50
  %add = add i32 %mul, %19
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %freq)
  %cmp59.not = icmp eq i32 %add, %freq
  br i1 %cmp59.not, label %if.end54.if.end67_crit_edge, label %do.end64

if.end54.if.end67_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end67

do.end64:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  %call66 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %add, i32 noundef %freq) #10
  br label %if.end67

if.end67:                                         ; preds = %do.end64, %if.end54.if.end67_crit_edge
  %freq69 = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 20, i32 1
  %20 = ptrtoint ptr %freq69 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %add, ptr %freq69, align 4
  br label %exit

exit:                                             ; preds = %if.end67, %if.end49.exit_crit_edge, %do.end44, %if.end33.exit_crit_edge
  %21 = ptrtoint ptr %mask to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %12, ptr %mask, align 4
  %22 = ptrtoint ptr %payload to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %12, ptr %payload, align 2
  %call74 = call i32 @fmc_send_cmd(ptr noundef %fmdev, i8 noundef zeroext 26, i16 noundef zeroext 0, ptr noundef nonnull %payload, i32 noundef 2, ptr noundef null, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %cmp75 = icmp slt i32 %call74, 0
  br i1 %cmp75, label %exit.cleanup_crit_edge, label %if.end78

exit.cleanup_crit_edge:                           ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end78:                                         ; preds = %exit
  %rds.i = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 20, i32 12
  %23 = ptrtoint ptr %rds.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %rds.i, align 4
  %last_blk_idx.i = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 20, i32 12, i32 1
  %24 = ptrtoint ptr %last_blk_idx.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %last_blk_idx.i, align 1
  %wr_idx.i = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 20, i32 12, i32 4
  %25 = ptrtoint ptr %wr_idx.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %wr_idx.i, align 4
  %rd_idx.i = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 20, i32 12, i32 5
  %26 = ptrtoint ptr %rd_idx.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %rd_idx.i, align 4
  %af_mode.i = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 20, i32 10
  %27 = ptrtoint ptr %af_mode.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %af_mode.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %28)
  %cmp.i = icmp eq i8 %28, 1
  br i1 %cmp.i, label %if.then.i, label %if.end78.fm_rx_reset_rds_cache.exit_crit_edge

if.end78.fm_rx_reset_rds_cache.exit_crit_edge:    ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #9
  br label %fm_rx_reset_rds_cache.exit

if.then.i:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %mask to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %mask, align 4
  %31 = or i16 %30, 32
  store i16 %31, ptr %mask, align 4
  br label %fm_rx_reset_rds_cache.exit

fm_rx_reset_rds_cache.exit:                       ; preds = %if.then.i, %if.end78.fm_rx_reset_rds_cache.exit_crit_edge
  %stat_info.i = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 20, i32 11
  %32 = ptrtoint ptr %stat_info.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 0, ptr %stat_info.i, align 4
  %afcache_size.i = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 20, i32 11, i32 2
  %33 = ptrtoint ptr %afcache_size.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %afcache_size.i, align 4
  %af_list_max.i = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 20, i32 11, i32 3
  %34 = ptrtoint ptr %af_list_max.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %af_list_max.i, align 1
  br label %cleanup

cleanup:                                          ; preds = %fm_rx_reset_rds_cache.exit, %exit.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call74, %fm_rx_reset_rds_cache.exit ], [ %call4, %if.end.cleanup_crit_edge ], [ %call8, %if.end7.cleanup_crit_edge ], [ %call15, %if.end11.cleanup_crit_edge ], [ %call20, %if.end19.cleanup_crit_edge ], [ %call29, %if.end24.cleanup_crit_edge ], [ %call74, %exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp_len) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %curr_frq) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %payload) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fmc_send_cmd(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fm_rx_seek(ptr noundef %fmdev, i32 noundef %seek_upward, i32 noundef %wrap_around, i32 noundef %spacing) local_unnamed_addr #2 align 64 {
entry:
  %payload.i = alloca i16, align 2
  %resp_len = alloca i32, align 4
  %curr_frq = alloca i16, align 2
  %payload = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resp_len) #7
  %0 = ptrtoint ptr %resp_len to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %resp_len, align 4, !annotation !120
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %curr_frq) #7
  %1 = ptrtoint ptr %curr_frq to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %curr_frq, align 2, !annotation !120
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %payload) #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %payload.i) #7
  %2 = add i32 %spacing, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 50000, i32 %2)
  %3 = icmp ult i32 %2, 50000
  %4 = add i32 %spacing, -50001
  call void @__sanitizer_cov_trace_const_cmp4(i32 50000, i32 %4)
  %5 = icmp ult i32 %4, 50000
  %spec.select.i = select i1 %5, i32 2, i32 4
  %spacing.addr.0.i = select i1 %3, i32 1, i32 %spec.select.i
  %conv.i = trunc i32 %spacing.addr.0.i to i16
  %6 = ptrtoint ptr %payload.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv.i, ptr %payload.i, align 2
  %call.i = call i32 @fmc_send_cmd(ptr noundef %fmdev, i8 noundef zeroext 56, i16 noundef zeroext 0, ptr noundef nonnull %payload.i, i32 noundef 2, ptr noundef null, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp8.i = icmp slt i32 %call.i, 0
  br i1 %cmp8.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %payload.i) #7
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %mul.i = mul nuw nsw i32 %spacing.addr.0.i, 50
  %rx.i = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 20
  %7 = ptrtoint ptr %rx.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %mul.i, ptr %rx.i, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %payload.i) #7
  %call2 = call i32 @fmc_send_cmd(ptr noundef %fmdev, i8 noundef zeroext 10, i16 noundef zeroext 1, ptr noundef null, i32 noundef 2, ptr noundef nonnull %curr_frq, ptr noundef nonnull %resp_len) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %8 = ptrtoint ptr %curr_frq to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %curr_frq, align 2
  %top_freq = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 20, i32 0, i32 2
  %10 = ptrtoint ptr %top_freq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %top_freq, align 4
  %bot_freq = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 20, i32 0, i32 1
  %12 = ptrtoint ptr %bot_freq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bot_freq, align 4
  %sub = sub i32 %11, %13
  %div = udiv i32 %sub, 50
  %14 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rx.i, align 4
  %div10 = udiv i32 %15, 50
  %conv12 = zext i16 %9 to i32
  %conv13 = and i32 %div10, 65535
  %rem.rhs.trunc = trunc i32 %div10 to i16
  %rem219 = urem i16 %9, %rem.rhs.trunc
  %rem.zext = zext i16 %rem219 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %seek_upward)
  %tobool.not = icmp eq i32 %seek_upward, 0
  %16 = sub nsw i32 0, %conv13
  %cond.p = select i1 %tobool.not, i32 %16, i32 %conv13
  %cond = add nsw i32 %cond.p, %conv12
  %sext.mask = and i32 %cond, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sext.mask)
  %cmp22.not = icmp eq i32 %sext.mask, 0
  br i1 %cmp22.not, label %if.else, label %if.then24

if.then24:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %sub27 = sub nsw i32 %div, %rem.zext
  br label %if.end38

if.else:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %conv29 = and i32 %cond, 65535
  %conv30 = and i32 %div, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv29, i32 %conv30)
  %cmp31 = icmp ugt i32 %conv29, %conv30
  %spec.select = select i1 %cmp31, i32 %rem.zext, i32 %cond
  br label %if.end38

if.end38:                                         ; preds = %if.else, %if.then24
  %next_frq.0.in = phi i32 [ %sub27, %if.then24 ], [ %spec.select, %if.else ]
  %next_frq.1224 = trunc i32 %next_frq.0.in to i16
  %17 = ptrtoint ptr %payload to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %next_frq.1224, ptr %payload, align 2
  %call39225 = call i32 @fmc_send_cmd(ptr noundef %fmdev, i8 noundef zeroext 10, i16 noundef zeroext 0, ptr noundef nonnull %payload, i32 noundef 2, ptr noundef null, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39225)
  %cmp40226 = icmp slt i32 %call39225, 0
  br i1 %cmp40226, label %if.end38.cleanup_crit_edge, label %if.end43.lr.ph

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end43.lr.ph:                                   ; preds = %if.end38
  %not.tobool.not = xor i1 %tobool.not, true
  %conv46 = zext i1 %not.tobool.not to i16
  %mask = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 18, i32 2
  %maintask_comp = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 15
  %wait.i = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 15, i32 1
  %flag = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 18, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wrap_around)
  %cmp99 = icmp eq i32 %wrap_around, 0
  %top_freq.bot_freq = select i1 %tobool.not, ptr %top_freq, ptr %bot_freq
  %freq127 = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 20, i32 1
  br label %if.end43

if.end43:                                         ; preds = %if.else114.if.end43_crit_edge, %if.end43.lr.ph
  %18 = ptrtoint ptr %payload to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv46, ptr %payload, align 2
  %call47 = call i32 @fmc_send_cmd(ptr noundef %fmdev, i8 noundef zeroext 27, i16 noundef zeroext 0, ptr noundef nonnull %payload, i32 noundef 2, ptr noundef null, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %cmp48 = icmp slt i32 %call47, 0
  br i1 %cmp48, label %if.end43.cleanup_crit_edge, label %if.end51

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end51:                                         ; preds = %if.end43
  %call52 = call i32 @fmc_send_cmd(ptr noundef %fmdev, i8 noundef zeroext 3, i16 noundef zeroext 1, ptr noundef null, i32 noundef 2, ptr noundef null, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %cmp53 = icmp slt i32 %call52, 0
  br i1 %cmp53, label %if.end51.cleanup_crit_edge, label %if.end56

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end56:                                         ; preds = %if.end51
  %19 = ptrtoint ptr %mask to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %mask, align 4
  store i16 3, ptr %mask, align 4
  %21 = ptrtoint ptr %payload to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 3, ptr %payload, align 2
  %call61 = call i32 @fmc_send_cmd(ptr noundef %fmdev, i8 noundef zeroext 26, i16 noundef zeroext 0, ptr noundef nonnull %payload, i32 noundef 2, ptr noundef null, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %cmp62 = icmp slt i32 %call61, 0
  br i1 %cmp62, label %if.end56.cleanup_crit_edge, label %if.end65

if.end56.cleanup_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end65:                                         ; preds = %if.end56
  %22 = ptrtoint ptr %payload to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 2, ptr %payload, align 2
  %call66 = call i32 @fmc_send_cmd(ptr noundef %fmdev, i8 noundef zeroext 45, i16 noundef zeroext 0, ptr noundef nonnull %payload, i32 noundef 2, ptr noundef null, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %cmp67 = icmp slt i32 %call66, 0
  br i1 %cmp67, label %if.end65.cleanup_crit_edge, label %if.end70

if.end65.cleanup_crit_edge:                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end70:                                         ; preds = %if.end65
  %23 = ptrtoint ptr %maintask_comp to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %maintask_comp, align 4
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.44, ptr noundef nonnull @init_completion.__key) #7
  %call72 = call i32 @wait_for_completion_timeout(ptr noundef %maintask_comp, i32 noundef 2000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %do.end77, label %if.end82

do.end77:                                         ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #9
  %call79 = call i32 @jiffies_to_msecs(i32 noundef 2000) #7
  %div80 = udiv i32 %call79, 1000
  %call81 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %div80) #10
  br label %cleanup

if.end82:                                         ; preds = %if.end70
  %24 = ptrtoint ptr %flag to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %flag, align 2
  %26 = ptrtoint ptr %mask to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %20, ptr %mask, align 4
  %27 = ptrtoint ptr %payload to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %20, ptr %payload, align 2
  %call90 = call i32 @fmc_send_cmd(ptr noundef %fmdev, i8 noundef zeroext 26, i16 noundef zeroext 0, ptr noundef nonnull %payload, i32 noundef 2, ptr noundef null, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %cmp91 = icmp slt i32 %call90, 0
  br i1 %cmp91, label %if.end82.cleanup_crit_edge, label %if.end94

if.end82.cleanup_crit_edge:                       ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end94:                                         ; preds = %if.end82
  %28 = and i16 %25, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %tobool97.not = icmp eq i16 %28, 0
  br i1 %tobool97.not, label %if.else137, label %if.then98

if.then98:                                        ; preds = %if.end94
  br i1 %cmp99, label %if.then101, label %if.else114

if.then101:                                       ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #9
  %bot_freq.top_freq = select i1 %tobool.not, ptr %bot_freq, ptr %top_freq
  %29 = ptrtoint ptr %bot_freq.top_freq to i32
  call void @__asan_load4_noabort(i32 %29)
  %cond112 = load i32, ptr %bot_freq.top_freq, align 4
  br label %if.end150

if.else114:                                       ; preds = %if.then98
  %30 = ptrtoint ptr %top_freq.bot_freq to i32
  call void @__asan_load4_noabort(i32 %30)
  %cond125 = load i32, ptr %top_freq.bot_freq, align 4
  %31 = ptrtoint ptr %freq127 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %cond125, ptr %freq127, align 4
  %32 = ptrtoint ptr %bot_freq to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %bot_freq, align 4
  %sub133 = sub i32 %cond125, %33
  %div134 = udiv i32 %sub133, 50
  %next_frq.1 = trunc i32 %div134 to i16
  %34 = ptrtoint ptr %payload to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %next_frq.1, ptr %payload, align 2
  %call39 = call i32 @fmc_send_cmd(ptr noundef %fmdev, i8 noundef zeroext 10, i16 noundef zeroext 0, ptr noundef nonnull %payload, i32 noundef 2, ptr noundef null, ptr noundef null) #7
  %cmp40 = icmp slt i32 %call39, 0
  br i1 %cmp40, label %if.else114.cleanup_crit_edge, label %if.else114.if.end43_crit_edge

if.else114.if.end43_crit_edge:                    ; preds = %if.else114
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

if.else114.cleanup_crit_edge:                     ; preds = %if.else114
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else137:                                       ; preds = %if.end94
  %call138 = call i32 @fmc_send_cmd(ptr noundef %fmdev, i8 noundef zeroext 10, i16 noundef zeroext 1, ptr noundef null, i32 noundef 2, ptr noundef nonnull %curr_frq, ptr noundef nonnull %resp_len) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call138)
  %cmp139 = icmp slt i32 %call138, 0
  br i1 %cmp139, label %if.else137.cleanup_crit_edge, label %if.end142

if.else137.cleanup_crit_edge:                     ; preds = %if.else137
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end142:                                        ; preds = %if.else137
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %curr_frq to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %curr_frq, align 2
  %37 = ptrtoint ptr %bot_freq to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %bot_freq, align 4
  %conv146 = zext i16 %36 to i32
  %mul = mul nuw nsw i32 %conv146, 50
  %add147 = add i32 %mul, %38
  br label %if.end150

if.end150:                                        ; preds = %if.end142, %if.then101
  %storemerge = phi i32 [ %cond112, %if.then101 ], [ %add147, %if.end142 ]
  %ret.0 = phi i32 [ %call90, %if.then101 ], [ %call138, %if.end142 ]
  %39 = ptrtoint ptr %freq127 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %storemerge, ptr %freq127, align 4
  %rds.i = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 20, i32 12
  %40 = ptrtoint ptr %rds.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %rds.i, align 4
  %last_blk_idx.i = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 20, i32 12, i32 1
  %41 = ptrtoint ptr %last_blk_idx.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %last_blk_idx.i, align 1
  %wr_idx.i = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 20, i32 12, i32 4
  %42 = ptrtoint ptr %wr_idx.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %wr_idx.i, align 4
  %rd_idx.i = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 20, i32 12, i32 5
  %43 = ptrtoint ptr %rd_idx.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %rd_idx.i, align 4
  %af_mode.i = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 20, i32 10
  %44 = ptrtoint ptr %af_mode.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %af_mode.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %45)
  %cmp.i = icmp eq i8 %45, 1
  br i1 %cmp.i, label %if.then.i, label %if.end150.fm_rx_reset_rds_cache.exit_crit_edge

if.end150.fm_rx_reset_rds_cache.exit_crit_edge:   ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #9
  br label %fm_rx_reset_rds_cache.exit

if.then.i:                                        ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #9
  %46 = ptrtoint ptr %mask to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %mask, align 4
  %48 = or i16 %47, 32
  store i16 %48, ptr %mask, align 4
  br label %fm_rx_reset_rds_cache.exit

fm_rx_reset_rds_cache.exit:                       ; preds = %if.then.i, %if.end150.fm_rx_reset_rds_cache.exit_crit_edge
  %stat_info.i = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 20, i32 11
  %49 = ptrtoint ptr %stat_info.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 0, ptr %stat_info.i, align 4
  %afcache_size.i = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 20, i32 11, i32 2
  %50 = ptrtoint ptr %afcache_size.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %afcache_size.i, align 4
  %af_list_max.i = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 20, i32 11, i32 3
  %51 = ptrtoint ptr %af_list_max.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 0, ptr %af_list_max.i, align 1
  br label %cleanup

cleanup:                                          ; preds = %fm_rx_reset_rds_cache.exit, %if.else137.cleanup_crit_edge, %if.else114.cleanup_crit_edge, %if.end82.cleanup_crit_edge, %do.end77, %if.end65.cleanup_crit_edge, %if.end56.cleanup_crit_edge, %if.end51.cleanup_crit_edge, %if.end43.cleanup_crit_edge, %if.end38.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ %ret.0, %fm_rx_reset_rds_cache.exit ], [ -61, %do.end77 ], [ %call2, %if.end.cleanup_crit_edge ], [ %call138, %if.else137.cleanup_crit_edge ], [ %call39225, %if.end38.cleanup_crit_edge ], [ %call39, %if.else114.cleanup_crit_edge ], [ %call47, %if.end43.cleanup_crit_edge ], [ %call52, %if.end51.cleanup_crit_edge ], [ %call61, %if.end56.cleanup_crit_edge ], [ %call66, %if.end65.cleanup_crit_edge ], [ %call90, %if.end82.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %payload) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %curr_frq) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp_len) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fm_rx_set_volume(ptr noundef %fmdev, i16 noundef zeroext %vol_to_set) local_unnamed_addr #2 align 64 {
entry:
  %payload = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %payload) #7
  %curr_fmmode = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 19
  %0 = ptrtoint ptr %curr_fmmode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %curr_fmmode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %cmp.not = icmp eq i8 %1, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 70, i16 %vol_to_set)
  %cmp3 = icmp ugt i16 %vol_to_set, 70
  br i1 %cmp3, label %do.end, label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef 0, i32 noundef 70) #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %mul = mul nuw i16 %vol_to_set, 880
  %2 = ptrtoint ptr %payload to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %mul, ptr %payload, align 2
  %call9 = call i32 @fmc_send_cmd(ptr noundef %fmdev, i8 noundef zeroext 28, i16 noundef zeroext 0, ptr noundef nonnull %payload, i32 noundef 2, ptr noundef null, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.end6.cleanup_crit_edge, label %if.end13

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end13:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %volume = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 20, i32 5
  %3 = ptrtoint ptr %volume to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %mul, ptr %volume, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.end6.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %call9, %if.end13 ], [ -1, %entry.cleanup_crit_edge ], [ %call9, %if.end6.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %payload) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fm_rx_get_volume(ptr nocapture noundef readonly %fmdev, ptr noundef writeonly %curr_vol) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %curr_fmmode = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 19
  %0 = ptrtoint ptr %curr_fmmode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %curr_fmmode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %cmp.not = icmp eq i8 %1, 2
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  %cmp2 = icmp eq ptr %curr_vol, null
  br i1 %cmp2, label %do.end, label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #10
  br label %return

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %volume = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 20, i32 5
  %2 = ptrtoint ptr %volume to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %volume, align 4
  %4 = udiv i16 %3, 880
  %5 = ptrtoint ptr %curr_vol to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %curr_vol, align 2
  br label %return

return:                                           ; preds = %if.end5, %do.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ -12, %do.end ], [ 0, %if.end5 ], [ -1, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @fm_rx_get_band_freq_range(ptr nocapture noundef readonly %fmdev, ptr noundef writeonly %bot_freq, ptr noundef writeonly %top_freq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.not = icmp eq ptr %bot_freq, null
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %bot_freq1 = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 20, i32 0, i32 1
  %0 = ptrtoint ptr %bot_freq1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bot_freq1, align 4
  %2 = ptrtoint ptr %bot_freq to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %bot_freq, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %cmp2.not = icmp eq ptr %top_freq, null
  br i1 %cmp2.not, label %if.end.if.end7_crit_edge, label %if.then3

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %top_freq6 = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 20, i32 0, i32 2
  %3 = ptrtoint ptr %top_freq6 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %top_freq6, align 4
  %5 = ptrtoint ptr %top_freq to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %top_freq, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then3, %if.end.if.end7_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @fm_rx_get_region(ptr nocapture noundef readonly %fmdev, ptr nocapture noundef writeonly %region) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %fm_band = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 20, i32 0, i32 3
  %0 = ptrtoint ptr %fm_band to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %fm_band, align 4
  %2 = ptrtoint ptr %region to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %1, ptr %region, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fm_rx_set_region(ptr noundef %fmdev, i8 noundef zeroext %region_to_set) local_unnamed_addr #2 align 64 {
entry:
  %payload = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %payload) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %region_to_set)
  %switch = icmp ult i8 %region_to_set, 2
  br i1 %switch, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %fm_band = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 20, i32 0, i32 3
  %0 = ptrtoint ptr %fm_band to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %fm_band, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %region_to_set)
  %cmp7 = icmp eq i8 %1, %region_to_set
  br i1 %cmp7, label %do.end12, label %if.end15

do.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #10
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %conv16 = zext i8 %region_to_set to i16
  %2 = ptrtoint ptr %payload to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %conv16, ptr %payload, align 2
  %call17 = call i32 @fmc_send_cmd(ptr noundef %fmdev, i8 noundef zeroext 16, i16 noundef zeroext 0, ptr noundef nonnull %payload, i32 noundef 2, ptr noundef null, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %if.end15.cleanup_crit_edge, label %if.end21

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end21:                                         ; preds = %if.end15
  call void @fmc_update_region_info(ptr noundef %fmdev, i8 noundef zeroext %region_to_set) #7
  %freq = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 20, i32 1
  %3 = ptrtoint ptr %freq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %freq, align 4
  %bot_freq = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 20, i32 0, i32 1
  %5 = ptrtoint ptr %bot_freq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bot_freq, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %6)
  %cmp25 = icmp ult i32 %4, %6
  br i1 %cmp25, label %if.end21.do.end46_crit_edge, label %if.else

if.end21.do.end46_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end46

if.else:                                          ; preds = %if.end21
  %top_freq = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 20, i32 0, i32 2
  %7 = ptrtoint ptr %top_freq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %top_freq, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %8)
  %cmp35 = icmp ule i32 %4, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  %or.cond = or i1 %cmp35, %tobool.not
  br i1 %or.cond, label %if.else.cleanup_crit_edge, label %if.else.do.end46_crit_edge

if.else.do.end46_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end46

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end46:                                         ; preds = %if.else.do.end46_crit_edge, %if.end21.do.end46_crit_edge
  %new_frq.074 = phi i32 [ %6, %if.end21.do.end46_crit_edge ], [ %8, %if.else.do.end46_crit_edge ]
  %call47 = call i32 @fm_rx_set_freq(ptr noundef %fmdev, i32 noundef %new_frq.074)
  br label %cleanup

cleanup:                                          ; preds = %do.end46, %if.else.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %do.end12, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %do.end12 ], [ %call17, %if.end15.cleanup_crit_edge ], [ %call47, %do.end46 ], [ %call17, %if.else.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %payload) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fmc_update_region_info(ptr noundef, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fm_rx_get_mute_mode(ptr nocapture noundef readonly %fmdev, ptr noundef writeonly %curr_mute_mode) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %curr_fmmode = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 19
  %0 = ptrtoint ptr %curr_fmmode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %curr_fmmode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %cmp.not = icmp eq i8 %1, 2
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  %cmp2 = icmp eq ptr %curr_mute_mode, null
  br i1 %cmp2, label %do.end, label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #10
  br label %return

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %mute_mode = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 20, i32 2
  %2 = ptrtoint ptr %mute_mode to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mute_mode, align 4
  %4 = ptrtoint ptr %curr_mute_mode to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %curr_mute_mode, align 1
  br label %return

return:                                           ; preds = %if.end5, %do.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ -12, %do.end ], [ 0, %if.end5 ], [ -1, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fm_rx_set_mute_mode(ptr noundef %fmdev, i8 noundef zeroext %mute_mode_toset) local_unnamed_addr #2 align 64 {
entry:
  %payload.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mute_mode = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 20, i32 2
  %0 = ptrtoint ptr %mute_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %mute_mode, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %mute_mode_toset)
  %cmp = icmp eq i8 %1, %mute_mode_toset
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %mute_mode to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %mute_mode_toset, ptr %mute_mode, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %payload.i) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %mute_mode_toset)
  %switch.selectcmp.i = icmp eq i8 %mute_mode_toset, 2
  %switch.select.i = select i1 %switch.selectcmp.i, i16 16, i16 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %mute_mode_toset)
  %switch.selectcmp21.i = icmp eq i8 %mute_mode_toset, 0
  %switch.select22.i = select i1 %switch.selectcmp21.i, i16 2, i16 %switch.select.i
  %rf_depend_mute.i = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 20, i32 4
  %3 = ptrtoint ptr %rf_depend_mute.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %rf_depend_mute.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %4)
  %cmp.i = icmp eq i8 %4, 1
  %or.i = zext i1 %cmp.i to i16
  %muteval.1.in.i = or i16 %switch.select22.i, %or.i
  %5 = ptrtoint ptr %payload.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %muteval.1.in.i, ptr %payload.i, align 2
  %call.i = call i32 @fmc_send_cmd(ptr noundef %fmdev, i8 noundef zeroext 17, i16 noundef zeroext 0, ptr noundef nonnull %payload.i, i32 noundef 2, ptr noundef null, ptr noundef null) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %payload.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp7 = icmp slt i32 %call.i, 0
  br i1 %cmp7, label %if.then9, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %mute_mode to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %1, ptr %mute_mode, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then9 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fm_rx_get_rfdepend_softmute(ptr nocapture noundef readonly %fmdev, ptr noundef writeonly %curr_mute_mode) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %curr_fmmode = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 19
  %0 = ptrtoint ptr %curr_fmmode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %curr_fmmode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %cmp.not = icmp eq i8 %1, 2
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  %cmp2 = icmp eq ptr %curr_mute_mode, null
  br i1 %cmp2, label %do.end, label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #10
  br label %return

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %rf_depend_mute = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 20, i32 4
  %2 = ptrtoint ptr %rf_depend_mute to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %rf_depend_mute, align 2
  %4 = ptrtoint ptr %curr_mute_mode to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %curr_mute_mode, align 1
  br label %return

return:                                           ; preds = %if.end5, %do.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ -12, %do.end ], [ 0, %if.end5 ], [ -1, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fm_rx_set_rfdepend_softmute(ptr noundef %fmdev, i8 noundef zeroext %rfdepend_mute) local_unnamed_addr #2 align 64 {
entry:
  %payload.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %curr_fmmode = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 19
  %0 = ptrtoint ptr %curr_fmmode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %curr_fmmode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %cmp.not = icmp eq i8 %1, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %rfdepend_mute)
  %switch = icmp ult i8 %rfdepend_mute, 2
  br i1 %switch, label %if.end9, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #10
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %rf_depend_mute = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 20, i32 4
  %2 = ptrtoint ptr %rf_depend_mute to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %rf_depend_mute, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %rfdepend_mute)
  %cmp12 = icmp eq i8 %3, %rfdepend_mute
  br i1 %cmp12, label %if.end9.cleanup_crit_edge, label %if.end15

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end15:                                         ; preds = %if.end9
  %4 = ptrtoint ptr %rf_depend_mute to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %rfdepend_mute, ptr %rf_depend_mute, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %payload.i) #7
  %mute_mode.i = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 20, i32 2
  %5 = ptrtoint ptr %mute_mode.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %mute_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %6)
  %switch.selectcmp.i = icmp eq i8 %6, 2
  %switch.select.i = select i1 %switch.selectcmp.i, i16 16, i16 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %switch.selectcmp21.i = icmp eq i8 %6, 0
  %switch.select22.i = select i1 %switch.selectcmp21.i, i16 2, i16 %switch.select.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %rfdepend_mute)
  %cmp.i = icmp eq i8 %rfdepend_mute, 1
  %or.i = zext i1 %cmp.i to i16
  %muteval.1.in.i = or i16 %switch.select22.i, %or.i
  %7 = ptrtoint ptr %payload.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %muteval.1.in.i, ptr %payload.i, align 2
  %call.i = call i32 @fmc_send_cmd(ptr noundef %fmdev, i8 noundef zeroext 17, i16 noundef zeroext 0, ptr noundef nonnull %payload.i, i32 noundef 2, ptr noundef null, ptr noundef null) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %payload.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp21 = icmp slt i32 %call.i, 0
  br i1 %cmp21, label %if.then23, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then23:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %rf_depend_mute to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %3, ptr %rf_depend_mute, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.then23, %if.end15.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %call.i, %if.then23 ], [ -1, %entry.cleanup_crit_edge ], [ 0, %if.end9.cleanup_crit_edge ], [ 0, %if.end15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fm_rx_get_rssi_level(ptr noundef %fmdev, ptr noundef writeonly %rssilvl) local_unnamed_addr #2 align 64 {
entry:
  %curr_rssi_lel = alloca i16, align 2
  %resp_len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %curr_rssi_lel) #7
  %0 = ptrtoint ptr %curr_rssi_lel to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %curr_rssi_lel, align 2, !annotation !120
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resp_len) #7
  %1 = ptrtoint ptr %resp_len to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %resp_len, align 4, !annotation !120
  %cmp = icmp eq ptr %rssilvl, null
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i32 @fmc_send_cmd(ptr noundef %fmdev, i8 noundef zeroext 1, i16 noundef zeroext 1, ptr noundef null, i32 noundef 2, ptr noundef nonnull %curr_rssi_lel, ptr noundef nonnull %resp_len) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %curr_rssi_lel to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %curr_rssi_lel, align 2
  %4 = ptrtoint ptr %rssilvl to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %3, ptr %rssilvl, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -12, %do.end ], [ 0, %if.end4 ], [ %call1, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp_len) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %curr_rssi_lel) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fm_rx_set_rssi_threshold(ptr noundef %fmdev, i16 noundef signext %rssi_lvl_toset) local_unnamed_addr #2 align 64 {
entry:
  %payload = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %payload) #7
  %0 = add i16 %rssi_lvl_toset, -128
  call void @__sanitizer_cov_trace_const_cmp2(i16 -256, i16 %0)
  %1 = icmp ult i16 %0, -256
  br i1 %1, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %payload to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %rssi_lvl_toset, ptr %payload, align 2
  %call5 = call i32 @fmc_send_cmd(ptr noundef %fmdev, i8 noundef zeroext 15, i16 noundef zeroext 0, ptr noundef nonnull %payload, i32 noundef 2, ptr noundef null, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %rssi_threshold = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 20, i32 6
  %3 = ptrtoint ptr %rssi_threshold to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %rssi_lvl_toset, ptr %rssi_threshold, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end9 ], [ %call5, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %payload) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fm_rx_get_rssi_threshold(ptr nocapture noundef readonly %fmdev, ptr noundef writeonly %curr_rssi_lvl) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %curr_fmmode = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 19
  %0 = ptrtoint ptr %curr_fmmode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %curr_fmmode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %cmp.not = icmp eq i8 %1, 2
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  %cmp2 = icmp eq ptr %curr_rssi_lvl, null
  br i1 %cmp2, label %do.end, label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #10
  br label %return

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %rssi_threshold = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 20, i32 6
  %2 = ptrtoint ptr %rssi_threshold to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %rssi_threshold, align 2
  %4 = ptrtoint ptr %curr_rssi_lvl to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %3, ptr %curr_rssi_lvl, align 2
  br label %return

return:                                           ; preds = %if.end5, %do.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ -12, %do.end ], [ 0, %if.end5 ], [ -1, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fm_rx_set_stereo_mono(ptr noundef %fmdev, i16 noundef zeroext %mode) local_unnamed_addr #2 align 64 {
entry:
  %payload = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %payload) #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %mode)
  %switch = icmp ult i16 %mode, 2
  br i1 %switch, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %payload to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 %mode, ptr %payload, align 2
  %call5 = call i32 @fmc_send_cmd(ptr noundef %fmdev, i8 noundef zeroext 12, i16 noundef zeroext 0, ptr noundef nonnull %payload, i32 noundef 2, ptr noundef null, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %payload to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 1, ptr %payload, align 2
  %call10 = call i32 @fmc_send_cmd(ptr noundef %fmdev, i8 noundef zeroext 13, i16 noundef zeroext 0, ptr noundef nonnull %payload, i32 noundef 2, ptr noundef null, ptr noundef null) #7
  %2 = call i32 @llvm.smin.i32(i32 %call10, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call5, %if.end.cleanup_crit_edge ], [ %2, %if.end9 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %payload) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fm_rx_get_stereo_mono(ptr noundef %fmdev, ptr noundef writeonly %mode) local_unnamed_addr #2 align 64 {
entry:
  %curr_mode = alloca i16, align 2
  %resp_len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %curr_mode) #7
  %0 = ptrtoint ptr %curr_mode to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %curr_mode, align 2, !annotation !120
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resp_len) #7
  %1 = ptrtoint ptr %resp_len to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %resp_len, align 4, !annotation !120
  %cmp = icmp eq ptr %mode, null
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i32 @fmc_send_cmd(ptr noundef %fmdev, i8 noundef zeroext 12, i16 noundef zeroext 1, ptr noundef null, i32 noundef 2, ptr noundef nonnull %curr_mode, ptr noundef nonnull %resp_len) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %curr_mode to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %curr_mode, align 2
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %3, ptr %mode, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -12, %do.end ], [ 0, %if.end4 ], [ %call1, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp_len) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %curr_mode) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fm_rx_set_deemphasis_mode(ptr noundef %fmdev, i16 noundef zeroext %mode) local_unnamed_addr #2 align 64 {
entry:
  %payload = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %payload) #7
  %curr_fmmode = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 19
  %0 = ptrtoint ptr %curr_fmmode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %curr_fmmode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %cmp.not = icmp eq i8 %1, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %mode)
  %switch = icmp ult i16 %mode, 2
  br i1 %switch, label %if.end10, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %conv2 = zext i16 %mode to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef %conv2) #10
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %2 = ptrtoint ptr %payload to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %mode, ptr %payload, align 2
  %call11 = call i32 @fmc_send_cmd(ptr noundef %fmdev, i8 noundef zeroext 14, i16 noundef zeroext 0, ptr noundef nonnull %payload, i32 noundef 2, ptr noundef null, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.end10.cleanup_crit_edge, label %if.end15

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end15:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %conv16 = trunc i16 %mode to i8
  %deemphasis_mode = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 20, i32 3
  %3 = ptrtoint ptr %deemphasis_mode to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv16, ptr %deemphasis_mode, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.end10.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end15 ], [ -1, %entry.cleanup_crit_edge ], [ %call11, %if.end10.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %payload) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fm_rx_get_deemph_mode(ptr nocapture noundef readonly %fmdev, ptr noundef writeonly %curr_deemphasis_mode) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %curr_fmmode = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 19
  %0 = ptrtoint ptr %curr_fmmode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %curr_fmmode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %cmp.not = icmp eq i8 %1, 2
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  %cmp2 = icmp eq ptr %curr_deemphasis_mode, null
  br i1 %cmp2, label %do.end, label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #10
  br label %return

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %deemphasis_mode = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 20, i32 3
  %2 = ptrtoint ptr %deemphasis_mode to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %deemphasis_mode, align 1
  %conv6 = zext i8 %3 to i16
  %4 = ptrtoint ptr %curr_deemphasis_mode to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv6, ptr %curr_deemphasis_mode, align 2
  br label %return

return:                                           ; preds = %if.end5, %do.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ -12, %do.end ], [ 0, %if.end5 ], [ -1, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fm_rx_set_rds_mode(ptr noundef %fmdev, i8 noundef zeroext %rds_en_dis) local_unnamed_addr #2 align 64 {
entry:
  %payload = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %payload) #7
  %0 = zext i8 %rds_en_dis to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i8 %rds_en_dis, label %do.end [
    i8 1, label %land.lhs.true8
    i8 0, label %land.lhs.true52
  ]

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #10
  br label %cleanup

land.lhs.true8:                                   ; preds = %entry
  %rds = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 20, i32 12
  %1 = ptrtoint ptr %rds to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %rds, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %cmp10 = icmp eq i8 %2, 0
  br i1 %cmp10, label %if.then12, label %land.lhs.true8.cleanup_crit_edge

land.lhs.true8.cleanup_crit_edge:                 ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then12:                                        ; preds = %land.lhs.true8
  %3 = ptrtoint ptr %payload to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 3, ptr %payload, align 2
  %call13 = call i32 @fmc_send_cmd(ptr noundef %fmdev, i8 noundef zeroext 32, i16 noundef zeroext 0, ptr noundef nonnull %payload, i32 noundef 2, ptr noundef null, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.then12.cleanup_crit_edge, label %if.end17

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end17:                                         ; preds = %if.then12
  %4 = ptrtoint ptr %payload to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 1, ptr %payload, align 2
  %call18 = call i32 @fmc_send_cmd(ptr noundef %fmdev, i8 noundef zeroext 47, i16 noundef zeroext 0, ptr noundef nonnull %payload, i32 noundef 2, ptr noundef null, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %if.end17.cleanup_crit_edge, label %if.end22

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end22:                                         ; preds = %if.end17
  %call23 = call i32 @fmc_send_cmd(ptr noundef %fmdev, i8 noundef zeroext 3, i16 noundef zeroext 1, ptr noundef null, i32 noundef 2, ptr noundef null, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %if.end22.cleanup_crit_edge, label %if.end27

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end27:                                         ; preds = %if.end22
  %5 = ptrtoint ptr %payload to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 64, ptr %payload, align 2
  %call28 = call i32 @fmc_send_cmd(ptr noundef %fmdev, i8 noundef zeroext 20, i16 noundef zeroext 0, ptr noundef nonnull %payload, i32 noundef 2, ptr noundef null, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %if.end27.cleanup_crit_edge, label %if.end32

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end32:                                         ; preds = %if.end27
  %mask = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 18, i32 2
  %6 = ptrtoint ptr %mask to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %mask, align 4
  %8 = or i16 %7, 4
  store i16 %8, ptr %mask, align 4
  %9 = ptrtoint ptr %payload to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %payload, align 2
  %call37 = call i32 @fmc_send_cmd(ptr noundef %fmdev, i8 noundef zeroext 26, i16 noundef zeroext 0, ptr noundef nonnull %payload, i32 noundef 2, ptr noundef null, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp38 = icmp slt i32 %call37, 0
  br i1 %cmp38, label %if.then40, label %if.end45

if.then40:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %mask to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %mask, align 4
  %12 = and i16 %11, -5
  store i16 %12, ptr %mask, align 4
  br label %cleanup

if.end45:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %rds to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %rds, align 4
  br label %cleanup

land.lhs.true52:                                  ; preds = %entry
  %rds54 = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 20, i32 12
  %14 = ptrtoint ptr %rds54 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %rds54, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %15)
  %cmp57 = icmp eq i8 %15, 1
  br i1 %cmp57, label %if.then59, label %land.lhs.true52.cleanup_crit_edge

land.lhs.true52.cleanup_crit_edge:                ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then59:                                        ; preds = %land.lhs.true52
  %16 = ptrtoint ptr %payload to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 1, ptr %payload, align 2
  %call60 = call i32 @fmc_send_cmd(ptr noundef %fmdev, i8 noundef zeroext 32, i16 noundef zeroext 0, ptr noundef nonnull %payload, i32 noundef 2, ptr noundef null, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %cmp61 = icmp slt i32 %call60, 0
  br i1 %cmp61, label %if.then59.cleanup_crit_edge, label %if.end64

if.then59.cleanup_crit_edge:                      ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end64:                                         ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #9
  %last_blk_idx = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 20, i32 12, i32 1
  %17 = ptrtoint ptr %last_blk_idx to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %last_blk_idx, align 1
  %wr_idx = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 20, i32 12, i32 4
  %18 = ptrtoint ptr %wr_idx to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %wr_idx, align 4
  %rd_idx = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 20, i32 12, i32 5
  %19 = ptrtoint ptr %rd_idx to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %rd_idx, align 4
  %stat_info.i = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 20, i32 11
  %20 = ptrtoint ptr %stat_info.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 0, ptr %stat_info.i, align 4
  %afcache_size.i = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 20, i32 11, i32 2
  %21 = ptrtoint ptr %afcache_size.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %afcache_size.i, align 4
  %af_list_max.i = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 20, i32 11, i32 3
  %22 = ptrtoint ptr %af_list_max.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %af_list_max.i, align 1
  %mask72 = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 18, i32 2
  %23 = ptrtoint ptr %mask72 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %mask72, align 4
  %25 = and i16 %24, -5
  store i16 %25, ptr %mask72, align 4
  %26 = ptrtoint ptr %rds54 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %rds54, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end64, %if.then59.cleanup_crit_edge, %land.lhs.true52.cleanup_crit_edge, %if.end45, %if.then40, %if.end27.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %if.then12.cleanup_crit_edge, %land.lhs.true8.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call37, %if.then40 ], [ %call13, %if.then12.cleanup_crit_edge ], [ %call18, %if.end17.cleanup_crit_edge ], [ %call23, %if.end22.cleanup_crit_edge ], [ %call28, %if.end27.cleanup_crit_edge ], [ %call60, %if.then59.cleanup_crit_edge ], [ 0, %land.lhs.true52.cleanup_crit_edge ], [ 0, %if.end64 ], [ 0, %if.end45 ], [ 0, %land.lhs.true8.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %payload) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fm_rx_get_rds_mode(ptr nocapture noundef readonly %fmdev, ptr noundef writeonly %curr_rds_en_dis) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %curr_fmmode = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 19
  %0 = ptrtoint ptr %curr_fmmode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %curr_fmmode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %cmp.not = icmp eq i8 %1, 2
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  %cmp2 = icmp eq ptr %curr_rds_en_dis, null
  br i1 %cmp2, label %do.end, label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #10
  br label %return

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %rds = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 20, i32 12
  %2 = ptrtoint ptr %rds to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %rds, align 4
  %4 = ptrtoint ptr %curr_rds_en_dis to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %curr_rds_en_dis, align 1
  br label %return

return:                                           ; preds = %if.end5, %do.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ -12, %do.end ], [ 0, %if.end5 ], [ -1, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fm_rx_set_rds_system(ptr noundef %fmdev, i8 noundef zeroext %rds_mode) local_unnamed_addr #2 align 64 {
entry:
  %payload = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %payload) #7
  %curr_fmmode = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 19
  %0 = ptrtoint ptr %curr_fmmode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %curr_fmmode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %cmp.not = icmp eq i8 %1, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %rds_mode)
  %switch = icmp ult i8 %rds_mode, 2
  br i1 %switch, label %if.end9, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39) #10
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %conv10 = zext i8 %rds_mode to i16
  %2 = ptrtoint ptr %payload to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %conv10, ptr %payload, align 2
  %call11 = call i32 @fmc_send_cmd(ptr noundef %fmdev, i8 noundef zeroext 25, i16 noundef zeroext 0, ptr noundef nonnull %payload, i32 noundef 2, ptr noundef null, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.end9.cleanup_crit_edge, label %if.end15

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end15:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %rds_mode16 = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 20, i32 9
  %3 = ptrtoint ptr %rds_mode16 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %rds_mode, ptr %rds_mode16, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.end9.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end15 ], [ -1, %entry.cleanup_crit_edge ], [ %call11, %if.end9.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %payload) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fm_rx_set_af_switch(ptr noundef %fmdev, i8 noundef zeroext %af_mode) local_unnamed_addr #2 align 64 {
entry:
  %payload = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %payload) #7
  %curr_fmmode = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 19
  %0 = ptrtoint ptr %curr_fmmode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %curr_fmmode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %cmp.not = icmp eq i8 %1, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = zext i8 %af_mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.45)
  switch i8 %af_mode, label %do.end [
    i8 1, label %if.then13
    i8 0, label %if.else
  ]

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41) #10
  br label %cleanup

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %mask = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 18, i32 2
  %3 = ptrtoint ptr %mask to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %mask, align 4
  %5 = or i16 %4, 32
  store i16 %5, ptr %mask, align 4
  br label %if.end20

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %mask17 = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 18, i32 2
  %6 = ptrtoint ptr %mask17 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %mask17, align 4
  %8 = and i16 %7, -33
  store i16 %8, ptr %mask17, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.then13
  %mask22 = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 18, i32 2
  %9 = ptrtoint ptr %mask22 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %mask22, align 4
  %11 = ptrtoint ptr %payload to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %payload, align 2
  %call23 = call i32 @fmc_send_cmd(ptr noundef %fmdev, i8 noundef zeroext 26, i16 noundef zeroext 0, ptr noundef nonnull %payload, i32 noundef 2, ptr noundef null, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %if.end20.cleanup_crit_edge, label %if.end27

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end27:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  %af_mode28 = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 20, i32 10
  %12 = ptrtoint ptr %af_mode28 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %af_mode, ptr %af_mode28, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %if.end20.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end27 ], [ -1, %entry.cleanup_crit_edge ], [ %call23, %if.end20.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %payload) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fm_rx_get_af_switch(ptr nocapture noundef readonly %fmdev, ptr noundef writeonly %af_mode) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %curr_fmmode = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 19
  %0 = ptrtoint ptr %curr_fmmode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %curr_fmmode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %cmp.not = icmp eq i8 %1, 2
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  %cmp2 = icmp eq ptr %af_mode, null
  br i1 %cmp2, label %do.end, label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #10
  br label %return

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %af_mode6 = getelementptr inbounds %struct.fmdev, ptr %fmdev, i32 0, i32 20, i32 10
  %2 = ptrtoint ptr %af_mode6 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %af_mode6, align 1
  %4 = ptrtoint ptr %af_mode to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %af_mode, align 1
  br label %return

return:                                           ; preds = %if.end5, %do.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ -12, %do.end ], [ 0, %if.end5 ], [ -1, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !18, !19, !21, !22, !24, !25, !26, !27, !29, !30, !31, !32, !34, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !54, !56, !57, !58, !60, !61, !62, !63, !65, !66, !67, !69, !70, !71, !72, !74, !75, !76, !78, !79, !80, !81, !83, !84, !85, !87, !88, !89, !90, !92, !93, !94, !96, !97, !98, !99, !101, !102, !103, !104, !106, !107, !108, !110}
!llvm.module.flags = !{!111, !112, !113, !114, !115, !116, !117, !118}
!llvm.ident = !{!119}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/radio/wl128x/fmdrv_rx.c", i32 42, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @fm_rx_set_freq._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @fm_rx_set_freq._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/radio/wl128x/fmdrv_rx.c", i32 95, i32 3}
!8 = !{ptr @fm_rx_set_freq._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @fm_rx_set_freq._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/radio/wl128x/fmdrv_rx.c", i32 110, i32 3}
!12 = !{ptr @fm_rx_set_freq._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @fm_rx_set_freq._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/radio/wl128x/fmdrv_rx.c", i32 169, i32 3}
!16 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @fm_rx_seek._entry, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @fm_rx_seek._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @fm_rx_seek._entry.11, !20, !"_entry", i1 false, i1 false}
!20 = !{!"../drivers/media/radio/wl128x/fmdrv_rx.c", i32 239, i32 3}
!21 = !{ptr @fm_rx_seek._entry_ptr.12, !20, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/radio/wl128x/fmdrv_rx.c", i32 296, i32 3}
!24 = !{ptr @.str.14, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @fm_rx_set_volume._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @fm_rx_set_volume._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.15, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/radio/wl128x/fmdrv_rx.c", i32 319, i32 3}
!29 = !{ptr @.str.16, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @fm_rx_get_volume._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @fm_rx_get_volume._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/radio/wl128x/fmdrv_rx.c", i32 355, i32 3}
!34 = !{ptr @.str.18, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @fm_rx_set_region._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @fm_rx_set_region._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.20, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/radio/wl128x/fmdrv_rx.c", i32 360, i32 3}
!39 = !{ptr @fm_rx_set_region._entry.19, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @fm_rx_set_region._entry_ptr.21, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.22, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/radio/wl128x/fmdrv_rx.c", i32 396, i32 3}
!43 = !{ptr @fm_rx_get_mute_mode._entry, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @fm_rx_get_mute_mode._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.23, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/radio/wl128x/fmdrv_rx.c", i32 466, i32 3}
!47 = !{ptr @fm_rx_get_rfdepend_softmute._entry, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @fm_rx_get_rfdepend_softmute._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/radio/wl128x/fmdrv_rx.c", i32 486, i32 3}
!51 = !{ptr @.str.25, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @fm_rx_set_rfdepend_softmute._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @fm_rx_set_rfdepend_softmute._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/radio/wl128x/fmdrv_rx.c", i32 512, i32 3}
!56 = !{ptr @fm_rx_get_rssi_level._entry, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @fm_rx_get_rssi_level._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/radio/wl128x/fmdrv_rx.c", i32 537, i32 3}
!60 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @fm_rx_set_rssi_threshold._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @fm_rx_set_rssi_threshold._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.29, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/media/radio/wl128x/fmdrv_rx.c", i32 558, i32 3}
!65 = !{ptr @fm_rx_get_rssi_threshold._entry, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @fm_rx_get_rssi_threshold._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.30, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/media/radio/wl128x/fmdrv_rx.c", i32 574, i32 3}
!69 = !{ptr @.str.31, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @fm_rx_set_stereo_mono._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @fm_rx_set_stereo_mono._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.32, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/radio/wl128x/fmdrv_rx.c", i32 603, i32 3}
!74 = !{ptr @fm_rx_get_stereo_mono._entry, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @fm_rx_get_stereo_mono._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.33, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/media/radio/wl128x/fmdrv_rx.c", i32 628, i32 3}
!78 = !{ptr @.str.34, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @fm_rx_set_deemphasis_mode._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @fm_rx_set_deemphasis_mode._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.35, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/media/radio/wl128x/fmdrv_rx.c", i32 650, i32 3}
!83 = !{ptr @fm_rx_get_deemph_mode._entry, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @fm_rx_get_deemph_mode._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.36, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/media/radio/wl128x/fmdrv_rx.c", i32 666, i32 3}
!87 = !{ptr @.str.37, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @fm_rx_set_rds_mode._entry, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @fm_rx_set_rds_mode._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.38, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/media/radio/wl128x/fmdrv_rx.c", i32 741, i32 3}
!92 = !{ptr @fm_rx_get_rds_mode._entry, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @fm_rx_get_rds_mode._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.39, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/media/radio/wl128x/fmdrv_rx.c", i32 760, i32 3}
!96 = !{ptr @.str.40, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @fm_rx_set_rds_system._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @fm_rx_set_rds_system._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.41, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/media/radio/wl128x/fmdrv_rx.c", i32 786, i32 3}
!101 = !{ptr @.str.42, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @fm_rx_set_af_switch._entry, !100, !"_entry", i1 false, i1 false}
!103 = !{ptr @fm_rx_set_af_switch._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.43, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/media/radio/wl128x/fmdrv_rx.c", i32 813, i32 3}
!106 = !{ptr @fm_rx_get_af_switch._entry, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @fm_rx_get_af_switch._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @init_completion.__key, !109, !"__key", i1 false, i1 false}
!109 = !{!"../include/linux/completion.h", i32 87, i32 2}
!110 = !{ptr @.str.44, !109, !"<string literal>", i1 false, i1 false}
!111 = !{i32 1, !"wchar_size", i32 2}
!112 = !{i32 1, !"min_enum_size", i32 4}
!113 = !{i32 8, !"branch-target-enforcement", i32 0}
!114 = !{i32 8, !"sign-return-address", i32 0}
!115 = !{i32 8, !"sign-return-address-all", i32 0}
!116 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!117 = !{i32 7, !"uwtable", i32 1}
!118 = !{i32 7, !"frame-pointer", i32 2}
!119 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!120 = !{!"auto-init"}
