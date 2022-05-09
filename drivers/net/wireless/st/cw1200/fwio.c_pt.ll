; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/st/cw1200/fwio.c_pt.bc'
source_filename = "../drivers/net/wireless/st/cw1200/fwio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.cw1200_common = type <{ ptr, ptr, ptr, %struct.ieee80211_low_level_stats, [6 x i8], [2 x i8], ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr, ptr, %struct.mutex, [4 x %struct.cw1200_queue], %struct.cw1200_queue_stats, i32, i32, i32, ptr, ptr, ptr, %struct.wsm_edca_params, %struct.wsm_tx_queue_params, %struct.wsm_mib_association_mode, %struct.wsm_set_bss_params, %struct.cw1200_ht_info, %struct.wsm_set_pm, %struct.wsm_set_pm, i32, i32, i8, [3 x i8], i32, i32, %struct.wait_queue_head, i8, i8, [2 x i8], i32, i8, [3 x i8], i32, i8, %struct.wsm_rx_filter, %struct.wsm_mib_multicast_filter, i8, i8, i8, %struct.work_struct, %struct.work_struct, i8, i8, [2 x i8], %struct.cw1200_pm_state, %struct.wsm_p2p_ps_modeinfo, %struct.wsm_uapsd_info, i8, i8, i8, i8, i32, i32, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, %struct.work_struct, i32, %struct.wait_queue_head, %struct.wait_queue_head, i8, i8, i8, i8, i32, i8, i8, [2 x i8], %struct.cw1200_scan, %struct.atomic_t, %struct.delayed_work, %struct.wsm_startup_ind, %struct.mutex, %struct.wsm_buf, %struct.wsm_cmd, %struct.wait_queue_head, %struct.wait_queue_head, i32, %struct.atomic_t, i32, i32, i32, i8, [3 x i8], %struct.delayed_work, %struct.work_struct, %struct.work_struct, i32, i32, i8, i8, [2 x i8], %struct.work_struct, i32, [11 x %struct.wsm_add_key], i32, [5 x %struct.cw1200_link_entry], %struct.work_struct, %struct.delayed_work, i32, i32, i8, [3 x i8], %struct.spinlock, i8, i8, [2 x i8], %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.timer_list, %struct.spinlock, %struct.list_head, %struct.work_struct, %struct.delayed_work, %struct.spinlock, i32, i32, i32, %struct.work_struct, %struct.tx_policy_cache, %struct.work_struct, i32, %struct.wait_queue_head, %struct.work_struct, [6 x i8], i8, i8 }>
%struct.ieee80211_low_level_stats = type { i32, i32, i32, i32 }
%struct.cw1200_queue = type { ptr, i32, i32, i32, i32, ptr, %struct.list_head, %struct.list_head, %struct.list_head, i32, ptr, i8, %struct.spinlock, i8, i8, %struct.timer_list, i32 }
%struct.cw1200_queue_stats = type { %struct.spinlock, ptr, i32, i32, %struct.wait_queue_head, ptr, ptr }
%struct.wsm_edca_params = type { [4 x %struct.wsm_edca_queue_params], [4 x i8] }
%struct.wsm_edca_queue_params = type { i16, i16, i16, i16, i32 }
%struct.wsm_tx_queue_params = type { [4 x %struct.wsm_set_tx_queue_params] }
%struct.wsm_set_tx_queue_params = type { i8, i16, i32 }
%struct.wsm_mib_association_mode = type { i8, i8, i8, i8, i32 }
%struct.wsm_set_bss_params = type { i8, i8, i16, i32 }
%struct.cw1200_ht_info = type { %struct.ieee80211_sta_ht_cap, i32, i16 }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.wsm_set_pm = type { i8, i8, i8, i8 }
%struct.wsm_rx_filter = type { i8, i8, i8, i8 }
%struct.wsm_mib_multicast_filter = type { i32, i32, [8 x [6 x i8]] }
%struct.cw1200_pm_state = type { ptr, %struct.timer_list, ptr, %struct.spinlock }
%struct.wsm_p2p_ps_modeinfo = type { i8, i8, i8, i8, i32, i32, i32 }
%struct.wsm_uapsd_info = type { i16, i16, i16, i16 }
%struct.cw1200_scan = type { %struct.semaphore, %struct.work_struct, %struct.delayed_work, ptr, ptr, ptr, ptr, [2 x %struct.wsm_ssid], i32, i32, i32, %struct.atomic_t, %struct.delayed_work, i32 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wsm_ssid = type { [32 x i8], i32 }
%struct.wsm_startup_ind = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [128 x i8], [4 x i32] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wsm_buf = type { ptr, ptr, ptr }
%struct.wsm_cmd = type { %struct.spinlock, i32, ptr, i32, ptr, i32, i16 }
%struct.atomic_t = type { i32 }
%struct.wsm_add_key = type { i8, i8, i16, %union.anon.132 }
%union.anon.132 = type { %struct.anon.135 }
%struct.anon.135 = type { [6 x i8], i16, [16 x i8], [8 x i8], [8 x i8] }
%struct.cw1200_link_entry = type { i32, i32, i32, [6 x i8], [8 x i8], %struct.sk_buff_head }
%struct.sk_buff_head = type { %union.anon.61, i32, %struct.spinlock }
%union.anon.61 = type { %struct.anon.62 }
%struct.anon.62 = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.tx_policy_cache = type { [8 x %struct.tx_policy_cache_entry], %struct.list_head, %struct.list_head, %struct.spinlock }
%struct.tx_policy_cache_entry = type { %struct.tx_policy, %struct.list_head }
%struct.tx_policy = type { %union.anon.141, i8, i8, i8, i8 }
%union.anon.141 = type { [3 x i32] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.hwbus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.firmware = type { i32, ptr, ptr }

@cw1200_load_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 313, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013Can't read config register.\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cw1200_load_firmware\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/net/wireless/st/cw1200/fwio.c\00", [58 x i8] zeroinitializer }, align 32
@cw1200_load_firmware._entry_ptr = internal global ptr @cw1200_load_firmware._entry, section ".printk_index", align 4
@cw1200_load_firmware._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 318, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013Bad config register value (0x%08x)\0A\00", [58 x i8] zeroinitializer }, align 32
@cw1200_load_firmware._entry_ptr.5 = internal global ptr @cw1200_load_firmware._entry.3, section ".printk_index", align 4
@cw1200_load_firmware._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 325, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013Can't deduce hardware type.\0A\00", [33 x i8] zeroinitializer }, align 32
@cw1200_load_firmware._entry_ptr.8 = internal global ptr @cw1200_load_firmware._entry.6, section ".printk_index", align 4
@cw1200_load_firmware._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 334, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013Can't write DPLL register.\0A\00", [34 x i8] zeroinitializer }, align 32
@cw1200_load_firmware._entry_ptr.11 = internal global ptr @cw1200_load_firmware._entry.9, section ".printk_index", align 4
@cw1200_load_firmware._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 343, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013Can't read DPLL register.\0A\00", [35 x i8] zeroinitializer }, align 32
@cw1200_load_firmware._entry_ptr.14 = internal global ptr @cw1200_load_firmware._entry.12, section ".printk_index", align 4
@cw1200_load_firmware._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.1, ptr @.str.2, i32 349, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\013Unable to initialise DPLL register. Wrote 0x%.8X, Read 0x%.8X.\0A\00", [62 x i8] zeroinitializer }, align 32
@cw1200_load_firmware._entry_ptr.17 = internal global ptr @cw1200_load_firmware._entry.15, section ".printk_index", align 4
@cw1200_load_firmware._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.1, ptr @.str.2, i32 357, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013set_wakeup: can't read control register.\0A\00", [52 x i8] zeroinitializer }, align 32
@cw1200_load_firmware._entry_ptr.20 = internal global ptr @cw1200_load_firmware._entry.18, section ".printk_index", align 4
@cw1200_load_firmware._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.1, ptr @.str.2, i32 364, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013set_wakeup: can't write control register.\0A\00", [51 x i8] zeroinitializer }, align 32
@cw1200_load_firmware._entry_ptr.23 = internal global ptr @cw1200_load_firmware._entry.21, section ".printk_index", align 4
@cw1200_load_firmware._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.1, ptr @.str.2, i32 373, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013wait_for_wakeup: can't read control register.\0A\00", [47 x i8] zeroinitializer }, align 32
@cw1200_load_firmware._entry_ptr.26 = internal global ptr @cw1200_load_firmware._entry.24, section ".printk_index", align 4
@cw1200_load_firmware._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.1, ptr @.str.2, i32 384, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013wait_for_wakeup: device is not responding.\0A\00", [50 x i8] zeroinitializer }, align 32
@cw1200_load_firmware._entry_ptr.29 = internal global ptr @cw1200_load_firmware._entry.27, section ".printk_index", align 4
@cw1200_load_firmware._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.1, ptr @.str.2, i32 394, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013HW detection: can't read CUT ID.\0A\00", [60 x i8] zeroinitializer }, align 32
@cw1200_load_firmware._entry_ptr.32 = internal global ptr @cw1200_load_firmware._entry.30, section ".printk_index", align 4
@cw1200_load_firmware._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.1, ptr @.str.2, i32 400, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016CW1x00 Cut 1.1 silicon detected.\0A\00", [60 x i8] zeroinitializer }, align 32
@cw1200_load_firmware._entry_ptr.35 = internal global ptr @cw1200_load_firmware._entry.33, section ".printk_index", align 4
@cw1200_load_firmware._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.1, ptr @.str.2, i32 404, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016CW1x00 Cut 1.0 silicon detected.\0A\00", [60 x i8] zeroinitializer }, align 32
@cw1200_load_firmware._entry_ptr.38 = internal global ptr @cw1200_load_firmware._entry.36, section ".printk_index", align 4
@cw1200_load_firmware._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.1, ptr @.str.2, i32 419, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013(1) HW detection: can't read CUT ID\0A\00", [57 x i8] zeroinitializer }, align 32
@cw1200_load_firmware._entry_ptr.41 = internal global ptr @cw1200_load_firmware._entry.39, section ".printk_index", align 4
@cw1200_load_firmware._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.1, ptr @.str.2, i32 424, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013(2) HW detection: can't read CUT ID.\0A\00", [56 x i8] zeroinitializer }, align 32
@cw1200_load_firmware._entry_ptr.44 = internal global ptr @cw1200_load_firmware._entry.42, section ".printk_index", align 4
@cw1200_load_firmware._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.1, ptr @.str.2, i32 430, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013(3) HW detection: can't read CUT ID.\0A\00", [56 x i8] zeroinitializer }, align 32
@cw1200_load_firmware._entry_ptr.47 = internal global ptr @cw1200_load_firmware._entry.45, section ".printk_index", align 4
@cw1200_load_firmware._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.1, ptr @.str.2, i32 437, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016CW1x00 Cut 2.2 silicon detected.\0A\00", [60 x i8] zeroinitializer }, align 32
@cw1200_load_firmware._entry_ptr.50 = internal global ptr @cw1200_load_firmware._entry.48, section ".printk_index", align 4
@cw1200_load_firmware._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.1, ptr @.str.2, i32 440, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016CW1x00 Cut 2.0 silicon detected.\0A\00", [60 x i8] zeroinitializer }, align 32
@cw1200_load_firmware._entry_ptr.53 = internal global ptr @cw1200_load_firmware._entry.51, section ".printk_index", align 4
@cw1200_load_firmware._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.1, ptr @.str.2, i32 446, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016CW1x60 silicon detected.\0A\00", [36 x i8] zeroinitializer }, align 32
@cw1200_load_firmware._entry_ptr.56 = internal global ptr @cw1200_load_firmware._entry.54, section ".printk_index", align 4
@cw1200_load_firmware._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.1, ptr @.str.2, i32 451, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013Unsupported silicon major revision %d.\0A\00", [54 x i8] zeroinitializer }, align 32
@cw1200_load_firmware._entry_ptr.59 = internal global ptr @cw1200_load_firmware._entry.57, section ".printk_index", align 4
@cw1200_load_firmware._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 459, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cw1200_load_firmware._entry_ptr.61 = internal global ptr @cw1200_load_firmware._entry.60, section ".printk_index", align 4
@cw1200_load_firmware._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.1, ptr @.str.2, i32 464, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013Device is already in QUEUE mode!\0A\00", [60 x i8] zeroinitializer }, align 32
@cw1200_load_firmware._entry_ptr.64 = internal global ptr @cw1200_load_firmware._entry.62, section ".printk_index", align 4
@cw1200_load_firmware._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.1, ptr @.str.2, i32 472, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013Can't handle CW1160/1260 firmware load yet.\0A\00", [49 x i8] zeroinitializer }, align 32
@cw1200_load_firmware._entry_ptr.67 = internal global ptr @cw1200_load_firmware._entry.65, section ".printk_index", align 4
@cw1200_load_firmware._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.1, ptr @.str.2, i32 480, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013Can't perform firmware load for hw type %d.\0A\00", [49 x i8] zeroinitializer }, align 32
@cw1200_load_firmware._entry_ptr.70 = internal global ptr @cw1200_load_firmware._entry.68, section ".printk_index", align 4
@cw1200_load_firmware._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.1, ptr @.str.2, i32 485, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013Firmware load error.\0A\00", [40 x i8] zeroinitializer }, align 32
@cw1200_load_firmware._entry_ptr.73 = internal global ptr @cw1200_load_firmware._entry.71, section ".printk_index", align 4
@cw1200_load_firmware._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 499, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cw1200_load_firmware._entry_ptr.75 = internal global ptr @cw1200_load_firmware._entry.74, section ".printk_index", align 4
@cw1200_load_firmware._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.1, ptr @.str.2, i32 504, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013Can't write config register.\0A\00", [32 x i8] zeroinitializer }, align 32
@cw1200_load_firmware._entry_ptr.78 = internal global ptr @cw1200_load_firmware._entry.76, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.79 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"wsm_10.bin\00", [21 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sdd_10.bin\00", [21 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"wsm_11.bin\00", [21 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sdd_11.bin\00", [21 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"wsm_20.bin\00", [21 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sdd_20.bin\00", [21 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"wsm_22.bin\00", [21 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sdd_22.bin\00", [21 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"wsm_cw1x60.bin\00", [17 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sdd_cw1x60.bin\00", [17 x i8] zeroinitializer }, align 32
@cw1200_load_firmware_cw1200._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.90, ptr @.str.2, i32 120, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013Invalid silicon revision %d.\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"cw1200_load_firmware_cw1200\00", [36 x i8] zeroinitializer }, align 32
@cw1200_load_firmware_cw1200._entry_ptr = internal global ptr @cw1200_load_firmware_cw1200._entry, section ".printk_index", align 4
@cw1200_load_firmware_cw1200._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.90, ptr @.str.2, i32 147, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013Can't load firmware file %s.\0A\00", [32 x i8] zeroinitializer }, align 32
@cw1200_load_firmware_cw1200._entry_ptr.93 = internal global ptr @cw1200_load_firmware_cw1200._entry.91, section ".printk_index", align 4
@cw1200_load_firmware_cw1200._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.90, ptr @.str.2, i32 153, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013Can't allocate firmware load buffer.\0A\00", [56 x i8] zeroinitializer }, align 32
@cw1200_load_firmware_cw1200._entry_ptr.96 = internal global ptr @cw1200_load_firmware_cw1200._entry.94, section ".printk_index", align 4
@cw1200_load_firmware_cw1200._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.90, ptr @.str.2, i32 167, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013Bootloader is not ready.\0A\00", [36 x i8] zeroinitializer }, align 32
@cw1200_load_firmware_cw1200._entry_ptr.99 = internal global ptr @cw1200_load_firmware_cw1200._entry.97, section ".printk_index", align 4
@cw1200_load_firmware_cw1200._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.90, ptr @.str.2, i32 187, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013Bootloader reported error %d.\0A\00", [63 x i8] zeroinitializer }, align 32
@cw1200_load_firmware_cw1200._entry_ptr.102 = internal global ptr @cw1200_load_firmware_cw1200._entry.100, section ".printk_index", align 4
@cw1200_load_firmware_cw1200._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.90, ptr @.str.2, i32 202, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013Timeout waiting for FIFO.\0A\00", [35 x i8] zeroinitializer }, align 32
@cw1200_load_firmware_cw1200._entry_ptr.105 = internal global ptr @cw1200_load_firmware_cw1200._entry.103, section ".printk_index", align 4
@cw1200_load_firmware_cw1200._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.90, ptr @.str.2, i32 225, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013Can't write firmware block @ %d!\0A\00", [60 x i8] zeroinitializer }, align 32
@cw1200_load_firmware_cw1200._entry_ptr.108 = internal global ptr @cw1200_load_firmware_cw1200._entry.106, section ".printk_index", align 4
@cw1200_load_firmware_cw1200._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.90, ptr @.str.2, i32 242, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013Wait for download completion failed: 0x%.8X\0A\00", [49 x i8] zeroinitializer }, align 32
@cw1200_load_firmware_cw1200._entry_ptr.111 = internal global ptr @cw1200_load_firmware_cw1200._entry.109, section ".printk_index", align 4
@cw1200_load_firmware_cw1200._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.90, ptr @.str.2, i32 246, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016Firmware download completed.\0A\00", [32 x i8] zeroinitializer }, align 32
@cw1200_load_firmware_cw1200._entry_ptr.114 = internal global ptr @cw1200_load_firmware_cw1200._entry.112, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.115 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.116 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.117 = internal global [7 x i64] [i64 5, i64 32, i64 10, i64 11, i64 20, i64 22, i64 40]
@__sancov_gen_cov_switch_values.118 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 313, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 318, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 325, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 334, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 343, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 348, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 357, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 364, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 373, i32 4 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 384, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 394, i32 4 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 400, i32 4 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 404, i32 4 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 419, i32 4 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 424, i32 4 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 430, i32 4 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 437, i32 4 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 440, i32 4 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 446, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 450, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 459, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 464, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 472, i32 4 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 479, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 485, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 499, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 504, i32 3 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 95, i32 13 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 97, i32 21 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 100, i32 13 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 102, i32 21 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 105, i32 13 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 107, i32 21 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 110, i32 13 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 112, i32 21 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 115, i32 13 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 117, i32 21 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 120, i32 3 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 147, i32 3 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 153, i32 3 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 167, i32 3 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 187, i32 4 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 202, i32 4 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 224, i32 4 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 242, i32 3 }
@___asan_gen_.362 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.365 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.366 = private constant [41 x i8] c"../drivers/net/wireless/st/cw1200/fwio.c\00", align 1
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.366, i32 246, i32 3 }
@llvm.compiler.used = appending global [119 x ptr] [ptr @cw1200_load_firmware._entry, ptr @cw1200_load_firmware._entry.12, ptr @cw1200_load_firmware._entry.15, ptr @cw1200_load_firmware._entry.18, ptr @cw1200_load_firmware._entry.21, ptr @cw1200_load_firmware._entry.24, ptr @cw1200_load_firmware._entry.27, ptr @cw1200_load_firmware._entry.3, ptr @cw1200_load_firmware._entry.30, ptr @cw1200_load_firmware._entry.33, ptr @cw1200_load_firmware._entry.36, ptr @cw1200_load_firmware._entry.39, ptr @cw1200_load_firmware._entry.42, ptr @cw1200_load_firmware._entry.45, ptr @cw1200_load_firmware._entry.48, ptr @cw1200_load_firmware._entry.51, ptr @cw1200_load_firmware._entry.54, ptr @cw1200_load_firmware._entry.57, ptr @cw1200_load_firmware._entry.6, ptr @cw1200_load_firmware._entry.60, ptr @cw1200_load_firmware._entry.62, ptr @cw1200_load_firmware._entry.65, ptr @cw1200_load_firmware._entry.68, ptr @cw1200_load_firmware._entry.71, ptr @cw1200_load_firmware._entry.74, ptr @cw1200_load_firmware._entry.76, ptr @cw1200_load_firmware._entry.9, ptr @cw1200_load_firmware._entry_ptr, ptr @cw1200_load_firmware._entry_ptr.11, ptr @cw1200_load_firmware._entry_ptr.14, ptr @cw1200_load_firmware._entry_ptr.17, ptr @cw1200_load_firmware._entry_ptr.20, ptr @cw1200_load_firmware._entry_ptr.23, ptr @cw1200_load_firmware._entry_ptr.26, ptr @cw1200_load_firmware._entry_ptr.29, ptr @cw1200_load_firmware._entry_ptr.32, ptr @cw1200_load_firmware._entry_ptr.35, ptr @cw1200_load_firmware._entry_ptr.38, ptr @cw1200_load_firmware._entry_ptr.41, ptr @cw1200_load_firmware._entry_ptr.44, ptr @cw1200_load_firmware._entry_ptr.47, ptr @cw1200_load_firmware._entry_ptr.5, ptr @cw1200_load_firmware._entry_ptr.50, ptr @cw1200_load_firmware._entry_ptr.53, ptr @cw1200_load_firmware._entry_ptr.56, ptr @cw1200_load_firmware._entry_ptr.59, ptr @cw1200_load_firmware._entry_ptr.61, ptr @cw1200_load_firmware._entry_ptr.64, ptr @cw1200_load_firmware._entry_ptr.67, ptr @cw1200_load_firmware._entry_ptr.70, ptr @cw1200_load_firmware._entry_ptr.73, ptr @cw1200_load_firmware._entry_ptr.75, ptr @cw1200_load_firmware._entry_ptr.78, ptr @cw1200_load_firmware._entry_ptr.8, ptr @cw1200_load_firmware_cw1200._entry, ptr @cw1200_load_firmware_cw1200._entry.100, ptr @cw1200_load_firmware_cw1200._entry.103, ptr @cw1200_load_firmware_cw1200._entry.106, ptr @cw1200_load_firmware_cw1200._entry.109, ptr @cw1200_load_firmware_cw1200._entry.112, ptr @cw1200_load_firmware_cw1200._entry.91, ptr @cw1200_load_firmware_cw1200._entry.94, ptr @cw1200_load_firmware_cw1200._entry.97, ptr @cw1200_load_firmware_cw1200._entry_ptr, ptr @cw1200_load_firmware_cw1200._entry_ptr.102, ptr @cw1200_load_firmware_cw1200._entry_ptr.105, ptr @cw1200_load_firmware_cw1200._entry_ptr.108, ptr @cw1200_load_firmware_cw1200._entry_ptr.111, ptr @cw1200_load_firmware_cw1200._entry_ptr.114, ptr @cw1200_load_firmware_cw1200._entry_ptr.93, ptr @cw1200_load_firmware_cw1200._entry_ptr.96, ptr @cw1200_load_firmware_cw1200._entry_ptr.99, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @.str.37, ptr @.str.40, ptr @.str.43, ptr @.str.46, ptr @.str.49, ptr @.str.52, ptr @.str.55, ptr @.str.58, ptr @.str.63, ptr @.str.66, ptr @.str.69, ptr @.str.72, ptr @.str.77, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.92, ptr @.str.95, ptr @.str.98, ptr @.str.101, ptr @.str.104, ptr @.str.107, ptr @.str.110, ptr @.str.113], section "llvm.metadata"
@0 = internal global [83 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_load_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_load_firmware._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_load_firmware._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_load_firmware._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_load_firmware._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_load_firmware._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_load_firmware._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_load_firmware._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_load_firmware._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_load_firmware._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_load_firmware._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_load_firmware._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_load_firmware._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_load_firmware._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_load_firmware._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_load_firmware._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_load_firmware._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_load_firmware._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_load_firmware._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_load_firmware._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_load_firmware._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_load_firmware._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_load_firmware._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_load_firmware._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_load_firmware._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_load_firmware._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_load_firmware._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_load_firmware_cw1200._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_load_firmware_cw1200._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_load_firmware_cw1200._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_load_firmware_cw1200._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_load_firmware_cw1200._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_load_firmware_cw1200._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_load_firmware_cw1200._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_load_firmware_cw1200._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw1200_load_firmware_cw1200._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cw1200_load_firmware(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  %tmp.i361 = alloca i32, align 4
  %tmp.i359 = alloca i32, align 4
  %tmp.i357 = alloca i32, align 4
  %tmp.i356 = alloca i32, align 4
  %tmp.i353 = alloca i32, align 4
  %tmp.i350 = alloca i32, align 4
  %tmp.i348 = alloca i32, align 4
  %tmp.i346 = alloca i32, align 4
  %tmp.i344 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  %val32 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val32) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #6
  %0 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tmp.i, align 4, !annotation !174
  %call.i = call i32 @cw1200_reg_read(ptr noundef %priv, i16 noundef zeroext 0, ptr noundef nonnull %tmp.i, i32 noundef 4) #6
  %1 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %tmp.i, align 4
  %3 = call i32 @llvm.bswap.i32(i32 %2) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #9
  br label %cleanup277

if.end:                                           ; preds = %entry
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %if.end10 [
    i32 0, label %if.end.do.end7_crit_edge
    i32 -1, label %if.end.do.end7_crit_edge392
  ]

if.end.do.end7_crit_edge392:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7

if.end.do.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7

do.end7:                                          ; preds = %if.end.do.end7_crit_edge, %if.end.do.end7_crit_edge392
  %call9 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %3) #9
  br label %cleanup277

if.end10:                                         ; preds = %if.end
  %shr.i = lshr i32 %3, 24
  %and.i = and i32 %shr.i, 7
  %5 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.115)
  switch i32 %and.i, label %do.end16 [
    i32 0, label %if.end10.if.end19_crit_edge
    i32 1, label %if.end10.sw.bb3.i_crit_edge
    i32 2, label %if.end10.sw.bb3.i_crit_edge393
    i32 4, label %if.end10.sw.bb3.i_crit_edge394
  ]

if.end10.sw.bb3.i_crit_edge394:                   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb3.i

if.end10.sw.bb3.i_crit_edge393:                   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb3.i

if.end10.sw.bb3.i_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb3.i

if.end10.if.end19_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

sw.bb3.i:                                         ; preds = %if.end10.sw.bb3.i_crit_edge, %if.end10.sw.bb3.i_crit_edge393, %if.end10.sw.bb3.i_crit_edge394
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %tobool.not.i = icmp sgt i32 %3, -1
  %..i = select i1 %tobool.not.i, i32 2, i32 1
  br label %if.end19

do.end16:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %call18 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #9
  br label %cleanup277

if.end19:                                         ; preds = %sw.bb3.i, %if.end10.if.end19_crit_edge
  %major_revision.0.ph = phi i32 [ %and.i, %sw.bb3.i ], [ 1, %if.end10.if.end19_crit_edge ]
  %hw_type.0.i.ph = phi i32 [ %..i, %sw.bb3.i ], [ %and.i, %if.end10.if.end19_crit_edge ]
  %hw_type = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 8
  %6 = ptrtoint ptr %hw_type to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %hw_type.0.i.ph, ptr %hw_type, align 4
  %hw_refclk = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 10
  %7 = ptrtoint ptr %hw_refclk to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %hw_refclk, align 4
  %conv = trunc i32 %8 to i16
  %call20 = call i32 @cw1200_dpll_from_clk(i16 noundef zeroext %conv) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i344) #6
  %9 = call i32 @llvm.bswap.i32(i32 %call20) #6
  %10 = ptrtoint ptr %tmp.i344 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %tmp.i344, align 4
  %call.i345 = call i32 @cw1200_reg_write(ptr noundef %priv, i16 noundef zeroext 6, ptr noundef nonnull %tmp.i344, i32 noundef 4) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i344) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i345)
  %cmp22 = icmp slt i32 %call.i345, 0
  br i1 %cmp22, label %do.end27, label %if.end30

