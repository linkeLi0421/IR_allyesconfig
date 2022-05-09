; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/wcn36xx/txrx.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/wcn36xx/txrx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.wcn36xx_rate = type { i16, i16, i32, i32, i32 }
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
%struct.atomic_t = type { i32 }
%struct.wcn36xx_rx_bd = type <{ i32, %struct.wcn36xx_pdu, i64, i32, i32, i32, [6 x i32], [12 x i8] }>
%struct.wcn36xx_pdu = type { i128 }
%struct.ieee80211_hdr = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, [6 x i8] }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.wcn36xx = type { ptr, ptr, %struct.list_head, ptr, ptr, i8, i8, i8, i8, [4 x i32], i8, [65 x i8], [65 x i8], i8, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, i32, %struct.mutex, ptr, i32, %struct.mutex, %struct.completion, ptr, %struct.work_struct, %struct.spinlock, %struct.list_head, ptr, i8, i8, i8, i8, ptr, %struct.mutex, i8, %struct.wcn36xx_dxe_ch, %struct.wcn36xx_dxe_ch, %struct.wcn36xx_dxe_ch, %struct.wcn36xx_dxe_ch, %struct.spinlock, i8, %struct.wcn36xx_dxe_mem_pool, %struct.wcn36xx_dxe_mem_pool, ptr, %struct.timer_list, %struct.sk_buff_head, i32, %struct.wcn36xx_dfs_entry }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wcn36xx_dxe_ch = type { %struct.spinlock, i32, ptr, i32, i32, ptr, ptr, i32, i32, i32, i32, i32 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.wcn36xx_dxe_mem_pool = type { i32, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.sk_buff_head = type { %union.anon.61, i32, %struct.spinlock }
%union.anon.61 = type { %struct.anon.62 }
%struct.anon.62 = type { ptr, ptr }
%struct.wcn36xx_dfs_entry = type { ptr, %struct.wcn36xx_dfs_file, %struct.wcn36xx_dfs_file }
%struct.wcn36xx_dfs_file = type { ptr, i32 }
%struct.sk_buff_list = type { ptr, ptr }
%struct.wcn36xx_tx_bd = type <{ i32, %struct.wcn36xx_pdu, i32, i32, i32, i32, i32 }>
%struct.wcn36xx_sta = type { %struct.list_head, ptr, i16, i16, i8, i8, i8, i8, i8, i8, %struct.wcn36xx_hal_supported_rates_v1, %struct.spinlock, [16 x i32], i32 }
%struct.wcn36xx_hal_supported_rates_v1 = type <{ i32, [4 x i16], [8 x i16], [3 x i16], i16, i32, [16 x i8], i16, i16, i16, i16, i16 }>
%struct.wcn36xx_vif = type { %struct.list_head, i8, i32, i8, i8, %struct.wcn36xx_hal_mac_ssid, i32, i32, i8, i8, i8, i8, [2 x %struct.in6_addr], [1 x i32], i32, %struct.anon.132, %struct.list_head, i32 }
%struct.wcn36xx_hal_mac_ssid = type { i8, [32 x i8] }
%struct.in6_addr = type { %union.anon.39 }
%union.anon.39 = type { [4 x i32] }
%struct.anon.132 = type { [16 x i8], [16 x i8], i64, i8 }

@wcn36xx_dbg_mask = external dso_local local_unnamed_addr global i32, align 4
@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"wcn36xx: BD   <<< \00", [45 x i8] zeroinitializer }, align 32
@wcn36xx_rx_skb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 325, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017wcn36xx: status.flags=%x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"wcn36xx_rx_skb\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/net/wireless/ath/wcn36xx/txrx.c\00", [56 x i8] zeroinitializer }, align 32
@wcn36xx_rx_skb._entry_ptr = internal global ptr @wcn36xx_rx_skb._entry, section ".printk_index", align 4
@ab_rx_ch_map = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"$(,048<@dhlptx|\80\84\88\8C\95\99\9D\A1\A5\90", [39 x i8] zeroinitializer }, align 32
@wcn36xx_rate_table = internal constant { [137 x %struct.wcn36xx_rate], [560 x i8] } { [137 x %struct.wcn36xx_rate] [%struct.wcn36xx_rate { i16 10, i16 0, i32 0, i32 0, i32 0 }, %struct.wcn36xx_rate { i16 20, i16 1, i32 0, i32 0, i32 0 }, %struct.wcn36xx_rate { i16 55, i16 2, i32 0, i32 0, i32 0 }, %struct.wcn36xx_rate { i16 110, i16 3, i32 0, i32 0, i32 0 }, %struct.wcn36xx_rate { i16 10, i16 0, i32 0, i32 1, i32 0 }, %struct.wcn36xx_rate { i16 20, i16 1, i32 0, i32 1, i32 0 }, %struct.wcn36xx_rate { i16 55, i16 2, i32 0, i32 1, i32 0 }, %struct.wcn36xx_rate { i16 110, i16 3, i32 0, i32 1, i32 0 }, %struct.wcn36xx_rate { i16 60, i16 4, i32 0, i32 0, i32 0 }, %struct.wcn36xx_rate { i16 90, i16 5, i32 0, i32 0, i32 0 }, %struct.wcn36xx_rate { i16 120, i16 6, i32 0, i32 0, i32 0 }, %struct.wcn36xx_rate { i16 180, i16 7, i32 0, i32 0, i32 0 }, %struct.wcn36xx_rate { i16 240, i16 8, i32 0, i32 0, i32 0 }, %struct.wcn36xx_rate { i16 360, i16 9, i32 0, i32 0, i32 0 }, %struct.wcn36xx_rate { i16 480, i16 10, i32 0, i32 0, i32 0 }, %struct.wcn36xx_rate { i16 540, i16 11, i32 0, i32 0, i32 0 }, %struct.wcn36xx_rate { i16 65, i16 0, i32 1, i32 0, i32 0 }, %struct.wcn36xx_rate { i16 130, i16 1, i32 1, i32 0, i32 0 }, %struct.wcn36xx_rate { i16 195, i16 2, i32 1, i32 0, i32 0 }, %struct.wcn36xx_rate { i16 260, i16 3, i32 1, i32 0, i32 0 }, %struct.wcn36xx_rate { i16 390, i16 4, i32 1, i32 0, i32 0 }, %struct.wcn36xx_rate { i16 520, i16 5, i32 1, i32 0, i32 0 }, %struct.wcn36xx_rate { i16 585, i16 6, i32 1, i32 0, i32 0 }, %struct.wcn36xx_rate { i16 650, i16 7, i32 1, i32 0, i32 0 }, %struct.wcn36xx_rate { i16 72, i16 0, i32 1, i32 4, i32 0 }, %struct.wcn36xx_rate { i16 144, i16 1, i32 1, i32 4, i32 0 }, %struct.wcn36xx_rate { i16 217, i16 2, i32 1, i32 4, i32 0 }, %struct.wcn36xx_rate { i16 289, i16 3, i32 1, i32 4, i32 0 }, %struct.wcn36xx_rate { i16 434, i16 4, i32 1, i32 4, i32 0 }, %struct.wcn36xx_rate { i16 578, i16 5, i32 1, i32 4, i32 0 }, %struct.wcn36xx_rate { i16 650, i16 6, i32 1, i32 4, i32 0 }, %struct.wcn36xx_rate { i16 722, i16 7, i32 1, i32 4, i32 0 }, %struct.wcn36xx_rate { i16 65, i16 0, i32 1, i32 8, i32 0 }, %struct.wcn36xx_rate { i16 130, i16 1, i32 1, i32 8, i32 0 }, %struct.wcn36xx_rate { i16 195, i16 2, i32 1, i32 8, i32 0 }, %struct.wcn36xx_rate { i16 260, i16 3, i32 1, i32 8, i32 0 }, %struct.wcn36xx_rate { i16 390, i16 4, i32 1, i32 8, i32 0 }, %struct.wcn36xx_rate { i16 520, i16 5, i32 1, i32 8, i32 0 }, %struct.wcn36xx_rate { i16 585, i16 6, i32 1, i32 8, i32 0 }, %struct.wcn36xx_rate { i16 650, i16 7, i32 1, i32 8, i32 0 }, %struct.wcn36xx_rate { i16 135, i16 0, i32 1, i32 0, i32 3 }, %struct.wcn36xx_rate { i16 270, i16 1, i32 1, i32 0, i32 3 }, %struct.wcn36xx_rate { i16 405, i16 2, i32 1, i32 0, i32 3 }, %struct.wcn36xx_rate { i16 540, i16 3, i32 1, i32 0, i32 3 }, %struct.wcn36xx_rate { i16 810, i16 4, i32 1, i32 0, i32 3 }, %struct.wcn36xx_rate { i16 1080, i16 5, i32 1, i32 0, i32 3 }, %struct.wcn36xx_rate { i16 1215, i16 6, i32 1, i32 0, i32 3 }, %struct.wcn36xx_rate { i16 1350, i16 7, i32 1, i32 0, i32 3 }, %struct.wcn36xx_rate { i16 150, i16 0, i32 1, i32 4, i32 3 }, %struct.wcn36xx_rate { i16 300, i16 1, i32 1, i32 4, i32 3 }, %struct.wcn36xx_rate { i16 450, i16 2, i32 1, i32 4, i32 3 }, %struct.wcn36xx_rate { i16 600, i16 3, i32 1, i32 4, i32 3 }, %struct.wcn36xx_rate { i16 900, i16 4, i32 1, i32 4, i32 3 }, %struct.wcn36xx_rate { i16 1200, i16 5, i32 1, i32 4, i32 3 }, %struct.wcn36xx_rate { i16 1350, i16 6, i32 1, i32 4, i32 3 }, %struct.wcn36xx_rate { i16 1500, i16 7, i32 1, i32 4, i32 3 }, %struct.wcn36xx_rate { i16 135, i16 0, i32 1, i32 8, i32 3 }, %struct.wcn36xx_rate { i16 270, i16 1, i32 1, i32 8, i32 3 }, %struct.wcn36xx_rate { i16 405, i16 2, i32 1, i32 8, i32 3 }, %struct.wcn36xx_rate { i16 540, i16 3, i32 1, i32 8, i32 3 }, %struct.wcn36xx_rate { i16 810, i16 4, i32 1, i32 8, i32 3 }, %struct.wcn36xx_rate { i16 1080, i16 5, i32 1, i32 8, i32 3 }, %struct.wcn36xx_rate { i16 1215, i16 6, i32 1, i32 8, i32 3 }, %struct.wcn36xx_rate { i16 1350, i16 7, i32 1, i32 8, i32 3 }, %struct.wcn36xx_rate { i16 1350, i16 6, i32 1, i32 4, i32 3 }, %struct.wcn36xx_rate { i16 1350, i16 6, i32 1, i32 4, i32 3 }, %struct.wcn36xx_rate { i16 65, i16 0, i32 1, i32 0, i32 0 }, %struct.wcn36xx_rate { i16 130, i16 1, i32 1, i32 0, i32 0 }, %struct.wcn36xx_rate { i16 195, i16 2, i32 1, i32 0, i32 0 }, %struct.wcn36xx_rate { i16 260, i16 3, i32 1, i32 0, i32 0 }, %struct.wcn36xx_rate { i16 390, i16 4, i32 1, i32 0, i32 0 }, %struct.wcn36xx_rate { i16 520, i16 5, i32 1, i32 0, i32 0 }, %struct.wcn36xx_rate { i16 585, i16 6, i32 1, i32 0, i32 0 }, %struct.wcn36xx_rate { i16 650, i16 7, i32 1, i32 0, i32 0 }, %struct.wcn36xx_rate { i16 780, i16 8, i32 1, i32 0, i32 0 }, %struct.wcn36xx_rate { i16 1350, i16 6, i32 1, i32 4, i32 3 }, %struct.wcn36xx_rate { i16 1350, i16 6, i32 1, i32 4, i32 3 }, %struct.wcn36xx_rate { i16 1350, i16 6, i32 1, i32 4, i32 3 }, %struct.wcn36xx_rate { i16 1350, i16 6, i32 1, i32 4, i32 3 }, %struct.wcn36xx_rate { i16 1350, i16 6, i32 1, i32 4, i32 3 }, %struct.wcn36xx_rate { i16 1350, i16 6, i32 1, i32 4, i32 3 }, %struct.wcn36xx_rate { i16 1350, i16 6, i32 1, i32 4, i32 3 }, %struct.wcn36xx_rate { i16 1350, i16 6, i32 1, i32 4, i32 3 }, %struct.wcn36xx_rate { i16 1350, i16 6, i32 1, i32 4, i32 3 }, %struct.wcn36xx_rate { i16 655, i16 6, i32 1, i32 4, i32 0 }, %struct.wcn36xx_rate { i16 722, i16 7, i32 1, i32 4, i32 0 }, %struct.wcn36xx_rate { i16 866, i16 8, i32 1, i32 4, i32 0 }, %struct.wcn36xx_rate { i16 1350, i16 6, i32 1, i32 4, i32 3 }, %struct.wcn36xx_rate { i16 1350, i16 6, i32 1, i32 4, i32 3 }, %struct.wcn36xx_rate { i16 1350, i16 6, i32 1, i32 4, i32 3 }, %struct.wcn36xx_rate { i16 135, i16 0, i32 1, i32 0, i32 3 }, %struct.wcn36xx_rate { i16 270, i16 1, i32 1, i32 0, i32 3 }, %struct.wcn36xx_rate { i16 405, i16 2, i32 1, i32 0, i32 3 }, %struct.wcn36xx_rate { i16 540, i16 3, i32 1, i32 0, i32 3 }, %struct.wcn36xx_rate { i16 810, i16 4, i32 1, i32 0, i32 3 }, %struct.wcn36xx_rate { i16 1080, i16 5, i32 1, i32 0, i32 3 }, %struct.wcn36xx_rate { i16 1215, i16 6, i32 1, i32 0, i32 3 }, %struct.wcn36xx_rate { i16 1350, i16 7, i32 1, i32 0, i32 3 }, %struct.wcn36xx_rate { i16 1350, i16 7, i32 1, i32 0, i32 3 }, %struct.wcn36xx_rate { i16 1620, i16 8, i32 1, i32 0, i32 3 }, %struct.wcn36xx_rate { i16 1800, i16 9, i32 1, i32 0, i32 3 }, %struct.wcn36xx_rate { i16 1350, i16 6, i32 1, i32 4, i32 3 }, %struct.wcn36xx_rate { i16 1350, i16 6, i32 1, i32 4, i32 3 }, %struct.wcn36xx_rate { i16 1350, i16 6, i32 1, i32 4, i32 3 }, %struct.wcn36xx_rate { i16 1350, i16 6, i32 1, i32 4, i32 3 }, %struct.wcn36xx_rate { i16 1350, i16 6, i32 1, i32 4, i32 3 }, %struct.wcn36xx_rate { i16 1350, i16 6, i32 1, i32 4, i32 3 }, %struct.wcn36xx_rate { i16 1200, i16 5, i32 1, i32 4, i32 3 }, %struct.wcn36xx_rate { i16 1350, i16 6, i32 1, i32 4, i32 3 }, %struct.wcn36xx_rate { i16 1500, i16 7, i32 1, i32 4, i32 3 }, %struct.wcn36xx_rate { i16 1350, i16 6, i32 1, i32 4, i32 3 }, %struct.wcn36xx_rate { i16 1800, i16 8, i32 1, i32 4, i32 3 }, %struct.wcn36xx_rate { i16 2000, i16 9, i32 1, i32 4, i32 3 }, %struct.wcn36xx_rate { i16 1350, i16 6, i32 1, i32 4, i32 3 }, %struct.wcn36xx_rate { i16 292, i16 0, i32 1, i32 0, i32 4 }, %struct.wcn36xx_rate { i16 585, i16 1, i32 1, i32 0, i32 4 }, %struct.wcn36xx_rate { i16 877, i16 2, i32 1, i32 0, i32 4 }, %struct.wcn36xx_rate { i16 1170, i16 3, i32 1, i32 0, i32 4 }, %struct.wcn36xx_rate { i16 1755, i16 4, i32 1, i32 0, i32 4 }, %struct.wcn36xx_rate { i16 2340, i16 5, i32 1, i32 0, i32 4 }, %struct.wcn36xx_rate { i16 2632, i16 6, i32 1, i32 0, i32 4 }, %struct.wcn36xx_rate { i16 2925, i16 7, i32 1, i32 0, i32 4 }, %struct.wcn36xx_rate { i16 1350, i16 6, i32 1, i32 4, i32 3 }, %struct.wcn36xx_rate { i16 3510, i16 8, i32 1, i32 0, i32 4 }, %struct.wcn36xx_rate { i16 3900, i16 9, i32 1, i32 0, i32 4 }, %struct.wcn36xx_rate { i16 1350, i16 6, i32 1, i32 4, i32 3 }, %struct.wcn36xx_rate { i16 1350, i16 6, i32 1, i32 4, i32 3 }, %struct.wcn36xx_rate { i16 1350, i16 6, i32 1, i32 4, i32 3 }, %struct.wcn36xx_rate { i16 1350, i16 6, i32 1, i32 4, i32 3 }, %struct.wcn36xx_rate { i16 1350, i16 6, i32 1, i32 4, i32 3 }, %struct.wcn36xx_rate { i16 1350, i16 6, i32 1, i32 4, i32 3 }, %struct.wcn36xx_rate { i16 1350, i16 6, i32 1, i32 4, i32 3 }, %struct.wcn36xx_rate { i16 2925, i16 6, i32 1, i32 4, i32 4 }, %struct.wcn36xx_rate { i16 3250, i16 7, i32 1, i32 4, i32 4 }, %struct.wcn36xx_rate { i16 1350, i16 6, i32 1, i32 4, i32 3 }, %struct.wcn36xx_rate { i16 3900, i16 8, i32 2, i32 4, i32 4 }, %struct.wcn36xx_rate { i16 4333, i16 9, i32 2, i32 4, i32 4 }], [560 x i8] zeroinitializer }, align 32
@wcn36xx_rx_skb._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.3, ptr @.str.4, i32 375, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\017wcn36xx: beacon skb %p len %d fc %04x sn %d\0A\00", [49 x i8] zeroinitializer }, align 32
@wcn36xx_rx_skb._entry_ptr.7 = internal global ptr @wcn36xx_rx_skb._entry.5, section ".printk_index", align 4
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"wcn36xx: SKB <<< \00", [46 x i8] zeroinitializer }, align 32
@wcn36xx_rx_skb._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.3, ptr @.str.4, i32 380, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017wcn36xx: rx skb %p len %d fc %04x sn %d\0A\00", [53 x i8] zeroinitializer }, align 32
@wcn36xx_rx_skb._entry_ptr.11 = internal global ptr @wcn36xx_rx_skb._entry.9, section ".printk_index", align 4
@wcn36xx_rx_skb._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 389, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013wcn36xx: ERROR Discarding non complete chain\00", [49 x i8] zeroinitializer }, align 32
@wcn36xx_rx_skb._entry_ptr.14 = internal global ptr @wcn36xx_rx_skb._entry.12, section ".printk_index", align 4
@wcn36xx_rx_skb._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.3, ptr @.str.4, i32 410, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"\013wcn36xx: ERROR Drop frame! skb:%p len:%u hoff:%u doff:%u asf=%u esf=%u lsf=%u\0A\00", [47 x i8] zeroinitializer }, align 32
@wcn36xx_rx_skb._entry_ptr.17 = internal global ptr @wcn36xx_rx_skb._entry.15, section ".printk_index", align 4
@wcn36xx_start_tx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.4, i32 630, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\017wcn36xx: tx skb %p len %d fc %04x sn %d %s %s\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"wcn36xx_start_tx\00", [47 x i8] zeroinitializer }, align 32
@wcn36xx_start_tx._entry_ptr = internal global ptr @wcn36xx_start_tx._entry, section ".printk_index", align 4
@.str.20 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"low\00", [28 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"high\00", [27 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"bcast\00", [26 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ucast\00", [26 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"wcn36xx: \00", [22 x i8] zeroinitializer }, align 32
@wcn36xx_start_tx._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.19, ptr @.str.4, i32 637, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017wcn36xx: TX_ACK status requested\0A\00", [60 x i8] zeroinitializer }, align 32
@wcn36xx_start_tx._entry_ptr.27 = internal global ptr @wcn36xx_start_tx._entry.25, section ".printk_index", align 4
@get_vif_by_addr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.4, i32 441, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\014wcn36xx: WARNING vif %pM not found\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"get_vif_by_addr\00", [16 x i8] zeroinitializer }, align 32
@get_vif_by_addr._entry_ptr = internal global ptr @get_vif_by_addr._entry, section ".printk_index", align 4
@wcn36xx_set_tx_mgmt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.4, i32 580, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\014wcn36xx: WARNING frame control type unknown\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"wcn36xx_set_tx_mgmt\00", [44 x i8] zeroinitializer }, align 32
@wcn36xx_set_tx_mgmt._entry_ptr = internal global ptr @wcn36xx_set_tx_mgmt._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 20480, i64 32768]
@__sancov_gen_cov_switch_values.32 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 7]
@__sancov_gen_cov_switch_values.33 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 6, i64 7]
@__sancov_gen_cov_switch_values.34 = internal global [4 x i64] [i64 2, i64 12, i64 0, i64 1024]
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 285, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 325, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant [13 x i8] c"ab_rx_ch_map\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 37, i32 17 }
@___asan_gen_.56 = private unnamed_addr constant [19 x i8] c"wcn36xx_rate_table\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 41, i32 34 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 374, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 376, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 379, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 389, i32 4 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 408, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 626, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 632, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 637, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 441, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.131 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.132 = private constant [43 x i8] c"../drivers/net/wireless/ath/wcn36xx/txrx.c\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 580, i32 3 }
@llvm.compiler.used = appending global [42 x ptr] [ptr @get_vif_by_addr._entry, ptr @get_vif_by_addr._entry_ptr, ptr @wcn36xx_rx_skb._entry, ptr @wcn36xx_rx_skb._entry.12, ptr @wcn36xx_rx_skb._entry.15, ptr @wcn36xx_rx_skb._entry.5, ptr @wcn36xx_rx_skb._entry.9, ptr @wcn36xx_rx_skb._entry_ptr, ptr @wcn36xx_rx_skb._entry_ptr.11, ptr @wcn36xx_rx_skb._entry_ptr.14, ptr @wcn36xx_rx_skb._entry_ptr.17, ptr @wcn36xx_rx_skb._entry_ptr.7, ptr @wcn36xx_set_tx_mgmt._entry, ptr @wcn36xx_set_tx_mgmt._entry_ptr, ptr @wcn36xx_start_tx._entry, ptr @wcn36xx_start_tx._entry.25, ptr @wcn36xx_start_tx._entry_ptr, ptr @wcn36xx_start_tx._entry_ptr.27, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @ab_rx_ch_map, ptr @wcn36xx_rate_table, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_rx_skb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab_rx_ch_map to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_rate_table to i32), i32 2192, i32 2752, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_rx_skb._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_rx_skb._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_rx_skb._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_rx_skb._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_start_tx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_start_tx._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_vif_by_addr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_set_tx_mgmt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wcn36xx_rx_skb(ptr noundef %wcn, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wcn36xx_dbg_mask to i32))
  %2 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and = and i32 %2, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.then

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @print_hex_dump(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 2, i32 noundef 32, i32 noundef 1, ptr noundef %1, i32 noundef 76, i1 noundef zeroext false) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %pdu = getelementptr inbounds %struct.wcn36xx_rx_bd, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %pdu to i32
  call void @__asan_loadN_noabort(i32 %3, i32 16)
  %bf.load = load i128, ptr %pdu, align 4
  %bf.lshr = lshr i128 %bf.load, 48
  %4 = trunc i128 %bf.lshr to i32
  %bf.cast = and i32 %4, 511
  %bf.lshr3 = lshr i128 %bf.load, 40
  %5 = trunc i128 %bf.lshr3 to i32
  %bf.cast5 = and i32 %5, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.cast, i32 %bf.cast5)
  %cmp.not = icmp ugt i32 %bf.cast, %bf.cast5
  br i1 %cmp.not, label %lor.lhs.false, label %do.end.do.end361_crit_edge

