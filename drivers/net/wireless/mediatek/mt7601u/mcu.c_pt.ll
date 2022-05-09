; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/mediatek/mt7601u/mcu.c_pt.bc'
source_filename = "../drivers/net/wireless/mediatek/mt7601u/mcu.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.91 }
%struct.atomic_t = type { i32 }
%union.anon.91 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.mt7601u_dev = type { ptr, ptr, i32, %struct.mutex, [4 x i32], %struct.cfg80211_chan_def, ptr, %struct.mt7601u_mcu, %struct.delayed_work, %struct.delayed_work, ptr, %struct.delayed_work, ptr, [128 x ptr], %struct.spinlock, %struct.spinlock, ptr, [6 x i8], ptr, %struct.mutex, ptr, %struct.mutex, %struct.mutex, i32, i32, [8 x i8], [8 x i8], i16, i16, %struct.spinlock, %struct.tasklet_struct, ptr, %struct.sk_buff_head, %struct.atomic_t, %struct.spinlock, %struct.tasklet_struct, %struct.mt7601u_rx_queue, %struct.spinlock, [6 x i8], i8, i8, %struct.ewma_rssi, i8, %struct.mt7601u_freq_cal, i8, i8, i8, i16, i32, i32, i32, i32, i8, i8, i8, i8, [2 x i32], %struct.mac_stats }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.mt7601u_mcu = type { %struct.mutex, i8, %struct.mt7601u_dma_buf, %struct.completion }
%struct.mt7601u_dma_buf = type { ptr, ptr, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.sk_buff_head = type { %union.anon.61, i32, %struct.spinlock }
%union.anon.61 = type { %struct.anon.62 }
%struct.anon.62 = type { ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.129, i32 }
%union.anon.129 = type { ptr }
%struct.mt7601u_rx_queue = type { ptr, [16 x %struct.mt7601u_dma_buf_rx], i32, i32, i32, i32 }
%struct.mt7601u_dma_buf_rx = type { ptr, ptr }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.ewma_rssi = type { i32 }
%struct.mt7601u_freq_cal = type { %struct.delayed_work, i8, i8, i8 }
%struct.mac_stats = type { [6 x i64], [6 x i64], [2 x i64], [32 x i64], [2 x i64] }
%struct.sk_buff = type { %union.anon.40, %union.anon.43, %union.anon.44, [48 x i8], %union.anon.45, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.47, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.40 = type { %struct.anon.41 }
%struct.anon.41 = type { ptr, ptr, %union.anon.42 }
%union.anon.42 = type { ptr }
%union.anon.43 = type { ptr }
%union.anon.44 = type { i64 }
%union.anon.45 = type { %struct.anon.46 }
%struct.anon.46 = type { i32, ptr }
%union.anon.47 = type { %struct.anon.48 }
%struct.anon.48 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.49, i32, i32, i32, i16, i16, %union.anon.51, i32, %union.anon.52, %union.anon.53, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.49 = type { i32 }
%union.anon.51 = type { i32 }
%union.anon.52 = type { i32 }
%union.anon.53 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.kref = type { %struct.refcount_struct }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.mt76_reg_pair = type { i32, i32 }
%struct.firmware = type { i32, ptr, ptr }
%struct.mt76_fw_header = type { i32, i32, i16, i16, [4 x i8], [16 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.mt76_fw = type { %struct.mt76_fw_header, [64 x i8], [0 x i8] }

@mt7601u_mcu_tssi_read_kick._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 183, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Warning: MCU TSSI read kick failed\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mt7601u_mcu_tssi_read_kick\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/net/wireless/mediatek/mt7601u/mcu.c\00", [52 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mt7601u_mcu_tssi_read_kick._entry_ptr = internal global ptr @mt7601u_mcu_tssi_read_kick._entry, section ".printk_index", align 4
@mt7601u_mcu_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&dev->mcu.mutex\00", [16 x i8] zeroinitializer }, align 32
@mt7601u_mcu_msg_send._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 133, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Error: MCU response pre-completed!\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mt7601u_mcu_msg_send\00", [43 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@mt7601u_mcu_msg_send._entry_ptr = internal global ptr @mt7601u_mcu_msg_send._entry, section ".printk_index", align 4
@mt7601u_mcu_msg_send._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.7, ptr @.str.2, i32 139, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Error: send MCU cmd failed:%d\0A\00", [33 x i8] zeroinitializer }, align 32
@mt7601u_mcu_msg_send._entry_ptr.11 = internal global ptr @mt7601u_mcu_msg_send._entry.9, section ".printk_index", align 4
@mt7601u_mcu_msg_send._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.7, ptr @.str.2, i32 143, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Error: %s sent != skb->len\0A\00", [36 x i8] zeroinitializer }, align 32
@mt7601u_mcu_msg_send._entry_ptr.14 = internal global ptr @mt7601u_mcu_msg_send._entry.12, section ".printk_index", align 4
@__tracepoint_mt_mcu_msg_send = external dso_local global %struct.tracepoint, align 4
@.str.15 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/net/wireless/mediatek/mt7601u/trace.h\00", [50 x i8] zeroinitializer }, align 32
@trace_mt_mcu_msg_send.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.16 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_mt_submit_urb = external dso_local global %struct.tracepoint, align 4
@trace_mt_submit_urb.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@mt7601u_mcu_wait_resp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 77, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Warning: %s retrying\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mt7601u_mcu_wait_resp\00", [42 x i8] zeroinitializer }, align 32
@mt7601u_mcu_wait_resp._entry_ptr = internal global ptr @mt7601u_mcu_wait_resp._entry, section ".printk_index", align 4
@mt7601u_mcu_wait_resp._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.2, i32 94, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Error: MCU resp urb failed:%d\0A\00", [33 x i8] zeroinitializer }, align 32
@mt7601u_mcu_wait_resp._entry_ptr.22 = internal global ptr @mt7601u_mcu_wait_resp._entry.20, section ".printk_index", align 4
@mt7601u_mcu_wait_resp._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.19, ptr @.str.2, i32 102, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Error: MCU resp evt:%lx seq:%hhx-%lx!\0A\00", [57 x i8] zeroinitializer }, align 32
@mt7601u_mcu_wait_resp._entry_ptr.25 = internal global ptr @mt7601u_mcu_wait_resp._entry.23, section ".printk_index", align 4
@mt7601u_mcu_wait_resp._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.19, ptr @.str.2, i32 105, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Error: %s timed out\0A\00", [43 x i8] zeroinitializer }, align 32
@mt7601u_mcu_wait_resp._entry_ptr.28 = internal global ptr @mt7601u_mcu_wait_resp._entry.26, section ".printk_index", align 4
@.str.29 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mt7601u.bin\00", [20 x i8] zeroinitializer }, align 32
@mt7601u_load_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.2, i32 442, ptr @.str.32, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"Firmware Version: %d.%d.%02d Build: %x Build time: %.16s\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mt7601u_load_firmware\00", [42 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@mt7601u_load_firmware._entry_ptr = internal global ptr @mt7601u_load_firmware._entry, section ".printk_index", align 4
@mt7601u_load_firmware._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.31, ptr @.str.2, i32 486, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Invalid firmware image\0A\00", [40 x i8] zeroinitializer }, align 32
@mt7601u_load_firmware._entry_ptr.35 = internal global ptr @mt7601u_load_firmware._entry.33, section ".printk_index", align 4
@mt7601u_upload_firmware.__UNIQUE_ID_ddebug483 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.36, ptr @.str.37, ptr @.str.2, ptr @.str.38, i8 0, i8 93, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mt7601u\00", [24 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mt7601u_upload_firmware\00", [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"loading FW - ILM %u + IVB %zu\0A\00", [33 x i8] zeroinitializer }, align 32
@mt7601u_upload_firmware.__UNIQUE_ID_ddebug484 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.36, ptr @.str.37, ptr @.str.2, ptr @.str.39, i8 0, i8 94, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"loading FW - DLM %u\0A\00", [43 x i8] zeroinitializer }, align 32
@mt7601u_upload_firmware.__UNIQUE_ID_ddebug485 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.36, ptr @.str.37, ptr @.str.2, ptr @.str.40, i8 0, i8 99, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Firmware running!\0A\00", [45 x i8] zeroinitializer }, align 32
@__mt7601u_dma_fw._entry = internal constant %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.2, i32 318, ptr @.str.8, ptr @.str.4 }, align 1
@.str.41 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Error: firmware upload timed out\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"__mt7601u_dma_fw\00", [47 x i8] zeroinitializer }, align 32
@__mt7601u_dma_fw._entry_ptr = internal global ptr @__mt7601u_dma_fw._entry, section ".printk_index", align 4
@__mt7601u_dma_fw._entry.43 = internal constant %struct.pi_entry { ptr @.str.44, ptr @.str.42, ptr @.str.2, i32 324, ptr @.str.8, ptr @.str.4 }, align 1
@.str.44 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Error: firmware upload urb failed:%d\0A\00", [58 x i8] zeroinitializer }, align 32
@__mt7601u_dma_fw._entry_ptr.45 = internal global ptr @__mt7601u_dma_fw._entry.43, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.46 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967294]
@__sancov_gen_cov_switch_values.47 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967294]
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 183, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 495, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 133, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 139, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 143, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant [49 x i8] c"../drivers/net/wireless/mediatek/mt7601u/trace.h\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 78, i32 1 }
@___asan_gen_.103 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 108, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 77, i32 4 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 93, i32 4 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 100, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 105, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 417, i32 43 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 439, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 486, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 372, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 379, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 398, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 318, i32 3 }
@___asan_gen_.175 = private constant [47 x i8] c"../drivers/net/wireless/mediatek/mt7601u/mcu.c\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 323, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.180 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.181 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 87, i32 2 }
@llvm.compiler.used = appending global [59 x ptr] [ptr @__mt7601u_dma_fw._entry, ptr @__mt7601u_dma_fw._entry.43, ptr @__mt7601u_dma_fw._entry_ptr, ptr @__mt7601u_dma_fw._entry_ptr.45, ptr @mt7601u_load_firmware._entry, ptr @mt7601u_load_firmware._entry.33, ptr @mt7601u_load_firmware._entry_ptr, ptr @mt7601u_load_firmware._entry_ptr.35, ptr @mt7601u_mcu_msg_send._entry, ptr @mt7601u_mcu_msg_send._entry.12, ptr @mt7601u_mcu_msg_send._entry.9, ptr @mt7601u_mcu_msg_send._entry_ptr, ptr @mt7601u_mcu_msg_send._entry_ptr.11, ptr @mt7601u_mcu_msg_send._entry_ptr.14, ptr @mt7601u_mcu_tssi_read_kick._entry, ptr @mt7601u_mcu_tssi_read_kick._entry_ptr, ptr @mt7601u_mcu_wait_resp._entry, ptr @mt7601u_mcu_wait_resp._entry.20, ptr @mt7601u_mcu_wait_resp._entry.23, ptr @mt7601u_mcu_wait_resp._entry.26, ptr @mt7601u_mcu_wait_resp._entry_ptr, ptr @mt7601u_mcu_wait_resp._entry_ptr.22, ptr @mt7601u_mcu_wait_resp._entry_ptr.25, ptr @mt7601u_mcu_wait_resp._entry_ptr.28, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @mt7601u_mcu_init.__key, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @init_completion.__key, ptr @.str.46], section "llvm.metadata"
@0 = internal global [45 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7601u_mcu_tssi_read_kick._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7601u_mcu_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7601u_mcu_msg_send._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7601u_mcu_msg_send._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7601u_mcu_msg_send._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7601u_mcu_wait_resp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7601u_mcu_wait_resp._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7601u_mcu_wait_resp._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7601u_mcu_wait_resp._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7601u_load_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7601u_load_firmware._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt7601u_mcu_tssi_read_kick(ptr noundef %dev, i32 noundef %use_hvga) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state, align 4
  %2 = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i.i.i = tail call ptr @__alloc_skb(i32 noundef 16, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #7
  %tobool21.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool21.not.i.i, label %if.end.do.end_crit_edge, label %mt7601u_mcu_function_select.exit

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

mt7601u_mcu_function_select.exit:                 ; preds = %if.end
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %3 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %4, i32 4
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %5 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %6, i32 4
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %call.i1.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef 8) #7
  %7 = zext i32 %use_hvga to i64
  %8 = shl nuw i64 %7, 32
  %9 = or i64 %8, 5
  %10 = tail call i64 @llvm.bswap.i64(i64 %9) #7
  %11 = ptrtoint ptr %call.i1.i.i to i32
  call void @__asan_storeN_noabort(i32 %11, i32 8)
  store i64 %10, ptr %call.i1.i.i, align 1
  %call1.i = tail call fastcc i32 @mt7601u_mcu_msg_send(ptr noundef %dev, ptr noundef nonnull %call.i.i.i, i32 noundef 1, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not, label %if.end5, label %mt7601u_mcu_function_select.exit.do.end_crit_edge

mt7601u_mcu_function_select.exit.do.end_crit_edge: ; preds = %mt7601u_mcu_function_select.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %mt7601u_mcu_function_select.exit.do.end_crit_edge, %if.end.do.end_crit_edge
  %retval.0.i12 = phi i32 [ %call1.i, %mt7601u_mcu_function_select.exit.do.end_crit_edge ], [ -12, %if.end.do.end_crit_edge ]
  %dev4 = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 1
  %12 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev4, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %13, ptr noundef nonnull @.str) #10
  br label %cleanup

if.end5:                                          ; preds = %mt7601u_mcu_function_select.exit
  call void @__sanitizer_cov_trace_pc() #9
  %tssi_read_trig = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 44
  %14 = ptrtoint ptr %tssi_read_trig to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %tssi_read_trig, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i12, %do.end ], [ 0, %if.end5 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt7601u_mcu_calibrate(ptr noundef %dev, i32 noundef %cal, i32 noundef %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 16, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #7
  %tobool21.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool21.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %0 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 4
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %2 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %3, i32 4
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %call.i1.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 8) #7
  %4 = zext i32 %cal to i64
  %5 = zext i32 %val to i64
  %6 = shl nuw i64 %5, 32
  %7 = or i64 %6, %4
  %8 = tail call i64 @llvm.bswap.i64(i64 %7)
  %9 = ptrtoint ptr %call.i1.i to i32
  call void @__asan_storeN_noabort(i32 %9, i32 8)
  store i64 %8, ptr %call.i1.i, align 1
  %call1 = tail call fastcc i32 @mt7601u_mcu_msg_send(ptr noundef %dev, ptr noundef nonnull %call.i.i, i32 noundef 31, i1 noundef zeroext true)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mt7601u_mcu_msg_send(ptr noundef %dev, ptr noundef %skb, i32 noundef %cmd, i1 noundef zeroext %wait_resp) unnamed_addr #0 align 64 {
entry:
  %sent = alloca i32, align 4
  %u = alloca %struct.urb, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %parent.i.i = getelementptr i8, ptr %1, i32 136
  %2 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 -128
  %out_eps = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 25
  %4 = ptrtoint ptr %out_eps to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %out_eps, align 4
  %conv = zext i8 %5 to i32
  %6 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr.i.i, align 8
  %shl.i = shl i32 %7, 8
  %shl1.i = shl nuw nsw i32 %conv, 15
  %or.i = or i32 %shl1.i, %shl.i
  %or = or i32 %or.i, -1073741824
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sent) #7
  %8 = ptrtoint ptr %sent to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %sent, align 4, !annotation !98
  %state = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 2
  %9 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %state, align 4
  %11 = and i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @consume_skb(ptr noundef %skb) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %mcu = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %mcu, i32 noundef 0) #7
  br i1 %wait_resp, label %while.cond.preheader, label %if.end.do.end35.i_crit_edge