do.end27:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  %call29 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #9
  br label %cleanup277

if.end30:                                         ; preds = %if.end19
  call void @msleep(i32 noundef 20) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i346) #6
  %11 = ptrtoint ptr %tmp.i346 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %tmp.i346, align 4, !annotation !174
  %call.i347 = call i32 @cw1200_reg_read(ptr noundef %priv, i16 noundef zeroext 6, ptr noundef nonnull %tmp.i346, i32 noundef 4) #6
  %12 = ptrtoint ptr %tmp.i346 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tmp.i346, align 4
  %14 = call i32 @llvm.bswap.i32(i32 %13) #6
  %15 = ptrtoint ptr %val32 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %val32, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i346) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i347)
  %cmp32 = icmp slt i32 %call.i347, 0
  br i1 %cmp32, label %do.end37, label %if.end40

do.end37:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  %call39 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #9
  br label %cleanup277

if.end40:                                         ; preds = %if.end30
  %16 = ptrtoint ptr %hw_refclk to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %hw_refclk, align 4
  %conv42 = trunc i32 %17 to i16
  %call43 = call i32 @cw1200_dpll_from_clk(i16 noundef zeroext %conv42) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %call43)
  %cmp44.not = icmp eq i32 %14, %call43
  br i1 %cmp44.not, label %if.end55, label %do.end49

