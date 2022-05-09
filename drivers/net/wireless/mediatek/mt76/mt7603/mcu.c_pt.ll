; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/mediatek/mt76/mt7603/mcu.c_pt.bc'
source_filename = "../drivers/net/wireless/mediatek/mt76/mt7603/mcu.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mt76_mcu_ops = type { i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.anon.148 = type { i32, i32, i32 }
%struct.anon.149 = type { i32, i32 }
%struct.mt76_dev = type { %struct.mt76_phy, ptr, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.mt76_rx_status, i32, i32, %struct.mutex, ptr, ptr, ptr, ptr, %struct.mt76_mcu, [84 x i8], %struct.net_device, %struct.net_device, %struct.spinlock, [5 x %struct.napi_struct], [5 x %struct.sk_buff_head], %struct.list_head, [3 x ptr], [5 x %struct.mt76_queue], ptr, [4 x i32], %struct.mt76_worker, %struct.napi_struct, %struct.spinlock, %struct.idr, i32, %struct.wait_queue_head, %struct.spinlock, [9 x i32], [9 x i32], i32, %struct.mt76_wcid, [288 x ptr], %struct.list_head, i32, [32 x i32], %struct.tasklet_struct, i32, i8, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.mt76_rate_power, [3 x i8], i32, i32, %struct.led_classdev, [32 x i8], i8, i8, i8, i32, ptr, %struct.anon.143, ptr, %union.anon.144, [20 x i8] }
%struct.mt76_phy = type { ptr, ptr, ptr, i32, [7 x ptr], %struct.cfg80211_chan_def, ptr, ptr, i64, %struct.mt76_hw_cap, %struct.mt76_sband, %struct.mt76_sband, %struct.mt76_sband, [6 x i8], i32, i8, i16, %struct.mt76_testmode_data, %struct.delayed_work, i8, [5 x %struct.anon.135], ptr }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.mt76_hw_cap = type { i8, i8, i8 }
%struct.mt76_sband = type { %struct.ieee80211_supported_band, ptr }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.mt76_testmode_data = type { i32, [1 x i32], ptr, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, [4 x i8], i8, [3 x [6 x i8]], i32, i32, i16, i32, %struct.anon.134 }
%struct.anon.134 = type { [5 x i64], [5 x i64] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.anon.135 = type { ptr, ptr, i16 }
%struct.mt76_rx_status = type <{ %union.anon.136, i32, i32, i32, [6 x i8], i8, i8, i16, i16, i32, i8, i16, i8, i8, i8, i8, i8, [4 x i8] }>
%union.anon.136 = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mt76_mcu = type { %struct.mutex, i32, i32, %struct.sk_buff_head, %struct.wait_queue_head }
%struct.sk_buff_head = type { %union.anon.62, i32, %struct.spinlock }
%union.anon.62 = type { %struct.anon.63 }
%struct.anon.63 = type { ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.106, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.127, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.106 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.127 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.mt76_queue = type { ptr, %struct.spinlock, %struct.spinlock, ptr, ptr, i16, i16, i16, i32, i32, i32, i8, i8, i8, i8, i8, i32, ptr, %struct.page_frag_cache }
%struct.page_frag_cache = type { ptr, i16, i16, i32, i8 }
%struct.mt76_worker = type { ptr, ptr, i32 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.mt76_wcid = type { [16 x ptr], %struct.atomic_t, i32, %struct.ewma_signal, i32, %struct.rate_info, i16, i8, i8, i8, i8, [17 x [6 x i8]], i16, i32, i8, %struct.list_head, %struct.idr }
%struct.ewma_signal = type { i32 }
%struct.rate_info = type { i8, i8, i16, i8, i8, i8, i8, i8, i8 }
%struct.list_head = type { ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.140, i32 }
%union.anon.140 = type { ptr }
%struct.debugfs_blob_wrapper = type { ptr, i32 }
%struct.mt76_rate_power = type { %union.anon.141 }
%union.anon.141 = type { %struct.anon.142 }
%struct.anon.142 = type { [4 x i8], [8 x i8], [10 x i8], [16 x i8], [10 x i8] }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.anon.143 = type { ptr, i32 }
%union.anon.144 = type { %struct.mt76_usb }
%struct.mt76_usb = type { %struct.mutex, ptr, i16, %struct.mt76_worker, %struct.mt76_worker, %struct.work_struct, [6 x i8], [2 x i8], i8, %struct.mt76u_mcu }
%struct.mt76u_mcu = type { ptr, ptr, i32, i32, i8 }
%struct.firmware = type { i32, ptr, ptr }
%struct.mt7603_fw_trailer = type <{ [10 x i8], [15 x i8], i32 }>
%struct.mt76_bus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.mt7603_dev = type { %union.anon, ptr, i32, %struct.list_head, %struct.spinlock, %struct.mt7603_sta, i32, i32, i32, i32, i32, i32, i32, [3 x i8], i8, i16, i8, i64, %struct.spinlock, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, [4 x i16], i16, i32, [7 x i32], [12 x i8] }
%union.anon = type { %struct.mt76_dev }
%struct.mt7603_sta = type { %struct.mt76_wcid, ptr, %struct.list_head, [4 x i32], %struct.sk_buff_head, [4 x %struct.ieee80211_tx_rate], [2 x %struct.mt7603_rate_set], i32, i8, i8, i8, i8, i8 }
%struct.ieee80211_tx_rate = type <{ i8, i16 }>
%struct.mt7603_rate_set = type { %struct.ieee80211_tx_rate, [4 x %struct.ieee80211_tx_rate] }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.131, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.anon.131 = type { i32, i16 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.130, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.anon.130 = type { i64, i64, i8 }
%struct.sk_buff = type { %union.anon.41, %union.anon.44, %union.anon.45, [48 x i8], %union.anon.46, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.48, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.41 = type { %struct.anon.42 }
%struct.anon.42 = type { ptr, ptr, %union.anon.43 }
%union.anon.43 = type { ptr }
%union.anon.44 = type { ptr }
%union.anon.45 = type { i64 }
%union.anon.46 = type { %struct.anon.47 }
%struct.anon.47 = type { i32, ptr }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.50, i32, i32, i32, i16, i16, %union.anon.52, i32, %union.anon.53, %union.anon.54, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.50 = type { i32 }
%union.anon.52 = type { i32 }
%union.anon.53 = type { i32 }
%union.anon.54 = type { i16 }
%struct.mt7603_mcu_txd = type { i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, [5 x i32] }
%struct.mt76_queue_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mt7603_mcu_rxd = type { i16, i16, i8, i8, i16, i8, [3 x i8] }
%struct.req_data = type { i16, i8, i8 }
%struct.anon.150 = type { i8, i8, i8, [2 x i8], [14 x i8], i8, [6 x i8], [17 x i8], i8 }
%struct.anon.147 = type { i8, i8, i8, i8, i8, [7 x i8], [21 x i8], [3 x i8] }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }

@mt7603_mcu_init.mt7603_mcu_ops = internal constant { %struct.mt76_mcu_ops, [56 x i8] } { %struct.mt76_mcu_ops { i32 32, i32 0, ptr null, ptr @mt7603_mcu_skb_send_msg, ptr @mt7603_mcu_parse_response, ptr null, ptr null, ptr null, ptr null, ptr @mt7603_mcu_restart }, [56 x i8] zeroinitializer }, align 32
@mt7603_mcu_set_eeprom.req_fields = internal constant { [91 x i16], [42 x i8] } { [91 x i16] [i16 53, i16 54, i16 55, i16 72, i16 80, i16 83, i16 84, i16 85, i16 86, i16 87, i16 88, i16 89, i16 90, i16 91, i16 92, i16 93, i16 94, i16 95, i16 96, i16 97, i16 160, i16 161, i16 162, i16 163, i16 164, i16 165, i16 166, i16 167, i16 168, i16 169, i16 170, i16 171, i16 172, i16 173, i16 192, i16 193, i16 194, i16 195, i16 196, i16 197, i16 198, i16 199, i16 200, i16 201, i16 202, i16 203, i16 204, i16 205, i16 206, i16 207, i16 208, i16 209, i16 210, i16 211, i16 212, i16 213, i16 214, i16 244, i16 245, i16 246, i16 247, i16 36, i16 37, i16 52, i16 57, i16 59, i16 66, i16 67, i16 158, i16 159, i16 242, i16 248, i16 249, i16 250, i16 302, i16 304, i16 305, i16 306, i16 307, i16 308, i16 309, i16 310, i16 311, i16 312, i16 313, i16 314, i16 315, i16 316, i16 317, i16 318, i16 319], [42 x i8] zeroinitializer }, align 32
@mt7603_mcu_parse_response._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 25, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"MCU message %02x (seq %d) timed out\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mt7603_mcu_parse_response\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"drivers/net/wireless/mediatek/mt76/mt7603/mcu.c\00", [48 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mt7603_mcu_parse_response._entry_ptr = internal global ptr @mt7603_mcu_parse_response._entry, section ".printk_index", align 4
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mt7628_e1.bin\00", [18 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mt7628_e2.bin\00", [18 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mt7603_e1.bin\00", [18 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mt7603_e2.bin\00", [18 x i8] zeroinitializer }, align 32
@mt7603_load_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 142, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Invalid firmware\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mt7603_load_firmware\00", [43 x i8] zeroinitializer }, align 32
@mt7603_load_firmware._entry_ptr = internal global ptr @mt7603_load_firmware._entry, section ".printk_index", align 4
@mt7603_load_firmware._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.2, i32 150, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Firmware Version: %.10s\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@mt7603_load_firmware._entry_ptr.14 = internal global ptr @mt7603_load_firmware._entry.11, section ".printk_index", align 4
@mt7603_load_firmware._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.10, ptr @.str.2, i32 151, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Build Time: %.15s\0A\00", [45 x i8] zeroinitializer }, align 32
@mt7603_load_firmware._entry_ptr.17 = internal global ptr @mt7603_load_firmware._entry.15, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@mt7603_load_firmware._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.10, ptr @.str.2, i32 164, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Firmware already running...\0A\00", [35 x i8] zeroinitializer }, align 32
@mt7603_load_firmware._entry_ptr.20 = internal global ptr @mt7603_load_firmware._entry.18, section ".printk_index", align 4
@mt7603_load_firmware._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.10, ptr @.str.2, i32 169, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Timeout waiting for ROM code to become ready\0A\00", [50 x i8] zeroinitializer }, align 32
@mt7603_load_firmware._entry_ptr.23 = internal global ptr @mt7603_load_firmware._entry.21, section ".printk_index", align 4
@mt7603_load_firmware._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.10, ptr @.str.2, i32 177, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Download request failed\0A\00", [39 x i8] zeroinitializer }, align 32
@mt7603_load_firmware._entry_ptr.26 = internal global ptr @mt7603_load_firmware._entry.24, section ".printk_index", align 4
@mt7603_load_firmware._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.10, ptr @.str.2, i32 184, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to send firmware to device\0A\00", [61 x i8] zeroinitializer }, align 32
@mt7603_load_firmware._entry_ptr.29 = internal global ptr @mt7603_load_firmware._entry.27, section ".printk_index", align 4
@mt7603_load_firmware._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.10, ptr @.str.2, i32 190, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to start firmware\0A\00", [38 x i8] zeroinitializer }, align 32
@mt7603_load_firmware._entry_ptr.32 = internal global ptr @mt7603_load_firmware._entry.30, section ".printk_index", align 4
@mt7603_load_firmware._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.10, ptr @.str.2, i32 195, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Timeout waiting for firmware to initialize\0A\00", [52 x i8] zeroinitializer }, align 32
@mt7603_load_firmware._entry_ptr.35 = internal global ptr @mt7603_load_firmware._entry.33, section ".printk_index", align 4
@.str.36 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%.10s-%.15s\00", [20 x i8] zeroinitializer }, align 32
@mt7603_load_firmware._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.10, ptr @.str.2, i32 210, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"firmware init done\0A\00", [44 x i8] zeroinitializer }, align 32
@mt7603_load_firmware._entry_ptr.39 = internal global ptr @mt7603_load_firmware._entry.37, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.40 = private unnamed_addr constant [15 x i8] c"mt7603_mcu_ops\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 220, i32 35 }
@___asan_gen_.43 = private unnamed_addr constant [11 x i8] c"req_fields\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 239, i32 19 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 24, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 127, i32 15 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 129, i32 15 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 132, i32 15 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 134, i32 15 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 142, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 150, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 151, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 164, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 169, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 177, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 184, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 190, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 195, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 209, i32 4 }
@___asan_gen_.139 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.142 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.143 = private constant [51 x i8] c"../drivers/net/wireless/mediatek/mt76/mt7603/mcu.c\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 210, i32 2 }
@llvm.compiler.used = appending global [46 x ptr] [ptr @mt7603_load_firmware._entry, ptr @mt7603_load_firmware._entry.11, ptr @mt7603_load_firmware._entry.15, ptr @mt7603_load_firmware._entry.18, ptr @mt7603_load_firmware._entry.21, ptr @mt7603_load_firmware._entry.24, ptr @mt7603_load_firmware._entry.27, ptr @mt7603_load_firmware._entry.30, ptr @mt7603_load_firmware._entry.33, ptr @mt7603_load_firmware._entry.37, ptr @mt7603_load_firmware._entry_ptr, ptr @mt7603_load_firmware._entry_ptr.14, ptr @mt7603_load_firmware._entry_ptr.17, ptr @mt7603_load_firmware._entry_ptr.20, ptr @mt7603_load_firmware._entry_ptr.23, ptr @mt7603_load_firmware._entry_ptr.26, ptr @mt7603_load_firmware._entry_ptr.29, ptr @mt7603_load_firmware._entry_ptr.32, ptr @mt7603_load_firmware._entry_ptr.35, ptr @mt7603_load_firmware._entry_ptr.39, ptr @mt7603_mcu_parse_response._entry, ptr @mt7603_mcu_parse_response._entry_ptr, ptr @mt7603_mcu_init.mt7603_mcu_ops, ptr @mt7603_mcu_set_eeprom.req_fields, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @.str.36, ptr @.str.38], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7603_mcu_init.mt7603_mcu_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7603_mcu_set_eeprom.req_fields to i32), i32 182, i32 224, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7603_mcu_parse_response._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7603_load_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7603_load_firmware._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7603_load_firmware._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7603_load_firmware._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7603_load_firmware._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7603_load_firmware._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7603_load_firmware._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7603_load_firmware._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7603_load_firmware._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7603_load_firmware._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt7603_mcu_init(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %req.i = alloca %struct.anon.148, align 4
  %req.i.i = alloca %struct.anon.149, align 4
  %fw.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mcu_ops = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 12
  %0 = ptrtoint ptr %mcu_ops to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @mt7603_mcu_init.mt7603_mcu_ops, ptr %mcu_ops, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw.i) #7
  %1 = ptrtoint ptr %fw.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw.i, align 4, !annotation !73
  %rev.i.i.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 39
  %2 = ptrtoint ptr %rev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rev.i.i.i, align 4
  %shr.i.mask.i.i = and i32 %3, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 1982332928, i32 %shr.i.mask.i.i)
  %cmp.i.i = icmp eq i32 %shr.i.mask.i.i, 1982332928
  %conv.i.i = trunc i32 %3 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30208, i16 %conv.i.i)
  %cmp.i = icmp eq i16 %conv.i.i, -30208
  %.str.5..str.6.i = select i1 %cmp.i, ptr @.str.5, ptr @.str.6
  %4 = and i32 %3, 65520
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp7.i = icmp eq i32 %4, 0
  %.str.7..str.8.i = select i1 %cmp7.i, ptr @.str.7, ptr @.str.8
  %firmware.0.i = select i1 %cmp.i.i, ptr %.str.5..str.6.i, ptr %.str.7..str.8.i
  %dev13.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 13
  %5 = ptrtoint ptr %dev13.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev13.i, align 8
  %call14.i = call i32 @request_firmware(ptr noundef nonnull %fw.i, ptr noundef nonnull %firmware.0.i, ptr noundef %6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool.not.i, label %if.end16.i, label %entry.mt7603_load_firmware.exit_crit_edge

entry.mt7603_load_firmware.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt7603_load_firmware.exit

if.end16.i:                                       ; preds = %entry
  %7 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fw.i, align 4
  %tobool17.not.i = icmp eq ptr %8, null
  br i1 %tobool17.not.i, label %if.end16.i.do.end.i_crit_edge, label %lor.lhs.false.i

if.end16.i.do.end.i_crit_edge:                    ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

lor.lhs.false.i:                                  ; preds = %if.end16.i
  %data.i = getelementptr inbounds %struct.firmware, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data.i, align 4
  %tobool18.not.i = icmp eq ptr %10, null
  br i1 %tobool18.not.i, label %lor.lhs.false.i.do.end.i_crit_edge, label %lor.lhs.false19.i

lor.lhs.false.i.do.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

lor.lhs.false19.i:                                ; preds = %lor.lhs.false.i
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 29, i32 %12)
  %cmp20.i = icmp ult i32 %12, 29
  br i1 %cmp20.i, label %lor.lhs.false19.i.do.end.i_crit_edge, label %if.end24.i