if.end.do.end35.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end35.i

while.cond.preheader:                             ; preds = %if.end
  %msg_seq = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 7, i32 1
  %12 = ptrtoint ptr %msg_seq to i32
  call void @__asan_load1_noabort(i32 %12)
  %msg_seq.promoted = load i8, ptr %msg_seq, align 4
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader
  %13 = phi i8 [ %msg_seq.promoted, %while.cond.preheader ], [ %inc, %while.body.while.body_crit_edge ]
  %inc = add i8 %13, 1
  %14 = and i8 %inc, 15
  %tobool5.not = icmp eq i8 %14, 0
  br i1 %tobool5.not, label %while.body.while.body_crit_edge, label %if.end9.loopexit

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

if.end9.loopexit:                                 ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %msg_seq to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %inc, ptr %msg_seq, align 4
  %phi.cast = zext i8 %14 to i32
  br label %do.end35.i

do.end35.i:                                       ; preds = %if.end9.loopexit, %if.end.do.end35.i_crit_edge
  %seq.1 = phi i32 [ 0, %if.end.do.end35.i_crit_edge ], [ %phi.cast, %if.end9.loopexit ]
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %16 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len.i.i, align 4
  %shl.i70 = shl nuw nsw i32 %seq.1, 16
  %and14.i = and i32 %shl.i70, 983040
  %shl37.i = shl i32 %cmd, 20
  %and38.i = and i32 %shl37.i, 133169152
  %sub18.i.i = add i32 %17, 65535
  %or19.i.i = or i32 %sub18.i.i, 3
  %add20.i.i = add i32 %or19.i.i, 1
  %and21.i.i = and i32 %add20.i.i, 65532
  %or.i71 = or i32 %and38.i, %and14.i
  %or22.i.i = or i32 %or.i71, %and21.i.i
  %or72.i.i = or i32 %or22.i.i, 1342177280
  %call.i.i = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 4) #7
  %18 = tail call i32 @llvm.bswap.i32(i32 %or72.i.i) #7
  %19 = ptrtoint ptr %call.i.i to i32
  call void @__asan_storeN_noabort(i32 %19, i32 4)
  store i32 %18, ptr %call.i.i, align 1
  %20 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len.i.i, align 4
  %sub74.i.i = add i32 %21, -1
  %or75.i.i = or i32 %sub74.i.i, 3
  %add77.i.i = add i32 %or75.i.i, 5
  call void @__sanitizer_cov_trace_cmp4(i32 %add77.i.i, i32 %21)
  %cmp.i.i.i.i = icmp ugt i32 %add77.i.i, %21
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end35.i.mt7601u_dma_skb_wrap_cmd.exit_crit_edge, !prof !99

do.end35.i.mt7601u_dma_skb_wrap_cmd.exit_crit_edge: ; preds = %do.end35.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt7601u_dma_skb_wrap_cmd.exit