do.end49:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %hw_refclk to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %hw_refclk, align 4
  %conv52 = trunc i32 %19 to i16
  %call53 = call i32 @cw1200_dpll_from_clk(i16 noundef zeroext %conv52) #6
  %call54 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %call53, i32 noundef %14) #9
  br label %cleanup277

if.end55:                                         ; preds = %if.end40
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i348) #6
  %20 = ptrtoint ptr %tmp.i348 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %tmp.i348, align 4, !annotation !174
  %call.i349 = call i32 @cw1200_reg_read(ptr noundef %priv, i16 noundef zeroext 1, ptr noundef nonnull %tmp.i348, i32 noundef 4) #6
  %21 = ptrtoint ptr %tmp.i348 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tmp.i348, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i348) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i349)
  %cmp57 = icmp slt i32 %call.i349, 0
  br i1 %cmp57, label %do.end62, label %if.end65

do.end62:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #8
  %call64 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #9
  br label %cleanup277

if.end65:                                         ; preds = %if.end55
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i350) #6
  %23 = and i32 %22, -1114112
  %24 = or i32 %23, 1048576
  %25 = ptrtoint ptr %tmp.i350 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %tmp.i350, align 4
  %call.i352 = call i32 @cw1200_reg_write(ptr noundef %priv, i16 noundef zeroext 1, ptr noundef nonnull %tmp.i350, i32 noundef 4) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i350) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i352)
  %cmp69 = icmp slt i32 %call.i352, 0
  br i1 %cmp69, label %do.end74, label %if.end65.for.body_crit_edge

if.end65.for.body_crit_edge:                      ; preds = %if.end65
  br label %for.body

do.end74:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  %call76 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #9
  br label %cleanup277

for.body:                                         ; preds = %if.end92.for.body_crit_edge, %if.end65.for.body_crit_edge
  %i.0376 = phi i32 [ %add93, %if.end92.for.body_crit_edge ], [ 0, %if.end65.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i353) #6
  %26 = ptrtoint ptr %tmp.i353 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %tmp.i353, align 4, !annotation !174
  %call.i354 = call i32 @cw1200_reg_read(ptr noundef %priv, i16 noundef zeroext 1, ptr noundef nonnull %tmp.i353, i32 noundef 4) #6
  %27 = ptrtoint ptr %tmp.i353 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tmp.i353, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i353) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i354)
  %cmp81 = icmp slt i32 %call.i354, 0
  br i1 %cmp81, label %do.end86, label %if.end89

do.end86:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %call88 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #9
  br label %cleanup277

if.end89:                                         ; preds = %for.body
  %29 = and i32 %28, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not = icmp eq i32 %29, 0
  br i1 %tobool.not, label %if.end92, label %if.end104

if.end92:                                         ; preds = %if.end89
  call void @msleep(i32 noundef %i.0376) #6
  %div = sdiv i32 %i.0376, 2
  %add = add nsw i32 %i.0376, 1
  %add93 = add i32 %add, %div
  %cmp78 = icmp slt i32 %add93, 300
  br i1 %cmp78, label %if.end92.for.body_crit_edge, label %do.end101

if.end92.for.body_crit_edge:                      ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

do.end101:                                        ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #8
  %call103 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #9
  br label %cleanup277

if.end104:                                        ; preds = %if.end89
  %30 = zext i32 %major_revision.0.ph to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.116)
  switch i32 %major_revision.0.ph, label %do.end187 [
    i32 1, label %sw.bb
    i32 2, label %sw.bb126
    i32 4, label %do.end180
  ]

sw.bb:                                            ; preds = %if.end104
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i356) #6
  %31 = ptrtoint ptr %tmp.i356 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -1, ptr %tmp.i356, align 4, !annotation !174
  %call.i.i = call i32 @cw1200_indirect_read(ptr noundef %priv, i32 noundef -950384, ptr noundef nonnull %tmp.i356, i32 noundef 4, i32 noundef 2048, i16 noundef zeroext 3) #6
  %32 = ptrtoint ptr %tmp.i356 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %tmp.i356, align 4
  %34 = call i32 @llvm.bswap.i32(i32 %33) #6
  %35 = ptrtoint ptr %val32 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %val32, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i356) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool106.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool106.not, label %if.end113, label %do.end110