lor.lhs.false19.i.do.end.i_crit_edge:             ; preds = %lor.lhs.false19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

do.end.i:                                         ; preds = %lor.lhs.false19.i.do.end.i_crit_edge, %lor.lhs.false.i.do.end.i_crit_edge, %if.end16.i.do.end.i_crit_edge
  %13 = ptrtoint ptr %dev13.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev13.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.9) #10
  br label %out.i

if.end24.i:                                       ; preds = %lor.lhs.false19.i
  %add.ptr.i = getelementptr i8, ptr %10, i32 %12
  %add.ptr27.i = getelementptr i8, ptr %add.ptr.i, i32 -29
  %15 = ptrtoint ptr %dev13.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev13.i, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %16, ptr noundef nonnull @.str.12, ptr noundef %add.ptr27.i) #10
  %17 = ptrtoint ptr %dev13.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev13.i, align 8
  %build_date.i = getelementptr inbounds %struct.mt7603_fw_trailer, ptr %add.ptr27.i, i32 0, i32 1
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %18, ptr noundef nonnull @.str.16, ptr noundef %build_date.i) #10
  %call37.i = call i32 @mt7603_reg_map(ptr noundef %dev, i32 noundef 1342252184) #7
  %bus.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 10
  %19 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bus.i, align 4
  %wr.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %wr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %wr.i, align 4
  call void %22(ptr noundef %dev, i32 noundef %call37.i, i32 noundef 5) #7
  %23 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bus.i, align 4
  %wr39.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %wr39.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %wr39.i, align 4
  call void %26(ptr noundef %dev, i32 noundef %call37.i, i32 noundef 5) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %27(i32 noundef 214748) #7
  %28 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bus.i, align 4
  %rmw.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %rmw.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rmw.i, align 4
  %call56.i = call i32 %31(ptr noundef %dev, i32 noundef 17812, i32 noundef 31, i32 noundef 37) #7
  %32 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bus.i, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  %call58.i = call i32 %35(ptr noundef %dev, i32 noundef 4404) #7
  %and.i = and i32 %call58.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool59.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool59.not.i, label %if.end65.i, label %do.end63.i