if.then.i.i.i.i:                                  ; preds = %do.end35.i
  %sub.i.i.i.i = sub i32 %add77.i.i, %21
  %call.i.i.i.i = tail call i32 @__skb_pad(ptr noundef %skb, i32 noundef %sub.i.i.i.i, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool4.not.i.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i.i, label %if.end.i.i.i.i, label %do.end51.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i.i.i
  %data_len.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %22 = ptrtoint ptr %data_len.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %data_len.i.i.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.i.not.i.i.i.i.i = icmp eq i32 %23, 0
  br i1 %tobool.i.not.i.i.i.i.i, label %__skb_put.exit.i.i.i.i, label %do.body3.i.i.i.i.i, !prof !100

do.body3.i.i.i.i.i:                               ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #7, !srcloc !101
  unreachable

__skb_put.exit.i.i.i.i:                           ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %tail.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %24 = ptrtoint ptr %tail.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tail.i.i.i.i.i, align 8
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %25, i32 %sub.i.i.i.i
  store ptr %add.ptr.i.i.i.i.i, ptr %tail.i.i.i.i.i, align 8
  %26 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %len.i.i, align 4
  %add.i.i.i.i.i = add i32 %27, %sub.i.i.i.i
  store i32 %add.i.i.i.i.i, ptr %len.i.i, align 4
  br label %mt7601u_dma_skb_wrap_cmd.exit

do.end51.i:                                       ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 39, i32 noundef 9, ptr noundef null) #7
  br label %mt7601u_dma_skb_wrap_cmd.exit

mt7601u_dma_skb_wrap_cmd.exit:                    ; preds = %do.end51.i, %__skb_put.exit.i.i.i.i, %do.end35.i.mt7601u_dma_skb_wrap_cmd.exit_crit_edge
  %resp_cmpl = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 7, i32 3
  %28 = ptrtoint ptr %resp_cmpl to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %resp_cmpl, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool11.not = icmp eq i32 %29, 0
  br i1 %tobool11.not, label %mt7601u_dma_skb_wrap_cmd.exit.if.end14_crit_edge, label %do.end

mt7601u_dma_skb_wrap_cmd.exit.if.end14_crit_edge: ; preds = %mt7601u_dma_skb_wrap_cmd.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

do.end:                                           ; preds = %mt7601u_dma_skb_wrap_cmd.exit
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.6) #10
  br label %if.end14

if.end14:                                         ; preds = %do.end, %mt7601u_dma_skb_wrap_cmd.exit.if.end14_crit_edge
  %32 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %33)
  %cmp7.not.i = icmp ult i32 %33, 4
  br i1 %cmp7.not.i, label %if.end14.trace_mt_mcu_msg_send_cs.exit_crit_edge, label %for.body.lr.ph.i

if.end14.trace_mt_mcu_msg_send_cs.exit_crit_edge: ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %trace_mt_mcu_msg_send_cs.exit

for.body.lr.ph.i:                                 ; preds = %if.end14
  %div6.i = lshr i32 %33, 2
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %34 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %data.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %csum.09.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %xor.i, %for.body.i.for.body.i_crit_edge ]
  %i.08.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %mul.i = shl i32 %i.08.i, 2
  %add.ptr.i = getelementptr i8, ptr %35, i32 %mul.i
  %36 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %36, i32 4)
  %37 = load i32, ptr %add.ptr.i, align 1
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #7
  %xor.i = xor i32 %38, %csum.09.i
  %inc.i = add nuw nsw i32 %i.08.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %div6.i
  br i1 %exitcond.not.i, label %for.body.i.trace_mt_mcu_msg_send_cs.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body.i.trace_mt_mcu_msg_send_cs.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %trace_mt_mcu_msg_send_cs.exit

trace_mt_mcu_msg_send_cs.exit:                    ; preds = %for.body.i.trace_mt_mcu_msg_send_cs.exit_crit_edge, %if.end14.trace_mt_mcu_msg_send_cs.exit_crit_edge
  %csum.0.lcssa.i = phi i32 [ 0, %if.end14.trace_mt_mcu_msg_send_cs.exit_crit_edge ], [ %xor.i, %for.body.i.trace_mt_mcu_msg_send_cs.exit_crit_edge ]
  tail call fastcc void @trace_mt_mcu_msg_send(ptr noundef %dev, ptr noundef %skb, i32 noundef %csum.0.lcssa.i, i1 noundef zeroext %wait_resp) #7
  call void @llvm.lifetime.start.p0(i64 124, ptr nonnull %u) #7
  %39 = call ptr @memset(ptr %u, i32 255, i32 124)
  %pipe = getelementptr inbounds %struct.urb, ptr %u, i32 0, i32 10
  %40 = ptrtoint ptr %pipe to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %or, ptr %pipe, align 4
  %41 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %len.i.i, align 4
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %u, i32 0, i32 19
  %43 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %transfer_buffer_length, align 4
  call fastcc void @trace_mt_submit_urb(ptr noundef %dev, ptr noundef nonnull %u)
  call void @llvm.lifetime.end.p0(i64 124, ptr nonnull %u) #7
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %44 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %data, align 4
  %46 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %len.i.i, align 4
  %call17 = call i32 @usb_bulk_msg(ptr noundef %add.ptr.i.i, i32 noundef %or, ptr noundef %45, i32 noundef %47, ptr noundef nonnull %sent, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end24, label %do.end22

do.end22:                                         ; preds = %trace_mt_mcu_msg_send_cs.exit
  call void @__sanitizer_cov_trace_pc() #9
  %48 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.10, i32 noundef %call17) #10
  br label %out

if.end24:                                         ; preds = %trace_mt_mcu_msg_send_cs.exit
  %50 = ptrtoint ptr %sent to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %sent, align 4
  %52 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %len.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %53)
  %cmp.not = icmp eq i32 %51, %53
  br i1 %cmp.not, label %if.end24.if.end32_crit_edge, label %do.end30

if.end24.if.end32_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

do.end30:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  %54 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.7) #10
  br label %if.end32

if.end32:                                         ; preds = %do.end30, %if.end24.if.end32_crit_edge
  br i1 %wait_resp, label %if.then34, label %if.end32.out_crit_edge

if.end32.out_crit_edge:                           ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then34:                                        ; preds = %if.end32
  %resp.i = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 7, i32 2
  %56 = ptrtoint ptr %resp.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %resp.i, align 8
  %buf.i = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 7, i32 2, i32 1
  %status.i = getelementptr inbounds %struct.urb, ptr %57, i32 0, i32 12
  br label %while.body.i

while.body.i:                                     ; preds = %while.cond.backedge.i.while.body.i_crit_edge, %if.then34
  %dec129.i = phi i32 [ 4, %if.then34 ], [ %dec.i, %while.cond.backedge.i.while.body.i_crit_edge ]
  %call3.i = call i32 @wait_for_completion_timeout(ptr noundef %resp_cmpl, i32 noundef 30) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %58 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %59, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19) #10
  br label %while.cond.backedge.i

while.cond.backedge.i:                            ; preds = %do.end66.i, %do.end.i
  %dec.i = add nsw i32 %dec129.i, -1
  %tobool.not.i = icmp eq i32 %dec129.i, 0
  br i1 %tobool.not.i, label %do.end107.i, label %while.cond.backedge.i.while.body.i_crit_edge

while.cond.backedge.i.while.body.i_crit_edge:     ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

if.end.i:                                         ; preds = %while.body.i
  %60 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %buf.i, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_loadN_noabort(i32 %62, i32 4)
  %63 = load i32, ptr %61, align 1
  %64 = call i32 @llvm.bswap.i32(i32 %63) #7
  %65 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %status.i, align 4
  %67 = zext i32 %66 to i64
  call void @__sanitizer_cov_trace_switch(i64 %67, ptr @__sancov_gen_cov_switch_values)
  switch i32 %66, label %68 [
    i32 0, label %if.end.i.mt7601u_urb_has_error.exit.i_crit_edge
    i32 -2, label %if.end.i.mt7601u_urb_has_error.exit.i_crit_edge73
    i32 -104, label %if.end.i.mt7601u_urb_has_error.exit.i_crit_edge74
    i32 -108, label %if.end.i.mt7601u_urb_has_error.exit.i_crit_edge75
  ]

if.end.i.mt7601u_urb_has_error.exit.i_crit_edge75: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt7601u_urb_has_error.exit.i

if.end.i.mt7601u_urb_has_error.exit.i_crit_edge74: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt7601u_urb_has_error.exit.i

if.end.i.mt7601u_urb_has_error.exit.i_crit_edge73: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt7601u_urb_has_error.exit.i

if.end.i.mt7601u_urb_has_error.exit.i_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt7601u_urb_has_error.exit.i

68:                                               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt7601u_urb_has_error.exit.i

mt7601u_urb_has_error.exit.i:                     ; preds = %68, %if.end.i.mt7601u_urb_has_error.exit.i_crit_edge, %if.end.i.mt7601u_urb_has_error.exit.i_crit_edge73, %if.end.i.mt7601u_urb_has_error.exit.i_crit_edge74, %if.end.i.mt7601u_urb_has_error.exit.i_crit_edge75
  %69 = phi i32 [ %66, %68 ], [ 0, %if.end.i.mt7601u_urb_has_error.exit.i_crit_edge ], [ 0, %if.end.i.mt7601u_urb_has_error.exit.i_crit_edge73 ], [ 0, %if.end.i.mt7601u_urb_has_error.exit.i_crit_edge74 ], [ 0, %if.end.i.mt7601u_urb_has_error.exit.i_crit_edge75 ]
  %call14.i = call i32 @mt7601u_usb_submit_buf(ptr noundef %dev, i32 noundef 128, i32 noundef 1, ptr noundef %resp.i, i32 noundef 3264, ptr noundef nonnull @mt7601u_complete_urb, ptr noundef %resp_cmpl) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %if.end17.i, label %mt7601u_urb_has_error.exit.i.out_crit_edge