do.end110:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %call112 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31) #9
  br label %cleanup277

if.end113:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 808988208, i32 %33)
  %cond282 = icmp eq i32 %33, 808988208
  %.str.34..str.37 = select i1 %cond282, ptr @.str.34, ptr @.str.37
  %. = select i1 %cond282, i32 11, i32 10
  %call124 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.34..str.37) #9
  %36 = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 9
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %., ptr %36, align 4
  %ba_rx_tid_mask = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 55
  %38 = ptrtoint ptr %ba_rx_tid_mask to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %ba_rx_tid_mask, align 4
  %ba_tx_tid_mask = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 56
  %39 = ptrtoint ptr %ba_tx_tid_mask to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %ba_tx_tid_mask, align 1
  br label %sw.epilog190

sw.bb126:                                         ; preds = %if.end104
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i357) #6
  %40 = ptrtoint ptr %tmp.i357 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 -1, ptr %tmp.i357, align 4, !annotation !174
  %call.i.i358 = call i32 @cw1200_indirect_read(ptr noundef %priv, i32 noundef -917616, ptr noundef nonnull %tmp.i357, i32 noundef 4, i32 noundef 2048, i16 noundef zeroext 3) #6
  %41 = ptrtoint ptr %tmp.i357 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %tmp.i357, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i357) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i358)
  %tobool128.not = icmp eq i32 %call.i.i358, 0
  br i1 %tobool128.not, label %if.end135, label %do.end132

do.end132:                                        ; preds = %sw.bb126
  call void @__sanitizer_cov_trace_pc() #8
  %call134 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40) #9
  br label %cleanup277

if.end135:                                        ; preds = %sw.bb126
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i359) #6
  %43 = ptrtoint ptr %tmp.i359 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 -1, ptr %tmp.i359, align 4, !annotation !174
  %call.i.i360 = call i32 @cw1200_indirect_read(ptr noundef %priv, i32 noundef -917612, ptr noundef nonnull %tmp.i359, i32 noundef 4, i32 noundef 2048, i16 noundef zeroext 3) #6
  %44 = ptrtoint ptr %tmp.i359 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %tmp.i359, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i359) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i360)
  %tobool137.not = icmp eq i32 %call.i.i360, 0
  br i1 %tobool137.not, label %if.end144, label %do.end141

do.end141:                                        ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #8
  %call143 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43) #9
  br label %cleanup277

if.end144:                                        ; preds = %if.end135
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i361) #6
  %46 = ptrtoint ptr %tmp.i361 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 -1, ptr %tmp.i361, align 4, !annotation !174
  %call.i.i362 = call i32 @cw1200_indirect_read(ptr noundef %priv, i32 noundef -917608, ptr noundef nonnull %tmp.i361, i32 noundef 4, i32 noundef 2048, i16 noundef zeroext 3) #6
  %47 = ptrtoint ptr %tmp.i361 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %tmp.i361, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i361) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i362)
  %tobool146.not = icmp eq i32 %call.i.i362, 0
  br i1 %tobool146.not, label %if.end153, label %do.end150

do.end150:                                        ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #8
  %call152 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46) #9
  br label %cleanup277

if.end153:                                        ; preds = %if.end144
  call void @__sanitizer_cov_trace_const_cmp4(i32 842083888, i32 %42)
  %cmp154 = icmp eq i32 %42, 842083888
  call void @__sanitizer_cov_trace_const_cmp4(i32 808333362, i32 %45)
  %cmp156 = icmp eq i32 %45, 808333362
  %or.cond = select i1 %cmp154, i1 %cmp156, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 892534784, i32 %48)
  %cmp159 = icmp eq i32 %48, 892534784
  %or.cond373 = select i1 %or.cond, i1 %cmp159, i1 false
  br i1 %or.cond373, label %do.end164, label %do.end170

do.end164:                                        ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #8
  %call166 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49) #9
  %hw_revision167 = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 9
  %49 = ptrtoint ptr %hw_revision167 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 22, ptr %hw_revision167, align 4
  br label %sw.epilog190

do.end170:                                        ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #8
  %call172 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52) #9
  %hw_revision173 = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 9
  %50 = ptrtoint ptr %hw_revision173 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 20, ptr %hw_revision173, align 4
  br label %sw.epilog190

do.end180:                                        ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #8
  %call182 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55) #9
  %hw_revision183 = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 9
  %51 = ptrtoint ptr %hw_revision183 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 40, ptr %hw_revision183, align 4
  br label %sw.epilog190

do.end187:                                        ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #8
  %call189 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, i32 noundef %major_revision.0.ph) #9
  br label %cleanup277

sw.epilog190:                                     ; preds = %do.end180, %do.end170, %do.end164, %if.end113
  %call191 = call fastcc i32 @config_reg_read(ptr noundef %priv, ptr noundef nonnull %val32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call191)
  %cmp192 = icmp slt i32 %call191, 0
  br i1 %cmp192, label %do.end197, label %if.end200

do.end197:                                        ; preds = %sw.epilog190
  call void @__sanitizer_cov_trace_pc() #8
  %call199 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #9
  br label %cleanup277

if.end200:                                        ; preds = %sw.epilog190
  %52 = ptrtoint ptr %val32 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %val32, align 4
  %and201 = and i32 %53, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and201)
  %tobool202.not = icmp eq i32 %and201, 0
  br i1 %tobool202.not, label %do.end206, label %if.end209

do.end206:                                        ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #8
  %call208 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63) #9
  br label %cleanup277

if.end209:                                        ; preds = %if.end200
  %54 = ptrtoint ptr %hw_type to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %hw_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %55)
  %cond = icmp eq i32 %55, 2
  br i1 %cond, label %sw.bb211, label %do.end226

sw.bb211:                                         ; preds = %if.end209
  %hw_revision212 = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 9
  %56 = ptrtoint ptr %hw_revision212 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %hw_revision212, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %57)
  %cmp213 = icmp eq i32 %57, 40
  br i1 %cmp213, label %do.end218, label %if.end221

do.end218:                                        ; preds = %sw.bb211
  call void @__sanitizer_cov_trace_pc() #8
  %call220 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66) #9
  br label %cleanup277

if.end221:                                        ; preds = %sw.bb211
  %call222 = call fastcc i32 @cw1200_load_firmware_cw1200(ptr noundef %priv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call222)
  %cmp231 = icmp slt i32 %call222, 0
  br i1 %cmp231, label %do.end236, label %if.end239

do.end226:                                        ; preds = %if.end209
  call void @__sanitizer_cov_trace_pc() #8
  %call229 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, i32 noundef %55) #9
  br label %cleanup277

do.end236:                                        ; preds = %if.end221
  call void @__sanitizer_cov_trace_pc() #8
  %call238 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72) #9
  br label %cleanup277

if.end239:                                        ; preds = %if.end221
  %hwbus_ops = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 6
  %58 = ptrtoint ptr %hwbus_ops to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %hwbus_ops, align 4
  %lock = getelementptr inbounds %struct.hwbus_ops, ptr %59, i32 0, i32 2
  %60 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %lock, align 4
  %hwbus_priv = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 7
  %62 = ptrtoint ptr %hwbus_priv to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %hwbus_priv, align 4
  call void %61(ptr noundef %63) #6
  %call240 = call i32 @__cw1200_irq_enable(ptr noundef %priv, i32 noundef 1) #6
  %64 = ptrtoint ptr %hwbus_ops to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %hwbus_ops, align 4
  %unlock = getelementptr inbounds %struct.hwbus_ops, ptr %65, i32 0, i32 3
  %66 = ptrtoint ptr %unlock to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %unlock, align 4
  %68 = ptrtoint ptr %hwbus_priv to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %hwbus_priv, align 4
  call void %67(ptr noundef %69) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call240)
  %cmp243 = icmp slt i32 %call240, 0
  br i1 %cmp243, label %if.end239.unsubscribe_crit_edge, label %if.end246

if.end239.unsubscribe_crit_edge:                  ; preds = %if.end239
  call void @__sanitizer_cov_trace_pc() #8
  br label %unsubscribe

if.end246:                                        ; preds = %if.end239
  %call247 = call fastcc i32 @config_reg_read(ptr noundef %priv, ptr noundef nonnull %val32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call247)
  %cmp248 = icmp slt i32 %call247, 0
  br i1 %cmp248, label %if.end246.unsubscribe.sink.split_crit_edge, label %if.end256

if.end246.unsubscribe.sink.split_crit_edge:       ; preds = %if.end246
  call void @__sanitizer_cov_trace_pc() #8
  br label %unsubscribe.sink.split

if.end256:                                        ; preds = %if.end246
  %70 = ptrtoint ptr %val32 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %val32, align 4
  %and257 = and i32 %71, -1025
  %call258 = call fastcc i32 @config_reg_write(ptr noundef %priv, i32 noundef %and257)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call258)
  %cmp259 = icmp slt i32 %call258, 0
  br i1 %cmp259, label %if.end256.unsubscribe.sink.split_crit_edge, label %while.body.preheader

if.end256.unsubscribe.sink.split_crit_edge:       ; preds = %if.end256
  call void @__sanitizer_cov_trace_pc() #8
  br label %unsubscribe.sink.split