do.end63.i:                                       ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %dev13.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev13.i, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %37, ptr noundef nonnull @.str.19) #10
  br label %running.i

if.end65.i:                                       ; preds = %if.end24.i
  %call66.i = call zeroext i1 @__mt76_poll_msec(ptr noundef %dev, i32 noundef 4404, i32 noundef 3, i32 noundef 1, i32 noundef 500) #7
  br i1 %call66.i, label %if.end72.i, label %do.end70.i

do.end70.i:                                       ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %dev13.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev13.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.22) #10
  br label %out.i

if.end72.i:                                       ; preds = %if.end65.i
  %dl_len73.i = getelementptr inbounds %struct.mt7603_fw_trailer, ptr %add.ptr27.i, i32 0, i32 2
  %40 = ptrtoint ptr %dl_len73.i to i32
  call void @__asan_loadN_noabort(i32 %40, i32 4)
  %41 = load i32, ptr %dl_len73.i, align 1
  %42 = call i32 @llvm.bswap.i32(i32 %41) #7
  %add.i = add i32 %42, 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %req.i) #7
  %43 = getelementptr inbounds %struct.anon.148, ptr %req.i, i32 0, i32 1
  %44 = getelementptr inbounds %struct.anon.148, ptr %req.i, i32 0, i32 2
  %45 = ptrtoint ptr %req.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 4096, ptr %req.i, align 4
  %46 = call i32 @llvm.bswap.i32(i32 %add.i) #7
  %47 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %43, align 4
  %48 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 128, ptr %44, align 4
  %call.i.i2 = call i32 @mt76_mcu_send_and_get_msg(ptr noundef %dev, i32 noundef -1, ptr noundef nonnull %req.i, i32 noundef 12, i1 noundef zeroext true, ptr noundef null) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %req.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i2)
  %tobool75.not.i = icmp eq i32 %call.i.i2, 0
  br i1 %tobool75.not.i, label %if.end81.i, label %do.end79.i

