; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/broadcom/b43/tables_lpphy.c_pt.bc'
source_filename = "../drivers/net/wireless/broadcom/b43/tables_lpphy.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.b206x_init_tab_entry = type { i16, i16, i16, i8 }
%struct.lpphy_tx_gain_table_entry = type { i8, i8, i8, i8, i8 }
%struct.b43_wldev = type { ptr, ptr, %struct.completion, %struct.atomic_t, i8, i8, i8, i8, i8, i8, %struct.b43_phy, %union.anon.137, i8, %struct.b43_stats, i32, [6 x i32], i32, %struct.b43_noise_calculation, i32, %struct.delayed_work, i32, %struct.work_struct, i16, [58 x %struct.b43_key], %struct.b43_firmware, %struct.list_head, ptr, i32, [32 x i32], i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.b43_phy = type { ptr, %struct.anon.135, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i8, i8, i32, i8, i32, ptr, i32, %struct.atomic_t, i8, i8 }
%struct.anon.135 = type { ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.137 = type { %struct.b43_dma }
%struct.b43_dma = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8 }
%struct.b43_stats = type { i8 }
%struct.b43_noise_calculation = type { i8, i8, [8 x [4 x i8]] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.b43_key = type { ptr, i8 }
%struct.b43_firmware = type { %struct.b43_firmware_file, %struct.b43_firmware_file, %struct.b43_firmware_file, %struct.b43_firmware_file, i16, i16, i32, i8, i8 }
%struct.b43_firmware_file = type { ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.b43_wl = type { ptr, ptr, %struct.mutex, %struct.spinlock, i8, ptr, [6 x i8], [6 x i8], i32, i8, i32, %struct.ieee80211_low_level_stats, %struct.hwrng, i8, [31 x i8], i8, i8, ptr, i8, i8, i8, %struct.work_struct, %struct.spinlock, [4 x %struct.b43_qos_params], %struct.work_struct, %struct.work_struct, [4 x %struct.sk_buff_head], [4 x i8], %struct.work_struct, %struct.b43_leds, [118 x i8], [2 x i8], [4 x i8], [4 x i8] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ieee80211_low_level_stats = type { i32, i32, i32, i32 }
%struct.hwrng = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, %struct.list_head, %struct.kref, %struct.completion }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.b43_qos_params = type { %struct.ieee80211_tx_queue_params }
%struct.ieee80211_tx_queue_params = type { i16, i16, i16, i8, i8, i8, i8, %struct.ieee80211_he_mu_edca_param_ac_rec }
%struct.ieee80211_he_mu_edca_param_ac_rec = type { i8, i8, i8 }
%struct.sk_buff_head = type { %union.anon.65, i32, %struct.spinlock }
%union.anon.65 = type { %struct.anon.66 }
%struct.anon.66 = type { ptr, ptr }
%struct.b43_leds = type { %struct.b43_led, %struct.b43_led, %struct.b43_led, %struct.b43_led, i8, %struct.work_struct }
%struct.b43_led = type { ptr, %struct.led_classdev, i8, i8, [32 x i8], %struct.atomic_t, i8 }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.b43_bus_dev = type { i32, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, i32, i16, i16, i16, i16, i8, i8, ptr, i16, i8 }
%union.anon = type { ptr }
%struct.ssb_sprom = type { i8, i8, [6 x i8], [6 x i8], [6 x i8], [6 x i8], i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, [2 x i8], i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8], [4 x i8], [4 x i8], [4 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, [4 x %struct.ssb_sprom_core_pwr_info], %struct.anon.102, %struct.anon.103, [8 x i16], [8 x i16], [8 x i16], [8 x i16], i8, [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8 }
%struct.ssb_sprom_core_pwr_info = type { i8, i8, i8, i8, i8, i8, [4 x i16], [4 x i16], [4 x i16], [4 x i16] }
%struct.anon.102 = type { i8, i8, i8, i8 }
%struct.anon.103 = type { %struct.anon.104, %struct.anon.105 }
%struct.anon.104 = type { i8, i8, i8, i8, i8 }
%struct.anon.105 = type { i8, i8, i8, i8, i8 }

@b2062_init_tab = internal constant { [47 x %struct.b206x_init_tab_entry], [72 x i8] } { [47 x %struct.b206x_init_tab_entry] [%struct.b206x_init_tab_entry { i16 4, i16 1, i16 0, i8 3 }, %struct.b206x_init_tab_entry { i16 17, i16 0, i16 202, i8 2 }, %struct.b206x_init_tab_entry { i16 19, i16 0, i16 0, i8 3 }, %struct.b206x_init_tab_entry { i16 20, i16 21, i16 42, i8 3 }, %struct.b206x_init_tab_entry { i16 23, i16 219, i16 255, i8 1 }, %struct.b206x_init_tab_entry { i16 30, i16 221, i16 0, i8 3 }, %struct.b206x_init_tab_entry { i16 32, i16 221, i16 0, i8 3 }, %struct.b206x_init_tab_entry { i16 33, i16 119, i16 181, i8 3 }, %struct.b206x_init_tab_entry { i16 34, i16 0, i16 255, i8 3 }, %struct.b206x_init_tab_entry { i16 38, i16 51, i16 51, i8 3 }, %struct.b206x_init_tab_entry { i16 40, i16 0, i16 0, i8 2 }, %struct.b206x_init_tab_entry { i16 47, i16 130, i16 128, i8 3 }, %struct.b206x_init_tab_entry { i16 51, i16 4, i16 4, i8 3 }, %struct.b206x_init_tab_entry { i16 52, i16 0, i16 0, i8 3 }, %struct.b206x_init_tab_entry { i16 73, i16 3, i16 3, i8 3 }, %struct.b206x_init_tab_entry { i16 74, i16 2, i16 2, i8 3 }, %struct.b206x_init_tab_entry { i16 82, i16 136, i16 27, i8 3 }, %struct.b206x_init_tab_entry { i16 16388, i16 1, i16 0, i8 3 }, %struct.b206x_init_tab_entry { i16 16400, i16 255, i16 255, i8 3 }, %struct.b206x_init_tab_entry { i16 16407, i16 248, i16 216, i8 3 }, %struct.b206x_init_tab_entry { i16 16408, i16 60, i16 36, i8 3 }, %struct.b206x_init_tab_entry { i16 16415, i16 136, i16 128, i8 3 }, %struct.b206x_init_tab_entry { i16 16417, i16 136, i16 128, i8 3 }, %struct.b206x_init_tab_entry { i16 16436, i16 152, i16 152, i8 3 }, %struct.b206x_init_tab_entry { i16 16437, i16 16, i16 16, i8 3 }, %struct.b206x_init_tab_entry { i16 16441, i16 67, i16 67, i8 3 }, %struct.b206x_init_tab_entry { i16 16442, i16 71, i16 71, i8 3 }, %struct.b206x_init_tab_entry { i16 16443, i16 12, i16 12, i8 3 }, %struct.b206x_init_tab_entry { i16 16444, i16 17, i16 17, i8 3 }, %struct.b206x_init_tab_entry { i16 16445, i16 17, i16 17, i8 3 }, %struct.b206x_init_tab_entry { i16 16446, i16 14, i16 14, i8 3 }, %struct.b206x_init_tab_entry { i16 16447, i16 8, i16 8, i8 3 }, %struct.b206x_init_tab_entry { i16 16448, i16 51, i16 51, i8 3 }, %struct.b206x_init_tab_entry { i16 16449, i16 10, i16 10, i8 3 }, %struct.b206x_init_tab_entry { i16 16450, i16 6, i16 6, i8 3 }, %struct.b206x_init_tab_entry { i16 16454, i16 62, i16 62, i8 3 }, %struct.b206x_init_tab_entry { i16 16455, i16 19, i16 19, i8 3 }, %struct.b206x_init_tab_entry { i16 16457, i16 98, i16 98, i8 3 }, %struct.b206x_init_tab_entry { i16 16458, i16 7, i16 7, i8 3 }, %struct.b206x_init_tab_entry { i16 16459, i16 22, i16 22, i8 3 }, %struct.b206x_init_tab_entry { i16 16460, i16 92, i16 92, i8 3 }, %struct.b206x_init_tab_entry { i16 16461, i16 149, i16 149, i8 3 }, %struct.b206x_init_tab_entry { i16 16466, i16 160, i16 160, i8 3 }, %struct.b206x_init_tab_entry { i16 16467, i16 4, i16 4, i8 3 }, %struct.b206x_init_tab_entry { i16 16469, i16 204, i16 204, i8 3 }, %struct.b206x_init_tab_entry { i16 16470, i16 7, i16 7, i8 3 }, %struct.b206x_init_tab_entry { i16 16479, i16 15, i16 15, i8 1 }], [72 x i8] zeroinitializer }, align 32
@b2063_init_tab = internal constant { [42 x %struct.b206x_init_tab_entry], [80 x i8] } { [42 x %struct.b206x_init_tab_entry] [%struct.b206x_init_tab_entry { i16 0, i16 0, i16 0, i8 2 }, %struct.b206x_init_tab_entry { i16 10, i16 1, i16 0, i8 1 }, %struct.b206x_init_tab_entry { i16 16, i16 0, i16 0, i8 2 }, %struct.b206x_init_tab_entry { i16 17, i16 0, i16 0, i8 2 }, %struct.b206x_init_tab_entry { i16 18, i16 0, i16 0, i8 2 }, %struct.b206x_init_tab_entry { i16 19, i16 0, i16 0, i8 2 }, %struct.b206x_init_tab_entry { i16 20, i16 0, i16 0, i8 2 }, %struct.b206x_init_tab_entry { i16 21, i16 0, i16 0, i8 2 }, %struct.b206x_init_tab_entry { i16 22, i16 0, i16 0, i8 2 }, %struct.b206x_init_tab_entry { i16 23, i16 0, i16 0, i8 2 }, %struct.b206x_init_tab_entry { i16 24, i16 0, i16 0, i8 2 }, %struct.b206x_init_tab_entry { i16 28, i16 232, i16 212, i8 3 }, %struct.b206x_init_tab_entry { i16 29, i16 167, i16 83, i8 3 }, %struct.b206x_init_tab_entry { i16 31, i16 240, i16 15, i8 3 }, %struct.b206x_init_tab_entry { i16 33, i16 31, i16 94, i8 2 }, %struct.b206x_init_tab_entry { i16 34, i16 127, i16 126, i8 2 }, %struct.b206x_init_tab_entry { i16 35, i16 48, i16 240, i8 2 }, %struct.b206x_init_tab_entry { i16 39, i16 127, i16 127, i8 3 }, %struct.b206x_init_tab_entry { i16 42, i16 12, i16 12, i8 3 }, %struct.b206x_init_tab_entry { i16 44, i16 60, i16 63, i8 1 }, %struct.b206x_init_tab_entry { i16 45, i16 252, i16 254, i8 1 }, %struct.b206x_init_tab_entry { i16 50, i16 8, i16 8, i8 3 }, %struct.b206x_init_tab_entry { i16 54, i16 96, i16 96, i8 3 }, %struct.b206x_init_tab_entry { i16 58, i16 48, i16 48, i8 3 }, %struct.b206x_init_tab_entry { i16 61, i16 12, i16 11, i8 3 }, %struct.b206x_init_tab_entry { i16 62, i16 16, i16 15, i8 3 }, %struct.b206x_init_tab_entry { i16 76, i16 61, i16 253, i8 3 }, %struct.b206x_init_tab_entry { i16 83, i16 2, i16 2, i8 3 }, %struct.b206x_init_tab_entry { i16 87, i16 86, i16 86, i8 3 }, %struct.b206x_init_tab_entry { i16 118, i16 247, i16 247, i8 3 }, %struct.b206x_init_tab_entry { i16 196, i16 113, i16 113, i8 3 }, %struct.b206x_init_tab_entry { i16 197, i16 113, i16 113, i8 3 }, %struct.b206x_init_tab_entry { i16 207, i16 240, i16 48, i8 1 }, %struct.b206x_init_tab_entry { i16 223, i16 119, i16 119, i8 3 }, %struct.b206x_init_tab_entry { i16 227, i16 3, i16 3, i8 3 }, %struct.b206x_init_tab_entry { i16 228, i16 15, i16 15, i8 3 }, %struct.b206x_init_tab_entry { i16 229, i16 15, i16 15, i8 3 }, %struct.b206x_init_tab_entry { i16 236, i16 119, i16 119, i8 3 }, %struct.b206x_init_tab_entry { i16 238, i16 119, i16 119, i8 3 }, %struct.b206x_init_tab_entry { i16 243, i16 4, i16 4, i8 3 }, %struct.b206x_init_tab_entry { i16 267, i16 0, i16 4, i8 1 }, %struct.b206x_init_tab_entry { i16 285, i16 3, i16 3, i8 3 }], [80 x i8] zeroinitializer }, align 32
@.str = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/net/wireless/broadcom/b43/tables_lpphy.c\00", [47 x i8] zeroinitializer }, align 32
@lpphy_min_sig_sq_table = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\DE\DC\DA\D8\D6\D4\D2\CF\CD\CA\C7\C4\C1\BE\BE\BE\BE\BE\BE\BE\BE\BE\BE\BE\BE\BE\00\BE\BE\BE\BE\BE\BE\BE\BE\BE\BE\BE\BE\BE\C1\C4\C7\CA\CD\CF\D2\D4\D6\D8\DA\DC\DE", [43 x i8] zeroinitializer }, align 32
@lpphy_rev01_noise_scale_table = internal constant { [40 x i16], [48 x i8] } { [40 x i16] [i16 -23388, i16 -23388, i16 -23388, i16 -23388, i16 -23388, i16 -23388, i16 -23388, i16 -23388, i16 -23388, i16 -23388, i16 -23388, i16 -23388, i16 -23388, i16 -23552, i16 -23388, i16 -23388, i16 -23388, i16 -23388, i16 -23388, i16 -23388, i16 -23388, i16 -23388, i16 -23388, i16 -23388, i16 -23388, i16 -23388, i16 164, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 19456, i16 11574, i16 0, i16 0, i16 19456, i16 11574], [48 x i8] zeroinitializer }, align 32
@lpphy_crs_gain_nft_table = internal constant { [33 x i16], [62 x i8] } { [33 x i16] [i16 870, i16 874, i16 879, i16 868, i16 871, i16 877, i16 884, i16 895, i16 879, i16 891, i16 906, i16 888, i16 871, i16 877, i16 885, i16 897, i16 884, i16 897, i16 914, i16 937, i16 964, i16 993, i16 1, i16 31, i16 64, i16 94, i16 127, i16 158, i16 189, i16 221, i16 253, i16 285, i16 317], [62 x i8] zeroinitializer }, align 32
@lpphy_rev01_ps_control_table = internal constant { [40 x i32], [32 x i8] } { [40 x i32] [i32 65536, i32 160, i32 262144, i32 72, i32 134742273, i32 128, i32 134742273, i32 64, i32 134742273, i32 192, i32 145233153, i32 192, i32 266927361, i32 192, i32 137363717, i32 192, i32 134742529, i32 192, i32 136839685, i32 192, i32 -402128130, i32 199, i32 671613446, i32 192, i32 134742530, i32 192, i32 195589634, i32 192, i32 275251517, i32 192, i32 271057157, i32 192, i32 143130882, i32 192, i32 136839430, i32 192, i32 -402128387, i32 199, i32 -1475870443, i32 192], [32 x i8] zeroinitializer }, align 32
@lpphy_rev0_ofdm_cck_gain_table = internal constant { [33 x i16], [62 x i8] } { [33 x i16] [i16 1, i16 1, i16 1, i16 1, i16 4097, i16 8193, i16 12289, i16 16385, i16 20481, i16 24577, i16 28673, i16 28689, i16 28705, i16 8245, i16 8261, i16 8277, i16 8293, i16 8309, i16 109, i16 125, i16 333, i16 349, i16 4445, i16 861, i16 4957, i16 1373, i16 5469, i16 3421, i16 7517, i16 11613, i16 21853, i16 25949, i16 30045], [62 x i8] zeroinitializer }, align 32
@lpphy_rev1_ofdm_cck_gain_table = internal constant { [33 x i16], [62 x i8] } { [33 x i16] [i16 20480, i16 24576, i16 28672, i16 1, i16 4097, i16 8193, i16 12289, i16 16385, i16 20481, i16 24577, i16 28673, i16 28689, i16 28705, i16 8245, i16 8261, i16 8277, i16 8293, i16 8309, i16 109, i16 125, i16 333, i16 349, i16 4445, i16 861, i16 4957, i16 1373, i16 5469, i16 3421, i16 7517, i16 11613, i16 21853, i16 25949, i16 30045], [62 x i8] zeroinitializer }, align 32
@lpphy_tx_power_control_table = internal constant { [576 x i32], [576 x i8] } { [576 x i32] [i32 80, i32 79, i32 78, i32 77, i32 76, i32 75, i32 74, i32 73, i32 72, i32 71, i32 70, i32 69, i32 68, i32 67, i32 66, i32 65, i32 64, i32 63, i32 62, i32 61, i32 60, i32 59, i32 58, i32 57, i32 56, i32 55, i32 54, i32 53, i32 52, i32 51, i32 50, i32 49, i32 48, i32 47, i32 46, i32 45, i32 44, i32 43, i32 42, i32 41, i32 40, i32 39, i32 38, i32 37, i32 36, i32 35, i32 34, i32 33, i32 32, i32 31, i32 30, i32 29, i32 28, i32 27, i32 26, i32 25, i32 24, i32 23, i32 22, i32 21, i32 20, i32 19, i32 18, i32 17, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 30112, i32 30112, i32 30113, i32 30113, i32 30114, i32 30114, i32 30115, i32 30115, i32 29872, i32 29872, i32 29873, i32 29873, i32 29874, i32 29874, i32 29875, i32 29875, i32 27936, i32 27936, i32 27937, i32 27937, i32 27938, i32 27938, i32 27939, i32 27939, i32 18016, i32 18016, i32 18017, i32 18017, i32 18018, i32 18018, i32 18019, i32 18019, i32 15968, i32 15968, i32 15969, i32 15969, i32 15970, i32 15970, i32 15971, i32 15971, i32 13920, i32 13920, i32 13921, i32 13921, i32 13922, i32 13922, i32 13923, i32 13923, i32 11872, i32 11872, i32 11873, i32 11873, i32 11874, i32 11874, i32 11875, i32 11875, i32 9824, i32 9824, i32 9825, i32 9825, i32 9826, i32 9826, i32 9827, i32 9827, i32 9696, i32 9696, i32 9697, i32 9697, i32 9698, i32 9698, i32 9699, i32 9699, i32 7648, i32 7648, i32 7649, i32 7649, i32 7650, i32 7650, i32 7651, i32 7651, i32 7520, i32 7520, i32 7521, i32 7521, i32 7522, i32 7522, i32 7523, i32 7523, i32 5472, i32 5472, i32 5473, i32 5473, i32 5474, i32 5474, i32 5475, i32 5475, i32 3424, i32 3424, i32 3425, i32 3425, i32 3426, i32 3426, i32 3427, i32 3427, i32 3296, i32 3296, i32 3297, i32 3297, i32 3298, i32 3298, i32 3299, i32 3299, i32 3600, i32 3600, i32 3601, i32 3601, i32 3602, i32 3602, i32 3603, i32 3603, i32 3056, i32 3056, i32 3057, i32 3057, i32 3058, i32 3058, i32 3059, i32 3059, i32 69206016, i32 67108864, i32 69206016, i32 67108864, i32 69206016, i32 67108864, i32 69206016, i32 67108864, i32 69206016, i32 67108864, i32 69206016, i32 67108864, i32 69206016, i32 67108864, i32 69206016, i32 67108864, i32 69206016, i32 67108864, i32 69206016, i32 67108864, i32 69206016, i32 67108864, i32 69206016, i32 67108864, i32 69206016, i32 67108864, i32 69206016, i32 67108864, i32 69206016, i32 67108864, i32 69206016, i32 67108864, i32 69206016, i32 67108864, i32 69206016, i32 67108864, i32 69206016, i32 67108864, i32 69206016, i32 67108864, i32 69206016, i32 67108864, i32 69206016, i32 67108864, i32 69206016, i32 67108864, i32 69206016, i32 67108864, i32 69206016, i32 67108864, i32 69206016, i32 67108864, i32 69206016, i32 67108864, i32 69206016, i32 67108864, i32 69206016, i32 67108864, i32 69206016, i32 67108864, i32 69206016, i32 67108864, i32 69206016, i32 67108864, i32 69206016, i32 67108864, i32 69206016, i32 67108864, i32 69206016, i32 67108864, i32 69206016, i32 67108864, i32 69206016, i32 67108864, i32 69206016, i32 67108864, i32 69206016, i32 67108864, i32 69206016, i32 67108864, i32 69206016, i32 67108864, i32 69206016, i32 67108864, i32 69206016, i32 67108864, i32 69206016, i32 67108864, i32 69206016, i32 67108864, i32 69206016, i32 67108864, i32 69206016, i32 67108864, i32 69206016, i32 67108864, i32 69206016, i32 67108864, i32 69206016, i32 67108864, i32 69206016, i32 67108864, i32 69206016, i32 67108864, i32 69206016, i32 67108864, i32 69206016, i32 67108864, i32 69206016, i32 67108864, i32 69206016, i32 67108864, i32 69206016, i32 67108864, i32 69206016, i32 67108864, i32 69206016, i32 67108864, i32 69206016, i32 67108864, i32 69206016, i32 67108864, i32 69206016, i32 67108864, i32 69206016, i32 67108864, i32 69206016, i32 67108864, i32 255, i32 764, i32 64008, i32 773, i32 518, i32 772, i32 64260, i32 64767, i32 1531, i32 64769, i32 1025, i32 6, i32 65283, i32 2044, i32 64520, i32 515, i32 65531, i32 1536, i32 64001, i32 64515, i32 65030, i32 65024, i32 258, i32 2045, i32 1275, i32 1791, i32 1277, i32 65018, i32 2043, i32 65018, i32 64006, i32 1280, i32 63746, i32 2042, i32 64250, i32 1280, i32 2042, i32 1792, i32 773, i32 1279, i32 2049, i32 1283, i32 1529, i32 1028, i32 64264, i32 1533, i32 1281, i32 1029, i32 64259, i32 2044, i32 1027, i32 771, i32 1026, i32 64255, i32 65029, i32 1533, i32 65025, i32 2042, i32 514, i32 1284, i32 258, i32 2302, i32 64004, i32 64252, i32 65032, i32 249, i32 762, i32 1022, i32 772, i32 1273, i32 256, i32 64774, i32 2300, i32 1793, i32 1284, i32 65022, i32 65020, i32 1022, i32 1796, i32 764, i32 1273, i32 65021, i32 64007, i32 517, i32 1021, i32 1531, i32 1273, i32 2052, i32 64518, i32 64761, i32 256, i32 65029, i32 1032, i32 64258, i32 772, i32 1790, i32 1274, i32 773, i32 2300, i32 258, i32 509, i32 1276, i32 65027, i32 1793, i32 507, i32 505, i32 518, i32 1789, i32 1288, i32 1792, i32 772, i32 1534, i32 1535, i32 64004, i32 771, i32 65275, i32 2041, i32 65276, i32 1277, i32 1532, i32 65533, i32 64520, i32 64505, i32 64775, i32 2299, i32 65026, i32 1787, i32 1794], [576 x i8] zeroinitializer }, align 32
@lpphy_rev2plus_noise_scale_table = internal constant { [53 x i16], [54 x i8] } { [53 x i16] [i16 164, i16 164, i16 164, i16 164, i16 164, i16 164, i16 164, i16 164, i16 164, i16 164, i16 164, i16 164, i16 164, i16 164, i16 164, i16 164, i16 164, i16 164, i16 164, i16 164, i16 164, i16 164, i16 164, i16 164, i16 164, i16 164, i16 0, i16 164, i16 164, i16 164, i16 164, i16 164, i16 164, i16 164, i16 164, i16 164, i16 164, i16 164, i16 164, i16 164, i16 164, i16 164, i16 164, i16 164, i16 164, i16 164, i16 164, i16 164, i16 164, i16 164, i16 164, i16 164, i16 164], [54 x i8] zeroinitializer }, align 32
@lpphy_rev2plus_ps_control_table = internal constant { [20 x i32], [48 x i8] } { [20 x i32] [i32 14913032, i32 14716472, i32 0, i32 0, i32 0, i32 8320, i32 24960, i32 12290, i32 64, i32 8258, i32 1572935, i32 524355, i32 65, i32 8385, i32 286726, i32 270338, i32 262144, i32 8195, i32 1572870, i32 524290], [48 x i8] zeroinitializer }, align 32
@lpphy_gain_idx_table = internal constant { [148 x i32], [144 x i8] } { [148 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 268435457, i32 0, i32 536871042, i32 0, i32 1073742084, i32 0, i32 1610629639, i32 1, i32 1879081866, i32 1, i32 -803142387, i32 1, i32 -532560253, i32 1, i32 1350731781, i32 0, i32 -2132589944, i32 0, i32 -1320942581, i32 0, i32 -509213298, i32 0, i32 302401297, i32 1, i32 -1331591662, i32 16, i32 -519944300, i32 16, i32 291703061, i32 17, i32 834914843, i32 17, i32 -1048278372, i32 24, i32 -236647008, i32 24, i32 575049249, i32 25, i32 1116131363, i32 25, i32 -1555574620, i32 25, i32 -1285025370, i32 25, i32 -202862041, i32 25, i32 67687209, i32 26, i32 608785322, i32 26, i32 879334571, i32 26, i32 1420432684, i32 26, i32 1690981805, i32 26, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 268435457, i32 0, i32 536871042, i32 0, i32 1073742084, i32 0, i32 1610629639, i32 1, i32 1879081866, i32 1, i32 -803142387, i32 1, i32 -532560253, i32 1, i32 1350731781, i32 0, i32 -2132589944, i32 0, i32 -1320942581, i32 0, i32 -509213298, i32 0, i32 302401297, i32 1, i32 -1331591662, i32 16, i32 -519944300, i32 16, i32 291703061, i32 17, i32 834914843, i32 17, i32 -1048278372, i32 24, i32 -236647008, i32 24, i32 575049249, i32 25, i32 1116131363, i32 25, i32 -1555574620, i32 25, i32 -1285025370, i32 25, i32 -202862041, i32 25, i32 67687209, i32 26, i32 608785322, i32 26, i32 879334571, i32 26, i32 1420432684, i32 26, i32 1690981805, i32 26], [144 x i8] zeroinitializer }, align 32
@lpphy_aux_gain_idx_table = internal constant { [26 x i16], [44 x i8] } { [26 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 1, i16 2, i16 4, i16 22, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 1, i16 2, i16 4, i16 22], [44 x i8] zeroinitializer }, align 32
@lpphy_sw_control_table = internal constant { [64 x i16], [32 x i8] } { [64 x i16] [i16 296, i16 296, i16 9, i16 9, i16 40, i16 40, i16 40, i16 40, i16 296, i16 296, i16 9, i16 9, i16 40, i16 40, i16 40, i16 40, i16 9, i16 9, i16 9, i16 9, i16 9, i16 9, i16 9, i16 9, i16 24, i16 24, i16 24, i16 24, i16 24, i16 24, i16 24, i16 24, i16 296, i16 296, i16 9, i16 9, i16 40, i16 40, i16 40, i16 40, i16 296, i16 296, i16 9, i16 9, i16 40, i16 40, i16 40, i16 40, i16 9, i16 9, i16 9, i16 9, i16 9, i16 9, i16 9, i16 9, i16 24, i16 24, i16 24, i16 24, i16 24, i16 24, i16 24, i16 24], [32 x i8] zeroinitializer }, align 32
@lpphy_gain_value_table = internal constant { [68 x i32], [80 x i8] } { [68 x i32] [i32 8, i32 14, i32 20, i32 26, i32 251, i32 4, i32 8, i32 13, i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 18, i32 21, i32 0, i32 6, i32 12, i32 0, i32 0, i32 0, i32 18, i32 0, i32 0, i32 0, i32 24, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 30, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21, i32 24, i32 27, i32 30, i32 0, i32 0, i32 0, i32 0, i32 0, i32 9, i32 241, i32 0, i32 0], [80 x i8] zeroinitializer }, align 32
@lpphy_papd_eps_table = internal constant { [64 x i32], [64 x i8] } { [64 x i32] [i32 0, i32 81916, i32 122867, i32 114672, i32 147433, i32 139231, i32 167903, i32 212946, i32 237515, i32 278471, i32 323522, i32 352181, i32 380848, i32 409512, i32 429987, i32 466840, i32 520082, i32 544651, i32 581506, i32 622455, i32 647017, i32 671586, i32 712535, i32 749388, i32 786241, i32 827193, i32 851760, i32 900903, i32 937758, i32 974614, i32 1015571, i32 1060625, i32 1117968, i32 1171217, i32 1240853, i32 1326876, i32 1412903, i32 1519413, i32 1654599, i32 1814367, i32 1994622, i32 2215844, i32 2473938, i32 2760712, i32 3125319, i32 3539088, i32 4014304, i32 4571445, i32 5222793, i32 5956055, i32 6758941, i32 7668314, i32 8385169, i32 8385215, i32 8385251, i32 8385279, i32 8385301, i32 8385321, i32 8385343, i32 8385366, i32 8385390, i32 8385436, i32 8385601, i32 8385798], [64 x i8] zeroinitializer }, align 32
@lpphy_papd_mult_table = internal constant { [64 x i32], [64 x i8] } { [64 x i32] [i32 1118688, i32 6627409, i32 6316117, i32 5963866, i32 5591136, i32 5312613, i32 5013611, i32 4706418, i32 4472952, i32 4194432, i32 3973255, i32 3752079, i32 3530904, i32 3334305, i32 3158186, i32 2982068, i32 2810047, i32 2654410, i32 2506966, i32 2363619, i32 2236656, i32 2105599, i32 1986830, i32 1876254, i32 1769775, i32 1675584, i32 1581395, i32 1491304, i32 1409405, i32 1331603, i32 1253803, i32 1184197, i32 1118688, i32 1057276, i32 995866, i32 938554, i32 889436, i32 840319, i32 791205, i32 746189, i32 705272, i32 664357, i32 627541, i32 594823, i32 558013, i32 529397, i32 500786, i32 472177, i32 443573, i32 419068, i32 398663, i32 374168, i32 353772, i32 333382, i32 317093, i32 296714, i32 280437, i32 264166, i32 251998, i32 235741, i32 223587, i32 211442, i32 199305, i32 187176], [64 x i8] zeroinitializer }, align 32
@lpphy_a0_gain_idx_table = internal constant { [64 x i32], [64 x i8] } { [64 x i32] [i32 1118688, i32 6627409, i32 6316117, i32 5963866, i32 5591136, i32 5312613, i32 5013611, i32 4706418, i32 4472952, i32 4194432, i32 3973255, i32 3752079, i32 3530904, i32 3334305, i32 3158186, i32 2982068, i32 2810047, i32 2654410, i32 2506966, i32 2363619, i32 2236656, i32 2105599, i32 1986830, i32 1876254, i32 1769775, i32 1675584, i32 1581395, i32 1491304, i32 1409405, i32 1331603, i32 1253803, i32 1184197, i32 1118688, i32 1057276, i32 995866, i32 938554, i32 889436, i32 840319, i32 791205, i32 746189, i32 705272, i32 664357, i32 627541, i32 594823, i32 558013, i32 529397, i32 500786, i32 472177, i32 443573, i32 419068, i32 398663, i32 374168, i32 353772, i32 333382, i32 317093, i32 296714, i32 280437, i32 264166, i32 251998, i32 235741, i32 223587, i32 211442, i32 199305, i32 187176], [64 x i8] zeroinitializer }, align 32
@lpphy_a0_aux_gain_idx_table = internal constant { [26 x i16], [44 x i8] } { [26 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 2, i16 20, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 2, i16 20], [44 x i8] zeroinitializer }, align 32
@lpphy_a0_gain_value_table = internal constant { [68 x i32], [80 x i8] } { [68 x i32] [i32 8, i32 14, i32 20, i32 26, i32 251, i32 4, i32 8, i32 13, i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 18, i32 21, i32 0, i32 6, i32 12, i32 0, i32 0, i32 0, i32 18, i32 0, i32 0, i32 0, i32 24, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 30, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21, i32 24, i32 27, i32 30, i32 0, i32 0, i32 0, i32 0, i32 0, i32 15, i32 247, i32 0, i32 0], [80 x i8] zeroinitializer }, align 32
@lpphy_rev0_nopa_tx_gain_table = internal constant { [128 x %struct.lpphy_tx_gain_table_entry], [160 x i8] } { [128 x %struct.lpphy_tx_gain_table_entry] [%struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 14, i8 0, i8 -104 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 14, i8 0, i8 -109 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 14, i8 0, i8 -113 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 14, i8 0, i8 -117 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 14, i8 0, i8 -121 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 14, i8 0, i8 -125 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 14, i8 0, i8 -128 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 14, i8 0, i8 124 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 14, i8 0, i8 121 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 14, i8 0, i8 117 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 14, i8 0, i8 114 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 14, i8 0, i8 111 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 14, i8 0, i8 107 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 14, i8 0, i8 104 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 14, i8 0, i8 101 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 14, i8 0, i8 99 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 14, i8 0, i8 96 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 14, i8 0, i8 93 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 14, i8 0, i8 90 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 14, i8 0, i8 88 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 14, i8 0, i8 85 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 14, i8 0, i8 83 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 14, i8 0, i8 81 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 14, i8 0, i8 78 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 14, i8 0, i8 76 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 14, i8 0, i8 74 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 14, i8 0, i8 72 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 14, i8 0, i8 70 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 14, i8 0, i8 68 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 14, i8 0, i8 66 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 14, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 14, i8 0, i8 62 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 14, i8 0, i8 60 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 14, i8 0, i8 59 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 14, i8 0, i8 57 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 13, i8 0, i8 72 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 13, i8 0, i8 70 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 13, i8 0, i8 68 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 13, i8 0, i8 66 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 13, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 13, i8 0, i8 62 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 13, i8 0, i8 60 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 13, i8 0, i8 59 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 13, i8 0, i8 57 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 12, i8 0, i8 71 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 12, i8 0, i8 69 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 12, i8 0, i8 67 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 12, i8 0, i8 65 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 12, i8 0, i8 63 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 12, i8 0, i8 62 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 12, i8 0, i8 60 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 12, i8 0, i8 58 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 12, i8 0, i8 57 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 11, i8 0, i8 70 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 11, i8 0, i8 68 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 11, i8 0, i8 66 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 11, i8 0, i8 65 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 11, i8 0, i8 63 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 11, i8 0, i8 61 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 11, i8 0, i8 59 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 11, i8 0, i8 58 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 10, i8 0, i8 71 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 10, i8 0, i8 69 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 10, i8 0, i8 67 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 10, i8 0, i8 65 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 10, i8 0, i8 63 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 10, i8 0, i8 61 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 10, i8 0, i8 60 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 10, i8 0, i8 58 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 10, i8 0, i8 56 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 9, i8 0, i8 70 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 9, i8 0, i8 68 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 9, i8 0, i8 66 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 9, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 9, i8 0, i8 62 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 9, i8 0, i8 60 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 9, i8 0, i8 59 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 14, i8 9, i8 0, i8 72 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 14, i8 9, i8 0, i8 70 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 14, i8 9, i8 0, i8 68 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 14, i8 9, i8 0, i8 66 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 14, i8 9, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 14, i8 9, i8 0, i8 62 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 14, i8 9, i8 0, i8 60 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 14, i8 9, i8 0, i8 59 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 13, i8 9, i8 0, i8 72 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 13, i8 9, i8 0, i8 70 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 13, i8 9, i8 0, i8 68 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 13, i8 9, i8 0, i8 66 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 13, i8 9, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 13, i8 9, i8 0, i8 63 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 13, i8 9, i8 0, i8 61 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 13, i8 9, i8 0, i8 59 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 13, i8 9, i8 0, i8 57 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 13, i8 8, i8 0, i8 72 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 13, i8 8, i8 0, i8 70 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 13, i8 8, i8 0, i8 68 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 13, i8 8, i8 0, i8 66 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 13, i8 8, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 13, i8 8, i8 0, i8 62 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 13, i8 8, i8 0, i8 60 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 13, i8 8, i8 0, i8 59 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 12, i8 8, i8 0, i8 72 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 12, i8 8, i8 0, i8 70 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 12, i8 8, i8 0, i8 68 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 12, i8 8, i8 0, i8 66 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 12, i8 8, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 12, i8 8, i8 0, i8 62 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 12, i8 8, i8 0, i8 61 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 12, i8 8, i8 0, i8 59 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 12, i8 7, i8 0, i8 73 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 12, i8 7, i8 0, i8 71 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 12, i8 7, i8 0, i8 69 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 12, i8 7, i8 0, i8 67 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 12, i8 7, i8 0, i8 65 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 12, i8 7, i8 0, i8 63 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 12, i8 7, i8 0, i8 61 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 12, i8 7, i8 0, i8 59 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 11, i8 7, i8 0, i8 72 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 11, i8 7, i8 0, i8 70 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 11, i8 7, i8 0, i8 68 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 11, i8 7, i8 0, i8 66 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 11, i8 7, i8 0, i8 65 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 11, i8 7, i8 0, i8 63 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 11, i8 7, i8 0, i8 61 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 11, i8 7, i8 0, i8 59 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 11, i8 6, i8 0, i8 73 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 11, i8 6, i8 0, i8 71 }], [160 x i8] zeroinitializer }, align 32
@lpphy_rev0_2ghz_tx_gain_table = internal constant { [128 x %struct.lpphy_tx_gain_table_entry], [160 x i8] } { [128 x %struct.lpphy_tx_gain_table_entry] [%struct.lpphy_tx_gain_table_entry { i8 4, i8 15, i8 9, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 15, i8 9, i8 0, i8 62 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 15, i8 9, i8 0, i8 60 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 15, i8 9, i8 0, i8 59 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 14, i8 9, i8 0, i8 72 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 14, i8 9, i8 0, i8 70 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 14, i8 9, i8 0, i8 68 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 14, i8 9, i8 0, i8 66 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 14, i8 9, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 14, i8 9, i8 0, i8 62 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 14, i8 9, i8 0, i8 60 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 14, i8 9, i8 0, i8 59 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 13, i8 9, i8 0, i8 72 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 13, i8 9, i8 0, i8 70 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 13, i8 9, i8 0, i8 68 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 13, i8 9, i8 0, i8 66 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 13, i8 9, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 13, i8 9, i8 0, i8 63 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 13, i8 9, i8 0, i8 61 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 13, i8 9, i8 0, i8 59 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 13, i8 9, i8 0, i8 57 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 13, i8 8, i8 0, i8 72 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 13, i8 8, i8 0, i8 70 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 13, i8 8, i8 0, i8 68 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 13, i8 8, i8 0, i8 66 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 13, i8 8, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 13, i8 8, i8 0, i8 62 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 13, i8 8, i8 0, i8 60 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 13, i8 8, i8 0, i8 59 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 12, i8 8, i8 0, i8 72 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 12, i8 8, i8 0, i8 70 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 12, i8 8, i8 0, i8 68 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 12, i8 8, i8 0, i8 66 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 12, i8 8, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 12, i8 8, i8 0, i8 62 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 12, i8 8, i8 0, i8 61 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 12, i8 8, i8 0, i8 59 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 12, i8 7, i8 0, i8 73 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 12, i8 7, i8 0, i8 71 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 12, i8 7, i8 0, i8 69 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 12, i8 7, i8 0, i8 67 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 12, i8 7, i8 0, i8 65 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 12, i8 7, i8 0, i8 63 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 12, i8 7, i8 0, i8 61 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 12, i8 7, i8 0, i8 59 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 11, i8 7, i8 0, i8 72 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 11, i8 7, i8 0, i8 70 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 11, i8 7, i8 0, i8 68 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 11, i8 7, i8 0, i8 66 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 11, i8 7, i8 0, i8 65 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 11, i8 7, i8 0, i8 63 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 11, i8 7, i8 0, i8 61 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 11, i8 7, i8 0, i8 59 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 11, i8 6, i8 0, i8 73 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 11, i8 6, i8 0, i8 71 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 11, i8 6, i8 0, i8 69 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 11, i8 6, i8 0, i8 67 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 11, i8 6, i8 0, i8 65 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 11, i8 6, i8 0, i8 63 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 11, i8 6, i8 0, i8 61 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 11, i8 6, i8 0, i8 60 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 10, i8 6, i8 0, i8 72 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 10, i8 6, i8 0, i8 70 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 10, i8 6, i8 0, i8 68 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 10, i8 6, i8 0, i8 66 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 10, i8 6, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 10, i8 6, i8 0, i8 62 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 10, i8 6, i8 0, i8 60 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 10, i8 6, i8 0, i8 59 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 10, i8 5, i8 0, i8 72 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 10, i8 5, i8 0, i8 70 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 10, i8 5, i8 0, i8 68 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 10, i8 5, i8 0, i8 66 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 10, i8 5, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 10, i8 5, i8 0, i8 62 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 10, i8 5, i8 0, i8 60 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 10, i8 5, i8 0, i8 59 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 9, i8 5, i8 0, i8 70 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 9, i8 5, i8 0, i8 68 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 9, i8 5, i8 0, i8 66 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 9, i8 5, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 9, i8 5, i8 0, i8 63 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 9, i8 5, i8 0, i8 61 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 9, i8 5, i8 0, i8 59 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 9, i8 4, i8 0, i8 71 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 9, i8 4, i8 0, i8 69 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 9, i8 4, i8 0, i8 67 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 9, i8 4, i8 0, i8 65 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 9, i8 4, i8 0, i8 63 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 9, i8 4, i8 0, i8 62 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 9, i8 4, i8 0, i8 60 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 9, i8 4, i8 0, i8 58 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 8, i8 4, i8 0, i8 70 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 8, i8 4, i8 0, i8 68 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 8, i8 4, i8 0, i8 66 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 8, i8 4, i8 0, i8 65 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 8, i8 4, i8 0, i8 63 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 8, i8 4, i8 0, i8 61 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 8, i8 4, i8 0, i8 59 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 7, i8 4, i8 0, i8 68 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 7, i8 4, i8 0, i8 66 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 7, i8 4, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 7, i8 4, i8 0, i8 62 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 7, i8 4, i8 0, i8 61 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 7, i8 4, i8 0, i8 59 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 7, i8 3, i8 0, i8 67 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 7, i8 3, i8 0, i8 65 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 7, i8 3, i8 0, i8 63 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 7, i8 3, i8 0, i8 62 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 7, i8 3, i8 0, i8 60 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 6, i8 3, i8 0, i8 65 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 6, i8 3, i8 0, i8 63 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 6, i8 3, i8 0, i8 61 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 6, i8 3, i8 0, i8 60 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 6, i8 3, i8 0, i8 58 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 5, i8 3, i8 0, i8 68 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 5, i8 3, i8 0, i8 66 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 5, i8 3, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 5, i8 3, i8 0, i8 62 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 5, i8 3, i8 0, i8 60 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 5, i8 3, i8 0, i8 59 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 5, i8 3, i8 0, i8 57 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 4, i8 2, i8 0, i8 83 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 4, i8 2, i8 0, i8 81 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 4, i8 2, i8 0, i8 78 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 4, i8 2, i8 0, i8 76 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 4, i8 2, i8 0, i8 74 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 4, i8 2, i8 0, i8 72 }], [160 x i8] zeroinitializer }, align 32
@lpphy_rev0_5ghz_tx_gain_table = internal constant { [128 x %struct.lpphy_tx_gain_table_entry], [160 x i8] } { [128 x %struct.lpphy_tx_gain_table_entry] [%struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 15, i8 0, i8 99 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 15, i8 0, i8 96 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 15, i8 0, i8 93 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 15, i8 0, i8 90 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 15, i8 0, i8 88 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 15, i8 0, i8 85 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 15, i8 0, i8 83 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 15, i8 0, i8 81 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 15, i8 0, i8 78 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 15, i8 0, i8 76 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 15, i8 0, i8 74 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 15, i8 0, i8 72 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 15, i8 0, i8 70 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 15, i8 0, i8 68 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 15, i8 0, i8 66 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 15, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 15, i8 0, i8 62 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 15, i8 0, i8 60 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 15, i8 0, i8 59 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 15, i8 0, i8 57 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 15, i8 0, i8 55 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 14, i8 0, i8 72 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 14, i8 0, i8 70 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 14, i8 0, i8 68 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 14, i8 0, i8 66 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 14, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 14, i8 0, i8 62 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 14, i8 0, i8 60 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 14, i8 0, i8 58 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 14, i8 0, i8 56 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 14, i8 0, i8 55 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 13, i8 0, i8 71 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 13, i8 0, i8 69 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 13, i8 0, i8 67 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 13, i8 0, i8 65 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 13, i8 0, i8 63 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 13, i8 0, i8 62 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 13, i8 0, i8 60 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 13, i8 0, i8 58 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 13, i8 0, i8 56 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 12, i8 0, i8 72 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 12, i8 0, i8 70 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 12, i8 0, i8 68 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 12, i8 0, i8 66 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 12, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 12, i8 0, i8 62 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 12, i8 0, i8 60 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 12, i8 0, i8 59 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 12, i8 0, i8 57 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 11, i8 0, i8 73 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 11, i8 0, i8 71 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 11, i8 0, i8 69 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 11, i8 0, i8 67 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 11, i8 0, i8 65 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 11, i8 0, i8 63 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 11, i8 0, i8 61 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 11, i8 0, i8 60 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 11, i8 0, i8 58 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 10, i8 0, i8 71 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 10, i8 0, i8 69 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 10, i8 0, i8 67 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 10, i8 0, i8 65 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 10, i8 0, i8 63 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 10, i8 0, i8 61 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 10, i8 0, i8 60 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 10, i8 0, i8 58 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 9, i8 0, i8 70 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 9, i8 0, i8 68 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 9, i8 0, i8 66 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 9, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 9, i8 0, i8 62 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 9, i8 0, i8 61 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 9, i8 0, i8 59 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 9, i8 0, i8 57 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 9, i8 0, i8 56 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 14, i8 9, i8 0, i8 68 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 14, i8 9, i8 0, i8 66 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 14, i8 9, i8 0, i8 65 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 14, i8 9, i8 0, i8 63 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 14, i8 9, i8 0, i8 61 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 14, i8 9, i8 0, i8 59 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 14, i8 9, i8 0, i8 58 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 13, i8 9, i8 0, i8 70 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 13, i8 9, i8 0, i8 68 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 13, i8 9, i8 0, i8 66 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 13, i8 9, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 13, i8 9, i8 0, i8 63 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 13, i8 9, i8 0, i8 61 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 13, i8 9, i8 0, i8 59 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 13, i8 9, i8 0, i8 57 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 13, i8 8, i8 0, i8 70 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 13, i8 8, i8 0, i8 68 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 13, i8 8, i8 0, i8 66 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 13, i8 8, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 13, i8 8, i8 0, i8 62 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 13, i8 8, i8 0, i8 60 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 13, i8 8, i8 0, i8 59 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 13, i8 8, i8 0, i8 57 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 12, i8 8, i8 0, i8 70 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 12, i8 8, i8 0, i8 68 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 12, i8 8, i8 0, i8 66 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 12, i8 8, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 12, i8 8, i8 0, i8 62 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 12, i8 8, i8 0, i8 61 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 12, i8 8, i8 0, i8 59 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 12, i8 8, i8 0, i8 57 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 12, i8 7, i8 0, i8 70 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 12, i8 7, i8 0, i8 68 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 12, i8 7, i8 0, i8 66 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 12, i8 7, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 12, i8 7, i8 0, i8 62 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 12, i8 7, i8 0, i8 61 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 12, i8 7, i8 0, i8 59 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 12, i8 7, i8 0, i8 57 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 11, i8 7, i8 0, i8 70 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 11, i8 7, i8 0, i8 68 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 11, i8 7, i8 0, i8 66 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 11, i8 7, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 11, i8 7, i8 0, i8 62 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 11, i8 7, i8 0, i8 61 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 11, i8 7, i8 0, i8 59 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 11, i8 7, i8 0, i8 57 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 11, i8 6, i8 0, i8 69 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 11, i8 6, i8 0, i8 67 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 11, i8 6, i8 0, i8 65 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 11, i8 6, i8 0, i8 63 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 11, i8 6, i8 0, i8 62 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 11, i8 6, i8 0, i8 60 }], [160 x i8] zeroinitializer }, align 32
@lpphy_rev1_nopa_tx_gain_table = internal constant { [137 x %struct.lpphy_tx_gain_table_entry], [179 x i8] } { [137 x %struct.lpphy_tx_gain_table_entry] [%struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 14, i8 0, i8 -104 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 14, i8 0, i8 -109 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 14, i8 0, i8 -113 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 14, i8 0, i8 -117 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 14, i8 0, i8 -121 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 14, i8 0, i8 -125 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 14, i8 0, i8 -128 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 14, i8 0, i8 124 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 14, i8 0, i8 121 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 14, i8 0, i8 117 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 14, i8 0, i8 114 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 14, i8 0, i8 111 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 14, i8 0, i8 107 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 14, i8 0, i8 104 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 14, i8 0, i8 101 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 14, i8 0, i8 99 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 14, i8 0, i8 96 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 14, i8 0, i8 93 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 14, i8 0, i8 90 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 14, i8 0, i8 88 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 14, i8 0, i8 85 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 14, i8 0, i8 83 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 14, i8 0, i8 81 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 14, i8 0, i8 78 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 14, i8 0, i8 76 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 14, i8 0, i8 74 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 14, i8 0, i8 72 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 14, i8 0, i8 70 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 14, i8 0, i8 68 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 14, i8 0, i8 66 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 14, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 14, i8 0, i8 62 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 14, i8 0, i8 60 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 14, i8 0, i8 59 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 14, i8 0, i8 57 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 13, i8 0, i8 72 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 13, i8 0, i8 70 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 14, i8 0, i8 68 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 14, i8 0, i8 66 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 14, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 14, i8 0, i8 62 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 14, i8 0, i8 60 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 14, i8 0, i8 59 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 14, i8 0, i8 57 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 13, i8 0, i8 72 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 13, i8 0, i8 70 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 13, i8 0, i8 68 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 13, i8 0, i8 66 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 13, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 13, i8 0, i8 62 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 13, i8 0, i8 60 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 13, i8 0, i8 59 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 13, i8 0, i8 57 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 12, i8 0, i8 71 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 12, i8 0, i8 69 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 12, i8 0, i8 67 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 12, i8 0, i8 65 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 12, i8 0, i8 63 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 12, i8 0, i8 62 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 12, i8 0, i8 60 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 12, i8 0, i8 58 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 12, i8 0, i8 57 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 11, i8 0, i8 70 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 11, i8 0, i8 68 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 11, i8 0, i8 66 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 11, i8 0, i8 65 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 11, i8 0, i8 63 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 11, i8 0, i8 61 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 11, i8 0, i8 59 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 11, i8 0, i8 58 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 10, i8 0, i8 71 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 10, i8 0, i8 69 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 10, i8 0, i8 67 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 10, i8 0, i8 65 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 10, i8 0, i8 63 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 10, i8 0, i8 61 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 10, i8 0, i8 60 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 10, i8 0, i8 58 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 10, i8 0, i8 56 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 9, i8 0, i8 70 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 9, i8 0, i8 68 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 9, i8 0, i8 66 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 9, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 9, i8 0, i8 62 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 9, i8 0, i8 60 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 9, i8 0, i8 59 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 14, i8 9, i8 0, i8 72 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 14, i8 9, i8 0, i8 70 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 14, i8 9, i8 0, i8 68 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 14, i8 9, i8 0, i8 66 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 14, i8 9, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 14, i8 9, i8 0, i8 62 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 14, i8 9, i8 0, i8 60 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 14, i8 9, i8 0, i8 59 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 13, i8 9, i8 0, i8 72 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 13, i8 9, i8 0, i8 70 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 13, i8 9, i8 0, i8 68 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 13, i8 9, i8 0, i8 66 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 13, i8 9, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 13, i8 9, i8 0, i8 63 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 13, i8 9, i8 0, i8 61 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 13, i8 9, i8 0, i8 59 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 13, i8 9, i8 0, i8 57 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 13, i8 8, i8 0, i8 72 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 13, i8 8, i8 0, i8 70 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 13, i8 8, i8 0, i8 68 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 13, i8 8, i8 0, i8 66 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 13, i8 8, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 13, i8 8, i8 0, i8 62 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 13, i8 8, i8 0, i8 60 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 13, i8 8, i8 0, i8 59 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 12, i8 8, i8 0, i8 72 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 12, i8 8, i8 0, i8 70 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 12, i8 8, i8 0, i8 68 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 12, i8 8, i8 0, i8 66 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 12, i8 8, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 12, i8 8, i8 0, i8 62 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 12, i8 8, i8 0, i8 61 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 12, i8 8, i8 0, i8 59 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 12, i8 7, i8 0, i8 73 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 12, i8 7, i8 0, i8 71 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 12, i8 7, i8 0, i8 69 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 12, i8 7, i8 0, i8 67 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 12, i8 7, i8 0, i8 65 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 12, i8 7, i8 0, i8 63 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 12, i8 7, i8 0, i8 61 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 12, i8 7, i8 0, i8 59 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 11, i8 7, i8 0, i8 72 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 11, i8 7, i8 0, i8 70 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 11, i8 7, i8 0, i8 68 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 11, i8 7, i8 0, i8 66 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 11, i8 7, i8 0, i8 65 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 11, i8 7, i8 0, i8 63 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 11, i8 7, i8 0, i8 61 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 11, i8 7, i8 0, i8 59 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 11, i8 6, i8 0, i8 73 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 11, i8 6, i8 0, i8 71 }], [179 x i8] zeroinitializer }, align 32
@lpphy_rev1_2ghz_tx_gain_table = internal constant { [128 x %struct.lpphy_tx_gain_table_entry], [160 x i8] } { [128 x %struct.lpphy_tx_gain_table_entry] [%struct.lpphy_tx_gain_table_entry { i8 4, i8 15, i8 15, i8 0, i8 90 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 15, i8 15, i8 0, i8 88 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 15, i8 15, i8 0, i8 85 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 15, i8 15, i8 0, i8 83 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 15, i8 15, i8 0, i8 81 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 15, i8 15, i8 0, i8 78 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 15, i8 15, i8 0, i8 76 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 15, i8 15, i8 0, i8 74 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 15, i8 15, i8 0, i8 72 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 15, i8 15, i8 0, i8 70 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 15, i8 15, i8 0, i8 68 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 15, i8 15, i8 0, i8 66 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 15, i8 15, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 15, i8 15, i8 0, i8 62 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 15, i8 15, i8 0, i8 60 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 15, i8 15, i8 0, i8 59 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 15, i8 14, i8 0, i8 72 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 15, i8 14, i8 0, i8 70 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 15, i8 14, i8 0, i8 68 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 15, i8 14, i8 0, i8 66 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 15, i8 14, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 15, i8 14, i8 0, i8 62 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 15, i8 14, i8 0, i8 60 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 15, i8 14, i8 0, i8 59 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 15, i8 13, i8 0, i8 72 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 15, i8 13, i8 0, i8 70 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 15, i8 13, i8 0, i8 68 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 15, i8 13, i8 0, i8 66 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 15, i8 13, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 15, i8 13, i8 0, i8 62 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 15, i8 13, i8 0, i8 60 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 15, i8 13, i8 0, i8 59 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 15, i8 12, i8 0, i8 72 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 15, i8 12, i8 0, i8 70 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 15, i8 12, i8 0, i8 68 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 15, i8 12, i8 0, i8 66 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 15, i8 12, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 15, i8 12, i8 0, i8 62 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 15, i8 12, i8 0, i8 60 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 15, i8 12, i8 0, i8 59 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 15, i8 11, i8 0, i8 72 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 15, i8 11, i8 0, i8 70 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 15, i8 11, i8 0, i8 68 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 15, i8 11, i8 0, i8 66 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 15, i8 11, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 15, i8 11, i8 0, i8 62 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 15, i8 11, i8 0, i8 60 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 15, i8 11, i8 0, i8 59 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 15, i8 10, i8 0, i8 72 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 15, i8 10, i8 0, i8 70 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 15, i8 10, i8 0, i8 68 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 15, i8 10, i8 0, i8 66 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 15, i8 10, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 15, i8 10, i8 0, i8 62 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 15, i8 10, i8 0, i8 60 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 15, i8 10, i8 0, i8 59 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 15, i8 9, i8 0, i8 72 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 15, i8 9, i8 0, i8 70 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 15, i8 9, i8 0, i8 68 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 15, i8 9, i8 0, i8 66 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 15, i8 9, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 15, i8 9, i8 0, i8 62 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 15, i8 9, i8 0, i8 60 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 15, i8 9, i8 0, i8 59 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 14, i8 9, i8 0, i8 72 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 14, i8 9, i8 0, i8 70 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 14, i8 9, i8 0, i8 68 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 14, i8 9, i8 0, i8 66 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 14, i8 9, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 14, i8 9, i8 0, i8 62 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 14, i8 9, i8 0, i8 60 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 14, i8 9, i8 0, i8 59 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 13, i8 9, i8 0, i8 72 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 13, i8 9, i8 0, i8 70 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 13, i8 9, i8 0, i8 68 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 13, i8 9, i8 0, i8 66 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 13, i8 9, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 13, i8 9, i8 0, i8 63 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 13, i8 9, i8 0, i8 61 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 13, i8 9, i8 0, i8 59 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 13, i8 9, i8 0, i8 57 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 13, i8 8, i8 0, i8 72 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 13, i8 8, i8 0, i8 70 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 13, i8 8, i8 0, i8 68 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 13, i8 8, i8 0, i8 66 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 13, i8 8, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 13, i8 8, i8 0, i8 62 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 13, i8 8, i8 0, i8 60 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 13, i8 8, i8 0, i8 59 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 12, i8 8, i8 0, i8 72 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 12, i8 8, i8 0, i8 70 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 12, i8 8, i8 0, i8 68 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 12, i8 8, i8 0, i8 66 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 12, i8 8, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 12, i8 8, i8 0, i8 62 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 12, i8 8, i8 0, i8 61 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 12, i8 8, i8 0, i8 59 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 12, i8 7, i8 0, i8 73 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 12, i8 7, i8 0, i8 71 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 12, i8 7, i8 0, i8 69 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 12, i8 7, i8 0, i8 67 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 12, i8 7, i8 0, i8 65 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 12, i8 7, i8 0, i8 63 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 12, i8 7, i8 0, i8 61 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 12, i8 7, i8 0, i8 59 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 11, i8 7, i8 0, i8 72 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 11, i8 7, i8 0, i8 70 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 11, i8 7, i8 0, i8 68 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 11, i8 7, i8 0, i8 66 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 11, i8 7, i8 0, i8 65 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 11, i8 7, i8 0, i8 63 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 11, i8 7, i8 0, i8 61 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 11, i8 7, i8 0, i8 59 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 11, i8 6, i8 0, i8 73 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 11, i8 6, i8 0, i8 71 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 11, i8 6, i8 0, i8 69 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 11, i8 6, i8 0, i8 67 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 11, i8 6, i8 0, i8 65 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 11, i8 6, i8 0, i8 63 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 11, i8 6, i8 0, i8 61 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 11, i8 6, i8 0, i8 60 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 10, i8 6, i8 0, i8 72 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 10, i8 6, i8 0, i8 70 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 10, i8 6, i8 0, i8 68 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 10, i8 6, i8 0, i8 66 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 10, i8 6, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 10, i8 6, i8 0, i8 62 }, %struct.lpphy_tx_gain_table_entry { i8 4, i8 10, i8 6, i8 0, i8 60 }], [160 x i8] zeroinitializer }, align 32
@lpphy_rev1_5ghz_tx_gain_table = internal constant { [128 x %struct.lpphy_tx_gain_table_entry], [160 x i8] } { [128 x %struct.lpphy_tx_gain_table_entry] [%struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 15, i8 0, i8 99 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 15, i8 0, i8 96 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 15, i8 0, i8 93 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 15, i8 0, i8 90 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 15, i8 0, i8 88 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 15, i8 0, i8 85 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 15, i8 0, i8 83 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 15, i8 0, i8 81 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 15, i8 0, i8 78 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 15, i8 0, i8 76 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 15, i8 0, i8 74 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 15, i8 0, i8 72 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 15, i8 0, i8 70 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 15, i8 0, i8 68 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 15, i8 0, i8 66 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 15, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 15, i8 0, i8 62 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 15, i8 0, i8 60 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 15, i8 0, i8 59 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 15, i8 0, i8 57 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 15, i8 0, i8 55 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 14, i8 0, i8 72 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 14, i8 0, i8 70 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 14, i8 0, i8 68 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 14, i8 0, i8 66 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 14, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 14, i8 0, i8 62 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 14, i8 0, i8 60 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 14, i8 0, i8 58 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 14, i8 0, i8 56 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 14, i8 0, i8 55 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 13, i8 0, i8 71 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 13, i8 0, i8 69 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 13, i8 0, i8 67 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 13, i8 0, i8 65 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 13, i8 0, i8 63 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 13, i8 0, i8 62 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 13, i8 0, i8 60 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 13, i8 0, i8 58 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 13, i8 0, i8 56 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 12, i8 0, i8 72 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 12, i8 0, i8 70 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 12, i8 0, i8 68 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 12, i8 0, i8 66 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 12, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 12, i8 0, i8 62 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 12, i8 0, i8 60 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 12, i8 0, i8 59 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 12, i8 0, i8 57 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 11, i8 0, i8 73 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 11, i8 0, i8 71 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 11, i8 0, i8 69 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 11, i8 0, i8 67 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 11, i8 0, i8 65 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 11, i8 0, i8 63 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 11, i8 0, i8 61 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 11, i8 0, i8 60 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 11, i8 0, i8 58 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 10, i8 0, i8 71 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 10, i8 0, i8 69 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 10, i8 0, i8 67 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 10, i8 0, i8 65 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 10, i8 0, i8 63 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 10, i8 0, i8 61 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 10, i8 0, i8 60 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 10, i8 0, i8 58 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 9, i8 0, i8 70 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 9, i8 0, i8 68 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 9, i8 0, i8 66 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 9, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 9, i8 0, i8 62 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 9, i8 0, i8 61 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 9, i8 0, i8 59 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 9, i8 0, i8 57 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 9, i8 0, i8 56 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 14, i8 9, i8 0, i8 68 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 14, i8 9, i8 0, i8 66 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 14, i8 9, i8 0, i8 65 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 14, i8 9, i8 0, i8 63 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 14, i8 9, i8 0, i8 61 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 14, i8 9, i8 0, i8 59 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 14, i8 9, i8 0, i8 58 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 13, i8 9, i8 0, i8 70 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 13, i8 9, i8 0, i8 68 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 13, i8 9, i8 0, i8 66 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 13, i8 9, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 13, i8 9, i8 0, i8 63 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 13, i8 9, i8 0, i8 61 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 13, i8 9, i8 0, i8 59 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 13, i8 9, i8 0, i8 57 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 13, i8 8, i8 0, i8 70 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 13, i8 8, i8 0, i8 68 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 13, i8 8, i8 0, i8 66 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 13, i8 8, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 13, i8 8, i8 0, i8 62 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 13, i8 8, i8 0, i8 60 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 13, i8 8, i8 0, i8 59 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 13, i8 8, i8 0, i8 57 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 12, i8 8, i8 0, i8 70 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 12, i8 8, i8 0, i8 68 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 12, i8 8, i8 0, i8 66 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 12, i8 8, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 12, i8 8, i8 0, i8 62 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 12, i8 8, i8 0, i8 61 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 12, i8 8, i8 0, i8 59 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 12, i8 8, i8 0, i8 57 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 12, i8 7, i8 0, i8 70 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 12, i8 7, i8 0, i8 68 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 12, i8 7, i8 0, i8 66 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 12, i8 7, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 12, i8 7, i8 0, i8 62 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 12, i8 7, i8 0, i8 61 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 12, i8 7, i8 0, i8 59 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 12, i8 7, i8 0, i8 57 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 11, i8 7, i8 0, i8 70 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 11, i8 7, i8 0, i8 68 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 11, i8 7, i8 0, i8 66 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 11, i8 7, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 11, i8 7, i8 0, i8 62 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 11, i8 7, i8 0, i8 61 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 11, i8 7, i8 0, i8 59 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 11, i8 7, i8 0, i8 57 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 11, i8 6, i8 0, i8 69 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 11, i8 6, i8 0, i8 67 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 11, i8 6, i8 0, i8 65 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 11, i8 6, i8 0, i8 63 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 11, i8 6, i8 0, i8 62 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 11, i8 6, i8 0, i8 60 }], [160 x i8] zeroinitializer }, align 32
@lpphy_rev2_nopa_tx_gain_table = internal constant { [128 x %struct.lpphy_tx_gain_table_entry], [160 x i8] } { [128 x %struct.lpphy_tx_gain_table_entry] [%struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 -53, i8 0, i8 -104 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 -53, i8 0, i8 -109 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 -53, i8 0, i8 -113 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 -53, i8 0, i8 -117 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 -53, i8 0, i8 -121 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 -53, i8 0, i8 -125 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 -53, i8 0, i8 -128 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 -53, i8 0, i8 124 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 -53, i8 0, i8 121 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 -53, i8 0, i8 117 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 -53, i8 0, i8 114 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 -53, i8 0, i8 111 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 -53, i8 0, i8 107 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 -53, i8 0, i8 104 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 -53, i8 0, i8 101 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 -53, i8 0, i8 99 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 -53, i8 0, i8 96 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 -53, i8 0, i8 93 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 -53, i8 0, i8 90 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 -53, i8 0, i8 88 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 -53, i8 0, i8 85 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 -53, i8 0, i8 83 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 -53, i8 0, i8 81 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 -53, i8 0, i8 78 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 -53, i8 0, i8 76 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 -53, i8 0, i8 74 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 -53, i8 0, i8 72 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 -53, i8 0, i8 70 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 -53, i8 0, i8 68 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 -53, i8 0, i8 66 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 -53, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 -59, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 -64, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 -70, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 -75, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 -80, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 -85, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 -90, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 -95, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 -99, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 -104, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 -108, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 -112, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 -116, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 -120, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 -124, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 -128, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 124, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 121, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 117, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 114, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 111, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 108, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 105, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 102, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 99, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 96, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 93, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 91, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 88, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 86, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 83, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 81, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 79, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 76, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 74, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 72, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 70, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 68, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 66, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 64, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -8, i8 64, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -8, i8 62, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -15, i8 62, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -15, i8 60, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -22, i8 60, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -22, i8 59, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -29, i8 59, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -29, i8 57, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -35, i8 57, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -35, i8 55, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -41, i8 55, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -41, i8 54, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -48, i8 54, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -48, i8 52, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -53, i8 52, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -53, i8 51, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -59, i8 51, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -59, i8 49, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -65, i8 49, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -65, i8 48, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -70, i8 48, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -70, i8 47, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -75, i8 47, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -75, i8 45, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -81, i8 45, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -81, i8 44, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -86, i8 44, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -86, i8 43, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -90, i8 43, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -90, i8 42, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -95, i8 42, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -95, i8 40, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -100, i8 40, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -100, i8 39, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -104, i8 39, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -104, i8 38, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -108, i8 38, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -108, i8 37, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -113, i8 37, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -113, i8 36, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -117, i8 36, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -117, i8 35, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -121, i8 35, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -121, i8 34, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -124, i8 34, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -124, i8 33, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -128, i8 33, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -128, i8 32, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 124, i8 32, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 124, i8 31, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 121, i8 31, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 121, i8 30, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 117, i8 30, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 117, i8 29, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 114, i8 29, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 114, i8 29, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 111, i8 29, i8 0, i8 64 }], [160 x i8] zeroinitializer }, align 32
@lpphy_rev2_2ghz_tx_gain_table = internal constant { [128 x %struct.lpphy_tx_gain_table_entry], [160 x i8] } { [128 x %struct.lpphy_tx_gain_table_entry] [%struct.lpphy_tx_gain_table_entry { i8 7, i8 99, i8 -1, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 96, i8 -1, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 93, i8 -1, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 90, i8 -1, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 88, i8 -1, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 85, i8 -1, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 83, i8 -1, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 81, i8 -1, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 78, i8 -1, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 76, i8 -1, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 74, i8 -1, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 72, i8 -1, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 70, i8 -1, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 68, i8 -1, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 66, i8 -1, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 64, i8 -1, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 64, i8 -1, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 62, i8 -1, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 62, i8 -8, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 60, i8 -8, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 60, i8 -15, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 59, i8 -15, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 59, i8 -22, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 57, i8 -22, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 57, i8 -29, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 55, i8 -29, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 55, i8 -35, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 54, i8 -35, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 54, i8 -41, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 52, i8 -41, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 52, i8 -48, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 51, i8 -48, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 51, i8 -53, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 49, i8 -53, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 49, i8 -59, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 48, i8 -59, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 48, i8 -65, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 47, i8 -65, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 47, i8 -70, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 45, i8 -70, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 45, i8 -75, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 44, i8 -75, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 44, i8 -81, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 43, i8 -81, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 43, i8 -86, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 42, i8 -86, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 42, i8 -90, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 40, i8 -90, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 40, i8 -95, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 39, i8 -95, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 39, i8 -100, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 38, i8 -100, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 38, i8 -104, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 37, i8 -104, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 37, i8 -108, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 36, i8 -108, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 36, i8 -113, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 35, i8 -113, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 35, i8 -117, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 34, i8 -117, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 34, i8 -121, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 33, i8 -121, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 33, i8 -124, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 32, i8 -124, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 32, i8 -128, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 31, i8 -128, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 31, i8 124, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 30, i8 124, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 30, i8 121, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 29, i8 121, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 29, i8 117, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 29, i8 117, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 29, i8 114, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 28, i8 114, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 28, i8 111, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 27, i8 111, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 27, i8 108, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 26, i8 108, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 26, i8 104, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 25, i8 104, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 25, i8 102, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 25, i8 102, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 25, i8 99, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 24, i8 99, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 24, i8 96, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 23, i8 96, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 23, i8 93, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 23, i8 93, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 23, i8 90, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 22, i8 90, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 22, i8 88, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 21, i8 88, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 21, i8 85, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 21, i8 85, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 21, i8 83, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 20, i8 83, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 20, i8 81, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 20, i8 81, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 20, i8 78, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 19, i8 78, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 19, i8 76, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 19, i8 76, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 19, i8 74, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 18, i8 74, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 18, i8 72, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 18, i8 72, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 18, i8 70, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 17, i8 70, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 17, i8 68, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 17, i8 68, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 17, i8 66, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 16, i8 66, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 16, i8 64, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 16, i8 64, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 16, i8 62, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 62, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 60, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 60, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 15, i8 59, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 14, i8 59, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 14, i8 57, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 14, i8 57, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 14, i8 55, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 14, i8 55, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 14, i8 54, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 13, i8 54, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 13, i8 52, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 7, i8 13, i8 52, i8 0, i8 64 }], [160 x i8] zeroinitializer }, align 32
@lpphy_rev2_5ghz_tx_gain_table = internal constant { [128 x %struct.lpphy_tx_gain_table_entry], [160 x i8] } { [128 x %struct.lpphy_tx_gain_table_entry] [%struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 -1, i8 0, i8 -104 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 -1, i8 0, i8 -109 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 -1, i8 0, i8 -113 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 -1, i8 0, i8 -117 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 -1, i8 0, i8 -121 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 -1, i8 0, i8 -125 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 -1, i8 0, i8 -128 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 -1, i8 0, i8 124 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 -1, i8 0, i8 121 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 -1, i8 0, i8 117 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 -1, i8 0, i8 114 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 -1, i8 0, i8 111 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 -1, i8 0, i8 107 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 -1, i8 0, i8 104 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 -1, i8 0, i8 101 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 -1, i8 0, i8 99 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 -1, i8 0, i8 96 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 -1, i8 0, i8 93 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 -1, i8 0, i8 90 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 -1, i8 0, i8 88 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 -1, i8 0, i8 85 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 -1, i8 0, i8 83 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 -1, i8 0, i8 81 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 -1, i8 0, i8 78 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 -1, i8 0, i8 76 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 -1, i8 0, i8 74 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 -1, i8 0, i8 72 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 -1, i8 0, i8 70 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 -1, i8 0, i8 68 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 -1, i8 0, i8 66 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 -1, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 -8, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 -15, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 -22, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 -29, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 -35, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 -41, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 -48, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 -53, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 -59, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 -65, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 -70, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 -75, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 -81, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 -86, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 -90, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 -95, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 -100, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 -104, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 -108, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 -113, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 -117, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 -121, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 -124, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 -128, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 124, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 121, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 117, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 114, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 111, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 108, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 104, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 102, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 99, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 96, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 93, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 90, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 88, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 85, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 83, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 81, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 78, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 76, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 74, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 72, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 70, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 68, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 66, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 64, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 64, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -1, i8 62, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -8, i8 62, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -8, i8 60, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -15, i8 60, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -15, i8 59, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -22, i8 59, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -22, i8 57, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -29, i8 57, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -29, i8 55, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -35, i8 55, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -35, i8 54, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -41, i8 54, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -41, i8 52, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -48, i8 52, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -48, i8 51, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -53, i8 51, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -53, i8 49, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -59, i8 49, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -59, i8 48, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -65, i8 48, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -65, i8 47, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -70, i8 47, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -70, i8 45, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -75, i8 45, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -75, i8 44, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -81, i8 44, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -81, i8 43, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -86, i8 43, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -86, i8 42, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -90, i8 42, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -90, i8 40, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -95, i8 40, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -95, i8 39, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -100, i8 39, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -100, i8 38, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -104, i8 38, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -104, i8 37, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -108, i8 37, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -108, i8 36, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -113, i8 36, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -113, i8 35, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -117, i8 35, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -117, i8 34, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -121, i8 34, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -121, i8 33, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -124, i8 33, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -124, i8 32, i8 0, i8 64 }, %struct.lpphy_tx_gain_table_entry { i8 -1, i8 -128, i8 32, i8 0, i8 64 }], [160 x i8] zeroinitializer }, align 32
@lpphy_iqlo_cal_table = internal constant { <{ [88 x i16], [20 x i16] }>, [40 x i8] } { <{ [88 x i16], [20 x i16] }> <{ [88 x i16] [i16 512, i16 768, i16 1024, i16 1536, i16 2048, i16 2816, i16 4096, i16 4097, i16 4098, i16 4099, i16 4100, i16 4101, i16 4102, i16 4103, i16 5895, i16 8199, i16 11527, i16 16391, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 512, i16 768, i16 1024, i16 1536, i16 2048, i16 2816, i16 4096, i16 4097, i16 4098, i16 4099, i16 4100, i16 4101, i16 4102, i16 4103, i16 5895, i16 8199, i16 11527, i16 16391, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 16384], [20 x i16] zeroinitializer }>, [40 x i8] zeroinitializer }, align 32
@lpphy_gain_table = internal constant { <{ [46 x i16], [50 x i16] }>, [32 x i8] } { <{ [46 x i16], [50 x i16] }> <{ [46 x i16] [i16 0, i16 1024, i16 2048, i16 2050, i16 2052, i16 2054, i16 2055, i16 2056, i16 2058, i16 2059, i16 2060, i16 2062, i16 2063, i16 2064, i16 2066, i16 2067, i16 2068, i16 2070, i16 2071, i16 2074, i16 2075, i16 2079, i16 2080, i16 2084, i16 2096, i16 2100, i16 2103, i16 2107, i16 2111, i16 2112, i16 2116, i16 2135, i16 2139, i16 2143, i16 2263, i16 2267, i16 2271, i16 2391, i16 2395, i16 2399, i16 2903, i16 2907, i16 2911, i16 3935, i16 4959, i16 5983], [50 x i16] zeroinitializer }>, [32 x i8] zeroinitializer }, align 32
@lpphy_a0_gain_table = internal constant { <{ [44 x i16], [52 x i16] }>, [32 x i8] } { <{ [44 x i16], [52 x i16] }> <{ [44 x i16] [i16 0, i16 2, i16 4, i16 6, i16 7, i16 8, i16 10, i16 11, i16 12, i16 14, i16 15, i16 16, i16 18, i16 19, i16 20, i16 22, i16 23, i16 26, i16 27, i16 31, i16 32, i16 36, i16 48, i16 52, i16 55, i16 59, i16 63, i16 64, i16 68, i16 87, i16 91, i16 95, i16 215, i16 219, i16 223, i16 343, i16 347, i16 351, i16 855, i16 859, i16 863, i16 1887, i16 2911, i16 3935], [52 x i16] zeroinitializer }>, [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 46]
@__sancov_gen_cov_switch_values.4 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 10]
@__sancov_gen_cov_switch_values.5 = internal global [5 x i64] [i64 3, i64 32, i64 268435456, i64 536870912, i64 805306368]
@__sancov_gen_cov_switch_values.6 = internal global [5 x i64] [i64 3, i64 32, i64 268435456, i64 536870912, i64 805306368]
@__sancov_gen_cov_switch_values.7 = internal global [5 x i64] [i64 3, i64 32, i64 268435456, i64 536870912, i64 805306368]
@__sancov_gen_cov_switch_values.8 = internal global [5 x i64] [i64 3, i64 32, i64 268435456, i64 536870912, i64 805306368]
@__sancov_gen_cov_switch_values.9 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@___asan_gen_.10 = private unnamed_addr constant [15 x i8] c"b2062_init_tab\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 29, i32 42 }
@___asan_gen_.13 = private unnamed_addr constant [15 x i8] c"b2063_init_tab\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 244, i32 42 }
@___asan_gen_.16 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 587, i32 2 }
@___asan_gen_.19 = private unnamed_addr constant [23 x i8] c"lpphy_min_sig_sq_table\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 715, i32 17 }
@___asan_gen_.22 = private unnamed_addr constant [30 x i8] c"lpphy_rev01_noise_scale_table\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 724, i32 18 }
@___asan_gen_.25 = private unnamed_addr constant [25 x i8] c"lpphy_crs_gain_nft_table\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 742, i32 18 }
@___asan_gen_.28 = private unnamed_addr constant [29 x i8] c"lpphy_rev01_ps_control_table\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 759, i32 18 }
@___asan_gen_.31 = private unnamed_addr constant [31 x i8] c"lpphy_rev0_ofdm_cck_gain_table\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 796, i32 18 }
@___asan_gen_.34 = private unnamed_addr constant [31 x i8] c"lpphy_rev1_ofdm_cck_gain_table\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 803, i32 18 }
@___asan_gen_.37 = private unnamed_addr constant [29 x i8] c"lpphy_tx_power_control_table\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 814, i32 18 }
@___asan_gen_.40 = private unnamed_addr constant [33 x i8] c"lpphy_rev2plus_noise_scale_table\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 732, i32 18 }
@___asan_gen_.43 = private unnamed_addr constant [32 x i8] c"lpphy_rev2plus_ps_control_table\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 769, i32 18 }
@___asan_gen_.46 = private unnamed_addr constant [21 x i8] c"lpphy_gain_idx_table\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 913, i32 18 }
@___asan_gen_.49 = private unnamed_addr constant [25 x i8] c"lpphy_aux_gain_idx_table\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 941, i32 18 }
@___asan_gen_.52 = private unnamed_addr constant [23 x i8] c"lpphy_sw_control_table\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 1025, i32 18 }
@___asan_gen_.55 = private unnamed_addr constant [23 x i8] c"lpphy_gain_value_table\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 947, i32 18 }
@___asan_gen_.58 = private unnamed_addr constant [21 x i8] c"lpphy_papd_eps_table\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 1041, i32 18 }
@___asan_gen_.61 = private unnamed_addr constant [22 x i8] c"lpphy_papd_mult_table\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 1055, i32 18 }
@___asan_gen_.64 = private unnamed_addr constant [24 x i8] c"lpphy_a0_gain_idx_table\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 976, i32 18 }
@___asan_gen_.67 = private unnamed_addr constant [28 x i8] c"lpphy_a0_aux_gain_idx_table\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 990, i32 18 }
@___asan_gen_.70 = private unnamed_addr constant [26 x i8] c"lpphy_a0_gain_value_table\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 996, i32 18 }
@___asan_gen_.73 = private unnamed_addr constant [30 x i8] c"lpphy_rev0_nopa_tx_gain_table\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 1069, i32 41 }
@___asan_gen_.76 = private unnamed_addr constant [30 x i8] c"lpphy_rev0_2ghz_tx_gain_table\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 1200, i32 41 }
@___asan_gen_.79 = private unnamed_addr constant [30 x i8] c"lpphy_rev0_5ghz_tx_gain_table\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 1331, i32 41 }
@___asan_gen_.82 = private unnamed_addr constant [30 x i8] c"lpphy_rev1_nopa_tx_gain_table\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 1462, i32 41 }
@___asan_gen_.85 = private unnamed_addr constant [30 x i8] c"lpphy_rev1_2ghz_tx_gain_table\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 1602, i32 41 }
@___asan_gen_.88 = private unnamed_addr constant [30 x i8] c"lpphy_rev1_5ghz_tx_gain_table\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 1733, i32 41 }
@___asan_gen_.91 = private unnamed_addr constant [30 x i8] c"lpphy_rev2_nopa_tx_gain_table\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 1864, i32 41 }
@___asan_gen_.94 = private unnamed_addr constant [30 x i8] c"lpphy_rev2_2ghz_tx_gain_table\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 1995, i32 41 }
@___asan_gen_.97 = private unnamed_addr constant [30 x i8] c"lpphy_rev2_5ghz_tx_gain_table\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 2126, i32 41 }
@___asan_gen_.100 = private unnamed_addr constant [21 x i8] c"lpphy_iqlo_cal_table\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 781, i32 18 }
@___asan_gen_.103 = private unnamed_addr constant [17 x i8] c"lpphy_gain_table\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 962, i32 18 }
@___asan_gen_.106 = private unnamed_addr constant [20 x i8] c"lpphy_a0_gain_table\00", align 1
@___asan_gen_.107 = private constant [52 x i8] c"../drivers/net/wireless/broadcom/b43/tables_lpphy.c\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 1011, i32 18 }
@llvm.compiler.used = appending global [33 x ptr] [ptr @b2062_init_tab, ptr @b2063_init_tab, ptr @.str, ptr @lpphy_min_sig_sq_table, ptr @lpphy_rev01_noise_scale_table, ptr @lpphy_crs_gain_nft_table, ptr @lpphy_rev01_ps_control_table, ptr @lpphy_rev0_ofdm_cck_gain_table, ptr @lpphy_rev1_ofdm_cck_gain_table, ptr @lpphy_tx_power_control_table, ptr @lpphy_rev2plus_noise_scale_table, ptr @lpphy_rev2plus_ps_control_table, ptr @lpphy_gain_idx_table, ptr @lpphy_aux_gain_idx_table, ptr @lpphy_sw_control_table, ptr @lpphy_gain_value_table, ptr @lpphy_papd_eps_table, ptr @lpphy_papd_mult_table, ptr @lpphy_a0_gain_idx_table, ptr @lpphy_a0_aux_gain_idx_table, ptr @lpphy_a0_gain_value_table, ptr @lpphy_rev0_nopa_tx_gain_table, ptr @lpphy_rev0_2ghz_tx_gain_table, ptr @lpphy_rev0_5ghz_tx_gain_table, ptr @lpphy_rev1_nopa_tx_gain_table, ptr @lpphy_rev1_2ghz_tx_gain_table, ptr @lpphy_rev1_5ghz_tx_gain_table, ptr @lpphy_rev2_nopa_tx_gain_table, ptr @lpphy_rev2_2ghz_tx_gain_table, ptr @lpphy_rev2_5ghz_tx_gain_table, ptr @lpphy_iqlo_cal_table, ptr @lpphy_gain_table, ptr @lpphy_a0_gain_table], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b2062_init_tab to i32), i32 376, i32 448, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b2063_init_tab to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpphy_min_sig_sq_table to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpphy_rev01_noise_scale_table to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpphy_crs_gain_nft_table to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpphy_rev01_ps_control_table to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpphy_rev0_ofdm_cck_gain_table to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpphy_rev1_ofdm_cck_gain_table to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpphy_tx_power_control_table to i32), i32 2304, i32 2880, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpphy_rev2plus_noise_scale_table to i32), i32 106, i32 160, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpphy_rev2plus_ps_control_table to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpphy_gain_idx_table to i32), i32 592, i32 736, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpphy_aux_gain_idx_table to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpphy_sw_control_table to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpphy_gain_value_table to i32), i32 272, i32 352, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpphy_papd_eps_table to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpphy_papd_mult_table to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpphy_a0_gain_idx_table to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpphy_a0_aux_gain_idx_table to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpphy_a0_gain_value_table to i32), i32 272, i32 352, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpphy_rev0_nopa_tx_gain_table to i32), i32 640, i32 800, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpphy_rev0_2ghz_tx_gain_table to i32), i32 640, i32 800, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpphy_rev0_5ghz_tx_gain_table to i32), i32 640, i32 800, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpphy_rev1_nopa_tx_gain_table to i32), i32 685, i32 864, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpphy_rev1_2ghz_tx_gain_table to i32), i32 640, i32 800, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpphy_rev1_5ghz_tx_gain_table to i32), i32 640, i32 800, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpphy_rev2_nopa_tx_gain_table to i32), i32 640, i32 800, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpphy_rev2_2ghz_tx_gain_table to i32), i32 640, i32 800, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpphy_rev2_5ghz_tx_gain_table to i32), i32 640, i32 800, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpphy_iqlo_cal_table to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpphy_gain_table to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpphy_a0_gain_table to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @b2062_upload_init_table(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %wl = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.020 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [47 x %struct.b206x_init_tab_entry], ptr @b2062_init_tab, i32 0, i32 %i.020
  %0 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wl, align 4
  %hw.i = getelementptr inbounds %struct.b43_wl, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw.i, align 4
  %chandef.i = getelementptr inbounds %struct.ieee80211_conf, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %chandef.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chandef.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp1 = icmp eq i32 %7, 0
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %8 = zext i32 %i.020 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %i.020, label %if.end [
    i32 46, label %if.then.for.inc_crit_edge
    i32 4, label %if.then.for.inc_crit_edge23
  ]

if.then.for.inc_crit_edge23:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #4
  %value_g = getelementptr [47 x %struct.b206x_init_tab_entry], ptr @b2062_init_tab, i32 0, i32 %i.020, i32 2
  br label %for.inc.sink.split

if.else:                                          ; preds = %for.body
  %9 = zext i32 %i.020 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %i.020, label %if.end8 [
    i32 10, label %if.else.for.inc_crit_edge
    i32 1, label %if.else.for.inc_crit_edge24
  ]

if.else.for.inc_crit_edge24:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc

if.end8:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #4
  %value_a = getelementptr [47 x %struct.b206x_init_tab_entry], ptr @b2062_init_tab, i32 0, i32 %i.020, i32 1
  br label %for.inc.sink.split

for.inc.sink.split:                               ; preds = %if.end8, %if.end
  %value_g.sink = phi ptr [ %value_g, %if.end ], [ %value_a, %if.end8 ]
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %10)
  %.sink = load i16, ptr %arrayidx, align 2
  %11 = ptrtoint ptr %value_g.sink to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %value_g.sink, align 2
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext %.sink, i16 noundef zeroext %12) #2
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %if.else.for.inc_crit_edge, %if.else.for.inc_crit_edge24, %if.then.for.inc_crit_edge, %if.then.for.inc_crit_edge23
  %inc = add nuw nsw i32 %i.020, 1
  %exitcond.not = icmp eq i32 %inc, 47
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43_radio_write(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @b2063_upload_init_table(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %wl = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.020 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [42 x %struct.b206x_init_tab_entry], ptr @b2063_init_tab, i32 0, i32 %i.020
  %0 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wl, align 4
  %hw.i = getelementptr inbounds %struct.b43_wl, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw.i, align 4
  %chandef.i = getelementptr inbounds %struct.ieee80211_conf, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %chandef.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chandef.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp1 = icmp eq i32 %7, 0
  %flags = getelementptr [42 x %struct.b206x_init_tab_entry], ptr @b2063_init_tab, i32 0, i32 %i.020, i32 3
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %flags, align 2
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %10 = and i8 %9, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  br i1 %tobool.not, label %if.then.for.inc_crit_edge, label %if.end

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #4
  %value_g = getelementptr [42 x %struct.b206x_init_tab_entry], ptr @b2063_init_tab, i32 0, i32 %i.020, i32 2
  br label %for.inc.sink.split

if.else:                                          ; preds = %for.body
  %11 = and i8 %9, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool6.not = icmp eq i8 %11, 0
  br i1 %tobool6.not, label %if.else.for.inc_crit_edge, label %if.end8

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc

if.end8:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #4
  %value_a = getelementptr [42 x %struct.b206x_init_tab_entry], ptr @b2063_init_tab, i32 0, i32 %i.020, i32 1
  br label %for.inc.sink.split

for.inc.sink.split:                               ; preds = %if.end8, %if.end
  %value_g.sink = phi ptr [ %value_g, %if.end ], [ %value_a, %if.end8 ]
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %12)
  %.sink = load i16, ptr %arrayidx, align 2
  %13 = ptrtoint ptr %value_g.sink to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %value_g.sink, align 2
  tail call void @b43_radio_write(ptr noundef %dev, i16 noundef zeroext %.sink, i16 noundef zeroext %14) #2
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %if.else.for.inc_crit_edge, %if.then.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.020, 1
  %exitcond.not = icmp eq i32 %inc, 42
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @b43_lptab_read(ptr noundef %dev, i32 noundef %offset) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %offset, -268435456
  %and1 = and i32 %offset, 268369920
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %cmp.not = icmp eq i32 %and1, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end, !prof !85

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 587, i32 noundef 9, ptr noundef null) #2
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %0 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %and, label %do.end44 [
    i32 268435456, label %sw.bb
    i32 536870912, label %sw.bb22
    i32 805306368, label %sw.bb26
  ]

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  %conv = trunc i32 %offset to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1109, i16 noundef zeroext %conv) #2
  %call = tail call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 1110) #2
  %1 = and i16 %call, 255
  %and21 = zext i16 %1 to i32
  br label %sw.epilog