mt7601u_urb_has_error.exit.i.out_crit_edge:       ; preds = %mt7601u_urb_has_error.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end17.i:                                       ; preds = %mt7601u_urb_has_error.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool18.not.i = icmp eq i32 %69, 0
  br i1 %tobool18.not.i, label %if.end17.i.do.end39.i_crit_edge, label %do.end22.i

if.end17.i.do.end39.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end39.i

do.end22.i:                                       ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  %70 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %71, ptr noundef nonnull @.str.21, i32 noundef %69) #10
  br label %do.end39.i

do.end39.i:                                       ; preds = %do.end22.i, %if.end17.i.do.end39.i_crit_edge
  %and.i = lshr i32 %64, 16
  %shr.i72 = and i32 %and.i, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i72, i32 %seq.1)
  %cmp.i = icmp eq i32 %shr.i72, %seq.1
  %72 = and i32 %64, 15728640
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %cmp60.i = icmp eq i32 %72, 0
  %or.cond.i = select i1 %cmp.i, i1 %cmp60.i, i1 false
  br i1 %or.cond.i, label %do.end39.i.out_crit_edge, label %do.end66.i

do.end39.i.out_crit_edge:                         ; preds = %do.end39.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

do.end66.i:                                       ; preds = %do.end39.i
  call void @__sanitizer_cov_trace_pc() #9
  %73 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev.i, align 4
  %and84.i = lshr i32 %64, 20
  %shr85.i = and i32 %and84.i, 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %74, ptr noundef nonnull @.str.24, i32 noundef %shr85.i, i32 noundef %seq.1, i32 noundef %shr.i72) #10
  br label %while.cond.backedge.i

do.end107.i:                                      ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #9
  %75 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %76, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.19) #10
  br label %out

out:                                              ; preds = %do.end107.i, %do.end39.i.out_crit_edge, %mt7601u_urb_has_error.exit.i.out_crit_edge, %if.end32.out_crit_edge, %do.end22
  %ret.0 = phi i32 [ %call17, %do.end22 ], [ 0, %if.end32.out_crit_edge ], [ -110, %do.end107.i ], [ %call14.i, %mt7601u_urb_has_error.exit.i.out_crit_edge ], [ 0, %do.end39.i.out_crit_edge ]
  call void @mutex_unlock(ptr noundef %mcu) #7
  call void @consume_skb(ptr noundef %skb) #7
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %ret.0, %out ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sent) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt7601u_write_reg_pairs(ptr noundef %dev, i32 noundef %base, ptr nocapture noundef readonly %data, i32 noundef %n) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n)
  %tobool.not42 = icmp eq i32 %n, 0
  br i1 %tobool.not42, label %entry.cleanup_crit_edge, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %if.end12.if.end_crit_edge, %entry.if.end_crit_edge
  %n.tr44 = phi i32 [ %sub, %if.end12.if.end_crit_edge ], [ %n, %entry.if.end_crit_edge ]
  %data.tr43 = phi ptr [ %add.ptr, %if.end12.if.end_crit_edge ], [ %data, %entry.if.end_crit_edge ]
  %0 = tail call i32 @llvm.smin.i32(i32 %n.tr44, i32 24)
  %mul = shl i32 %0, 3
  %add1 = add i32 %mul, 8
  %call.i = tail call ptr @__alloc_skb(i32 noundef %add1, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #7
  %tobool2.not = icmp eq ptr %call.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %1 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 4
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %3 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %4, i32 4
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.tr44)
  %cmp540 = icmp sgt i32 %n.tr44, 0
  br i1 %cmp540, label %for.body.preheader, label %if.end4.for.end_crit_edge

if.end4.for.end_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.preheader:                               ; preds = %if.end4
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.041 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr %struct.mt76_reg_pair, ptr %data.tr43, i32 %i.041
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %add6 = add i32 %6, %base
  %call.i38 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 4) #7
  %7 = tail call i32 @llvm.bswap.i32(i32 %add6) #7
  %8 = ptrtoint ptr %call.i38 to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 %7, ptr %call.i38, align 1
  %value = getelementptr %struct.mt76_reg_pair, ptr %data.tr43, i32 %i.041, i32 1
  %9 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %value, align 4
  %call.i39 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 4) #7
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #7
  %12 = ptrtoint ptr %call.i39 to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 %11, ptr %call.i39, align 1
  %inc = add nuw nsw i32 %i.041, 1
  %exitcond.not = icmp eq i32 %inc, %smax
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end4.for.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %n.tr44)
  %cmp8 = icmp slt i32 %n.tr44, 25
  %call9 = tail call fastcc i32 @mt7601u_mcu_msg_send(ptr noundef %dev, ptr noundef nonnull %call.i, i32 noundef 12, i1 noundef zeroext %cmp8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %for.end
  %add.ptr = getelementptr %struct.mt76_reg_pair, ptr %data.tr43, i32 %0
  %sub = sub i32 %n.tr44, %0
  %tobool.not = icmp eq i32 %sub, 0
  br i1 %tobool.not, label %if.end12.cleanup_crit_edge, label %if.end12.if.end_crit_edge

if.end12.if.end_crit_edge:                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %if.end12.cleanup_crit_edge, %for.end.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call9, %for.end.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.end12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt7601u_burst_write_regs(ptr noundef %dev, i32 noundef %offset, ptr nocapture noundef readonly %data, i32 noundef %n) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n)
  %tobool.not42 = icmp eq i32 %n, 0
  br i1 %tobool.not42, label %entry.cleanup_crit_edge, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %if.end11.if.end_crit_edge, %entry.if.end_crit_edge
  %n.tr45 = phi i32 [ %sub, %if.end11.if.end_crit_edge ], [ %n, %entry.if.end_crit_edge ]
  %data.tr44 = phi ptr [ %add.ptr, %if.end11.if.end_crit_edge ], [ %data, %entry.if.end_crit_edge ]
  %offset.tr43 = phi i32 [ %add13, %if.end11.if.end_crit_edge ], [ %offset, %entry.if.end_crit_edge ]
  %0 = tail call i32 @llvm.smin.i32(i32 %n.tr45, i32 47)
  %mul = shl i32 %0, 2
  %add1 = add i32 %mul, 8
  %call.i = tail call ptr @__alloc_skb(i32 noundef %add1, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #7
  %tobool2.not = icmp eq ptr %call.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %1 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 4
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %3 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %4, i32 4
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %add5 = add i32 %offset.tr43, 4259840
  %call.i38 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 4) #7
  %5 = tail call i32 @llvm.bswap.i32(i32 %add5) #7
  %6 = ptrtoint ptr %call.i38 to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 %5, ptr %call.i38, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.tr45)
  %cmp640 = icmp sgt i32 %n.tr45, 0
  br i1 %cmp640, label %for.body.preheader, label %if.end4.for.end_crit_edge

if.end4.for.end_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.preheader:                               ; preds = %if.end4
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.041 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr i32, ptr %data.tr44, i32 %i.041
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %call.i39 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 4) #7
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #7
  %10 = ptrtoint ptr %call.i39 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 %9, ptr %call.i39, align 1
  %inc = add nuw nsw i32 %i.041, 1
  %exitcond.not = icmp eq i32 %inc, %smax
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end4.for.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %n.tr45)
  %cmp7 = icmp slt i32 %n.tr45, 48
  %call8 = tail call fastcc i32 @mt7601u_mcu_msg_send(ptr noundef %dev, ptr noundef nonnull %call.i, i32 noundef 8, i1 noundef zeroext %cmp7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11:                                         ; preds = %for.end
  %add13 = add i32 %mul, %offset.tr43
  %add.ptr = getelementptr i32, ptr %data.tr44, i32 %0
  %sub = sub i32 %n.tr45, %0
  %tobool.not = icmp eq i32 %sub, 0
  br i1 %tobool.not, label %if.end11.cleanup_crit_edge, label %if.end11.if.end_crit_edge

if.end11.if.end_crit_edge:                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %if.end11.cleanup_crit_edge, %for.end.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call8, %for.end.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.end11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt7601u_mcu_init(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %fw.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mcu = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 7
  tail call void @__mutex_init(ptr noundef %mcu, ptr noundef nonnull @.str.5, ptr noundef nonnull @mt7601u_mcu_init.__key) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw.i) #7
  %0 = ptrtoint ptr %fw.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw.i, align 4, !annotation !98
  tail call void @mt7601u_wr(ptr noundef %dev, i32 noundef 568, i32 noundef 12582912) #7
  %call.i.i = tail call i32 @mt7601u_rr(ptr noundef %dev, i32 noundef 1840) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp.i.not.i = icmp eq i32 %call.i.i, 1
  %dev1.i = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 1
  %1 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev1.i, align 4
  br i1 %cmp.i.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2.i = tail call i32 @firmware_request_cache(ptr noundef %2, ptr noundef nonnull @.str.29) #7
  br label %mt7601u_load_firmware.exit

if.end.i:                                         ; preds = %entry
  %call4.i = call i32 @request_firmware(ptr noundef nonnull %fw.i, ptr noundef nonnull @.str.29, ptr noundef %2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end7.i, label %if.end.i.mt7601u_load_firmware.exit.thread_crit_edge

if.end.i.mt7601u_load_firmware.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt7601u_load_firmware.exit.thread

if.end7.i:                                        ; preds = %if.end.i
  %3 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fw.i, align 4
  %tobool8.not.i = icmp eq ptr %4, null
  br i1 %tobool8.not.i, label %if.end7.i.do.end36.i_crit_edge, label %lor.lhs.false.i

if.end7.i.do.end36.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end36.i

lor.lhs.false.i:                                  ; preds = %if.end7.i
  %data.i = getelementptr inbounds %struct.firmware, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data.i, align 4
  %tobool9.not.i = icmp eq ptr %6, null
  br i1 %tobool9.not.i, label %lor.lhs.false.i.do.end36.i_crit_edge, label %lor.lhs.false10.i

lor.lhs.false.i.do.end36.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end36.i

lor.lhs.false10.i:                                ; preds = %lor.lhs.false.i
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %8)
  %cmp.i = icmp ult i32 %8, 32
  br i1 %cmp.i, label %lor.lhs.false10.i.do.end36.i_crit_edge, label %if.end12.i

lor.lhs.false10.i.do.end36.i_crit_edge:           ; preds = %lor.lhs.false10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end36.i

if.end12.i:                                       ; preds = %lor.lhs.false10.i
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %6, align 4
  %11 = call i32 @llvm.bswap.i32(i32 %10) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 65, i32 %11)
  %cmp14.i = icmp ult i32 %11, 65
  br i1 %cmp14.i, label %if.end12.i.do.end36.i_crit_edge, label %if.end16.i