do.end79.i:                                       ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #9
  %49 = ptrtoint ptr %dev13.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev13.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %50, ptr noundef nonnull @.str.25) #10
  br label %out.i

if.end81.i:                                       ; preds = %if.end72.i
  %51 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %fw.i, align 4
  %data82.i = getelementptr inbounds %struct.firmware, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %data82.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %data82.i, align 4
  %55 = ptrtoint ptr %mcu_ops to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %mcu_ops, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %56, align 4
  %sub.i.i = sub i32 4096, %58
  %call.i.i = call i32 @__mt76_mcu_send_firmware(ptr noundef %dev, i32 noundef -238, ptr noundef %54, i32 noundef %add.i, i32 noundef %sub.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool84.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool84.not.i, label %if.end90.i, label %do.end88.i

do.end88.i:                                       ; preds = %if.end81.i
  call void @__sanitizer_cov_trace_pc() #9
  %59 = ptrtoint ptr %dev13.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev13.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %60, ptr noundef nonnull @.str.28) #10
  br label %out.i

if.end90.i:                                       ; preds = %if.end81.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %req.i.i) #7
  %61 = getelementptr inbounds %struct.anon.149, ptr %req.i.i, i32 0, i32 1
  %62 = ptrtoint ptr %req.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 16777216, ptr %req.i.i, align 4
  %63 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 4096, ptr %61, align 4
  %call.i.i.i = call i32 @mt76_mcu_send_and_get_msg(ptr noundef %dev, i32 noundef -2, ptr noundef nonnull %req.i.i, i32 noundef 8, i1 noundef zeroext true, ptr noundef null) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %req.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool92.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool92.not.i, label %if.end98.i, label %do.end96.i

do.end96.i:                                       ; preds = %if.end90.i
  call void @__sanitizer_cov_trace_pc() #9
  %64 = ptrtoint ptr %dev13.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev13.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %65, ptr noundef nonnull @.str.31) #10
  br label %out.i

if.end98.i:                                       ; preds = %if.end90.i
  %call99.i = call zeroext i1 @__mt76_poll_msec(ptr noundef %dev, i32 noundef 4404, i32 noundef 2, i32 noundef 2, i32 noundef 500) #7
  br i1 %call99.i, label %if.end98.i.running.i_crit_edge, label %do.end103.i

if.end98.i.running.i_crit_edge:                   ; preds = %if.end98.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %running.i

do.end103.i:                                      ; preds = %if.end98.i
  call void @__sanitizer_cov_trace_pc() #9
  %66 = ptrtoint ptr %dev13.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev13.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %67, ptr noundef nonnull @.str.34) #10
  br label %out.i