do.end.do.end361_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end361

lor.lhs.false:                                    ; preds = %do.end
  %6 = trunc i128 %bf.load to i32
  %bf.cast9 = and i32 %6, 65535
  %bf.lshr12 = lshr i128 %bf.load, 32
  %7 = trunc i128 %bf.lshr12 to i32
  %bf.cast14 = and i32 %7, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.cast9, i32 %bf.cast14)
  %cmp15 = icmp ult i32 %bf.cast9, %bf.cast14
  br i1 %cmp15, label %lor.lhs.false.do.end361_crit_edge, label %if.end17

lor.lhs.false.do.end361_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end361

if.end17:                                         ; preds = %lor.lhs.false
  %asf = getelementptr inbounds %struct.wcn36xx_rx_bd, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %asf to i32
  call void @__asan_loadN_noabort(i32 %8, i32 12)
  %bf.load18 = load i96, ptr %asf, align 4
  %9 = and i96 %bf.load18, 3
  %10 = icmp eq i96 %9, 1
  br i1 %10, label %if.then27, label %if.end56

if.then27:                                        ; preds = %if.end17
  %add = add nuw nsw i32 %bf.cast, %bf.cast9
  call void @__sanitizer_cov_trace_const_cmp4(i32 3872, i32 %add)
  %cmp37 = icmp ugt i32 %add, 3872
  br i1 %cmp37, label %if.then27.do.end361_crit_edge, label %if.end39

if.then27.do.end361_crit_edge:                    ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end361

if.end39:                                         ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call ptr @skb_put(ptr noundef %skb, i32 noundef %add) #6
  %11 = ptrtoint ptr %pdu to i32
  call void @__asan_loadN_noabort(i32 %11, i32 16)
  %bf.load51 = load i128, ptr %pdu, align 4
  %bf.lshr52 = lshr i128 %bf.load51, 48
  %12 = trunc i128 %bf.lshr52 to i32
  %bf.cast54 = and i32 %12, 511
  %call55 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef %bf.cast54) #6
  br label %done

if.end56:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_const_cmp4(i32 76, i32 %bf.cast5)
  %cmp62 = icmp ult i32 %bf.cast5, 76
  br i1 %cmp62, label %if.end56.do.end361_crit_edge, label %lor.lhs.false63

if.end56.do.end361_crit_edge:                     ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end361

lor.lhs.false63:                                  ; preds = %if.end56
  %add73 = add nuw nsw i32 %bf.cast5, %bf.cast9
  call void @__sanitizer_cov_trace_const_cmp4(i32 3872, i32 %add73)
  %cmp74 = icmp ugt i32 %add73, 3872
  br i1 %cmp74, label %lor.lhs.false63.do.end361_crit_edge, label %if.end76

lor.lhs.false63.do.end361_crit_edge:              ; preds = %lor.lhs.false63
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end361