sw.bb22:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  %conv23 = trunc i32 %offset to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1109, i16 noundef zeroext %conv23) #2
  %call24 = tail call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 1110) #2
  %conv25 = zext i16 %call24 to i32
  br label %sw.epilog

sw.bb26:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  %conv27 = trunc i32 %offset to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1109, i16 noundef zeroext %conv27) #2
  %call28 = tail call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 1111) #2
  %conv29 = zext i16 %call28 to i32
  %shl = shl nuw i32 %conv29, 16
  %call30 = tail call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 1110) #2
  %conv31 = zext i16 %call30 to i32
  %or = or i32 %shl, %conv31
  br label %sw.epilog

do.end44:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 605, i32 noundef 9, ptr noundef null) #2
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end44, %sw.bb26, %sw.bb22, %sw.bb
  %value.0 = phi i32 [ 0, %do.end44 ], [ %or, %sw.bb26 ], [ %conv25, %sw.bb22 ], [ %and21, %sw.bb ]
  ret i32 %value.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43_phy_write(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @b43_phy_read(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @b43_lptab_read_bulk(ptr noundef %dev, i32 noundef %offset, i32 noundef %nr_elements, ptr nocapture noundef %_data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %offset, -268435456
  %and1 = and i32 %offset, 268369920
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %cmp.not = icmp eq i32 %and1, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end, !prof !85

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 621, i32 noundef 9, ptr noundef null) #2
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %conv = trunc i32 %offset to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1109, i16 noundef zeroext %conv) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_elements)
  %cmp2076.not = icmp eq i32 %nr_elements, 0
  br i1 %cmp2076.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.078 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %data.077 = phi ptr [ %data.1, %for.inc.for.body_crit_edge ], [ %_data, %if.end.for.body_crit_edge ]
  %0 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %and, label %do.end45 [
    i32 268435456, label %sw.bb
    i32 536870912, label %sw.bb25
    i32 805306368, label %sw.bb27
  ]