if.end12.i.do.end36.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end36.i

if.end16.i:                                       ; preds = %if.end12.i
  %add.i = add i32 %11, 32
  %dlm_len.i = getelementptr inbounds %struct.mt76_fw_header, ptr %6, i32 0, i32 1
  %12 = ptrtoint ptr %dlm_len.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dlm_len.i, align 4
  %14 = call i32 @llvm.bswap.i32(i32 %13) #7
  %add18.i = add i32 %add.i, %14
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %add18.i)
  %cmp20.not.i = icmp eq i32 %8, %add18.i
  br i1 %cmp20.not.i, label %if.end22.i, label %if.end16.i.do.end36.i_crit_edge

if.end16.i.do.end36.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end36.i

if.end22.i:                                       ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  %fw_ver.i = getelementptr inbounds %struct.mt76_fw_header, ptr %6, i32 0, i32 3
  %15 = ptrtoint ptr %fw_ver.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %fw_ver.i, align 2
  %17 = call i16 @llvm.bswap.i16(i16 %16) #7
  %conv.i = zext i16 %17 to i32
  %18 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev1.i, align 4
  %shr.i = lshr i32 %conv.i, 12
  %shr24.i = lshr i32 %conv.i, 8
  %and25.i = and i32 %shr24.i, 15
  %and26.i = and i32 %conv.i, 15
  %build_ver.i = getelementptr inbounds %struct.mt76_fw_header, ptr %6, i32 0, i32 2
  %20 = ptrtoint ptr %build_ver.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %build_ver.i, align 4
  %22 = call i16 @llvm.bswap.i16(i16 %21) #7
  %conv27.i = zext i16 %22 to i32
  %build_time.i = getelementptr inbounds %struct.mt76_fw_header, ptr %6, i32 0, i32 5
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %19, ptr noundef nonnull @.str.30, i32 noundef %shr.i, i32 noundef %and25.i, i32 noundef %and26.i, i32 noundef %conv27.i, ptr noundef %build_time.i) #10
  call void @mt7601u_wr(ptr noundef %dev, i32 noundef 2380, i32 noundef 0) #7
  call void @mt7601u_wr(ptr noundef %dev, i32 noundef 2048, i32 noundef 0) #7
  call void @mt7601u_vendor_reset(ptr noundef %dev) #7
  call void @msleep(i32 noundef 5) #7
  call void @mt7601u_wr(ptr noundef %dev, i32 noundef 2628, i32 noundef 0) #7
  call void @mt7601u_wr(ptr noundef %dev, i32 noundef 560, i32 noundef 541200) #7
  call void @mt7601u_wr(ptr noundef %dev, i32 noundef 1024, i32 noundef 527360) #7
  call void @mt7601u_wr(ptr noundef %dev, i32 noundef 2048, i32 noundef 1) #7
  %call29.i = call i32 @mt7601u_rmw(ptr noundef %dev, i32 noundef 1028, i32 noundef 0, i32 noundef 15) #7
  call void @mt7601u_wr(ptr noundef %dev, i32 noundef 2048, i32 noundef 1) #7
  call void @mt7601u_wr(ptr noundef %dev, i32 noundef 568, i32 noundef 12582912) #7
  %call.i.i.i = call i32 @mt7601u_rmw(ptr noundef %dev, i32 noundef 568, i32 noundef 0, i32 noundef 524288) #7
  %and31.i = and i32 %call.i.i.i, -524289
  call void @mt7601u_wr(ptr noundef %dev, i32 noundef 568, i32 noundef %and31.i) #7
  call void @mt7601u_wr(ptr noundef %dev, i32 noundef 2464, i32 noundef 4194864) #7
  call void @mt7601u_wr(ptr noundef %dev, i32 noundef 2468, i32 noundef 1) #7
  call void @mt7601u_wr(ptr noundef %dev, i32 noundef 2500, i32 noundef 68) #7
  call void @mt7601u_wr(ptr noundef %dev, i32 noundef 2668, i32 noundef 3) #7
  %23 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %fw.i, align 4
  %data32.i = getelementptr inbounds %struct.firmware, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %data32.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data32.i, align 4
  %call33.i = call fastcc i32 @mt7601u_upload_firmware(ptr noundef %dev, ptr noundef %26) #7
  %27 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %fw.i, align 4
  call void @release_firmware(ptr noundef %28) #7
  br label %mt7601u_load_firmware.exit

do.end36.i:                                       ; preds = %if.end16.i.do.end36.i_crit_edge, %if.end12.i.do.end36.i_crit_edge, %lor.lhs.false10.i.do.end36.i_crit_edge, %lor.lhs.false.i.do.end36.i_crit_edge, %if.end7.i.do.end36.i_crit_edge
  %29 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev1.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.34) #10
  %31 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %fw.i, align 4
  call void @release_firmware(ptr noundef %32) #7
  br label %mt7601u_load_firmware.exit.thread

mt7601u_load_firmware.exit.thread:                ; preds = %do.end36.i, %if.end.i.mt7601u_load_firmware.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call4.i, %if.end.i.mt7601u_load_firmware.exit.thread_crit_edge ], [ -2, %do.end36.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i) #7
  br label %cleanup