running.i:                                        ; preds = %if.end98.i.running.i_crit_edge, %do.end63.i
  %68 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %bus.i, align 4
  %rmw107.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %69, i32 0, i32 2
  %70 = ptrtoint ptr %rmw107.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %rmw107.i, align 4
  %call108.i = call i32 %71(ptr noundef %dev, i32 noundef 17812, i32 noundef 63, i32 noundef 0) #7
  %72 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %bus.i, align 4
  %rmw110.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %73, i32 0, i32 2
  %74 = ptrtoint ptr %rmw110.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %rmw110.i, align 4
  %call111.i = call i32 %75(ptr noundef %dev, i32 noundef 17812, i32 noundef 0, i32 noundef 256) #7
  %76 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %bus.i, align 4
  %rmw113.i = getelementptr inbounds %struct.mt76_bus_ops, ptr %77, i32 0, i32 2
  %78 = ptrtoint ptr %rmw113.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %rmw113.i, align 4
  %call114.i = call i32 %79(ptr noundef %dev, i32 noundef 17812, i32 noundef 256, i32 noundef 0) #7
  %mcu_running.i = getelementptr inbounds %struct.mt7603_dev, ptr %dev, i32 0, i32 19
  %80 = ptrtoint ptr %mcu_running.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 1, ptr %mcu_running.i, align 4
  %hw.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 2
  %81 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %hw.i, align 4
  %wiphy.i = getelementptr inbounds %struct.ieee80211_hw, ptr %82, i32 0, i32 1
  %83 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %wiphy.i, align 8
  %fw_version.i = getelementptr inbounds %struct.wiphy, ptr %84, i32 0, i32 38
  %call120.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %fw_version.i, i32 noundef 32, ptr noundef nonnull @.str.36, ptr noundef %add.ptr27.i, ptr noundef %build_date.i) #7
  %85 = ptrtoint ptr %dev13.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dev13.i, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %86, ptr noundef nonnull @.str.38) #10
  br label %out.i

out.i:                                            ; preds = %running.i, %do.end103.i, %do.end96.i, %do.end88.i, %do.end79.i, %do.end70.i, %do.end.i
  %ret.1.i = phi i32 [ -22, %do.end.i ], [ 0, %running.i ], [ %call.i.i2, %do.end79.i ], [ %call.i.i, %do.end88.i ], [ %call.i.i.i, %do.end96.i ], [ -5, %do.end103.i ], [ -5, %do.end70.i ]
  %87 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %fw.i, align 4
  call void @release_firmware(ptr noundef %88) #7
  br label %mt7603_load_firmware.exit

mt7603_load_firmware.exit:                        ; preds = %out.i, %entry.mt7603_load_firmware.exit_crit_edge
  %retval.0.i = phi i32 [ %ret.1.i, %out.i ], [ %call14.i, %entry.mt7603_load_firmware.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i) #7
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7603_mcu_skb_send_msg(ptr noundef %mdev, ptr noundef %skb, i32 noundef %cmd, ptr noundef writeonly %wait_seq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mcu_running = getelementptr inbounds %struct.mt7603_dev, ptr %mdev, i32 0, i32 19
  %0 = ptrtoint ptr %mcu_running to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %mcu_running, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %cond = select i1 %tobool.not, i32 12, i32 32
  %timeout = getelementptr inbounds %struct.mt76_dev, ptr %mdev, i32 0, i32 14, i32 2
  %2 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 300, ptr %timeout, align 4
  %msg_seq = getelementptr inbounds %struct.mt76_dev, ptr %mdev, i32 0, i32 14, i32 1
  %3 = ptrtoint ptr %msg_seq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %msg_seq, align 4
  %inc = add i32 %4, 1
  store i32 %inc, ptr %msg_seq, align 4
  %5 = trunc i32 %inc to i8
  %conv2 = and i8 %5, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv2)
  %tobool3.not = icmp eq i8 %conv2, 0
  br i1 %tobool3.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %inc6 = add i32 %4, 2
  %6 = ptrtoint ptr %msg_seq to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %inc6, ptr %msg_seq, align 4
  %7 = trunc i32 %inc6 to i8
  %conv8 = and i8 %7, 15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %seq.0 = phi i8 [ %conv2, %entry.if.end_crit_edge ], [ %conv8, %if.then ]
  %call = tail call ptr @skb_push(ptr noundef %skb, i32 noundef %cond) #7
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %8 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len, align 4
  %conv9 = trunc i32 %9 to i16
  %10 = tail call i16 @llvm.bswap.i16(i16 %conv9)
  %11 = ptrtoint ptr %call to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %call, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -238, i32 %cmd)
  %cmp = icmp eq i32 %cmd, -238
  %pq_id = getelementptr inbounds %struct.mt7603_mcu_txd, ptr %call, i32 0, i32 1
  br i1 %cmp, label %if.end14.thread, label %if.end14

if.end14.thread:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %pq_id to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 192, ptr %pq_id, align 2
  %pkt_type54 = getelementptr inbounds %struct.mt7603_mcu_txd, ptr %call, i32 0, i32 3
  %13 = ptrtoint ptr %pkt_type54 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -96, ptr %pkt_type54, align 1
  %seq1555 = getelementptr inbounds %struct.mt7603_mcu_txd, ptr %call, i32 0, i32 5
  %14 = ptrtoint ptr %seq1555 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %seq.0, ptr %seq1555, align 1
  br label %if.then18

if.end14:                                         ; preds = %if.end
  %15 = ptrtoint ptr %pq_id to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 128, ptr %pq_id, align 2
  %pkt_type = getelementptr inbounds %struct.mt7603_mcu_txd, ptr %call, i32 0, i32 3
  %16 = ptrtoint ptr %pkt_type to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -96, ptr %pkt_type, align 1
  %seq15 = getelementptr inbounds %struct.mt7603_mcu_txd, ptr %call, i32 0, i32 5
  %17 = ptrtoint ptr %seq15 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %seq.0, ptr %seq15, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cmd)
  %cmp16 = icmp slt i32 %cmd, 0
  br i1 %cmp16, label %if.end14.if.then18_crit_edge, label %if.else20

if.end14.if.then18_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then18

if.then18:                                        ; preds = %if.end14.if.then18_crit_edge, %if.end14.thread
  %18 = trunc i32 %cmd to i8
  %conv19 = sub i8 0, %18
  %cid = getelementptr inbounds %struct.mt7603_mcu_txd, ptr %call, i32 0, i32 2
  %19 = ptrtoint ptr %cid to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv19, ptr %cid, align 4
  %set_query = getelementptr inbounds %struct.mt7603_mcu_txd, ptr %call, i32 0, i32 4
  %20 = ptrtoint ptr %set_query to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 3, ptr %set_query, align 2
  br label %if.end24

if.else20:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %cid21 = getelementptr inbounds %struct.mt7603_mcu_txd, ptr %call, i32 0, i32 2
  %21 = ptrtoint ptr %cid21 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 -19, ptr %cid21, align 4
  %conv22 = trunc i32 %cmd to i8
  %ext_cid = getelementptr inbounds %struct.mt7603_mcu_txd, ptr %call, i32 0, i32 7
  %22 = ptrtoint ptr %ext_cid to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv22, ptr %ext_cid, align 1
  %set_query23 = getelementptr inbounds %struct.mt7603_mcu_txd, ptr %call, i32 0, i32 4
  %23 = ptrtoint ptr %set_query23 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %set_query23, align 2
  %ext_cid_ack = getelementptr inbounds %struct.mt7603_mcu_txd, ptr %call, i32 0, i32 9
  %24 = ptrtoint ptr %ext_cid_ack to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %ext_cid_ack, align 1
  br label %if.end24