sw.bb:                                            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  %call = tail call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 1110) #2
  %conv24 = trunc i16 %call to i8
  %1 = ptrtoint ptr %data.077 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %conv24, ptr %data.077, align 1
  %incdec.ptr = getelementptr i8, ptr %data.077, i32 1
  br label %for.inc

sw.bb25:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  %call26 = tail call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 1110) #2
  %2 = ptrtoint ptr %data.077 to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %call26, ptr %data.077, align 2
  %add.ptr = getelementptr i8, ptr %data.077, i32 2
  br label %for.inc

sw.bb27:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  %call28 = tail call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 1111) #2
  %conv29 = zext i16 %call28 to i32
  %shl = shl nuw i32 %conv29, 16
  %3 = ptrtoint ptr %data.077 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %shl, ptr %data.077, align 4
  %call30 = tail call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 1110) #2
  %conv31 = zext i16 %call30 to i32
  %4 = ptrtoint ptr %data.077 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data.077, align 4
  %or = or i32 %5, %conv31
  store i32 %or, ptr %data.077, align 4
  %add.ptr32 = getelementptr i8, ptr %data.077, i32 4
  br label %for.inc

do.end45:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 642, i32 noundef 9, ptr noundef null) #2
  br label %for.inc

for.inc:                                          ; preds = %do.end45, %sw.bb27, %sw.bb25, %sw.bb
  %data.1 = phi ptr [ %data.077, %do.end45 ], [ %add.ptr32, %sw.bb27 ], [ %add.ptr, %sw.bb25 ], [ %incdec.ptr, %sw.bb ]
  %inc = add nuw i32 %i.078, 1
  %exitcond.not = icmp eq i32 %inc, %nr_elements
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @b43_lptab_write(ptr noundef %dev, i32 noundef %offset, i32 noundef %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %offset, -268435456
  %and1 = and i32 %offset, 268369920
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %cmp.not = icmp eq i32 %and1, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end, !prof !85

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 653, i32 noundef 9, ptr noundef null) #2
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %0 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %and, label %do.end104 [
    i32 268435456, label %sw.bb
    i32 536870912, label %sw.bb53
    i32 805306368, label %sw.bb88
  ]

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %value)
  %tobool22.not = icmp ult i32 %value, 256
  br i1 %tobool22.not, label %sw.bb.if.end44_crit_edge, label %do.end38, !prof !85