if.end76:                                         ; preds = %lor.lhs.false63
  %call87 = tail call ptr @skb_put(ptr noundef %skb, i32 noundef %add73) #6
  %13 = ptrtoint ptr %pdu to i32
  call void @__asan_loadN_noabort(i32 %13, i32 16)
  %bf.load89 = load i128, ptr %pdu, align 4
  %bf.lshr90 = lshr i128 %bf.load89, 40
  %14 = trunc i128 %bf.lshr90 to i32
  %bf.cast92 = and i32 %14, 255
  %call93 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef %bf.cast92) #6
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %16, align 2
  %19 = tail call i16 @llvm.bswap.i16(i16 %18)
  %seq_ctrl = getelementptr inbounds %struct.ieee80211_hdr, ptr %16, i32 0, i32 5
  %20 = ptrtoint ptr %seq_ctrl to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %seq_ctrl, align 2
  %22 = and i16 %21, -3841
  %23 = tail call i16 @llvm.bswap.i16(i16 %22)
  %24 = lshr exact i16 %23, 4
  %phy_stat0.i = getelementptr inbounds %struct.wcn36xx_rx_bd, ptr %1, i32 0, i32 3
  %25 = ptrtoint ptr %phy_stat0.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %phy_stat0.i, align 4
  %shr.i = lshr i32 %26, 24
  %27 = trunc i32 %shr.i to i8
  %.neg = add i8 %27, -100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wcn36xx_dbg_mask to i32))
  %28 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and101 = and i32 %28, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and101)
  %tobool102.not = icmp eq i32 %and101, 0
  br i1 %tobool102.not, label %if.end76.do.end111_crit_edge, label %do.end106

if.end76.do.end111_crit_edge:                     ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end111

do.end106:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #8
  %call108 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 26) #9
  br label %do.end111

do.end111:                                        ; preds = %do.end106, %if.end76.do.end111_crit_edge
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %bf.load112 = load i32, ptr %1, align 4
  %30 = and i32 %bf.load112, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool115.not = icmp eq i32 %30, 0
  br i1 %tobool115.not, label %if.else162, label %if.then116

if.then116:                                       ; preds = %do.end111
  %31 = lshr i32 %bf.load112, 16
  %shl = and i32 %31, 16
  %bf.lshr121 = lshr i32 %bf.load112, 15
  %bf.clear122 = and i32 %bf.lshr121, 15
  %add123 = or i32 %shl, %bf.clear122
  %32 = ptrtoint ptr %asf to i32
  call void @__asan_loadN_noabort(i32 %32, i32 12)
  %bf.load125 = load i96, ptr %asf, align 4
  %33 = and i96 %bf.load125, 824633720832
  %cmp129.not = icmp eq i96 %33, 274877906944
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %add123)
  %cmp133 = icmp ugt i32 %add123, 25
  %or.cond507 = select i1 %cmp129.not, i1 true, i1 %cmp133
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add123)
  %cmp137.not = icmp eq i32 %add123, 0
  %or.cond508 = select i1 %or.cond507, i1 true, i1 %cmp137.not
  br i1 %or.cond508, label %if.else, label %if.then139

if.then139:                                       ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #8
  %sub141 = add nsw i32 %add123, -1
  %arrayidx = getelementptr [25 x i8], ptr @ab_rx_ch_map, i32 0, i32 %sub141
  %34 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx, align 1
  %conv142 = zext i8 %35 to i32
  %call.i = tail call i32 @ieee80211_channel_to_freq_khz(i32 noundef %conv142, i32 noundef 1) #6
  %div.i = udiv i32 %call.i, 1000
  %conv146 = trunc i32 %div.i to i16
  %bf.value = and i16 %conv146, 8191
  br label %if.end177

if.else:                                          ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #8
  %call.i512 = tail call i32 @ieee80211_channel_to_freq_khz(i32 noundef %add123, i32 noundef 0) #6
  %div.i513 = udiv i32 %call.i512, 1000
  %conv154 = trunc i32 %div.i513 to i16
  br label %if.end177

if.else162:                                       ; preds = %do.end111
  call void @__sanitizer_cov_trace_pc() #8
  %36 = ptrtoint ptr %wcn to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %wcn, align 4
  %chandef = getelementptr inbounds %struct.ieee80211_conf, ptr %37, i32 0, i32 7
  %38 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %chandef, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %39, align 4
  %conv164 = trunc i32 %41 to i8
  %center_freq = getelementptr inbounds %struct.ieee80211_channel, ptr %39, i32 0, i32 1
  %42 = ptrtoint ptr %center_freq to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %center_freq, align 4
  %conv170 = trunc i32 %43 to i16
  br label %if.end177

if.end177:                                        ; preds = %if.else162, %if.else, %if.then139
  %status.sroa.11.1.in = phi i16 [ %conv170, %if.else162 ], [ %bf.value, %if.then139 ], [ %conv154, %if.else ]
  %status.sroa.35.1 = phi i8 [ %conv164, %if.else162 ], [ 1, %if.then139 ], [ 0, %if.else ]
  %status.sroa.11.1 = shl i16 %status.sroa.11.1.in, 3
  %rate_id = getelementptr inbounds %struct.wcn36xx_rx_bd, ptr %1, i32 0, i32 2
  %44 = ptrtoint ptr %rate_id to i32
  call void @__asan_loadN_noabort(i32 %44, i32 8)
  %bf.load178 = load i64, ptr %rate_id, align 4
  %45 = trunc i64 %bf.load178 to i32
  %bf.cast180 = and i32 %45, 511
  call void @__sanitizer_cov_trace_const_cmp4(i32 137, i32 %bf.cast180)
  %cmp181 = icmp ult i32 %bf.cast180, 137
  br i1 %cmp181, label %if.then183, label %if.end177.if.end240_crit_edge

if.end177.if.end240_crit_edge:                    ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end240

if.then183:                                       ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #8
  %encoding = getelementptr [137 x %struct.wcn36xx_rate], ptr @wcn36xx_rate_table, i32 0, i32 %bf.cast180, i32 2
  %46 = ptrtoint ptr %encoding to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %encoding, align 4
  %48 = trunc i32 %47 to i16
  %bf.shl193 = shl i16 %48, 14
  %encoding_flags = getelementptr [137 x %struct.wcn36xx_rate], ptr @wcn36xx_rate_table, i32 0, i32 %bf.cast180, i32 3
  %49 = ptrtoint ptr %encoding_flags to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %encoding_flags, align 4
  %conv196 = trunc i32 %50 to i8
  %bw = getelementptr [137 x %struct.wcn36xx_rate], ptr @wcn36xx_rate_table, i32 0, i32 %bf.cast180, i32 4
  %51 = ptrtoint ptr %bw to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %bw, align 4
  %53 = trunc i32 %52 to i16
  %bf.value200 = shl i16 %53, 11
  %bf.shl201 = and i16 %bf.value200, 14336
  %bf.set203 = or i16 %bf.shl201, %bf.shl193
  %mcs_or_legacy_index = getelementptr [137 x %struct.wcn36xx_rate], ptr @wcn36xx_rate_table, i32 0, i32 %bf.cast180, i32 1
  %54 = ptrtoint ptr %mcs_or_legacy_index to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %mcs_or_legacy_index, align 2
  %conv205 = trunc i16 %55 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %status.sroa.35.1)
  %cmp208 = icmp ne i8 %status.sroa.35.1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %bf.cast180)
  %cmp216 = icmp ugt i32 %bf.cast180, 15
  %or.cond509 = select i1 %cmp208, i1 true, i1 %cmp216
  %conv205.mask = and i16 %55, 252
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv205.mask)
  %cmp221.not = icmp eq i16 %conv205.mask, 0
  %or.cond510 = select i1 %or.cond509, i1 true, i1 %cmp221.not
  %sub226 = add i8 %conv205, -4
  %spec.select = select i1 %or.cond510, i8 %conv205, i8 %sub226
  br label %if.end240

if.end240:                                        ; preds = %if.then183, %if.end177.if.end240_crit_edge
  %status.sroa.17.0 = phi i8 [ 0, %if.end177.if.end240_crit_edge ], [ %conv196, %if.then183 ]
  %status.sroa.19.0 = phi i16 [ 0, %if.end177.if.end240_crit_edge ], [ %bf.set203, %if.then183 ]
  %status.sroa.28.0 = phi i8 [ 0, %if.end177.if.end240_crit_edge ], [ %spec.select, %if.then183 ]
  %status.sroa.33.0 = phi i8 [ 0, %if.end177.if.end240_crit_edge ], [ 1, %if.then183 ]
  %56 = ptrtoint ptr %16 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %16, align 2
  %58 = and i16 %57, -1024
  %59 = zext i16 %58 to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values)
  switch i16 %58, label %if.end240.if.end250_crit_edge [
    i16 -32768, label %if.end240.if.then248_crit_edge
    i16 20480, label %if.end240.if.then248_crit_edge529
  ]

if.end240.if.then248_crit_edge529:                ; preds = %if.end240
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then248

if.end240.if.then248_crit_edge:                   ; preds = %if.end240
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then248

if.end240.if.end250_crit_edge:                    ; preds = %if.end240
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end250

if.then248:                                       ; preds = %if.end240.if.then248_crit_edge, %if.end240.if.then248_crit_edge529
  %call.i.i = tail call i64 @ktime_get_with_offset(i32 noundef 1) #6
  br label %if.end250

if.end250:                                        ; preds = %if.then248, %if.end240.if.end250_crit_edge
  %status.sroa.6.0 = phi i64 [ %call.i.i, %if.then248 ], [ 0, %if.end240.if.end250_crit_edge ]
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %60 = ptrtoint ptr %cb.i to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 10, ptr %cb.i, align 8
  %status.sroa.6.0.call251.sroa_idx = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %61 = ptrtoint ptr %status.sroa.6.0.call251.sroa_idx to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 %status.sroa.6.0, ptr %status.sroa.6.0.call251.sroa_idx, align 8
  %status.sroa.7.0.call251.sroa_idx = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 16
  %62 = ptrtoint ptr %status.sroa.7.0.call251.sroa_idx to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 0, ptr %status.sroa.7.0.call251.sroa_idx, align 8
  %status.sroa.7446.0.call251.sroa_idx = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %63 = ptrtoint ptr %status.sroa.7446.0.call251.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 26, ptr %status.sroa.7446.0.call251.sroa_idx, align 8
  %status.sroa.11.0.call251.sroa_idx = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %64 = ptrtoint ptr %status.sroa.11.0.call251.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %status.sroa.11.1, ptr %status.sroa.11.0.call251.sroa_idx, align 4
  %status.sroa.17.0.call251.sroa_idx = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 30
  %65 = ptrtoint ptr %status.sroa.17.0.call251.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %status.sroa.17.0, ptr %status.sroa.17.0.call251.sroa_idx, align 2
  %status.sroa.19.0.call251.sroa_idx = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 31
  %66 = ptrtoint ptr %status.sroa.19.0.call251.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %66, i32 2)
  store i16 %status.sroa.19.0, ptr %status.sroa.19.0.call251.sroa_idx, align 1
  %status.sroa.28.0.call251.sroa_idx = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 33
  %67 = ptrtoint ptr %status.sroa.28.0.call251.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %status.sroa.28.0, ptr %status.sroa.28.0.call251.sroa_idx, align 1
  %status.sroa.33.0.call251.sroa_idx = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 34
  %68 = ptrtoint ptr %status.sroa.33.0.call251.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %status.sroa.33.0, ptr %status.sroa.33.0.call251.sroa_idx, align 2
  %status.sroa.34.0.call251.sroa_idx = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 35
  %69 = ptrtoint ptr %status.sroa.34.0.call251.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 0, ptr %status.sroa.34.0.call251.sroa_idx, align 1
  %status.sroa.35.0.call251.sroa_idx = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 36
  %70 = ptrtoint ptr %status.sroa.35.0.call251.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %status.sroa.35.1, ptr %status.sroa.35.0.call251.sroa_idx, align 4
  %status.sroa.41.0.call251.sroa_idx = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 37
  %71 = ptrtoint ptr %status.sroa.41.0.call251.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 1, ptr %status.sroa.41.0.call251.sroa_idx, align 1
  %status.sroa.42.0.call251.sroa_idx = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 38
  %72 = ptrtoint ptr %status.sroa.42.0.call251.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %.neg, ptr %status.sroa.42.0.call251.sroa_idx, align 2
  %status.sroa.43.0.call251.sroa_idx = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 39
  %73 = call ptr @memset(ptr %status.sroa.43.0.call251.sroa_idx, i32 0, i32 9)
  %74 = ptrtoint ptr %16 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %16, align 2
  %76 = and i16 %75, -1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %76)
  %cmp.i515 = icmp eq i16 %76, -32768
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wcn36xx_dbg_mask to i32))
  %77 = load i32, ptr @wcn36xx_dbg_mask, align 4
  br i1 %cmp.i515, label %do.body255, label %do.body279

do.body255:                                       ; preds = %if.end250
  %and256 = and i32 %77, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and256)
  %tobool257.not = icmp eq i32 %and256, 0
  br i1 %tobool257.not, label %do.body255.do.body269_crit_edge, label %do.end261

do.body255.do.body269_crit_edge:                  ; preds = %do.body255
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body269

do.end261:                                        ; preds = %do.body255
  call void @__sanitizer_cov_trace_pc() #8
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %78 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %len, align 4
  %conv263 = zext i16 %19 to i32
  %conv264 = zext i16 %24 to i32
  %call265 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %skb, i32 noundef %79, i32 noundef %conv263, i32 noundef %conv264) #9
  br label %do.body269

do.body269:                                       ; preds = %do.end261, %do.body255.do.body269_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wcn36xx_dbg_mask to i32))
  %80 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and270 = and i32 %80, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and270)
  %tobool271.not = icmp eq i32 %and270, 0
  br i1 %tobool271.not, label %do.body269.done_crit_edge, label %if.then272

do.body269.done_crit_edge:                        ; preds = %do.body269
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