while.body.preheader:                             ; preds = %if.end256
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %72 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %72(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %73 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %73(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %74 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %74(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %75 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %75(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %76 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %76(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %77 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %77(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %78 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %78(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %79 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %79(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %80 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %80(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %81 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %81(i32 noundef 214748000) #6
  %call269 = call fastcc i32 @config_reg_read(ptr noundef %priv, ptr noundef nonnull %val32)
  br label %cleanup277

unsubscribe.sink.split:                           ; preds = %if.end256.unsubscribe.sink.split_crit_edge, %if.end246.unsubscribe.sink.split_crit_edge
  %.str.77.sink = phi ptr [ @.str, %if.end246.unsubscribe.sink.split_crit_edge ], [ @.str.77, %if.end256.unsubscribe.sink.split_crit_edge ]
  %call266 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.77.sink) #9
  br label %unsubscribe

unsubscribe:                                      ; preds = %unsubscribe.sink.split, %if.end239.unsubscribe_crit_edge
  %82 = ptrtoint ptr %hwbus_ops to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %hwbus_ops, align 4
  %lock271 = getelementptr inbounds %struct.hwbus_ops, ptr %83, i32 0, i32 2
  %84 = ptrtoint ptr %lock271 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %lock271, align 4
  %86 = ptrtoint ptr %hwbus_priv to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %hwbus_priv, align 4
  call void %85(ptr noundef %87) #6
  %call273 = call i32 @__cw1200_irq_enable(ptr noundef %priv, i32 noundef 0) #6
  %88 = ptrtoint ptr %hwbus_ops to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %hwbus_ops, align 4
  %unlock275 = getelementptr inbounds %struct.hwbus_ops, ptr %89, i32 0, i32 3
  %90 = ptrtoint ptr %unlock275 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %unlock275, align 4
  %92 = ptrtoint ptr %hwbus_priv to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %hwbus_priv, align 4
  call void %91(ptr noundef %93) #6
  br label %cleanup277

cleanup277:                                       ; preds = %unsubscribe, %while.body.preheader, %do.end236, %do.end226, %do.end218, %do.end206, %do.end197, %do.end187, %do.end150, %do.end141, %do.end132, %do.end110, %do.end101, %do.end86, %do.end74, %do.end62, %do.end49, %do.end37, %do.end27, %do.end16, %do.end7, %do.end
  %retval.0 = phi i32 [ %call273, %unsubscribe ], [ %call.i, %do.end ], [ -5, %do.end7 ], [ -1, %do.end16 ], [ %call.i345, %do.end27 ], [ %call.i347, %do.end37 ], [ -5, %do.end49 ], [ %call.i349, %do.end62 ], [ %call.i352, %do.end74 ], [ %call.i354, %do.end86 ], [ -110, %do.end101 ], [ -524, %do.end187 ], [ %call191, %do.end197 ], [ -524, %do.end218 ], [ %call222, %do.end236 ], [ %call258, %while.body.preheader ], [ -524, %do.end226 ], [ -22, %do.end206 ], [ %call.i.i, %do.end110 ], [ %call.i.i362, %do.end150 ], [ %call.i.i360, %do.end141 ], [ %call.i.i358, %do.end132 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val32) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cw1200_dpll_from_clk(i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @config_reg_read(ptr noundef %priv, ptr nocapture noundef writeonly %val) unnamed_addr #0 align 64 {
entry:
  %tmp.i8 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_type = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 8
  %0 = ptrtoint ptr %hw_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hw_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cond = icmp eq i32 %1, 0
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #6
  %2 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %tmp.i, align 4, !annotation !174
  %call.i = call i32 @cw1200_reg_read(ptr noundef %priv, i16 noundef zeroext 0, ptr noundef nonnull %tmp.i, i32 noundef 4) #6
  %3 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tmp.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %sw.bb.return_crit_edge, label %if.end

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %5 = and i32 %4, -65536
  %6 = call i32 @llvm.bswap.i32(i32 %5)
  %7 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %val, align 4
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i8) #6
  %8 = ptrtoint ptr %tmp.i8 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %tmp.i8, align 4, !annotation !174
  %call.i9 = call i32 @cw1200_reg_read(ptr noundef %priv, i16 noundef zeroext 0, ptr noundef nonnull %tmp.i8, i32 noundef 4) #6
  %9 = ptrtoint ptr %tmp.i8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tmp.i8, align 4
  %11 = call i32 @llvm.bswap.i32(i32 %10) #6
  %12 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %val, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i8) #6
  br label %return

return:                                           ; preds = %sw.default, %if.end, %sw.bb.return_crit_edge
  %retval.1 = phi i32 [ 0, %sw.default ], [ 0, %if.end ], [ %call.i, %sw.bb.return_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cw1200_load_firmware_cw1200(ptr noundef %priv) unnamed_addr #0 align 64 {
entry:
  %tmp.i452 = alloca i32, align 4
  %tmp.i450 = alloca i32, align 4
  %tmp.i448 = alloca i32, align 4
  %tmp.i446 = alloca i32, align 4
  %tmp.i444 = alloca i32, align 4
  %tmp.i443 = alloca i32, align 4
  %tmp.i441 = alloca i32, align 4
  %tmp.i439 = alloca i32, align 4
  %tmp.i437 = alloca i32, align 4
  %tmp.i435 = alloca i32, align 4
  %tmp.i433 = alloca i32, align 4
  %tmp.i431 = alloca i32, align 4
  %tmp.i429 = alloca i32, align 4
  %tmp.i427 = alloca i32, align 4
  %tmp.i425 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  %firmware = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %firmware) #6
  %0 = ptrtoint ptr %firmware to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %firmware, align 4
  %hw_revision = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 9
  %1 = ptrtoint ptr %hw_revision to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %hw_revision, align 4
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.117)
  switch i32 %2, label %do.end [
    i32 10, label %sw.bb
    i32 11, label %sw.bb2
    i32 20, label %sw.bb8
    i32 22, label %sw.bb14
    i32 40, label %sw.bb20
  ]

sw.bb:                                            ; preds = %entry
  %sdd_path = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 14
  %4 = ptrtoint ptr %sdd_path to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sdd_path, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.then, label %sw.bb.do.body27_crit_edge

sw.bb.do.body27_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body27

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %sdd_path to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @.str.80, ptr %sdd_path, align 4
  br label %do.body27

sw.bb2:                                           ; preds = %entry
  %sdd_path3 = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 14
  %7 = ptrtoint ptr %sdd_path3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sdd_path3, align 4
  %tobool4.not = icmp eq ptr %8, null
  br i1 %tobool4.not, label %if.then5, label %sw.bb2.do.body27_crit_edge

sw.bb2.do.body27_crit_edge:                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body27

if.then5:                                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %sdd_path3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @.str.82, ptr %sdd_path3, align 4
  br label %do.body27

sw.bb8:                                           ; preds = %entry
  %sdd_path9 = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 14
  %10 = ptrtoint ptr %sdd_path9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sdd_path9, align 4
  %tobool10.not = icmp eq ptr %11, null
  br i1 %tobool10.not, label %if.then11, label %sw.bb8.do.body27_crit_edge

sw.bb8.do.body27_crit_edge:                       ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body27

if.then11:                                        ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %sdd_path9 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @.str.84, ptr %sdd_path9, align 4
  br label %do.body27

sw.bb14:                                          ; preds = %entry
  %sdd_path15 = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 14
  %13 = ptrtoint ptr %sdd_path15 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sdd_path15, align 4
  %tobool16.not = icmp eq ptr %14, null
  br i1 %tobool16.not, label %if.then17, label %sw.bb14.do.body27_crit_edge

sw.bb14.do.body27_crit_edge:                      ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body27

if.then17:                                        ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %sdd_path15 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @.str.86, ptr %sdd_path15, align 4
  br label %do.body27

sw.bb20:                                          ; preds = %entry
  %sdd_path21 = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 14
  %16 = ptrtoint ptr %sdd_path21 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sdd_path21, align 4
  %tobool22.not = icmp eq ptr %17, null
  br i1 %tobool22.not, label %if.then23, label %sw.bb20.do.body27_crit_edge

sw.bb20.do.body27_crit_edge:                      ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body27

if.then23:                                        ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %sdd_path21 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @.str.88, ptr %sdd_path21, align 4
  br label %do.body27

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89, i32 noundef %2) #9
  br label %cleanup315

do.body27:                                        ; preds = %if.then23, %sw.bb20.do.body27_crit_edge, %if.then17, %sw.bb14.do.body27_crit_edge, %if.then11, %sw.bb8.do.body27_crit_edge, %if.then5, %sw.bb2.do.body27_crit_edge, %if.then, %sw.bb.do.body27_crit_edge
  %fw_path.0 = phi ptr [ @.str.87, %sw.bb20.do.body27_crit_edge ], [ @.str.87, %if.then23 ], [ @.str.85, %sw.bb14.do.body27_crit_edge ], [ @.str.85, %if.then17 ], [ @.str.83, %sw.bb8.do.body27_crit_edge ], [ @.str.83, %if.then11 ], [ @.str.81, %sw.bb2.do.body27_crit_edge ], [ @.str.81, %if.then5 ], [ @.str.79, %sw.bb.do.body27_crit_edge ], [ @.str.79, %if.then ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #6
  %19 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 558065031, ptr %tmp.i, align 4
  %call.i = call i32 @cw1200_apb_write(ptr noundef %priv, i32 noundef 151060352, ptr noundef nonnull %tmp.i, i32 noundef 4) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.body27.cleanup315_crit_edge, label %do.body33

do.body27.cleanup315_crit_edge:                   ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup315

do.body33:                                        ; preds = %do.body27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i425) #6
  %20 = ptrtoint ptr %tmp.i425 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %tmp.i425, align 4
  %call.i426 = call i32 @cw1200_apb_write(ptr noundef %priv, i32 noundef 151060360, ptr noundef nonnull %tmp.i425, i32 noundef 4) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i425) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i426)
  %cmp35 = icmp slt i32 %call.i426, 0
  br i1 %cmp35, label %do.body33.cleanup315_crit_edge, label %do.body40

do.body33.cleanup315_crit_edge:                   ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup315

do.body40:                                        ; preds = %do.body33
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i427) #6
  %21 = ptrtoint ptr %tmp.i427 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %tmp.i427, align 4
  %call.i428 = call i32 @cw1200_apb_write(ptr noundef %priv, i32 noundef 151060368, ptr noundef nonnull %tmp.i427, i32 noundef 4) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i427) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i428)
  %cmp42 = icmp slt i32 %call.i428, 0
  br i1 %cmp42, label %do.body40.cleanup315_crit_edge, label %do.body47

do.body40.cleanup315_crit_edge:                   ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup315

do.body47:                                        ; preds = %do.body40
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i429) #6
  %22 = ptrtoint ptr %tmp.i429 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %tmp.i429, align 4
  %call.i430 = call i32 @cw1200_apb_write(ptr noundef %priv, i32 noundef 151060372, ptr noundef nonnull %tmp.i429, i32 noundef 4) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i429) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i430)
  %cmp49 = icmp slt i32 %call.i430, 0
  br i1 %cmp49, label %do.body47.cleanup315_crit_edge, label %do.body54

do.body47.cleanup315_crit_edge:                   ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup315

do.body54:                                        ; preds = %do.body47
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i431) #6
  %23 = ptrtoint ptr %tmp.i431 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %tmp.i431, align 4
  %call.i432 = call i32 @cw1200_apb_write(ptr noundef %priv, i32 noundef 151060356, ptr noundef nonnull %tmp.i431, i32 noundef 4) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i431) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i432)
  %cmp56 = icmp slt i32 %call.i432, 0
  br i1 %cmp56, label %do.body54.cleanup315_crit_edge, label %do.body61

do.body54.cleanup315_crit_edge:                   ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup315

do.body61:                                        ; preds = %do.body54
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i433) #6
  %24 = ptrtoint ptr %tmp.i433 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 62207, ptr %tmp.i433, align 4
  %call.i434 = call i32 @cw1200_reg_write(ptr noundef %priv, i16 noundef zeroext 4, ptr noundef nonnull %tmp.i433, i32 noundef 4) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i433) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i434)
  %cmp63 = icmp slt i32 %call.i434, 0
  br i1 %cmp63, label %do.body61.cleanup315_crit_edge, label %do.body68

do.body61.cleanup315_crit_edge:                   ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup315

do.body68:                                        ; preds = %do.body61
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i435) #6
  %25 = ptrtoint ptr %tmp.i435 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -16777238, ptr %tmp.i435, align 4
  %call.i436 = call i32 @cw1200_reg_write(ptr noundef %priv, i16 noundef zeroext 3, ptr noundef nonnull %tmp.i435, i32 noundef 4) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i435) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i436)
  %cmp70 = icmp slt i32 %call.i436, 0
  br i1 %cmp70, label %do.body68.cleanup315_crit_edge, label %do.body75