sw.bb.if.end44_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end44

do.end38:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 657, i32 noundef 9, ptr noundef null) #2
  br label %if.end44

if.end44:                                         ; preds = %do.end38, %sw.bb.if.end44_crit_edge
  %conv = trunc i32 %offset to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1109, i16 noundef zeroext %conv) #2
  %conv52 = trunc i32 %value to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1110, i16 noundef zeroext %conv52) #2
  br label %sw.epilog

sw.bb53:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %value)
  %tobool56.not = icmp ult i32 %value, 65536
  br i1 %tobool56.not, label %sw.bb53.if.end78_crit_edge, label %do.end72, !prof !85

sw.bb53.if.end78_crit_edge:                       ; preds = %sw.bb53
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end78

do.end72:                                         ; preds = %sw.bb53
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 662, i32 noundef 9, ptr noundef null) #2
  br label %if.end78

if.end78:                                         ; preds = %do.end72, %sw.bb53.if.end78_crit_edge
  %conv86 = trunc i32 %offset to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1109, i16 noundef zeroext %conv86) #2
  %conv87 = trunc i32 %value to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1110, i16 noundef zeroext %conv87) #2
  br label %sw.epilog

sw.bb88:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  %conv89 = trunc i32 %offset to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1109, i16 noundef zeroext %conv89) #2
  %shr = lshr i32 %value, 16
  %conv90 = trunc i32 %shr to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1111, i16 noundef zeroext %conv90) #2
  %conv91 = trunc i32 %value to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1110, i16 noundef zeroext %conv91) #2
  br label %sw.epilog