if.then272:                                       ; preds = %do.body269
  call void @__sanitizer_cov_trace_pc() #8
  %81 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %data, align 4
  %len274 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %83 = ptrtoint ptr %len274 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %len274, align 4
  tail call void @print_hex_dump(ptr noundef nonnull @.str, ptr noundef nonnull @.str.8, i32 noundef 2, i32 noundef 32, i32 noundef 1, ptr noundef %82, i32 noundef %84, i1 noundef zeroext false) #6
  br label %done

do.body279:                                       ; preds = %if.end250
  %and280 = and i32 %77, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and280)
  %tobool281.not = icmp eq i32 %and280, 0
  br i1 %tobool281.not, label %do.body279.do.body294_crit_edge, label %do.end285

do.body279.do.body294_crit_edge:                  ; preds = %do.body279
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body294

do.end285:                                        ; preds = %do.body279
  call void @__sanitizer_cov_trace_pc() #8
  %len287 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %85 = ptrtoint ptr %len287 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %len287, align 4
  %conv288 = zext i16 %19 to i32
  %conv289 = zext i16 %24 to i32
  %call290 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %skb, i32 noundef %86, i32 noundef %conv288, i32 noundef %conv289) #9
  br label %do.body294

do.body294:                                       ; preds = %do.end285, %do.body279.do.body294_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wcn36xx_dbg_mask to i32))
  %87 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and295 = and i32 %87, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and295)
  %tobool296.not = icmp eq i32 %and295, 0
  br i1 %tobool296.not, label %do.body294.done_crit_edge, label %if.then297

do.body294.done_crit_edge:                        ; preds = %do.body294
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

if.then297:                                       ; preds = %do.body294
  call void @__sanitizer_cov_trace_pc() #8
  %88 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %data, align 4
  %len299 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %90 = ptrtoint ptr %len299 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %len299, align 4
  tail call void @print_hex_dump(ptr noundef nonnull @.str, ptr noundef nonnull @.str.8, i32 noundef 2, i32 noundef 32, i32 noundef 1, ptr noundef %89, i32 noundef %91, i1 noundef zeroext false) #6
  br label %done

done:                                             ; preds = %if.then297, %do.body294.done_crit_edge, %if.then272, %do.body269.done_crit_edge, %if.end39
  %92 = ptrtoint ptr %asf to i32
  call void @__asan_loadN_noabort(i32 %92, i32 12)
  %bf.load305 = load i96, ptr %asf, align 4
  %bf.cast307505 = and i96 %bf.load305, 1
  %tobool308.not = icmp eq i96 %bf.cast307505, 0
  %93 = and i96 %bf.load305, 6
  %.not = icmp eq i96 %93, 6
  %or.cond = or i1 %tobool308.not, %.not
  br i1 %or.cond, label %done.if.end357_crit_edge, label %if.then325, !prof !65

done.if.end357_crit_edge:                         ; preds = %done
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end357

if.then325:                                       ; preds = %done
  %94 = and i96 %bf.load305, 2
  %tobool320 = icmp eq i96 %94, 0
  br i1 %tobool320, label %if.then325.if.end342_crit_edge, label %land.lhs.true332

if.then325.if.end342_crit_edge:                   ; preds = %if.then325
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end342

land.lhs.true332:                                 ; preds = %if.then325
  %amsdu = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 50
  %95 = ptrtoint ptr %amsdu to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %amsdu, align 4
  %cmp.i516.not = icmp eq ptr %96, %amsdu
  br i1 %cmp.i516.not, label %land.lhs.true332.if.end342_crit_edge, label %do.end338

land.lhs.true332.if.end342_crit_edge:             ; preds = %land.lhs.true332
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end342

do.end338:                                        ; preds = %land.lhs.true332
  call void @__sanitizer_cov_trace_pc() #8
  %call340 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #9
  tail call fastcc void @__skb_queue_purge_irq(ptr noundef %amsdu)
  br label %if.end342

if.end342:                                        ; preds = %do.end338, %land.lhs.true332.if.end342_crit_edge, %if.then325.if.end342_crit_edge
  %amsdu343 = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 50
  %prev.i.i = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 50, i32 0, i32 0, i32 1
  %97 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %prev.i.i, align 4
  %99 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %99)
  store volatile ptr %amsdu343, ptr %skb, align 8
  %prev10.i.i.i = getelementptr inbounds %struct.anon.41, ptr %skb, i32 0, i32 1
  %100 = ptrtoint ptr %prev10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store volatile ptr %98, ptr %prev10.i.i.i, align 4
  store volatile ptr %skb, ptr %prev.i.i, align 4
  %101 = ptrtoint ptr %98 to i32
  call void @__asan_store4_noabort(i32 %101)
  store volatile ptr %skb, ptr %98, align 4
  %qlen.i.i.i = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 50, i32 1
  %102 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %qlen.i.i.i, align 4
  %add.i.i.i = add i32 %103, 1
  store volatile i32 %add.i.i.i, ptr %qlen.i.i.i, align 4
  %104 = ptrtoint ptr %asf to i32
  call void @__asan_loadN_noabort(i32 %104, i32 12)
  %bf.load345 = load i96, ptr %asf, align 4
  %105 = and i96 %bf.load345, 4
  %tobool349.not = icmp eq i96 %105, 0
  br i1 %tobool349.not, label %if.end342.cleanup_crit_edge, label %if.end351

if.end342.cleanup_crit_edge:                      ; preds = %if.end342
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end351:                                        ; preds = %if.end342
  %106 = ptrtoint ptr %amsdu343 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %amsdu343, align 4
  %cmp.i.i.i = icmp eq ptr %107, %amsdu343
  %spec.store.select.i.i.i = select i1 %cmp.i.i.i, ptr null, ptr %107
  %tobool.not.i.i = icmp eq ptr %spec.store.select.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end351.__skb_dequeue.exit.i_crit_edge, label %if.then.i.i

if.end351.__skb_dequeue.exit.i_crit_edge:         ; preds = %if.end351
  call void @__sanitizer_cov_trace_pc() #8
  br label %__skb_dequeue.exit.i

if.then.i.i:                                      ; preds = %if.end351
  call void @__sanitizer_cov_trace_pc() #8
  %108 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store volatile i32 %103, ptr %qlen.i.i.i, align 4
  %109 = ptrtoint ptr %spec.store.select.i.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %spec.store.select.i.i.i, align 8
  %prev9.i.i.i = getelementptr inbounds %struct.anon.41, ptr %spec.store.select.i.i.i, i32 0, i32 1
  %111 = ptrtoint ptr %prev9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %spec.store.select.i.i.i, align 8
  %prev17.i.i.i = getelementptr inbounds %struct.anon.41, ptr %110, i32 0, i32 1
  %113 = ptrtoint ptr %prev17.i.i.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store volatile ptr %112, ptr %prev17.i.i.i, align 4
  %114 = ptrtoint ptr %112 to i32
  call void @__asan_store4_noabort(i32 %114)
  store volatile ptr %110, ptr %112, align 8
  br label %__skb_dequeue.exit.i

__skb_dequeue.exit.i:                             ; preds = %if.then.i.i, %if.end351.__skb_dequeue.exit.i_crit_edge
  %115 = ptrtoint ptr %amsdu343 to i32
  call void @__asan_load4_noabort(i32 %115)
  %skb.039.i = load ptr, ptr %amsdu343, align 4
  %cmp.not40.i = icmp eq ptr %skb.039.i, %amsdu343
  br i1 %cmp.not40.i, label %__skb_dequeue.exit.i.for.end.i_crit_edge, label %__skb_dequeue.exit.i.for.body.i_crit_edge

__skb_dequeue.exit.i.for.body.i_crit_edge:        ; preds = %__skb_dequeue.exit.i
  br label %for.body.i

__skb_dequeue.exit.i.for.end.i_crit_edge:         ; preds = %__skb_dequeue.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %__skb_dequeue.exit.i.for.body.i_crit_edge
  %skb.042.i = phi ptr [ %skb.0.i, %for.body.i.for.body.i_crit_edge ], [ %skb.039.i, %__skb_dequeue.exit.i.for.body.i_crit_edge ]
  %total_len.041.i = phi i32 [ %add.i, %for.body.i.for.body.i_crit_edge ], [ 0, %__skb_dequeue.exit.i.for.body.i_crit_edge ]
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb.042.i, i32 0, i32 6
  %116 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %len.i, align 4
  %add.i = add i32 %117, %total_len.041.i
  %118 = ptrtoint ptr %skb.042.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %skb.0.i = load ptr, ptr %skb.042.i, align 4
  %cmp.not.i = icmp eq ptr %skb.0.i, %amsdu343
  br i1 %cmp.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %__skb_dequeue.exit.i.for.end.i_crit_edge
  %total_len.0.lcssa.i = phi i32 [ 0, %__skb_dequeue.exit.i.for.end.i_crit_edge ], [ %add.i, %for.body.i.for.end.i_crit_edge ]
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i.i.i, i32 0, i32 7
  %119 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %tobool.i.not.i.i = icmp eq i32 %120, 0
  br i1 %tobool.i.not.i.i, label %cond.false.i.i, label %for.end.i.skb_tailroom.exit.i_crit_edge

for.end.i.skb_tailroom.exit.i_crit_edge:          ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %skb_tailroom.exit.i

cond.false.i.i:                                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i.i.i, i32 0, i32 17
  %121 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %end.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i.i.i, i32 0, i32 16
  %123 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %122 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %124 to i32
  %sub.ptr.sub.i.neg.i = sub i32 %sub.ptr.rhs.cast.i.i, %sub.ptr.lhs.cast.i.i
  br label %skb_tailroom.exit.i

skb_tailroom.exit.i:                              ; preds = %cond.false.i.i, %for.end.i.skb_tailroom.exit.i_crit_edge
  %cond.i.neg.i = phi i32 [ %sub.ptr.sub.i.neg.i, %cond.false.i.i ], [ 0, %for.end.i.skb_tailroom.exit.i_crit_edge ]
  %sub.i518 = add i32 %cond.i.neg.i, %total_len.0.lcssa.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i518)
  %cmp3.i = icmp sgt i32 %sub.i518, 0
  br i1 %cmp3.i, label %land.lhs.true.i, label %skb_tailroom.exit.i.if.end.i_crit_edge

skb_tailroom.exit.i.if.end.i_crit_edge:           ; preds = %skb_tailroom.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %skb_tailroom.exit.i
  %call4.i = tail call i32 @pskb_expand_head(ptr noundef %spec.store.select.i.i.i, i32 noundef 0, i32 noundef %sub.i518, i32 noundef 2592) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp slt i32 %call4.i, 0
  br i1 %cmp5.i, label %wcn36xx_unchain_msdu.exit.thread, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

wcn36xx_unchain_msdu.exit.thread:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %125 = ptrtoint ptr %amsdu343 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %amsdu343, align 4
  %127 = ptrtoint ptr %spec.store.select.i.i.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store volatile ptr %126, ptr %spec.store.select.i.i.i, align 8
  %prev10.i.i.i.i = getelementptr inbounds %struct.anon.41, ptr %spec.store.select.i.i.i, i32 0, i32 1
  %128 = ptrtoint ptr %prev10.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store volatile ptr %amsdu343, ptr %prev10.i.i.i.i, align 4
  %prev17.i.i.i.i = getelementptr inbounds %struct.sk_buff_list, ptr %126, i32 0, i32 1
  %129 = ptrtoint ptr %prev17.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store volatile ptr %spec.store.select.i.i.i, ptr %prev17.i.i.i.i, align 4
  store volatile ptr %spec.store.select.i.i.i, ptr %amsdu343, align 4
  %130 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %qlen.i.i.i, align 4
  %add.i.i.i.i = add i32 %131, 1
  store volatile i32 %add.i.i.i.i, ptr %qlen.i.i.i, align 4
  br label %do.end361

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %skb_tailroom.exit.i.if.end.i_crit_edge
  %132 = ptrtoint ptr %amsdu343 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %amsdu343, align 4
  %cmp.i.i2943.i = icmp eq ptr %133, %amsdu343
  %tobool.not.i313844.i = icmp eq ptr %133, null
  %tobool.not.i3145.i = or i1 %cmp.i.i2943.i, %tobool.not.i313844.i
  br i1 %tobool.not.i3145.i, label %if.end.i.wcn36xx_unchain_msdu.exit_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  br label %while.body.i

if.end.i.wcn36xx_unchain_msdu.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %wcn36xx_unchain_msdu.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end.i.while.body.i_crit_edge
  %134 = phi ptr [ %151, %while.body.i.while.body.i_crit_edge ], [ %133, %if.end.i.while.body.i_crit_edge ]
  %135 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %qlen.i.i.i, align 4
  %sub.i.i33.i = add i32 %136, -1
  store volatile i32 %sub.i.i33.i, ptr %qlen.i.i.i, align 4
  %137 = ptrtoint ptr %134 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %134, align 8
  %prev9.i.i34.i = getelementptr inbounds %struct.anon.41, ptr %134, i32 0, i32 1
  %139 = ptrtoint ptr %prev9.i.i34.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %prev9.i.i34.i, align 4
  store ptr null, ptr %prev9.i.i34.i, align 4
  store ptr null, ptr %134, align 8
  %prev17.i.i35.i = getelementptr inbounds %struct.anon.41, ptr %138, i32 0, i32 1
  %141 = ptrtoint ptr %prev17.i.i35.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store volatile ptr %140, ptr %prev17.i.i35.i, align 4
  %142 = ptrtoint ptr %140 to i32
  call void @__asan_store4_noabort(i32 %142)
  store volatile ptr %138, ptr %140, align 8
  %len7.i = getelementptr inbounds %struct.sk_buff, ptr %134, i32 0, i32 6
  %143 = ptrtoint ptr %len7.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %len7.i, align 4
  %call8.i = tail call ptr @skb_put(ptr noundef %spec.store.select.i.i.i, i32 noundef %144) #6
  %145 = ptrtoint ptr %len7.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %len7.i, align 4
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %134, i32 0, i32 19
  %147 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %data.i.i, align 4
  %149 = call ptr @memcpy(ptr %call8.i, ptr %148, i32 %146)
  tail call void @__dev_kfree_skb_irq(ptr noundef nonnull %134, i32 noundef 1) #6
  %150 = ptrtoint ptr %amsdu343 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %amsdu343, align 4
  %cmp.i.i29.i = icmp eq ptr %151, %amsdu343
  %tobool.not.i3138.i = icmp eq ptr %151, null
  %tobool.not.i31.i = or i1 %cmp.i.i29.i, %tobool.not.i3138.i
  br i1 %tobool.not.i31.i, label %while.body.i.wcn36xx_unchain_msdu.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