do.body68.cleanup315_crit_edge:                   ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup315

do.body75:                                        ; preds = %do.body68
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i437) #6
  %26 = ptrtoint ptr %tmp.i437 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %tmp.i437, align 4, !annotation !174
  %call.i438 = call i32 @cw1200_reg_read(ptr noundef %priv, i16 noundef zeroext 0, ptr noundef nonnull %tmp.i437, i32 noundef 4) #6
  %27 = ptrtoint ptr %tmp.i437 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tmp.i437, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i437) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i438)
  %cmp77 = icmp slt i32 %call.i438, 0
  br i1 %cmp77, label %do.body75.cleanup315_crit_edge, label %do.end81

do.body75.cleanup315_crit_edge:                   ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup315

do.end81:                                         ; preds = %do.body75
  %29 = and i32 %28, -4194305
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i439) #6
  %30 = ptrtoint ptr %tmp.i439 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %tmp.i439, align 4
  %call.i440 = call i32 @cw1200_reg_write(ptr noundef %priv, i16 noundef zeroext 0, ptr noundef nonnull %tmp.i439, i32 noundef 4) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i439) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i440)
  %cmp84 = icmp slt i32 %call.i440, 0
  br i1 %cmp84, label %do.end81.cleanup315_crit_edge, label %do.end88

do.end81.cleanup315_crit_edge:                    ; preds = %do.end81
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup315

do.end88:                                         ; preds = %do.end81
  %31 = and i32 %28, -5242881
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i441) #6
  %32 = ptrtoint ptr %tmp.i441 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %tmp.i441, align 4
  %call.i442 = call i32 @cw1200_reg_write(ptr noundef %priv, i16 noundef zeroext 0, ptr noundef nonnull %tmp.i441, i32 noundef 4) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i441) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i442)
  %cmp92 = icmp slt i32 %call.i442, 0
  br i1 %cmp92, label %do.end88.cleanup315_crit_edge, label %do.end96

do.end88.cleanup315_crit_edge:                    ; preds = %do.end88
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup315

do.end96:                                         ; preds = %do.end88
  %pdev = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 2
  %33 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pdev, align 4
  %call97 = call i32 @request_firmware(ptr noundef nonnull %firmware, ptr noundef nonnull %fw_path.0, ptr noundef %34) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %tobool98.not = icmp eq i32 %call97, 0
  br i1 %tobool98.not, label %if.end105, label %do.end102

do.end102:                                        ; preds = %do.end96
  call void @__sanitizer_cov_trace_pc() #8
  %call104 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92, ptr noundef nonnull %fw_path.0) #9
  br label %cleanup315

if.end105:                                        ; preds = %do.end96
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 3, i32 10) to i32))
  %35 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 3, i32 10), align 4
  %call7.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %35, i32 noundef 3265, i32 noundef 1024) #10
  %tobool107.not = icmp eq ptr %call7.i, null
  br i1 %tobool107.not, label %do.end111, label %if.end105.do.body116_crit_edge

if.end105.do.body116_crit_edge:                   ; preds = %if.end105
  br label %do.body116

do.end111:                                        ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #8
  %call113 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95) #9
  br label %firmware_release

do.body116:                                       ; preds = %for.inc.do.body116_crit_edge, %if.end105.do.body116_crit_edge
  %i.0484 = phi i32 [ %add139, %for.inc.do.body116_crit_edge ], [ 0, %if.end105.do.body116_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i443) #6
  %36 = ptrtoint ptr %tmp.i443 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 -1, ptr %tmp.i443, align 4, !annotation !174
  %call.i.i = call i32 @cw1200_indirect_read(ptr noundef %priv, i32 noundef 151060352, ptr noundef nonnull %tmp.i443, i32 noundef 4, i32 noundef 8192, i16 noundef zeroext 5) #6
  %37 = ptrtoint ptr %tmp.i443 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %tmp.i443, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i443) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp118 = icmp slt i32 %call.i.i, 0
  br i1 %cmp118, label %do.body116.free_buffer_crit_edge, label %do.end122

do.body116.free_buffer_crit_edge:                 ; preds = %do.body116
  call void @__sanitizer_cov_trace_pc() #8
  br label %free_buffer

do.end122:                                        ; preds = %do.body116
  call void @__sanitizer_cov_trace_const_cmp4(i32 2018915346, i32 %38)
  %cmp123 = icmp eq i32 %38, 2018915346
  br i1 %cmp123, label %if.end147, label %while.cond.preheader

while.cond.preheader:                             ; preds = %do.end122
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0484)
  %tobool137.not482 = icmp eq i32 %i.0484, 0
  br i1 %tobool137.not482, label %while.cond.preheader.for.inc_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.for.inc_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %__ms.0483 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %i.0484, %while.cond.preheader.while.body_crit_edge ]
  %dec = add i32 %__ms.0483, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %39(i32 noundef 214748000) #6
  %tobool137.not = icmp eq i32 %dec, 0
  br i1 %tobool137.not, label %while.body.for.inc_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.body.for.inc_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

for.inc:                                          ; preds = %while.body.for.inc_crit_edge, %while.cond.preheader.for.inc_crit_edge
  %div422 = lshr i32 %i.0484, 1
  %add = add i32 %i.0484, 1
  %add139 = add i32 %add, %div422
  %cmp115 = icmp ult i32 %add139, 100
  br i1 %cmp115, label %for.inc.do.body116_crit_edge, label %do.end144

for.inc.do.body116_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body116

do.end144:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  %call146 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98) #9
  br label %free_buffer

if.end147:                                        ; preds = %do.end122
  %40 = ptrtoint ptr %firmware to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %firmware, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %41, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i444) #6
  %44 = call i32 @llvm.bswap.i32(i32 %43) #6
  %45 = ptrtoint ptr %tmp.i444 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %tmp.i444, align 4
  %call.i445 = call i32 @cw1200_apb_write(ptr noundef %priv, i32 noundef 151060352, ptr noundef nonnull %tmp.i444, i32 noundef 4) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i444) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i445)
  %cmp153 = icmp slt i32 %call.i445, 0
  br i1 %cmp153, label %if.end147.free_buffer_crit_edge, label %for.body160.preheader

if.end147.free_buffer_crit_edge:                  ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #8
  br label %free_buffer

for.body160.preheader:                            ; preds = %if.end147
  %sub = add i32 %43, -1
  %div148420 = lshr i32 %sub, 10
  br label %for.body160

for.cond158:                                      ; preds = %if.end248
  %inc259 = add nuw nsw i32 %block.0493, 1
  %exitcond518 = icmp eq i32 %block.0493, %div148420
  br i1 %exitcond518, label %for.cond158.do.body264_crit_edge, label %for.cond158.for.body160_crit_edge

for.cond158.for.body160_crit_edge:                ; preds = %for.cond158
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body160

for.cond158.do.body264_crit_edge:                 ; preds = %for.cond158
  br label %do.body264

for.body160:                                      ; preds = %for.cond158.for.body160_crit_edge, %for.body160.preheader
  %block.0493 = phi i32 [ %inc259, %for.cond158.for.body160_crit_edge ], [ 0, %for.body160.preheader ]
  %put.0492 = phi i32 [ %add249, %for.cond158.for.body160_crit_edge ], [ 0, %for.body160.preheader ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i446) #6
  %46 = ptrtoint ptr %tmp.i446 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 -1, ptr %tmp.i446, align 4, !annotation !174
  %call.i.i447 = call i32 @cw1200_indirect_read(ptr noundef %priv, i32 noundef 151060372, ptr noundef nonnull %tmp.i446, i32 noundef 4, i32 noundef 8192, i16 noundef zeroext 5) #6
  %47 = ptrtoint ptr %tmp.i446 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %tmp.i446, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i446) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i447)
  %cmp163 = icmp slt i32 %call.i.i447, 0
  br i1 %cmp163, label %for.body160.free_buffer_crit_edge, label %do.end167

for.body160.free_buffer_crit_edge:                ; preds = %for.body160
  call void @__sanitizer_cov_trace_pc() #8
  br label %free_buffer

do.end167:                                        ; preds = %for.body160
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %48)
  %cmp168.not = icmp eq i32 %48, -1
  br i1 %cmp168.not, label %do.end167.do.body179_crit_edge, label %do.end172

do.end167.do.body179_crit_edge:                   ; preds = %do.end167
  br label %do.body179

do.end172:                                        ; preds = %do.end167
  call void @__sanitizer_cov_trace_pc() #8
  %49 = call i32 @llvm.bswap.i32(i32 %48) #6
  %call174 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101, i32 noundef %49) #9
  br label %free_buffer

do.body179:                                       ; preds = %for.inc213.do.body179_crit_edge, %do.end167.do.body179_crit_edge
  %i.1489 = phi i32 [ %inc, %for.inc213.do.body179_crit_edge ], [ 0, %do.end167.do.body179_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i448) #6
  %50 = ptrtoint ptr %tmp.i448 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 -1, ptr %tmp.i448, align 4, !annotation !174
  %call.i.i449 = call i32 @cw1200_indirect_read(ptr noundef %priv, i32 noundef 151060368, ptr noundef nonnull %tmp.i448, i32 noundef 4, i32 noundef 8192, i16 noundef zeroext 5) #6
  %51 = ptrtoint ptr %tmp.i448 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %tmp.i448, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i448) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i449)
  %cmp181 = icmp slt i32 %call.i.i449, 0
  br i1 %cmp181, label %do.body179.free_buffer_crit_edge, label %do.end185

do.body179.free_buffer_crit_edge:                 ; preds = %do.body179
  call void @__sanitizer_cov_trace_pc() #8
  br label %free_buffer

do.end185:                                        ; preds = %do.body179
  %53 = call i32 @llvm.bswap.i32(i32 %52) #6
  %sub186 = sub i32 %put.0492, %53
  call void @__sanitizer_cov_trace_const_cmp4(i32 31745, i32 %sub186)
  %cmp187 = icmp ult i32 %sub186, 31745
  br i1 %cmp187, label %do.end185.if.end223_crit_edge, label %while.cond207.preheader

do.end185.if.end223_crit_edge:                    ; preds = %do.end185
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end223

while.cond207.preheader:                          ; preds = %do.end185
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.1489)
  %tobool209.not487 = icmp eq i32 %i.1489, 0
  br i1 %tobool209.not487, label %while.cond207.preheader.for.inc213_crit_edge, label %while.cond207.preheader.while.body210_crit_edge

while.cond207.preheader.while.body210_crit_edge:  ; preds = %while.cond207.preheader
  br label %while.body210

while.cond207.preheader.for.inc213_crit_edge:     ; preds = %while.cond207.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc213

while.body210:                                    ; preds = %while.body210.while.body210_crit_edge, %while.cond207.preheader.while.body210_crit_edge
  %__ms206.0488 = phi i32 [ %dec208, %while.body210.while.body210_crit_edge ], [ %i.1489, %while.cond207.preheader.while.body210_crit_edge ]
  %dec208 = add nsw i32 %__ms206.0488, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %54 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %54(i32 noundef 214748000) #6
  %tobool209.not = icmp eq i32 %dec208, 0
  br i1 %tobool209.not, label %while.body210.for.inc213_crit_edge, label %while.body210.while.body210_crit_edge