if.end24:                                         ; preds = %if.else20, %if.then18
  %tobool25.not = icmp eq ptr %wait_seq, null
  br i1 %tobool25.not, label %if.end24.if.end28_crit_edge, label %if.then26

if.end24.if.end28_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.then26:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  %conv27 = zext i8 %seq.0 to i32
  %25 = ptrtoint ptr %wait_seq to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %conv27, ptr %wait_seq, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.end24.if.end28_crit_edge
  %queue_ops = getelementptr inbounds %struct.mt76_dev, ptr %mdev, i32 0, i32 24
  %26 = ptrtoint ptr %queue_ops to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %queue_ops, align 4
  %tx_queue_skb_raw = getelementptr inbounds %struct.mt76_queue_ops, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %tx_queue_skb_raw to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %tx_queue_skb_raw, align 4
  %q_mcu = getelementptr inbounds %struct.mt76_dev, ptr %mdev, i32 0, i32 22
  %30 = ptrtoint ptr %q_mcu to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %q_mcu, align 16
  %call29 = tail call i32 %29(ptr noundef %mdev, ptr noundef %31, ptr noundef %skb, i32 noundef 0) #7
  ret i32 %call29
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7603_mcu_parse_response(ptr nocapture noundef %mdev, i32 noundef %cmd, ptr noundef readonly %skb, i32 noundef %seq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %skb, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev1 = getelementptr inbounds %struct.mt76_dev, ptr %mdev, i32 0, i32 13
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  %2 = tail call i32 @llvm.abs.i32(i32 %cmd, i1 false)
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str, i32 noundef %2, i32 noundef %seq) #10
  %mcu_hang = getelementptr inbounds %struct.mt7603_dev, ptr %mdev, i32 0, i32 33
  %3 = ptrtoint ptr %mcu_hang to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 10, ptr %mcu_hang, align 2
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %seq3 = getelementptr inbounds %struct.mt7603_mcu_rxd, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %seq3 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %seq3, align 1
  %conv = zext i8 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %seq)
  %cmp4.not = icmp eq i32 %conv, %seq
  %. = select i1 %cmp4.not, i32 0, i32 -11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ -110, %do.end ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7603_mcu_restart(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @mt76_mcu_send_and_get_msg(ptr noundef %dev, i32 noundef -239, ptr noundef null, i32 noundef 0, i1 noundef zeroext true, ptr noundef null) #7
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt7603_mcu_exit(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mcu_ops = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 12
  %0 = ptrtoint ptr %mcu_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mcu_ops, align 4
  %mcu_restart = getelementptr inbounds %struct.mt76_mcu_ops, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %mcu_restart to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mcu_restart, align 4
  %call = tail call i32 %3(ptr noundef %dev) #7
  %res_q = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 14, i32 3
  tail call void @skb_queue_purge(ptr noundef %res_q) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt7603_mcu_set_eeprom(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %eeprom = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 44
  %0 = ptrtoint ptr %eeprom to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %eeprom, align 16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 1024) #11
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 22675456, ptr %call7.i, align 8
  %add.ptr = getelementptr i8, ptr %call7.i, i32 4
  %4 = call ptr @memset(ptr %add.ptr, i32 0, i32 1020)
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end
  %i.027 = phi i32 [ 0, %if.end ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [91 x i16], ptr @mt7603_mcu_set_eeprom.req_fields, i32 0, i32 %i.027
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %arrayidx, align 2
  %7 = tail call i16 @llvm.bswap.i16(i16 %6)
  %arrayidx2 = getelementptr %struct.req_data, ptr %add.ptr, i32 %i.027
  %8 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %arrayidx2, align 4
  %idxprom = zext i16 %6 to i32
  %arrayidx4 = getelementptr i8, ptr %1, i32 %idxprom
  %9 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx4, align 1
  %val = getelementptr inbounds %struct.req_data, ptr %arrayidx2, i32 0, i32 1
  %11 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %val, align 2
  %inc = add nuw nsw i32 %i.027, 1
  %exitcond.not = icmp eq i32 %inc, 91
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 @mt76_mcu_send_and_get_msg(ptr noundef %dev, i32 noundef 33, ptr noundef nonnull %call7.i, i32 noundef 1024, i1 noundef zeroext true, ptr noundef null) #7
  tail call void @kfree(ptr noundef nonnull %call7.i) #7
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %for.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt7603_mcu_set_channel(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %req.i = alloca %struct.anon.150, align 1
  %req = alloca %struct.anon.147, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chandef1 = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 128
  %antenna_mask = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 15
  %2 = ptrtoint ptr %antenna_mask to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %antenna_mask, align 8
  %conv68 = zext i8 %3 to i32
  %call.i = tail call i32 @__sw_hweight8(i32 noundef %conv68) #7
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %req) #7
  %4 = getelementptr inbounds i8, ptr %req, i32 5
  %5 = call ptr @memset(ptr %4, i32 0, i32 31)
  %6 = ptrtoint ptr %chandef1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chandef1, align 4
  %hw_value = getelementptr inbounds %struct.ieee80211_channel, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %hw_value, align 2
  %conv69 = trunc i16 %9 to i8
  %10 = ptrtoint ptr %req to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv69, ptr %req, align 1
  %center_chan = getelementptr inbounds %struct.anon.147, ptr %req, i32 0, i32 1
  %11 = ptrtoint ptr %center_chan to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv69, ptr %center_chan, align 1
  %bw = getelementptr inbounds %struct.anon.147, ptr %req, i32 0, i32 2
  %12 = ptrtoint ptr %bw to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %bw, align 1
  %tx_streams = getelementptr inbounds %struct.anon.147, ptr %req, i32 0, i32 3
  %conv73 = trunc i32 %call.i to i8
  %13 = ptrtoint ptr %tx_streams to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv73, ptr %tx_streams, align 1
  %rx_streams = getelementptr inbounds %struct.anon.147, ptr %req, i32 0, i32 4
  %14 = ptrtoint ptr %rx_streams to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv73, ptr %rx_streams, align 1
  %power_level = getelementptr inbounds %struct.ieee80211_conf, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %power_level to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %power_level, align 4
  %.tr = trunc i32 %16 to i8
  %conv75 = shl i8 %.tr, 1
  %width = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 5, i32 1
  %17 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %width, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %18)
  %cmp = icmp eq i32 %18, 2
  br i1 %cmp, label %if.then, label %entry.if.end90_crit_edge

entry.if.end90_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end90

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %bw to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %bw, align 1
  %center_freq1 = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 5, i32 2
  %20 = ptrtoint ptr %center_freq1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %center_freq1, align 4
  %center_freq = getelementptr inbounds %struct.ieee80211_channel, ptr %7, i32 0, i32 1
  %22 = ptrtoint ptr %center_freq to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %center_freq, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %23)
  %cmp80 = icmp ugt i32 %21, %23
  %. = select i1 %cmp80, i8 2, i8 -2
  %add85 = add i8 %., %conv69
  %24 = ptrtoint ptr %center_chan to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %add85, ptr %center_chan, align 1
  br label %if.end90

if.end90:                                         ; preds = %if.then, %entry.if.end90_crit_edge
  %conv92 = sext i8 %conv75 to i32
  %call93 = tail call i32 @mt76_get_sar_power(ptr noundef %dev, ptr noundef %7, i32 noundef %conv92) #7
  %25 = ptrtoint ptr %antenna_mask to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %antenna_mask, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %26)
  %cmp97 = icmp eq i8 %26, 3
  %tx_power_limit = getelementptr inbounds %struct.mt7603_dev, ptr %dev, i32 0, i32 16
  %27 = ptrtoint ptr %tx_power_limit to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %tx_power_limit, align 2
  %29 = shl i32 %call93, 24
  %30 = add i32 %29, -100663296
  %sext = select i1 %cmp97, i32 %30, i32 %29
  %conv104 = ashr exact i32 %sext, 24
  %conv105 = sext i8 %28 to i32
  %31 = tail call i32 @llvm.smin.i32(i32 %conv104, i32 %conv105)
  %conv114 = trunc i32 %31 to i8
  %txpower_cur = getelementptr inbounds %struct.mt76_phy, ptr %dev, i32 0, i32 14
  %32 = ptrtoint ptr %txpower_cur to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %txpower_cur, align 4
  %uglygep = getelementptr inbounds i8, ptr %req, i32 12
  %33 = zext i8 %conv114 to i32
  %34 = call ptr @memset(ptr %uglygep, i32 %33, i32 21)
  %call.i167 = call i32 @mt76_mcu_send_and_get_msg(ptr noundef %dev, i32 noundef 8, ptr noundef nonnull %req, i32 noundef 36, i1 noundef zeroext true, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i167)
  %tobool119.not = icmp eq i32 %call.i167, 0
  br i1 %tobool119.not, label %if.end121, label %if.end90.cleanup_crit_edge