while.body.i.wcn36xx_unchain_msdu.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %wcn36xx_unchain_msdu.exit

wcn36xx_unchain_msdu.exit:                        ; preds = %while.body.i.wcn36xx_unchain_msdu.exit_crit_edge, %if.end.i.wcn36xx_unchain_msdu.exit_crit_edge
  br i1 %tobool.not.i.i, label %wcn36xx_unchain_msdu.exit.do.end361_crit_edge, label %wcn36xx_unchain_msdu.exit.if.end357_crit_edge

wcn36xx_unchain_msdu.exit.if.end357_crit_edge:    ; preds = %wcn36xx_unchain_msdu.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end357

wcn36xx_unchain_msdu.exit.do.end361_crit_edge:    ; preds = %wcn36xx_unchain_msdu.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end361

if.end357:                                        ; preds = %wcn36xx_unchain_msdu.exit.if.end357_crit_edge, %done.if.end357_crit_edge
  %skb.addr.0 = phi ptr [ %107, %wcn36xx_unchain_msdu.exit.if.end357_crit_edge ], [ %skb, %done.if.end357_crit_edge ]
  %152 = ptrtoint ptr %wcn to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %wcn, align 4
  tail call void @ieee80211_rx_irqsafe(ptr noundef %153, ptr noundef %skb.addr.0) #6
  br label %cleanup

do.end361:                                        ; preds = %wcn36xx_unchain_msdu.exit.do.end361_crit_edge, %wcn36xx_unchain_msdu.exit.thread, %lor.lhs.false63.do.end361_crit_edge, %if.end56.do.end361_crit_edge, %if.then27.do.end361_crit_edge, %lor.lhs.false.do.end361_crit_edge, %do.end.do.end361_crit_edge
  %skb.addr.1 = phi ptr [ %skb, %do.end.do.end361_crit_edge ], [ %skb, %lor.lhs.false.do.end361_crit_edge ], [ %skb, %if.end56.do.end361_crit_edge ], [ %skb, %lor.lhs.false63.do.end361_crit_edge ], [ null, %wcn36xx_unchain_msdu.exit.do.end361_crit_edge ], [ %skb, %if.then27.do.end361_crit_edge ], [ null, %wcn36xx_unchain_msdu.exit.thread ]
  %154 = ptrtoint ptr %pdu to i32
  call void @__asan_loadN_noabort(i32 %154, i32 16)
  %bf.load364 = load i128, ptr %pdu, align 4
  %155 = trunc i128 %bf.load364 to i32
  %bf.cast366 = and i32 %155, 65535
  %bf.lshr369 = lshr i128 %bf.load364, 40
  %156 = trunc i128 %bf.lshr369 to i32
  %bf.cast371 = and i32 %156, 255
  %bf.lshr374 = lshr i128 %bf.load364, 48
  %157 = trunc i128 %bf.lshr374 to i32
  %bf.cast376 = and i32 %157, 511
  %asf377 = getelementptr inbounds %struct.wcn36xx_rx_bd, ptr %1, i32 0, i32 7
  %158 = ptrtoint ptr %asf377 to i32
  call void @__asan_loadN_noabort(i32 %158, i32 12)
  %bf.load378 = load i96, ptr %asf377, align 4
  %159 = trunc i96 %bf.load378 to i32
  %bf.cast380 = and i32 %159, 1
  %160 = lshr i32 %159, 1
  %bf.cast385 = and i32 %160, 1
  %161 = lshr i32 %159, 2
  %bf.cast390 = and i32 %161, 1
  %call391 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %skb.addr.1, i32 noundef %bf.cast366, i32 noundef %bf.cast371, i32 noundef %bf.cast376, i32 noundef %bf.cast380, i32 noundef %bf.cast385, i32 noundef %bf.cast390) #9
  tail call void @__dev_kfree_skb_irq(ptr noundef %skb.addr.1, i32 noundef 1) #6
  %amsdu392 = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 50
  %162 = ptrtoint ptr %amsdu392 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %amsdu392, align 4
  %cmp.i.i2.i = icmp eq ptr %163, %amsdu392
  %tobool.not.i13.i = icmp eq ptr %163, null
  %tobool.not.i4.i = or i1 %cmp.i.i2.i, %tobool.not.i13.i
  br i1 %tobool.not.i4.i, label %do.end361.cleanup_crit_edge, label %while.body.lr.ph.i520

do.end361.cleanup_crit_edge:                      ; preds = %do.end361
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body.lr.ph.i520:                            ; preds = %do.end361
  %qlen.i.i.i519 = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 50, i32 1
  br label %while.body.i526

while.body.i526:                                  ; preds = %while.body.i526.while.body.i526_crit_edge, %while.body.lr.ph.i520
  %164 = phi ptr [ %163, %while.body.lr.ph.i520 ], [ %174, %while.body.i526.while.body.i526_crit_edge ]
  %165 = ptrtoint ptr %qlen.i.i.i519 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %qlen.i.i.i519, align 4
  %sub.i.i.i521 = add i32 %166, -1
  store volatile i32 %sub.i.i.i521, ptr %qlen.i.i.i519, align 4
  %167 = ptrtoint ptr %164 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %164, align 8
  %prev9.i.i.i522 = getelementptr inbounds %struct.anon.41, ptr %164, i32 0, i32 1
  %169 = ptrtoint ptr %prev9.i.i.i522 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %prev9.i.i.i522, align 4
  store ptr null, ptr %prev9.i.i.i522, align 4
  store ptr null, ptr %164, align 8
  %prev17.i.i.i523 = getelementptr inbounds %struct.anon.41, ptr %168, i32 0, i32 1
  %171 = ptrtoint ptr %prev17.i.i.i523 to i32
  call void @__asan_store4_noabort(i32 %171)
  store volatile ptr %170, ptr %prev17.i.i.i523, align 4
  %172 = ptrtoint ptr %170 to i32
  call void @__asan_store4_noabort(i32 %172)
  store volatile ptr %168, ptr %170, align 8
  tail call void @__dev_kfree_skb_irq(ptr noundef nonnull %164, i32 noundef 1) #6
  %173 = ptrtoint ptr %amsdu392 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %amsdu392, align 4
  %cmp.i.i.i524 = icmp eq ptr %174, %amsdu392
  %tobool.not.i1.i = icmp eq ptr %174, null
  %tobool.not.i.i525 = or i1 %cmp.i.i.i524, %tobool.not.i1.i
  br i1 %tobool.not.i.i525, label %while.body.i526.cleanup_crit_edge, label %while.body.i526.while.body.i526_crit_edge

while.body.i526.while.body.i526_crit_edge:        ; preds = %while.body.i526
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i526

while.body.i526.cleanup_crit_edge:                ; preds = %while.body.i526
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %while.body.i526.cleanup_crit_edge, %do.end361.cleanup_crit_edge, %if.end357, %if.end342.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end357 ], [ 0, %if.end342.cleanup_crit_edge ], [ -22, %do.end361.cleanup_crit_edge ], [ -22, %while.body.i526.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__skb_queue_purge_irq(ptr noundef %list) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %list, align 4
  %cmp.i.i2 = icmp eq ptr %1, %list
  %tobool.not.i13 = icmp eq ptr %1, null
  %tobool.not.i4 = or i1 %cmp.i.i2, %tobool.not.i13
  br i1 %tobool.not.i4, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %qlen.i.i = getelementptr inbounds %struct.sk_buff_head, ptr %list, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %2 = phi ptr [ %1, %while.body.lr.ph ], [ %12, %while.body.while.body_crit_edge ]
  %3 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %qlen.i.i, align 4
  %sub.i.i = add i32 %4, -1
  store volatile i32 %sub.i.i, ptr %qlen.i.i, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 8
  %prev9.i.i = getelementptr inbounds %struct.anon.41, ptr %2, i32 0, i32 1
  %7 = ptrtoint ptr %prev9.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev9.i.i, align 4
  store ptr null, ptr %prev9.i.i, align 4
  store ptr null, ptr %2, align 8
  %prev17.i.i = getelementptr inbounds %struct.anon.41, ptr %6, i32 0, i32 1
  %9 = ptrtoint ptr %prev17.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %8, ptr %prev17.i.i, align 4
  %10 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %6, ptr %8, align 8
  tail call void @__dev_kfree_skb_irq(ptr noundef nonnull %2, i32 noundef 1) #6
  %11 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %list, align 4
  %cmp.i.i = icmp eq ptr %12, %list
  %tobool.not.i1 = icmp eq ptr %12, null
  %tobool.not.i = or i1 %cmp.i.i, %tobool.not.i1
  br i1 %tobool.not.i, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_rx_irqsafe(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wcn36xx_start_tx(ptr noundef %wcn, ptr noundef %sta_priv, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  %bd = alloca %struct.wcn36xx_tx_bd, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %1, align 2
  %4 = and i16 %3, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %4)
  %cmp.i = icmp eq i16 %4, 2048
  %addr1 = getelementptr inbounds %struct.ieee80211_hdr, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %addr1 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %addr1, align 2
  %add.ptr1.i = getelementptr %struct.ieee80211_hdr, ptr %1, i32 0, i32 2, i32 2
  %7 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %add.ptr1.i, align 2
  %and9.i = and i16 %8, %6
  %add.ptr3.i = getelementptr %struct.ieee80211_hdr, ptr %1, i32 0, i32 2, i32 4
  %9 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %add.ptr3.i, align 2
  %and510.i = and i16 %and9.i, %10
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %and510.i)
  %cmp.i99 = icmp eq i16 %and510.i, -1
  br i1 %cmp.i99, label %entry.lor.end_crit_edge, label %lor.rhs

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.end

lor.rhs:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %addr1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %addr1, align 4
  %13 = and i32 %12, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.i = icmp ne i32 %13, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry.lor.end_crit_edge
  %14 = phi i1 [ true, %entry.lor.end_crit_edge ], [ %tobool.i, %lor.rhs ]
  %15 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cb.i, align 8
  %17 = and i32 %16, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %18 = icmp eq i32 %17, 1
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %bd) #6
  %19 = call ptr @memset(ptr %bd, i32 0, i32 40)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wcn36xx_dbg_mask to i32))
  %20 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and11 = and i32 %20, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %lor.end.do.body25_crit_edge, label %do.end

lor.end.do.body25_crit_edge:                      ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body25

do.end:                                           ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #8
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %21 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %len, align 4
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %1, align 2
  %25 = tail call i16 @llvm.bswap.i16(i16 %24)
  %conv = zext i16 %25 to i32
  %seq_ctrl = getelementptr inbounds %struct.ieee80211_hdr, ptr %1, i32 0, i32 5
  %26 = ptrtoint ptr %seq_ctrl to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %seq_ctrl, align 2
  %28 = and i16 %27, -3841
  %29 = tail call i16 @llvm.bswap.i16(i16 %28)
  %30 = lshr exact i16 %29, 4
  %31 = zext i16 %30 to i32
  %cond = select i1 %cmp.i, ptr @.str.20, ptr @.str.21
  %cond21 = select i1 %14, ptr @.str.22, ptr @.str.23
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %skb, i32 noundef %22, i32 noundef %conv, i32 noundef %31, ptr noundef nonnull %cond, ptr noundef nonnull %cond21) #9
  br label %do.body25

do.body25:                                        ; preds = %do.end, %lor.end.do.body25_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wcn36xx_dbg_mask to i32))
  %32 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and26 = and i32 %32, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %do.body25.do.end33_crit_edge, label %if.then28

do.body25.do.end33_crit_edge:                     ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end33

if.then28:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data, align 4
  %len30 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %35 = ptrtoint ptr %len30 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %len30, align 4
  tail call void @print_hex_dump(ptr noundef nonnull @.str, ptr noundef nonnull @.str.24, i32 noundef 2, i32 noundef 32, i32 noundef 1, ptr noundef %34, i32 noundef %36, i1 noundef zeroext false) #6
  br label %do.end33

do.end33:                                         ; preds = %if.then28, %do.body25.do.end33_crit_edge
  %37 = ptrtoint ptr %bd to i32
  call void @__asan_load4_noabort(i32 %37)
  %bf.load = load i32, ptr %bd, align 4
  %bf.clear = and i32 %bf.load, -256
  %bf.set = or i32 %bf.clear, 25
  store i32 %bf.set, ptr %bd, align 4
  br i1 %18, label %do.body39, label %do.end33.if.end54_crit_edge, !prof !66

do.end33.if.end54_crit_edge:                      ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end54

do.body39:                                        ; preds = %do.end33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wcn36xx_dbg_mask to i32))
  %38 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and40 = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %do.body39.do.end50_crit_edge, label %do.end45

do.body39.do.end50_crit_edge:                     ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end50

do.end45:                                         ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #8
  %call47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #9
  br label %do.end50