do.end104:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 672, i32 noundef 9, ptr noundef null) #2
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end104, %sw.bb88, %if.end78, %if.end44
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @b43_lptab_write_bulk(ptr noundef %dev, i32 noundef %offset, i32 noundef %nr_elements, ptr nocapture noundef readonly %_data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %offset, -268435456
  %and1 = and i32 %offset, 268369920
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %cmp.not = icmp eq i32 %and1, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end, !prof !85

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 685, i32 noundef 9, ptr noundef null) #2
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %conv = trunc i32 %offset to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1109, i16 noundef zeroext %conv) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_elements)
  %cmp20143.not = icmp eq i32 %nr_elements, 0
  br i1 %cmp20143.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %data.0145 = phi ptr [ %data.1, %for.inc.for.body_crit_edge ], [ %_data, %if.end.for.body_crit_edge ]
  %i.0144 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %0 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %and, label %do.end107 [
    i32 268435456, label %sw.bb
    i32 536870912, label %sw.bb56
    i32 805306368, label %sw.bb91
  ]

sw.bb:                                            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  %1 = ptrtoint ptr %data.0145 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %data.0145, align 1
  %incdec.ptr = getelementptr i8, ptr %data.0145, i32 1
  %conv55 = zext i8 %2 to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1110, i16 noundef zeroext %conv55) #2
  br label %for.inc

sw.bb56:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  %3 = ptrtoint ptr %data.0145 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %data.0145, align 2
  %add.ptr = getelementptr i8, ptr %data.0145, i32 2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1110, i16 noundef zeroext %4) #2
  br label %for.inc

sw.bb91:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  %5 = ptrtoint ptr %data.0145 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %data.0145, align 4
  %add.ptr92 = getelementptr i8, ptr %data.0145, i32 4
  %shr = lshr i32 %6, 16
  %conv93 = trunc i32 %shr to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1111, i16 noundef zeroext %conv93) #2
  %conv94 = trunc i32 %6 to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1110, i16 noundef zeroext %conv94) #2
  br label %for.inc

do.end107:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 710, i32 noundef 9, ptr noundef null) #2
  br label %for.inc

for.inc:                                          ; preds = %do.end107, %sw.bb91, %sw.bb56, %sw.bb
  %data.1 = phi ptr [ %data.0145, %do.end107 ], [ %add.ptr92, %sw.bb91 ], [ %add.ptr, %sw.bb56 ], [ %incdec.ptr, %sw.bb ]
  %inc = add nuw i32 %i.0144, 1
  %exitcond.not = icmp eq i32 %inc, %nr_elements
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lpphy_rev0_1_table_init(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %rev = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 8
  %0 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %rev, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp ugt i8 %1, 1
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge, !prof !86

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2259, i32 noundef 9, ptr noundef null) #2
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1109, i16 noundef zeroext 2048) #2
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end
  %data.0145.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ @lpphy_min_sig_sq_table, %if.end ]
  %i.0144.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end ]
  %2 = ptrtoint ptr %data.0145.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %data.0145.i, align 1
  %incdec.ptr.i = getelementptr i8, ptr %data.0145.i, i32 1
  %conv55.i = zext i8 %3 to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1110, i16 noundef zeroext %conv55.i) #2
  %inc.i = add nuw nsw i32 %i.0144.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 53
  br i1 %exitcond.not.i, label %b43_lptab_write_bulk.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i

b43_lptab_write_bulk.exit:                        ; preds = %for.body.i
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1109, i16 noundef zeroext 1024) #2
  br label %for.body.i44

for.body.i44:                                     ; preds = %for.body.i44.for.body.i44_crit_edge, %b43_lptab_write_bulk.exit
  %data.0145.i42 = phi ptr [ %add.ptr.i, %for.body.i44.for.body.i44_crit_edge ], [ @lpphy_rev01_noise_scale_table, %b43_lptab_write_bulk.exit ]
  %i.0144.i43 = phi i32 [ %inc.i45, %for.body.i44.for.body.i44_crit_edge ], [ 0, %b43_lptab_write_bulk.exit ]
  %4 = ptrtoint ptr %data.0145.i42 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %data.0145.i42, align 2
  %add.ptr.i = getelementptr i8, ptr %data.0145.i42, i32 2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1110, i16 noundef zeroext %5) #2
  %inc.i45 = add nuw nsw i32 %i.0144.i43, 1
  %exitcond.not.i46 = icmp eq i32 %inc.i45, 40
  br i1 %exitcond.not.i46, label %b43_lptab_write_bulk.exit47, label %for.body.i44.for.body.i44_crit_edge

for.body.i44.for.body.i44_crit_edge:              ; preds = %for.body.i44
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i44

b43_lptab_write_bulk.exit47:                      ; preds = %for.body.i44
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1109, i16 noundef zeroext 14336) #2
  br label %for.body.i50

for.body.i50:                                     ; preds = %for.body.i50.for.body.i50_crit_edge, %b43_lptab_write_bulk.exit47
  %data.0145.i48 = phi ptr [ %add.ptr.i51, %for.body.i50.for.body.i50_crit_edge ], [ @lpphy_crs_gain_nft_table, %b43_lptab_write_bulk.exit47 ]
  %i.0144.i49 = phi i32 [ %inc.i52, %for.body.i50.for.body.i50_crit_edge ], [ 0, %b43_lptab_write_bulk.exit47 ]
  %6 = ptrtoint ptr %data.0145.i48 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %data.0145.i48, align 2
  %add.ptr.i51 = getelementptr i8, ptr %data.0145.i48, i32 2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1110, i16 noundef zeroext %7) #2
  %inc.i52 = add nuw nsw i32 %i.0144.i49, 1
  %exitcond.not.i53 = icmp eq i32 %inc.i52, 33
  br i1 %exitcond.not.i53, label %b43_lptab_write_bulk.exit54, label %for.body.i50.for.body.i50_crit_edge

for.body.i50.for.body.i50_crit_edge:              ; preds = %for.body.i50
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i50

b43_lptab_write_bulk.exit54:                      ; preds = %for.body.i50
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1109, i16 noundef zeroext 8192) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1110, i16 noundef zeroext -24324) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1110, i16 noundef zeroext 4348) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1110, i16 noundef zeroext 4315) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1110, i16 noundef zeroext 8375) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1110, i16 noundef zeroext -109) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1110, i16 noundef zeroext 4287) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1110, i16 noundef zeroext 4251) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1110, i16 noundef zeroext 8311) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1110, i16 noundef zeroext -173) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1110, i16 noundef zeroext 295) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1109, i16 noundef zeroext 9216) #2
  br label %for.body.i64

for.body.i64:                                     ; preds = %for.body.i64.for.body.i64_crit_edge, %b43_lptab_write_bulk.exit54
  %data.0145.i62 = phi ptr [ %add.ptr92.i, %for.body.i64.for.body.i64_crit_edge ], [ @lpphy_rev01_ps_control_table, %b43_lptab_write_bulk.exit54 ]
  %i.0144.i63 = phi i32 [ %inc.i65, %for.body.i64.for.body.i64_crit_edge ], [ 0, %b43_lptab_write_bulk.exit54 ]
  %8 = ptrtoint ptr %data.0145.i62 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %data.0145.i62, align 4
  %add.ptr92.i = getelementptr i8, ptr %data.0145.i62, i32 4
  %shr.i = lshr i32 %9, 16
  %conv93.i = trunc i32 %shr.i to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1111, i16 noundef zeroext %conv93.i) #2
  %conv94.i = trunc i32 %9 to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1110, i16 noundef zeroext %conv94.i) #2
  %inc.i65 = add nuw nsw i32 %i.0144.i63, 1
  %exitcond.not.i66 = icmp eq i32 %inc.i65, 40
  br i1 %exitcond.not.i66, label %b43_lptab_write_bulk.exit67, label %for.body.i64.for.body.i64_crit_edge

for.body.i64.for.body.i64_crit_edge:              ; preds = %for.body.i64
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i64

b43_lptab_write_bulk.exit67:                      ; preds = %for.body.i64
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1109, i16 noundef zeroext 6144) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1110, i16 noundef zeroext 128) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1110, i16 noundef zeroext 128) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1110, i16 noundef zeroext 128) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1110, i16 noundef zeroext 128) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1110, i16 noundef zeroext 128) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1110, i16 noundef zeroext 128) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1110, i16 noundef zeroext 0) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1110, i16 noundef zeroext 0) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1110, i16 noundef zeroext 128) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1110, i16 noundef zeroext 128) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1110, i16 noundef zeroext 128) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1110, i16 noundef zeroext 128) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1110, i16 noundef zeroext 128) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1110, i16 noundef zeroext 128) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1110, i16 noundef zeroext 128) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1110, i16 noundef zeroext 128) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1109, i16 noundef zeroext 0) #2
  br label %for.body.i78

for.body.i78:                                     ; preds = %for.body.i78.for.body.i78_crit_edge, %b43_lptab_write_bulk.exit67
  %data.0145.i76 = phi ptr [ %add.ptr.i79, %for.body.i78.for.body.i78_crit_edge ], [ @lpphy_iqlo_cal_table, %b43_lptab_write_bulk.exit67 ]
  %i.0144.i77 = phi i32 [ %inc.i80, %for.body.i78.for.body.i78_crit_edge ], [ 0, %b43_lptab_write_bulk.exit67 ]
  %10 = ptrtoint ptr %data.0145.i76 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %data.0145.i76, align 2
  %add.ptr.i79 = getelementptr i8, ptr %data.0145.i76, i32 2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1110, i16 noundef zeroext %11) #2
  %inc.i80 = add nuw nsw i32 %i.0144.i77, 1
  %exitcond.not.i81 = icmp eq i32 %inc.i80, 108
  br i1 %exitcond.not.i81, label %b43_lptab_write_bulk.exit82, label %for.body.i78.for.body.i78_crit_edge

for.body.i78.for.body.i78_crit_edge:              ; preds = %for.body.i78
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i78

b43_lptab_write_bulk.exit82:                      ; preds = %for.body.i78
  %12 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %rev, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp23 = icmp eq i8 %13, 0
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1109, i16 noundef zeroext 13312) #2
  br i1 %cmp23, label %b43_lptab_write_bulk.exit82.for.body.i85_crit_edge, label %b43_lptab_write_bulk.exit82.for.body.i99_crit_edge

b43_lptab_write_bulk.exit82.for.body.i99_crit_edge: ; preds = %b43_lptab_write_bulk.exit82
  br label %for.body.i99

b43_lptab_write_bulk.exit82.for.body.i85_crit_edge: ; preds = %b43_lptab_write_bulk.exit82
  br label %for.body.i85

for.body.i85:                                     ; preds = %for.body.i85.for.body.i85_crit_edge, %b43_lptab_write_bulk.exit82.for.body.i85_crit_edge
  %data.0145.i83 = phi ptr [ %add.ptr.i86, %for.body.i85.for.body.i85_crit_edge ], [ @lpphy_rev0_ofdm_cck_gain_table, %b43_lptab_write_bulk.exit82.for.body.i85_crit_edge ]
  %i.0144.i84 = phi i32 [ %inc.i87, %for.body.i85.for.body.i85_crit_edge ], [ 0, %b43_lptab_write_bulk.exit82.for.body.i85_crit_edge ]
  %14 = ptrtoint ptr %data.0145.i83 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %data.0145.i83, align 2
  %add.ptr.i86 = getelementptr i8, ptr %data.0145.i83, i32 2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1110, i16 noundef zeroext %15) #2
  %inc.i87 = add nuw nsw i32 %i.0144.i84, 1
  %exitcond.not.i88 = icmp eq i32 %inc.i87, 33
  br i1 %exitcond.not.i88, label %b43_lptab_write_bulk.exit89, label %for.body.i85.for.body.i85_crit_edge

for.body.i85.for.body.i85_crit_edge:              ; preds = %for.body.i85
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i85

b43_lptab_write_bulk.exit89:                      ; preds = %for.body.i85
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1109, i16 noundef zeroext 12288) #2
  br label %for.body.i92

for.body.i92:                                     ; preds = %for.body.i92.for.body.i92_crit_edge, %b43_lptab_write_bulk.exit89
  %data.0145.i90 = phi ptr [ %add.ptr.i93, %for.body.i92.for.body.i92_crit_edge ], [ @lpphy_rev0_ofdm_cck_gain_table, %b43_lptab_write_bulk.exit89 ]
  %i.0144.i91 = phi i32 [ %inc.i94, %for.body.i92.for.body.i92_crit_edge ], [ 0, %b43_lptab_write_bulk.exit89 ]
  %16 = ptrtoint ptr %data.0145.i90 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %data.0145.i90, align 2
  %add.ptr.i93 = getelementptr i8, ptr %data.0145.i90, i32 2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1110, i16 noundef zeroext %17) #2
  %inc.i94 = add nuw nsw i32 %i.0144.i91, 1
  %exitcond.not.i95 = icmp eq i32 %inc.i94, 33
  br i1 %exitcond.not.i95, label %for.body.i92.if.end26_crit_edge, label %for.body.i92.for.body.i92_crit_edge

for.body.i92.for.body.i92_crit_edge:              ; preds = %for.body.i92
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i92

for.body.i92.if.end26_crit_edge:                  ; preds = %for.body.i92
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end26

for.body.i99:                                     ; preds = %for.body.i99.for.body.i99_crit_edge, %b43_lptab_write_bulk.exit82.for.body.i99_crit_edge
  %data.0145.i97 = phi ptr [ %add.ptr.i100, %for.body.i99.for.body.i99_crit_edge ], [ @lpphy_rev1_ofdm_cck_gain_table, %b43_lptab_write_bulk.exit82.for.body.i99_crit_edge ]
  %i.0144.i98 = phi i32 [ %inc.i101, %for.body.i99.for.body.i99_crit_edge ], [ 0, %b43_lptab_write_bulk.exit82.for.body.i99_crit_edge ]
  %18 = ptrtoint ptr %data.0145.i97 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %data.0145.i97, align 2
  %add.ptr.i100 = getelementptr i8, ptr %data.0145.i97, i32 2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1110, i16 noundef zeroext %19) #2
  %inc.i101 = add nuw nsw i32 %i.0144.i98, 1
  %exitcond.not.i102 = icmp eq i32 %inc.i101, 33
  br i1 %exitcond.not.i102, label %b43_lptab_write_bulk.exit103, label %for.body.i99.for.body.i99_crit_edge

for.body.i99.for.body.i99_crit_edge:              ; preds = %for.body.i99
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i99

b43_lptab_write_bulk.exit103:                     ; preds = %for.body.i99
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1109, i16 noundef zeroext 12288) #2
  br label %for.body.i106

for.body.i106:                                    ; preds = %for.body.i106.for.body.i106_crit_edge, %b43_lptab_write_bulk.exit103
  %data.0145.i104 = phi ptr [ %add.ptr.i107, %for.body.i106.for.body.i106_crit_edge ], [ @lpphy_rev1_ofdm_cck_gain_table, %b43_lptab_write_bulk.exit103 ]
  %i.0144.i105 = phi i32 [ %inc.i108, %for.body.i106.for.body.i106_crit_edge ], [ 0, %b43_lptab_write_bulk.exit103 ]
  %20 = ptrtoint ptr %data.0145.i104 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %data.0145.i104, align 2
  %add.ptr.i107 = getelementptr i8, ptr %data.0145.i104, i32 2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1110, i16 noundef zeroext %21) #2
  %inc.i108 = add nuw nsw i32 %i.0144.i105, 1
  %exitcond.not.i109 = icmp eq i32 %inc.i108, 33
  br i1 %exitcond.not.i109, label %for.body.i106.if.end26_crit_edge, label %for.body.i106.for.body.i106_crit_edge

for.body.i106.for.body.i106_crit_edge:            ; preds = %for.body.i106
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i106

for.body.i106.if.end26_crit_edge:                 ; preds = %for.body.i106
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end26

if.end26:                                         ; preds = %for.body.i106.if.end26_crit_edge, %for.body.i92.if.end26_crit_edge
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1109, i16 noundef zeroext 15360) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1110, i16 noundef zeroext 0) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1110, i16 noundef zeroext 0) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1110, i16 noundef zeroext 0) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1110, i16 noundef zeroext 0) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1110, i16 noundef zeroext 0) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1110, i16 noundef zeroext 0) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1110, i16 noundef zeroext 0) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1110, i16 noundef zeroext 0) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1110, i16 noundef zeroext 0) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1109, i16 noundef zeroext 10240) #2
  br label %for.body.i120

for.body.i120:                                    ; preds = %for.body.i120.for.body.i120_crit_edge, %if.end26
  %data.0145.i118 = phi ptr [ %add.ptr92.i121, %for.body.i120.for.body.i120_crit_edge ], [ @lpphy_tx_power_control_table, %if.end26 ]
  %i.0144.i119 = phi i32 [ %inc.i125, %for.body.i120.for.body.i120_crit_edge ], [ 0, %if.end26 ]
  %22 = ptrtoint ptr %data.0145.i118 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %data.0145.i118, align 4
  %add.ptr92.i121 = getelementptr i8, ptr %data.0145.i118, i32 4
  %shr.i122 = lshr i32 %23, 16
  %conv93.i123 = trunc i32 %shr.i122 to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1111, i16 noundef zeroext %conv93.i123) #2
  %conv94.i124 = trunc i32 %23 to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1110, i16 noundef zeroext %conv94.i124) #2
  %inc.i125 = add nuw nsw i32 %i.0144.i119, 1
  %exitcond.not.i126 = icmp eq i32 %inc.i125, 576
  br i1 %exitcond.not.i126, label %b43_lptab_write_bulk.exit127, label %for.body.i120.for.body.i120_crit_edge

for.body.i120.for.body.i120_crit_edge:            ; preds = %for.body.i120
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i120

b43_lptab_write_bulk.exit127:                     ; preds = %for.body.i120
  call void @__sanitizer_cov_trace_pc() #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lpphy_rev2plus_table_init(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %rev = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 8
  %0 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %rev, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %cmp = icmp ult i8 %1, 2
  br i1 %cmp, label %do.end, label %entry.for.body.preheader_crit_edge, !prof !86

entry.for.body.preheader_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.preheader

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2296, i32 noundef 9, ptr noundef null) #2
  br label %for.body.preheader

for.body.preheader:                               ; preds = %do.end, %entry.for.body.preheader_crit_edge
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.0197 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %or22 = or i32 %i.0197, 805313536
  tail call void @b43_lptab_write(ptr noundef %dev, i32 noundef %or22, i32 noundef 0)
  %inc = add nuw nsw i32 %i.0197, 1
  %exitcond.not = icmp eq i32 %inc, 704
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

for.end:                                          ; preds = %for.body
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1109, i16 noundef zeroext 2048) #2
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.end
  %data.0145.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ @lpphy_min_sig_sq_table, %for.end ]
  %i.0144.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.end ]
  %2 = ptrtoint ptr %data.0145.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %data.0145.i, align 1
  %incdec.ptr.i = getelementptr i8, ptr %data.0145.i, i32 1
  %conv55.i = zext i8 %3 to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1110, i16 noundef zeroext %conv55.i) #2
  %inc.i = add nuw nsw i32 %i.0144.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 53
  br i1 %exitcond.not.i, label %b43_lptab_write_bulk.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i

b43_lptab_write_bulk.exit:                        ; preds = %for.body.i
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1109, i16 noundef zeroext 1024) #2
  br label %for.body.i59

for.body.i59:                                     ; preds = %for.body.i59.for.body.i59_crit_edge, %b43_lptab_write_bulk.exit
  %data.0145.i57 = phi ptr [ %add.ptr.i, %for.body.i59.for.body.i59_crit_edge ], [ @lpphy_rev2plus_noise_scale_table, %b43_lptab_write_bulk.exit ]
  %i.0144.i58 = phi i32 [ %inc.i60, %for.body.i59.for.body.i59_crit_edge ], [ 0, %b43_lptab_write_bulk.exit ]
  %4 = ptrtoint ptr %data.0145.i57 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %data.0145.i57, align 2
  %add.ptr.i = getelementptr i8, ptr %data.0145.i57, i32 2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1110, i16 noundef zeroext %5) #2
  %inc.i60 = add nuw nsw i32 %i.0144.i58, 1
  %exitcond.not.i61 = icmp eq i32 %inc.i60, 53
  br i1 %exitcond.not.i61, label %b43_lptab_write_bulk.exit62, label %for.body.i59.for.body.i59_crit_edge