mt7601u_load_firmware.exit:                       ; preds = %if.end22.i, %if.then.i
  %retval.0.i = phi i32 [ %call2.i, %if.then.i ], [ %call33.i, %if.end22.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool.not, label %if.end, label %mt7601u_load_firmware.exit.cleanup_crit_edge

mt7601u_load_firmware.exit.cleanup_crit_edge:     ; preds = %mt7601u_load_firmware.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %mt7601u_load_firmware.exit
  call void @__sanitizer_cov_trace_pc() #9
  %state = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 2
  call void @_set_bit(i32 noundef 3, ptr noundef %state) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %mt7601u_load_firmware.exit.cleanup_crit_edge, %mt7601u_load_firmware.exit.thread
  %retval.0 = phi i32 [ 0, %if.end ], [ %retval.0.i, %mt7601u_load_firmware.exit.cleanup_crit_edge ], [ %retval.0.i.ph, %mt7601u_load_firmware.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt7601u_mcu_cmd_init(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i.i = tail call ptr @__alloc_skb(i32 noundef 16, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #7
  %tobool21.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool21.not.i.i, label %entry.cleanup_crit_edge, label %mt7601u_mcu_function_select.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

mt7601u_mcu_function_select.exit:                 ; preds = %entry
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %0 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 4
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %2 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %3, i32 4
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %call.i1.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef 8) #7
  %4 = ptrtoint ptr %call.i1.i.i to i32
  call void @__asan_storeN_noabort(i32 %4, i32 8)
  store i64 72057594054705152, ptr %call.i1.i.i, align 1
  %call1.i = tail call fastcc i32 @mt7601u_mcu_msg_send(ptr noundef %dev, ptr noundef nonnull %call.i.i.i, i32 noundef 1, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not = icmp eq i32 %call1.i, 0
  br i1 %tobool.not, label %if.end, label %mt7601u_mcu_function_select.exit.cleanup_crit_edge

mt7601u_mcu_function_select.exit.cleanup_crit_edge: ; preds = %mt7601u_mcu_function_select.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %mt7601u_mcu_function_select.exit
  %resp_cmpl = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 7, i32 3
  %5 = ptrtoint ptr %resp_cmpl to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %resp_cmpl, align 4
  %wait.i = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 7, i32 3, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.46, ptr noundef nonnull @init_completion.__key) #7
  %resp = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 7, i32 2
  %call2 = tail call zeroext i1 @mt7601u_usb_alloc_buf(ptr noundef %dev, i32 noundef 1024, ptr noundef %resp) #7
  br i1 %call2, label %if.end.cleanup.sink.split_crit_edge, label %if.end6

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end6:                                          ; preds = %if.end
  %call11 = tail call i32 @mt7601u_usb_submit_buf(ptr noundef %dev, i32 noundef 128, i32 noundef 1, ptr noundef %resp, i32 noundef 3264, ptr noundef nonnull @mt7601u_complete_urb, ptr noundef %resp_cmpl) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end6.cleanup_crit_edge, label %if.end6.cleanup.sink.split_crit_edge

if.end6.cleanup.sink.split_crit_edge:             ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end6.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ -12, %if.end.cleanup.sink.split_crit_edge ], [ %call11, %if.end6.cleanup.sink.split_crit_edge ]
  tail call void @mt7601u_usb_free_buf(ptr noundef %dev, ptr noundef %resp) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end6.cleanup_crit_edge, %mt7601u_mcu_function_select.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1.i, %mt7601u_mcu_function_select.exit.cleanup_crit_edge ], [ 0, %if.end6.cleanup_crit_edge ], [ -12, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mt7601u_usb_alloc_buf(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7601u_usb_free_buf(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7601u_usb_submit_buf(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7601u_complete_urb(ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt7601u_mcu_cmd_deinit(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %resp = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 7, i32 2
  %0 = ptrtoint ptr %resp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %resp, align 8
  tail call void @usb_kill_urb(ptr noundef %1) #7
  tail call void @mt7601u_usb_free_buf(ptr noundef %dev, ptr noundef %resp) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_mt_submit_urb(ptr noundef %dev, ptr noundef %u) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mt_submit_urb, i32 0, i32 1), ptr blockaddress(@trace_mt_submit_urb, %do.body)) #7
          to label %if.end48 [label %do.body], !srcloc !102

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !88) #7
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !100

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  %9 = tail call i32 @llvm.read_register.i32(metadata !88) #7
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !103
  %call42 = tail call i32 @__traceiter_mt_submit_urb(ptr noundef null, ptr noundef %dev, ptr noundef %u) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !104
  %13 = tail call i32 @llvm.read_register.i32(metadata !88) #7
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !88) #7
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !100

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !88) #7
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !105
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mt_submit_urb, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mt_submit_urb, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_mt_submit_urb.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trace_mt_submit_urb.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 69, ptr noundef nonnull @.str.16) #7
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !106
  %31 = tail call i32 @llvm.read_register.i32(metadata !88) #7
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_bulk_msg(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__skb_pad(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_mt_mcu_msg_send(ptr noundef %dev, ptr noundef %skb, i32 noundef %csum, i1 noundef zeroext %resp) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mt_mcu_msg_send, i32 0, i32 1), ptr blockaddress(@trace_mt_mcu_msg_send, %do.body)) #7
          to label %if.end49 [label %do.body], !srcloc !102

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !88) #7
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !100

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i76 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i76
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end70_crit_edge, label %cleanup.thread

cpu_online.exit.if.end70_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end70

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  %9 = tail call i32 @llvm.read_register.i32(metadata !88) #7
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !107
  %call43 = tail call i32 @__traceiter_mt_mcu_msg_send(ptr noundef null, ptr noundef %dev, ptr noundef %skb, i32 noundef %csum, i1 noundef zeroext %resp) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !108
  %13 = tail call i32 @llvm.read_register.i32(metadata !88) #7
  %and.i.i.i74 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i74 to ptr
  %preempt_count.i.i75 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i75 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i75, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i75, align 4
  br label %if.end49

if.end49:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !88) #7
  %and.i77 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i77 to ptr
  %cpu51 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu51 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu51, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i78 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i78, label %if.end49.cpu_online.exit86_crit_edge, label %land.rhs.i.i.i.i80

if.end49.cpu_online.exit86_crit_edge:             ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit86

land.rhs.i.i.i.i80:                               ; preds = %if.end49
  %.b37.i.i.i.i79 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i79, label %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, label %if.then.i.i.i.i81, !prof !100

land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge:   ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit86

if.then.i.i.i.i81:                                ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit86

cpu_online.exit86:                                ; preds = %if.then.i.i.i.i81, %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, %if.end49.cpu_online.exit86_crit_edge
  %div3.i.i.i82 = lshr i32 %20, 5
  %arrayidx.i.i.i83 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i82
  %22 = ptrtoint ptr %arrayidx.i.i.i83 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i83, align 4
  %and.i.i.i84 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i84
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i85.not = icmp eq i32 %25, 0
  br i1 %tobool.i85.not, label %cpu_online.exit86.if.end70_crit_edge, label %if.then53

cpu_online.exit86.if.end70_crit_edge:             ; preds = %cpu_online.exit86
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end70

if.then53:                                        ; preds = %cpu_online.exit86
  %26 = tail call i32 @llvm.read_register.i32(metadata !88) #7
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !105
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mt_mcu_msg_send, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mt_mcu_msg_send, i32 0, i32 7), align 4
  %call59 = tail call i32 @rcu_read_lock_sched_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %land.lhs.true, label %if.then53.do.end68_crit_edge

if.then53.do.end68_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end68

land.lhs.true:                                    ; preds = %if.then53
  %call61 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.lhs.true.do.end68_crit_edge, label %land.lhs.true63

land.lhs.true.do.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end68

land.lhs.true63:                                  ; preds = %land.lhs.true
  %.b73 = load i1, ptr @trace_mt_mcu_msg_send.__warned, align 1
  br i1 %.b73, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trace_mt_mcu_msg_send.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 96, ptr noundef nonnull @.str.16) #7
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !106
  %31 = tail call i32 @llvm.read_register.i32(metadata !88) #7
  %and.i.i.i.i87 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i87 to ptr
  %preempt_count.i.i.i88 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i88 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i88, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i88, align 4
  br label %if.end70

if.end70:                                         ; preds = %do.end68, %cpu_online.exit86.if.end70_crit_edge, %cpu_online.exit.if.end70_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_mt_mcu_msg_send(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_mt_submit_urb(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7601u_wr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @firmware_request_cache(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt7601u_vendor_reset(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7601u_rmw(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mt7601u_upload_firmware(ptr noundef %dev, ptr noundef %fw) unnamed_addr #0 align 64 {
entry:
  %dma_buf = alloca %struct.mt7601u_dma_buf, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %dma_buf) #7
  %ivb1 = getelementptr inbounds %struct.mt76_fw, ptr %fw, i32 0, i32 1
  %0 = call ptr @memset(ptr %dma_buf, i32 255, i32 16)
  %call = tail call ptr @kmemdup(ptr noundef %ivb1, i32 noundef 64, i32 noundef 3264) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call zeroext i1 @mt7601u_usb_alloc_buf(ptr noundef %dev, i32 noundef 14348, ptr noundef nonnull %dma_buf) #7
  br i1 %call2, label %if.end.error_crit_edge, label %if.end4

if.end.error_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end4:                                          ; preds = %if.end
  %1 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %fw, align 4
  %3 = call i32 @llvm.bswap.i32(i32 %2)
  %sub = add i32 %3, -64
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt7601u_upload_firmware.__UNIQUE_ID_ddebug483, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt7601u_upload_firmware, %if.then10)) #7
          to label %do.end [label %if.then10], !srcloc !102

if.then10:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %dev11 = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 1
  %4 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev11, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt7601u_upload_firmware.__UNIQUE_ID_ddebug483, ptr noundef %5, ptr noundef nonnull @.str.38, i32 noundef %sub, i32 noundef 64) #7
  br label %do.end

do.end:                                           ; preds = %if.then10, %if.end4
  %ilm = getelementptr inbounds %struct.mt76_fw, ptr %fw, i32 0, i32 2
  %call14 = call fastcc i32 @mt7601u_dma_fw(ptr noundef %dev, ptr noundef nonnull %dma_buf, ptr noundef %ilm, i32 noundef %sub, i32 noundef 64)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %do.end.error_crit_edge

do.end.error_crit_edge:                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end17:                                         ; preds = %do.end
  %dlm_len19 = getelementptr inbounds %struct.mt76_fw_header, ptr %fw, i32 0, i32 1
  %6 = ptrtoint ptr %dlm_len19 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dlm_len19, align 4
  %8 = call i32 @llvm.bswap.i32(i32 %7)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt7601u_upload_firmware.__UNIQUE_ID_ddebug484, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt7601u_upload_firmware, %if.then32)) #7
          to label %do.end36 [label %if.then32], !srcloc !102

if.then32:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  %dev33 = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 1
  %9 = ptrtoint ptr %dev33 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev33, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt7601u_upload_firmware.__UNIQUE_ID_ddebug484, ptr noundef %10, ptr noundef nonnull @.str.39, i32 noundef %8) #7
  br label %do.end36

do.end36:                                         ; preds = %if.then32, %if.end17
  %add.ptr = getelementptr i8, ptr %ilm, i32 %sub
  %call39 = call fastcc i32 @mt7601u_dma_fw(ptr noundef %dev, ptr noundef nonnull %dma_buf, ptr noundef %add.ptr, i32 noundef %8, i32 noundef 524288)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end42, label %do.end36.error_crit_edge

do.end36.error_crit_edge:                         ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end42:                                         ; preds = %do.end36
  %call43 = call i32 @mt7601u_vendor_request(ptr noundef %dev, i8 noundef zeroext 1, i8 noundef zeroext 0, i16 noundef zeroext 18, i16 noundef zeroext 0, ptr noundef nonnull %call, i32 noundef 64) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp = icmp slt i32 %call43, 0
  br i1 %cmp, label %if.end42.error_crit_edge, label %if.end42.land.rhs_crit_edge