do.end50:                                         ; preds = %do.end45, %do.body39.do.end50_crit_edge
  %39 = ptrtoint ptr %wcn to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %wcn, align 4
  tail call void @ieee80211_stop_queues(ptr noundef %40) #6
  %41 = ptrtoint ptr %bd to i32
  call void @__asan_load4_noabort(i32 %41)
  %bf.load51 = load i32, ptr %bd, align 4
  %bf.set53 = or i32 %bf.load51, 67108864
  store i32 %bf.set53, ptr %bd, align 4
  br label %if.end54

if.end54:                                         ; preds = %do.end50, %do.end33.if.end54_crit_edge
  %42 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %data, align 4
  br i1 %cmp.i, label %if.then56, label %if.else

if.then56:                                        ; preds = %if.end54
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %43, align 2
  %46 = and i16 %45, -29696
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30720, i16 %46)
  %cmp.i.i = icmp eq i16 %46, -30720
  %bd_rate.i = getelementptr inbounds %struct.wcn36xx_tx_bd, ptr %bd, i32 0, i32 2
  %47 = ptrtoint ptr %bd_rate.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %bf.load.i = load i32, ptr %bd_rate.i, align 4
  %bf.clear.i = and i32 %bf.load.i, -786433
  store i32 %bf.clear.i, ptr %bd_rate.i, align 4
  %tobool.not.i = icmp eq ptr %sta_priv, null
  br i1 %tobool.not.i, label %if.else47.i, label %if.then.i

if.then.i:                                        ; preds = %if.then56
  %vif3.i = getelementptr inbounds %struct.wcn36xx_sta, ptr %sta_priv, i32 0, i32 1
  %48 = ptrtoint ptr %vif3.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %vif3.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %49, i32 -848
  %ucast_dpu_sign.i = getelementptr inbounds %struct.wcn36xx_sta, ptr %sta_priv, i32 0, i32 6
  %50 = ptrtoint ptr %ucast_dpu_sign.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %ucast_dpu_sign.i, align 2
  %52 = ptrtoint ptr %bd to i32
  call void @__asan_load4_noabort(i32 %52)
  %bf.load5.i = load i32, ptr %bd, align 4
  %53 = and i8 %51, 7
  %bf.value.i = zext i8 %53 to i32
  %bf.shl.i = shl nuw nsw i32 %bf.value.i, 8
  %bf.clear6.i = and i32 %bf.load5.i, -1793
  %bf.set7.i = or i32 %bf.shl.i, %bf.clear6.i
  store i32 %bf.set7.i, ptr %bd, align 4
  %54 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %add.ptr.i.i, align 8
  %56 = zext i32 %55 to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %55, label %if.then.i.if.end68.i_crit_edge [
    i32 2, label %if.then9.i
    i32 3, label %if.then.i.if.then31.i_crit_edge
    i32 1, label %if.then.i.if.then31.i_crit_edge155
    i32 7, label %if.then.i.if.then31.i_crit_edge156
  ]

if.then.i.if.then31.i_crit_edge156:               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then31.i

if.then.i.if.then31.i_crit_edge155:               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then31.i

if.then.i.if.then31.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then31.i

if.then.i.if.end68.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end68.i

if.then9.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %bss_sta_index.i = getelementptr inbounds %struct.wcn36xx_sta, ptr %sta_priv, i32 0, i32 7
  %57 = ptrtoint ptr %bss_sta_index.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %bss_sta_index.i, align 1
  %conv10.i = zext i8 %58 to i32
  %bf.shl13.i = shl nuw nsw i32 %conv10.i, 8
  %bf.clear14.i = and i32 %bf.load.i, -851968
  %bf.set15.i = or i32 %bf.shl13.i, %bf.clear14.i
  %bss_dpu_desc_index.i = getelementptr inbounds %struct.wcn36xx_sta, ptr %sta_priv, i32 0, i32 8
  %59 = ptrtoint ptr %bss_dpu_desc_index.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %bss_dpu_desc_index.i, align 4
  %conv16.i = zext i8 %60 to i32
  %bf.set20.i = or i32 %bf.set15.i, %conv16.i
  %61 = ptrtoint ptr %bd_rate.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %bf.set20.i, ptr %bd_rate.i, align 4
  br label %if.end68.i

if.then31.i:                                      ; preds = %if.then.i.if.then31.i_crit_edge, %if.then.i.if.then31.i_crit_edge155, %if.then.i.if.then31.i_crit_edge156
  %sta_index32.i = getelementptr inbounds %struct.wcn36xx_sta, ptr %sta_priv, i32 0, i32 4
  %62 = ptrtoint ptr %sta_index32.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %sta_index32.i, align 4
  %conv33.i = zext i8 %63 to i32
  %bf.shl37.i = shl nuw nsw i32 %conv33.i, 8
  %bf.clear38.i = and i32 %bf.load.i, -851968
  %bf.set39.i = or i32 %bf.shl37.i, %bf.clear38.i
  %dpu_desc_index.i = getelementptr inbounds %struct.wcn36xx_sta, ptr %sta_priv, i32 0, i32 5
  %64 = ptrtoint ptr %dpu_desc_index.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %dpu_desc_index.i, align 1
  %conv40.i = zext i8 %65 to i32
  %bf.set45.i = or i32 %bf.set39.i, %conv40.i
  %66 = ptrtoint ptr %bd_rate.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %bf.set45.i, ptr %bd_rate.i, align 4
  br label %if.end68.i

if.else47.i:                                      ; preds = %if.then56
  %addr2.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %43, i32 0, i32 3
  %vif_list.i.i = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 2
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %if.else47.i
  %vif_priv.0.in.i.i = phi ptr [ %vif_list.i.i, %if.else47.i ], [ %vif_priv.0.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %67 = ptrtoint ptr %vif_priv.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %vif_priv.0.i.i = load ptr, ptr %vif_priv.0.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %vif_priv.0.i.i, %vif_list.i.i
  br i1 %cmp.not.i.i, label %do.end.i.i, label %for.body.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %addr2.i.i = getelementptr i8, ptr %vif_priv.0.i.i, i32 -48
  %bcmp.i.i = tail call i32 @bcmp(ptr noundef dereferenceable(6) %addr2.i.i, ptr noundef dereferenceable(6) %addr2.i, i32 6) #10
  %cmp4.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %cmp4.i.i, label %for.body.i.i.get_vif_by_addr.exit.i_crit_edge, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i.i

for.body.i.i.get_vif_by_addr.exit.i_crit_edge:    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_vif_by_addr.exit.i

do.end.i.i:                                       ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call11.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %addr2.i) #9
  br label %get_vif_by_addr.exit.i

get_vif_by_addr.exit.i:                           ; preds = %do.end.i.i, %for.body.i.i.get_vif_by_addr.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ null, %do.end.i.i ], [ %vif_priv.0.i.i, %for.body.i.i.get_vif_by_addr.exit.i_crit_edge ]
  %self_sta_index.i = getelementptr inbounds %struct.wcn36xx_vif, ptr %retval.0.i.i, i32 0, i32 9
  %68 = ptrtoint ptr %self_sta_index.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %self_sta_index.i, align 1
  %conv49.i = zext i8 %69 to i32
  %70 = ptrtoint ptr %bd_rate.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %bf.load51.i = load i32, ptr %bd_rate.i, align 4
  %bf.shl53.i = shl nuw nsw i32 %conv49.i, 8
  %bf.clear54.i = and i32 %bf.load51.i, -65536
  %bf.set55.i = or i32 %bf.clear54.i, %bf.shl53.i
  %self_dpu_desc_index.i = getelementptr inbounds %struct.wcn36xx_vif, ptr %retval.0.i.i, i32 0, i32 10
  %71 = ptrtoint ptr %self_dpu_desc_index.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %self_dpu_desc_index.i, align 2
  %conv56.i = zext i8 %72 to i32
  %bf.set61.i = or i32 %bf.set55.i, %conv56.i
  store i32 %bf.set61.i, ptr %bd_rate.i, align 4
  %self_ucast_dpu_sign.i = getelementptr inbounds %struct.wcn36xx_vif, ptr %retval.0.i.i, i32 0, i32 11
  %73 = ptrtoint ptr %self_ucast_dpu_sign.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %self_ucast_dpu_sign.i, align 1
  %75 = ptrtoint ptr %bd to i32
  call void @__asan_load4_noabort(i32 %75)
  %bf.load63.i = load i32, ptr %bd, align 4
  %76 = and i8 %74, 7
  %bf.value64.i = zext i8 %76 to i32
  %bf.shl65.i = shl nuw nsw i32 %bf.value64.i, 8
  %bf.clear66.i = and i32 %bf.load63.i, -1793
  %bf.set67.i = or i32 %bf.shl65.i, %bf.clear66.i
  store i32 %bf.set67.i, ptr %bd, align 4
  br label %if.end68.i

if.end68.i:                                       ; preds = %get_vif_by_addr.exit.i, %if.then31.i, %if.then9.i, %if.then.i.if.end68.i_crit_edge
  %__vif_priv.0.i = phi ptr [ %49, %if.then9.i ], [ %49, %if.then31.i ], [ %retval.0.i.i, %get_vif_by_addr.exit.i ], [ %49, %if.then.i.if.end68.i_crit_edge ]
  br i1 %cmp.i.i, label %if.then70.i, label %if.end68.i.if.end87.i_crit_edge

if.end68.i.if.end87.i_crit_edge:                  ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end87.i

if.then70.i:                                      ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #8
  %77 = ptrtoint ptr %43 to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %43, align 2
  %79 = and i16 %78, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %79)
  %cmp.i.i.i.i = icmp eq i16 %79, 3
  %retval.0.v.i.i.i = select i1 %cmp.i.i.i.i, i32 30, i32 24
  %retval.0.i.i.i = getelementptr i8, ptr %43, i32 %retval.0.v.i.i.i
  %80 = ptrtoint ptr %retval.0.i.i.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %retval.0.i.i.i, align 1
  %82 = and i8 %81, 15
  %conv72.i = zext i8 %82 to i16
  %83 = ptrtoint ptr %bd_rate.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %bf.load74.i = load i32, ptr %bd_rate.i, align 4
  %bf.value75.i = zext i8 %82 to i32
  %bf.shl76.i = shl nuw nsw i32 %bf.value75.i, 20
  %bf.clear77.i = and i32 %bf.load74.i, -32505857
  %bf.set78.i = or i32 %bf.shl76.i, %bf.clear77.i
  store i32 %bf.set78.i, ptr %bd_rate.i, align 4
  br label %if.end87.i

if.end87.i:                                       ; preds = %if.then70.i, %if.end68.i.if.end87.i_crit_edge
  %.sink.i = phi i128 [ 524288, %if.then70.i ], [ 262144, %if.end68.i.if.end87.i_crit_edge ]
  %tid.0.i = phi i16 [ %conv72.i, %if.then70.i ], [ 0, %if.end68.i.if.end87.i_crit_edge ]
  %pdu83.i = getelementptr inbounds %struct.wcn36xx_tx_bd, ptr %bd, i32 0, i32 1
  %84 = ptrtoint ptr %pdu83.i to i32
  call void @__asan_loadN_noabort(i32 %84, i32 16)
  %bf.load84.i = load i128, ptr %pdu83.i, align 4
  %bf.clear85.i = and i128 %bf.load84.i, -786433
  %bf.set86.i = or i128 %bf.clear85.i, %.sink.i
  store i128 %bf.set86.i, ptr %pdu83.i, align 4
  %85 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %cb.i, align 8
  %and.i = and i32 %86, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool88.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool88.not.i, label %lor.lhs.false89.i, label %if.end87.i.if.then92.i_crit_edge

if.end87.i.if.then92.i_crit_edge:                 ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then92.i

lor.lhs.false89.i:                                ; preds = %if.end87.i
  br i1 %tobool.not.i, label %lor.lhs.false89.i.if.end96.i_crit_edge, label %land.lhs.true.i

lor.lhs.false89.i.if.end96.i_crit_edge:           ; preds = %lor.lhs.false89.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end96.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false89.i
  %is_data_encrypted.i = getelementptr inbounds %struct.wcn36xx_sta, ptr %sta_priv, i32 0, i32 9
  %87 = ptrtoint ptr %is_data_encrypted.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %is_data_encrypted.i, align 1, !range !67
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %tobool91.not.i = icmp eq i8 %88, 0
  br i1 %tobool91.not.i, label %land.lhs.true.i.if.then92.i_crit_edge, label %land.lhs.true.i.if.end96.i_crit_edge

land.lhs.true.i.if.end96.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end96.i

land.lhs.true.i.if.then92.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then92.i

if.then92.i:                                      ; preds = %land.lhs.true.i.if.then92.i_crit_edge, %if.end87.i.if.then92.i_crit_edge
  %89 = ptrtoint ptr %bd to i32
  call void @__asan_load4_noabort(i32 %89)
  %bf.load93.i = load i32, ptr %bd, align 4
  %bf.set95.i = or i32 %bf.load93.i, 268435456
  store i32 %bf.set95.i, ptr %bd, align 4
  br label %if.end96.i

if.end96.i:                                       ; preds = %if.then92.i, %land.lhs.true.i.if.end96.i_crit_edge, %lor.lhs.false89.i.if.end96.i_crit_edge
  %90 = ptrtoint ptr %43 to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %43, align 2
  %92 = and i16 %91, 31744
  call void @__sanitizer_cov_trace_const_cmp2(i16 18432, i16 %92)
  %93 = icmp eq i16 %92, 18432
  br i1 %93, label %if.then99.i, label %if.end96.i.if.end116.i_crit_edge

if.end96.i.if.end116.i_crit_edge:                 ; preds = %if.end96.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end116.i