for.body.i59.for.body.i59_crit_edge:              ; preds = %for.body.i59
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i59

b43_lptab_write_bulk.exit62:                      ; preds = %for.body.i59
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1109, i16 noundef zeroext 11264) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1111, i16 noundef zeroext 1) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1110, i16 noundef zeroext 16892) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1111, i16 noundef zeroext 0) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1110, i16 noundef zeroext 8700) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1111, i16 noundef zeroext 0) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1110, i16 noundef zeroext 8631) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1111, i16 noundef zeroext 0) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1110, i16 noundef zeroext 16751) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1111, i16 noundef zeroext 1) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1110, i16 noundef zeroext -217) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1111, i16 noundef zeroext 0) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1110, i16 noundef zeroext 8575) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1111, i16 noundef zeroext 0) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1110, i16 noundef zeroext 8503) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1111, i16 noundef zeroext 0) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1110, i16 noundef zeroext 16623) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1111, i16 noundef zeroext 1) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1110, i16 noundef zeroext -345) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1111, i16 noundef zeroext 0) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1110, i16 noundef zeroext 591) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1109, i16 noundef zeroext 12288) #2
  br label %for.body.i71

for.body.i71:                                     ; preds = %for.body.i71.for.body.i71_crit_edge, %b43_lptab_write_bulk.exit62
  %data.0145.i69 = phi ptr [ %add.ptr92.i72, %for.body.i71.for.body.i71_crit_edge ], [ @lpphy_rev2plus_ps_control_table, %b43_lptab_write_bulk.exit62 ]
  %i.0144.i70 = phi i32 [ %inc.i76, %for.body.i71.for.body.i71_crit_edge ], [ 0, %b43_lptab_write_bulk.exit62 ]
  %6 = ptrtoint ptr %data.0145.i69 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data.0145.i69, align 4
  %add.ptr92.i72 = getelementptr i8, ptr %data.0145.i69, i32 4
  %shr.i73 = lshr i32 %7, 16
  %conv93.i74 = trunc i32 %shr.i73 to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1111, i16 noundef zeroext %conv93.i74) #2
  %conv94.i75 = trunc i32 %7 to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1110, i16 noundef zeroext %conv94.i75) #2
  %inc.i76 = add nuw nsw i32 %i.0144.i70, 1
  %exitcond.not.i77 = icmp eq i32 %inc.i76, 20
  br i1 %exitcond.not.i77, label %b43_lptab_write_bulk.exit78, label %for.body.i71.for.body.i71_crit_edge

for.body.i71.for.body.i71_crit_edge:              ; preds = %for.body.i71
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i71

b43_lptab_write_bulk.exit78:                      ; preds = %for.body.i71
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1109, i16 noundef zeroext 13312) #2
  br label %for.body.i81

for.body.i81:                                     ; preds = %for.body.i81.for.body.i81_crit_edge, %b43_lptab_write_bulk.exit78
  %data.0145.i79 = phi ptr [ %add.ptr92.i82, %for.body.i81.for.body.i81_crit_edge ], [ @lpphy_gain_idx_table, %b43_lptab_write_bulk.exit78 ]
  %i.0144.i80 = phi i32 [ %inc.i86, %for.body.i81.for.body.i81_crit_edge ], [ 0, %b43_lptab_write_bulk.exit78 ]
  %8 = ptrtoint ptr %data.0145.i79 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %data.0145.i79, align 4
  %add.ptr92.i82 = getelementptr i8, ptr %data.0145.i79, i32 4
  %shr.i83 = lshr i32 %9, 16
  %conv93.i84 = trunc i32 %shr.i83 to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1111, i16 noundef zeroext %conv93.i84) #2
  %conv94.i85 = trunc i32 %9 to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1110, i16 noundef zeroext %conv94.i85) #2
  %inc.i86 = add nuw nsw i32 %i.0144.i80, 1
  %exitcond.not.i87 = icmp eq i32 %inc.i86, 148
  br i1 %exitcond.not.i87, label %b43_lptab_write_bulk.exit88, label %for.body.i81.for.body.i81_crit_edge

for.body.i81.for.body.i81_crit_edge:              ; preds = %for.body.i81
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i81

b43_lptab_write_bulk.exit88:                      ; preds = %for.body.i81
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1109, i16 noundef zeroext 14336) #2
  br label %for.body.i91

for.body.i91:                                     ; preds = %for.body.i91.for.body.i91_crit_edge, %b43_lptab_write_bulk.exit88
  %data.0145.i89 = phi ptr [ %add.ptr.i92, %for.body.i91.for.body.i91_crit_edge ], [ @lpphy_aux_gain_idx_table, %b43_lptab_write_bulk.exit88 ]
  %i.0144.i90 = phi i32 [ %inc.i93, %for.body.i91.for.body.i91_crit_edge ], [ 0, %b43_lptab_write_bulk.exit88 ]
  %10 = ptrtoint ptr %data.0145.i89 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %data.0145.i89, align 2
  %add.ptr.i92 = getelementptr i8, ptr %data.0145.i89, i32 2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1110, i16 noundef zeroext %11) #2
  %inc.i93 = add nuw nsw i32 %i.0144.i90, 1
  %exitcond.not.i94 = icmp eq i32 %inc.i93, 26
  br i1 %exitcond.not.i94, label %b43_lptab_write_bulk.exit95, label %for.body.i91.for.body.i91_crit_edge

for.body.i91.for.body.i91_crit_edge:              ; preds = %for.body.i91
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i91

b43_lptab_write_bulk.exit95:                      ; preds = %for.body.i91
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1109, i16 noundef zeroext 15360) #2
  br label %for.body.i98

for.body.i98:                                     ; preds = %for.body.i98.for.body.i98_crit_edge, %b43_lptab_write_bulk.exit95
  %data.0145.i96 = phi ptr [ %add.ptr.i99, %for.body.i98.for.body.i98_crit_edge ], [ @lpphy_sw_control_table, %b43_lptab_write_bulk.exit95 ]
  %i.0144.i97 = phi i32 [ %inc.i100, %for.body.i98.for.body.i98_crit_edge ], [ 0, %b43_lptab_write_bulk.exit95 ]
  %12 = ptrtoint ptr %data.0145.i96 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %data.0145.i96, align 2
  %add.ptr.i99 = getelementptr i8, ptr %data.0145.i96, i32 2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1110, i16 noundef zeroext %13) #2
  %inc.i100 = add nuw nsw i32 %i.0144.i97, 1
  %exitcond.not.i101 = icmp eq i32 %inc.i100, 64
  br i1 %exitcond.not.i101, label %b43_lptab_write_bulk.exit102, label %for.body.i98.for.body.i98_crit_edge

for.body.i98.for.body.i98_crit_edge:              ; preds = %for.body.i98
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i98

b43_lptab_write_bulk.exit102:                     ; preds = %for.body.i98
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1109, i16 noundef zeroext 16384) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1110, i16 noundef zeroext 75) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1110, i16 noundef zeroext 54) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1110, i16 noundef zeroext 36) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1110, i16 noundef zeroext 24) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1110, i16 noundef zeroext 73) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1110, i16 noundef zeroext 52) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1110, i16 noundef zeroext 35) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1110, i16 noundef zeroext 23) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1110, i16 noundef zeroext 72) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1110, i16 noundef zeroext 51) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1110, i16 noundef zeroext 35) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1110, i16 noundef zeroext 23) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1110, i16 noundef zeroext 72) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1110, i16 noundef zeroext 51) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1110, i16 noundef zeroext 35) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1110, i16 noundef zeroext 23) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1109, i16 noundef zeroext 17408) #2
  br label %for.body.i113

for.body.i113:                                    ; preds = %for.body.i113.for.body.i113_crit_edge, %b43_lptab_write_bulk.exit102
  %data.0145.i111 = phi ptr [ %add.ptr92.i114, %for.body.i113.for.body.i113_crit_edge ], [ @lpphy_gain_value_table, %b43_lptab_write_bulk.exit102 ]
  %i.0144.i112 = phi i32 [ %inc.i118, %for.body.i113.for.body.i113_crit_edge ], [ 0, %b43_lptab_write_bulk.exit102 ]
  %14 = ptrtoint ptr %data.0145.i111 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %data.0145.i111, align 4
  %add.ptr92.i114 = getelementptr i8, ptr %data.0145.i111, i32 4
  %shr.i115 = lshr i32 %15, 16
  %conv93.i116 = trunc i32 %shr.i115 to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1111, i16 noundef zeroext %conv93.i116) #2
  %conv94.i117 = trunc i32 %15 to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1110, i16 noundef zeroext %conv94.i117) #2
  %inc.i118 = add nuw nsw i32 %i.0144.i112, 1
  %exitcond.not.i119 = icmp eq i32 %inc.i118, 68
  br i1 %exitcond.not.i119, label %b43_lptab_write_bulk.exit120, label %for.body.i113.for.body.i113_crit_edge

for.body.i113.for.body.i113_crit_edge:            ; preds = %for.body.i113
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i113

b43_lptab_write_bulk.exit120:                     ; preds = %for.body.i113
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1109, i16 noundef zeroext 18432) #2
  br label %for.body.i123

for.body.i123:                                    ; preds = %for.body.i123.for.body.i123_crit_edge, %b43_lptab_write_bulk.exit120
  %data.0145.i121 = phi ptr [ %add.ptr.i124, %for.body.i123.for.body.i123_crit_edge ], [ @lpphy_gain_table, %b43_lptab_write_bulk.exit120 ]
  %i.0144.i122 = phi i32 [ %inc.i125, %for.body.i123.for.body.i123_crit_edge ], [ 0, %b43_lptab_write_bulk.exit120 ]
  %16 = ptrtoint ptr %data.0145.i121 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %data.0145.i121, align 2
  %add.ptr.i124 = getelementptr i8, ptr %data.0145.i121, i32 2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1110, i16 noundef zeroext %17) #2
  %inc.i125 = add nuw nsw i32 %i.0144.i122, 1
  %exitcond.not.i126 = icmp eq i32 %inc.i125, 96
  br i1 %exitcond.not.i126, label %b43_lptab_write_bulk.exit127, label %for.body.i123.for.body.i123_crit_edge

for.body.i123.for.body.i123_crit_edge:            ; preds = %for.body.i123
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i123

b43_lptab_write_bulk.exit127:                     ; preds = %for.body.i123
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1109, i16 noundef zeroext 6144) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1110, i16 noundef zeroext 128) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1110, i16 noundef zeroext 128) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1110, i16 noundef zeroext 128) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1110, i16 noundef zeroext 128) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1110, i16 noundef zeroext 128) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1110, i16 noundef zeroext 128) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1110, i16 noundef zeroext 0) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1110, i16 noundef zeroext 0) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1110, i16 noundef zeroext 128) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1110, i16 noundef zeroext 128) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1110, i16 noundef zeroext 128) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1110, i16 noundef zeroext 128) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1110, i16 noundef zeroext 128) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1110, i16 noundef zeroext 128) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1110, i16 noundef zeroext 128) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1110, i16 noundef zeroext 128) #2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1109, i16 noundef zeroext 0) #2
  br label %for.body.i138

for.body.i138:                                    ; preds = %for.body.i138.for.body.i138_crit_edge, %b43_lptab_write_bulk.exit127
  %data.0145.i136 = phi ptr [ %add.ptr.i139, %for.body.i138.for.body.i138_crit_edge ], [ @lpphy_iqlo_cal_table, %b43_lptab_write_bulk.exit127 ]
  %i.0144.i137 = phi i32 [ %inc.i140, %for.body.i138.for.body.i138_crit_edge ], [ 0, %b43_lptab_write_bulk.exit127 ]
  %18 = ptrtoint ptr %data.0145.i136 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %data.0145.i136, align 2
  %add.ptr.i139 = getelementptr i8, ptr %data.0145.i136, i32 2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1110, i16 noundef zeroext %19) #2
  %inc.i140 = add nuw nsw i32 %i.0144.i137, 1
  %exitcond.not.i141 = icmp eq i32 %inc.i140, 108
  br i1 %exitcond.not.i141, label %b43_lptab_write_bulk.exit142, label %for.body.i138.for.body.i138_crit_edge

for.body.i138.for.body.i138_crit_edge:            ; preds = %for.body.i138
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i138

b43_lptab_write_bulk.exit142:                     ; preds = %for.body.i138
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1109, i16 noundef zeroext 9216) #2
  br label %for.body.i145

for.body.i145:                                    ; preds = %for.body.i145.for.body.i145_crit_edge, %b43_lptab_write_bulk.exit142
  %data.0145.i143 = phi ptr [ %add.ptr92.i146, %for.body.i145.for.body.i145_crit_edge ], [ @lpphy_papd_eps_table, %b43_lptab_write_bulk.exit142 ]
  %i.0144.i144 = phi i32 [ %inc.i150, %for.body.i145.for.body.i145_crit_edge ], [ 0, %b43_lptab_write_bulk.exit142 ]
  %20 = ptrtoint ptr %data.0145.i143 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %data.0145.i143, align 4
  %add.ptr92.i146 = getelementptr i8, ptr %data.0145.i143, i32 4
  %shr.i147 = lshr i32 %21, 16
  %conv93.i148 = trunc i32 %shr.i147 to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1111, i16 noundef zeroext %conv93.i148) #2
  %conv94.i149 = trunc i32 %21 to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1110, i16 noundef zeroext %conv94.i149) #2
  %inc.i150 = add nuw nsw i32 %i.0144.i144, 1
  %exitcond.not.i151 = icmp eq i32 %inc.i150, 64
  br i1 %exitcond.not.i151, label %b43_lptab_write_bulk.exit152, label %for.body.i145.for.body.i145_crit_edge

for.body.i145.for.body.i145_crit_edge:            ; preds = %for.body.i145
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i145

b43_lptab_write_bulk.exit152:                     ; preds = %for.body.i145
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1109, i16 noundef zeroext 10240) #2
  br label %for.body.i155

for.body.i155:                                    ; preds = %for.body.i155.for.body.i155_crit_edge, %b43_lptab_write_bulk.exit152
  %data.0145.i153 = phi ptr [ %add.ptr92.i156, %for.body.i155.for.body.i155_crit_edge ], [ @lpphy_papd_mult_table, %b43_lptab_write_bulk.exit152 ]
  %i.0144.i154 = phi i32 [ %inc.i160, %for.body.i155.for.body.i155_crit_edge ], [ 0, %b43_lptab_write_bulk.exit152 ]
  %22 = ptrtoint ptr %data.0145.i153 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %data.0145.i153, align 4
  %add.ptr92.i156 = getelementptr i8, ptr %data.0145.i153, i32 4
  %shr.i157 = lshr i32 %23, 16
  %conv93.i158 = trunc i32 %shr.i157 to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1111, i16 noundef zeroext %conv93.i158) #2
  %conv94.i159 = trunc i32 %23 to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1110, i16 noundef zeroext %conv94.i159) #2
  %inc.i160 = add nuw nsw i32 %i.0144.i154, 1
  %exitcond.not.i161 = icmp eq i32 %inc.i160, 64
  br i1 %exitcond.not.i161, label %b43_lptab_write_bulk.exit162, label %for.body.i155.for.body.i155_crit_edge

for.body.i155.for.body.i155_crit_edge:            ; preds = %for.body.i155
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i155

b43_lptab_write_bulk.exit162:                     ; preds = %for.body.i155
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 4
  %chip_id = getelementptr inbounds %struct.b43_bus_dev, ptr %25, i32 0, i32 20
  %26 = ptrtoint ptr %chip_id to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %chip_id, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 17189, i16 %27)
  %cmp25 = icmp eq i16 %27, 17189
  br i1 %cmp25, label %land.lhs.true, label %b43_lptab_write_bulk.exit162.if.end32_crit_edge

b43_lptab_write_bulk.exit162.if.end32_crit_edge:  ; preds = %b43_lptab_write_bulk.exit162
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end32

land.lhs.true:                                    ; preds = %b43_lptab_write_bulk.exit162
  %chip_rev = getelementptr inbounds %struct.b43_bus_dev, ptr %25, i32 0, i32 21
  %28 = ptrtoint ptr %chip_rev to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %chip_rev, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %cmp29 = icmp eq i8 %29, 0
  br i1 %cmp29, label %if.then31, label %land.lhs.true.if.end32_crit_edge

land.lhs.true.if.end32_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end32

if.then31:                                        ; preds = %land.lhs.true
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1109, i16 noundef zeroext 13312) #2
  br label %for.body.i165

for.body.i165:                                    ; preds = %for.body.i165.for.body.i165_crit_edge, %if.then31
  %data.0145.i163 = phi ptr [ %add.ptr92.i166, %for.body.i165.for.body.i165_crit_edge ], [ @lpphy_a0_gain_idx_table, %if.then31 ]
  %i.0144.i164 = phi i32 [ %inc.i170, %for.body.i165.for.body.i165_crit_edge ], [ 0, %if.then31 ]
  %30 = ptrtoint ptr %data.0145.i163 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %data.0145.i163, align 4
  %add.ptr92.i166 = getelementptr i8, ptr %data.0145.i163, i32 4
  %shr.i167 = lshr i32 %31, 16
  %conv93.i168 = trunc i32 %shr.i167 to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1111, i16 noundef zeroext %conv93.i168) #2
  %conv94.i169 = trunc i32 %31 to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1110, i16 noundef zeroext %conv94.i169) #2
  %inc.i170 = add nuw nsw i32 %i.0144.i164, 1
  %exitcond.not.i171 = icmp eq i32 %inc.i170, 64
  br i1 %exitcond.not.i171, label %b43_lptab_write_bulk.exit172, label %for.body.i165.for.body.i165_crit_edge

for.body.i165.for.body.i165_crit_edge:            ; preds = %for.body.i165
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i165

b43_lptab_write_bulk.exit172:                     ; preds = %for.body.i165
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1109, i16 noundef zeroext 14336) #2
  br label %for.body.i175

for.body.i175:                                    ; preds = %for.body.i175.for.body.i175_crit_edge, %b43_lptab_write_bulk.exit172
  %data.0145.i173 = phi ptr [ %add.ptr.i176, %for.body.i175.for.body.i175_crit_edge ], [ @lpphy_a0_aux_gain_idx_table, %b43_lptab_write_bulk.exit172 ]
  %i.0144.i174 = phi i32 [ %inc.i177, %for.body.i175.for.body.i175_crit_edge ], [ 0, %b43_lptab_write_bulk.exit172 ]
  %32 = ptrtoint ptr %data.0145.i173 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %data.0145.i173, align 2
  %add.ptr.i176 = getelementptr i8, ptr %data.0145.i173, i32 2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1110, i16 noundef zeroext %33) #2
  %inc.i177 = add nuw nsw i32 %i.0144.i174, 1
  %exitcond.not.i178 = icmp eq i32 %inc.i177, 26
  br i1 %exitcond.not.i178, label %b43_lptab_write_bulk.exit179, label %for.body.i175.for.body.i175_crit_edge

for.body.i175.for.body.i175_crit_edge:            ; preds = %for.body.i175
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i175

b43_lptab_write_bulk.exit179:                     ; preds = %for.body.i175
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1109, i16 noundef zeroext 17408) #2
  br label %for.body.i182

for.body.i182:                                    ; preds = %for.body.i182.for.body.i182_crit_edge, %b43_lptab_write_bulk.exit179
  %data.0145.i180 = phi ptr [ %add.ptr92.i183, %for.body.i182.for.body.i182_crit_edge ], [ @lpphy_a0_gain_value_table, %b43_lptab_write_bulk.exit179 ]
  %i.0144.i181 = phi i32 [ %inc.i187, %for.body.i182.for.body.i182_crit_edge ], [ 0, %b43_lptab_write_bulk.exit179 ]
  %34 = ptrtoint ptr %data.0145.i180 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %data.0145.i180, align 4
  %add.ptr92.i183 = getelementptr i8, ptr %data.0145.i180, i32 4
  %shr.i184 = lshr i32 %35, 16
  %conv93.i185 = trunc i32 %shr.i184 to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1111, i16 noundef zeroext %conv93.i185) #2
  %conv94.i186 = trunc i32 %35 to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1110, i16 noundef zeroext %conv94.i186) #2
  %inc.i187 = add nuw nsw i32 %i.0144.i181, 1
  %exitcond.not.i188 = icmp eq i32 %inc.i187, 68
  br i1 %exitcond.not.i188, label %b43_lptab_write_bulk.exit189, label %for.body.i182.for.body.i182_crit_edge

for.body.i182.for.body.i182_crit_edge:            ; preds = %for.body.i182
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i182

b43_lptab_write_bulk.exit189:                     ; preds = %for.body.i182
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1109, i16 noundef zeroext 18432) #2
  br label %for.body.i192

for.body.i192:                                    ; preds = %for.body.i192.for.body.i192_crit_edge, %b43_lptab_write_bulk.exit189
  %data.0145.i190 = phi ptr [ %add.ptr.i193, %for.body.i192.for.body.i192_crit_edge ], [ @lpphy_a0_gain_table, %b43_lptab_write_bulk.exit189 ]
  %i.0144.i191 = phi i32 [ %inc.i194, %for.body.i192.for.body.i192_crit_edge ], [ 0, %b43_lptab_write_bulk.exit189 ]
  %36 = ptrtoint ptr %data.0145.i190 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %data.0145.i190, align 2
  %add.ptr.i193 = getelementptr i8, ptr %data.0145.i190, i32 2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 1110, i16 noundef zeroext %37) #2
  %inc.i194 = add nuw nsw i32 %i.0144.i191, 1
  %exitcond.not.i195 = icmp eq i32 %inc.i194, 96
  br i1 %exitcond.not.i195, label %for.body.i192.if.end32_crit_edge, label %for.body.i192.for.body.i192_crit_edge

for.body.i192.for.body.i192_crit_edge:            ; preds = %for.body.i192
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i192

for.body.i192.if.end32_crit_edge:                 ; preds = %for.body.i192
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end32

if.end32:                                         ; preds = %for.body.i192.if.end32_crit_edge, %land.lhs.true.if.end32_crit_edge, %b43_lptab_write_bulk.exit162.if.end32_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lpphy_write_gain_table(ptr noundef %dev, i32 noundef %offset, [2 x i32] %data.coerce) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %data.coerce.fca.1.extract = extractvalue [2 x i32] %data.coerce, 1
  %rev = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 8
  %0 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %rev, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp ugt i8 %1, 1
  %data.coerce.fca.0.extract.i = extractvalue [2 x i32] %data.coerce, 0
  br i1 %cmp, label %lpphy_rev2plus_write_gain_table.exit, label %lpphy_rev0_1_write_gain_table.exit