if.end42.land.rhs_crit_edge:                      ; preds = %if.end42
  br label %land.rhs

if.end42.error_crit_edge:                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

land.rhs:                                         ; preds = %for.body.land.rhs_crit_edge, %if.end42.land.rhs_crit_edge
  %i.0107 = phi i32 [ %dec, %for.body.land.rhs_crit_edge ], [ 100, %if.end42.land.rhs_crit_edge ]
  %call.i = call i32 @mt7601u_rr(ptr noundef %dev, i32 noundef 1840) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.i.not = icmp eq i32 %call.i, 1
  br i1 %cmp.i.not, label %do.body54, label %for.body

for.body:                                         ; preds = %land.rhs
  call void @msleep(i32 noundef 10) #7
  %dec = add nsw i32 %i.0107, -1
  %tobool46.not = icmp eq i32 %dec, 0
  br i1 %tobool46.not, label %for.body.error_crit_edge, label %for.body.land.rhs_crit_edge

for.body.land.rhs_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs

for.body.error_crit_edge:                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

do.body54:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt7601u_upload_firmware.__UNIQUE_ID_ddebug485, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt7601u_upload_firmware, %if.then66)) #7
          to label %error [label %if.then66], !srcloc !102

if.then66:                                        ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #9
  %dev67 = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 1
  %11 = ptrtoint ptr %dev67 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev67, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt7601u_upload_firmware.__UNIQUE_ID_ddebug485, ptr noundef %12, ptr noundef nonnull @.str.40) #7
  br label %error

error:                                            ; preds = %if.then66, %do.body54, %for.body.error_crit_edge, %if.end42.error_crit_edge, %do.end36.error_crit_edge, %do.end.error_crit_edge, %if.end.error_crit_edge
  %ret.0 = phi i32 [ %call14, %do.end.error_crit_edge ], [ %call39, %do.end36.error_crit_edge ], [ %call43, %if.end42.error_crit_edge ], [ 0, %if.then66 ], [ -12, %if.end.error_crit_edge ], [ 0, %do.body54 ], [ -110, %for.body.error_crit_edge ]
  call void @kfree(ptr noundef nonnull %call) #7
  call void @mt7601u_usb_free_buf(ptr noundef %dev, ptr noundef nonnull %dma_buf) #7
  br label %cleanup

cleanup:                                          ; preds = %error, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %error ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dma_buf) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7601u_rr(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mt7601u_dma_fw(ptr noundef %dev, ptr nocapture noundef readonly %dma_buf, ptr nocapture noundef readonly %data, i32 noundef %len, i32 noundef %dst_addr) unnamed_addr #0 align 64 {
entry:
  %cmpl.i = alloca %struct.completion, align 4
  %buf.i = alloca %struct.mt7601u_dma_buf, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp = icmp eq i32 %len, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = tail call i32 @llvm.smin.i32(i32 %len, i32 14336)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %cmpl.i) #7
  %1 = getelementptr inbounds i8, ptr %cmpl.i, i32 4
  %2 = call ptr @memset(ptr %1, i32 255, i32 52)
  %3 = ptrtoint ptr %cmpl.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %cmpl.i, align 4
  call void @__init_swait_queue_head(ptr noundef %1, ptr noundef nonnull @.str.46, ptr noundef nonnull @init_completion.__key) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buf.i) #7
  %4 = getelementptr inbounds %struct.mt7601u_dma_buf, ptr %buf.i, i32 0, i32 3
  %5 = call ptr @memcpy(ptr %buf.i, ptr %dma_buf, i32 16)
  %6 = getelementptr inbounds %struct.mt7601u_dma_buf, ptr %buf.i, i32 0, i32 1
  %and46.i = and i32 %0, 65535
  %or47.i = or i32 %and46.i, 268435456
  %7 = call i32 @llvm.bswap.i32(i32 %or47.i) #7
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %6, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 %7, ptr %9, align 1
  %11 = load ptr, ptr %6, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 4
  %12 = call ptr @memcpy(ptr %add.ptr.i, ptr %data, i32 %0)
  %13 = load ptr, ptr %6, align 4
  %add.ptr51.i = getelementptr i8, ptr %13, i32 4
  %add.ptr52.i = getelementptr i8, ptr %add.ptr51.i, i32 %0
  %14 = ptrtoint ptr %add.ptr52.i to i32
  call void @__asan_storeN_noabort(i32 %14, i32 8)
  store i64 0, ptr %add.ptr52.i, align 1
  %call.i = call i32 @mt7601u_vendor_single_wr(ptr noundef %dev, i8 noundef zeroext 66, i16 noundef zeroext 560, i32 noundef %dst_addr) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool53.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool53.not.i, label %if.end55.i, label %if.end.__mt7601u_dma_fw.exit.thread_crit_edge

if.end.__mt7601u_dma_fw.exit.thread_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %__mt7601u_dma_fw.exit.thread

if.end55.i:                                       ; preds = %if.end
  %add.i = add nsw i32 %0, 3
  %div115.i = and i32 %add.i, -4
  %shl57.i = shl i32 %div115.i, 16
  %call58.i = call i32 @mt7601u_vendor_single_wr(ptr noundef %dev, i8 noundef zeroext 66, i16 noundef zeroext 564, i32 noundef %shl57.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58.i)
  %tobool59.not.i = icmp eq i32 %call58.i, 0
  br i1 %tobool59.not.i, label %if.end61.i, label %if.end55.i.__mt7601u_dma_fw.exit.thread_crit_edge

if.end55.i.__mt7601u_dma_fw.exit.thread_crit_edge: ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__mt7601u_dma_fw.exit.thread

if.end61.i:                                       ; preds = %if.end55.i
  %add63.i = add i32 %div115.i, 8
  %15 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %add63.i, ptr %4, align 4
  %call65.i = call i32 @mt7601u_usb_submit_buf(ptr noundef %dev, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %buf.i, i32 noundef 3264, ptr noundef nonnull @mt7601u_complete_urb, ptr noundef nonnull %cmpl.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65.i)
  %tobool66.not.i = icmp eq i32 %call65.i, 0
  br i1 %tobool66.not.i, label %if.end68.i, label %if.end61.i.__mt7601u_dma_fw.exit.thread_crit_edge

if.end61.i.__mt7601u_dma_fw.exit.thread_crit_edge: ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__mt7601u_dma_fw.exit.thread

if.end68.i:                                       ; preds = %if.end61.i
  %call70.i = call i32 @wait_for_completion_timeout(ptr noundef nonnull %cmpl.i, i32 noundef 100) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70.i)
  %tobool71.not.i = icmp eq i32 %call70.i, 0
  br i1 %tobool71.not.i, label %do.end75.i, label %if.end77.i

do.end75.i:                                       ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev76.i = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 1
  %16 = ptrtoint ptr %dev76.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev76.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.41) #10
  %18 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %buf.i, align 4
  call void @usb_kill_urb(ptr noundef %19) #7
  br label %__mt7601u_dma_fw.exit.thread

if.end77.i:                                       ; preds = %if.end68.i
  %20 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %buf.i, align 4
  %status.i.i = getelementptr inbounds %struct.urb, ptr %21, i32 0, i32 12
  %22 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %status.i.i, align 4
  %24 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %23, label %__mt7601u_dma_fw.exit [
    i32 0, label %if.end77.i.__mt7601u_dma_fw.exit.thread24_crit_edge
    i32 -2, label %if.end77.i.__mt7601u_dma_fw.exit.thread24_crit_edge27
    i32 -104, label %if.end77.i.__mt7601u_dma_fw.exit.thread24_crit_edge28
    i32 -108, label %if.end77.i.__mt7601u_dma_fw.exit.thread24_crit_edge29
  ]

if.end77.i.__mt7601u_dma_fw.exit.thread24_crit_edge29: ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__mt7601u_dma_fw.exit.thread24

if.end77.i.__mt7601u_dma_fw.exit.thread24_crit_edge28: ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__mt7601u_dma_fw.exit.thread24

if.end77.i.__mt7601u_dma_fw.exit.thread24_crit_edge27: ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__mt7601u_dma_fw.exit.thread24

if.end77.i.__mt7601u_dma_fw.exit.thread24_crit_edge: ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__mt7601u_dma_fw.exit.thread24

__mt7601u_dma_fw.exit.thread24:                   ; preds = %if.end77.i.__mt7601u_dma_fw.exit.thread24_crit_edge, %if.end77.i.__mt7601u_dma_fw.exit.thread24_crit_edge27, %if.end77.i.__mt7601u_dma_fw.exit.thread24_crit_edge28, %if.end77.i.__mt7601u_dma_fw.exit.thread24_crit_edge29
  %call89.i = call i32 @mt7601u_rr(ptr noundef %dev, i32 noundef 2472) #7
  %inc.i = add i32 %call89.i, 1
  call void @mt7601u_wr(ptr noundef %dev, i32 noundef 2472, i32 noundef %inc.i) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buf.i) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %cmpl.i) #7
  br label %if.end3