while.body210.while.body210_crit_edge:            ; preds = %while.body210
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body210

while.body210.for.inc213_crit_edge:               ; preds = %while.body210
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc213

for.inc213:                                       ; preds = %while.body210.for.inc213_crit_edge, %while.cond207.preheader.for.inc213_crit_edge
  %inc = add nuw nsw i32 %i.1489, 1
  %exitcond.not = icmp eq i32 %inc, 100
  br i1 %exitcond.not, label %for.end214, label %for.inc213.do.body179_crit_edge

for.inc213.do.body179_crit_edge:                  ; preds = %for.inc213
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body179

for.end214:                                       ; preds = %for.inc213
  call void @__sanitizer_cov_trace_const_cmp4(i32 31744, i32 %sub186)
  %cmp216 = icmp ugt i32 %sub186, 31744
  br i1 %cmp216, label %do.end220, label %for.end214.if.end223_crit_edge

for.end214.if.end223_crit_edge:                   ; preds = %for.end214
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end223

do.end220:                                        ; preds = %for.end214
  call void @__sanitizer_cov_trace_pc() #8
  %call222 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104) #9
  br label %free_buffer

if.end223:                                        ; preds = %for.end214.if.end223_crit_edge, %do.end185.if.end223_crit_edge
  %55 = ptrtoint ptr %firmware to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %firmware, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %56, align 4
  %sub225 = sub i32 %58, %put.0492
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %sub225)
  %cmp227 = icmp ult i32 %sub225, 1024
  %59 = call i32 @llvm.umin.i32(i32 %sub225, i32 1024)
  %data = getelementptr inbounds %struct.firmware, ptr %56, i32 0, i32 1
  %60 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %data, align 4
  %arrayidx = getelementptr i8, ptr %61, i32 %put.0492
  %62 = call ptr @memcpy(ptr %call7.i, ptr %arrayidx, i32 %59)
  br i1 %cmp227, label %if.then232, label %if.end223.if.end235_crit_edge

if.end223.if.end235_crit_edge:                    ; preds = %if.end223
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end235

if.then232:                                       ; preds = %if.end223
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx233 = getelementptr i8, ptr %call7.i, i32 %59
  %sub234 = sub nuw nsw i32 1024, %59
  %63 = call ptr @memset(ptr %arrayidx233, i32 0, i32 %sub234)
  br label %if.end235

if.end235:                                        ; preds = %if.then232, %if.end223.if.end235_crit_edge
  %and236 = and i32 %put.0492, 32767
  %add238 = add nuw nsw i32 %and236, 151011328
  %call239 = call i32 @cw1200_apb_write(ptr noundef %priv, i32 noundef %add238, ptr noundef nonnull %call7.i, i32 noundef 1024) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call239)
  %cmp240 = icmp slt i32 %call239, 0
  br i1 %cmp240, label %do.end244, label %if.end248

do.end244:                                        ; preds = %if.end235
  call void @__sanitizer_cov_trace_pc() #8
  %call247 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107, i32 noundef %and236) #9
  br label %free_buffer

if.end248:                                        ; preds = %if.end235
  %add249 = add i32 %59, %put.0492
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i450) #6
  %64 = call i32 @llvm.bswap.i32(i32 %add249) #6
  %65 = ptrtoint ptr %tmp.i450 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %tmp.i450, align 4
  %call.i451 = call i32 @cw1200_apb_write(ptr noundef %priv, i32 noundef 151060360, ptr noundef nonnull %tmp.i450, i32 noundef 4) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i450) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i451)
  %cmp252 = icmp slt i32 %call.i451, 0
  br i1 %cmp252, label %if.end248.free_buffer_crit_edge, label %for.cond158

if.end248.free_buffer_crit_edge:                  ; preds = %if.end248
  call void @__sanitizer_cov_trace_pc() #8
  br label %free_buffer

do.body264:                                       ; preds = %for.inc297.do.body264_crit_edge, %for.cond158.do.body264_crit_edge
  %i.2496 = phi i32 [ %add300, %for.inc297.do.body264_crit_edge ], [ 0, %for.cond158.do.body264_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i452) #6
  %66 = ptrtoint ptr %tmp.i452 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 -1, ptr %tmp.i452, align 4, !annotation !174
  %call.i.i453 = call i32 @cw1200_indirect_read(ptr noundef %priv, i32 noundef 151060372, ptr noundef nonnull %tmp.i452, i32 noundef 4, i32 noundef 8192, i16 noundef zeroext 5) #6
  %67 = ptrtoint ptr %tmp.i452 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %tmp.i452, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i452) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i453)
  %cmp266 = icmp slt i32 %call.i.i453, 0
  br i1 %cmp266, label %do.body264.free_buffer_crit_edge, label %do.end270

do.body264.free_buffer_crit_edge:                 ; preds = %do.body264
  call void @__sanitizer_cov_trace_pc() #8
  br label %free_buffer

do.end270:                                        ; preds = %do.body264
  %69 = zext i32 %68 to i64
  call void @__sanitizer_cov_trace_switch(i64 %69, ptr @__sancov_gen_cov_switch_values.118)
  switch i32 %68, label %do.end270.do.end306_crit_edge [
    i32 -1, label %while.cond291.preheader
    i32 0, label %do.end311
  ]

do.end270.do.end306_crit_edge:                    ; preds = %do.end270
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end306

while.cond291.preheader:                          ; preds = %do.end270
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.2496)
  %tobool293.not494 = icmp eq i32 %i.2496, 0
  br i1 %tobool293.not494, label %while.cond291.preheader.for.inc297_crit_edge, label %while.cond291.preheader.while.body294_crit_edge

while.cond291.preheader.while.body294_crit_edge:  ; preds = %while.cond291.preheader
  br label %while.body294

while.cond291.preheader.for.inc297_crit_edge:     ; preds = %while.cond291.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc297

while.body294:                                    ; preds = %while.body294.while.body294_crit_edge, %while.cond291.preheader.while.body294_crit_edge
  %__ms290.0495 = phi i32 [ %dec292, %while.body294.while.body294_crit_edge ], [ %i.2496, %while.cond291.preheader.while.body294_crit_edge ]
  %dec292 = add i32 %__ms290.0495, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %70 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %70(i32 noundef 214748000) #6
  %tobool293.not = icmp eq i32 %dec292, 0
  br i1 %tobool293.not, label %while.body294.for.inc297_crit_edge, label %while.body294.while.body294_crit_edge

while.body294.while.body294_crit_edge:            ; preds = %while.body294
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body294

while.body294.for.inc297_crit_edge:               ; preds = %while.body294
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc297

for.inc297:                                       ; preds = %while.body294.for.inc297_crit_edge, %while.cond291.preheader.for.inc297_crit_edge
  %div298421 = lshr i32 %i.2496, 1
  %add299 = add i32 %i.2496, 1
  %add300 = add i32 %add299, %div298421
  %cmp262 = icmp ult i32 %add300, 300
  br i1 %cmp262, label %for.inc297.do.body264_crit_edge, label %for.inc297.do.end306_crit_edge

for.inc297.do.end306_crit_edge:                   ; preds = %for.inc297
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end306

for.inc297.do.body264_crit_edge:                  ; preds = %for.inc297
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body264

do.end306:                                        ; preds = %for.inc297.do.end306_crit_edge, %do.end270.do.end306_crit_edge
  %.lcssa503522 = phi i32 [ %68, %do.end270.do.end306_crit_edge ], [ -1, %for.inc297.do.end306_crit_edge ]
  %71 = call i32 @llvm.bswap.i32(i32 %.lcssa503522) #6
  %call308 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.110, i32 noundef %71) #9
  br label %free_buffer

do.end311:                                        ; preds = %do.end270
  call void @__sanitizer_cov_trace_pc() #8
  %call313 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.113) #9
  br label %free_buffer

free_buffer:                                      ; preds = %do.end311, %do.end306, %do.body264.free_buffer_crit_edge, %if.end248.free_buffer_crit_edge, %do.end244, %do.end220, %do.body179.free_buffer_crit_edge, %do.end172, %for.body160.free_buffer_crit_edge, %if.end147.free_buffer_crit_edge, %do.end144, %do.body116.free_buffer_crit_edge
  %ret.1 = phi i32 [ -110, %do.end144 ], [ %call.i445, %if.end147.free_buffer_crit_edge ], [ -110, %do.end306 ], [ 0, %do.end311 ], [ %call239, %do.end244 ], [ -110, %do.end220 ], [ -5, %do.end172 ], [ %call.i.i453, %do.body264.free_buffer_crit_edge ], [ %call.i.i449, %do.body179.free_buffer_crit_edge ], [ %call.i451, %if.end248.free_buffer_crit_edge ], [ %call.i.i447, %for.body160.free_buffer_crit_edge ], [ %call.i.i, %do.body116.free_buffer_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i) #6
  br label %firmware_release

firmware_release:                                 ; preds = %free_buffer, %do.end111
  %ret.2 = phi i32 [ %ret.1, %free_buffer ], [ -12, %do.end111 ]
  %72 = ptrtoint ptr %firmware to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %firmware, align 4
  call void @release_firmware(ptr noundef %73) #6
  br label %cleanup315

cleanup315:                                       ; preds = %firmware_release, %do.end102, %do.end88.cleanup315_crit_edge, %do.end81.cleanup315_crit_edge, %do.body75.cleanup315_crit_edge, %do.body68.cleanup315_crit_edge, %do.body61.cleanup315_crit_edge, %do.body54.cleanup315_crit_edge, %do.body47.cleanup315_crit_edge, %do.body40.cleanup315_crit_edge, %do.body33.cleanup315_crit_edge, %do.body27.cleanup315_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call.i, %do.body27.cleanup315_crit_edge ], [ %call.i426, %do.body33.cleanup315_crit_edge ], [ %call.i428, %do.body40.cleanup315_crit_edge ], [ %call.i430, %do.body47.cleanup315_crit_edge ], [ %call.i432, %do.body54.cleanup315_crit_edge ], [ %call.i434, %do.body61.cleanup315_crit_edge ], [ %call.i436, %do.body68.cleanup315_crit_edge ], [ %call.i438, %do.body75.cleanup315_crit_edge ], [ %call.i440, %do.end81.cleanup315_crit_edge ], [ %call.i442, %do.end88.cleanup315_crit_edge ], [ %call97, %do.end102 ], [ %ret.2, %firmware_release ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %firmware) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cw1200_irq_enable(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @config_reg_write(ptr noundef %priv, i32 noundef %val) unnamed_addr #0 align 64 {
entry:
  %tmp.i6 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_type = getelementptr inbounds %struct.cw1200_common, ptr %priv, i32 0, i32 8
  %0 = ptrtoint ptr %hw_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hw_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cond = icmp eq i32 %1, 0
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #6
  %conv.i = and i32 %val, 65535
  %2 = tail call i32 @llvm.bswap.i32(i32 %conv.i) #6
  %3 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %tmp.i, align 4
  %call.i = call i32 @cw1200_reg_write(ptr noundef %priv, i16 noundef zeroext 0, ptr noundef nonnull %tmp.i, i32 noundef 4) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #6
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i6) #6
  %4 = tail call i32 @llvm.bswap.i32(i32 %val) #6
  %5 = ptrtoint ptr %tmp.i6 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %tmp.i6, align 4
  %call.i7 = call i32 @cw1200_reg_write(ptr noundef %priv, i16 noundef zeroext 0, ptr noundef nonnull %tmp.i6, i32 noundef 4) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i6) #6
  br label %return