if.then99.i:                                      ; preds = %if.end96.i
  %94 = ptrtoint ptr %bd_rate.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %bf.load101.i = load i32, ptr %bd_rate.i, align 4
  %bf.clear102.i = and i32 %bf.load101.i, -33292289
  %bf.set107.i = or i32 %bf.clear102.i, 10223616
  store i32 %bf.set107.i, ptr %bd_rate.i, align 4
  %95 = ptrtoint ptr %43 to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %43, align 2
  %97 = and i16 %96, -1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 -14336, i16 %97)
  %cmp.i180.i = icmp eq i16 %97, -14336
  br i1 %cmp.i180.i, label %if.then110.i, label %if.then99.i.if.end116.i_crit_edge

if.then99.i.if.end116.i_crit_edge:                ; preds = %if.then99.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end116.i

if.then110.i:                                     ; preds = %if.then99.i
  call void @__sanitizer_cov_trace_pc() #8
  %98 = ptrtoint ptr %pdu83.i to i32
  call void @__asan_storeN_noabort(i32 %98, i32 16)
  store i128 %bf.clear85.i, ptr %pdu83.i, align 4
  br label %if.end116.i

if.end116.i:                                      ; preds = %if.then110.i, %if.then99.i.if.end116.i_crit_edge, %if.end96.i.if.end116.i_crit_edge
  br i1 %14, label %if.then118.i, label %if.end116.i.if.end125.i_crit_edge

if.end116.i.if.end125.i_crit_edge:                ; preds = %if.end116.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end125.i

if.then118.i:                                     ; preds = %if.end116.i
  call void @__sanitizer_cov_trace_pc() #8
  %99 = ptrtoint ptr %bd to i32
  call void @__asan_load4_noabort(i32 %99)
  %bf.load119.i = load i32, ptr %bd, align 4
  %bf.set121.i = or i32 %bf.load119.i, 16777216
  store i32 %bf.set121.i, ptr %bd, align 4
  %100 = ptrtoint ptr %bd_rate.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %bf.load122.i = load i32, ptr %bd_rate.i, align 4
  %bf.clear123.i = and i32 %bf.load122.i, -196609
  %bf.set124.i = or i32 %bf.clear123.i, 65536
  store i32 %bf.set124.i, ptr %bd_rate.i, align 4
  br label %if.end125.i

if.end125.i:                                      ; preds = %if.then118.i, %if.end116.i.if.end125.i_crit_edge
  %cond.i = select i1 %cmp.i.i, i32 26, i32 24
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %101 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %len.i, align 4
  %103 = ptrtoint ptr %pdu83.i to i32
  call void @__asan_loadN_noabort(i32 %103, i32 16)
  %bf.load.i.i = load i128, ptr %pdu83.i, align 4
  %bf.value.i.i = zext i32 %cond.i to i128
  %bf.shl.i.i = shl nuw nsw i128 %bf.value.i.i, 32
  %bf.clear.i.i = and i128 %bf.load.i.i, -281470681743361
  %bf.set.i.i = or i128 %bf.clear.i.i, %bf.shl.i.i
  %bf.set4.i.i = or i128 %bf.set.i.i, 43980465111040
  %bf.lshr10.i.i = lshr i128 %bf.set4.i.i, 40
  %104 = trunc i128 %bf.lshr10.i.i to i32
  %bf.cast12.i.i = and i32 %104, 255
  %add.i.i = add nuw nsw i32 %bf.cast12.i.i, %cond.i
  %105 = zext i32 %add.i.i to i128
  %bf.shl16.i.i = shl nuw nsw i128 %105, 48
  %bf.clear17.i.i = and i128 %bf.set4.i.i, -144071091662422016
  %bf.set18.i.i = or i128 %bf.shl16.i.i, %bf.clear17.i.i
  %106 = and i32 %102, 65535
  %bf.value22.i.i = zext i32 %106 to i128
  %bf.set24.i.i = or i128 %bf.set18.i.i, %bf.value22.i.i
  %bf.value28.i.i = zext i16 %tid.0.i to i128
  %bf.shl29.i.i = shl nuw nsw i128 %bf.value28.i.i, 20
  %bf.set31.i.i = or i128 %bf.set24.i.i, %bf.shl29.i.i
  store i128 %bf.set31.i.i, ptr %pdu83.i, align 4
  %call1.not.i = xor i1 %cmp.i.i, true
  %brmerge.i = select i1 %tobool.not.i, i1 true, i1 %call1.not.i
  br i1 %brmerge.i, label %if.end125.i.if.end59_crit_edge, label %if.then132.i

if.end125.i.if.end59_crit_edge:                   ; preds = %if.end125.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end59

if.then132.i:                                     ; preds = %if.end125.i
  %107 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %data, align 4
  %109 = ptrtoint ptr %wcn to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %wcn, align 4
  %width.i.i.i = getelementptr inbounds %struct.ieee80211_conf, ptr %110, i32 0, i32 7, i32 1
  %111 = ptrtoint ptr %width.i.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %width.i.i.i, align 4
  %113 = zext i32 %112 to i64
  call void @__sanitizer_cov_trace_switch(i64 %113, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %112, label %if.end.i.i [
    i32 6, label %if.then132.i.if.end59_crit_edge
    i32 7, label %if.then132.i.if.end59_crit_edge157
    i32 0, label %if.then132.i.if.end59_crit_edge158
  ]

if.then132.i.if.end59_crit_edge158:               ; preds = %if.then132.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end59

if.then132.i.if.end59_crit_edge157:               ; preds = %if.then132.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end59

if.then132.i.if.end59_crit_edge:                  ; preds = %if.then132.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end59

if.end.i.i:                                       ; preds = %if.then132.i
  %add.ptr.i.i.i = getelementptr i8, ptr %sta_priv, i32 -268
  %114 = ptrtoint ptr %108 to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %108, align 2
  %116 = and i16 %115, -29696
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30720, i16 %116)
  %cmp.i.i.i = icmp eq i16 %116, -30720
  br i1 %cmp.i.i.i, label %if.end26.i.i, label %do.end.i181.i, !prof !68

do.end.i181.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 458, i32 noundef 9, ptr noundef null) #6
  br label %if.end59

if.end26.i.i:                                     ; preds = %if.end.i.i
  %queue_mapping.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 10
  %117 = ptrtoint ptr %queue_mapping.i.i.i to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %queue_mapping.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %118)
  %cmp.i182.i = icmp eq i16 %118, 0
  br i1 %cmp.i182.i, label %if.end26.i.i.if.end59_crit_edge, label %if.end30.i.i

if.end26.i.i.if.end59_crit_edge:                  ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end59

if.end30.i.i:                                     ; preds = %if.end26.i.i
  %119 = and i16 %115, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %119)
  %cmp.i.i.i183.i = icmp eq i16 %119, 3
  %retval.0.v.i.i184.i = select i1 %cmp.i.i.i183.i, i32 30, i32 24
  %retval.0.i.i185.i = getelementptr i8, ptr %108, i32 %retval.0.v.i.i184.i
  %120 = ptrtoint ptr %retval.0.i.i185.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %retval.0.i.i185.i, align 1
  %122 = and i8 %121, 15
  %ampdu_lock.i.i = getelementptr inbounds %struct.wcn36xx_sta, ptr %sta_priv, i32 0, i32 11
  tail call void @_raw_spin_lock(ptr noundef %ampdu_lock.i.i) #6
  %idxprom.i.i = zext i8 %122 to i32
  %arrayidx34.i.i = getelementptr %struct.wcn36xx_sta, ptr %sta_priv, i32 0, i32 12, i32 %idxprom.i.i
  %123 = ptrtoint ptr %arrayidx34.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %arrayidx34.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %cmp35.not.i.i = icmp eq i32 %124, 0
  br i1 %cmp35.not.i.i, label %if.end38.i.i, label %if.end30.i.i.out_unlock.i.i_crit_edge

if.end30.i.i.out_unlock.i.i_crit_edge:            ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_unlock.i.i

if.end38.i.i:                                     ; preds = %if.end30.i.i
  %non_agg_frame_ct.i.i = getelementptr inbounds %struct.wcn36xx_sta, ptr %sta_priv, i32 0, i32 13
  %125 = ptrtoint ptr %non_agg_frame_ct.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %non_agg_frame_ct.i.i, align 4
  %inc.i.i = add i32 %126, 1
  store i32 %inc.i.i, ptr %non_agg_frame_ct.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %126)
  %cmp39.i.i = icmp sgt i32 %126, 19
  br i1 %cmp39.i.i, label %if.then41.i.i, label %if.end38.i.i.out_unlock.i.i_crit_edge

if.end38.i.i.out_unlock.i.i_crit_edge:            ; preds = %if.end38.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_unlock.i.i

if.then41.i.i:                                    ; preds = %if.end38.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %127 = ptrtoint ptr %arrayidx34.i.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 2, ptr %arrayidx34.i.i, align 4
  %128 = ptrtoint ptr %non_agg_frame_ct.i.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 0, ptr %non_agg_frame_ct.i.i, align 4
  %conv46.i.i = zext i8 %122 to i16
  %call47.i.i = tail call i32 @ieee80211_start_tx_ba_session(ptr noundef %add.ptr.i.i.i, i16 noundef zeroext %conv46.i.i, i16 noundef zeroext 0) #6
  br label %out_unlock.i.i

out_unlock.i.i:                                   ; preds = %if.then41.i.i, %if.end38.i.i.out_unlock.i.i_crit_edge, %if.end30.i.i.out_unlock.i.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %ampdu_lock.i.i) #6
  br label %if.end59

if.else:                                          ; preds = %if.end54
  %addr2.i101 = getelementptr inbounds %struct.ieee80211_hdr, ptr %43, i32 0, i32 3
  %vif_list.i.i102 = getelementptr inbounds %struct.wcn36xx, ptr %wcn, i32 0, i32 2
  br label %for.cond.i.i106

for.cond.i.i106:                                  ; preds = %for.body.i.i110.for.cond.i.i106_crit_edge, %if.else
  %vif_priv.0.in.i.i103 = phi ptr [ %vif_list.i.i102, %if.else ], [ %vif_priv.0.i.i104, %for.body.i.i110.for.cond.i.i106_crit_edge ]
  %129 = ptrtoint ptr %vif_priv.0.in.i.i103 to i32
  call void @__asan_load4_noabort(i32 %129)
  %vif_priv.0.i.i104 = load ptr, ptr %vif_priv.0.in.i.i103, align 4
  %cmp.not.i.i105 = icmp eq ptr %vif_priv.0.i.i104, %vif_list.i.i102
  br i1 %cmp.not.i.i105, label %do.end.i.i112, label %for.body.i.i110

for.body.i.i110:                                  ; preds = %for.cond.i.i106
  %addr2.i.i107 = getelementptr i8, ptr %vif_priv.0.i.i104, i32 -48
  %bcmp.i.i108 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %addr2.i.i107, ptr noundef dereferenceable(6) %addr2.i101, i32 6) #10
  %cmp4.i.i109 = icmp eq i32 %bcmp.i.i108, 0
  br i1 %cmp4.i.i109, label %for.body.i.i110.get_vif_by_addr.exit.i119_crit_edge, label %for.body.i.i110.for.cond.i.i106_crit_edge

for.body.i.i110.for.cond.i.i106_crit_edge:        ; preds = %for.body.i.i110
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i.i106

for.body.i.i110.get_vif_by_addr.exit.i119_crit_edge: ; preds = %for.body.i.i110
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_vif_by_addr.exit.i119

do.end.i.i112:                                    ; preds = %for.cond.i.i106
  call void @__sanitizer_cov_trace_pc() #8
  %call11.i.i111 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %addr2.i101) #9
  br label %get_vif_by_addr.exit.i119

get_vif_by_addr.exit.i119:                        ; preds = %do.end.i.i112, %for.body.i.i110.get_vif_by_addr.exit.i119_crit_edge
  %retval.0.i.i113 = phi ptr [ null, %do.end.i.i112 ], [ %vif_priv.0.i.i104, %for.body.i.i110.get_vif_by_addr.exit.i119_crit_edge ]
  %self_sta_index.i114 = getelementptr inbounds %struct.wcn36xx_vif, ptr %retval.0.i.i113, i32 0, i32 9
  %130 = ptrtoint ptr %self_sta_index.i114 to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %self_sta_index.i114, align 1
  %conv.i = zext i8 %131 to i32
  %sta_index.i = getelementptr inbounds %struct.wcn36xx_tx_bd, ptr %bd, i32 0, i32 2
  %132 = ptrtoint ptr %sta_index.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %bf.load.i115 = load i32, ptr %sta_index.i, align 4
  %bf.shl.i116 = shl nuw nsw i32 %conv.i, 8
  %bf.clear.i117 = and i32 %bf.load.i115, -65536
  %bf.set.i = or i32 %bf.clear.i117, %bf.shl.i116
  %self_dpu_desc_index.i118 = getelementptr inbounds %struct.wcn36xx_vif, ptr %retval.0.i.i113, i32 0, i32 10
  %133 = ptrtoint ptr %self_dpu_desc_index.i118 to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %self_dpu_desc_index.i118, align 2
  %conv1.i = zext i8 %134 to i32
  %bf.set5.i = or i32 %bf.set.i, %conv1.i
  store i32 %bf.set5.i, ptr %sta_index.i, align 4
  %135 = ptrtoint ptr %bd to i32
  call void @__asan_load4_noabort(i32 %135)
  %bf.load6.i = load i32, ptr %bd, align 4
  %bf.set8.i = or i32 %bf.load6.i, 268435456
  store i32 %bf.set8.i, ptr %bd, align 4
  %136 = ptrtoint ptr %43 to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %43, align 2
  %138 = trunc i16 %137 to i12
  %trunc.i = and i12 %138, -1024
  %139 = zext i12 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %139, ptr @__sancov_gen_cov_switch_values.34)
  switch i12 %trunc.i, label %do.end.i [
    i12 0, label %if.then.i124
    i12 1024, label %if.then18.i
  ]