lpphy_rev2plus_write_gain_table.exit:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %data.sroa.0.0.extract.shift.i = lshr i32 %data.coerce.fca.0.extract.i, 24
  %2 = shl i32 %data.coerce.fca.0.extract.i, 8
  %shl.i = and i32 %2, 16711680
  %3 = lshr i32 %data.coerce.fca.0.extract.i, 8
  %shl23.i = and i32 %3, 65280
  %or.i = or i32 %shl23.i, %data.sroa.0.0.extract.shift.i
  %or25.i = or i32 %or.i, %shl.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %cmp29.i.not = icmp eq i8 %1, 2
  %wl.i = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 1
  %4 = ptrtoint ptr %wl.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wl.i, align 4
  %hw.i.i = getelementptr inbounds %struct.b43_wl, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw.i.i, align 4
  %chandef.i.i = getelementptr inbounds %struct.ieee80211_conf, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %chandef.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chandef.i.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp32.i = icmp eq i32 %11, 1
  %..i = select i1 %cmp32.i, i32 268435456, i32 1879048192
  %.76.i = select i1 %cmp32.i, i32 335544320, i32 2130706432
  %.sink.i = select i1 %cmp29.i.not, i32 %.76.i, i32 %..i
  %or44.i = or i32 %or25.i, %.sink.i
  %add.i = add i32 %offset, 192
  %or50.i = or i32 %add.i, 805313536
  tail call void @b43_lptab_write(ptr noundef %dev, i32 noundef %or50.i, i32 noundef %or44.i) #2
  %tmp.coerce.sroa.2.0.extract.shift = lshr i32 %data.coerce.fca.1.extract, 4
  %12 = and i32 %tmp.coerce.sroa.2.0.extract.shift, 267386880
  %shl54.i = shl i32 %data.coerce.fca.0.extract.i, 28
  %or55.i = or i32 %12, %shl54.i
  br label %if.end

lpphy_rev0_1_write_gain_table.exit:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %13 = shl i32 %data.coerce.fca.0.extract.i, 3
  %shl.i15 = and i32 %13, 522240
  %14 = lshr i32 %data.coerce.fca.0.extract.i, 9
  %shl23.i16 = and i32 %14, 32640
  %15 = lshr i32 %data.coerce.fca.0.extract.i, 20
  %shl25.i = and i32 %15, 4080
  %conv27.i = and i32 %data.coerce.fca.0.extract.i, 255
  %or.i17 = or i32 %shl23.i16, %conv27.i
  %or26.i = or i32 %or.i17, %shl.i15
  %or28.i = or i32 %or26.i, %shl25.i
  %add.i18 = add i32 %offset, 192
  %or30.i = or i32 %add.i18, 805316608
  tail call void @b43_lptab_write(ptr noundef %dev, i32 noundef %or30.i, i32 noundef %or28.i) #2
  %data.coerce3.sroa.2.0.insert.shift = lshr i32 %data.coerce.fca.1.extract, 4
  %16 = and i32 %data.coerce3.sroa.2.0.insert.shift, 267386880
  br label %if.end

if.end:                                           ; preds = %lpphy_rev0_1_write_gain_table.exit, %lpphy_rev2plus_write_gain_table.exit
  %.sink19 = phi i32 [ 805316608, %lpphy_rev0_1_write_gain_table.exit ], [ 805313536, %lpphy_rev2plus_write_gain_table.exit ]
  %.sink = phi i32 [ %16, %lpphy_rev0_1_write_gain_table.exit ], [ %or55.i, %lpphy_rev2plus_write_gain_table.exit ]
  %add33.i = add i32 %offset, 320
  %or35.i = or i32 %add33.i, %.sink19
  tail call void @b43_lptab_write(ptr noundef %dev, i32 noundef %or35.i, i32 noundef %.sink) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lpphy_write_gain_table_bulk(ptr noundef %dev, i32 noundef %offset, i32 noundef %count, ptr nocapture noundef readonly %table) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_cmp4(i32 %offset, i32 %count)
  %cmp4 = icmp slt i32 %offset, %count
  br i1 %cmp4, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.06 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ %offset, %entry.for.body_crit_edge ]
  %arrayidx.coerce.sroa.2.05 = phi i32 [ %arrayidx.coerce.sroa.2.0.insert.insert, %for.body.for.body_crit_edge ], [ undef, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.lpphy_tx_gain_table_entry, ptr %table, i32 %i.06
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %arrayidx.coerce.sroa.0.0.copyload = load i32, ptr %arrayidx, align 1
  %arrayidx.coerce.sroa.2.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 4
  %1 = ptrtoint ptr %arrayidx.coerce.sroa.2.0.arrayidx.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %1)
  %arrayidx.coerce.sroa.2.0.copyload = load i8, ptr %arrayidx.coerce.sroa.2.0.arrayidx.sroa_idx, align 1
  %arrayidx.coerce.sroa.2.0.insert.ext = zext i8 %arrayidx.coerce.sroa.2.0.copyload to i32
  %arrayidx.coerce.sroa.2.0.insert.shift = shl nuw i32 %arrayidx.coerce.sroa.2.0.insert.ext, 24
  %arrayidx.coerce.sroa.2.0.insert.mask = and i32 %arrayidx.coerce.sroa.2.05, 16777215
  %arrayidx.coerce.sroa.2.0.insert.insert = or i32 %arrayidx.coerce.sroa.2.0.insert.shift, %arrayidx.coerce.sroa.2.0.insert.mask
  %.fca.0.insert = insertvalue [2 x i32] poison, i32 %arrayidx.coerce.sroa.0.0.copyload, 0
  %.fca.1.insert = insertvalue [2 x i32] %.fca.0.insert, i32 %arrayidx.coerce.sroa.2.0.insert.insert, 1
  tail call void @lpphy_write_gain_table(ptr noundef %dev, i32 noundef %i.06, [2 x i32] %.fca.1.insert)
  %inc = add i32 %i.06, 1
  %exitcond.not = icmp eq i32 %inc, %count
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lpphy_init_tx_gain_table(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %bus_sprom = getelementptr inbounds %struct.b43_bus_dev, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %bus_sprom to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus_sprom, align 4
  %rev = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 8
  %4 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %rev, align 2
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.9)
  switch i8 %5, label %sw.default [
    i8 0, label %sw.bb
    i8 1, label %sw.bb10
  ]

sw.bb:                                            ; preds = %entry
  %boardflags_hi = getelementptr inbounds %struct.ssb_sprom, ptr %3, i32 0, i32 71
  %7 = ptrtoint ptr %boardflags_hi to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %boardflags_hi, align 2
  %9 = and i16 %8, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool.not = icmp eq i16 %9, 0
  br i1 %tobool.not, label %lor.lhs.false, label %sw.bb.for.body.i.preheader_crit_edge

sw.bb.for.body.i.preheader_crit_edge:             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i.preheader

lor.lhs.false:                                    ; preds = %sw.bb
  %boardflags_lo = getelementptr inbounds %struct.ssb_sprom, ptr %3, i32 0, i32 70
  %10 = ptrtoint ptr %boardflags_lo to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %boardflags_lo, align 4
  %12 = and i16 %11, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool5.not = icmp eq i16 %12, 0
  br i1 %tobool5.not, label %if.else, label %lor.lhs.false.for.body.i.preheader_crit_edge

lor.lhs.false.for.body.i.preheader_crit_edge:     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %lor.lhs.false.for.body.i.preheader_crit_edge, %sw.bb.for.body.i.preheader_crit_edge
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.i.preheader
  %i.06.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %arrayidx.coerce.sroa.2.05.i = phi i32 [ %arrayidx.coerce.sroa.2.0.insert.insert.i, %for.body.i.for.body.i_crit_edge ], [ undef, %for.body.i.preheader ]
  %arrayidx.i = getelementptr %struct.lpphy_tx_gain_table_entry, ptr @lpphy_rev0_nopa_tx_gain_table, i32 %i.06.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %arrayidx.coerce.sroa.0.0.copyload.i = load i32, ptr %arrayidx.i, align 1
  %arrayidx.coerce.sroa.2.0.arrayidx.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx.i, i32 4
  %14 = ptrtoint ptr %arrayidx.coerce.sroa.2.0.arrayidx.sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %arrayidx.coerce.sroa.2.0.copyload.i = load i8, ptr %arrayidx.coerce.sroa.2.0.arrayidx.sroa_idx.i, align 1
  %arrayidx.coerce.sroa.2.0.insert.ext.i = zext i8 %arrayidx.coerce.sroa.2.0.copyload.i to i32
  %arrayidx.coerce.sroa.2.0.insert.shift.i = shl nuw i32 %arrayidx.coerce.sroa.2.0.insert.ext.i, 24
  %arrayidx.coerce.sroa.2.0.insert.mask.i = and i32 %arrayidx.coerce.sroa.2.05.i, 16777215
  %arrayidx.coerce.sroa.2.0.insert.insert.i = or i32 %arrayidx.coerce.sroa.2.0.insert.shift.i, %arrayidx.coerce.sroa.2.0.insert.mask.i
  %.fca.0.insert.i = insertvalue [2 x i32] poison, i32 %arrayidx.coerce.sroa.0.0.copyload.i, 0
  %.fca.1.insert.i = insertvalue [2 x i32] %.fca.0.insert.i, i32 %arrayidx.coerce.sroa.2.0.insert.insert.i, 1
  tail call void @lpphy_write_gain_table(ptr noundef %dev, i32 noundef %i.06.i, [2 x i32] %.fca.1.insert.i) #2
  %inc.i = add nuw nsw i32 %i.06.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 128
  br i1 %exitcond.not.i, label %for.body.i.sw.epilog_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i

for.body.i.sw.epilog_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog

if.else:                                          ; preds = %lor.lhs.false
  %wl = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 1
  %15 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %wl, align 4
  %hw.i = getelementptr inbounds %struct.b43_wl, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hw.i, align 4
  %chandef.i = getelementptr inbounds %struct.ieee80211_conf, ptr %18, i32 0, i32 7
  %19 = ptrtoint ptr %chandef.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %chandef.i, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp = icmp eq i32 %22, 0
  br i1 %cmp, label %if.else.for.body.i75_crit_edge, label %if.else.for.body.i91_crit_edge

if.else.for.body.i91_crit_edge:                   ; preds = %if.else
  br label %for.body.i91

if.else.for.body.i75_crit_edge:                   ; preds = %if.else
  br label %for.body.i75

for.body.i75:                                     ; preds = %for.body.i75.for.body.i75_crit_edge, %if.else.for.body.i75_crit_edge
  %i.06.i61 = phi i32 [ %inc.i73, %for.body.i75.for.body.i75_crit_edge ], [ 0, %if.else.for.body.i75_crit_edge ]
  %arrayidx.coerce.sroa.2.05.i62 = phi i32 [ %arrayidx.coerce.sroa.2.0.insert.insert.i70, %for.body.i75.for.body.i75_crit_edge ], [ undef, %if.else.for.body.i75_crit_edge ]
  %arrayidx.i63 = getelementptr %struct.lpphy_tx_gain_table_entry, ptr @lpphy_rev0_2ghz_tx_gain_table, i32 %i.06.i61
  %23 = ptrtoint ptr %arrayidx.i63 to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %arrayidx.coerce.sroa.0.0.copyload.i64 = load i32, ptr %arrayidx.i63, align 1
  %arrayidx.coerce.sroa.2.0.arrayidx.sroa_idx.i65 = getelementptr inbounds i8, ptr %arrayidx.i63, i32 4
  %24 = ptrtoint ptr %arrayidx.coerce.sroa.2.0.arrayidx.sroa_idx.i65 to i32
  call void @__asan_load1_noabort(i32 %24)
  %arrayidx.coerce.sroa.2.0.copyload.i66 = load i8, ptr %arrayidx.coerce.sroa.2.0.arrayidx.sroa_idx.i65, align 1
  %arrayidx.coerce.sroa.2.0.insert.ext.i67 = zext i8 %arrayidx.coerce.sroa.2.0.copyload.i66 to i32
  %arrayidx.coerce.sroa.2.0.insert.shift.i68 = shl nuw i32 %arrayidx.coerce.sroa.2.0.insert.ext.i67, 24
  %arrayidx.coerce.sroa.2.0.insert.mask.i69 = and i32 %arrayidx.coerce.sroa.2.05.i62, 16777215
  %arrayidx.coerce.sroa.2.0.insert.insert.i70 = or i32 %arrayidx.coerce.sroa.2.0.insert.shift.i68, %arrayidx.coerce.sroa.2.0.insert.mask.i69
  %.fca.0.insert.i71 = insertvalue [2 x i32] poison, i32 %arrayidx.coerce.sroa.0.0.copyload.i64, 0
  %.fca.1.insert.i72 = insertvalue [2 x i32] %.fca.0.insert.i71, i32 %arrayidx.coerce.sroa.2.0.insert.insert.i70, 1
  tail call void @lpphy_write_gain_table(ptr noundef %dev, i32 noundef %i.06.i61, [2 x i32] %.fca.1.insert.i72) #2
  %inc.i73 = add nuw nsw i32 %i.06.i61, 1
  %exitcond.not.i74 = icmp eq i32 %inc.i73, 128
  br i1 %exitcond.not.i74, label %for.body.i75.sw.epilog_crit_edge, label %for.body.i75.for.body.i75_crit_edge

for.body.i75.for.body.i75_crit_edge:              ; preds = %for.body.i75
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i75

for.body.i75.sw.epilog_crit_edge:                 ; preds = %for.body.i75
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog

for.body.i91:                                     ; preds = %for.body.i91.for.body.i91_crit_edge, %if.else.for.body.i91_crit_edge
  %i.06.i77 = phi i32 [ %inc.i89, %for.body.i91.for.body.i91_crit_edge ], [ 0, %if.else.for.body.i91_crit_edge ]
  %arrayidx.coerce.sroa.2.05.i78 = phi i32 [ %arrayidx.coerce.sroa.2.0.insert.insert.i86, %for.body.i91.for.body.i91_crit_edge ], [ undef, %if.else.for.body.i91_crit_edge ]
  %arrayidx.i79 = getelementptr %struct.lpphy_tx_gain_table_entry, ptr @lpphy_rev0_5ghz_tx_gain_table, i32 %i.06.i77
  %25 = ptrtoint ptr %arrayidx.i79 to i32
  call void @__asan_loadN_noabort(i32 %25, i32 4)
  %arrayidx.coerce.sroa.0.0.copyload.i80 = load i32, ptr %arrayidx.i79, align 1
  %arrayidx.coerce.sroa.2.0.arrayidx.sroa_idx.i81 = getelementptr inbounds i8, ptr %arrayidx.i79, i32 4
  %26 = ptrtoint ptr %arrayidx.coerce.sroa.2.0.arrayidx.sroa_idx.i81 to i32
  call void @__asan_load1_noabort(i32 %26)
  %arrayidx.coerce.sroa.2.0.copyload.i82 = load i8, ptr %arrayidx.coerce.sroa.2.0.arrayidx.sroa_idx.i81, align 1
  %arrayidx.coerce.sroa.2.0.insert.ext.i83 = zext i8 %arrayidx.coerce.sroa.2.0.copyload.i82 to i32
  %arrayidx.coerce.sroa.2.0.insert.shift.i84 = shl nuw i32 %arrayidx.coerce.sroa.2.0.insert.ext.i83, 24
  %arrayidx.coerce.sroa.2.0.insert.mask.i85 = and i32 %arrayidx.coerce.sroa.2.05.i78, 16777215
  %arrayidx.coerce.sroa.2.0.insert.insert.i86 = or i32 %arrayidx.coerce.sroa.2.0.insert.shift.i84, %arrayidx.coerce.sroa.2.0.insert.mask.i85
  %.fca.0.insert.i87 = insertvalue [2 x i32] poison, i32 %arrayidx.coerce.sroa.0.0.copyload.i80, 0
  %.fca.1.insert.i88 = insertvalue [2 x i32] %.fca.0.insert.i87, i32 %arrayidx.coerce.sroa.2.0.insert.insert.i86, 1
  tail call void @lpphy_write_gain_table(ptr noundef %dev, i32 noundef %i.06.i77, [2 x i32] %.fca.1.insert.i88) #2
  %inc.i89 = add nuw nsw i32 %i.06.i77, 1
  %exitcond.not.i90 = icmp eq i32 %inc.i89, 128
  br i1 %exitcond.not.i90, label %for.body.i91.sw.epilog_crit_edge, label %for.body.i91.for.body.i91_crit_edge

for.body.i91.for.body.i91_crit_edge:              ; preds = %for.body.i91
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i91

for.body.i91.sw.epilog_crit_edge:                 ; preds = %for.body.i91
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  %boardflags_hi11 = getelementptr inbounds %struct.ssb_sprom, ptr %3, i32 0, i32 71
  %27 = ptrtoint ptr %boardflags_hi11 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %boardflags_hi11, align 2
  %29 = and i16 %28, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %tobool14.not = icmp eq i16 %29, 0
  br i1 %tobool14.not, label %lor.lhs.false15, label %sw.bb10.for.body.i107.preheader_crit_edge

sw.bb10.for.body.i107.preheader_crit_edge:        ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i107.preheader

lor.lhs.false15:                                  ; preds = %sw.bb10
  %boardflags_lo16 = getelementptr inbounds %struct.ssb_sprom, ptr %3, i32 0, i32 70
  %30 = ptrtoint ptr %boardflags_lo16 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %boardflags_lo16, align 4
  %32 = and i16 %31, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %tobool19.not = icmp eq i16 %32, 0
  br i1 %tobool19.not, label %if.else21, label %lor.lhs.false15.for.body.i107.preheader_crit_edge

lor.lhs.false15.for.body.i107.preheader_crit_edge: ; preds = %lor.lhs.false15
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i107.preheader

for.body.i107.preheader:                          ; preds = %lor.lhs.false15.for.body.i107.preheader_crit_edge, %sw.bb10.for.body.i107.preheader_crit_edge
  br label %for.body.i107

for.body.i107:                                    ; preds = %for.body.i107.for.body.i107_crit_edge, %for.body.i107.preheader
  %i.06.i93 = phi i32 [ %inc.i105, %for.body.i107.for.body.i107_crit_edge ], [ 0, %for.body.i107.preheader ]
  %arrayidx.coerce.sroa.2.05.i94 = phi i32 [ %arrayidx.coerce.sroa.2.0.insert.insert.i102, %for.body.i107.for.body.i107_crit_edge ], [ undef, %for.body.i107.preheader ]
  %arrayidx.i95 = getelementptr %struct.lpphy_tx_gain_table_entry, ptr @lpphy_rev1_nopa_tx_gain_table, i32 %i.06.i93
  %33 = ptrtoint ptr %arrayidx.i95 to i32
  call void @__asan_loadN_noabort(i32 %33, i32 4)
  %arrayidx.coerce.sroa.0.0.copyload.i96 = load i32, ptr %arrayidx.i95, align 1
  %arrayidx.coerce.sroa.2.0.arrayidx.sroa_idx.i97 = getelementptr inbounds i8, ptr %arrayidx.i95, i32 4
  %34 = ptrtoint ptr %arrayidx.coerce.sroa.2.0.arrayidx.sroa_idx.i97 to i32
  call void @__asan_load1_noabort(i32 %34)
  %arrayidx.coerce.sroa.2.0.copyload.i98 = load i8, ptr %arrayidx.coerce.sroa.2.0.arrayidx.sroa_idx.i97, align 1
  %arrayidx.coerce.sroa.2.0.insert.ext.i99 = zext i8 %arrayidx.coerce.sroa.2.0.copyload.i98 to i32
  %arrayidx.coerce.sroa.2.0.insert.shift.i100 = shl nuw i32 %arrayidx.coerce.sroa.2.0.insert.ext.i99, 24
  %arrayidx.coerce.sroa.2.0.insert.mask.i101 = and i32 %arrayidx.coerce.sroa.2.05.i94, 16777215
  %arrayidx.coerce.sroa.2.0.insert.insert.i102 = or i32 %arrayidx.coerce.sroa.2.0.insert.shift.i100, %arrayidx.coerce.sroa.2.0.insert.mask.i101
  %.fca.0.insert.i103 = insertvalue [2 x i32] poison, i32 %arrayidx.coerce.sroa.0.0.copyload.i96, 0
  %.fca.1.insert.i104 = insertvalue [2 x i32] %.fca.0.insert.i103, i32 %arrayidx.coerce.sroa.2.0.insert.insert.i102, 1
  tail call void @lpphy_write_gain_table(ptr noundef %dev, i32 noundef %i.06.i93, [2 x i32] %.fca.1.insert.i104) #2
  %inc.i105 = add nuw nsw i32 %i.06.i93, 1
  %exitcond.not.i106 = icmp eq i32 %inc.i105, 128
  br i1 %exitcond.not.i106, label %for.body.i107.sw.epilog_crit_edge, label %for.body.i107.for.body.i107_crit_edge

for.body.i107.for.body.i107_crit_edge:            ; preds = %for.body.i107
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i107

for.body.i107.sw.epilog_crit_edge:                ; preds = %for.body.i107
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog

if.else21:                                        ; preds = %lor.lhs.false15
  %wl22 = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 1
  %35 = ptrtoint ptr %wl22 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %wl22, align 4
  %hw.i109 = getelementptr inbounds %struct.b43_wl, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %hw.i109 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %hw.i109, align 4
  %chandef.i110 = getelementptr inbounds %struct.ieee80211_conf, ptr %38, i32 0, i32 7
  %39 = ptrtoint ptr %chandef.i110 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %chandef.i110, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %40, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp24 = icmp eq i32 %42, 0
  br i1 %cmp24, label %if.else21.for.body.i125_crit_edge, label %if.else21.for.body.i141_crit_edge

if.else21.for.body.i141_crit_edge:                ; preds = %if.else21
  br label %for.body.i141

if.else21.for.body.i125_crit_edge:                ; preds = %if.else21
  br label %for.body.i125

for.body.i125:                                    ; preds = %for.body.i125.for.body.i125_crit_edge, %if.else21.for.body.i125_crit_edge
  %i.06.i111 = phi i32 [ %inc.i123, %for.body.i125.for.body.i125_crit_edge ], [ 0, %if.else21.for.body.i125_crit_edge ]
  %arrayidx.coerce.sroa.2.05.i112 = phi i32 [ %arrayidx.coerce.sroa.2.0.insert.insert.i120, %for.body.i125.for.body.i125_crit_edge ], [ undef, %if.else21.for.body.i125_crit_edge ]
  %arrayidx.i113 = getelementptr %struct.lpphy_tx_gain_table_entry, ptr @lpphy_rev1_2ghz_tx_gain_table, i32 %i.06.i111
  %43 = ptrtoint ptr %arrayidx.i113 to i32
  call void @__asan_loadN_noabort(i32 %43, i32 4)
  %arrayidx.coerce.sroa.0.0.copyload.i114 = load i32, ptr %arrayidx.i113, align 1
  %arrayidx.coerce.sroa.2.0.arrayidx.sroa_idx.i115 = getelementptr inbounds i8, ptr %arrayidx.i113, i32 4
  %44 = ptrtoint ptr %arrayidx.coerce.sroa.2.0.arrayidx.sroa_idx.i115 to i32
  call void @__asan_load1_noabort(i32 %44)
  %arrayidx.coerce.sroa.2.0.copyload.i116 = load i8, ptr %arrayidx.coerce.sroa.2.0.arrayidx.sroa_idx.i115, align 1
  %arrayidx.coerce.sroa.2.0.insert.ext.i117 = zext i8 %arrayidx.coerce.sroa.2.0.copyload.i116 to i32
  %arrayidx.coerce.sroa.2.0.insert.shift.i118 = shl nuw i32 %arrayidx.coerce.sroa.2.0.insert.ext.i117, 24
  %arrayidx.coerce.sroa.2.0.insert.mask.i119 = and i32 %arrayidx.coerce.sroa.2.05.i112, 16777215
  %arrayidx.coerce.sroa.2.0.insert.insert.i120 = or i32 %arrayidx.coerce.sroa.2.0.insert.shift.i118, %arrayidx.coerce.sroa.2.0.insert.mask.i119
  %.fca.0.insert.i121 = insertvalue [2 x i32] poison, i32 %arrayidx.coerce.sroa.0.0.copyload.i114, 0
  %.fca.1.insert.i122 = insertvalue [2 x i32] %.fca.0.insert.i121, i32 %arrayidx.coerce.sroa.2.0.insert.insert.i120, 1
  tail call void @lpphy_write_gain_table(ptr noundef %dev, i32 noundef %i.06.i111, [2 x i32] %.fca.1.insert.i122) #2
  %inc.i123 = add nuw nsw i32 %i.06.i111, 1
  %exitcond.not.i124 = icmp eq i32 %inc.i123, 128
  br i1 %exitcond.not.i124, label %for.body.i125.sw.epilog_crit_edge, label %for.body.i125.for.body.i125_crit_edge