__mt7601u_dma_fw.exit.thread:                     ; preds = %do.end75.i, %if.end61.i.__mt7601u_dma_fw.exit.thread_crit_edge, %if.end55.i.__mt7601u_dma_fw.exit.thread_crit_edge, %if.end.__mt7601u_dma_fw.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call65.i, %if.end61.i.__mt7601u_dma_fw.exit.thread_crit_edge ], [ %call58.i, %if.end55.i.__mt7601u_dma_fw.exit.thread_crit_edge ], [ %call.i, %if.end.__mt7601u_dma_fw.exit.thread_crit_edge ], [ -110, %do.end75.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buf.i) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %cmpl.i) #7
  br label %cleanup

__mt7601u_dma_fw.exit:                            ; preds = %if.end77.i
  %dev84.i = getelementptr inbounds %struct.mt7601u_dev, ptr %dev, i32 0, i32 1
  %25 = ptrtoint ptr %dev84.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev84.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.44, i32 noundef %23) #10
  %27 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %buf.i, align 4
  %status87.i = getelementptr inbounds %struct.urb, ptr %28, i32 0, i32 12
  %29 = ptrtoint ptr %status87.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %status87.i, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buf.i) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %cmpl.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not = icmp eq i32 %30, 0
  br i1 %tobool.not, label %__mt7601u_dma_fw.exit.if.end3_crit_edge, label %__mt7601u_dma_fw.exit.cleanup_crit_edge

__mt7601u_dma_fw.exit.cleanup_crit_edge:          ; preds = %__mt7601u_dma_fw.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

__mt7601u_dma_fw.exit.if.end3_crit_edge:          ; preds = %__mt7601u_dma_fw.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

if.end3:                                          ; preds = %__mt7601u_dma_fw.exit.if.end3_crit_edge, %__mt7601u_dma_fw.exit.thread24
  %call4 = call zeroext i1 @mt76_poll_msec(ptr noundef %dev, i32 noundef 1844, i32 noundef -2147483648, i32 noundef -2147483648, i32 noundef 500) #7
  br i1 %call4, label %if.end6, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr i8, ptr %data, i32 %0
  %sub = sub i32 %len, %0
  %add = add i32 %0, %dst_addr
  %call7 = call fastcc i32 @mt7601u_dma_fw(ptr noundef %dev, ptr noundef %dma_buf, ptr noundef %add.ptr, i32 noundef %sub, i32 noundef %add)
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end3.cleanup_crit_edge, %__mt7601u_dma_fw.exit.cleanup_crit_edge, %__mt7601u_dma_fw.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end6 ], [ 0, %entry.cleanup_crit_edge ], [ %30, %__mt7601u_dma_fw.exit.cleanup_crit_edge ], [ -110, %if.end3.cleanup_crit_edge ], [ %retval.0.i.ph, %__mt7601u_dma_fw.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7601u_vendor_request(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mt76_poll_msec(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7601u_vendor_single_wr(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !13, !14, !15, !16, !17, !19, !20, !21, !23, !24, !25, !27, !28, !29, !30, !32, !33, !35, !36, !38, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !57, !58, !59, !60, !61, !63, !64, !65, !67, !68, !69, !70, !72, !73, !75, !76, !78, !79, !80, !81, !83, !84, !85, !87}
!llvm.named.register.sp = !{!88}
!llvm.module.flags = !{!89, !90, !91, !92, !93, !94, !95, !96}
!llvm.ident = !{!97}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/mediatek/mt7601u/mcu.c", i32 183, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @mt7601u_mcu_tssi_read_kick._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @mt7601u_mcu_tssi_read_kick._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @mt7601u_mcu_init.__key, !9, !"__key", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/mediatek/mt7601u/mcu.c", i32 495, i32 2}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/mediatek/mt7601u/mcu.c", i32 133, i32 3}
!13 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.8, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @mt7601u_mcu_msg_send._entry, !12, !"_entry", i1 false, i1 false}
!16 = !{ptr @mt7601u_mcu_msg_send._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/mediatek/mt7601u/mcu.c", i32 139, i32 3}
!19 = !{ptr @mt7601u_mcu_msg_send._entry.9, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @mt7601u_mcu_msg_send._entry_ptr.11, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.13, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/mediatek/mt7601u/mcu.c", i32 143, i32 3}
!23 = !{ptr @mt7601u_mcu_msg_send._entry.12, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @mt7601u_mcu_msg_send._entry_ptr.14, !22, !"_entry_ptr", i1 false, i1 false}
!25 = distinct !{null, !26, !"__already_done", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/mediatek/mt7601u/trace.h", i32 78, i32 1}
!27 = !{ptr @.str.15, !26, !"<string literal>", i1 false, i1 false}
!28 = distinct !{null, !26, !"__warned", i1 false, i1 false}
!29 = !{ptr @.str.16, !26, !"<string literal>", i1 false, i1 false}
!30 = distinct !{null, !31, !"__already_done", i1 false, i1 false}
!31 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!32 = !{ptr @.str.17, !31, !"<string literal>", i1 false, i1 false}
!33 = distinct !{null, !34, !"__already_done", i1 false, i1 false}
!34 = !{!"../drivers/net/wireless/mediatek/mt7601u/trace.h", i32 56, i32 1}
!35 = distinct !{null, !34, !"__warned", i1 false, i1 false}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/mediatek/mt7601u/mcu.c", i32 77, i32 4}
!38 = !{ptr @.str.19, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @mt7601u_mcu_wait_resp._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @mt7601u_mcu_wait_resp._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.21, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/wireless/mediatek/mt7601u/mcu.c", i32 93, i32 4}
!43 = !{ptr @mt7601u_mcu_wait_resp._entry.20, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @mt7601u_mcu_wait_resp._entry_ptr.22, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.24, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/wireless/mediatek/mt7601u/mcu.c", i32 100, i32 3}
!47 = !{ptr @mt7601u_mcu_wait_resp._entry.23, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @mt7601u_mcu_wait_resp._entry_ptr.25, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.27, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/wireless/mediatek/mt7601u/mcu.c", i32 105, i32 2}
!51 = !{ptr @mt7601u_mcu_wait_resp._entry.26, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @mt7601u_mcu_wait_resp._entry_ptr.28, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.29, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/wireless/mediatek/mt7601u/mcu.c", i32 417, i32 43}
!55 = !{ptr @.str.30, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/wireless/mediatek/mt7601u/mcu.c", i32 439, i32 2}
!57 = !{ptr @.str.31, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.32, !56, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @mt7601u_load_firmware._entry, !56, !"_entry", i1 false, i1 false}
!60 = !{ptr @mt7601u_load_firmware._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.34, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/wireless/mediatek/mt7601u/mcu.c", i32 486, i32 2}
!63 = !{ptr @mt7601u_load_firmware._entry.33, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @mt7601u_load_firmware._entry_ptr.35, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.36, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/wireless/mediatek/mt7601u/mcu.c", i32 372, i32 2}
!67 = !{ptr @.str.37, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.38, !66, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @mt7601u_upload_firmware.__UNIQUE_ID_ddebug483, !66, !"__UNIQUE_ID_ddebug483", i1 false, i1 false}
!70 = !{ptr @.str.39, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/wireless/mediatek/mt7601u/mcu.c", i32 379, i32 2}
!72 = !{ptr @mt7601u_upload_firmware.__UNIQUE_ID_ddebug484, !71, !"__UNIQUE_ID_ddebug484", i1 false, i1 false}
!73 = !{ptr @.str.40, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/wireless/mediatek/mt7601u/mcu.c", i32 398, i32 2}
!75 = !{ptr @mt7601u_upload_firmware.__UNIQUE_ID_ddebug485, !74, !"__UNIQUE_ID_ddebug485", i1 false, i1 false}
!76 = !{ptr @.str.41, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/wireless/mediatek/mt7601u/mcu.c", i32 318, i32 3}
!78 = !{ptr @.str.42, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @__mt7601u_dma_fw._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @__mt7601u_dma_fw._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.44, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/wireless/mediatek/mt7601u/mcu.c", i32 323, i32 3}
!83 = !{ptr @__mt7601u_dma_fw._entry.43, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @__mt7601u_dma_fw._entry_ptr.45, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @init_completion.__key, !86, !"__key", i1 false, i1 false}
!86 = !{!"../include/linux/completion.h", i32 87, i32 2}
!87 = !{ptr @.str.46, !86, !"<string literal>", i1 false, i1 false}
!88 = !{!"sp"}
!89 = !{i32 1, !"wchar_size", i32 2}
!90 = !{i32 1, !"min_enum_size", i32 4}
!91 = !{i32 8, !"branch-target-enforcement", i32 0}
!92 = !{i32 8, !"sign-return-address", i32 0}
!93 = !{i32 8, !"sign-return-address-all", i32 0}
!94 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!95 = !{i32 7, !"uwtable", i32 1}
!96 = !{i32 7, !"frame-pointer", i32 2}
!97 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!98 = !{!"auto-init"}
!99 = !{!"branch_weights", i32 1, i32 2000}
!100 = !{!"branch_weights", i32 2000, i32 1}
!101 = !{i64 2154895877, i64 2154896365, i64 2154895914, i64 2154895970, i64 2154896004, i64 2154896028, i64 2154896069, i64 2154896090, i64 2154896118, i64 2154896152}
!102 = !{i64 2148702415, i64 2148702420, i64 2148702433, i64 2148702477, i64 2148702511, i64 2148702532}
!103 = !{i64 2157919198}
!104 = !{i64 2157919399}
!105 = !{i64 2149915904}
!106 = !{i64 2149916940}
!107 = !{i64 2157936026}
!108 = !{i64 2157936259}