if.then.i124:                                     ; preds = %get_vif_by_addr.exit.i119
  call void @__sanitizer_cov_trace_pc() #8
  %140 = ptrtoint ptr %wcn to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %wcn, align 4
  %chandef.i = getelementptr inbounds %struct.ieee80211_conf, ptr %141, i32 0, i32 7
  %142 = ptrtoint ptr %chandef.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %chandef.i, align 4
  %144 = ptrtoint ptr %143 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %143, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %145)
  %cmp.i120 = icmp eq i32 %145, 1
  %cond.i121 = select i1 %cmp.i120, i32 786432, i32 524288
  %bf.clear14.i122 = and i32 %bf.set5.i, -786433
  %bf.set15.i123 = or i32 %cond.i121, %bf.clear14.i122
  %146 = ptrtoint ptr %sta_index.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %bf.set15.i123, ptr %sta_index.i, align 4
  br label %if.end25.i

if.then18.i:                                      ; preds = %get_vif_by_addr.exit.i119
  call void @__sanitizer_cov_trace_pc() #8
  %bf.set22.i = or i32 %bf.set5.i, 786432
  %147 = ptrtoint ptr %sta_index.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %bf.set22.i, ptr %sta_index.i, align 4
  br label %if.end25.i

do.end.i:                                         ; preds = %get_vif_by_addr.exit.i119
  call void @__sanitizer_cov_trace_pc() #8
  %call24.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30) #9
  br label %if.end25.i

if.end25.i:                                       ; preds = %do.end.i, %if.then18.i, %if.then.i124
  %is_joining.i = getelementptr inbounds %struct.wcn36xx_vif, ptr %retval.0.i.i113, i32 0, i32 3
  %148 = ptrtoint ptr %is_joining.i to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %is_joining.i, align 8, !range !67
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %149)
  %tobool.not.i125 = icmp eq i8 %149, 0
  br i1 %tobool.not.i125, label %if.end31.i, label %land.lhs.true.i126

land.lhs.true.i126:                               ; preds = %if.end25.i
  %150 = ptrtoint ptr %43 to i32
  call void @__asan_load2_noabort(i32 %150)
  %151 = load i16, ptr %43, align 2
  %152 = and i16 %151, -1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %152)
  %cmp.i76.i = icmp ne i16 %152, 16384
  %spec.select.i = and i1 %14, %cmp.i76.i
  br i1 %spec.select.i, label %land.lhs.true.i126.if.then33.i_crit_edge, label %land.lhs.true.i126.wcn36xx_set_tx_mgmt.exit_crit_edge

land.lhs.true.i126.wcn36xx_set_tx_mgmt.exit_crit_edge: ; preds = %land.lhs.true.i126
  call void @__sanitizer_cov_trace_pc() #8
  br label %wcn36xx_set_tx_mgmt.exit

land.lhs.true.i126.if.then33.i_crit_edge:         ; preds = %land.lhs.true.i126
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then33.i

if.end31.i:                                       ; preds = %if.end25.i
  br i1 %14, label %if.end31.i.if.then33.i_crit_edge, label %if.end31.i.wcn36xx_set_tx_mgmt.exit_crit_edge

if.end31.i.wcn36xx_set_tx_mgmt.exit_crit_edge:    ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %wcn36xx_set_tx_mgmt.exit

if.end31.i.if.then33.i_crit_edge:                 ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then33.i

if.then33.i:                                      ; preds = %if.end31.i.if.then33.i_crit_edge, %land.lhs.true.i126.if.then33.i_crit_edge
  %153 = ptrtoint ptr %bd to i32
  call void @__asan_load4_noabort(i32 %153)
  %bf.load34.i = load i32, ptr %bd, align 4
  %bf.set36.i = or i32 %bf.load34.i, 16777216
  store i32 %bf.set36.i, ptr %bd, align 4
  br label %wcn36xx_set_tx_mgmt.exit

wcn36xx_set_tx_mgmt.exit:                         ; preds = %if.then33.i, %if.end31.i.wcn36xx_set_tx_mgmt.exit_crit_edge, %land.lhs.true.i126.wcn36xx_set_tx_mgmt.exit_crit_edge
  %.sink81.i = phi i32 [ -32702465, %if.then33.i ], [ -32505857, %land.lhs.true.i126.wcn36xx_set_tx_mgmt.exit_crit_edge ], [ -32505857, %if.end31.i.wcn36xx_set_tx_mgmt.exit_crit_edge ]
  %.sink.i127 = phi i32 [ 10551296, %if.then33.i ], [ 9437184, %land.lhs.true.i126.wcn36xx_set_tx_mgmt.exit_crit_edge ], [ 9437184, %if.end31.i.wcn36xx_set_tx_mgmt.exit_crit_edge ]
  %154 = ptrtoint ptr %sta_index.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %bf.load45.i = load i32, ptr %sta_index.i, align 4
  %bf.clear46.i = and i32 %bf.load45.i, %.sink81.i
  %bf.set47.i = or i32 %bf.clear46.i, %.sink.i127
  store i32 %bf.set47.i, ptr %sta_index.i, align 4
  %pdu.i = getelementptr inbounds %struct.wcn36xx_tx_bd, ptr %bd, i32 0, i32 1
  %155 = ptrtoint ptr %pdu.i to i32
  call void @__asan_loadN_noabort(i32 %155, i32 16)
  %bf.load49.i = load i128, ptr %pdu.i, align 4
  %bf.clear50.i = and i128 %bf.load49.i, -786433
  %bf.set51.i = or i128 %bf.clear50.i, 262144
  store i128 %bf.set51.i, ptr %pdu.i, align 4
  %156 = ptrtoint ptr %43 to i32
  call void @__asan_load2_noabort(i32 %156)
  %157 = load i16, ptr %43, align 2
  %158 = and i16 %157, -29696
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30720, i16 %158)
  %cmp.i77.i = icmp eq i16 %158, -30720
  %cond55.i = select i1 %cmp.i77.i, i32 26, i32 24
  %len.i128 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %159 = ptrtoint ptr %len.i128 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %len.i128, align 4
  %bf.value.i.i129 = zext i32 %cond55.i to i128
  %bf.shl.i.i130 = shl nuw nsw i128 %bf.value.i.i129, 32
  %bf.clear.i.i131 = and i128 %bf.set51.i, -281470682267649
  %bf.set.i.i132 = or i128 %bf.shl.i.i130, %bf.clear.i.i131
  %bf.set4.i.i133 = or i128 %bf.set.i.i132, 43980465111040
  %bf.lshr10.i.i134 = lshr i128 %bf.set4.i.i133, 40
  %161 = trunc i128 %bf.lshr10.i.i134 to i32
  %bf.cast12.i.i135 = and i32 %161, 255
  %add.i.i136 = add nuw nsw i32 %bf.cast12.i.i135, %cond55.i
  %162 = zext i32 %add.i.i136 to i128
  %bf.shl16.i.i137 = shl nuw nsw i128 %162, 48
  %bf.clear17.i.i138 = and i128 %bf.set4.i.i133, -144071091662946304
  %bf.set18.i.i139 = or i128 %bf.shl16.i.i137, %bf.clear17.i.i138
  %163 = and i32 %160, 65535
  %bf.value22.i.i140 = zext i32 %163 to i128
  %bf.set24.i.i141 = or i128 %bf.set18.i.i139, %bf.value22.i.i140
  %bf.set31.i.i142 = or i128 %bf.set24.i.i141, 7340032
  %164 = ptrtoint ptr %pdu.i to i32
  call void @__asan_storeN_noabort(i32 %164, i32 16)
  store i128 %bf.set31.i.i142, ptr %pdu.i, align 4
  br label %if.end59

if.end59:                                         ; preds = %wcn36xx_set_tx_mgmt.exit, %out_unlock.i.i, %if.end26.i.i.if.end59_crit_edge, %do.end.i181.i, %if.then132.i.if.end59_crit_edge, %if.then132.i.if.end59_crit_edge157, %if.then132.i.if.end59_crit_edge158, %if.end125.i.if.end59_crit_edge
  %vif_priv.0 = phi ptr [ %retval.0.i.i113, %wcn36xx_set_tx_mgmt.exit ], [ %__vif_priv.0.i, %if.end125.i.if.end59_crit_edge ], [ %__vif_priv.0.i, %if.then132.i.if.end59_crit_edge ], [ %__vif_priv.0.i, %if.then132.i.if.end59_crit_edge157 ], [ %__vif_priv.0.i, %if.then132.i.if.end59_crit_edge158 ], [ %__vif_priv.0.i, %do.end.i181.i ], [ %__vif_priv.0.i, %if.end26.i.i.if.end59_crit_edge ], [ %__vif_priv.0.i, %out_unlock.i.i ]
  %tx_bd_sign = getelementptr inbounds %struct.wcn36xx_tx_bd, ptr %bd, i32 0, i32 3
  %165 = ptrtoint ptr %tx_bd_sign to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 -1111638595, ptr %tx_bd_sign, align 4
  %call61 = call i32 @wcn36xx_dxe_tx_frame(ptr noundef %wcn, ptr noundef %vif_priv.0, ptr noundef nonnull %bd, ptr noundef %skb, i1 noundef zeroext %cmp.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp ne i32 %call61, 0
  %spec.select = select i1 %tobool62.not, i1 %18, i1 false
  br i1 %spec.select, label %if.then73, label %if.end59.if.end75_crit_edge, !prof !66

if.end59.if.end75_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end75

if.then73:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #8
  %166 = ptrtoint ptr %wcn to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %wcn, align 4
  call void @ieee80211_wake_queues(ptr noundef %167) #6
  br label %if.end75

if.end75:                                         ; preds = %if.then73, %if.end59.if.end75_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %bd) #6
  ret i32 %call61
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_stop_queues(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wcn36xx_dxe_tx_frame(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_wake_queues(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_channel_to_freq_khz(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_start_tx_ba_session(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind readonly willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !9, !11, !12, !13, !15, !17, !18, !19, !21, !22, !23, !25, !26, !27, !29, !30, !31, !32, !33, !34, !35, !36, !38, !40, !41, !42, !44, !46, !48, !49, !50, !51, !53, !54, !55}
!llvm.module.flags = !{!56, !57, !58, !59, !60, !61, !62, !63}
!llvm.ident = !{!64}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/wcn36xx/txrx.c", i32 285, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/net/wireless/ath/wcn36xx/txrx.c", i32 325, i32 2}
!5 = !{ptr @.str.3, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @wcn36xx_rx_skb._entry, !4, !"_entry", i1 false, i1 false}
!8 = !{ptr @wcn36xx_rx_skb._entry_ptr, !4, !"_entry_ptr", i1 false, i1 false}
!9 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/wireless/ath/wcn36xx/txrx.c", i32 374, i32 3}
!11 = !{ptr @wcn36xx_rx_skb._entry.5, !10, !"_entry", i1 false, i1 false}
!12 = !{ptr @wcn36xx_rx_skb._entry_ptr.7, !10, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/ath/wcn36xx/txrx.c", i32 376, i32 3}
!15 = !{ptr @.str.10, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/ath/wcn36xx/txrx.c", i32 379, i32 3}
!17 = !{ptr @wcn36xx_rx_skb._entry.9, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @wcn36xx_rx_skb._entry_ptr.11, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.13, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/wireless/ath/wcn36xx/txrx.c", i32 389, i32 4}
!21 = !{ptr @wcn36xx_rx_skb._entry.12, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @wcn36xx_rx_skb._entry_ptr.14, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.16, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/wireless/ath/wcn36xx/txrx.c", i32 408, i32 2}
!25 = !{ptr @wcn36xx_rx_skb._entry.15, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @wcn36xx_rx_skb._entry_ptr.17, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.18, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/wireless/ath/wcn36xx/txrx.c", i32 626, i32 2}
!29 = !{ptr @.str.19, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @wcn36xx_start_tx._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @wcn36xx_start_tx._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.20, !28, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.21, !28, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.22, !28, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.23, !28, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.24, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/ath/wcn36xx/txrx.c", i32 632, i32 2}
!38 = !{ptr @.str.26, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/ath/wcn36xx/txrx.c", i32 637, i32 3}
!40 = !{ptr @wcn36xx_start_tx._entry.25, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @wcn36xx_start_tx._entry_ptr.27, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @ab_rx_ch_map, !43, !"ab_rx_ch_map", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/ath/wcn36xx/txrx.c", i32 37, i32 17}
!44 = !{ptr @wcn36xx_rate_table, !45, !"wcn36xx_rate_table", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/ath/wcn36xx/txrx.c", i32 41, i32 34}
!46 = !{ptr @.str.28, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/ath/wcn36xx/txrx.c", i32 441, i32 2}
!48 = !{ptr @.str.29, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @get_vif_by_addr._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @get_vif_by_addr._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.30, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/wireless/ath/wcn36xx/txrx.c", i32 580, i32 3}
!53 = !{ptr @.str.31, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @wcn36xx_set_tx_mgmt._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @wcn36xx_set_tx_mgmt._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{i32 1, !"wchar_size", i32 2}
!57 = !{i32 1, !"min_enum_size", i32 4}
!58 = !{i32 8, !"branch-target-enforcement", i32 0}
!59 = !{i32 8, !"sign-return-address", i32 0}
!60 = !{i32 8, !"sign-return-address-all", i32 0}
!61 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!62 = !{i32 7, !"uwtable", i32 1}
!63 = !{i32 7, !"frame-pointer", i32 2}
!64 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!65 = !{!"branch_weights", i32 6002, i32 2002}
!66 = !{!"branch_weights", i32 1, i32 2000}
!67 = !{i8 0, i8 2}
!68 = !{!"branch_weights", i32 2000, i32 1}