for.body.i125.for.body.i125_crit_edge:            ; preds = %for.body.i125
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i125

for.body.i125.sw.epilog_crit_edge:                ; preds = %for.body.i125
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog

for.body.i141:                                    ; preds = %for.body.i141.for.body.i141_crit_edge, %if.else21.for.body.i141_crit_edge
  %i.06.i127 = phi i32 [ %inc.i139, %for.body.i141.for.body.i141_crit_edge ], [ 0, %if.else21.for.body.i141_crit_edge ]
  %arrayidx.coerce.sroa.2.05.i128 = phi i32 [ %arrayidx.coerce.sroa.2.0.insert.insert.i136, %for.body.i141.for.body.i141_crit_edge ], [ undef, %if.else21.for.body.i141_crit_edge ]
  %arrayidx.i129 = getelementptr %struct.lpphy_tx_gain_table_entry, ptr @lpphy_rev1_5ghz_tx_gain_table, i32 %i.06.i127
  %45 = ptrtoint ptr %arrayidx.i129 to i32
  call void @__asan_loadN_noabort(i32 %45, i32 4)
  %arrayidx.coerce.sroa.0.0.copyload.i130 = load i32, ptr %arrayidx.i129, align 1
  %arrayidx.coerce.sroa.2.0.arrayidx.sroa_idx.i131 = getelementptr inbounds i8, ptr %arrayidx.i129, i32 4
  %46 = ptrtoint ptr %arrayidx.coerce.sroa.2.0.arrayidx.sroa_idx.i131 to i32
  call void @__asan_load1_noabort(i32 %46)
  %arrayidx.coerce.sroa.2.0.copyload.i132 = load i8, ptr %arrayidx.coerce.sroa.2.0.arrayidx.sroa_idx.i131, align 1
  %arrayidx.coerce.sroa.2.0.insert.ext.i133 = zext i8 %arrayidx.coerce.sroa.2.0.copyload.i132 to i32
  %arrayidx.coerce.sroa.2.0.insert.shift.i134 = shl nuw i32 %arrayidx.coerce.sroa.2.0.insert.ext.i133, 24
  %arrayidx.coerce.sroa.2.0.insert.mask.i135 = and i32 %arrayidx.coerce.sroa.2.05.i128, 16777215
  %arrayidx.coerce.sroa.2.0.insert.insert.i136 = or i32 %arrayidx.coerce.sroa.2.0.insert.shift.i134, %arrayidx.coerce.sroa.2.0.insert.mask.i135
  %.fca.0.insert.i137 = insertvalue [2 x i32] poison, i32 %arrayidx.coerce.sroa.0.0.copyload.i130, 0
  %.fca.1.insert.i138 = insertvalue [2 x i32] %.fca.0.insert.i137, i32 %arrayidx.coerce.sroa.2.0.insert.insert.i136, 1
  tail call void @lpphy_write_gain_table(ptr noundef %dev, i32 noundef %i.06.i127, [2 x i32] %.fca.1.insert.i138) #2
  %inc.i139 = add nuw nsw i32 %i.06.i127, 1
  %exitcond.not.i140 = icmp eq i32 %inc.i139, 128
  br i1 %exitcond.not.i140, label %for.body.i141.sw.epilog_crit_edge, label %for.body.i141.for.body.i141_crit_edge

for.body.i141.for.body.i141_crit_edge:            ; preds = %for.body.i141
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i141

for.body.i141.sw.epilog_crit_edge:                ; preds = %for.body.i141
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %boardflags_hi30 = getelementptr inbounds %struct.ssb_sprom, ptr %3, i32 0, i32 71
  %47 = ptrtoint ptr %boardflags_hi30 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %boardflags_hi30, align 2
  %49 = and i16 %48, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %49)
  %tobool33.not = icmp eq i16 %49, 0
  br i1 %tobool33.not, label %if.else35, label %sw.default.for.body.i157_crit_edge

sw.default.for.body.i157_crit_edge:               ; preds = %sw.default
  br label %for.body.i157

for.body.i157:                                    ; preds = %for.body.i157.for.body.i157_crit_edge, %sw.default.for.body.i157_crit_edge
  %i.06.i143 = phi i32 [ %inc.i155, %for.body.i157.for.body.i157_crit_edge ], [ 0, %sw.default.for.body.i157_crit_edge ]
  %arrayidx.coerce.sroa.2.05.i144 = phi i32 [ %arrayidx.coerce.sroa.2.0.insert.insert.i152, %for.body.i157.for.body.i157_crit_edge ], [ undef, %sw.default.for.body.i157_crit_edge ]
  %arrayidx.i145 = getelementptr %struct.lpphy_tx_gain_table_entry, ptr @lpphy_rev2_nopa_tx_gain_table, i32 %i.06.i143
  %50 = ptrtoint ptr %arrayidx.i145 to i32
  call void @__asan_loadN_noabort(i32 %50, i32 4)
  %arrayidx.coerce.sroa.0.0.copyload.i146 = load i32, ptr %arrayidx.i145, align 1
  %arrayidx.coerce.sroa.2.0.arrayidx.sroa_idx.i147 = getelementptr inbounds i8, ptr %arrayidx.i145, i32 4
  %51 = ptrtoint ptr %arrayidx.coerce.sroa.2.0.arrayidx.sroa_idx.i147 to i32
  call void @__asan_load1_noabort(i32 %51)
  %arrayidx.coerce.sroa.2.0.copyload.i148 = load i8, ptr %arrayidx.coerce.sroa.2.0.arrayidx.sroa_idx.i147, align 1
  %arrayidx.coerce.sroa.2.0.insert.ext.i149 = zext i8 %arrayidx.coerce.sroa.2.0.copyload.i148 to i32
  %arrayidx.coerce.sroa.2.0.insert.shift.i150 = shl nuw i32 %arrayidx.coerce.sroa.2.0.insert.ext.i149, 24
  %arrayidx.coerce.sroa.2.0.insert.mask.i151 = and i32 %arrayidx.coerce.sroa.2.05.i144, 16777215
  %arrayidx.coerce.sroa.2.0.insert.insert.i152 = or i32 %arrayidx.coerce.sroa.2.0.insert.shift.i150, %arrayidx.coerce.sroa.2.0.insert.mask.i151
  %.fca.0.insert.i153 = insertvalue [2 x i32] poison, i32 %arrayidx.coerce.sroa.0.0.copyload.i146, 0
  %.fca.1.insert.i154 = insertvalue [2 x i32] %.fca.0.insert.i153, i32 %arrayidx.coerce.sroa.2.0.insert.insert.i152, 1
  tail call void @lpphy_write_gain_table(ptr noundef %dev, i32 noundef %i.06.i143, [2 x i32] %.fca.1.insert.i154) #2
  %inc.i155 = add nuw nsw i32 %i.06.i143, 1
  %exitcond.not.i156 = icmp eq i32 %inc.i155, 128
  br i1 %exitcond.not.i156, label %for.body.i157.sw.epilog_crit_edge, label %for.body.i157.for.body.i157_crit_edge

for.body.i157.for.body.i157_crit_edge:            ; preds = %for.body.i157
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i157

for.body.i157.sw.epilog_crit_edge:                ; preds = %for.body.i157
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog

if.else35:                                        ; preds = %sw.default
  %wl36 = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 1
  %52 = ptrtoint ptr %wl36 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %wl36, align 4
  %hw.i159 = getelementptr inbounds %struct.b43_wl, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %hw.i159 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %hw.i159, align 4
  %chandef.i160 = getelementptr inbounds %struct.ieee80211_conf, ptr %55, i32 0, i32 7
  %56 = ptrtoint ptr %chandef.i160 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %chandef.i160, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %57, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp38 = icmp eq i32 %59, 0
  br i1 %cmp38, label %if.else35.for.body.i175_crit_edge, label %if.else35.for.body.i191_crit_edge

if.else35.for.body.i191_crit_edge:                ; preds = %if.else35
  br label %for.body.i191

if.else35.for.body.i175_crit_edge:                ; preds = %if.else35
  br label %for.body.i175

for.body.i175:                                    ; preds = %for.body.i175.for.body.i175_crit_edge, %if.else35.for.body.i175_crit_edge
  %i.06.i161 = phi i32 [ %inc.i173, %for.body.i175.for.body.i175_crit_edge ], [ 0, %if.else35.for.body.i175_crit_edge ]
  %arrayidx.coerce.sroa.2.05.i162 = phi i32 [ %arrayidx.coerce.sroa.2.0.insert.insert.i170, %for.body.i175.for.body.i175_crit_edge ], [ undef, %if.else35.for.body.i175_crit_edge ]
  %arrayidx.i163 = getelementptr %struct.lpphy_tx_gain_table_entry, ptr @lpphy_rev2_2ghz_tx_gain_table, i32 %i.06.i161
  %60 = ptrtoint ptr %arrayidx.i163 to i32
  call void @__asan_loadN_noabort(i32 %60, i32 4)
  %arrayidx.coerce.sroa.0.0.copyload.i164 = load i32, ptr %arrayidx.i163, align 1
  %arrayidx.coerce.sroa.2.0.arrayidx.sroa_idx.i165 = getelementptr inbounds i8, ptr %arrayidx.i163, i32 4
  %61 = ptrtoint ptr %arrayidx.coerce.sroa.2.0.arrayidx.sroa_idx.i165 to i32
  call void @__asan_load1_noabort(i32 %61)
  %arrayidx.coerce.sroa.2.0.copyload.i166 = load i8, ptr %arrayidx.coerce.sroa.2.0.arrayidx.sroa_idx.i165, align 1
  %arrayidx.coerce.sroa.2.0.insert.ext.i167 = zext i8 %arrayidx.coerce.sroa.2.0.copyload.i166 to i32
  %arrayidx.coerce.sroa.2.0.insert.shift.i168 = shl nuw i32 %arrayidx.coerce.sroa.2.0.insert.ext.i167, 24
  %arrayidx.coerce.sroa.2.0.insert.mask.i169 = and i32 %arrayidx.coerce.sroa.2.05.i162, 16777215
  %arrayidx.coerce.sroa.2.0.insert.insert.i170 = or i32 %arrayidx.coerce.sroa.2.0.insert.shift.i168, %arrayidx.coerce.sroa.2.0.insert.mask.i169
  %.fca.0.insert.i171 = insertvalue [2 x i32] poison, i32 %arrayidx.coerce.sroa.0.0.copyload.i164, 0
  %.fca.1.insert.i172 = insertvalue [2 x i32] %.fca.0.insert.i171, i32 %arrayidx.coerce.sroa.2.0.insert.insert.i170, 1
  tail call void @lpphy_write_gain_table(ptr noundef %dev, i32 noundef %i.06.i161, [2 x i32] %.fca.1.insert.i172) #2
  %inc.i173 = add nuw nsw i32 %i.06.i161, 1
  %exitcond.not.i174 = icmp eq i32 %inc.i173, 128
  br i1 %exitcond.not.i174, label %for.body.i175.sw.epilog_crit_edge, label %for.body.i175.for.body.i175_crit_edge

for.body.i175.for.body.i175_crit_edge:            ; preds = %for.body.i175
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i175

for.body.i175.sw.epilog_crit_edge:                ; preds = %for.body.i175
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog

for.body.i191:                                    ; preds = %for.body.i191.for.body.i191_crit_edge, %if.else35.for.body.i191_crit_edge
  %i.06.i177 = phi i32 [ %inc.i189, %for.body.i191.for.body.i191_crit_edge ], [ 0, %if.else35.for.body.i191_crit_edge ]
  %arrayidx.coerce.sroa.2.05.i178 = phi i32 [ %arrayidx.coerce.sroa.2.0.insert.insert.i186, %for.body.i191.for.body.i191_crit_edge ], [ undef, %if.else35.for.body.i191_crit_edge ]
  %arrayidx.i179 = getelementptr %struct.lpphy_tx_gain_table_entry, ptr @lpphy_rev2_5ghz_tx_gain_table, i32 %i.06.i177
  %62 = ptrtoint ptr %arrayidx.i179 to i32
  call void @__asan_loadN_noabort(i32 %62, i32 4)
  %arrayidx.coerce.sroa.0.0.copyload.i180 = load i32, ptr %arrayidx.i179, align 1
  %arrayidx.coerce.sroa.2.0.arrayidx.sroa_idx.i181 = getelementptr inbounds i8, ptr %arrayidx.i179, i32 4
  %63 = ptrtoint ptr %arrayidx.coerce.sroa.2.0.arrayidx.sroa_idx.i181 to i32
  call void @__asan_load1_noabort(i32 %63)
  %arrayidx.coerce.sroa.2.0.copyload.i182 = load i8, ptr %arrayidx.coerce.sroa.2.0.arrayidx.sroa_idx.i181, align 1
  %arrayidx.coerce.sroa.2.0.insert.ext.i183 = zext i8 %arrayidx.coerce.sroa.2.0.copyload.i182 to i32
  %arrayidx.coerce.sroa.2.0.insert.shift.i184 = shl nuw i32 %arrayidx.coerce.sroa.2.0.insert.ext.i183, 24
  %arrayidx.coerce.sroa.2.0.insert.mask.i185 = and i32 %arrayidx.coerce.sroa.2.05.i178, 16777215
  %arrayidx.coerce.sroa.2.0.insert.insert.i186 = or i32 %arrayidx.coerce.sroa.2.0.insert.shift.i184, %arrayidx.coerce.sroa.2.0.insert.mask.i185
  %.fca.0.insert.i187 = insertvalue [2 x i32] poison, i32 %arrayidx.coerce.sroa.0.0.copyload.i180, 0
  %.fca.1.insert.i188 = insertvalue [2 x i32] %.fca.0.insert.i187, i32 %arrayidx.coerce.sroa.2.0.insert.insert.i186, 1
  tail call void @lpphy_write_gain_table(ptr noundef %dev, i32 noundef %i.06.i177, [2 x i32] %.fca.1.insert.i188) #2
  %inc.i189 = add nuw nsw i32 %i.06.i177, 1
  %exitcond.not.i190 = icmp eq i32 %inc.i189, 128
  br i1 %exitcond.not.i190, label %for.body.i191.sw.epilog_crit_edge, label %for.body.i191.for.body.i191_crit_edge

for.body.i191.for.body.i191_crit_edge:            ; preds = %for.body.i191
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i191

for.body.i191.sw.epilog_crit_edge:                ; preds = %for.body.i191
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.body.i191.sw.epilog_crit_edge, %for.body.i175.sw.epilog_crit_edge, %for.body.i157.sw.epilog_crit_edge, %for.body.i141.sw.epilog_crit_edge, %for.body.i125.sw.epilog_crit_edge, %for.body.i107.sw.epilog_crit_edge, %for.body.i91.sw.epilog_crit_edge, %for.body.i75.sw.epilog_crit_edge, %for.body.i.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74}
!llvm.module.flags = !{!76, !77, !78, !79, !80, !81, !82, !83}
!llvm.ident = !{!84}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/broadcom/b43/tables_lpphy.c", i32 587, i32 2}
!2 = !{ptr @b2062_init_tab, !3, !"b2062_init_tab", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/broadcom/b43/tables_lpphy.c", i32 29, i32 42}
!4 = !{ptr @b2063_init_tab, !5, !"b2063_init_tab", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/broadcom/b43/tables_lpphy.c", i32 244, i32 42}
!6 = !{ptr @lpphy_min_sig_sq_table, !7, !"lpphy_min_sig_sq_table", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/broadcom/b43/tables_lpphy.c", i32 715, i32 17}
!8 = !{ptr @lpphy_rev01_noise_scale_table, !9, !"lpphy_rev01_noise_scale_table", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/broadcom/b43/tables_lpphy.c", i32 724, i32 18}
!10 = !{ptr @lpphy_crs_gain_nft_table, !11, !"lpphy_crs_gain_nft_table", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/broadcom/b43/tables_lpphy.c", i32 742, i32 18}
!12 = distinct !{null, !13, !"lpphy_rev01_filter_control_table", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/broadcom/b43/tables_lpphy.c", i32 749, i32 18}
!14 = !{ptr @lpphy_rev01_ps_control_table, !15, !"lpphy_rev01_ps_control_table", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/broadcom/b43/tables_lpphy.c", i32 759, i32 18}
!16 = distinct !{null, !17, !"lpphy_pll_fraction_table", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/broadcom/b43/tables_lpphy.c", i32 776, i32 17}
!18 = !{ptr @lpphy_iqlo_cal_table, !19, !"lpphy_iqlo_cal_table", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/broadcom/b43/tables_lpphy.c", i32 781, i32 18}
!20 = !{ptr @lpphy_rev0_ofdm_cck_gain_table, !21, !"lpphy_rev0_ofdm_cck_gain_table", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/broadcom/b43/tables_lpphy.c", i32 796, i32 18}
!22 = !{ptr @lpphy_rev1_ofdm_cck_gain_table, !23, !"lpphy_rev1_ofdm_cck_gain_table", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/broadcom/b43/tables_lpphy.c", i32 803, i32 18}
!24 = distinct !{null, !25, !"lpphy_gain_delta_table", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/broadcom/b43/tables_lpphy.c", i32 810, i32 18}
!26 = !{ptr @lpphy_tx_power_control_table, !27, !"lpphy_tx_power_control_table", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/broadcom/b43/tables_lpphy.c", i32 814, i32 18}
!28 = !{ptr @lpphy_rev2plus_noise_scale_table, !29, !"lpphy_rev2plus_noise_scale_table", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/broadcom/b43/tables_lpphy.c", i32 732, i32 18}
!30 = distinct !{null, !31, !"lpphy_rev2plus_filter_control_table", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/broadcom/b43/tables_lpphy.c", i32 754, i32 18}
!32 = !{ptr @lpphy_rev2plus_ps_control_table, !33, !"lpphy_rev2plus_ps_control_table", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/broadcom/b43/tables_lpphy.c", i32 769, i32 18}
!34 = !{ptr @lpphy_gain_idx_table, !35, !"lpphy_gain_idx_table", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/broadcom/b43/tables_lpphy.c", i32 913, i32 18}
!36 = !{ptr @lpphy_aux_gain_idx_table, !37, !"lpphy_aux_gain_idx_table", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/broadcom/b43/tables_lpphy.c", i32 941, i32 18}
!38 = !{ptr @lpphy_sw_control_table, !39, !"lpphy_sw_control_table", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/broadcom/b43/tables_lpphy.c", i32 1025, i32 18}
!40 = distinct !{null, !41, !"lpphy_hf_table", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/broadcom/b43/tables_lpphy.c", i32 1036, i32 17}
!42 = !{ptr @lpphy_gain_value_table, !43, !"lpphy_gain_value_table", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/broadcom/b43/tables_lpphy.c", i32 947, i32 18}
!44 = !{ptr @lpphy_gain_table, !45, !"lpphy_gain_table", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/broadcom/b43/tables_lpphy.c", i32 962, i32 18}
!46 = !{ptr @lpphy_papd_eps_table, !47, !"lpphy_papd_eps_table", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/broadcom/b43/tables_lpphy.c", i32 1041, i32 18}
!48 = !{ptr @lpphy_papd_mult_table, !49, !"lpphy_papd_mult_table", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/broadcom/b43/tables_lpphy.c", i32 1055, i32 18}
!50 = !{ptr @lpphy_a0_gain_idx_table, !51, !"lpphy_a0_gain_idx_table", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/broadcom/b43/tables_lpphy.c", i32 976, i32 18}
!52 = !{ptr @lpphy_a0_aux_gain_idx_table, !53, !"lpphy_a0_aux_gain_idx_table", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/broadcom/b43/tables_lpphy.c", i32 990, i32 18}
!54 = !{ptr @lpphy_a0_gain_value_table, !55, !"lpphy_a0_gain_value_table", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/broadcom/b43/tables_lpphy.c", i32 996, i32 18}
!56 = !{ptr @lpphy_a0_gain_table, !57, !"lpphy_a0_gain_table", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/broadcom/b43/tables_lpphy.c", i32 1011, i32 18}
!58 = !{ptr @lpphy_rev0_nopa_tx_gain_table, !59, !"lpphy_rev0_nopa_tx_gain_table", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/broadcom/b43/tables_lpphy.c", i32 1069, i32 41}
!60 = !{ptr @lpphy_rev0_2ghz_tx_gain_table, !61, !"lpphy_rev0_2ghz_tx_gain_table", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/broadcom/b43/tables_lpphy.c", i32 1200, i32 41}
!62 = !{ptr @lpphy_rev0_5ghz_tx_gain_table, !63, !"lpphy_rev0_5ghz_tx_gain_table", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/broadcom/b43/tables_lpphy.c", i32 1331, i32 41}
!64 = !{ptr @lpphy_rev1_nopa_tx_gain_table, !65, !"lpphy_rev1_nopa_tx_gain_table", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/broadcom/b43/tables_lpphy.c", i32 1462, i32 41}
!66 = !{ptr @lpphy_rev1_2ghz_tx_gain_table, !67, !"lpphy_rev1_2ghz_tx_gain_table", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/broadcom/b43/tables_lpphy.c", i32 1602, i32 41}
!68 = !{ptr @lpphy_rev1_5ghz_tx_gain_table, !69, !"lpphy_rev1_5ghz_tx_gain_table", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/broadcom/b43/tables_lpphy.c", i32 1733, i32 41}
!70 = !{ptr @lpphy_rev2_nopa_tx_gain_table, !71, !"lpphy_rev2_nopa_tx_gain_table", i1 false, i1 false}
!71 = !{!"../drivers/net/wireless/broadcom/b43/tables_lpphy.c", i32 1864, i32 41}
!72 = !{ptr @lpphy_rev2_2ghz_tx_gain_table, !73, !"lpphy_rev2_2ghz_tx_gain_table", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/broadcom/b43/tables_lpphy.c", i32 1995, i32 41}
!74 = !{ptr @lpphy_rev2_5ghz_tx_gain_table, !75, !"lpphy_rev2_5ghz_tx_gain_table", i1 false, i1 false}
!75 = !{!"../drivers/net/wireless/broadcom/b43/tables_lpphy.c", i32 2126, i32 41}
!76 = !{i32 1, !"wchar_size", i32 2}
!77 = !{i32 1, !"min_enum_size", i32 4}
!78 = !{i32 8, !"branch-target-enforcement", i32 0}
!79 = !{i32 8, !"sign-return-address", i32 0}
!80 = !{i32 8, !"sign-return-address-all", i32 0}
!81 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!82 = !{i32 7, !"uwtable", i32 1}
!83 = !{i32 7, !"frame-pointer", i32 2}
!84 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!85 = !{!"branch_weights", i32 2000, i32 1}
!86 = !{!"branch_weights", i32 1, i32 2000}