return:                                           ; preds = %sw.default, %sw.bb
  %retval.0 = phi i32 [ %call.i, %sw.bb ], [ %call.i7, %sw.default ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cw1200_reg_read(ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cw1200_reg_write(ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cw1200_indirect_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cw1200_apb_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 83)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 83)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !73, !74, !76, !77, !78, !80, !81, !82, !84, !85, !87, !88, !89, !91, !92, !93, !95, !96, !97, !99, !100, !101, !103, !104, !106, !107, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !131, !132, !133, !135, !136, !137, !139, !140, !141, !143, !144, !145, !147, !148, !149, !151, !152, !153, !155, !156, !157, !159, !160, !161, !163, !164}
!llvm.module.flags = !{!165, !166, !167, !168, !169, !170, !171, !172}
!llvm.ident = !{!173}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/st/cw1200/fwio.c", i32 313, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @cw1200_load_firmware._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @cw1200_load_firmware._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/st/cw1200/fwio.c", i32 318, i32 3}
!8 = !{ptr @cw1200_load_firmware._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @cw1200_load_firmware._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/st/cw1200/fwio.c", i32 325, i32 3}
!12 = !{ptr @cw1200_load_firmware._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @cw1200_load_firmware._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/st/cw1200/fwio.c", i32 334, i32 3}
!16 = !{ptr @cw1200_load_firmware._entry.9, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @cw1200_load_firmware._entry_ptr.11, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.13, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/st/cw1200/fwio.c", i32 343, i32 3}
!20 = !{ptr @cw1200_load_firmware._entry.12, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @cw1200_load_firmware._entry_ptr.14, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.16, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/st/cw1200/fwio.c", i32 348, i32 3}
!24 = !{ptr @cw1200_load_firmware._entry.15, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @cw1200_load_firmware._entry_ptr.17, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.19, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/st/cw1200/fwio.c", i32 357, i32 3}
!28 = !{ptr @cw1200_load_firmware._entry.18, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @cw1200_load_firmware._entry_ptr.20, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.22, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/st/cw1200/fwio.c", i32 364, i32 3}
!32 = !{ptr @cw1200_load_firmware._entry.21, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @cw1200_load_firmware._entry_ptr.23, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.25, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/st/cw1200/fwio.c", i32 373, i32 4}
!36 = !{ptr @cw1200_load_firmware._entry.24, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @cw1200_load_firmware._entry_ptr.26, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.28, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/st/cw1200/fwio.c", i32 384, i32 3}
!40 = !{ptr @cw1200_load_firmware._entry.27, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @cw1200_load_firmware._entry_ptr.29, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.31, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/st/cw1200/fwio.c", i32 394, i32 4}
!44 = !{ptr @cw1200_load_firmware._entry.30, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @cw1200_load_firmware._entry_ptr.32, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.34, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/st/cw1200/fwio.c", i32 400, i32 4}
!48 = !{ptr @cw1200_load_firmware._entry.33, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @cw1200_load_firmware._entry_ptr.35, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.37, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/st/cw1200/fwio.c", i32 404, i32 4}
!52 = !{ptr @cw1200_load_firmware._entry.36, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @cw1200_load_firmware._entry_ptr.38, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.40, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/st/cw1200/fwio.c", i32 419, i32 4}
!56 = !{ptr @cw1200_load_firmware._entry.39, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @cw1200_load_firmware._entry_ptr.41, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.43, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/st/cw1200/fwio.c", i32 424, i32 4}
!60 = !{ptr @cw1200_load_firmware._entry.42, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @cw1200_load_firmware._entry_ptr.44, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.46, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/st/cw1200/fwio.c", i32 430, i32 4}
!64 = !{ptr @cw1200_load_firmware._entry.45, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @cw1200_load_firmware._entry_ptr.47, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.49, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/st/cw1200/fwio.c", i32 437, i32 4}
!68 = !{ptr @cw1200_load_firmware._entry.48, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @cw1200_load_firmware._entry_ptr.50, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.52, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/wireless/st/cw1200/fwio.c", i32 440, i32 4}
!72 = !{ptr @cw1200_load_firmware._entry.51, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @cw1200_load_firmware._entry_ptr.53, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.55, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/wireless/st/cw1200/fwio.c", i32 446, i32 3}
!76 = !{ptr @cw1200_load_firmware._entry.54, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @cw1200_load_firmware._entry_ptr.56, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.58, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/wireless/st/cw1200/fwio.c", i32 450, i32 3}
!80 = !{ptr @cw1200_load_firmware._entry.57, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @cw1200_load_firmware._entry_ptr.59, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @cw1200_load_firmware._entry.60, !83, !"_entry", i1 false, i1 false}
!83 = !{!"../drivers/net/wireless/st/cw1200/fwio.c", i32 459, i32 3}
!84 = !{ptr @cw1200_load_firmware._entry_ptr.61, !83, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.63, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/wireless/st/cw1200/fwio.c", i32 464, i32 3}
!87 = !{ptr @cw1200_load_firmware._entry.62, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @cw1200_load_firmware._entry_ptr.64, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.66, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/wireless/st/cw1200/fwio.c", i32 472, i32 4}
!91 = !{ptr @cw1200_load_firmware._entry.65, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @cw1200_load_firmware._entry_ptr.67, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.69, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/wireless/st/cw1200/fwio.c", i32 479, i32 3}
!95 = !{ptr @cw1200_load_firmware._entry.68, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @cw1200_load_firmware._entry_ptr.70, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.72, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/wireless/st/cw1200/fwio.c", i32 485, i32 3}
!99 = !{ptr @cw1200_load_firmware._entry.71, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @cw1200_load_firmware._entry_ptr.73, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @cw1200_load_firmware._entry.74, !102, !"_entry", i1 false, i1 false}
!102 = !{!"../drivers/net/wireless/st/cw1200/fwio.c", i32 499, i32 3}
!103 = !{ptr @cw1200_load_firmware._entry_ptr.75, !102, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.77, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/wireless/st/cw1200/fwio.c", i32 504, i32 3}
!106 = !{ptr @cw1200_load_firmware._entry.76, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @cw1200_load_firmware._entry_ptr.78, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.79, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/wireless/st/cw1200/fwio.c", i32 95, i32 13}
!110 = !{ptr @.str.80, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/wireless/st/cw1200/fwio.c", i32 97, i32 21}
!112 = !{ptr @.str.81, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/wireless/st/cw1200/fwio.c", i32 100, i32 13}
!114 = !{ptr @.str.82, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/wireless/st/cw1200/fwio.c", i32 102, i32 21}
!116 = !{ptr @.str.83, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/wireless/st/cw1200/fwio.c", i32 105, i32 13}
!118 = !{ptr @.str.84, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/wireless/st/cw1200/fwio.c", i32 107, i32 21}
!120 = !{ptr @.str.85, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/wireless/st/cw1200/fwio.c", i32 110, i32 13}
!122 = !{ptr @.str.86, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/wireless/st/cw1200/fwio.c", i32 112, i32 21}
!124 = !{ptr @.str.87, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/wireless/st/cw1200/fwio.c", i32 115, i32 13}
!126 = !{ptr @.str.88, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/wireless/st/cw1200/fwio.c", i32 117, i32 21}
!128 = !{ptr @.str.89, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/wireless/st/cw1200/fwio.c", i32 120, i32 3}
!130 = !{ptr @.str.90, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @cw1200_load_firmware_cw1200._entry, !129, !"_entry", i1 false, i1 false}
!132 = !{ptr @cw1200_load_firmware_cw1200._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.92, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/net/wireless/st/cw1200/fwio.c", i32 147, i32 3}
!135 = !{ptr @cw1200_load_firmware_cw1200._entry.91, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @cw1200_load_firmware_cw1200._entry_ptr.93, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.95, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/net/wireless/st/cw1200/fwio.c", i32 153, i32 3}
!139 = !{ptr @cw1200_load_firmware_cw1200._entry.94, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @cw1200_load_firmware_cw1200._entry_ptr.96, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.98, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/net/wireless/st/cw1200/fwio.c", i32 167, i32 3}
!143 = !{ptr @cw1200_load_firmware_cw1200._entry.97, !142, !"_entry", i1 false, i1 false}
!144 = !{ptr @cw1200_load_firmware_cw1200._entry_ptr.99, !142, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.101, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/net/wireless/st/cw1200/fwio.c", i32 187, i32 4}
!147 = !{ptr @cw1200_load_firmware_cw1200._entry.100, !146, !"_entry", i1 false, i1 false}
!148 = !{ptr @cw1200_load_firmware_cw1200._entry_ptr.102, !146, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.104, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/net/wireless/st/cw1200/fwio.c", i32 202, i32 4}
!151 = !{ptr @cw1200_load_firmware_cw1200._entry.103, !150, !"_entry", i1 false, i1 false}
!152 = !{ptr @cw1200_load_firmware_cw1200._entry_ptr.105, !150, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.107, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/net/wireless/st/cw1200/fwio.c", i32 224, i32 4}
!155 = !{ptr @cw1200_load_firmware_cw1200._entry.106, !154, !"_entry", i1 false, i1 false}
!156 = !{ptr @cw1200_load_firmware_cw1200._entry_ptr.108, !154, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.110, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/net/wireless/st/cw1200/fwio.c", i32 242, i32 3}
!159 = !{ptr @cw1200_load_firmware_cw1200._entry.109, !158, !"_entry", i1 false, i1 false}
!160 = !{ptr @cw1200_load_firmware_cw1200._entry_ptr.111, !158, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.113, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/net/wireless/st/cw1200/fwio.c", i32 246, i32 3}
!163 = !{ptr @cw1200_load_firmware_cw1200._entry.112, !162, !"_entry", i1 false, i1 false}
!164 = !{ptr @cw1200_load_firmware_cw1200._entry_ptr.114, !162, !"_entry_ptr", i1 false, i1 false}
!165 = !{i32 1, !"wchar_size", i32 2}
!166 = !{i32 1, !"min_enum_size", i32 4}
!167 = !{i32 8, !"branch-target-enforcement", i32 0}
!168 = !{i32 8, !"sign-return-address", i32 0}
!169 = !{i32 8, !"sign-return-address-all", i32 0}
!170 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!171 = !{i32 7, !"uwtable", i32 1}
!172 = !{i32 7, !"frame-pointer", i32 2}
!173 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!174 = !{!"auto-init"}