if.end90.cleanup_crit_edge:                       ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end121:                                        ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %req.i) #7
  %35 = ptrtoint ptr %chandef1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %chandef1, align 4
  %hw_value.i = getelementptr inbounds %struct.ieee80211_channel, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %hw_value.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %hw_value.i, align 2
  %conv.i = trunc i16 %38 to i8
  %39 = ptrtoint ptr %req.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv.i, ptr %req.i, align 1
  %tssi.i = getelementptr inbounds %struct.anon.150, ptr %req.i, i32 0, i32 1
  %eeprom.i = getelementptr inbounds %struct.mt76_dev, ptr %dev, i32 0, i32 44
  %40 = ptrtoint ptr %eeprom.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %eeprom.i, align 16
  %arrayidx.i = getelementptr i8, ptr %41, i32 55
  %42 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx.i, align 1
  %44 = ptrtoint ptr %tssi.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %43, ptr %tssi.i, align 1
  %temp_comp.i = getelementptr inbounds %struct.anon.150, ptr %req.i, i32 0, i32 2
  %arrayidx3.i = getelementptr i8, ptr %41, i32 54
  %45 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx3.i, align 1
  %47 = ptrtoint ptr %temp_comp.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %46, ptr %temp_comp.i, align 1
  %target_power.i = getelementptr inbounds %struct.anon.150, ptr %req.i, i32 0, i32 3
  %arrayidx6.i = getelementptr i8, ptr %41, i32 88
  %48 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx6.i, align 1
  %50 = ptrtoint ptr %target_power.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %49, ptr %target_power.i, align 1
  %arrayinit.element.i = getelementptr inbounds %struct.anon.150, ptr %req.i, i32 0, i32 3, i32 1
  %arrayidx9.i = getelementptr i8, ptr %41, i32 94
  %51 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx9.i, align 1
  %53 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %52, ptr %arrayinit.element.i, align 1
  %rate_power_delta.i = getelementptr inbounds %struct.anon.150, ptr %req.i, i32 0, i32 4
  %bw_power_delta.i = getelementptr inbounds %struct.anon.150, ptr %req.i, i32 0, i32 5
  %arrayidx12.i = getelementptr i8, ptr %41, i32 80
  %54 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx12.i, align 1
  %56 = ptrtoint ptr %bw_power_delta.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %55, ptr %bw_power_delta.i, align 1
  %ch_power_delta.i = getelementptr inbounds %struct.anon.150, ptr %req.i, i32 0, i32 6
  %arrayidx16.i = getelementptr i8, ptr %41, i32 89
  %57 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx16.i, align 1
  %59 = ptrtoint ptr %ch_power_delta.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %58, ptr %ch_power_delta.i, align 1
  %arrayinit.element17.i = getelementptr inbounds %struct.anon.150, ptr %req.i, i32 0, i32 6, i32 1
  %arrayidx20.i = getelementptr i8, ptr %41, i32 90
  %60 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx20.i, align 1
  %62 = ptrtoint ptr %arrayinit.element17.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %61, ptr %arrayinit.element17.i, align 1
  %arrayinit.element21.i = getelementptr inbounds %struct.anon.150, ptr %req.i, i32 0, i32 6, i32 2
  %arrayidx24.i = getelementptr i8, ptr %41, i32 91
  %63 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx24.i, align 1
  %65 = ptrtoint ptr %arrayinit.element21.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %64, ptr %arrayinit.element21.i, align 1
  %arrayinit.element25.i = getelementptr inbounds %struct.anon.150, ptr %req.i, i32 0, i32 6, i32 3
  %arrayidx28.i = getelementptr i8, ptr %41, i32 95
  %66 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx28.i, align 1
  %68 = ptrtoint ptr %arrayinit.element25.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %67, ptr %arrayinit.element25.i, align 1
  %arrayinit.element29.i = getelementptr inbounds %struct.anon.150, ptr %req.i, i32 0, i32 6, i32 4
  %arrayidx32.i = getelementptr i8, ptr %41, i32 96
  %69 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx32.i, align 1
  %71 = ptrtoint ptr %arrayinit.element29.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %70, ptr %arrayinit.element29.i, align 1
  %arrayinit.element33.i = getelementptr inbounds %struct.anon.150, ptr %req.i, i32 0, i32 6, i32 5
  %arrayidx36.i = getelementptr i8, ptr %41, i32 97
  %72 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx36.i, align 1
  %74 = ptrtoint ptr %arrayinit.element33.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %73, ptr %arrayinit.element33.i, align 1
  %temp_comp_power.i = getelementptr inbounds %struct.anon.150, ptr %req.i, i32 0, i32 7
  %add.ptr.i = getelementptr i8, ptr %41, i32 160
  %75 = getelementptr inbounds %struct.anon.150, ptr %req.i, i32 0, i32 8
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 0, ptr %75, align 1
  %77 = call ptr @memcpy(ptr %rate_power_delta.i, ptr %add.ptr.i, i32 14)
  %add.ptr42.i = getelementptr i8, ptr %41, i32 198
  %78 = call ptr @memcpy(ptr %temp_comp_power.i, ptr %add.ptr42.i, i32 17)
  %call.i.i = call i32 @mt76_mcu_send_and_get_msg(ptr noundef %dev, i32 noundef 17, ptr noundef nonnull %req.i, i32 noundef 44, i1 noundef zeroext true, ptr noundef null) #7
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %req.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end121, %if.end90.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i, %if.end121 ], [ %call.i167, %if.end90.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %req) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_get_sar_power(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt7603_reg_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__mt76_poll_msec(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mt76_mcu_send_firmware(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt76_mcu_send_and_get_msg(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight8(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !12, !14, !16, !18, !20, !22, !23, !24, !25, !27, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !62, !63}
!llvm.module.flags = !{!64, !65, !66, !67, !68, !69, !70, !71}
!llvm.ident = !{!72}

!0 = !{ptr @mt7603_mcu_init.mt7603_mcu_ops, !1, !"mt7603_mcu_ops", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/mediatek/mt76/mt7603/mcu.c", i32 220, i32 35}
!2 = !{ptr @mt7603_mcu_set_eeprom.req_fields, !3, !"req_fields", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/mediatek/mt76/mt7603/mcu.c", i32 239, i32 19}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/mediatek/mt76/mt7603/mcu.c", i32 24, i32 3}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @mt7603_mcu_parse_response._entry, !5, !"_entry", i1 false, i1 false}
!11 = !{ptr @mt7603_mcu_parse_response._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/mediatek/mt76/mt7603/mcu.c", i32 127, i32 15}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/mediatek/mt76/mt7603/mcu.c", i32 129, i32 15}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/mediatek/mt76/mt7603/mcu.c", i32 132, i32 15}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/mediatek/mt76/mt7603/mcu.c", i32 134, i32 15}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/mediatek/mt76/mt7603/mcu.c", i32 142, i32 3}
!22 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @mt7603_load_firmware._entry, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @mt7603_load_firmware._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/mediatek/mt76/mt7603/mcu.c", i32 150, i32 2}
!27 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @mt7603_load_firmware._entry.11, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @mt7603_load_firmware._entry_ptr.14, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.16, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/mediatek/mt76/mt7603/mcu.c", i32 151, i32 2}
!32 = !{ptr @mt7603_load_firmware._entry.15, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @mt7603_load_firmware._entry_ptr.17, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.19, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/mediatek/mt76/mt7603/mcu.c", i32 164, i32 3}
!36 = !{ptr @mt7603_load_firmware._entry.18, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @mt7603_load_firmware._entry_ptr.20, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.22, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/mediatek/mt76/mt7603/mcu.c", i32 169, i32 3}
!40 = !{ptr @mt7603_load_firmware._entry.21, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @mt7603_load_firmware._entry_ptr.23, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.25, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/mediatek/mt76/mt7603/mcu.c", i32 177, i32 3}
!44 = !{ptr @mt7603_load_firmware._entry.24, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @mt7603_load_firmware._entry_ptr.26, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.28, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/mediatek/mt76/mt7603/mcu.c", i32 184, i32 3}
!48 = !{ptr @mt7603_load_firmware._entry.27, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @mt7603_load_firmware._entry_ptr.29, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.31, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/mediatek/mt76/mt7603/mcu.c", i32 190, i32 3}
!52 = !{ptr @mt7603_load_firmware._entry.30, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @mt7603_load_firmware._entry_ptr.32, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.34, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/mediatek/mt76/mt7603/mcu.c", i32 195, i32 3}
!56 = !{ptr @mt7603_load_firmware._entry.33, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @mt7603_load_firmware._entry_ptr.35, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.36, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/mediatek/mt76/mt7603/mcu.c", i32 209, i32 4}
!60 = !{ptr @.str.38, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/mediatek/mt76/mt7603/mcu.c", i32 210, i32 2}
!62 = !{ptr @mt7603_load_firmware._entry.37, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @mt7603_load_firmware._entry_ptr.39, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{i32 1, !"wchar_size", i32 2}
!65 = !{i32 1, !"min_enum_size", i32 4}
!66 = !{i32 8, !"branch-target-enforcement", i32 0}
!67 = !{i32 8, !"sign-return-address", i32 0}
!68 = !{i32 8, !"sign-return-address-all", i32 0}
!69 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!70 = !{i32 7, !"uwtable", i32 1}
!71 = !{i32 7, !"frame-pointer", i32 2}
!72 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!73 = !{!"auto-init"}
