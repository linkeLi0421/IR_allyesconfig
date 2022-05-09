; ModuleID = '/llk/IR_all_yes/drivers/staging/rtl8712/rtl871x_security.c_pt.bc'
source_filename = "../drivers/staging/rtl8712/rtl871x_security.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arc4context = type { i32, i32, [256 x i8] }
%struct.xmit_frame = type { %struct.list_head, %struct.pkt_attrib, ptr, i32, ptr, ptr, ptr, ptr, [8 x i16], [8 x ptr], [8 x i8], [8 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.pkt_attrib = type { i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], [8 x i8], [6 x i8], [6 x i8], [6 x i8], [6 x i8], ptr }
%struct._adapter = type { %struct.dvobj_priv, %struct.mlme_priv, %struct.cmd_priv, %struct.evt_priv, ptr, %struct.xmit_priv, %struct.recv_priv, %struct.sta_priv, %struct.security_priv, %struct.registry_priv, %struct.wlan_acl_pool, %struct.pwrctrl_priv, %struct.eeprom_priv, %struct.hal_priv, %struct.led_priv, %struct.mp_priv, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, i32, %struct.net_device_stats, %struct.iw_statistics, i32, %struct.work_struct, i8, %struct.spinlock, ptr, ptr, %struct.mutex, %struct.completion }
%struct.dvobj_priv = type { ptr, i32, i8, ptr, ptr, ptr }
%struct.mlme_priv = type { %struct.spinlock, %struct.spinlock, i32, i8, ptr, ptr, %struct.__queue, %struct.__queue, ptr, i32, i8, %struct.ndis_802_11_ssid, [6 x i8], %struct.wlan_network, %struct.sitesurvey_ctrl, %struct.timer_list, i32, i32, %struct.timer_list, %struct.timer_list, %struct.qos_priv, %struct.ht_priv, %struct.timer_list }
%struct.__queue = type { %struct.list_head, %struct.spinlock }
%struct.ndis_802_11_ssid = type { i32, [32 x i8] }
%struct.wlan_network = type { %struct.list_head, i32, i32, i32, i32, i32, %struct.wlan_bssid_ex }
%struct.wlan_bssid_ex = type { i32, [6 x i8], [2 x i8], %struct.ndis_802_11_ssid, i32, i32, i32, %struct.NDIS_802_11_CONFIGURATION, i32, [16 x i8], i32, [768 x i8] }
%struct.NDIS_802_11_CONFIGURATION = type { i32, i32, i32, i32, %struct.NDIS_802_11_CONFIGURATION_FH }
%struct.NDIS_802_11_CONFIGURATION_FH = type { i32, i32, i32, i32 }
%struct.sitesurvey_ctrl = type { i64, i32, i32, %struct.timer_list }
%struct.qos_priv = type { i32 }
%struct.ht_priv = type { i32, i32, [16 x i8], i32, i32, i32, %struct.ieee80211_ht_cap }
%struct.ieee80211_ht_cap = type <{ i16, i8, %struct.ieee80211_mcs_info, i16, i32, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.cmd_priv = type { %struct.completion, %struct.completion, %struct.__queue, i8, ptr, ptr, ptr, ptr, i32, i32, i32, ptr }
%struct.evt_priv = type { %struct.__queue, i8, ptr, ptr, i32, %struct.tasklet_struct }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.2, i32 }
%struct.atomic_t = type { i32 }
%union.anon.2 = type { ptr }
%struct.xmit_priv = type { %struct.spinlock, %struct.__queue, %struct.__queue, %struct.__queue, %struct.__queue, %struct.__queue, %struct.__queue, %struct.__queue, ptr, ptr, i32, i32, i32, %struct.__queue, %struct.hw_txqueue, %struct.hw_txqueue, %struct.hw_txqueue, %struct.hw_txqueue, %struct.hw_txqueue, i32, ptr, i8, i8, i8, i16, i32, i64, i32, ptr, i8, i8, %struct.tasklet_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, i32, i32, i32, i32, %struct.__queue, ptr, ptr, i32, %struct.__queue, ptr, ptr, i32, i32, %struct.__queue, %struct.__queue, ptr, ptr, i32 }
%struct.hw_txqueue = type { i32, i32, i32, i32, [8 x i32], i32, i32, i32 }
%struct.recv_priv = type { %struct.spinlock, %struct.__queue, %struct.__queue, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i8, i32, %struct.tasklet_struct, %struct.sk_buff_head, %struct.sk_buff_head, ptr, ptr, %struct.__queue, i32, i8, i8, i8, i8, %struct.smooth_rssi_data, %struct.smooth_rssi_data }
%struct.sk_buff_head = type { %union.anon.3, i32, %struct.spinlock }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { ptr, ptr }
%struct.smooth_rssi_data = type { [100 x i32], i32, i32, i32 }
%struct.sta_priv = type { ptr, ptr, %struct.__queue, %struct.spinlock, [32 x %struct.list_head], i32, %struct.__queue, %struct.__queue, ptr, %struct.list_head, %struct.list_head, i32, i32, i32 }
%struct.security_priv = type { i32, i32, i32, [4 x %union.Keytype], [4 x i32], i32, i32, [2 x %union.Keytype], [2 x %union.Keytype], [2 x %union.Keytype], %union.pn48, %union.pn48, i8, i8, [512 x i8], i32, i8, i8, %struct.timer_list, i8, i8, i32, i32, i32, i32, i32, %struct.wlan_bssid_ex, %struct.NDIS_802_11_WEP, [600 x i8], [256 x i8], [512 x i8], [256 x i8], [256 x i8], i32, i8, i8, i32, [16 x %struct.RT_PMKID_LIST], i8 }
%union.Keytype = type { [4 x i32] }
%union.pn48 = type { i64 }
%struct.NDIS_802_11_WEP = type { i32, i32, i32, [16 x i8] }
%struct.RT_PMKID_LIST = type { i8, [6 x i8], [16 x i8], [33 x i8], ptr, i16 }
%struct.registry_priv = type { i8, i8, i8, i8, i8, %struct.ndis_802_11_ssid, i8, i8, i8, i8, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.wlan_bssid_ex, i8, i8, i8, i8, i8, i8 }
%struct.wlan_acl_pool = type { [64 x %struct.wlan_acl_node] }
%struct.wlan_acl_node = type { %struct.list_head, [6 x i8], i8 }
%struct.pwrctrl_priv = type { %struct.mutex, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, %struct.work_struct, %struct.work_struct, %struct.timer_list, i8, i32, %struct.spinlock, i32, i8, i8 }
%struct.eeprom_priv = type { i8, i8, i8, [6 x i8], i8, i16, [3 x i8], [15 x i8], [15 x i8], [201 x i8], [256 x i8], i32 }
%struct.hal_priv = type { [10 x ptr], ptr }
%struct.led_priv = type { %struct.LED_871x, %struct.LED_871x, i32, i8, ptr }
%struct.LED_871x = type { ptr, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, %struct.timer_list, %struct.work_struct }
%struct.mp_priv = type { ptr, %struct.mp_wiparam, i8, i8, i32, i32, i32, i32, %struct.recv_stat, i32, i32, i8, i8, i8, i32, i16, i16, i8, i8, i32, %struct.wlan_network, [6 x i8], i32, i32, ptr, ptr, %struct.__queue, i32 }
%struct.mp_wiparam = type { i32, i32, i32, i32 }
%struct.recv_stat = type { i32, i32, i32, i32, i32, i32 }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.iw_statistics = type { i16, %struct.iw_quality, %struct.iw_discarded, %struct.iw_missed }
%struct.iw_quality = type { i8, i8, i8, i8 }
%struct.iw_discarded = type { i32, i32, i32, i32, i32 }
%struct.iw_missed = type { i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.recv_frame_hdr = type { %struct.list_head, ptr, ptr, ptr, i8, %struct.rx_pkt_attrib, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rx_pkt_attrib = type { i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i8, [6 x i8], [6 x i8], [6 x i8], [6 x i8], [6 x i8], i8, i8, i8, i8, [2 x i8], i8, i8, i8 }
%struct.mic_data = type { i32, i32, i32, i32, i32, i32 }
%struct.sta_info = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.sta_xmit_priv, %struct.sta_recv_priv, i32, i32, i32, i32, [6 x i8], i32, i32, %union.Keytype, %union.Keytype, %union.Keytype, %union.pn48, %union.pn48, [16 x i8], i32, i32, i32, %struct.stainfo_stats, [16 x %struct.recv_reorder_ctrl], %struct.ht_priv, %struct.list_head, %struct.list_head, i32, i32, i32, [128 x i8], i32 }
%struct.sta_xmit_priv = type { %struct.spinlock, i32, i32, %struct.tx_servq, %struct.tx_servq, %struct.tx_servq, %struct.tx_servq, %struct.list_head, %struct.list_head, [16 x i16], i32, i64, i32 }
%struct.tx_servq = type { %struct.list_head, %struct.__queue, i32 }
%struct.sta_recv_priv = type { %struct.spinlock, i32, %struct.__queue, %struct.stainfo_rxcache, i32, i32, i32 }
%struct.stainfo_rxcache = type { [16 x i16] }
%struct.stainfo_stats = type { i32, i32, i64, i32 }
%struct.recv_reorder_ctrl = type { ptr, i16, i16, i8, %struct.__queue, %struct.timer_list }

@bcrc32initialized = internal global { i1, [31 x i8] } zeroinitializer, align 32
@crc32_table = internal global { [256 x i32], [256 x i8] } zeroinitializer, align 32
@Sbox1 = internal constant { [2 x [256 x i16]], [256 x i8] } { [2 x [256 x i16]] [[256 x i16] [i16 -14683, i16 -1916, i16 -4455, i16 -2419, i16 -243, i16 -10563, i16 -8527, i16 -28332, i16 24656, i16 515, i16 -12631, i16 22141, i16 -6375, i16 -19102, i16 19942, i16 -4966, i16 -28859, i16 8093, i16 -30400, i16 -1401, i16 -4331, i16 -19733, i16 -28983, i16 -1269, i16 16876, i16 -19609, i16 24573, i16 17898, i16 9151, i16 21495, i16 -7018, i16 -25765, i16 30146, i16 -7908, i16 15790, i16 19562, i16 27738, i16 32321, i16 -2814, i16 -31921, i16 26716, i16 20980, i16 -11980, i16 -1784, i16 -7533, i16 -21645, i16 25171, i16 10815, i16 2060, i16 -27310, i16 18021, i16 -25250, i16 12328, i16 14241, i16 2575, i16 12213, i16 3593, i16 9270, i16 7067, i16 -8387, i16 -13018, i16 20073, i16 32717, i16 -5473, i16 4635, i16 7582, i16 22644, i16 13358, i16 13869, i16 -9038, i16 -19218, i16 23547, i16 -23306, i16 30285, i16 -18591, i16 32206, i16 21115, i16 -8898, i16 24177, i16 5015, i16 -22795, i16 -18072, i16 0, i16 -16084, i16 16480, i16 -7393, i16 31176, i16 -18707, i16 -11074, i16 -29370, i16 26585, i16 29259, i16 -27426, i16 -26412, i16 -20248, i16 -31414, i16 -17557, i16 -15062, i16 20453, i16 -4842, i16 -31035, i16 -25897, i16 26197, i16 4500, i16 -30001, i16 -5872, i16 1030, i16 -383, i16 -24336, i16 30788, i16 9658, i16 19427, i16 -23821, i16 24062, i16 -32576, i16 1418, i16 16301, i16 8636, i16 28744, i16 -3836, i16 25567, i16 30657, i16 -20619, i16 16995, i16 8240, i16 -6886, i16 -754, i16 -16531, i16 -32436, i16 6164, i16 9781, i16 -15569, i16 -16671, i16 13730, i16 -30516, i16 11833, i16 -27817, i16 22002, i16 -894, i16 31303, i16 -14164, i16 -17689, i16 12843, i16 -6507, i16 -16224, i16 6552, i16 -24879, i16 -23681, i16 17510, i16 21630, i16 15275, i16 2947, i16 -29494, i16 -14551, i16 27603, i16 10300, i16 -22663, i16 -17182, i16 5661, i16 -21130, i16 -9413, i16 25686, i16 29774, i16 5150, i16 -27941, i16 3082, i16 18540, i16 -18204, i16 -24739, i16 -17042, i16 17391, i16 -15194, i16 14760, i16 12708, i16 -11465, i16 -3445, i16 -10958, i16 -29885, i16 28249, i16 -9545, i16 396, i16 -20124, i16 -25390, i16 18912, i16 -10060, i16 -21254, i16 -3321, i16 -12507, i16 -13649, i16 -2930, i16 18409, i16 4120, i16 28629, i16 -3960, i16 19055, i16 23666, i16 14372, i16 22513, i16 29639, i16 -26799, i16 -13533, i16 -24196, i16 -5988, i16 15905, i16 -26915, i16 25052, i16 3462, i16 3973, i16 -8048, i16 31810, i16 29124, i16 -13142, i16 -28456, i16 1541, i16 -2303, i16 7186, i16 -15709, i16 27231, i16 -20743, i16 27088, i16 6033, i16 -26280, i16 14887, i16 10169, i16 -9928, i16 -5357, i16 11187, i16 8755, i16 -11589, i16 -22160, i16 1929, i16 13223, i16 11702, i16 15394, i16 5522, i16 -14048, i16 -30903, i16 -21761, i16 20600, i16 -23174, i16 911, i16 23032, i16 2432, i16 6679, i16 26074, i16 -10447, i16 -31546, i16 -12104, i16 -32061, i16 10672, i16 23159, i16 7697, i16 31691, i16 -22276, i16 28118, i16 11322], [256 x i16] [i16 -23098, i16 -31496, i16 -26130, i16 -29194, i16 3583, i16 -16938, i16 -20002, i16 21649, i16 20576, i16 770, i16 -22066, i16 32086, i16 6631, i16 25269, i16 -6579, i16 -25876, i16 17807, i16 -25313, i16 16521, i16 -30726, i16 5615, i16 -5198, i16 -13938, i16 3067, i16 -5055, i16 26547, i16 -673, i16 -5563, i16 -16605, i16 -2221, i16 -26908, i16 23451, i16 -15755, i16 7393, i16 -20931, i16 27212, i16 23148, i16 16766, i16 757, i16 20355, i16 23656, i16 -2991, i16 13521, i16 2297, i16 -27678, i16 29611, i16 21346, i16 16170, i16 3080, i16 21141, i16 25926, i16 24221, i16 10288, i16 -24265, i16 3850, i16 -19153, i16 2318, i16 13860, i16 -25829, i16 15839, i16 9933, i16 26958, i16 -12929, i16 -24598, i16 6930, i16 -25059, i16 29784, i16 11828, i16 11574, i16 -19748, i16 -4428, i16 -1189, i16 -2396, i16 19830, i16 25015, i16 -12675, i16 31570, i16 16093, i16 29022, i16 -26861, i16 -2650, i16 26809, i16 0, i16 11457, i16 24640, i16 8163, i16 -14215, i16 -4682, i16 -16684, i16 18061, i16 -9881, i16 19314, i16 -8556, i16 -11112, i16 -5968, i16 19077, i16 27579, i16 10949, i16 -6833, i16 5869, i16 -14970, i16 -10342, i16 21862, i16 -27631, i16 -12406, i16 4329, i16 1540, i16 -32258, i16 -3936, i16 17528, i16 -17883, i16 -7349, i16 -3166, i16 -419, i16 -16256, i16 -30203, i16 -21185, i16 -17375, i16 18544, i16 1265, i16 -8349, i16 -16009, i16 30127, i16 25410, i16 12320, i16 6885, i16 3837, i16 28095, i16 19585, i16 5144, i16 13606, i16 12227, i16 -7746, i16 -24011, i16 -13176, i16 14638, i16 22419, i16 -3499, i16 -32004, i16 18298, i16 -21304, i16 -6214, i16 11058, i16 -27162, i16 -24384, i16 -26599, i16 -11874, i16 32675, i16 26180, i16 32340, i16 -21701, i16 -31989, i16 -13684, i16 10695, i16 -11413, i16 15400, i16 31143, i16 -7492, i16 7446, i16 30381, i16 15323, i16 22116, i16 20084, i16 7700, i16 -9326, i16 2572, i16 27720, i16 -6984, i16 23967, i16 28349, i16 -4285, i16 -22844, i16 -22471, i16 -23503, i16 14291, i16 -29710, i16 13013, i16 17291, i16 22894, i16 -18470, i16 -29695, i16 25777, i16 -11620, i16 -8119, i16 -19240, i16 -1364, i16 2035, i16 9679, i16 -20534, i16 -28940, i16 -5817, i16 6160, i16 -10897, i16 -30480, i16 28490, i16 29276, i16 9272, i16 -3753, i16 -14477, i16 20887, i16 9163, i16 31905, i16 -25368, i16 8510, i16 -8810, i16 -9119, i16 -31219, i16 -31473, i16 -28448, i16 17020, i16 -15247, i16 -21812, i16 -10096, i16 1286, i16 503, i16 4636, i16 -23614, i16 24426, i16 -1618, i16 -12183, i16 -28393, i16 22681, i16 10042, i16 -18137, i16 14553, i16 5099, i16 -19669, i16 13090, i16 -17454, i16 28841, i16 -30457, i16 -22733, i16 -18899, i16 8764, i16 -28139, i16 8393, i16 18823, i16 -86, i16 30800, i16 31397, i16 -28925, i16 -1959, i16 -32759, i16 5914, i16 -9627, i16 12759, i16 -14716, i16 -18224, i16 -15486, i16 -20439, i16 30554, i16 4382, i16 -13445, i16 -856, i16 -10643, i16 14892]], [256 x i8] zeroinitializer }, align 32
@next_key.rcon_table = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\01\02\04\08\10 @\80\1B666", [20 x i8] zeroinitializer }, align 32
@sbox_table = internal constant { [256 x i8], [64 x i8] } { [256 x i8] c"c|w{\F2ko\C50\01g+\FE\D7\ABv\CA\82\C9}\FAYG\F0\AD\D4\A2\AF\9C\A4r\C0\B7\FD\93&6?\F7\CC4\A5\E5\F1q\D81\15\04\C7#\C3\18\96\05\9A\07\12\80\E2\EB'\B2u\09\83,\1A\1BnZ\A0R;\D6\B3)\E3/\84S\D1\00\ED \FC\B1[j\CB\BE9JLX\CF\D0\EF\AA\FBCM3\85E\F9\02\7FP<\9F\A8Q\A3@\8F\92\9D8\F5\BC\B6\DA!\10\FF\F3\D2\CD\0C\13\EC_\97D\17\C4\A7~=d]\19s`\81O\DC\22*\90\88F\EE\B8\14\DE^\0B\DB\E02:\0AI\06$\\\C2\D3\ACb\91\95\E4y\E7\C87m\8D\D5N\A9lV\F4\EAez\AE\08\BAx%.\1C\A6\B4\C6\E8\DDt\1FK\BD\8B\8Ap>\B5fH\03\F6\0Ea5W\B9\86\C1\1D\9E\E1\F8\98\11i\D9\8E\94\9B\1E\87\E9\CEU(\DF\8C\A1\89\0D\BF\E6BhA\99-\0F\B0T\BB\16", [64 x i8] zeroinitializer }, align 32
@aes_decipher.message = internal global { [2048 x i8], [512 x i8] } zeroinitializer, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 5]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 5]
@__sancov_gen_cov_switch_values.2 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 10]
@___asan_gen_.3 = private unnamed_addr constant [18 x i8] c"bcrc32initialized\00", align 1
@___asan_gen_.4 = private unnamed_addr constant [12 x i8] c"crc32_table\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 102, i32 12 }
@___asan_gen_.7 = private unnamed_addr constant [6 x i8] c"Sbox1\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 386, i32 29 }
@___asan_gen_.10 = private unnamed_addr constant [11 x i8] c"rcon_table\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 765, i32 18 }
@___asan_gen_.13 = private unnamed_addr constant [11 x i8] c"sbox_table\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 700, i32 17 }
@___asan_gen_.16 = private unnamed_addr constant [8 x i8] c"message\00", align 1
@___asan_gen_.17 = private constant [46 x i8] c"../drivers/staging/rtl8712/rtl871x_security.c\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 1190, i32 12 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @bcrc32initialized, ptr @crc32_table, ptr @Sbox1, ptr @next_key.rcon_table, ptr @sbox_table, ptr @aes_decipher.message], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcrc32initialized to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crc32_table to i32), i32 1024, i32 1280, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @Sbox1 to i32), i32 1024, i32 1280, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @next_key.rcon_table to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbox_table to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aes_decipher.message to i32), i32 2048, i32 2560, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r8712_wep_encrypt(ptr nocapture noundef readonly %padapter, ptr nocapture noundef readonly %pxmitframe) local_unnamed_addr #0 align 64 {
entry:
  %mycontext = alloca %struct.arc4context, align 4
  %wepkey = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 264, ptr nonnull %mycontext) #9
  %0 = call ptr @memset(ptr %mycontext, i32 255, i32 264)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %wepkey) #9
  %1 = getelementptr inbounds [16 x i8], ptr %wepkey, i32 0, i32 3
  %buf_addr = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 5
  %2 = call ptr @memset(ptr %wepkey, i32 255, i32 16)
  %3 = ptrtoint ptr %buf_addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %buf_addr, align 4
  %cmp = icmp eq ptr %4, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %encrypt = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 17
  %5 = ptrtoint ptr %encrypt to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %encrypt, align 1
  %7 = zext i8 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i8 %6, label %if.end.cleanup_crit_edge [
    i8 1, label %if.end.if.then8_crit_edge
    i8 5, label %if.end.if.then8_crit_edge230
  ]

if.end.if.then8_crit_edge230:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then8

if.end.if.then8_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then8:                                         ; preds = %if.end.if.then8_crit_edge, %if.end.if.then8_crit_edge230
  %PrivacyKeyIndex = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 8, i32 2
  %8 = ptrtoint ptr %PrivacyKeyIndex to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %PrivacyKeyIndex, align 8
  %arrayidx = getelementptr %struct._adapter, ptr %padapter, i32 0, i32 8, i32 4, i32 %9
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %nr_frags = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 10
  %12 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %nr_frags, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp10215.not = icmp eq i8 %13, 0
  br i1 %cmp10215.not, label %if.then8.cleanup_crit_edge, label %for.body.lr.ph

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.then8
  %conv9214 = zext i8 %13 to i32
  %add.ptr = getelementptr i8, ptr %4, i32 32
  %hdrlen = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 9
  %iv_len = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 18
  %frag_len = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 5, i32 19
  %icv_len47 = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 19
  %add53 = add i32 %11, 3
  %state1.i143 = getelementptr inbounds %struct.arc4context, ptr %mycontext, i32 0, i32 2
  %y.i144 = getelementptr inbounds %struct.arc4context, ptr %mycontext, i32 0, i32 1
  %last_txcmdsz = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 7
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %conv9218 = phi i32 [ %conv9214, %for.body.lr.ph ], [ %conv9, %for.inc.for.body_crit_edge ]
  %pframe.0217 = phi ptr [ %add.ptr, %for.body.lr.ph ], [ %pframe.1, %for.inc.for.body_crit_edge ]
  %curfragnum.0216 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %for.inc.for.body_crit_edge ]
  %14 = ptrtoint ptr %hdrlen to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %hdrlen, align 1
  %conv12 = zext i8 %15 to i32
  %add.ptr13 = getelementptr i8, ptr %pframe.0217, i32 %conv12
  %16 = call ptr @memcpy(ptr %wepkey, ptr %add.ptr13, i32 3)
  %17 = ptrtoint ptr %PrivacyKeyIndex to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %PrivacyKeyIndex, align 8
  %arrayidx17 = getelementptr %struct._adapter, ptr %padapter, i32 0, i32 8, i32 3, i32 %18
  %19 = call ptr @memcpy(ptr %1, ptr %arrayidx17, i32 %11)
  %20 = ptrtoint ptr %iv_len to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %iv_len, align 2
  %conv19 = zext i8 %21 to i32
  %add.ptr20 = getelementptr i8, ptr %pframe.0217, i32 %conv19
  %add.ptr23 = getelementptr i8, ptr %add.ptr20, i32 %conv12
  %add = add nuw nsw i32 %curfragnum.0216, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv9218)
  %cmp26 = icmp eq i32 %add, %conv9218
  br i1 %cmp26, label %if.then28, label %if.else

if.then28:                                        ; preds = %for.body
  %22 = ptrtoint ptr %last_txcmdsz to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %last_txcmdsz, align 2
  %conv29 = zext i16 %23 to i32
  %24 = add nuw nsw i32 %conv19, %conv12
  %25 = ptrtoint ptr %icv_len47 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %icv_len47, align 1
  %conv35 = zext i8 %26 to i32
  %27 = add nuw nsw i32 %24, %conv35
  %sub36 = sub nsw i32 %conv29, %27
  %call = tail call fastcc i32 @getcrc32(ptr noundef %add.ptr23, i32 noundef %sub36)
  %28 = tail call i32 @llvm.bswap.i32(i32 %call)
  %crc.sroa.0.0.extract.shift = lshr i32 %28, 24
  %crc.sroa.0.0.extract.trunc = trunc i32 %crc.sroa.0.0.extract.shift to i8
  %crc.sroa.7.0.extract.shift = lshr i32 %28, 16
  %crc.sroa.7.0.extract.trunc = trunc i32 %crc.sroa.7.0.extract.shift to i8
  %crc.sroa.10.0.extract.shift = lshr i32 %28, 8
  %crc.sroa.10.0.extract.trunc = trunc i32 %crc.sroa.10.0.extract.shift to i8
  %crc.sroa.13.0.extract.trunc = trunc i32 %28 to i8
  %29 = ptrtoint ptr %mycontext to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %mycontext, align 4
  %30 = ptrtoint ptr %y.i144 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %y.i144, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then28
  %counter.040.i = phi i32 [ 0, %if.then28 ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %conv.i = trunc i32 %counter.040.i to i8
  %arrayidx.i = getelementptr i8, ptr %state1.i143, i32 %counter.040.i
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv.i, ptr %arrayidx.i, align 1
  %inc.i = add nuw nsw i32 %counter.040.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 256
  br i1 %exitcond.not.i, label %for.body.i.for.body5.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body.i.for.body5.i_crit_edge:                 ; preds = %for.body.i
  br label %for.body5.i

for.body5.i:                                      ; preds = %for.body5.i.for.body5.i_crit_edge, %for.body.i.for.body5.i_crit_edge
  %counter.143.i = phi i32 [ %inc21.i, %for.body5.i.for.body5.i_crit_edge ], [ 0, %for.body.i.for.body5.i_crit_edge ]
  %stateindex.042.i = phi i32 [ %and.i, %for.body5.i.for.body5.i_crit_edge ], [ 0, %for.body.i.for.body5.i_crit_edge ]
  %keyindex.041.i = phi i32 [ %spec.store.select.i, %for.body5.i.for.body5.i_crit_edge ], [ 0, %for.body.i.for.body5.i_crit_edge ]
  %arrayidx6.i = getelementptr i8, ptr %state1.i143, i32 %counter.143.i
  %32 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx6.i, align 1
  %conv7.i = zext i8 %33 to i32
  %arrayidx8.i = getelementptr i8, ptr %wepkey, i32 %keyindex.041.i
  %34 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx8.i, align 1
  %conv9.i = zext i8 %35 to i32
  %add.i = add nuw nsw i32 %stateindex.042.i, %conv7.i
  %add10.i = add nuw nsw i32 %add.i, %conv9.i
  %and.i = and i32 %add10.i, 255
  %arrayidx11.i = getelementptr i8, ptr %state1.i143, i32 %and.i
  %36 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx11.i, align 1
  store i8 %33, ptr %arrayidx11.i, align 1
  store i8 %37, ptr %arrayidx6.i, align 1
  %inc17.i = add i32 %keyindex.041.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc17.i, i32 %add53)
  %cmp18.not.i = icmp ult i32 %inc17.i, %add53
  %spec.store.select.i = select i1 %cmp18.not.i, i32 %inc17.i, i32 0
  %inc21.i = add nuw nsw i32 %counter.143.i, 1
  %exitcond44.not.i = icmp eq i32 %inc21.i, 256
  br i1 %exitcond44.not.i, label %arcfour_init.exit, label %for.body5.i.for.body5.i_crit_edge

for.body5.i.for.body5.i_crit_edge:                ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body5.i

arcfour_init.exit:                                ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %conv29)
  %cmp8.not.i = icmp eq i32 %27, %conv29
  br i1 %cmp8.not.i, label %arcfour_init.exit.arcfour_encrypt.exit_crit_edge, label %arcfour_init.exit.for.body.i120_crit_edge

arcfour_init.exit.for.body.i120_crit_edge:        ; preds = %arcfour_init.exit
  br label %for.body.i120

arcfour_init.exit.arcfour_encrypt.exit_crit_edge: ; preds = %arcfour_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %arcfour_encrypt.exit

for.body.i120:                                    ; preds = %for.body.i120.for.body.i120_crit_edge, %arcfour_init.exit.for.body.i120_crit_edge
  %i.09.i = phi i32 [ %inc.i118, %for.body.i120.for.body.i120_crit_edge ], [ 0, %arcfour_init.exit.for.body.i120_crit_edge ]
  %arrayidx.i117 = getelementptr i8, ptr %add.ptr23, i32 %i.09.i
  %38 = ptrtoint ptr %arrayidx.i117 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx.i117, align 1
  %40 = ptrtoint ptr %mycontext to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %mycontext, align 4
  %add.i.i = add i32 %41, 1
  %and.i.i = and i32 %add.i.i, 255
  %arrayidx.i.i = getelementptr i8, ptr %state1.i143, i32 %and.i.i
  %42 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %43 to i32
  %44 = ptrtoint ptr %y.i144 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %y.i144, align 4
  %add4.i.i = add i32 %45, %conv.i.i
  %and5.i.i = and i32 %add4.i.i, 255
  %arrayidx6.i.i = getelementptr i8, ptr %state1.i143, i32 %and5.i.i
  %46 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx6.i.i, align 1
  %conv7.i.i = zext i8 %47 to i32
  store i32 %and.i.i, ptr %mycontext, align 4
  store i32 %and5.i.i, ptr %y.i144, align 4
  store i8 %43, ptr %arrayidx6.i.i, align 1
  store i8 %47, ptr %arrayidx.i.i, align 1
  %add14.i.i = add nuw nsw i32 %conv7.i.i, %conv.i.i
  %and15.i.i = and i32 %add14.i.i, 255
  %arrayidx16.i.i = getelementptr i8, ptr %state1.i143, i32 %and15.i.i
  %48 = ptrtoint ptr %arrayidx16.i.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx16.i.i, align 1
  %conv3.i = xor i8 %49, %39
  store i8 %conv3.i, ptr %arrayidx.i117, align 1
  %inc.i118 = add nuw i32 %i.09.i, 1
  %exitcond.not.i119 = icmp eq i32 %inc.i118, %sub36
  br i1 %exitcond.not.i119, label %for.body.i120.arcfour_encrypt.exit_crit_edge, label %for.body.i120.for.body.i120_crit_edge

for.body.i120.for.body.i120_crit_edge:            ; preds = %for.body.i120
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i120

for.body.i120.arcfour_encrypt.exit_crit_edge:     ; preds = %for.body.i120
  call void @__sanitizer_cov_trace_pc() #11
  br label %arcfour_encrypt.exit

arcfour_encrypt.exit:                             ; preds = %for.body.i120.arcfour_encrypt.exit_crit_edge, %arcfour_init.exit.arcfour_encrypt.exit_crit_edge
  %add.ptr39 = getelementptr i8, ptr %add.ptr23, i32 %sub36
  %50 = ptrtoint ptr %mycontext to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %mycontext, align 4
  %add.i.i126 = add i32 %51, 1
  %and.i.i127 = and i32 %add.i.i126, 255
  %arrayidx.i.i128 = getelementptr i8, ptr %state1.i143, i32 %and.i.i127
  %52 = ptrtoint ptr %arrayidx.i.i128 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx.i.i128, align 1
  %conv.i.i129 = zext i8 %53 to i32
  %54 = ptrtoint ptr %y.i144 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %y.i144, align 4
  %add4.i.i130 = add i32 %55, %conv.i.i129
  %and5.i.i131 = and i32 %add4.i.i130, 255
  %arrayidx6.i.i132 = getelementptr i8, ptr %state1.i143, i32 %and5.i.i131
  %56 = ptrtoint ptr %arrayidx6.i.i132 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx6.i.i132, align 1
  %conv7.i.i133 = zext i8 %57 to i32
  store i32 %and.i.i127, ptr %mycontext, align 4
  store i32 %and5.i.i131, ptr %y.i144, align 4
  store i8 %53, ptr %arrayidx6.i.i132, align 1
  store i8 %57, ptr %arrayidx.i.i128, align 1
  %add14.i.i134 = add nuw nsw i32 %conv7.i.i133, %conv.i.i129
  %and15.i.i135 = and i32 %add14.i.i134, 255
  %arrayidx16.i.i136 = getelementptr i8, ptr %state1.i143, i32 %and15.i.i135
  %58 = ptrtoint ptr %arrayidx16.i.i136 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx16.i.i136, align 1
  %conv3.i137 = xor i8 %59, %crc.sroa.0.0.extract.trunc
  %60 = ptrtoint ptr %add.ptr39 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %conv3.i137, ptr %add.ptr39, align 1
  %61 = load i32, ptr %mycontext, align 4
  %add.i.i126.1 = add i32 %61, 1
  %and.i.i127.1 = and i32 %add.i.i126.1, 255
  %arrayidx.i.i128.1 = getelementptr i8, ptr %state1.i143, i32 %and.i.i127.1
  %62 = ptrtoint ptr %arrayidx.i.i128.1 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx.i.i128.1, align 1
  %conv.i.i129.1 = zext i8 %63 to i32
  %64 = load i32, ptr %y.i144, align 4
  %add4.i.i130.1 = add i32 %64, %conv.i.i129.1
  %and5.i.i131.1 = and i32 %add4.i.i130.1, 255
  %arrayidx6.i.i132.1 = getelementptr i8, ptr %state1.i143, i32 %and5.i.i131.1
  %65 = ptrtoint ptr %arrayidx6.i.i132.1 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx6.i.i132.1, align 1
  %conv7.i.i133.1 = zext i8 %66 to i32
  store i32 %and.i.i127.1, ptr %mycontext, align 4
  store i32 %and5.i.i131.1, ptr %y.i144, align 4
  store i8 %63, ptr %arrayidx6.i.i132.1, align 1
  store i8 %66, ptr %arrayidx.i.i128.1, align 1
  %add14.i.i134.1 = add nuw nsw i32 %conv7.i.i133.1, %conv.i.i129.1
  %and15.i.i135.1 = and i32 %add14.i.i134.1, 255
  %arrayidx16.i.i136.1 = getelementptr i8, ptr %state1.i143, i32 %and15.i.i135.1
  %67 = ptrtoint ptr %arrayidx16.i.i136.1 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx16.i.i136.1, align 1
  %conv3.i137.1 = xor i8 %68, %crc.sroa.7.0.extract.trunc
  %arrayidx4.i138.1 = getelementptr i8, ptr %add.ptr39, i32 1
  %69 = ptrtoint ptr %arrayidx4.i138.1 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %conv3.i137.1, ptr %arrayidx4.i138.1, align 1
  %70 = load i32, ptr %mycontext, align 4
  %add.i.i126.2 = add i32 %70, 1
  %and.i.i127.2 = and i32 %add.i.i126.2, 255
  %arrayidx.i.i128.2 = getelementptr i8, ptr %state1.i143, i32 %and.i.i127.2
  %71 = ptrtoint ptr %arrayidx.i.i128.2 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx.i.i128.2, align 1
  %conv.i.i129.2 = zext i8 %72 to i32
  %73 = load i32, ptr %y.i144, align 4
  %add4.i.i130.2 = add i32 %73, %conv.i.i129.2
  %and5.i.i131.2 = and i32 %add4.i.i130.2, 255
  %arrayidx6.i.i132.2 = getelementptr i8, ptr %state1.i143, i32 %and5.i.i131.2
  %74 = ptrtoint ptr %arrayidx6.i.i132.2 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx6.i.i132.2, align 1
  %conv7.i.i133.2 = zext i8 %75 to i32
  store i32 %and.i.i127.2, ptr %mycontext, align 4
  store i32 %and5.i.i131.2, ptr %y.i144, align 4
  store i8 %72, ptr %arrayidx6.i.i132.2, align 1
  store i8 %75, ptr %arrayidx.i.i128.2, align 1
  %add14.i.i134.2 = add nuw nsw i32 %conv7.i.i133.2, %conv.i.i129.2
  %and15.i.i135.2 = and i32 %add14.i.i134.2, 255
  %arrayidx16.i.i136.2 = getelementptr i8, ptr %state1.i143, i32 %and15.i.i135.2
  %76 = ptrtoint ptr %arrayidx16.i.i136.2 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx16.i.i136.2, align 1
  %conv3.i137.2 = xor i8 %77, %crc.sroa.10.0.extract.trunc
  %arrayidx4.i138.2 = getelementptr i8, ptr %add.ptr39, i32 2
  %78 = ptrtoint ptr %arrayidx4.i138.2 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %conv3.i137.2, ptr %arrayidx4.i138.2, align 1
  %79 = load i32, ptr %mycontext, align 4
  %add.i.i126.3 = add i32 %79, 1
  %and.i.i127.3 = and i32 %add.i.i126.3, 255
  %arrayidx.i.i128.3 = getelementptr i8, ptr %state1.i143, i32 %and.i.i127.3
  %80 = ptrtoint ptr %arrayidx.i.i128.3 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx.i.i128.3, align 1
  %conv.i.i129.3 = zext i8 %81 to i32
  %82 = load i32, ptr %y.i144, align 4
  %add4.i.i130.3 = add i32 %82, %conv.i.i129.3
  %and5.i.i131.3 = and i32 %add4.i.i130.3, 255
  %arrayidx6.i.i132.3 = getelementptr i8, ptr %state1.i143, i32 %and5.i.i131.3
  %83 = ptrtoint ptr %arrayidx6.i.i132.3 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %arrayidx6.i.i132.3, align 1
  %conv7.i.i133.3 = zext i8 %84 to i32
  store i32 %and.i.i127.3, ptr %mycontext, align 4
  store i32 %and5.i.i131.3, ptr %y.i144, align 4
  store i8 %81, ptr %arrayidx6.i.i132.3, align 1
  store i8 %84, ptr %arrayidx.i.i128.3, align 1
  %add14.i.i134.3 = add nuw nsw i32 %conv7.i.i133.3, %conv.i.i129.3
  %and15.i.i135.3 = and i32 %add14.i.i134.3, 255
  %arrayidx16.i.i136.3 = getelementptr i8, ptr %state1.i143, i32 %and15.i.i135.3
  %85 = ptrtoint ptr %arrayidx16.i.i136.3 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %arrayidx16.i.i136.3, align 1
  %conv3.i137.3 = xor i8 %86, %crc.sroa.13.0.extract.trunc
  %arrayidx4.i138.3 = getelementptr i8, ptr %add.ptr39, i32 3
  %87 = ptrtoint ptr %arrayidx4.i138.3 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %conv3.i137.3, ptr %arrayidx4.i138.3, align 1
  br label %for.inc

if.else:                                          ; preds = %for.body
  %88 = ptrtoint ptr %frag_len to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %frag_len, align 4
  %90 = add nuw nsw i32 %conv19, %conv12
  %91 = ptrtoint ptr %icv_len47 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %icv_len47, align 1
  %conv48 = zext i8 %92 to i32
  %93 = add nuw nsw i32 %90, %conv48
  %sub49 = sub i32 %89, %93
  %call50 = tail call fastcc i32 @getcrc32(ptr noundef %add.ptr23, i32 noundef %sub49)
  %94 = tail call i32 @llvm.bswap.i32(i32 %call50)
  %crc.sroa.0.0.extract.shift220 = lshr i32 %94, 24
  %crc.sroa.0.0.extract.trunc221 = trunc i32 %crc.sroa.0.0.extract.shift220 to i8
  %crc.sroa.7.0.extract.shift222 = lshr i32 %94, 16
  %crc.sroa.7.0.extract.trunc223 = trunc i32 %crc.sroa.7.0.extract.shift222 to i8
  %crc.sroa.10.0.extract.shift225 = lshr i32 %94, 8
  %crc.sroa.10.0.extract.trunc226 = trunc i32 %crc.sroa.10.0.extract.shift225 to i8
  %crc.sroa.13.0.extract.trunc228 = trunc i32 %94 to i8
  %95 = ptrtoint ptr %mycontext to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 0, ptr %mycontext, align 4
  %96 = ptrtoint ptr %y.i144 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 0, ptr %y.i144, align 4
  br label %for.body.i150

for.body.i150:                                    ; preds = %for.body.i150.for.body.i150_crit_edge, %if.else
  %counter.040.i145 = phi i32 [ 0, %if.else ], [ %inc.i148, %for.body.i150.for.body.i150_crit_edge ]
  %conv.i146 = trunc i32 %counter.040.i145 to i8
  %arrayidx.i147 = getelementptr i8, ptr %state1.i143, i32 %counter.040.i145
  %97 = ptrtoint ptr %arrayidx.i147 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %conv.i146, ptr %arrayidx.i147, align 1
  %inc.i148 = add nuw nsw i32 %counter.040.i145, 1
  %exitcond.not.i149 = icmp eq i32 %inc.i148, 256
  br i1 %exitcond.not.i149, label %for.body.i150.for.body5.i167_crit_edge, label %for.body.i150.for.body.i150_crit_edge

for.body.i150.for.body.i150_crit_edge:            ; preds = %for.body.i150
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i150

for.body.i150.for.body5.i167_crit_edge:           ; preds = %for.body.i150
  br label %for.body5.i167

for.body5.i167:                                   ; preds = %for.body5.i167.for.body5.i167_crit_edge, %for.body.i150.for.body5.i167_crit_edge
  %counter.143.i151 = phi i32 [ %inc21.i165, %for.body5.i167.for.body5.i167_crit_edge ], [ 0, %for.body.i150.for.body5.i167_crit_edge ]
  %stateindex.042.i152 = phi i32 [ %and.i160, %for.body5.i167.for.body5.i167_crit_edge ], [ 0, %for.body.i150.for.body5.i167_crit_edge ]
  %keyindex.041.i153 = phi i32 [ %spec.store.select.i164, %for.body5.i167.for.body5.i167_crit_edge ], [ 0, %for.body.i150.for.body5.i167_crit_edge ]
  %arrayidx6.i154 = getelementptr i8, ptr %state1.i143, i32 %counter.143.i151
  %98 = ptrtoint ptr %arrayidx6.i154 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %arrayidx6.i154, align 1
  %conv7.i155 = zext i8 %99 to i32
  %arrayidx8.i156 = getelementptr i8, ptr %wepkey, i32 %keyindex.041.i153
  %100 = ptrtoint ptr %arrayidx8.i156 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %arrayidx8.i156, align 1
  %conv9.i157 = zext i8 %101 to i32
  %add.i158 = add nuw nsw i32 %stateindex.042.i152, %conv7.i155
  %add10.i159 = add nuw nsw i32 %add.i158, %conv9.i157
  %and.i160 = and i32 %add10.i159, 255
  %arrayidx11.i161 = getelementptr i8, ptr %state1.i143, i32 %and.i160
  %102 = ptrtoint ptr %arrayidx11.i161 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %arrayidx11.i161, align 1
  store i8 %99, ptr %arrayidx11.i161, align 1
  store i8 %103, ptr %arrayidx6.i154, align 1
  %inc17.i162 = add i32 %keyindex.041.i153, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc17.i162, i32 %add53)
  %cmp18.not.i163 = icmp ult i32 %inc17.i162, %add53
  %spec.store.select.i164 = select i1 %cmp18.not.i163, i32 %inc17.i162, i32 0
  %inc21.i165 = add nuw nsw i32 %counter.143.i151, 1
  %exitcond44.not.i166 = icmp eq i32 %inc21.i165, 256
  br i1 %exitcond44.not.i166, label %arcfour_init.exit168, label %for.body5.i167.for.body5.i167_crit_edge

for.body5.i167.for.body5.i167_crit_edge:          ; preds = %for.body5.i167
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body5.i167

arcfour_init.exit168:                             ; preds = %for.body5.i167
  call void @__sanitizer_cov_trace_cmp4(i32 %89, i32 %93)
  %cmp8.not.i169 = icmp eq i32 %89, %93
  br i1 %cmp8.not.i169, label %arcfour_init.exit168.arcfour_encrypt.exit191_crit_edge, label %arcfour_init.exit168.for.body.i190_crit_edge

arcfour_init.exit168.for.body.i190_crit_edge:     ; preds = %arcfour_init.exit168
  br label %for.body.i190

arcfour_init.exit168.arcfour_encrypt.exit191_crit_edge: ; preds = %arcfour_init.exit168
  call void @__sanitizer_cov_trace_pc() #11
  br label %arcfour_encrypt.exit191

for.body.i190:                                    ; preds = %for.body.i190.for.body.i190_crit_edge, %arcfour_init.exit168.for.body.i190_crit_edge
  %i.09.i173 = phi i32 [ %inc.i188, %for.body.i190.for.body.i190_crit_edge ], [ 0, %arcfour_init.exit168.for.body.i190_crit_edge ]
  %arrayidx.i174 = getelementptr i8, ptr %add.ptr23, i32 %i.09.i173
  %104 = ptrtoint ptr %arrayidx.i174 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %arrayidx.i174, align 1
  %106 = ptrtoint ptr %mycontext to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %mycontext, align 4
  %add.i.i175 = add i32 %107, 1
  %and.i.i176 = and i32 %add.i.i175, 255
  %arrayidx.i.i177 = getelementptr i8, ptr %state1.i143, i32 %and.i.i176
  %108 = ptrtoint ptr %arrayidx.i.i177 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %arrayidx.i.i177, align 1
  %conv.i.i178 = zext i8 %109 to i32
  %110 = ptrtoint ptr %y.i144 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %y.i144, align 4
  %add4.i.i179 = add i32 %111, %conv.i.i178
  %and5.i.i180 = and i32 %add4.i.i179, 255
  %arrayidx6.i.i181 = getelementptr i8, ptr %state1.i143, i32 %and5.i.i180
  %112 = ptrtoint ptr %arrayidx6.i.i181 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %arrayidx6.i.i181, align 1
  %conv7.i.i182 = zext i8 %113 to i32
  store i32 %and.i.i176, ptr %mycontext, align 4
  store i32 %and5.i.i180, ptr %y.i144, align 4
  store i8 %109, ptr %arrayidx6.i.i181, align 1
  store i8 %113, ptr %arrayidx.i.i177, align 1
  %add14.i.i183 = add nuw nsw i32 %conv7.i.i182, %conv.i.i178
  %and15.i.i184 = and i32 %add14.i.i183, 255
  %arrayidx16.i.i185 = getelementptr i8, ptr %state1.i143, i32 %and15.i.i184
  %114 = ptrtoint ptr %arrayidx16.i.i185 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %arrayidx16.i.i185, align 1
  %conv3.i186 = xor i8 %115, %105
  store i8 %conv3.i186, ptr %arrayidx.i174, align 1
  %inc.i188 = add nuw i32 %i.09.i173, 1
  %exitcond.not.i189 = icmp eq i32 %inc.i188, %sub49
  br i1 %exitcond.not.i189, label %for.body.i190.arcfour_encrypt.exit191_crit_edge, label %for.body.i190.for.body.i190_crit_edge

for.body.i190.for.body.i190_crit_edge:            ; preds = %for.body.i190
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i190

for.body.i190.arcfour_encrypt.exit191_crit_edge:  ; preds = %for.body.i190
  call void @__sanitizer_cov_trace_pc() #11
  br label %arcfour_encrypt.exit191

arcfour_encrypt.exit191:                          ; preds = %for.body.i190.arcfour_encrypt.exit191_crit_edge, %arcfour_init.exit168.arcfour_encrypt.exit191_crit_edge
  %add.ptr54 = getelementptr i8, ptr %add.ptr23, i32 %sub49
  %116 = ptrtoint ptr %mycontext to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %mycontext, align 4
  %add.i.i197 = add i32 %117, 1
  %and.i.i198 = and i32 %add.i.i197, 255
  %arrayidx.i.i199 = getelementptr i8, ptr %state1.i143, i32 %and.i.i198
  %118 = ptrtoint ptr %arrayidx.i.i199 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %arrayidx.i.i199, align 1
  %conv.i.i200 = zext i8 %119 to i32
  %120 = ptrtoint ptr %y.i144 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %y.i144, align 4
  %add4.i.i201 = add i32 %121, %conv.i.i200
  %and5.i.i202 = and i32 %add4.i.i201, 255
  %arrayidx6.i.i203 = getelementptr i8, ptr %state1.i143, i32 %and5.i.i202
  %122 = ptrtoint ptr %arrayidx6.i.i203 to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %arrayidx6.i.i203, align 1
  %conv7.i.i204 = zext i8 %123 to i32
  store i32 %and.i.i198, ptr %mycontext, align 4
  store i32 %and5.i.i202, ptr %y.i144, align 4
  store i8 %119, ptr %arrayidx6.i.i203, align 1
  store i8 %123, ptr %arrayidx.i.i199, align 1
  %add14.i.i205 = add nuw nsw i32 %conv7.i.i204, %conv.i.i200
  %and15.i.i206 = and i32 %add14.i.i205, 255
  %arrayidx16.i.i207 = getelementptr i8, ptr %state1.i143, i32 %and15.i.i206
  %124 = ptrtoint ptr %arrayidx16.i.i207 to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %arrayidx16.i.i207, align 1
  %conv3.i208 = xor i8 %125, %crc.sroa.0.0.extract.trunc221
  %126 = ptrtoint ptr %add.ptr54 to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 %conv3.i208, ptr %add.ptr54, align 1
  %127 = load i32, ptr %mycontext, align 4
  %add.i.i197.1 = add i32 %127, 1
  %and.i.i198.1 = and i32 %add.i.i197.1, 255
  %arrayidx.i.i199.1 = getelementptr i8, ptr %state1.i143, i32 %and.i.i198.1
  %128 = ptrtoint ptr %arrayidx.i.i199.1 to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %arrayidx.i.i199.1, align 1
  %conv.i.i200.1 = zext i8 %129 to i32
  %130 = load i32, ptr %y.i144, align 4
  %add4.i.i201.1 = add i32 %130, %conv.i.i200.1
  %and5.i.i202.1 = and i32 %add4.i.i201.1, 255
  %arrayidx6.i.i203.1 = getelementptr i8, ptr %state1.i143, i32 %and5.i.i202.1
  %131 = ptrtoint ptr %arrayidx6.i.i203.1 to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %arrayidx6.i.i203.1, align 1
  %conv7.i.i204.1 = zext i8 %132 to i32
  store i32 %and.i.i198.1, ptr %mycontext, align 4
  store i32 %and5.i.i202.1, ptr %y.i144, align 4
  store i8 %129, ptr %arrayidx6.i.i203.1, align 1
  store i8 %132, ptr %arrayidx.i.i199.1, align 1
  %add14.i.i205.1 = add nuw nsw i32 %conv7.i.i204.1, %conv.i.i200.1
  %and15.i.i206.1 = and i32 %add14.i.i205.1, 255
  %arrayidx16.i.i207.1 = getelementptr i8, ptr %state1.i143, i32 %and15.i.i206.1
  %133 = ptrtoint ptr %arrayidx16.i.i207.1 to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %arrayidx16.i.i207.1, align 1
  %conv3.i208.1 = xor i8 %134, %crc.sroa.7.0.extract.trunc223
  %arrayidx4.i209.1 = getelementptr i8, ptr %add.ptr54, i32 1
  %135 = ptrtoint ptr %arrayidx4.i209.1 to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 %conv3.i208.1, ptr %arrayidx4.i209.1, align 1
  %136 = load i32, ptr %mycontext, align 4
  %add.i.i197.2 = add i32 %136, 1
  %and.i.i198.2 = and i32 %add.i.i197.2, 255
  %arrayidx.i.i199.2 = getelementptr i8, ptr %state1.i143, i32 %and.i.i198.2
  %137 = ptrtoint ptr %arrayidx.i.i199.2 to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %arrayidx.i.i199.2, align 1
  %conv.i.i200.2 = zext i8 %138 to i32
  %139 = load i32, ptr %y.i144, align 4
  %add4.i.i201.2 = add i32 %139, %conv.i.i200.2
  %and5.i.i202.2 = and i32 %add4.i.i201.2, 255
  %arrayidx6.i.i203.2 = getelementptr i8, ptr %state1.i143, i32 %and5.i.i202.2
  %140 = ptrtoint ptr %arrayidx6.i.i203.2 to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %arrayidx6.i.i203.2, align 1
  %conv7.i.i204.2 = zext i8 %141 to i32
  store i32 %and.i.i198.2, ptr %mycontext, align 4
  store i32 %and5.i.i202.2, ptr %y.i144, align 4
  store i8 %138, ptr %arrayidx6.i.i203.2, align 1
  store i8 %141, ptr %arrayidx.i.i199.2, align 1
  %add14.i.i205.2 = add nuw nsw i32 %conv7.i.i204.2, %conv.i.i200.2
  %and15.i.i206.2 = and i32 %add14.i.i205.2, 255
  %arrayidx16.i.i207.2 = getelementptr i8, ptr %state1.i143, i32 %and15.i.i206.2
  %142 = ptrtoint ptr %arrayidx16.i.i207.2 to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %arrayidx16.i.i207.2, align 1
  %conv3.i208.2 = xor i8 %143, %crc.sroa.10.0.extract.trunc226
  %arrayidx4.i209.2 = getelementptr i8, ptr %add.ptr54, i32 2
  %144 = ptrtoint ptr %arrayidx4.i209.2 to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 %conv3.i208.2, ptr %arrayidx4.i209.2, align 1
  %145 = load i32, ptr %mycontext, align 4
  %add.i.i197.3 = add i32 %145, 1
  %and.i.i198.3 = and i32 %add.i.i197.3, 255
  %arrayidx.i.i199.3 = getelementptr i8, ptr %state1.i143, i32 %and.i.i198.3
  %146 = ptrtoint ptr %arrayidx.i.i199.3 to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %arrayidx.i.i199.3, align 1
  %conv.i.i200.3 = zext i8 %147 to i32
  %148 = load i32, ptr %y.i144, align 4
  %add4.i.i201.3 = add i32 %148, %conv.i.i200.3
  %and5.i.i202.3 = and i32 %add4.i.i201.3, 255
  %arrayidx6.i.i203.3 = getelementptr i8, ptr %state1.i143, i32 %and5.i.i202.3
  %149 = ptrtoint ptr %arrayidx6.i.i203.3 to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %arrayidx6.i.i203.3, align 1
  %conv7.i.i204.3 = zext i8 %150 to i32
  store i32 %and.i.i198.3, ptr %mycontext, align 4
  store i32 %and5.i.i202.3, ptr %y.i144, align 4
  store i8 %147, ptr %arrayidx6.i.i203.3, align 1
  store i8 %150, ptr %arrayidx.i.i199.3, align 1
  %add14.i.i205.3 = add nuw nsw i32 %conv7.i.i204.3, %conv.i.i200.3
  %and15.i.i206.3 = and i32 %add14.i.i205.3, 255
  %arrayidx16.i.i207.3 = getelementptr i8, ptr %state1.i143, i32 %and15.i.i206.3
  %151 = ptrtoint ptr %arrayidx16.i.i207.3 to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %arrayidx16.i.i207.3, align 1
  %conv3.i208.3 = xor i8 %152, %crc.sroa.13.0.extract.trunc228
  %arrayidx4.i209.3 = getelementptr i8, ptr %add.ptr54, i32 3
  %153 = ptrtoint ptr %arrayidx4.i209.3 to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 %conv3.i208.3, ptr %arrayidx4.i209.3, align 1
  %154 = ptrtoint ptr %frag_len to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %frag_len, align 4
  %add.ptr57 = getelementptr i8, ptr %pframe.0217, i32 %155
  %156 = ptrtoint ptr %add.ptr57 to i32
  %and = and i32 %156, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp58.not = icmp eq i32 %and, 0
  %add60115 = select i1 %cmp58.not, i32 0, i32 4
  %shr116 = add i32 %add60115, %156
  %shl = and i32 %shr116, -4
  %157 = inttoptr i32 %shl to ptr
  br label %for.inc

for.inc:                                          ; preds = %arcfour_encrypt.exit191, %arcfour_encrypt.exit
  %pframe.1 = phi ptr [ %157, %arcfour_encrypt.exit191 ], [ %pframe.0217, %arcfour_encrypt.exit ]
  %158 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %nr_frags, align 2
  %conv9 = zext i8 %159 to i32
  %cmp10 = icmp ult i32 %add, %conv9
  br i1 %cmp10, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %wepkey) #9
  call void @llvm.lifetime.end.p0(i64 264, ptr nonnull %mycontext) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @getcrc32(ptr nocapture noundef readonly %buf, i32 noundef %len) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %.b = load i1, ptr @bcrc32initialized, align 4
  br i1 %.b, label %entry.if.end_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.094.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %conv.i = trunc i32 %i.094.i to i8
  %rev.i.i = tail call i8 @llvm.bitreverse.i8(i8 %conv.i) #9
  %c.sroa.0.0.insert.ext.i = zext i8 %rev.i.i to i32
  %shl7.i = shl i32 %c.sroa.0.0.insert.ext.i, 25
  %xor.i = xor i32 %shl7.i, 79764919
  %c.sroa.0.0.insert.shift.mask.i = and i32 %c.sroa.0.0.insert.ext.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %c.sroa.0.0.insert.shift.mask.i)
  %tobool.not88.not.i = icmp eq i32 %c.sroa.0.0.insert.shift.mask.i, 0
  %cond.i = select i1 %tobool.not88.not.i, i32 %shl7.i, i32 %xor.i
  %shl7.1.i = shl i32 %cond.i, 1
  %xor.1.i = xor i32 %shl7.1.i, 79764919
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i)
  %tobool.not88.1.i = icmp slt i32 %cond.i, 0
  %cond.1.i = select i1 %tobool.not88.1.i, i32 %xor.1.i, i32 %shl7.1.i
  %shl7.2.i = shl i32 %cond.1.i, 1
  %xor.2.i = xor i32 %shl7.2.i, 79764919
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.1.i)
  %tobool.not88.2.i = icmp slt i32 %cond.1.i, 0
  %cond.2.i = select i1 %tobool.not88.2.i, i32 %xor.2.i, i32 %shl7.2.i
  %shl7.3.i = shl i32 %cond.2.i, 1
  %xor.3.i = xor i32 %shl7.3.i, 79764919
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.2.i)
  %tobool.not88.3.i = icmp slt i32 %cond.2.i, 0
  %cond.3.i = select i1 %tobool.not88.3.i, i32 %xor.3.i, i32 %shl7.3.i
  %shl7.4.i = shl i32 %cond.3.i, 1
  %xor.4.i = xor i32 %shl7.4.i, 79764919
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.3.i)
  %tobool.not88.4.i = icmp slt i32 %cond.3.i, 0
  %cond.4.i = select i1 %tobool.not88.4.i, i32 %xor.4.i, i32 %shl7.4.i
  %shl7.5.i = shl i32 %cond.4.i, 1
  %xor.5.i = xor i32 %shl7.5.i, 79764919
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.4.i)
  %tobool.not88.5.i = icmp slt i32 %cond.4.i, 0
  %cond.5.i = select i1 %tobool.not88.5.i, i32 %xor.5.i, i32 %shl7.5.i
  %shl7.6.i = shl i32 %cond.5.i, 1
  %xor.6.i = xor i32 %shl7.6.i, 79764919
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.5.i)
  %tobool.not88.6.i = icmp slt i32 %cond.5.i, 0
  %cond.6.i = select i1 %tobool.not88.6.i, i32 %xor.6.i, i32 %shl7.6.i
  %shl7.7.i = shl i32 %cond.6.i, 1
  %xor.7.i = xor i32 %shl7.7.i, 79764919
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.6.i)
  %tobool.not88.7.i = icmp slt i32 %cond.6.i, 0
  %cond.7.i = select i1 %tobool.not88.7.i, i32 %xor.7.i, i32 %shl7.7.i
  %c.sroa.0.0.extract.shift49.7.i = lshr i32 %cond.7.i, 24
  %c.sroa.9.0.extract.shift61.7.i = lshr i32 %cond.7.i, 16
  %c.sroa.10.0.extract.shift73.7.i = lshr i32 %cond.7.i, 8
  %c.sroa.0.0.extract.trunc50.le.i = trunc i32 %c.sroa.0.0.extract.shift49.7.i to i8
  %c.sroa.9.0.extract.trunc62.le.i = trunc i32 %c.sroa.9.0.extract.shift61.7.i to i8
  %c.sroa.10.0.extract.trunc74.le.i = trunc i32 %c.sroa.10.0.extract.shift73.7.i to i8
  %c.sroa.11.0.extract.trunc83.le.i = trunc i32 %cond.7.i to i8
  %arrayidx.i = getelementptr [256 x i32], ptr @crc32_table, i32 0, i32 %i.094.i
  %rev.i84.i = tail call i8 @llvm.bitreverse.i8(i8 %c.sroa.11.0.extract.trunc83.le.i) #9
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %rev.i84.i, ptr %arrayidx.i, align 4
  %rev.i85.i = tail call i8 @llvm.bitreverse.i8(i8 %c.sroa.10.0.extract.trunc74.le.i) #9
  %arrayidx14.i = getelementptr i8, ptr %arrayidx.i, i32 1
  %1 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %rev.i85.i, ptr %arrayidx14.i, align 1
  %rev.i86.i = tail call i8 @llvm.bitreverse.i8(i8 %c.sroa.9.0.extract.trunc62.le.i) #9
  %arrayidx17.i = getelementptr i8, ptr %arrayidx.i, i32 2
  %2 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %rev.i86.i, ptr %arrayidx17.i, align 2
  %rev.i87.i = tail call i8 @llvm.bitreverse.i8(i8 %c.sroa.0.0.extract.trunc50.le.i) #9
  %arrayidx20.i = getelementptr i8, ptr %arrayidx.i, i32 3
  %3 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %rev.i87.i, ptr %arrayidx20.i, align 1
  %inc.i = add nuw nsw i32 %i.094.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 256
  br i1 %exitcond.not.i, label %crc32_init.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

crc32_init.exit:                                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @bcrc32initialized, align 4
  br label %if.end

if.end:                                           ; preds = %crc32_init.exit, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp.not6 = icmp eq i32 %len, 0
  br i1 %cmp.not6, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %crc.09 = phi i32 [ %xor1, %for.body.for.body_crit_edge ], [ -1, %if.end.for.body_crit_edge ]
  %p.08 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %buf, %if.end.for.body_crit_edge ]
  %len.addr.07 = phi i32 [ %dec, %for.body.for.body_crit_edge ], [ %len, %if.end.for.body_crit_edge ]
  %4 = ptrtoint ptr %p.08 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %p.08, align 1
  %conv = zext i8 %5 to i32
  %crc.0.masked = and i32 %crc.09, 255
  %and = xor i32 %crc.0.masked, %conv
  %arrayidx = getelementptr [256 x i32], ptr @crc32_table, i32 0, i32 %and
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %shr = lshr i32 %crc.09, 8
  %xor1 = xor i32 %7, %shr
  %incdec.ptr = getelementptr i8, ptr %p.08, i32 1
  %dec = add i32 %len.addr.07, -1
  %cmp.not = icmp eq i32 %dec, 0
  br i1 %cmp.not, label %for.end.loopexit, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end.loopexit:                                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %phi.bo = xor i32 %xor1, -1
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %if.end.for.end_crit_edge
  %crc.0.lcssa = phi i32 [ 0, %if.end.for.end_crit_edge ], [ %phi.bo, %for.end.loopexit ]
  ret i32 %crc.0.lcssa
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r8712_wep_decrypt(ptr nocapture noundef readonly %padapter, ptr nocapture noundef readonly %precvframe) local_unnamed_addr #0 align 64 {
entry:
  %mycontext = alloca %struct.arc4context, align 4
  %wepkey = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 264, ptr nonnull %mycontext) #9
  %0 = getelementptr inbounds i8, ptr %mycontext, i32 8
  %1 = call ptr @memset(ptr %0, i32 255, i32 256)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %wepkey) #9
  %encrypt = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 5, i32 12
  %2 = getelementptr inbounds i8, ptr %wepkey, i32 3
  %3 = call ptr @memset(ptr %2, i32 255, i32 13)
  %4 = ptrtoint ptr %encrypt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %encrypt, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %5, label %entry.if.end_crit_edge [
    i32 1, label %entry.if.then_crit_edge
    i32 5, label %entry.if.then_crit_edge38
  ]

entry.if.then_crit_edge38:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge38
  %7 = getelementptr inbounds [16 x i8], ptr %wepkey, i32 0, i32 3
  %rx_data = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 8
  %8 = ptrtoint ptr %rx_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rx_data, align 4
  %hdrlen = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 5, i32 11
  %10 = ptrtoint ptr %hdrlen to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hdrlen, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 %11
  %arrayidx = getelementptr i8, ptr %add.ptr, i32 3
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx, align 1
  %14 = and i8 %13, 3
  %idxprom = zext i8 %14 to i32
  %arrayidx4 = getelementptr %struct._adapter, ptr %padapter, i32 0, i32 8, i32 4, i32 %idxprom
  %15 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx4, align 4
  %17 = call ptr @memcpy(ptr %wepkey, ptr %add.ptr, i32 3)
  %PrivacyKeyIndex = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 8, i32 2
  %18 = ptrtoint ptr %PrivacyKeyIndex to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %PrivacyKeyIndex, align 8
  %arrayidx7 = getelementptr %struct._adapter, ptr %padapter, i32 0, i32 8, i32 3, i32 %19
  %20 = call ptr @memcpy(ptr %7, ptr %arrayidx7, i32 %16)
  %len = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 6
  %21 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %len, align 4
  %iv_len = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 5, i32 13
  %23 = ptrtoint ptr %iv_len to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %iv_len, align 4
  %25 = add i32 %24, %11
  %add.ptr12 = getelementptr i8, ptr %9, i32 %24
  %add.ptr14 = getelementptr i8, ptr %add.ptr12, i32 %11
  %state1.i = getelementptr inbounds %struct.arc4context, ptr %mycontext, i32 0, i32 2
  %26 = ptrtoint ptr %mycontext to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %mycontext, align 4
  %y.i = getelementptr inbounds %struct.arc4context, ptr %mycontext, i32 0, i32 1
  %27 = ptrtoint ptr %y.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %y.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then
  %counter.040.i = phi i32 [ 0, %if.then ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %conv.i = trunc i32 %counter.040.i to i8
  %arrayidx.i = getelementptr i8, ptr %state1.i, i32 %counter.040.i
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv.i, ptr %arrayidx.i, align 1
  %inc.i = add nuw nsw i32 %counter.040.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 256
  br i1 %exitcond.not.i, label %for.body5.i.preheader, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body5.i.preheader:                            ; preds = %for.body.i
  %add = add i32 %16, 3
  br label %for.body5.i

for.body5.i:                                      ; preds = %for.body5.i.for.body5.i_crit_edge, %for.body5.i.preheader
  %counter.143.i = phi i32 [ %inc21.i, %for.body5.i.for.body5.i_crit_edge ], [ 0, %for.body5.i.preheader ]
  %stateindex.042.i = phi i32 [ %and.i, %for.body5.i.for.body5.i_crit_edge ], [ 0, %for.body5.i.preheader ]
  %keyindex.041.i = phi i32 [ %spec.store.select.i, %for.body5.i.for.body5.i_crit_edge ], [ 0, %for.body5.i.preheader ]
  %arrayidx6.i = getelementptr i8, ptr %state1.i, i32 %counter.143.i
  %29 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx6.i, align 1
  %conv7.i = zext i8 %30 to i32
  %arrayidx8.i = getelementptr i8, ptr %wepkey, i32 %keyindex.041.i
  %31 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx8.i, align 1
  %conv9.i = zext i8 %32 to i32
  %add.i = add nuw nsw i32 %stateindex.042.i, %conv7.i
  %add10.i = add nuw nsw i32 %add.i, %conv9.i
  %and.i = and i32 %add10.i, 255
  %arrayidx11.i = getelementptr i8, ptr %state1.i, i32 %and.i
  %33 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx11.i, align 1
  store i8 %30, ptr %arrayidx11.i, align 1
  store i8 %34, ptr %arrayidx6.i, align 1
  %inc17.i = add i32 %keyindex.041.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc17.i, i32 %add)
  %cmp18.not.i = icmp ult i32 %inc17.i, %add
  %spec.store.select.i = select i1 %cmp18.not.i, i32 %inc17.i, i32 0
  %inc21.i = add nuw nsw i32 %counter.143.i, 1
  %exitcond44.not.i = icmp eq i32 %inc21.i, 256
  br i1 %exitcond44.not.i, label %arcfour_init.exit, label %for.body5.i.for.body5.i_crit_edge

for.body5.i.for.body5.i_crit_edge:                ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body5.i

arcfour_init.exit:                                ; preds = %for.body5.i
  %sub10 = sub i32 %22, %25
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %25)
  %cmp8.not.i = icmp eq i32 %22, %25
  br i1 %cmp8.not.i, label %arcfour_init.exit.arcfour_encrypt.exit_crit_edge, label %for.body.i36.preheader

arcfour_init.exit.arcfour_encrypt.exit_crit_edge: ; preds = %arcfour_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %arcfour_encrypt.exit

for.body.i36.preheader:                           ; preds = %arcfour_init.exit
  %35 = ptrtoint ptr %mycontext to i32
  call void @__asan_load4_noabort(i32 %35)
  %mycontext.promoted = load i32, ptr %mycontext, align 4
  %36 = ptrtoint ptr %y.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %y.i.promoted = load i32, ptr %y.i, align 4
  br label %for.body.i36

for.body.i36:                                     ; preds = %for.body.i36.for.body.i36_crit_edge, %for.body.i36.preheader
  %37 = phi i32 [ %and5.i.i, %for.body.i36.for.body.i36_crit_edge ], [ %y.i.promoted, %for.body.i36.preheader ]
  %and.i.i37 = phi i32 [ %and.i.i, %for.body.i36.for.body.i36_crit_edge ], [ %mycontext.promoted, %for.body.i36.preheader ]
  %i.09.i = phi i32 [ %inc.i34, %for.body.i36.for.body.i36_crit_edge ], [ 0, %for.body.i36.preheader ]
  %arrayidx.i33 = getelementptr i8, ptr %add.ptr14, i32 %i.09.i
  %38 = ptrtoint ptr %arrayidx.i33 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx.i33, align 1
  %add.i.i = add i32 %and.i.i37, 1
  %and.i.i = and i32 %add.i.i, 255
  %arrayidx.i.i = getelementptr i8, ptr %state1.i, i32 %and.i.i
  %40 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %41 to i32
  %add4.i.i = add i32 %37, %conv.i.i
  %and5.i.i = and i32 %add4.i.i, 255
  %arrayidx6.i.i = getelementptr i8, ptr %state1.i, i32 %and5.i.i
  %42 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx6.i.i, align 1
  %conv7.i.i = zext i8 %43 to i32
  store i8 %41, ptr %arrayidx6.i.i, align 1
  store i8 %43, ptr %arrayidx.i.i, align 1
  %add14.i.i = add nuw nsw i32 %conv7.i.i, %conv.i.i
  %and15.i.i = and i32 %add14.i.i, 255
  %arrayidx16.i.i = getelementptr i8, ptr %state1.i, i32 %and15.i.i
  %44 = ptrtoint ptr %arrayidx16.i.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx16.i.i, align 1
  %conv3.i = xor i8 %45, %39
  store i8 %conv3.i, ptr %arrayidx.i33, align 1
  %inc.i34 = add nuw i32 %i.09.i, 1
  %exitcond.not.i35 = icmp eq i32 %inc.i34, %sub10
  br i1 %exitcond.not.i35, label %for.body.i36.arcfour_encrypt.exit_crit_edge, label %for.body.i36.for.body.i36_crit_edge

for.body.i36.for.body.i36_crit_edge:              ; preds = %for.body.i36
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i36

for.body.i36.arcfour_encrypt.exit_crit_edge:      ; preds = %for.body.i36
  call void @__sanitizer_cov_trace_pc() #11
  br label %arcfour_encrypt.exit

arcfour_encrypt.exit:                             ; preds = %for.body.i36.arcfour_encrypt.exit_crit_edge, %arcfour_init.exit.arcfour_encrypt.exit_crit_edge
  %sub15 = add i32 %sub10, -4
  %call = tail call fastcc i32 @getcrc32(ptr noundef %add.ptr14, i32 noundef %sub15)
  br label %if.end

if.end:                                           ; preds = %arcfour_encrypt.exit, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %wepkey) #9
  call void @llvm.lifetime.end.p0(i64 264, ptr nonnull %mycontext) #9
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @r8712_secmicsetkey(ptr nocapture noundef %pmicdata, ptr nocapture noundef readonly %key) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %incdec.ptr.i = getelementptr i8, ptr %key, i32 1
  %0 = ptrtoint ptr %key to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %key, align 1
  %conv.i = zext i8 %1 to i32
  %incdec.ptr.1.i = getelementptr i8, ptr %key, i32 2
  %2 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %incdec.ptr.i, align 1
  %conv.1.i = zext i8 %3 to i32
  %shl.1.i = shl nuw nsw i32 %conv.1.i, 8
  %or.1.i = or i32 %shl.1.i, %conv.i
  %incdec.ptr.2.i = getelementptr i8, ptr %key, i32 3
  %4 = ptrtoint ptr %incdec.ptr.1.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %incdec.ptr.1.i, align 1
  %conv.2.i = zext i8 %5 to i32
  %shl.2.i = shl nuw nsw i32 %conv.2.i, 16
  %or.2.i = or i32 %or.1.i, %shl.2.i
  %6 = ptrtoint ptr %incdec.ptr.2.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %incdec.ptr.2.i, align 1
  %conv.3.i = zext i8 %7 to i32
  %shl.3.i = shl nuw i32 %conv.3.i, 24
  %or.3.i = or i32 %or.2.i, %shl.3.i
  %8 = ptrtoint ptr %pmicdata to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or.3.i, ptr %pmicdata, align 4
  %add.ptr = getelementptr i8, ptr %key, i32 4
  %incdec.ptr.i5 = getelementptr i8, ptr %key, i32 5
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %add.ptr, align 1
  %conv.i6 = zext i8 %10 to i32
  %incdec.ptr.1.i7 = getelementptr i8, ptr %key, i32 6
  %11 = ptrtoint ptr %incdec.ptr.i5 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %incdec.ptr.i5, align 1
  %conv.1.i8 = zext i8 %12 to i32
  %shl.1.i9 = shl nuw nsw i32 %conv.1.i8, 8
  %or.1.i10 = or i32 %shl.1.i9, %conv.i6
  %incdec.ptr.2.i11 = getelementptr i8, ptr %key, i32 7
  %13 = ptrtoint ptr %incdec.ptr.1.i7 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %incdec.ptr.1.i7, align 1
  %conv.2.i12 = zext i8 %14 to i32
  %shl.2.i13 = shl nuw nsw i32 %conv.2.i12, 16
  %or.2.i14 = or i32 %or.1.i10, %shl.2.i13
  %15 = ptrtoint ptr %incdec.ptr.2.i11 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %incdec.ptr.2.i11, align 1
  %conv.3.i15 = zext i8 %16 to i32
  %shl.3.i16 = shl nuw i32 %conv.3.i15, 24
  %or.3.i17 = or i32 %or.2.i14, %shl.3.i16
  %K1 = getelementptr inbounds %struct.mic_data, ptr %pmicdata, i32 0, i32 1
  %17 = ptrtoint ptr %K1 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %or.3.i17, ptr %K1, align 4
  %L.i = getelementptr inbounds %struct.mic_data, ptr %pmicdata, i32 0, i32 2
  %18 = ptrtoint ptr %L.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or.3.i, ptr %L.i, align 4
  %R.i = getelementptr inbounds %struct.mic_data, ptr %pmicdata, i32 0, i32 3
  %19 = ptrtoint ptr %R.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %or.3.i17, ptr %R.i, align 4
  %nBytesInM.i = getelementptr inbounds %struct.mic_data, ptr %pmicdata, i32 0, i32 5
  %20 = ptrtoint ptr %nBytesInM.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %nBytesInM.i, align 4
  %M.i = getelementptr inbounds %struct.mic_data, ptr %pmicdata, i32 0, i32 4
  %21 = ptrtoint ptr %M.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %M.i, align 4
  ret void
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r8712_secmicappend(ptr nocapture noundef %pmicdata, ptr nocapture noundef readonly %src, i32 noundef %nbytes) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nbytes)
  %cmp.not2 = icmp eq i32 %nbytes, 0
  br i1 %cmp.not2, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %nBytesInM.i = getelementptr inbounds %struct.mic_data, ptr %pmicdata, i32 0, i32 5
  %M.i = getelementptr inbounds %struct.mic_data, ptr %pmicdata, i32 0, i32 4
  %L.i = getelementptr inbounds %struct.mic_data, ptr %pmicdata, i32 0, i32 2
  %R.i = getelementptr inbounds %struct.mic_data, ptr %pmicdata, i32 0, i32 3
  br label %while.body

while.body:                                       ; preds = %secmicappendbyte.exit.while.body_crit_edge, %while.body.lr.ph
  %nbytes.addr.04 = phi i32 [ %nbytes, %while.body.lr.ph ], [ %dec, %secmicappendbyte.exit.while.body_crit_edge ]
  %src.addr.03 = phi ptr [ %src, %while.body.lr.ph ], [ %incdec.ptr, %secmicappendbyte.exit.while.body_crit_edge ]
  %incdec.ptr = getelementptr i8, ptr %src.addr.03, i32 1
  %0 = ptrtoint ptr %src.addr.03 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %src.addr.03, align 1
  %conv.i = zext i8 %1 to i32
  %2 = ptrtoint ptr %nBytesInM.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nBytesInM.i, align 4
  %mul.i = shl i32 %3, 3
  %shl.i = shl i32 %conv.i, %mul.i
  %4 = ptrtoint ptr %M.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %M.i, align 4
  %or.i = or i32 %shl.i, %5
  store i32 %or.i, ptr %M.i, align 4
  %inc.i = add i32 %3, 1
  store i32 %inc.i, ptr %nBytesInM.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %inc.i)
  %cmp.i = icmp ugt i32 %inc.i, 3
  br i1 %cmp.i, label %if.then.i, label %while.body.secmicappendbyte.exit_crit_edge

while.body.secmicappendbyte.exit_crit_edge:       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %secmicappendbyte.exit

if.then.i:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %L.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %L.i, align 4
  %xor.i = xor i32 %7, %or.i
  %or8.i = tail call i32 @llvm.fshl.i32(i32 %xor.i, i32 %xor.i, i32 17) #9
  %8 = ptrtoint ptr %R.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %R.i, align 4
  %xor9.i = xor i32 %or8.i, %9
  %add.i = add i32 %xor9.i, %xor.i
  %and13.i = lshr i32 %add.i, 8
  %shr14.i = and i32 %and13.i, 16711935
  %and16.i = shl i32 %add.i, 8
  %shl17.i = and i32 %and16.i, -16711936
  %or18.i = or i32 %shr14.i, %shl17.i
  %xor20.i = xor i32 %or18.i, %xor9.i
  %add23.i = add i32 %xor20.i, %add.i
  %or29.i = tail call i32 @llvm.fshl.i32(i32 %add23.i, i32 %add23.i, i32 3) #9
  %xor31.i = xor i32 %or29.i, %xor20.i
  %add34.i = add i32 %xor31.i, %add23.i
  %or40.i = tail call i32 @llvm.fshl.i32(i32 %add34.i, i32 %add34.i, i32 30) #9
  %xor42.i = xor i32 %or40.i, %xor31.i
  %10 = ptrtoint ptr %R.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %xor42.i, ptr %R.i, align 4
  %add45.i = add i32 %xor42.i, %add34.i
  %11 = ptrtoint ptr %L.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %add45.i, ptr %L.i, align 4
  %12 = ptrtoint ptr %M.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %M.i, align 4
  %13 = ptrtoint ptr %nBytesInM.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %nBytesInM.i, align 4
  br label %secmicappendbyte.exit

secmicappendbyte.exit:                            ; preds = %if.then.i, %while.body.secmicappendbyte.exit_crit_edge
  %dec = add i32 %nbytes.addr.04, -1
  %cmp.not = icmp eq i32 %dec, 0
  br i1 %cmp.not, label %secmicappendbyte.exit.while.end_crit_edge, label %secmicappendbyte.exit.while.body_crit_edge

secmicappendbyte.exit.while.body_crit_edge:       ; preds = %secmicappendbyte.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

secmicappendbyte.exit.while.end_crit_edge:        ; preds = %secmicappendbyte.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %secmicappendbyte.exit.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r8712_secgetmic(ptr noundef %pmicdata, ptr nocapture noundef writeonly %dst) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %nBytesInM.i = getelementptr inbounds %struct.mic_data, ptr %pmicdata, i32 0, i32 5
  %0 = ptrtoint ptr %nBytesInM.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nBytesInM.i, align 4
  %mul.i = shl i32 %1, 3
  %shl.i = shl i32 90, %mul.i
  %M.i = getelementptr inbounds %struct.mic_data, ptr %pmicdata, i32 0, i32 4
  %2 = ptrtoint ptr %M.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %M.i, align 4
  %or.i = or i32 %shl.i, %3
  store i32 %or.i, ptr %M.i, align 4
  %inc.i = add i32 %1, 1
  store i32 %inc.i, ptr %nBytesInM.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %inc.i)
  %cmp.i = icmp ugt i32 %inc.i, 3
  br i1 %cmp.i, label %if.then.i, label %entry.secmicappendbyte.exit_crit_edge

entry.secmicappendbyte.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %secmicappendbyte.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %L.i = getelementptr inbounds %struct.mic_data, ptr %pmicdata, i32 0, i32 2
  %4 = ptrtoint ptr %L.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %L.i, align 4
  %xor.i = xor i32 %5, %or.i
  %or8.i = tail call i32 @llvm.fshl.i32(i32 %xor.i, i32 %xor.i, i32 17) #9
  %R.i = getelementptr inbounds %struct.mic_data, ptr %pmicdata, i32 0, i32 3
  %6 = ptrtoint ptr %R.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %R.i, align 4
  %xor9.i = xor i32 %or8.i, %7
  %add.i = add i32 %xor9.i, %xor.i
  %and13.i = lshr i32 %add.i, 8
  %shr14.i = and i32 %and13.i, 16711935
  %and16.i = shl i32 %add.i, 8
  %shl17.i = and i32 %and16.i, -16711936
  %or18.i = or i32 %shr14.i, %shl17.i
  %xor20.i = xor i32 %or18.i, %xor9.i
  %add23.i = add i32 %xor20.i, %add.i
  %or29.i = tail call i32 @llvm.fshl.i32(i32 %add23.i, i32 %add23.i, i32 3) #9
  %xor31.i = xor i32 %or29.i, %xor20.i
  %add34.i = add i32 %xor31.i, %add23.i
  %or40.i = tail call i32 @llvm.fshl.i32(i32 %add34.i, i32 %add34.i, i32 30) #9
  %xor42.i = xor i32 %or40.i, %xor31.i
  %8 = ptrtoint ptr %R.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %xor42.i, ptr %R.i, align 4
  %add45.i = add i32 %xor42.i, %add34.i
  %9 = ptrtoint ptr %L.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %add45.i, ptr %L.i, align 4
  %10 = ptrtoint ptr %M.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %M.i, align 4
  %11 = ptrtoint ptr %nBytesInM.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %nBytesInM.i, align 4
  br label %secmicappendbyte.exit

secmicappendbyte.exit:                            ; preds = %if.then.i, %entry.secmicappendbyte.exit_crit_edge
  %12 = ptrtoint ptr %nBytesInM.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nBytesInM.i, align 4
  %14 = ptrtoint ptr %M.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %M.i, align 4
  %inc.i14 = add i32 %13, 1
  store i32 %inc.i14, ptr %nBytesInM.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %inc.i14)
  %cmp.i15 = icmp ugt i32 %inc.i14, 3
  br i1 %cmp.i15, label %if.then.i35, label %secmicappendbyte.exit.secmicappendbyte.exit36_crit_edge

secmicappendbyte.exit.secmicappendbyte.exit36_crit_edge: ; preds = %secmicappendbyte.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %secmicappendbyte.exit36

if.then.i35:                                      ; preds = %secmicappendbyte.exit
  call void @__sanitizer_cov_trace_pc() #11
  %L.i16 = getelementptr inbounds %struct.mic_data, ptr %pmicdata, i32 0, i32 2
  %16 = ptrtoint ptr %L.i16 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %L.i16, align 4
  %xor.i17 = xor i32 %17, %15
  %or8.i18 = tail call i32 @llvm.fshl.i32(i32 %xor.i17, i32 %xor.i17, i32 17) #9
  %R.i19 = getelementptr inbounds %struct.mic_data, ptr %pmicdata, i32 0, i32 3
  %18 = ptrtoint ptr %R.i19 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %R.i19, align 4
  %xor9.i20 = xor i32 %or8.i18, %19
  %add.i21 = add i32 %xor9.i20, %xor.i17
  %and13.i22 = lshr i32 %add.i21, 8
  %shr14.i23 = and i32 %and13.i22, 16711935
  %and16.i24 = shl i32 %add.i21, 8
  %shl17.i25 = and i32 %and16.i24, -16711936
  %or18.i26 = or i32 %shr14.i23, %shl17.i25
  %xor20.i27 = xor i32 %or18.i26, %xor9.i20
  %add23.i28 = add i32 %xor20.i27, %add.i21
  %or29.i29 = tail call i32 @llvm.fshl.i32(i32 %add23.i28, i32 %add23.i28, i32 3) #9
  %xor31.i30 = xor i32 %or29.i29, %xor20.i27
  %add34.i31 = add i32 %xor31.i30, %add23.i28
  %or40.i32 = tail call i32 @llvm.fshl.i32(i32 %add34.i31, i32 %add34.i31, i32 30) #9
  %xor42.i33 = xor i32 %or40.i32, %xor31.i30
  %20 = ptrtoint ptr %R.i19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %xor42.i33, ptr %R.i19, align 4
  %add45.i34 = add i32 %xor42.i33, %add34.i31
  %21 = ptrtoint ptr %L.i16 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %add45.i34, ptr %L.i16, align 4
  %22 = ptrtoint ptr %M.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %M.i, align 4
  %23 = ptrtoint ptr %nBytesInM.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %nBytesInM.i, align 4
  br label %secmicappendbyte.exit36

secmicappendbyte.exit36:                          ; preds = %if.then.i35, %secmicappendbyte.exit.secmicappendbyte.exit36_crit_edge
  %24 = ptrtoint ptr %nBytesInM.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %nBytesInM.i, align 4
  %26 = ptrtoint ptr %M.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %M.i, align 4
  %inc.i40 = add i32 %25, 1
  store i32 %inc.i40, ptr %nBytesInM.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %inc.i40)
  %cmp.i41 = icmp ugt i32 %inc.i40, 3
  br i1 %cmp.i41, label %if.then.i61, label %secmicappendbyte.exit36.secmicappendbyte.exit62_crit_edge

secmicappendbyte.exit36.secmicappendbyte.exit62_crit_edge: ; preds = %secmicappendbyte.exit36
  call void @__sanitizer_cov_trace_pc() #11
  br label %secmicappendbyte.exit62

if.then.i61:                                      ; preds = %secmicappendbyte.exit36
  call void @__sanitizer_cov_trace_pc() #11
  %L.i42 = getelementptr inbounds %struct.mic_data, ptr %pmicdata, i32 0, i32 2
  %28 = ptrtoint ptr %L.i42 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %L.i42, align 4
  %xor.i43 = xor i32 %29, %27
  %or8.i44 = tail call i32 @llvm.fshl.i32(i32 %xor.i43, i32 %xor.i43, i32 17) #9
  %R.i45 = getelementptr inbounds %struct.mic_data, ptr %pmicdata, i32 0, i32 3
  %30 = ptrtoint ptr %R.i45 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %R.i45, align 4
  %xor9.i46 = xor i32 %or8.i44, %31
  %add.i47 = add i32 %xor9.i46, %xor.i43
  %and13.i48 = lshr i32 %add.i47, 8
  %shr14.i49 = and i32 %and13.i48, 16711935
  %and16.i50 = shl i32 %add.i47, 8
  %shl17.i51 = and i32 %and16.i50, -16711936
  %or18.i52 = or i32 %shr14.i49, %shl17.i51
  %xor20.i53 = xor i32 %or18.i52, %xor9.i46
  %add23.i54 = add i32 %xor20.i53, %add.i47
  %or29.i55 = tail call i32 @llvm.fshl.i32(i32 %add23.i54, i32 %add23.i54, i32 3) #9
  %xor31.i56 = xor i32 %or29.i55, %xor20.i53
  %add34.i57 = add i32 %xor31.i56, %add23.i54
  %or40.i58 = tail call i32 @llvm.fshl.i32(i32 %add34.i57, i32 %add34.i57, i32 30) #9
  %xor42.i59 = xor i32 %or40.i58, %xor31.i56
  %32 = ptrtoint ptr %R.i45 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %xor42.i59, ptr %R.i45, align 4
  %add45.i60 = add i32 %xor42.i59, %add34.i57
  %33 = ptrtoint ptr %L.i42 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %add45.i60, ptr %L.i42, align 4
  %34 = ptrtoint ptr %M.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %M.i, align 4
  %35 = ptrtoint ptr %nBytesInM.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %nBytesInM.i, align 4
  br label %secmicappendbyte.exit62

secmicappendbyte.exit62:                          ; preds = %if.then.i61, %secmicappendbyte.exit36.secmicappendbyte.exit62_crit_edge
  %36 = ptrtoint ptr %nBytesInM.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %nBytesInM.i, align 4
  %38 = ptrtoint ptr %M.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %M.i, align 4
  %inc.i66 = add i32 %37, 1
  store i32 %inc.i66, ptr %nBytesInM.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %inc.i66)
  %cmp.i67 = icmp ugt i32 %inc.i66, 3
  br i1 %cmp.i67, label %if.then.i87, label %secmicappendbyte.exit62.secmicappendbyte.exit88_crit_edge

secmicappendbyte.exit62.secmicappendbyte.exit88_crit_edge: ; preds = %secmicappendbyte.exit62
  call void @__sanitizer_cov_trace_pc() #11
  br label %secmicappendbyte.exit88

if.then.i87:                                      ; preds = %secmicappendbyte.exit62
  call void @__sanitizer_cov_trace_pc() #11
  %L.i68 = getelementptr inbounds %struct.mic_data, ptr %pmicdata, i32 0, i32 2
  %40 = ptrtoint ptr %L.i68 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %L.i68, align 4
  %xor.i69 = xor i32 %41, %39
  %or8.i70 = tail call i32 @llvm.fshl.i32(i32 %xor.i69, i32 %xor.i69, i32 17) #9
  %R.i71 = getelementptr inbounds %struct.mic_data, ptr %pmicdata, i32 0, i32 3
  %42 = ptrtoint ptr %R.i71 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %R.i71, align 4
  %xor9.i72 = xor i32 %or8.i70, %43
  %add.i73 = add i32 %xor9.i72, %xor.i69
  %and13.i74 = lshr i32 %add.i73, 8
  %shr14.i75 = and i32 %and13.i74, 16711935
  %and16.i76 = shl i32 %add.i73, 8
  %shl17.i77 = and i32 %and16.i76, -16711936
  %or18.i78 = or i32 %shr14.i75, %shl17.i77
  %xor20.i79 = xor i32 %or18.i78, %xor9.i72
  %add23.i80 = add i32 %xor20.i79, %add.i73
  %or29.i81 = tail call i32 @llvm.fshl.i32(i32 %add23.i80, i32 %add23.i80, i32 3) #9
  %xor31.i82 = xor i32 %or29.i81, %xor20.i79
  %add34.i83 = add i32 %xor31.i82, %add23.i80
  %or40.i84 = tail call i32 @llvm.fshl.i32(i32 %add34.i83, i32 %add34.i83, i32 30) #9
  %xor42.i85 = xor i32 %or40.i84, %xor31.i82
  %44 = ptrtoint ptr %R.i71 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %xor42.i85, ptr %R.i71, align 4
  %add45.i86 = add i32 %xor42.i85, %add34.i83
  %45 = ptrtoint ptr %L.i68 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %add45.i86, ptr %L.i68, align 4
  %46 = ptrtoint ptr %M.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %M.i, align 4
  %47 = ptrtoint ptr %nBytesInM.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %nBytesInM.i, align 4
  br label %secmicappendbyte.exit88

secmicappendbyte.exit88:                          ; preds = %if.then.i87, %secmicappendbyte.exit62.secmicappendbyte.exit88_crit_edge
  %48 = ptrtoint ptr %nBytesInM.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %nBytesInM.i, align 4
  %inc.i92 = add i32 %49, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %inc.i92)
  %cmp.i93 = icmp ugt i32 %inc.i92, 3
  br i1 %cmp.i93, label %secmicappendbyte.exit114.thread, label %secmicappendbyte.exit114

secmicappendbyte.exit114.thread:                  ; preds = %secmicappendbyte.exit88
  call void @__sanitizer_cov_trace_pc() #11
  %50 = ptrtoint ptr %M.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %M.i, align 4
  %L.i94 = getelementptr inbounds %struct.mic_data, ptr %pmicdata, i32 0, i32 2
  %52 = ptrtoint ptr %L.i94 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %L.i94, align 4
  %xor.i95 = xor i32 %53, %51
  %or8.i96 = tail call i32 @llvm.fshl.i32(i32 %xor.i95, i32 %xor.i95, i32 17) #9
  %R.i97 = getelementptr inbounds %struct.mic_data, ptr %pmicdata, i32 0, i32 3
  %54 = ptrtoint ptr %R.i97 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %R.i97, align 4
  %xor9.i98 = xor i32 %or8.i96, %55
  %add.i99 = add i32 %xor9.i98, %xor.i95
  %and13.i100 = lshr i32 %add.i99, 8
  %shr14.i101 = and i32 %and13.i100, 16711935
  %and16.i102 = shl i32 %add.i99, 8
  %shl17.i103 = and i32 %and16.i102, -16711936
  %or18.i104 = or i32 %shr14.i101, %shl17.i103
  %xor20.i105 = xor i32 %or18.i104, %xor9.i98
  %add23.i106 = add i32 %xor20.i105, %add.i99
  %or29.i107 = tail call i32 @llvm.fshl.i32(i32 %add23.i106, i32 %add23.i106, i32 3) #9
  %xor31.i108 = xor i32 %or29.i107, %xor20.i105
  %add34.i109 = add i32 %xor31.i108, %add23.i106
  %or40.i110 = tail call i32 @llvm.fshl.i32(i32 %add34.i109, i32 %add34.i109, i32 30) #9
  %xor42.i111 = xor i32 %or40.i110, %xor31.i108
  %56 = ptrtoint ptr %R.i97 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %xor42.i111, ptr %R.i97, align 4
  %add45.i112 = add i32 %xor42.i111, %add34.i109
  %57 = ptrtoint ptr %L.i94 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %add45.i112, ptr %L.i94, align 4
  br label %while.end

secmicappendbyte.exit114:                         ; preds = %secmicappendbyte.exit88
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc.i92)
  %cmp.not157 = icmp eq i32 %inc.i92, 0
  br i1 %cmp.not157, label %secmicappendbyte.exit114.while.end_crit_edge, label %while.cond.while.end_crit_edge

secmicappendbyte.exit114.while.end_crit_edge:     ; preds = %secmicappendbyte.exit114
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.cond.while.end_crit_edge:                   ; preds = %secmicappendbyte.exit114
  call void @__sanitizer_cov_trace_pc() #11
  %58 = ptrtoint ptr %M.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %M.i.promoted = load i32, ptr %M.i, align 4
  %R.i123 = getelementptr inbounds %struct.mic_data, ptr %pmicdata, i32 0, i32 3
  %L.i120 = getelementptr inbounds %struct.mic_data, ptr %pmicdata, i32 0, i32 2
  %59 = ptrtoint ptr %L.i120 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %L.i120, align 4
  %xor.i121 = xor i32 %60, %M.i.promoted
  %or8.i122 = tail call i32 @llvm.fshl.i32(i32 %xor.i121, i32 %xor.i121, i32 17) #9
  %61 = ptrtoint ptr %R.i123 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %R.i123, align 4
  %xor9.i124 = xor i32 %or8.i122, %62
  %add.i125 = add i32 %xor9.i124, %xor.i121
  %and13.i126 = lshr i32 %add.i125, 8
  %shr14.i127 = and i32 %and13.i126, 16711935
  %and16.i128 = shl i32 %add.i125, 8
  %shl17.i129 = and i32 %and16.i128, -16711936
  %or18.i130 = or i32 %shr14.i127, %shl17.i129
  %xor20.i131 = xor i32 %or18.i130, %xor9.i124
  %add23.i132 = add i32 %xor20.i131, %add.i125
  %or29.i133 = tail call i32 @llvm.fshl.i32(i32 %add23.i132, i32 %add23.i132, i32 3) #9
  %xor31.i134 = xor i32 %or29.i133, %xor20.i131
  %add34.i135 = add i32 %xor31.i134, %add23.i132
  %or40.i136 = tail call i32 @llvm.fshl.i32(i32 %add34.i135, i32 %add34.i135, i32 30) #9
  %xor42.i137 = xor i32 %or40.i136, %xor31.i134
  %63 = ptrtoint ptr %R.i123 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %xor42.i137, ptr %R.i123, align 4
  %add45.i138 = add i32 %xor42.i137, %add34.i135
  %64 = ptrtoint ptr %L.i120 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %add45.i138, ptr %L.i120, align 4
  br label %while.end

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %secmicappendbyte.exit114.while.end_crit_edge, %secmicappendbyte.exit114.thread
  %L = getelementptr inbounds %struct.mic_data, ptr %pmicdata, i32 0, i32 2
  %65 = ptrtoint ptr %L to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %L, align 4
  %conv.i = trunc i32 %66 to i8
  %incdec.ptr.i = getelementptr i8, ptr %dst, i32 1
  %67 = ptrtoint ptr %dst to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %conv.i, ptr %dst, align 1
  %shr.i = lshr i32 %66, 8
  %conv.1.i = trunc i32 %shr.i to i8
  %incdec.ptr.1.i = getelementptr i8, ptr %dst, i32 2
  %68 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %conv.1.i, ptr %incdec.ptr.i, align 1
  %shr.1.i = lshr i32 %66, 16
  %conv.2.i = trunc i32 %shr.1.i to i8
  %incdec.ptr.2.i = getelementptr i8, ptr %dst, i32 3
  %69 = ptrtoint ptr %incdec.ptr.1.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %conv.2.i, ptr %incdec.ptr.1.i, align 1
  %shr.2.i = lshr i32 %66, 24
  %conv.3.i = trunc i32 %shr.2.i to i8
  %70 = ptrtoint ptr %incdec.ptr.2.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %conv.3.i, ptr %incdec.ptr.2.i, align 1
  %add.ptr = getelementptr i8, ptr %dst, i32 4
  %R = getelementptr inbounds %struct.mic_data, ptr %pmicdata, i32 0, i32 3
  %71 = ptrtoint ptr %R to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %R, align 4
  %conv.i141 = trunc i32 %72 to i8
  %incdec.ptr.i142 = getelementptr i8, ptr %dst, i32 5
  %73 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %conv.i141, ptr %add.ptr, align 1
  %shr.i143 = lshr i32 %72, 8
  %conv.1.i144 = trunc i32 %shr.i143 to i8
  %incdec.ptr.1.i145 = getelementptr i8, ptr %dst, i32 6
  %74 = ptrtoint ptr %incdec.ptr.i142 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %conv.1.i144, ptr %incdec.ptr.i142, align 1
  %shr.1.i146 = lshr i32 %72, 16
  %conv.2.i147 = trunc i32 %shr.1.i146 to i8
  %incdec.ptr.2.i148 = getelementptr i8, ptr %dst, i32 7
  %75 = ptrtoint ptr %incdec.ptr.1.i145 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %conv.2.i147, ptr %incdec.ptr.1.i145, align 1
  %shr.2.i149 = lshr i32 %72, 24
  %conv.3.i150 = trunc i32 %shr.2.i149 to i8
  %76 = ptrtoint ptr %incdec.ptr.2.i148 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %conv.3.i150, ptr %incdec.ptr.2.i148, align 1
  %77 = ptrtoint ptr %pmicdata to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %pmicdata, align 4
  store i32 %78, ptr %L, align 4
  %K1.i = getelementptr inbounds %struct.mic_data, ptr %pmicdata, i32 0, i32 1
  %79 = ptrtoint ptr %K1.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %K1.i, align 4
  store i32 %80, ptr %R, align 4
  %81 = ptrtoint ptr %nBytesInM.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 0, ptr %nBytesInM.i, align 4
  %82 = ptrtoint ptr %M.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 0, ptr %M.i, align 4
  ret void
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @seccalctkipmic(ptr nocapture noundef readonly %key, ptr nocapture noundef readonly %header, ptr nocapture noundef readonly %data, i32 noundef %data_len, ptr nocapture noundef writeonly %mic_code, i8 noundef zeroext %pri) local_unnamed_addr #0 align 64 {
entry:
  %micdata = alloca %struct.mic_data, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %micdata) #9
  %0 = getelementptr inbounds %struct.mic_data, ptr %micdata, i32 0, i32 1
  %1 = getelementptr inbounds %struct.mic_data, ptr %micdata, i32 0, i32 2
  %2 = getelementptr inbounds %struct.mic_data, ptr %micdata, i32 0, i32 3
  %3 = getelementptr inbounds %struct.mic_data, ptr %micdata, i32 0, i32 4
  %4 = getelementptr inbounds %struct.mic_data, ptr %micdata, i32 0, i32 5
  %incdec.ptr.i.i = getelementptr i8, ptr %key, i32 1
  %5 = ptrtoint ptr %key to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %key, align 1
  %conv.i.i = zext i8 %6 to i32
  %incdec.ptr.1.i.i = getelementptr i8, ptr %key, i32 2
  %7 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %incdec.ptr.i.i, align 1
  %conv.1.i.i = zext i8 %8 to i32
  %shl.1.i.i = shl nuw nsw i32 %conv.1.i.i, 8
  %or.1.i.i = or i32 %shl.1.i.i, %conv.i.i
  %incdec.ptr.2.i.i = getelementptr i8, ptr %key, i32 3
  %9 = ptrtoint ptr %incdec.ptr.1.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %incdec.ptr.1.i.i, align 1
  %conv.2.i.i = zext i8 %10 to i32
  %shl.2.i.i = shl nuw nsw i32 %conv.2.i.i, 16
  %or.2.i.i = or i32 %or.1.i.i, %shl.2.i.i
  %11 = ptrtoint ptr %incdec.ptr.2.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %incdec.ptr.2.i.i, align 1
  %conv.3.i.i = zext i8 %12 to i32
  %shl.3.i.i = shl nuw i32 %conv.3.i.i, 24
  %or.3.i.i = or i32 %or.2.i.i, %shl.3.i.i
  %13 = ptrtoint ptr %micdata to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %or.3.i.i, ptr %micdata, align 4
  %add.ptr.i = getelementptr i8, ptr %key, i32 4
  %incdec.ptr.i5.i = getelementptr i8, ptr %key, i32 5
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %add.ptr.i, align 1
  %conv.i6.i = zext i8 %15 to i32
  %incdec.ptr.1.i7.i = getelementptr i8, ptr %key, i32 6
  %16 = ptrtoint ptr %incdec.ptr.i5.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %incdec.ptr.i5.i, align 1
  %conv.1.i8.i = zext i8 %17 to i32
  %shl.1.i9.i = shl nuw nsw i32 %conv.1.i8.i, 8
  %or.1.i10.i = or i32 %shl.1.i9.i, %conv.i6.i
  %incdec.ptr.2.i11.i = getelementptr i8, ptr %key, i32 7
  %18 = ptrtoint ptr %incdec.ptr.1.i7.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %incdec.ptr.1.i7.i, align 1
  %conv.2.i12.i = zext i8 %19 to i32
  %shl.2.i13.i = shl nuw nsw i32 %conv.2.i12.i, 16
  %or.2.i14.i = or i32 %or.1.i10.i, %shl.2.i13.i
  %20 = ptrtoint ptr %incdec.ptr.2.i11.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %incdec.ptr.2.i11.i, align 1
  %conv.3.i15.i = zext i8 %21 to i32
  %shl.3.i16.i = shl nuw i32 %conv.3.i15.i, 24
  %or.3.i17.i = or i32 %or.2.i14.i, %shl.3.i16.i
  %22 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %or.3.i17.i, ptr %0, align 4
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %or.3.i.i, ptr %1, align 4
  %24 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %or.3.i17.i, ptr %2, align 4
  %25 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %4, align 4
  %26 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %3, align 4
  %arrayidx1 = getelementptr i8, ptr %header, i32 1
  %27 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx1, align 1
  %29 = and i8 %28, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not = icmp eq i8 %29, 0
  br i1 %tobool.not, label %if.else10, label %if.then

if.then:                                          ; preds = %entry
  %arrayidx2 = getelementptr i8, ptr %header, i32 16
  %30 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %30)
  %.promoted = load i32, ptr %4, align 4
  %31 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %.promoted291 = load i32, ptr %3, align 4
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %.promoted293 = load i32, ptr %1, align 4
  %33 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %33)
  %.promoted294 = load i32, ptr %2, align 4
  br label %while.body.i

while.body.i:                                     ; preds = %secmicappendbyte.exit.i.while.body.i_crit_edge, %if.then
  %add45.i.i393 = phi i32 [ %.promoted293, %if.then ], [ %add45.i.i394, %secmicappendbyte.exit.i.while.body.i_crit_edge ]
  %xor42.i.i390 = phi i32 [ %.promoted294, %if.then ], [ %xor42.i.i391, %secmicappendbyte.exit.i.while.body.i_crit_edge ]
  %34 = phi i32 [ %.promoted294, %if.then ], [ %40, %secmicappendbyte.exit.i.while.body.i_crit_edge ]
  %35 = phi i32 [ %.promoted293, %if.then ], [ %41, %secmicappendbyte.exit.i.while.body.i_crit_edge ]
  %36 = phi i32 [ %.promoted291, %if.then ], [ %42, %secmicappendbyte.exit.i.while.body.i_crit_edge ]
  %37 = phi i32 [ %.promoted, %if.then ], [ %43, %secmicappendbyte.exit.i.while.body.i_crit_edge ]
  %nbytes.addr.04.i = phi i32 [ 6, %if.then ], [ %dec.i, %secmicappendbyte.exit.i.while.body.i_crit_edge ]
  %src.addr.03.i = phi ptr [ %arrayidx2, %if.then ], [ %incdec.ptr.i, %secmicappendbyte.exit.i.while.body.i_crit_edge ]
  %incdec.ptr.i = getelementptr i8, ptr %src.addr.03.i, i32 1
  %38 = ptrtoint ptr %src.addr.03.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %src.addr.03.i, align 1
  %conv.i.i35 = zext i8 %39 to i32
  %mul.i.i = shl i32 %37, 3
  %shl.i.i = shl i32 %conv.i.i35, %mul.i.i
  %or.i.i = or i32 %shl.i.i, %36
  %inc.i.i = add i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %inc.i.i)
  %cmp.i.i = icmp ugt i32 %inc.i.i, 3
  br i1 %cmp.i.i, label %if.then.i.i, label %while.body.i.secmicappendbyte.exit.i_crit_edge

while.body.i.secmicappendbyte.exit.i_crit_edge:   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %secmicappendbyte.exit.i

if.then.i.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %xor.i.i = xor i32 %35, %or.i.i
  %or8.i.i = tail call i32 @llvm.fshl.i32(i32 %xor.i.i, i32 %xor.i.i, i32 17) #9
  %xor9.i.i = xor i32 %or8.i.i, %34
  %add.i.i = add i32 %xor9.i.i, %xor.i.i
  %and13.i.i = lshr i32 %add.i.i, 8
  %shr14.i.i = and i32 %and13.i.i, 16711935
  %and16.i.i = shl i32 %add.i.i, 8
  %shl17.i.i = and i32 %and16.i.i, -16711936
  %or18.i.i = or i32 %shr14.i.i, %shl17.i.i
  %xor20.i.i = xor i32 %or18.i.i, %xor9.i.i
  %add23.i.i = add i32 %xor20.i.i, %add.i.i
  %or29.i.i = tail call i32 @llvm.fshl.i32(i32 %add23.i.i, i32 %add23.i.i, i32 3) #9
  %xor31.i.i = xor i32 %or29.i.i, %xor20.i.i
  %add34.i.i = add i32 %xor31.i.i, %add23.i.i
  %or40.i.i = tail call i32 @llvm.fshl.i32(i32 %add34.i.i, i32 %add34.i.i, i32 30) #9
  %xor42.i.i = xor i32 %or40.i.i, %xor31.i.i
  %add45.i.i = add i32 %xor42.i.i, %add34.i.i
  br label %secmicappendbyte.exit.i

secmicappendbyte.exit.i:                          ; preds = %if.then.i.i, %while.body.i.secmicappendbyte.exit.i_crit_edge
  %add45.i.i394 = phi i32 [ %add45.i.i, %if.then.i.i ], [ %add45.i.i393, %while.body.i.secmicappendbyte.exit.i_crit_edge ]
  %xor42.i.i391 = phi i32 [ %xor42.i.i, %if.then.i.i ], [ %xor42.i.i390, %while.body.i.secmicappendbyte.exit.i_crit_edge ]
  %40 = phi i32 [ %xor42.i.i, %if.then.i.i ], [ %34, %while.body.i.secmicappendbyte.exit.i_crit_edge ]
  %41 = phi i32 [ %add45.i.i, %if.then.i.i ], [ %35, %while.body.i.secmicappendbyte.exit.i_crit_edge ]
  %42 = phi i32 [ 0, %if.then.i.i ], [ %or.i.i, %while.body.i.secmicappendbyte.exit.i_crit_edge ]
  %43 = phi i32 [ 0, %if.then.i.i ], [ %inc.i.i, %while.body.i.secmicappendbyte.exit.i_crit_edge ]
  %dec.i = add nsw i32 %nbytes.addr.04.i, -1
  %cmp.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.not.i, label %r8712_secmicappend.exit, label %secmicappendbyte.exit.i.while.body.i_crit_edge

secmicappendbyte.exit.i.while.body.i_crit_edge:   ; preds = %secmicappendbyte.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

r8712_secmicappend.exit:                          ; preds = %secmicappendbyte.exit.i
  %44 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %xor42.i.i391, ptr %2, align 4
  %45 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %add45.i.i394, ptr %1, align 4
  %46 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %43, ptr %4, align 4
  %47 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %42, ptr %3, align 4
  %48 = and i8 %28, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool6.not = icmp eq i8 %48, 0
  br i1 %tobool6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %r8712_secmicappend.exit
  %arrayidx8 = getelementptr i8, ptr %header, i32 24
  %49 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %49)
  %.promoted295 = load i32, ptr %4, align 4
  %50 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %50)
  %.promoted297 = load i32, ptr %3, align 4
  %51 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %.promoted299 = load i32, ptr %1, align 4
  %52 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %52)
  %.promoted300 = load i32, ptr %2, align 4
  br label %while.body.i49

while.body.i49:                                   ; preds = %secmicappendbyte.exit.i70.while.body.i49_crit_edge, %if.then7
  %add45.i.i66399 = phi i32 [ %.promoted299, %if.then7 ], [ %add45.i.i66400, %secmicappendbyte.exit.i70.while.body.i49_crit_edge ]
  %xor42.i.i65396 = phi i32 [ %.promoted300, %if.then7 ], [ %xor42.i.i65397, %secmicappendbyte.exit.i70.while.body.i49_crit_edge ]
  %53 = phi i32 [ %.promoted300, %if.then7 ], [ %59, %secmicappendbyte.exit.i70.while.body.i49_crit_edge ]
  %54 = phi i32 [ %.promoted299, %if.then7 ], [ %60, %secmicappendbyte.exit.i70.while.body.i49_crit_edge ]
  %55 = phi i32 [ %.promoted297, %if.then7 ], [ %61, %secmicappendbyte.exit.i70.while.body.i49_crit_edge ]
  %56 = phi i32 [ %.promoted295, %if.then7 ], [ %62, %secmicappendbyte.exit.i70.while.body.i49_crit_edge ]
  %nbytes.addr.04.i40 = phi i32 [ 6, %if.then7 ], [ %dec.i68, %secmicappendbyte.exit.i70.while.body.i49_crit_edge ]
  %src.addr.03.i41 = phi ptr [ %arrayidx8, %if.then7 ], [ %incdec.ptr.i42, %secmicappendbyte.exit.i70.while.body.i49_crit_edge ]
  %incdec.ptr.i42 = getelementptr i8, ptr %src.addr.03.i41, i32 1
  %57 = ptrtoint ptr %src.addr.03.i41 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %src.addr.03.i41, align 1
  %conv.i.i43 = zext i8 %58 to i32
  %mul.i.i44 = shl i32 %56, 3
  %shl.i.i45 = shl i32 %conv.i.i43, %mul.i.i44
  %or.i.i46 = or i32 %shl.i.i45, %55
  %inc.i.i47 = add i32 %56, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %inc.i.i47)
  %cmp.i.i48 = icmp ugt i32 %inc.i.i47, 3
  br i1 %cmp.i.i48, label %if.then.i.i67, label %while.body.i49.secmicappendbyte.exit.i70_crit_edge

while.body.i49.secmicappendbyte.exit.i70_crit_edge: ; preds = %while.body.i49
  call void @__sanitizer_cov_trace_pc() #11
  br label %secmicappendbyte.exit.i70

if.then.i.i67:                                    ; preds = %while.body.i49
  call void @__sanitizer_cov_trace_pc() #11
  %xor.i.i50 = xor i32 %54, %or.i.i46
  %or8.i.i51 = tail call i32 @llvm.fshl.i32(i32 %xor.i.i50, i32 %xor.i.i50, i32 17) #9
  %xor9.i.i52 = xor i32 %or8.i.i51, %53
  %add.i.i53 = add i32 %xor9.i.i52, %xor.i.i50
  %and13.i.i54 = lshr i32 %add.i.i53, 8
  %shr14.i.i55 = and i32 %and13.i.i54, 16711935
  %and16.i.i56 = shl i32 %add.i.i53, 8
  %shl17.i.i57 = and i32 %and16.i.i56, -16711936
  %or18.i.i58 = or i32 %shr14.i.i55, %shl17.i.i57
  %xor20.i.i59 = xor i32 %or18.i.i58, %xor9.i.i52
  %add23.i.i60 = add i32 %xor20.i.i59, %add.i.i53
  %or29.i.i61 = tail call i32 @llvm.fshl.i32(i32 %add23.i.i60, i32 %add23.i.i60, i32 3) #9
  %xor31.i.i62 = xor i32 %or29.i.i61, %xor20.i.i59
  %add34.i.i63 = add i32 %xor31.i.i62, %add23.i.i60
  %or40.i.i64 = tail call i32 @llvm.fshl.i32(i32 %add34.i.i63, i32 %add34.i.i63, i32 30) #9
  %xor42.i.i65 = xor i32 %or40.i.i64, %xor31.i.i62
  %add45.i.i66 = add i32 %xor42.i.i65, %add34.i.i63
  br label %secmicappendbyte.exit.i70

secmicappendbyte.exit.i70:                        ; preds = %if.then.i.i67, %while.body.i49.secmicappendbyte.exit.i70_crit_edge
  %add45.i.i66400 = phi i32 [ %add45.i.i66, %if.then.i.i67 ], [ %add45.i.i66399, %while.body.i49.secmicappendbyte.exit.i70_crit_edge ]
  %xor42.i.i65397 = phi i32 [ %xor42.i.i65, %if.then.i.i67 ], [ %xor42.i.i65396, %while.body.i49.secmicappendbyte.exit.i70_crit_edge ]
  %59 = phi i32 [ %xor42.i.i65, %if.then.i.i67 ], [ %53, %while.body.i49.secmicappendbyte.exit.i70_crit_edge ]
  %60 = phi i32 [ %add45.i.i66, %if.then.i.i67 ], [ %54, %while.body.i49.secmicappendbyte.exit.i70_crit_edge ]
  %61 = phi i32 [ 0, %if.then.i.i67 ], [ %or.i.i46, %while.body.i49.secmicappendbyte.exit.i70_crit_edge ]
  %62 = phi i32 [ 0, %if.then.i.i67 ], [ %inc.i.i47, %while.body.i49.secmicappendbyte.exit.i70_crit_edge ]
  %dec.i68 = add nsw i32 %nbytes.addr.04.i40, -1
  %cmp.not.i69 = icmp eq i32 %dec.i68, 0
  br i1 %cmp.not.i69, label %if.end21.loopexit290, label %secmicappendbyte.exit.i70.while.body.i49_crit_edge

secmicappendbyte.exit.i70.while.body.i49_crit_edge: ; preds = %secmicappendbyte.exit.i70
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i49

if.else:                                          ; preds = %r8712_secmicappend.exit
  %arrayidx9 = getelementptr i8, ptr %header, i32 10
  %63 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %63)
  %.promoted301 = load i32, ptr %4, align 4
  %64 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %64)
  %.promoted303 = load i32, ptr %3, align 4
  %65 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %.promoted305 = load i32, ptr %1, align 4
  %66 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %66)
  %.promoted306 = load i32, ptr %2, align 4
  br label %while.body.i85

while.body.i85:                                   ; preds = %secmicappendbyte.exit.i106.while.body.i85_crit_edge, %if.else
  %add45.i.i102405 = phi i32 [ %.promoted305, %if.else ], [ %add45.i.i102406, %secmicappendbyte.exit.i106.while.body.i85_crit_edge ]
  %xor42.i.i101402 = phi i32 [ %.promoted306, %if.else ], [ %xor42.i.i101403, %secmicappendbyte.exit.i106.while.body.i85_crit_edge ]
  %67 = phi i32 [ %.promoted306, %if.else ], [ %73, %secmicappendbyte.exit.i106.while.body.i85_crit_edge ]
  %68 = phi i32 [ %.promoted305, %if.else ], [ %74, %secmicappendbyte.exit.i106.while.body.i85_crit_edge ]
  %69 = phi i32 [ %.promoted303, %if.else ], [ %75, %secmicappendbyte.exit.i106.while.body.i85_crit_edge ]
  %70 = phi i32 [ %.promoted301, %if.else ], [ %76, %secmicappendbyte.exit.i106.while.body.i85_crit_edge ]
  %nbytes.addr.04.i76 = phi i32 [ 6, %if.else ], [ %dec.i104, %secmicappendbyte.exit.i106.while.body.i85_crit_edge ]
  %src.addr.03.i77 = phi ptr [ %arrayidx9, %if.else ], [ %incdec.ptr.i78, %secmicappendbyte.exit.i106.while.body.i85_crit_edge ]
  %incdec.ptr.i78 = getelementptr i8, ptr %src.addr.03.i77, i32 1
  %71 = ptrtoint ptr %src.addr.03.i77 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %src.addr.03.i77, align 1
  %conv.i.i79 = zext i8 %72 to i32
  %mul.i.i80 = shl i32 %70, 3
  %shl.i.i81 = shl i32 %conv.i.i79, %mul.i.i80
  %or.i.i82 = or i32 %shl.i.i81, %69
  %inc.i.i83 = add i32 %70, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %inc.i.i83)
  %cmp.i.i84 = icmp ugt i32 %inc.i.i83, 3
  br i1 %cmp.i.i84, label %if.then.i.i103, label %while.body.i85.secmicappendbyte.exit.i106_crit_edge

while.body.i85.secmicappendbyte.exit.i106_crit_edge: ; preds = %while.body.i85
  call void @__sanitizer_cov_trace_pc() #11
  br label %secmicappendbyte.exit.i106

if.then.i.i103:                                   ; preds = %while.body.i85
  call void @__sanitizer_cov_trace_pc() #11
  %xor.i.i86 = xor i32 %68, %or.i.i82
  %or8.i.i87 = tail call i32 @llvm.fshl.i32(i32 %xor.i.i86, i32 %xor.i.i86, i32 17) #9
  %xor9.i.i88 = xor i32 %or8.i.i87, %67
  %add.i.i89 = add i32 %xor9.i.i88, %xor.i.i86
  %and13.i.i90 = lshr i32 %add.i.i89, 8
  %shr14.i.i91 = and i32 %and13.i.i90, 16711935
  %and16.i.i92 = shl i32 %add.i.i89, 8
  %shl17.i.i93 = and i32 %and16.i.i92, -16711936
  %or18.i.i94 = or i32 %shr14.i.i91, %shl17.i.i93
  %xor20.i.i95 = xor i32 %or18.i.i94, %xor9.i.i88
  %add23.i.i96 = add i32 %xor20.i.i95, %add.i.i89
  %or29.i.i97 = tail call i32 @llvm.fshl.i32(i32 %add23.i.i96, i32 %add23.i.i96, i32 3) #9
  %xor31.i.i98 = xor i32 %or29.i.i97, %xor20.i.i95
  %add34.i.i99 = add i32 %xor31.i.i98, %add23.i.i96
  %or40.i.i100 = tail call i32 @llvm.fshl.i32(i32 %add34.i.i99, i32 %add34.i.i99, i32 30) #9
  %xor42.i.i101 = xor i32 %or40.i.i100, %xor31.i.i98
  %add45.i.i102 = add i32 %xor42.i.i101, %add34.i.i99
  br label %secmicappendbyte.exit.i106

secmicappendbyte.exit.i106:                       ; preds = %if.then.i.i103, %while.body.i85.secmicappendbyte.exit.i106_crit_edge
  %add45.i.i102406 = phi i32 [ %add45.i.i102, %if.then.i.i103 ], [ %add45.i.i102405, %while.body.i85.secmicappendbyte.exit.i106_crit_edge ]
  %xor42.i.i101403 = phi i32 [ %xor42.i.i101, %if.then.i.i103 ], [ %xor42.i.i101402, %while.body.i85.secmicappendbyte.exit.i106_crit_edge ]
  %73 = phi i32 [ %xor42.i.i101, %if.then.i.i103 ], [ %67, %while.body.i85.secmicappendbyte.exit.i106_crit_edge ]
  %74 = phi i32 [ %add45.i.i102, %if.then.i.i103 ], [ %68, %while.body.i85.secmicappendbyte.exit.i106_crit_edge ]
  %75 = phi i32 [ 0, %if.then.i.i103 ], [ %or.i.i82, %while.body.i85.secmicappendbyte.exit.i106_crit_edge ]
  %76 = phi i32 [ 0, %if.then.i.i103 ], [ %inc.i.i83, %while.body.i85.secmicappendbyte.exit.i106_crit_edge ]
  %dec.i104 = add nsw i32 %nbytes.addr.04.i76, -1
  %cmp.not.i105 = icmp eq i32 %dec.i104, 0
  br i1 %cmp.not.i105, label %if.end21.loopexit289, label %secmicappendbyte.exit.i106.while.body.i85_crit_edge

secmicappendbyte.exit.i106.while.body.i85_crit_edge: ; preds = %secmicappendbyte.exit.i106
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i85

if.else10:                                        ; preds = %entry
  %arrayidx11 = getelementptr i8, ptr %header, i32 4
  %77 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %77)
  %.promoted307 = load i32, ptr %4, align 4
  %78 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %78)
  %.promoted309 = load i32, ptr %3, align 4
  %79 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %79)
  %.promoted311 = load i32, ptr %1, align 4
  %80 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %80)
  %.promoted312 = load i32, ptr %2, align 4
  %.promoted461 = load i32, ptr %1, align 1
  br label %while.body.i121

while.body.i121:                                  ; preds = %secmicappendbyte.exit.i142.while.body.i121_crit_edge, %if.else10
  %add45.i.i138462 = phi i32 [ %.promoted461, %if.else10 ], [ %add45.i.i138463, %secmicappendbyte.exit.i142.while.body.i121_crit_edge ]
  %xor42.i.i137408 = phi i32 [ %.promoted312, %if.else10 ], [ %xor42.i.i137409, %secmicappendbyte.exit.i142.while.body.i121_crit_edge ]
  %81 = phi i32 [ %.promoted312, %if.else10 ], [ %87, %secmicappendbyte.exit.i142.while.body.i121_crit_edge ]
  %82 = phi i32 [ %.promoted311, %if.else10 ], [ %88, %secmicappendbyte.exit.i142.while.body.i121_crit_edge ]
  %83 = phi i32 [ %.promoted309, %if.else10 ], [ %89, %secmicappendbyte.exit.i142.while.body.i121_crit_edge ]
  %84 = phi i32 [ %.promoted307, %if.else10 ], [ %90, %secmicappendbyte.exit.i142.while.body.i121_crit_edge ]
  %nbytes.addr.04.i112 = phi i32 [ 6, %if.else10 ], [ %dec.i140, %secmicappendbyte.exit.i142.while.body.i121_crit_edge ]
  %src.addr.03.i113 = phi ptr [ %arrayidx11, %if.else10 ], [ %incdec.ptr.i114, %secmicappendbyte.exit.i142.while.body.i121_crit_edge ]
  %incdec.ptr.i114 = getelementptr i8, ptr %src.addr.03.i113, i32 1
  %85 = ptrtoint ptr %src.addr.03.i113 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %src.addr.03.i113, align 1
  %conv.i.i115 = zext i8 %86 to i32
  %mul.i.i116 = shl i32 %84, 3
  %shl.i.i117 = shl i32 %conv.i.i115, %mul.i.i116
  %or.i.i118 = or i32 %shl.i.i117, %83
  %inc.i.i119 = add i32 %84, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %inc.i.i119)
  %cmp.i.i120 = icmp ugt i32 %inc.i.i119, 3
  br i1 %cmp.i.i120, label %if.then.i.i139, label %while.body.i121.secmicappendbyte.exit.i142_crit_edge

while.body.i121.secmicappendbyte.exit.i142_crit_edge: ; preds = %while.body.i121
  call void @__sanitizer_cov_trace_pc() #11
  br label %secmicappendbyte.exit.i142

if.then.i.i139:                                   ; preds = %while.body.i121
  call void @__sanitizer_cov_trace_pc() #11
  %xor.i.i122 = xor i32 %82, %or.i.i118
  %or8.i.i123 = tail call i32 @llvm.fshl.i32(i32 %xor.i.i122, i32 %xor.i.i122, i32 17) #9
  %xor9.i.i124 = xor i32 %or8.i.i123, %81
  %add.i.i125 = add i32 %xor9.i.i124, %xor.i.i122
  %and13.i.i126 = lshr i32 %add.i.i125, 8
  %shr14.i.i127 = and i32 %and13.i.i126, 16711935
  %and16.i.i128 = shl i32 %add.i.i125, 8
  %shl17.i.i129 = and i32 %and16.i.i128, -16711936
  %or18.i.i130 = or i32 %shr14.i.i127, %shl17.i.i129
  %xor20.i.i131 = xor i32 %or18.i.i130, %xor9.i.i124
  %add23.i.i132 = add i32 %xor20.i.i131, %add.i.i125
  %or29.i.i133 = tail call i32 @llvm.fshl.i32(i32 %add23.i.i132, i32 %add23.i.i132, i32 3) #9
  %xor31.i.i134 = xor i32 %or29.i.i133, %xor20.i.i131
  %add34.i.i135 = add i32 %xor31.i.i134, %add23.i.i132
  %or40.i.i136 = tail call i32 @llvm.fshl.i32(i32 %add34.i.i135, i32 %add34.i.i135, i32 30) #9
  %xor42.i.i137 = xor i32 %or40.i.i136, %xor31.i.i134
  %add45.i.i138 = add i32 %xor42.i.i137, %add34.i.i135
  br label %secmicappendbyte.exit.i142

secmicappendbyte.exit.i142:                       ; preds = %if.then.i.i139, %while.body.i121.secmicappendbyte.exit.i142_crit_edge
  %add45.i.i138463 = phi i32 [ %add45.i.i138, %if.then.i.i139 ], [ %add45.i.i138462, %while.body.i121.secmicappendbyte.exit.i142_crit_edge ]
  %xor42.i.i137409 = phi i32 [ %xor42.i.i137, %if.then.i.i139 ], [ %xor42.i.i137408, %while.body.i121.secmicappendbyte.exit.i142_crit_edge ]
  %87 = phi i32 [ %xor42.i.i137, %if.then.i.i139 ], [ %81, %while.body.i121.secmicappendbyte.exit.i142_crit_edge ]
  %88 = phi i32 [ %add45.i.i138, %if.then.i.i139 ], [ %82, %while.body.i121.secmicappendbyte.exit.i142_crit_edge ]
  %89 = phi i32 [ 0, %if.then.i.i139 ], [ %or.i.i118, %while.body.i121.secmicappendbyte.exit.i142_crit_edge ]
  %90 = phi i32 [ 0, %if.then.i.i139 ], [ %inc.i.i119, %while.body.i121.secmicappendbyte.exit.i142_crit_edge ]
  %dec.i140 = add nsw i32 %nbytes.addr.04.i112, -1
  %cmp.not.i141 = icmp eq i32 %dec.i140, 0
  br i1 %cmp.not.i141, label %r8712_secmicappend.exit143, label %secmicappendbyte.exit.i142.while.body.i121_crit_edge

secmicappendbyte.exit.i142.while.body.i121_crit_edge: ; preds = %secmicappendbyte.exit.i142
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i121

r8712_secmicappend.exit143:                       ; preds = %secmicappendbyte.exit.i142
  %91 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %91, i32 4)
  store i32 %add45.i.i138463, ptr %1, align 1
  %92 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %xor42.i.i137409, ptr %2, align 4
  %93 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %90, ptr %4, align 4
  %94 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %89, ptr %3, align 4
  %95 = and i8 %28, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %tobool15.not = icmp eq i8 %95, 0
  br i1 %tobool15.not, label %if.else18, label %if.then16

if.then16:                                        ; preds = %r8712_secmicappend.exit143
  %arrayidx17 = getelementptr i8, ptr %header, i32 16
  %96 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %96)
  %.promoted313 = load i32, ptr %4, align 4
  %97 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %97)
  %.promoted315 = load i32, ptr %3, align 4
  %98 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %98)
  %.promoted317 = load i32, ptr %1, align 4
  %99 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %99)
  %.promoted318 = load i32, ptr %2, align 4
  %.promoted464 = load i32, ptr %2, align 1
  %.promoted467 = load i32, ptr %1, align 1
  br label %while.body.i157

while.body.i157:                                  ; preds = %secmicappendbyte.exit.i178.while.body.i157_crit_edge, %if.then16
  %add45.i.i174468 = phi i32 [ %.promoted467, %if.then16 ], [ %add45.i.i174469, %secmicappendbyte.exit.i178.while.body.i157_crit_edge ]
  %xor42.i.i173465 = phi i32 [ %.promoted464, %if.then16 ], [ %xor42.i.i173466, %secmicappendbyte.exit.i178.while.body.i157_crit_edge ]
  %100 = phi i32 [ %.promoted318, %if.then16 ], [ %106, %secmicappendbyte.exit.i178.while.body.i157_crit_edge ]
  %101 = phi i32 [ %.promoted317, %if.then16 ], [ %107, %secmicappendbyte.exit.i178.while.body.i157_crit_edge ]
  %102 = phi i32 [ %.promoted315, %if.then16 ], [ %108, %secmicappendbyte.exit.i178.while.body.i157_crit_edge ]
  %103 = phi i32 [ %.promoted313, %if.then16 ], [ %109, %secmicappendbyte.exit.i178.while.body.i157_crit_edge ]
  %nbytes.addr.04.i148 = phi i32 [ 6, %if.then16 ], [ %dec.i176, %secmicappendbyte.exit.i178.while.body.i157_crit_edge ]
  %src.addr.03.i149 = phi ptr [ %arrayidx17, %if.then16 ], [ %incdec.ptr.i150, %secmicappendbyte.exit.i178.while.body.i157_crit_edge ]
  %incdec.ptr.i150 = getelementptr i8, ptr %src.addr.03.i149, i32 1
  %104 = ptrtoint ptr %src.addr.03.i149 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %src.addr.03.i149, align 1
  %conv.i.i151 = zext i8 %105 to i32
  %mul.i.i152 = shl i32 %103, 3
  %shl.i.i153 = shl i32 %conv.i.i151, %mul.i.i152
  %or.i.i154 = or i32 %shl.i.i153, %102
  %inc.i.i155 = add i32 %103, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %inc.i.i155)
  %cmp.i.i156 = icmp ugt i32 %inc.i.i155, 3
  br i1 %cmp.i.i156, label %if.then.i.i175, label %while.body.i157.secmicappendbyte.exit.i178_crit_edge

while.body.i157.secmicappendbyte.exit.i178_crit_edge: ; preds = %while.body.i157
  call void @__sanitizer_cov_trace_pc() #11
  br label %secmicappendbyte.exit.i178

if.then.i.i175:                                   ; preds = %while.body.i157
  call void @__sanitizer_cov_trace_pc() #11
  %xor.i.i158 = xor i32 %101, %or.i.i154
  %or8.i.i159 = tail call i32 @llvm.fshl.i32(i32 %xor.i.i158, i32 %xor.i.i158, i32 17) #9
  %xor9.i.i160 = xor i32 %or8.i.i159, %100
  %add.i.i161 = add i32 %xor9.i.i160, %xor.i.i158
  %and13.i.i162 = lshr i32 %add.i.i161, 8
  %shr14.i.i163 = and i32 %and13.i.i162, 16711935
  %and16.i.i164 = shl i32 %add.i.i161, 8
  %shl17.i.i165 = and i32 %and16.i.i164, -16711936
  %or18.i.i166 = or i32 %shr14.i.i163, %shl17.i.i165
  %xor20.i.i167 = xor i32 %or18.i.i166, %xor9.i.i160
  %add23.i.i168 = add i32 %xor20.i.i167, %add.i.i161
  %or29.i.i169 = tail call i32 @llvm.fshl.i32(i32 %add23.i.i168, i32 %add23.i.i168, i32 3) #9
  %xor31.i.i170 = xor i32 %or29.i.i169, %xor20.i.i167
  %add34.i.i171 = add i32 %xor31.i.i170, %add23.i.i168
  %or40.i.i172 = tail call i32 @llvm.fshl.i32(i32 %add34.i.i171, i32 %add34.i.i171, i32 30) #9
  %xor42.i.i173 = xor i32 %or40.i.i172, %xor31.i.i170
  %add45.i.i174 = add i32 %xor42.i.i173, %add34.i.i171
  br label %secmicappendbyte.exit.i178

secmicappendbyte.exit.i178:                       ; preds = %if.then.i.i175, %while.body.i157.secmicappendbyte.exit.i178_crit_edge
  %add45.i.i174469 = phi i32 [ %add45.i.i174, %if.then.i.i175 ], [ %add45.i.i174468, %while.body.i157.secmicappendbyte.exit.i178_crit_edge ]
  %xor42.i.i173466 = phi i32 [ %xor42.i.i173, %if.then.i.i175 ], [ %xor42.i.i173465, %while.body.i157.secmicappendbyte.exit.i178_crit_edge ]
  %106 = phi i32 [ %xor42.i.i173, %if.then.i.i175 ], [ %100, %while.body.i157.secmicappendbyte.exit.i178_crit_edge ]
  %107 = phi i32 [ %add45.i.i174, %if.then.i.i175 ], [ %101, %while.body.i157.secmicappendbyte.exit.i178_crit_edge ]
  %108 = phi i32 [ 0, %if.then.i.i175 ], [ %or.i.i154, %while.body.i157.secmicappendbyte.exit.i178_crit_edge ]
  %109 = phi i32 [ 0, %if.then.i.i175 ], [ %inc.i.i155, %while.body.i157.secmicappendbyte.exit.i178_crit_edge ]
  %dec.i176 = add nsw i32 %nbytes.addr.04.i148, -1
  %cmp.not.i177 = icmp eq i32 %dec.i176, 0
  br i1 %cmp.not.i177, label %if.end21.loopexit288, label %secmicappendbyte.exit.i178.while.body.i157_crit_edge

secmicappendbyte.exit.i178.while.body.i157_crit_edge: ; preds = %secmicappendbyte.exit.i178
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i157

if.else18:                                        ; preds = %r8712_secmicappend.exit143
  %arrayidx19 = getelementptr i8, ptr %header, i32 10
  %110 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %110)
  %.promoted319 = load i32, ptr %4, align 4
  %111 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %111)
  %.promoted321 = load i32, ptr %3, align 4
  %112 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %112)
  %.promoted323 = load i32, ptr %1, align 4
  %113 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %113)
  %.promoted325 = load i32, ptr %2, align 4
  br label %while.body.i193

while.body.i193:                                  ; preds = %secmicappendbyte.exit.i214.while.body.i193_crit_edge, %if.else18
  %114 = phi i32 [ %.promoted325, %if.else18 ], [ %120, %secmicappendbyte.exit.i214.while.body.i193_crit_edge ]
  %115 = phi i32 [ %.promoted323, %if.else18 ], [ %121, %secmicappendbyte.exit.i214.while.body.i193_crit_edge ]
  %116 = phi i32 [ %.promoted321, %if.else18 ], [ %122, %secmicappendbyte.exit.i214.while.body.i193_crit_edge ]
  %117 = phi i32 [ %.promoted319, %if.else18 ], [ %123, %secmicappendbyte.exit.i214.while.body.i193_crit_edge ]
  %nbytes.addr.04.i184 = phi i32 [ 6, %if.else18 ], [ %dec.i212, %secmicappendbyte.exit.i214.while.body.i193_crit_edge ]
  %src.addr.03.i185 = phi ptr [ %arrayidx19, %if.else18 ], [ %incdec.ptr.i186, %secmicappendbyte.exit.i214.while.body.i193_crit_edge ]
  %incdec.ptr.i186 = getelementptr i8, ptr %src.addr.03.i185, i32 1
  %118 = ptrtoint ptr %src.addr.03.i185 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %src.addr.03.i185, align 1
  %conv.i.i187 = zext i8 %119 to i32
  %mul.i.i188 = shl i32 %117, 3
  %shl.i.i189 = shl i32 %conv.i.i187, %mul.i.i188
  %or.i.i190 = or i32 %shl.i.i189, %116
  %inc.i.i191 = add i32 %117, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %inc.i.i191)
  %cmp.i.i192 = icmp ugt i32 %inc.i.i191, 3
  br i1 %cmp.i.i192, label %if.then.i.i211, label %while.body.i193.secmicappendbyte.exit.i214_crit_edge

while.body.i193.secmicappendbyte.exit.i214_crit_edge: ; preds = %while.body.i193
  call void @__sanitizer_cov_trace_pc() #11
  br label %secmicappendbyte.exit.i214

if.then.i.i211:                                   ; preds = %while.body.i193
  call void @__sanitizer_cov_trace_pc() #11
  %xor.i.i194 = xor i32 %115, %or.i.i190
  %or8.i.i195 = tail call i32 @llvm.fshl.i32(i32 %xor.i.i194, i32 %xor.i.i194, i32 17) #9
  %xor9.i.i196 = xor i32 %or8.i.i195, %114
  %add.i.i197 = add i32 %xor9.i.i196, %xor.i.i194
  %and13.i.i198 = lshr i32 %add.i.i197, 8
  %shr14.i.i199 = and i32 %and13.i.i198, 16711935
  %and16.i.i200 = shl i32 %add.i.i197, 8
  %shl17.i.i201 = and i32 %and16.i.i200, -16711936
  %or18.i.i202 = or i32 %shr14.i.i199, %shl17.i.i201
  %xor20.i.i203 = xor i32 %or18.i.i202, %xor9.i.i196
  %add23.i.i204 = add i32 %xor20.i.i203, %add.i.i197
  %or29.i.i205 = tail call i32 @llvm.fshl.i32(i32 %add23.i.i204, i32 %add23.i.i204, i32 3) #9
  %xor31.i.i206 = xor i32 %or29.i.i205, %xor20.i.i203
  %add34.i.i207 = add i32 %xor31.i.i206, %add23.i.i204
  %or40.i.i208 = tail call i32 @llvm.fshl.i32(i32 %add34.i.i207, i32 %add34.i.i207, i32 30) #9
  %xor42.i.i209 = xor i32 %or40.i.i208, %xor31.i.i206
  %add45.i.i210 = add i32 %xor42.i.i209, %add34.i.i207
  br label %secmicappendbyte.exit.i214

secmicappendbyte.exit.i214:                       ; preds = %if.then.i.i211, %while.body.i193.secmicappendbyte.exit.i214_crit_edge
  %120 = phi i32 [ %xor42.i.i209, %if.then.i.i211 ], [ %114, %while.body.i193.secmicappendbyte.exit.i214_crit_edge ]
  %121 = phi i32 [ %add45.i.i210, %if.then.i.i211 ], [ %115, %while.body.i193.secmicappendbyte.exit.i214_crit_edge ]
  %122 = phi i32 [ 0, %if.then.i.i211 ], [ %or.i.i190, %while.body.i193.secmicappendbyte.exit.i214_crit_edge ]
  %123 = phi i32 [ 0, %if.then.i.i211 ], [ %inc.i.i191, %while.body.i193.secmicappendbyte.exit.i214_crit_edge ]
  %dec.i212 = add nsw i32 %nbytes.addr.04.i184, -1
  %cmp.not.i213 = icmp eq i32 %dec.i212, 0
  br i1 %cmp.not.i213, label %if.end21.loopexit, label %secmicappendbyte.exit.i214.while.body.i193_crit_edge

secmicappendbyte.exit.i214.while.body.i193_crit_edge: ; preds = %secmicappendbyte.exit.i214
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i193

if.end21.loopexit:                                ; preds = %secmicappendbyte.exit.i214
  call void @__sanitizer_cov_trace_pc() #11
  %124 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %123, ptr %4, align 4
  %125 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %122, ptr %3, align 4
  %126 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %121, ptr %1, align 4
  %127 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %120, ptr %2, align 4
  br label %if.end21

if.end21.loopexit288:                             ; preds = %secmicappendbyte.exit.i178
  call void @__sanitizer_cov_trace_pc() #11
  %128 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %128, i32 4)
  store i32 %xor42.i.i173466, ptr %2, align 1
  %129 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %129, i32 4)
  store i32 %add45.i.i174469, ptr %1, align 1
  %130 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %109, ptr %4, align 4
  %131 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %108, ptr %3, align 4
  br label %if.end21

if.end21.loopexit289:                             ; preds = %secmicappendbyte.exit.i106
  call void @__sanitizer_cov_trace_pc() #11
  %132 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %xor42.i.i101403, ptr %2, align 4
  %133 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %add45.i.i102406, ptr %1, align 4
  %134 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %76, ptr %4, align 4
  %135 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %75, ptr %3, align 4
  br label %if.end21

if.end21.loopexit290:                             ; preds = %secmicappendbyte.exit.i70
  call void @__sanitizer_cov_trace_pc() #11
  %136 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %xor42.i.i65397, ptr %2, align 4
  %137 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %add45.i.i66400, ptr %1, align 4
  %138 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %62, ptr %4, align 4
  %139 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %61, ptr %3, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.end21.loopexit290, %if.end21.loopexit289, %if.end21.loopexit288, %if.end21.loopexit
  %140 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %140)
  %.promoted327 = load i32, ptr %4, align 4
  %141 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %141)
  %.promoted329 = load i32, ptr %3, align 4
  %142 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %142)
  %.promoted331 = load i32, ptr %1, align 4
  %143 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %143)
  %.promoted333 = load i32, ptr %2, align 4
  %conv.i.i223 = zext i8 %pri to i32
  %mul.i.i224 = shl i32 %.promoted327, 3
  %shl.i.i225 = shl i32 %conv.i.i223, %mul.i.i224
  %or.i.i226 = or i32 %shl.i.i225, %.promoted329
  %144 = add i32 %.promoted327, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %144)
  %cmp.i.i228 = icmp ult i32 %144, -4
  br i1 %cmp.i.i228, label %secmicappendbyte.exit.i250.thread, label %secmicappendbyte.exit.i250

secmicappendbyte.exit.i250.thread:                ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  %xor.i.i230 = xor i32 %.promoted331, %or.i.i226
  %or8.i.i231 = tail call i32 @llvm.fshl.i32(i32 %xor.i.i230, i32 %xor.i.i230, i32 17) #9
  %xor9.i.i232 = xor i32 %or8.i.i231, %.promoted333
  %add.i.i233 = add i32 %xor9.i.i232, %xor.i.i230
  %and13.i.i234 = lshr i32 %add.i.i233, 8
  %shr14.i.i235 = and i32 %and13.i.i234, 16711935
  %and16.i.i236 = shl i32 %add.i.i233, 8
  %shl17.i.i237 = and i32 %and16.i.i236, -16711936
  %or18.i.i238 = or i32 %shr14.i.i235, %shl17.i.i237
  %xor20.i.i239 = xor i32 %or18.i.i238, %xor9.i.i232
  %add23.i.i240 = add i32 %xor20.i.i239, %add.i.i233
  %or29.i.i241 = tail call i32 @llvm.fshl.i32(i32 %add23.i.i240, i32 %add23.i.i240, i32 3) #9
  %xor31.i.i242 = xor i32 %or29.i.i241, %xor20.i.i239
  %add34.i.i243 = add i32 %xor31.i.i242, %add23.i.i240
  %or40.i.i244 = tail call i32 @llvm.fshl.i32(i32 %add34.i.i243, i32 %add34.i.i243, i32 30) #9
  %xor42.i.i245 = xor i32 %or40.i.i244, %xor31.i.i242
  %add45.i.i246 = add i32 %xor42.i.i245, %add34.i.i243
  br label %secmicappendbyte.exit.i250.2

secmicappendbyte.exit.i250:                       ; preds = %if.end21
  %145 = add i32 %.promoted327, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %145)
  %cmp.i.i228.1 = icmp ult i32 %145, -4
  br i1 %cmp.i.i228.1, label %if.then.i.i247.1, label %secmicappendbyte.exit.i250.1

if.then.i.i247.1:                                 ; preds = %secmicappendbyte.exit.i250
  call void @__sanitizer_cov_trace_pc() #11
  %xor.i.i230.1 = xor i32 %.promoted331, %or.i.i226
  %or8.i.i231.1 = tail call i32 @llvm.fshl.i32(i32 %xor.i.i230.1, i32 %xor.i.i230.1, i32 17) #9
  %xor9.i.i232.1 = xor i32 %or8.i.i231.1, %.promoted333
  %add.i.i233.1 = add i32 %xor9.i.i232.1, %xor.i.i230.1
  %and13.i.i234.1 = lshr i32 %add.i.i233.1, 8
  %shr14.i.i235.1 = and i32 %and13.i.i234.1, 16711935
  %and16.i.i236.1 = shl i32 %add.i.i233.1, 8
  %shl17.i.i237.1 = and i32 %and16.i.i236.1, -16711936
  %or18.i.i238.1 = or i32 %shr14.i.i235.1, %shl17.i.i237.1
  %xor20.i.i239.1 = xor i32 %or18.i.i238.1, %xor9.i.i232.1
  %add23.i.i240.1 = add i32 %xor20.i.i239.1, %add.i.i233.1
  %or29.i.i241.1 = tail call i32 @llvm.fshl.i32(i32 %add23.i.i240.1, i32 %add23.i.i240.1, i32 3) #9
  %xor31.i.i242.1 = xor i32 %or29.i.i241.1, %xor20.i.i239.1
  %add34.i.i243.1 = add i32 %xor31.i.i242.1, %add23.i.i240.1
  %or40.i.i244.1 = tail call i32 @llvm.fshl.i32(i32 %add34.i.i243.1, i32 %add34.i.i243.1, i32 30) #9
  %xor42.i.i245.1 = xor i32 %or40.i.i244.1, %xor31.i.i242.1
  %add45.i.i246.1 = add i32 %xor42.i.i245.1, %add34.i.i243.1
  br label %secmicappendbyte.exit.i250.2

secmicappendbyte.exit.i250.1:                     ; preds = %secmicappendbyte.exit.i250
  %inc.i.i227.2 = add i32 %.promoted327, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %inc.i.i227.2)
  %cmp.i.i228.2 = icmp ugt i32 %inc.i.i227.2, 3
  br i1 %cmp.i.i228.2, label %secmicappendbyte.exit.i250.2.thread, label %secmicappendbyte.exit.i250.1.secmicappendbyte.exit.i250.2_crit_edge

secmicappendbyte.exit.i250.1.secmicappendbyte.exit.i250.2_crit_edge: ; preds = %secmicappendbyte.exit.i250.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %secmicappendbyte.exit.i250.2

secmicappendbyte.exit.i250.2.thread:              ; preds = %secmicappendbyte.exit.i250.1
  call void @__sanitizer_cov_trace_pc() #11
  %xor.i.i230.2 = xor i32 %.promoted331, %or.i.i226
  %or8.i.i231.2 = tail call i32 @llvm.fshl.i32(i32 %xor.i.i230.2, i32 %xor.i.i230.2, i32 17) #9
  %xor9.i.i232.2 = xor i32 %or8.i.i231.2, %.promoted333
  %add.i.i233.2 = add i32 %xor9.i.i232.2, %xor.i.i230.2
  %and13.i.i234.2 = lshr i32 %add.i.i233.2, 8
  %shr14.i.i235.2 = and i32 %and13.i.i234.2, 16711935
  %and16.i.i236.2 = shl i32 %add.i.i233.2, 8
  %shl17.i.i237.2 = and i32 %and16.i.i236.2, -16711936
  %or18.i.i238.2 = or i32 %shr14.i.i235.2, %shl17.i.i237.2
  %xor20.i.i239.2 = xor i32 %or18.i.i238.2, %xor9.i.i232.2
  %add23.i.i240.2 = add i32 %xor20.i.i239.2, %add.i.i233.2
  %or29.i.i241.2 = tail call i32 @llvm.fshl.i32(i32 %add23.i.i240.2, i32 %add23.i.i240.2, i32 3) #9
  %xor31.i.i242.2 = xor i32 %or29.i.i241.2, %xor20.i.i239.2
  %add34.i.i243.2 = add i32 %xor31.i.i242.2, %add23.i.i240.2
  %or40.i.i244.2 = tail call i32 @llvm.fshl.i32(i32 %add34.i.i243.2, i32 %add34.i.i243.2, i32 30) #9
  %xor42.i.i245.2 = xor i32 %or40.i.i244.2, %xor31.i.i242.2
  %add45.i.i246.2 = add i32 %xor42.i.i245.2, %add34.i.i243.2
  br label %secmicappendbyte.exit.i250.3

secmicappendbyte.exit.i250.2:                     ; preds = %secmicappendbyte.exit.i250.1.secmicappendbyte.exit.i250.2_crit_edge, %if.then.i.i247.1, %secmicappendbyte.exit.i250.thread
  %146 = phi i32 [ %.promoted333, %secmicappendbyte.exit.i250.1.secmicappendbyte.exit.i250.2_crit_edge ], [ %xor42.i.i245, %secmicappendbyte.exit.i250.thread ], [ %xor42.i.i245.1, %if.then.i.i247.1 ]
  %147 = phi i32 [ %.promoted331, %secmicappendbyte.exit.i250.1.secmicappendbyte.exit.i250.2_crit_edge ], [ %add45.i.i246, %secmicappendbyte.exit.i250.thread ], [ %add45.i.i246.1, %if.then.i.i247.1 ]
  %148 = phi i32 [ %or.i.i226, %secmicappendbyte.exit.i250.1.secmicappendbyte.exit.i250.2_crit_edge ], [ 0, %secmicappendbyte.exit.i250.thread ], [ 0, %if.then.i.i247.1 ]
  %149 = phi i32 [ %inc.i.i227.2, %secmicappendbyte.exit.i250.1.secmicappendbyte.exit.i250.2_crit_edge ], [ 2, %secmicappendbyte.exit.i250.thread ], [ 1, %if.then.i.i247.1 ]
  %inc.i.i227.3 = add nuw nsw i32 %149, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %149)
  %cmp.i.i228.3 = icmp ugt i32 %149, 2
  br i1 %cmp.i.i228.3, label %if.then.i.i247.3, label %secmicappendbyte.exit.i250.2.secmicappendbyte.exit.i250.3_crit_edge

secmicappendbyte.exit.i250.2.secmicappendbyte.exit.i250.3_crit_edge: ; preds = %secmicappendbyte.exit.i250.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %secmicappendbyte.exit.i250.3

if.then.i.i247.3:                                 ; preds = %secmicappendbyte.exit.i250.2
  call void @__sanitizer_cov_trace_pc() #11
  %xor.i.i230.3 = xor i32 %147, %148
  %or8.i.i231.3 = tail call i32 @llvm.fshl.i32(i32 %xor.i.i230.3, i32 %xor.i.i230.3, i32 17) #9
  %xor9.i.i232.3 = xor i32 %or8.i.i231.3, %146
  %add.i.i233.3 = add i32 %xor9.i.i232.3, %xor.i.i230.3
  %and13.i.i234.3 = lshr i32 %add.i.i233.3, 8
  %shr14.i.i235.3 = and i32 %and13.i.i234.3, 16711935
  %and16.i.i236.3 = shl i32 %add.i.i233.3, 8
  %shl17.i.i237.3 = and i32 %and16.i.i236.3, -16711936
  %or18.i.i238.3 = or i32 %shr14.i.i235.3, %shl17.i.i237.3
  %xor20.i.i239.3 = xor i32 %or18.i.i238.3, %xor9.i.i232.3
  %add23.i.i240.3 = add i32 %xor20.i.i239.3, %add.i.i233.3
  %or29.i.i241.3 = tail call i32 @llvm.fshl.i32(i32 %add23.i.i240.3, i32 %add23.i.i240.3, i32 3) #9
  %xor31.i.i242.3 = xor i32 %or29.i.i241.3, %xor20.i.i239.3
  %add34.i.i243.3 = add i32 %xor31.i.i242.3, %add23.i.i240.3
  %or40.i.i244.3 = tail call i32 @llvm.fshl.i32(i32 %add34.i.i243.3, i32 %add34.i.i243.3, i32 30) #9
  %xor42.i.i245.3 = xor i32 %or40.i.i244.3, %xor31.i.i242.3
  %add45.i.i246.3 = add i32 %xor42.i.i245.3, %add34.i.i243.3
  br label %secmicappendbyte.exit.i250.3

secmicappendbyte.exit.i250.3:                     ; preds = %if.then.i.i247.3, %secmicappendbyte.exit.i250.2.secmicappendbyte.exit.i250.3_crit_edge, %secmicappendbyte.exit.i250.2.thread
  %150 = phi i32 [ %xor42.i.i245.3, %if.then.i.i247.3 ], [ %146, %secmicappendbyte.exit.i250.2.secmicappendbyte.exit.i250.3_crit_edge ], [ %xor42.i.i245.2, %secmicappendbyte.exit.i250.2.thread ]
  %151 = phi i32 [ %add45.i.i246.3, %if.then.i.i247.3 ], [ %147, %secmicappendbyte.exit.i250.2.secmicappendbyte.exit.i250.3_crit_edge ], [ %add45.i.i246.2, %secmicappendbyte.exit.i250.2.thread ]
  %152 = phi i32 [ 0, %if.then.i.i247.3 ], [ %148, %secmicappendbyte.exit.i250.2.secmicappendbyte.exit.i250.3_crit_edge ], [ 0, %secmicappendbyte.exit.i250.2.thread ]
  %153 = phi i32 [ 0, %if.then.i.i247.3 ], [ %inc.i.i227.3, %secmicappendbyte.exit.i250.2.secmicappendbyte.exit.i250.3_crit_edge ], [ 1, %secmicappendbyte.exit.i250.2.thread ]
  %154 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %153, ptr %4, align 4
  %155 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %152, ptr %3, align 4
  %156 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %151, ptr %1, align 4
  %157 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %150, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %data_len)
  %cmp.not2.i = icmp eq i32 %data_len, 0
  br i1 %cmp.not2.i, label %secmicappendbyte.exit.i250.3.r8712_secmicappend.exit287_crit_edge, label %while.body.i265.preheader

secmicappendbyte.exit.i250.3.r8712_secmicappend.exit287_crit_edge: ; preds = %secmicappendbyte.exit.i250.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %r8712_secmicappend.exit287

while.body.i265.preheader:                        ; preds = %secmicappendbyte.exit.i250.3
  %158 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %158)
  %.promoted335 = load i32, ptr %4, align 4
  %159 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %159)
  %.promoted337 = load i32, ptr %3, align 4
  %160 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %160)
  %.promoted339 = load i32, ptr %1, align 4
  %161 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %161)
  %.promoted341 = load i32, ptr %2, align 4
  br label %while.body.i265

while.body.i265:                                  ; preds = %secmicappendbyte.exit.i286.while.body.i265_crit_edge, %while.body.i265.preheader
  %162 = phi i32 [ %168, %secmicappendbyte.exit.i286.while.body.i265_crit_edge ], [ %.promoted341, %while.body.i265.preheader ]
  %163 = phi i32 [ %169, %secmicappendbyte.exit.i286.while.body.i265_crit_edge ], [ %.promoted339, %while.body.i265.preheader ]
  %164 = phi i32 [ %170, %secmicappendbyte.exit.i286.while.body.i265_crit_edge ], [ %.promoted337, %while.body.i265.preheader ]
  %165 = phi i32 [ %171, %secmicappendbyte.exit.i286.while.body.i265_crit_edge ], [ %.promoted335, %while.body.i265.preheader ]
  %nbytes.addr.04.i256 = phi i32 [ %dec.i284, %secmicappendbyte.exit.i286.while.body.i265_crit_edge ], [ %data_len, %while.body.i265.preheader ]
  %src.addr.03.i257 = phi ptr [ %incdec.ptr.i258, %secmicappendbyte.exit.i286.while.body.i265_crit_edge ], [ %data, %while.body.i265.preheader ]
  %incdec.ptr.i258 = getelementptr i8, ptr %src.addr.03.i257, i32 1
  %166 = ptrtoint ptr %src.addr.03.i257 to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %src.addr.03.i257, align 1
  %conv.i.i259 = zext i8 %167 to i32
  %mul.i.i260 = shl i32 %165, 3
  %shl.i.i261 = shl i32 %conv.i.i259, %mul.i.i260
  %or.i.i262 = or i32 %shl.i.i261, %164
  %inc.i.i263 = add i32 %165, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %inc.i.i263)
  %cmp.i.i264 = icmp ugt i32 %inc.i.i263, 3
  br i1 %cmp.i.i264, label %if.then.i.i283, label %while.body.i265.secmicappendbyte.exit.i286_crit_edge

while.body.i265.secmicappendbyte.exit.i286_crit_edge: ; preds = %while.body.i265
  call void @__sanitizer_cov_trace_pc() #11
  br label %secmicappendbyte.exit.i286

if.then.i.i283:                                   ; preds = %while.body.i265
  call void @__sanitizer_cov_trace_pc() #11
  %xor.i.i266 = xor i32 %163, %or.i.i262
  %or8.i.i267 = tail call i32 @llvm.fshl.i32(i32 %xor.i.i266, i32 %xor.i.i266, i32 17) #9
  %xor9.i.i268 = xor i32 %or8.i.i267, %162
  %add.i.i269 = add i32 %xor9.i.i268, %xor.i.i266
  %and13.i.i270 = lshr i32 %add.i.i269, 8
  %shr14.i.i271 = and i32 %and13.i.i270, 16711935
  %and16.i.i272 = shl i32 %add.i.i269, 8
  %shl17.i.i273 = and i32 %and16.i.i272, -16711936
  %or18.i.i274 = or i32 %shr14.i.i271, %shl17.i.i273
  %xor20.i.i275 = xor i32 %or18.i.i274, %xor9.i.i268
  %add23.i.i276 = add i32 %xor20.i.i275, %add.i.i269
  %or29.i.i277 = tail call i32 @llvm.fshl.i32(i32 %add23.i.i276, i32 %add23.i.i276, i32 3) #9
  %xor31.i.i278 = xor i32 %or29.i.i277, %xor20.i.i275
  %add34.i.i279 = add i32 %xor31.i.i278, %add23.i.i276
  %or40.i.i280 = tail call i32 @llvm.fshl.i32(i32 %add34.i.i279, i32 %add34.i.i279, i32 30) #9
  %xor42.i.i281 = xor i32 %or40.i.i280, %xor31.i.i278
  %add45.i.i282 = add i32 %xor42.i.i281, %add34.i.i279
  br label %secmicappendbyte.exit.i286

secmicappendbyte.exit.i286:                       ; preds = %if.then.i.i283, %while.body.i265.secmicappendbyte.exit.i286_crit_edge
  %168 = phi i32 [ %xor42.i.i281, %if.then.i.i283 ], [ %162, %while.body.i265.secmicappendbyte.exit.i286_crit_edge ]
  %169 = phi i32 [ %add45.i.i282, %if.then.i.i283 ], [ %163, %while.body.i265.secmicappendbyte.exit.i286_crit_edge ]
  %170 = phi i32 [ 0, %if.then.i.i283 ], [ %or.i.i262, %while.body.i265.secmicappendbyte.exit.i286_crit_edge ]
  %171 = phi i32 [ 0, %if.then.i.i283 ], [ %inc.i.i263, %while.body.i265.secmicappendbyte.exit.i286_crit_edge ]
  %dec.i284 = add i32 %nbytes.addr.04.i256, -1
  %cmp.not.i285 = icmp eq i32 %dec.i284, 0
  br i1 %cmp.not.i285, label %r8712_secmicappend.exit287.loopexit, label %secmicappendbyte.exit.i286.while.body.i265_crit_edge

secmicappendbyte.exit.i286.while.body.i265_crit_edge: ; preds = %secmicappendbyte.exit.i286
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i265

r8712_secmicappend.exit287.loopexit:              ; preds = %secmicappendbyte.exit.i286
  call void @__sanitizer_cov_trace_pc() #11
  %172 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 %171, ptr %4, align 4
  %173 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 %170, ptr %3, align 4
  %174 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 %169, ptr %1, align 4
  %175 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 %168, ptr %2, align 4
  br label %r8712_secmicappend.exit287

r8712_secmicappend.exit287:                       ; preds = %r8712_secmicappend.exit287.loopexit, %secmicappendbyte.exit.i250.3.r8712_secmicappend.exit287_crit_edge
  call void @r8712_secgetmic(ptr noundef nonnull %micdata, ptr noundef %mic_code)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %micdata) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @r8712_tkip_encrypt(ptr noundef %padapter, ptr noundef %pxmitframe) local_unnamed_addr #5 align 64 {
entry:
  %rc4key = alloca [16 x i8], align 1
  %ttkey = alloca [16 x i8], align 1
  %mycontext = alloca %struct.arc4context, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %rc4key) #9
  %0 = call ptr @memset(ptr %rc4key, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ttkey) #9
  %1 = call ptr @memset(ptr %ttkey, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 264, ptr nonnull %mycontext) #9
  %2 = call ptr @memset(ptr %mycontext, i32 255, i32 264)
  %buf_addr = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 5
  %3 = ptrtoint ptr %buf_addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %buf_addr, align 4
  %cmp = icmp eq ptr %4, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %4, i32 32
  %encrypt = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 17
  %5 = ptrtoint ptr %encrypt to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %encrypt, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %6)
  %cmp2 = icmp eq i8 %6, 2
  br i1 %cmp2, label %if.then4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then4:                                         ; preds = %if.end
  %psta = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 26
  %7 = ptrtoint ptr %psta to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %psta, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %if.end7, label %if.then4.if.then9_crit_edge

if.then4.if.then9_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then9

if.end7:                                          ; preds = %if.then4
  %stapriv = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 7
  %ra = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 25
  %call = tail call ptr @r8712_get_stainfo(ptr noundef %stapriv, ptr noundef %ra) #9
  %tobool8.not = icmp eq ptr %call, null
  br i1 %tobool8.not, label %if.end7.cleanup_crit_edge, label %if.end7.if.then9_crit_edge

if.end7.if.then9_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then9

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then9:                                         ; preds = %if.end7.if.then9_crit_edge, %if.then4.if.then9_crit_edge
  %stainfo.0273 = phi ptr [ %call, %if.end7.if.then9_crit_edge ], [ %8, %if.then4.if.then9_crit_edge ]
  %x_UncstKey = getelementptr inbounds %struct.sta_info, ptr %stainfo.0273, i32 0, i32 14
  %nr_frags = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 10
  %9 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %nr_frags, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp12275.not = icmp eq i8 %10, 0
  br i1 %cmp12275.not, label %if.then9.cleanup_crit_edge, label %for.body.lr.ph

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.then9
  %conv11274 = zext i8 %10 to i32
  %hdrlen = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 9
  %iv_len = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 18
  %ta = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 24
  %frag_len = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 5, i32 19
  %icv_len57 = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 19
  %state1.i200 = getelementptr inbounds %struct.arc4context, ptr %mycontext, i32 0, i32 2
  %y.i201 = getelementptr inbounds %struct.arc4context, ptr %mycontext, i32 0, i32 1
  %last_txcmdsz = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 7
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %conv11278 = phi i32 [ %conv11274, %for.body.lr.ph ], [ %conv11, %for.inc.for.body_crit_edge ]
  %pframe.0277 = phi ptr [ %add.ptr, %for.body.lr.ph ], [ %pframe.1, %for.inc.for.body_crit_edge ]
  %curfragnum.0276 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %for.inc.for.body_crit_edge ]
  %11 = ptrtoint ptr %hdrlen to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %hdrlen, align 1
  %conv14 = zext i8 %12 to i32
  %add.ptr15 = getelementptr i8, ptr %pframe.0277, i32 %conv14
  %13 = ptrtoint ptr %iv_len to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %iv_len, align 2
  %conv16 = zext i8 %14 to i32
  %add.ptr17 = getelementptr i8, ptr %pframe.0277, i32 %conv16
  %add.ptr20 = getelementptr i8, ptr %add.ptr17, i32 %conv14
  %arrayidx21 = getelementptr i8, ptr %add.ptr15, i32 2
  %15 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx21, align 1
  %17 = ptrtoint ptr %add.ptr15 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %add.ptr15, align 1
  %arrayidx23 = getelementptr i8, ptr %add.ptr15, i32 4
  %19 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx23, align 1
  %arrayidx24 = getelementptr i8, ptr %add.ptr15, i32 5
  %21 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx24, align 1
  %arrayidx25 = getelementptr i8, ptr %add.ptr15, i32 6
  %23 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx25, align 1
  %arrayidx26 = getelementptr i8, ptr %add.ptr15, i32 7
  %25 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx26, align 1
  %txpn.sroa.10.0.insert.ext = zext i8 %16 to i64
  %txpn.sroa.9.0.insert.ext = zext i8 %18 to i64
  %txpn.sroa.9.0.insert.shift = shl nuw nsw i64 %txpn.sroa.9.0.insert.ext, 8
  %txpn.sroa.9.0.insert.insert = or i64 %txpn.sroa.9.0.insert.shift, %txpn.sroa.10.0.insert.ext
  %txpn.sroa.8.0.insert.ext = zext i8 %20 to i64
  %txpn.sroa.8.0.insert.shift = shl nuw nsw i64 %txpn.sroa.8.0.insert.ext, 16
  %txpn.sroa.8.0.insert.insert = or i64 %txpn.sroa.9.0.insert.insert, %txpn.sroa.8.0.insert.shift
  %txpn.sroa.7.0.insert.ext = zext i8 %22 to i64
  %txpn.sroa.7.0.insert.shift = shl nuw nsw i64 %txpn.sroa.7.0.insert.ext, 24
  %txpn.sroa.7.0.insert.insert = or i64 %txpn.sroa.8.0.insert.insert, %txpn.sroa.7.0.insert.shift
  %txpn.sroa.6.0.insert.ext = zext i8 %24 to i64
  %txpn.sroa.6.0.insert.shift = shl nuw nsw i64 %txpn.sroa.6.0.insert.ext, 32
  %txpn.sroa.5.0.insert.ext = zext i8 %26 to i64
  %txpn.sroa.5.0.insert.shift = shl nuw nsw i64 %txpn.sroa.5.0.insert.ext, 40
  %txpn.sroa.5.0.insert.mask = or i64 %txpn.sroa.7.0.insert.insert, %txpn.sroa.6.0.insert.shift
  %txpn.sroa.0.0.insert.mask = or i64 %txpn.sroa.5.0.insert.mask, %txpn.sroa.5.0.insert.shift
  %conv27 = trunc i64 %txpn.sroa.9.0.insert.insert to i16
  %txpn.sroa.0.0.insert.insert = lshr i64 %txpn.sroa.0.0.insert.mask, 16
  %conv28 = trunc i64 %txpn.sroa.0.0.insert.insert to i32
  call fastcc void @phase1(ptr noundef nonnull %ttkey, ptr noundef %x_UncstKey, ptr noundef %ta, i32 noundef %conv28)
  call fastcc void @phase2(ptr noundef nonnull %rc4key, ptr noundef %x_UncstKey, ptr noundef nonnull %ttkey, i16 noundef zeroext %conv27)
  %add = add nuw nsw i32 %curfragnum.0276, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv11278)
  %cmp35 = icmp eq i32 %add, %conv11278
  br i1 %cmp35, label %if.then37, label %if.else50

if.then37:                                        ; preds = %for.body
  %27 = ptrtoint ptr %last_txcmdsz to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %last_txcmdsz, align 2
  %conv38 = zext i16 %28 to i32
  %29 = add nuw nsw i32 %conv16, %conv14
  %30 = ptrtoint ptr %icv_len57 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %icv_len57, align 1
  %conv44 = zext i8 %31 to i32
  %32 = add nuw nsw i32 %29, %conv44
  %sub45 = sub nsw i32 %conv38, %32
  %call46 = tail call fastcc i32 @getcrc32(ptr noundef %add.ptr20, i32 noundef %sub45)
  %33 = tail call i32 @llvm.bswap.i32(i32 %call46)
  %crc.sroa.0.0.extract.shift = lshr i32 %33, 24
  %crc.sroa.0.0.extract.trunc = trunc i32 %crc.sroa.0.0.extract.shift to i8
  %crc.sroa.7.0.extract.shift = lshr i32 %33, 16
  %crc.sroa.7.0.extract.trunc = trunc i32 %crc.sroa.7.0.extract.shift to i8
  %crc.sroa.10.0.extract.shift = lshr i32 %33, 8
  %crc.sroa.10.0.extract.trunc = trunc i32 %crc.sroa.10.0.extract.shift to i8
  %crc.sroa.13.0.extract.trunc = trunc i32 %33 to i8
  %34 = ptrtoint ptr %mycontext to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %mycontext, align 4
  %35 = ptrtoint ptr %y.i201 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %y.i201, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then37
  %counter.040.i = phi i32 [ 0, %if.then37 ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %conv.i = trunc i32 %counter.040.i to i8
  %arrayidx.i = getelementptr i8, ptr %state1.i200, i32 %counter.040.i
  %36 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv.i, ptr %arrayidx.i, align 1
  %inc.i = add nuw nsw i32 %counter.040.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 256
  br i1 %exitcond.not.i, label %for.body.i.for.body5.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body.i.for.body5.i_crit_edge:                 ; preds = %for.body.i
  br label %for.body5.i

for.body5.i:                                      ; preds = %for.body5.i.for.body5.i_crit_edge, %for.body.i.for.body5.i_crit_edge
  %counter.143.i = phi i32 [ %inc21.i, %for.body5.i.for.body5.i_crit_edge ], [ 0, %for.body.i.for.body5.i_crit_edge ]
  %stateindex.042.i = phi i32 [ %and.i, %for.body5.i.for.body5.i_crit_edge ], [ 0, %for.body.i.for.body5.i_crit_edge ]
  %keyindex.041.i = phi i32 [ %spec.store.select.i, %for.body5.i.for.body5.i_crit_edge ], [ 0, %for.body.i.for.body5.i_crit_edge ]
  %arrayidx6.i = getelementptr i8, ptr %state1.i200, i32 %counter.143.i
  %37 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx6.i, align 1
  %conv7.i = zext i8 %38 to i32
  %arrayidx8.i = getelementptr i8, ptr %rc4key, i32 %keyindex.041.i
  %39 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx8.i, align 1
  %conv9.i = zext i8 %40 to i32
  %add.i = add nuw nsw i32 %stateindex.042.i, %conv7.i
  %add10.i = add nuw nsw i32 %add.i, %conv9.i
  %and.i = and i32 %add10.i, 255
  %arrayidx11.i = getelementptr i8, ptr %state1.i200, i32 %and.i
  %41 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx11.i, align 1
  store i8 %38, ptr %arrayidx11.i, align 1
  store i8 %42, ptr %arrayidx6.i, align 1
  %inc17.i = add i32 %keyindex.041.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %inc17.i)
  %cmp18.not.i = icmp ult i32 %inc17.i, 16
  %spec.store.select.i = select i1 %cmp18.not.i, i32 %inc17.i, i32 0
  %inc21.i = add nuw nsw i32 %counter.143.i, 1
  %exitcond44.not.i = icmp eq i32 %inc21.i, 256
  br i1 %exitcond44.not.i, label %arcfour_init.exit, label %for.body5.i.for.body5.i_crit_edge

for.body5.i.for.body5.i_crit_edge:                ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body5.i

arcfour_init.exit:                                ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %conv38)
  %cmp8.not.i = icmp eq i32 %32, %conv38
  br i1 %cmp8.not.i, label %arcfour_init.exit.arcfour_encrypt.exit_crit_edge, label %arcfour_init.exit.for.body.i177_crit_edge

arcfour_init.exit.for.body.i177_crit_edge:        ; preds = %arcfour_init.exit
  br label %for.body.i177

arcfour_init.exit.arcfour_encrypt.exit_crit_edge: ; preds = %arcfour_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %arcfour_encrypt.exit

for.body.i177:                                    ; preds = %for.body.i177.for.body.i177_crit_edge, %arcfour_init.exit.for.body.i177_crit_edge
  %i.09.i = phi i32 [ %inc.i175, %for.body.i177.for.body.i177_crit_edge ], [ 0, %arcfour_init.exit.for.body.i177_crit_edge ]
  %arrayidx.i174 = getelementptr i8, ptr %add.ptr20, i32 %i.09.i
  %43 = ptrtoint ptr %arrayidx.i174 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx.i174, align 1
  %45 = ptrtoint ptr %mycontext to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %mycontext, align 4
  %add.i.i = add i32 %46, 1
  %and.i.i = and i32 %add.i.i, 255
  %arrayidx.i.i = getelementptr i8, ptr %state1.i200, i32 %and.i.i
  %47 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %48 to i32
  %49 = ptrtoint ptr %y.i201 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %y.i201, align 4
  %add4.i.i = add i32 %50, %conv.i.i
  %and5.i.i = and i32 %add4.i.i, 255
  %arrayidx6.i.i = getelementptr i8, ptr %state1.i200, i32 %and5.i.i
  %51 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx6.i.i, align 1
  %conv7.i.i = zext i8 %52 to i32
  store i32 %and.i.i, ptr %mycontext, align 4
  store i32 %and5.i.i, ptr %y.i201, align 4
  store i8 %48, ptr %arrayidx6.i.i, align 1
  store i8 %52, ptr %arrayidx.i.i, align 1
  %add14.i.i = add nuw nsw i32 %conv7.i.i, %conv.i.i
  %and15.i.i = and i32 %add14.i.i, 255
  %arrayidx16.i.i = getelementptr i8, ptr %state1.i200, i32 %and15.i.i
  %53 = ptrtoint ptr %arrayidx16.i.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx16.i.i, align 1
  %conv3.i = xor i8 %54, %44
  store i8 %conv3.i, ptr %arrayidx.i174, align 1
  %inc.i175 = add nuw i32 %i.09.i, 1
  %exitcond.not.i176 = icmp eq i32 %inc.i175, %sub45
  br i1 %exitcond.not.i176, label %for.body.i177.arcfour_encrypt.exit_crit_edge, label %for.body.i177.for.body.i177_crit_edge

for.body.i177.for.body.i177_crit_edge:            ; preds = %for.body.i177
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i177

for.body.i177.arcfour_encrypt.exit_crit_edge:     ; preds = %for.body.i177
  call void @__sanitizer_cov_trace_pc() #11
  br label %arcfour_encrypt.exit

arcfour_encrypt.exit:                             ; preds = %for.body.i177.arcfour_encrypt.exit_crit_edge, %arcfour_init.exit.arcfour_encrypt.exit_crit_edge
  %add.ptr48 = getelementptr i8, ptr %add.ptr20, i32 %sub45
  %55 = ptrtoint ptr %mycontext to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %mycontext, align 4
  %add.i.i183 = add i32 %56, 1
  %and.i.i184 = and i32 %add.i.i183, 255
  %arrayidx.i.i185 = getelementptr i8, ptr %state1.i200, i32 %and.i.i184
  %57 = ptrtoint ptr %arrayidx.i.i185 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx.i.i185, align 1
  %conv.i.i186 = zext i8 %58 to i32
  %59 = ptrtoint ptr %y.i201 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %y.i201, align 4
  %add4.i.i187 = add i32 %60, %conv.i.i186
  %and5.i.i188 = and i32 %add4.i.i187, 255
  %arrayidx6.i.i189 = getelementptr i8, ptr %state1.i200, i32 %and5.i.i188
  %61 = ptrtoint ptr %arrayidx6.i.i189 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx6.i.i189, align 1
  %conv7.i.i190 = zext i8 %62 to i32
  store i32 %and.i.i184, ptr %mycontext, align 4
  store i32 %and5.i.i188, ptr %y.i201, align 4
  store i8 %58, ptr %arrayidx6.i.i189, align 1
  store i8 %62, ptr %arrayidx.i.i185, align 1
  %add14.i.i191 = add nuw nsw i32 %conv7.i.i190, %conv.i.i186
  %and15.i.i192 = and i32 %add14.i.i191, 255
  %arrayidx16.i.i193 = getelementptr i8, ptr %state1.i200, i32 %and15.i.i192
  %63 = ptrtoint ptr %arrayidx16.i.i193 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx16.i.i193, align 1
  %conv3.i194 = xor i8 %64, %crc.sroa.0.0.extract.trunc
  %65 = ptrtoint ptr %add.ptr48 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %conv3.i194, ptr %add.ptr48, align 1
  %66 = load i32, ptr %mycontext, align 4
  %add.i.i183.1 = add i32 %66, 1
  %and.i.i184.1 = and i32 %add.i.i183.1, 255
  %arrayidx.i.i185.1 = getelementptr i8, ptr %state1.i200, i32 %and.i.i184.1
  %67 = ptrtoint ptr %arrayidx.i.i185.1 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx.i.i185.1, align 1
  %conv.i.i186.1 = zext i8 %68 to i32
  %69 = load i32, ptr %y.i201, align 4
  %add4.i.i187.1 = add i32 %69, %conv.i.i186.1
  %and5.i.i188.1 = and i32 %add4.i.i187.1, 255
  %arrayidx6.i.i189.1 = getelementptr i8, ptr %state1.i200, i32 %and5.i.i188.1
  %70 = ptrtoint ptr %arrayidx6.i.i189.1 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx6.i.i189.1, align 1
  %conv7.i.i190.1 = zext i8 %71 to i32
  store i32 %and.i.i184.1, ptr %mycontext, align 4
  store i32 %and5.i.i188.1, ptr %y.i201, align 4
  store i8 %68, ptr %arrayidx6.i.i189.1, align 1
  store i8 %71, ptr %arrayidx.i.i185.1, align 1
  %add14.i.i191.1 = add nuw nsw i32 %conv7.i.i190.1, %conv.i.i186.1
  %and15.i.i192.1 = and i32 %add14.i.i191.1, 255
  %arrayidx16.i.i193.1 = getelementptr i8, ptr %state1.i200, i32 %and15.i.i192.1
  %72 = ptrtoint ptr %arrayidx16.i.i193.1 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx16.i.i193.1, align 1
  %conv3.i194.1 = xor i8 %73, %crc.sroa.7.0.extract.trunc
  %arrayidx4.i195.1 = getelementptr i8, ptr %add.ptr48, i32 1
  %74 = ptrtoint ptr %arrayidx4.i195.1 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %conv3.i194.1, ptr %arrayidx4.i195.1, align 1
  %75 = load i32, ptr %mycontext, align 4
  %add.i.i183.2 = add i32 %75, 1
  %and.i.i184.2 = and i32 %add.i.i183.2, 255
  %arrayidx.i.i185.2 = getelementptr i8, ptr %state1.i200, i32 %and.i.i184.2
  %76 = ptrtoint ptr %arrayidx.i.i185.2 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx.i.i185.2, align 1
  %conv.i.i186.2 = zext i8 %77 to i32
  %78 = load i32, ptr %y.i201, align 4
  %add4.i.i187.2 = add i32 %78, %conv.i.i186.2
  %and5.i.i188.2 = and i32 %add4.i.i187.2, 255
  %arrayidx6.i.i189.2 = getelementptr i8, ptr %state1.i200, i32 %and5.i.i188.2
  %79 = ptrtoint ptr %arrayidx6.i.i189.2 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx6.i.i189.2, align 1
  %conv7.i.i190.2 = zext i8 %80 to i32
  store i32 %and.i.i184.2, ptr %mycontext, align 4
  store i32 %and5.i.i188.2, ptr %y.i201, align 4
  store i8 %77, ptr %arrayidx6.i.i189.2, align 1
  store i8 %80, ptr %arrayidx.i.i185.2, align 1
  %add14.i.i191.2 = add nuw nsw i32 %conv7.i.i190.2, %conv.i.i186.2
  %and15.i.i192.2 = and i32 %add14.i.i191.2, 255
  %arrayidx16.i.i193.2 = getelementptr i8, ptr %state1.i200, i32 %and15.i.i192.2
  %81 = ptrtoint ptr %arrayidx16.i.i193.2 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %arrayidx16.i.i193.2, align 1
  %conv3.i194.2 = xor i8 %82, %crc.sroa.10.0.extract.trunc
  %arrayidx4.i195.2 = getelementptr i8, ptr %add.ptr48, i32 2
  %83 = ptrtoint ptr %arrayidx4.i195.2 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %conv3.i194.2, ptr %arrayidx4.i195.2, align 1
  %84 = load i32, ptr %mycontext, align 4
  %add.i.i183.3 = add i32 %84, 1
  %and.i.i184.3 = and i32 %add.i.i183.3, 255
  %arrayidx.i.i185.3 = getelementptr i8, ptr %state1.i200, i32 %and.i.i184.3
  %85 = ptrtoint ptr %arrayidx.i.i185.3 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %arrayidx.i.i185.3, align 1
  %conv.i.i186.3 = zext i8 %86 to i32
  %87 = load i32, ptr %y.i201, align 4
  %add4.i.i187.3 = add i32 %87, %conv.i.i186.3
  %and5.i.i188.3 = and i32 %add4.i.i187.3, 255
  %arrayidx6.i.i189.3 = getelementptr i8, ptr %state1.i200, i32 %and5.i.i188.3
  %88 = ptrtoint ptr %arrayidx6.i.i189.3 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %arrayidx6.i.i189.3, align 1
  %conv7.i.i190.3 = zext i8 %89 to i32
  store i32 %and.i.i184.3, ptr %mycontext, align 4
  store i32 %and5.i.i188.3, ptr %y.i201, align 4
  store i8 %86, ptr %arrayidx6.i.i189.3, align 1
  store i8 %89, ptr %arrayidx.i.i185.3, align 1
  %add14.i.i191.3 = add nuw nsw i32 %conv7.i.i190.3, %conv.i.i186.3
  %and15.i.i192.3 = and i32 %add14.i.i191.3, 255
  %arrayidx16.i.i193.3 = getelementptr i8, ptr %state1.i200, i32 %and15.i.i192.3
  %90 = ptrtoint ptr %arrayidx16.i.i193.3 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %arrayidx16.i.i193.3, align 1
  %conv3.i194.3 = xor i8 %91, %crc.sroa.13.0.extract.trunc
  %arrayidx4.i195.3 = getelementptr i8, ptr %add.ptr48, i32 3
  %92 = ptrtoint ptr %arrayidx4.i195.3 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %conv3.i194.3, ptr %arrayidx4.i195.3, align 1
  br label %for.inc

if.else50:                                        ; preds = %for.body
  %93 = ptrtoint ptr %frag_len to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %frag_len, align 4
  %95 = add nuw nsw i32 %conv16, %conv14
  %96 = ptrtoint ptr %icv_len57 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %icv_len57, align 1
  %conv58 = zext i8 %97 to i32
  %98 = add nuw nsw i32 %95, %conv58
  %sub59 = sub i32 %94, %98
  %call60 = tail call fastcc i32 @getcrc32(ptr noundef %add.ptr20, i32 noundef %sub59)
  %99 = tail call i32 @llvm.bswap.i32(i32 %call60)
  %crc.sroa.0.0.extract.shift280 = lshr i32 %99, 24
  %crc.sroa.0.0.extract.trunc281 = trunc i32 %crc.sroa.0.0.extract.shift280 to i8
  %crc.sroa.7.0.extract.shift282 = lshr i32 %99, 16
  %crc.sroa.7.0.extract.trunc283 = trunc i32 %crc.sroa.7.0.extract.shift282 to i8
  %crc.sroa.10.0.extract.shift285 = lshr i32 %99, 8
  %crc.sroa.10.0.extract.trunc286 = trunc i32 %crc.sroa.10.0.extract.shift285 to i8
  %crc.sroa.13.0.extract.trunc288 = trunc i32 %99 to i8
  %100 = ptrtoint ptr %mycontext to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 0, ptr %mycontext, align 4
  %101 = ptrtoint ptr %y.i201 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 0, ptr %y.i201, align 4
  br label %for.body.i207

for.body.i207:                                    ; preds = %for.body.i207.for.body.i207_crit_edge, %if.else50
  %counter.040.i202 = phi i32 [ 0, %if.else50 ], [ %inc.i205, %for.body.i207.for.body.i207_crit_edge ]
  %conv.i203 = trunc i32 %counter.040.i202 to i8
  %arrayidx.i204 = getelementptr i8, ptr %state1.i200, i32 %counter.040.i202
  %102 = ptrtoint ptr %arrayidx.i204 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %conv.i203, ptr %arrayidx.i204, align 1
  %inc.i205 = add nuw nsw i32 %counter.040.i202, 1
  %exitcond.not.i206 = icmp eq i32 %inc.i205, 256
  br i1 %exitcond.not.i206, label %for.body.i207.for.body5.i224_crit_edge, label %for.body.i207.for.body.i207_crit_edge

for.body.i207.for.body.i207_crit_edge:            ; preds = %for.body.i207
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i207

for.body.i207.for.body5.i224_crit_edge:           ; preds = %for.body.i207
  br label %for.body5.i224

for.body5.i224:                                   ; preds = %for.body5.i224.for.body5.i224_crit_edge, %for.body.i207.for.body5.i224_crit_edge
  %counter.143.i208 = phi i32 [ %inc21.i222, %for.body5.i224.for.body5.i224_crit_edge ], [ 0, %for.body.i207.for.body5.i224_crit_edge ]
  %stateindex.042.i209 = phi i32 [ %and.i217, %for.body5.i224.for.body5.i224_crit_edge ], [ 0, %for.body.i207.for.body5.i224_crit_edge ]
  %keyindex.041.i210 = phi i32 [ %spec.store.select.i221, %for.body5.i224.for.body5.i224_crit_edge ], [ 0, %for.body.i207.for.body5.i224_crit_edge ]
  %arrayidx6.i211 = getelementptr i8, ptr %state1.i200, i32 %counter.143.i208
  %103 = ptrtoint ptr %arrayidx6.i211 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %arrayidx6.i211, align 1
  %conv7.i212 = zext i8 %104 to i32
  %arrayidx8.i213 = getelementptr i8, ptr %rc4key, i32 %keyindex.041.i210
  %105 = ptrtoint ptr %arrayidx8.i213 to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %arrayidx8.i213, align 1
  %conv9.i214 = zext i8 %106 to i32
  %add.i215 = add nuw nsw i32 %stateindex.042.i209, %conv7.i212
  %add10.i216 = add nuw nsw i32 %add.i215, %conv9.i214
  %and.i217 = and i32 %add10.i216, 255
  %arrayidx11.i218 = getelementptr i8, ptr %state1.i200, i32 %and.i217
  %107 = ptrtoint ptr %arrayidx11.i218 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %arrayidx11.i218, align 1
  store i8 %104, ptr %arrayidx11.i218, align 1
  store i8 %108, ptr %arrayidx6.i211, align 1
  %inc17.i219 = add i32 %keyindex.041.i210, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %inc17.i219)
  %cmp18.not.i220 = icmp ult i32 %inc17.i219, 16
  %spec.store.select.i221 = select i1 %cmp18.not.i220, i32 %inc17.i219, i32 0
  %inc21.i222 = add nuw nsw i32 %counter.143.i208, 1
  %exitcond44.not.i223 = icmp eq i32 %inc21.i222, 256
  br i1 %exitcond44.not.i223, label %arcfour_init.exit225, label %for.body5.i224.for.body5.i224_crit_edge

for.body5.i224.for.body5.i224_crit_edge:          ; preds = %for.body5.i224
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body5.i224

arcfour_init.exit225:                             ; preds = %for.body5.i224
  call void @__sanitizer_cov_trace_cmp4(i32 %94, i32 %98)
  %cmp8.not.i226 = icmp eq i32 %94, %98
  br i1 %cmp8.not.i226, label %arcfour_init.exit225.arcfour_encrypt.exit248_crit_edge, label %arcfour_init.exit225.for.body.i247_crit_edge

arcfour_init.exit225.for.body.i247_crit_edge:     ; preds = %arcfour_init.exit225
  br label %for.body.i247

arcfour_init.exit225.arcfour_encrypt.exit248_crit_edge: ; preds = %arcfour_init.exit225
  call void @__sanitizer_cov_trace_pc() #11
  br label %arcfour_encrypt.exit248

for.body.i247:                                    ; preds = %for.body.i247.for.body.i247_crit_edge, %arcfour_init.exit225.for.body.i247_crit_edge
  %i.09.i230 = phi i32 [ %inc.i245, %for.body.i247.for.body.i247_crit_edge ], [ 0, %arcfour_init.exit225.for.body.i247_crit_edge ]
  %arrayidx.i231 = getelementptr i8, ptr %add.ptr20, i32 %i.09.i230
  %109 = ptrtoint ptr %arrayidx.i231 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %arrayidx.i231, align 1
  %111 = ptrtoint ptr %mycontext to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %mycontext, align 4
  %add.i.i232 = add i32 %112, 1
  %and.i.i233 = and i32 %add.i.i232, 255
  %arrayidx.i.i234 = getelementptr i8, ptr %state1.i200, i32 %and.i.i233
  %113 = ptrtoint ptr %arrayidx.i.i234 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %arrayidx.i.i234, align 1
  %conv.i.i235 = zext i8 %114 to i32
  %115 = ptrtoint ptr %y.i201 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %y.i201, align 4
  %add4.i.i236 = add i32 %116, %conv.i.i235
  %and5.i.i237 = and i32 %add4.i.i236, 255
  %arrayidx6.i.i238 = getelementptr i8, ptr %state1.i200, i32 %and5.i.i237
  %117 = ptrtoint ptr %arrayidx6.i.i238 to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %arrayidx6.i.i238, align 1
  %conv7.i.i239 = zext i8 %118 to i32
  store i32 %and.i.i233, ptr %mycontext, align 4
  store i32 %and5.i.i237, ptr %y.i201, align 4
  store i8 %114, ptr %arrayidx6.i.i238, align 1
  store i8 %118, ptr %arrayidx.i.i234, align 1
  %add14.i.i240 = add nuw nsw i32 %conv7.i.i239, %conv.i.i235
  %and15.i.i241 = and i32 %add14.i.i240, 255
  %arrayidx16.i.i242 = getelementptr i8, ptr %state1.i200, i32 %and15.i.i241
  %119 = ptrtoint ptr %arrayidx16.i.i242 to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %arrayidx16.i.i242, align 1
  %conv3.i243 = xor i8 %120, %110
  store i8 %conv3.i243, ptr %arrayidx.i231, align 1
  %inc.i245 = add nuw i32 %i.09.i230, 1
  %exitcond.not.i246 = icmp eq i32 %inc.i245, %sub59
  br i1 %exitcond.not.i246, label %for.body.i247.arcfour_encrypt.exit248_crit_edge, label %for.body.i247.for.body.i247_crit_edge

for.body.i247.for.body.i247_crit_edge:            ; preds = %for.body.i247
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i247

for.body.i247.arcfour_encrypt.exit248_crit_edge:  ; preds = %for.body.i247
  call void @__sanitizer_cov_trace_pc() #11
  br label %arcfour_encrypt.exit248

arcfour_encrypt.exit248:                          ; preds = %for.body.i247.arcfour_encrypt.exit248_crit_edge, %arcfour_init.exit225.arcfour_encrypt.exit248_crit_edge
  %add.ptr63 = getelementptr i8, ptr %add.ptr20, i32 %sub59
  %121 = ptrtoint ptr %mycontext to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %mycontext, align 4
  %add.i.i254 = add i32 %122, 1
  %and.i.i255 = and i32 %add.i.i254, 255
  %arrayidx.i.i256 = getelementptr i8, ptr %state1.i200, i32 %and.i.i255
  %123 = ptrtoint ptr %arrayidx.i.i256 to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %arrayidx.i.i256, align 1
  %conv.i.i257 = zext i8 %124 to i32
  %125 = ptrtoint ptr %y.i201 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %y.i201, align 4
  %add4.i.i258 = add i32 %126, %conv.i.i257
  %and5.i.i259 = and i32 %add4.i.i258, 255
  %arrayidx6.i.i260 = getelementptr i8, ptr %state1.i200, i32 %and5.i.i259
  %127 = ptrtoint ptr %arrayidx6.i.i260 to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %arrayidx6.i.i260, align 1
  %conv7.i.i261 = zext i8 %128 to i32
  store i32 %and.i.i255, ptr %mycontext, align 4
  store i32 %and5.i.i259, ptr %y.i201, align 4
  store i8 %124, ptr %arrayidx6.i.i260, align 1
  store i8 %128, ptr %arrayidx.i.i256, align 1
  %add14.i.i262 = add nuw nsw i32 %conv7.i.i261, %conv.i.i257
  %and15.i.i263 = and i32 %add14.i.i262, 255
  %arrayidx16.i.i264 = getelementptr i8, ptr %state1.i200, i32 %and15.i.i263
  %129 = ptrtoint ptr %arrayidx16.i.i264 to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %arrayidx16.i.i264, align 1
  %conv3.i265 = xor i8 %130, %crc.sroa.0.0.extract.trunc281
  %131 = ptrtoint ptr %add.ptr63 to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 %conv3.i265, ptr %add.ptr63, align 1
  %132 = load i32, ptr %mycontext, align 4
  %add.i.i254.1 = add i32 %132, 1
  %and.i.i255.1 = and i32 %add.i.i254.1, 255
  %arrayidx.i.i256.1 = getelementptr i8, ptr %state1.i200, i32 %and.i.i255.1
  %133 = ptrtoint ptr %arrayidx.i.i256.1 to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %arrayidx.i.i256.1, align 1
  %conv.i.i257.1 = zext i8 %134 to i32
  %135 = load i32, ptr %y.i201, align 4
  %add4.i.i258.1 = add i32 %135, %conv.i.i257.1
  %and5.i.i259.1 = and i32 %add4.i.i258.1, 255
  %arrayidx6.i.i260.1 = getelementptr i8, ptr %state1.i200, i32 %and5.i.i259.1
  %136 = ptrtoint ptr %arrayidx6.i.i260.1 to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %arrayidx6.i.i260.1, align 1
  %conv7.i.i261.1 = zext i8 %137 to i32
  store i32 %and.i.i255.1, ptr %mycontext, align 4
  store i32 %and5.i.i259.1, ptr %y.i201, align 4
  store i8 %134, ptr %arrayidx6.i.i260.1, align 1
  store i8 %137, ptr %arrayidx.i.i256.1, align 1
  %add14.i.i262.1 = add nuw nsw i32 %conv7.i.i261.1, %conv.i.i257.1
  %and15.i.i263.1 = and i32 %add14.i.i262.1, 255
  %arrayidx16.i.i264.1 = getelementptr i8, ptr %state1.i200, i32 %and15.i.i263.1
  %138 = ptrtoint ptr %arrayidx16.i.i264.1 to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %arrayidx16.i.i264.1, align 1
  %conv3.i265.1 = xor i8 %139, %crc.sroa.7.0.extract.trunc283
  %arrayidx4.i266.1 = getelementptr i8, ptr %add.ptr63, i32 1
  %140 = ptrtoint ptr %arrayidx4.i266.1 to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 %conv3.i265.1, ptr %arrayidx4.i266.1, align 1
  %141 = load i32, ptr %mycontext, align 4
  %add.i.i254.2 = add i32 %141, 1
  %and.i.i255.2 = and i32 %add.i.i254.2, 255
  %arrayidx.i.i256.2 = getelementptr i8, ptr %state1.i200, i32 %and.i.i255.2
  %142 = ptrtoint ptr %arrayidx.i.i256.2 to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %arrayidx.i.i256.2, align 1
  %conv.i.i257.2 = zext i8 %143 to i32
  %144 = load i32, ptr %y.i201, align 4
  %add4.i.i258.2 = add i32 %144, %conv.i.i257.2
  %and5.i.i259.2 = and i32 %add4.i.i258.2, 255
  %arrayidx6.i.i260.2 = getelementptr i8, ptr %state1.i200, i32 %and5.i.i259.2
  %145 = ptrtoint ptr %arrayidx6.i.i260.2 to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %arrayidx6.i.i260.2, align 1
  %conv7.i.i261.2 = zext i8 %146 to i32
  store i32 %and.i.i255.2, ptr %mycontext, align 4
  store i32 %and5.i.i259.2, ptr %y.i201, align 4
  store i8 %143, ptr %arrayidx6.i.i260.2, align 1
  store i8 %146, ptr %arrayidx.i.i256.2, align 1
  %add14.i.i262.2 = add nuw nsw i32 %conv7.i.i261.2, %conv.i.i257.2
  %and15.i.i263.2 = and i32 %add14.i.i262.2, 255
  %arrayidx16.i.i264.2 = getelementptr i8, ptr %state1.i200, i32 %and15.i.i263.2
  %147 = ptrtoint ptr %arrayidx16.i.i264.2 to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %arrayidx16.i.i264.2, align 1
  %conv3.i265.2 = xor i8 %148, %crc.sroa.10.0.extract.trunc286
  %arrayidx4.i266.2 = getelementptr i8, ptr %add.ptr63, i32 2
  %149 = ptrtoint ptr %arrayidx4.i266.2 to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 %conv3.i265.2, ptr %arrayidx4.i266.2, align 1
  %150 = load i32, ptr %mycontext, align 4
  %add.i.i254.3 = add i32 %150, 1
  %and.i.i255.3 = and i32 %add.i.i254.3, 255
  %arrayidx.i.i256.3 = getelementptr i8, ptr %state1.i200, i32 %and.i.i255.3
  %151 = ptrtoint ptr %arrayidx.i.i256.3 to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %arrayidx.i.i256.3, align 1
  %conv.i.i257.3 = zext i8 %152 to i32
  %153 = load i32, ptr %y.i201, align 4
  %add4.i.i258.3 = add i32 %153, %conv.i.i257.3
  %and5.i.i259.3 = and i32 %add4.i.i258.3, 255
  %arrayidx6.i.i260.3 = getelementptr i8, ptr %state1.i200, i32 %and5.i.i259.3
  %154 = ptrtoint ptr %arrayidx6.i.i260.3 to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %arrayidx6.i.i260.3, align 1
  %conv7.i.i261.3 = zext i8 %155 to i32
  store i32 %and.i.i255.3, ptr %mycontext, align 4
  store i32 %and5.i.i259.3, ptr %y.i201, align 4
  store i8 %152, ptr %arrayidx6.i.i260.3, align 1
  store i8 %155, ptr %arrayidx.i.i256.3, align 1
  %add14.i.i262.3 = add nuw nsw i32 %conv7.i.i261.3, %conv.i.i257.3
  %and15.i.i263.3 = and i32 %add14.i.i262.3, 255
  %arrayidx16.i.i264.3 = getelementptr i8, ptr %state1.i200, i32 %and15.i.i263.3
  %156 = ptrtoint ptr %arrayidx16.i.i264.3 to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %arrayidx16.i.i264.3, align 1
  %conv3.i265.3 = xor i8 %157, %crc.sroa.13.0.extract.trunc288
  %arrayidx4.i266.3 = getelementptr i8, ptr %add.ptr63, i32 3
  %158 = ptrtoint ptr %arrayidx4.i266.3 to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 %conv3.i265.3, ptr %arrayidx4.i266.3, align 1
  %159 = ptrtoint ptr %frag_len to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %frag_len, align 4
  %add.ptr66 = getelementptr i8, ptr %pframe.0277, i32 %160
  %161 = ptrtoint ptr %add.ptr66 to i32
  %and = and i32 %161, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp68.not = icmp eq i32 %and, 0
  %add70172 = select i1 %cmp68.not, i32 0, i32 4
  %shr67173 = add i32 %add70172, %161
  %shl = and i32 %shr67173, -4
  %162 = inttoptr i32 %shl to ptr
  br label %for.inc

for.inc:                                          ; preds = %arcfour_encrypt.exit248, %arcfour_encrypt.exit
  %pframe.1 = phi ptr [ %162, %arcfour_encrypt.exit248 ], [ %pframe.0277, %arcfour_encrypt.exit ]
  %163 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %nr_frags, align 2
  %conv11 = zext i8 %164 to i32
  %cmp12 = icmp ult i32 %add, %conv11
  br i1 %cmp12, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then9.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ 0, %if.end7.cleanup_crit_edge ], [ 1, %if.then9.cleanup_crit_edge ], [ 1, %for.inc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 264, ptr nonnull %mycontext) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ttkey) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %rc4key) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @r8712_get_stainfo(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @phase1(ptr nocapture noundef %p1k, ptr nocapture noundef readonly %tk, ptr nocapture noundef readonly %ta, i32 noundef %iv32) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i32 %iv32 to i16
  %0 = ptrtoint ptr %p1k to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 %conv, ptr %p1k, align 2
  %shr = lshr i32 %iv32, 16
  %conv2 = trunc i32 %shr to i16
  %arrayidx3 = getelementptr i16, ptr %p1k, i32 1
  %1 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 %conv2, ptr %arrayidx3, align 2
  %2 = ptrtoint ptr %ta to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ta, align 1
  %conv5 = zext i8 %3 to i16
  %arrayidx6 = getelementptr i8, ptr %ta, i32 1
  %4 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx6, align 1
  %conv8 = zext i8 %5 to i16
  %shl = shl nuw i16 %conv8, 8
  %xor350 = or i16 %shl, %conv5
  %arrayidx10 = getelementptr i16, ptr %p1k, i32 2
  %6 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %xor350, ptr %arrayidx10, align 2
  %arrayidx11 = getelementptr i8, ptr %ta, i32 2
  %7 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx11, align 1
  %conv12 = zext i8 %8 to i16
  %arrayidx13 = getelementptr i8, ptr %ta, i32 3
  %9 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx13, align 1
  %conv15 = zext i8 %10 to i16
  %shl16 = shl nuw i16 %conv15, 8
  %xor17351 = or i16 %shl16, %conv12
  %arrayidx19 = getelementptr i16, ptr %p1k, i32 3
  %11 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %xor17351, ptr %arrayidx19, align 2
  %arrayidx20 = getelementptr i8, ptr %ta, i32 4
  %12 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx20, align 1
  %conv21 = zext i8 %13 to i16
  %arrayidx22 = getelementptr i8, ptr %ta, i32 5
  %14 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx22, align 1
  %conv24 = zext i8 %15 to i16
  %shl25 = shl nuw i16 %conv24, 8
  %xor26352 = or i16 %shl25, %conv21
  %arrayidx28 = getelementptr i16, ptr %p1k, i32 4
  %16 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %xor26352, ptr %arrayidx28, align 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.0363 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %17 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %arrayidx28, align 2
  %conv31 = zext i16 %18 to i32
  %and32 = shl nuw i32 %i.0363, 1
  %mul = and i32 %and32, 2
  %arrayidx33 = getelementptr i8, ptr %tk, i32 %mul
  %19 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx33, align 1
  %conv34 = zext i8 %20 to i32
  %add38 = or i32 %mul, 1
  %arrayidx39 = getelementptr i8, ptr %tk, i32 %add38
  %21 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx39, align 1
  %conv41 = zext i8 %22 to i32
  %shl42 = shl nuw nsw i32 %conv41, 8
  %xor43353 = or i32 %shl42, %conv34
  %xor44 = xor i32 %xor43353, %conv31
  %idxprom = and i32 %xor44, 255
  %arrayidx47 = getelementptr [256 x i16], ptr @Sbox1, i32 0, i32 %idxprom
  %23 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %arrayidx47, align 2
  %25 = lshr i32 %xor44, 8
  %arrayidx70 = getelementptr [2 x [256 x i16]], ptr @Sbox1, i32 0, i32 1, i32 %25
  %26 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %arrayidx70, align 2
  %xor72354 = xor i16 %27, %24
  %28 = ptrtoint ptr %p1k to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %p1k, align 2
  %add75 = add i16 %29, %xor72354
  store i16 %add75, ptr %p1k, align 2
  %conv78 = zext i16 %add75 to i32
  %mul81 = or i32 %mul, 4
  %arrayidx82 = getelementptr i8, ptr %tk, i32 %mul81
  %30 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx82, align 1
  %conv83 = zext i8 %31 to i32
  %add87 = or i32 %mul, 5
  %arrayidx88 = getelementptr i8, ptr %tk, i32 %add87
  %32 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx88, align 1
  %conv90 = zext i8 %33 to i32
  %shl91 = shl nuw nsw i32 %conv90, 8
  %xor92355 = or i32 %shl91, %conv83
  %xor93 = xor i32 %xor92355, %conv78
  %idxprom96 = and i32 %xor93, 255
  %arrayidx97 = getelementptr [256 x i16], ptr @Sbox1, i32 0, i32 %idxprom96
  %34 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %arrayidx97, align 2
  %36 = lshr i32 %xor93, 8
  %arrayidx120 = getelementptr [2 x [256 x i16]], ptr @Sbox1, i32 0, i32 1, i32 %36
  %37 = ptrtoint ptr %arrayidx120 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %arrayidx120, align 2
  %xor122356 = xor i16 %38, %35
  %39 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %arrayidx3, align 2
  %add125 = add i16 %40, %xor122356
  store i16 %add125, ptr %arrayidx3, align 2
  %conv128 = zext i16 %add125 to i32
  %mul131 = or i32 %mul, 8
  %arrayidx132 = getelementptr i8, ptr %tk, i32 %mul131
  %41 = ptrtoint ptr %arrayidx132 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx132, align 1
  %conv133 = zext i8 %42 to i32
  %add137 = or i32 %mul, 9
  %arrayidx138 = getelementptr i8, ptr %tk, i32 %add137
  %43 = ptrtoint ptr %arrayidx138 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx138, align 1
  %conv140 = zext i8 %44 to i32
  %shl141 = shl nuw nsw i32 %conv140, 8
  %xor142357 = or i32 %shl141, %conv133
  %xor143 = xor i32 %xor142357, %conv128
  %idxprom146 = and i32 %xor143, 255
  %arrayidx147 = getelementptr [256 x i16], ptr @Sbox1, i32 0, i32 %idxprom146
  %45 = ptrtoint ptr %arrayidx147 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %arrayidx147, align 2
  %47 = lshr i32 %xor143, 8
  %arrayidx170 = getelementptr [2 x [256 x i16]], ptr @Sbox1, i32 0, i32 1, i32 %47
  %48 = ptrtoint ptr %arrayidx170 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %arrayidx170, align 2
  %xor172358 = xor i16 %49, %46
  %50 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %arrayidx10, align 2
  %add175 = add i16 %51, %xor172358
  store i16 %add175, ptr %arrayidx10, align 2
  %conv178 = zext i16 %add175 to i32
  %mul181 = or i32 %mul, 12
  %arrayidx182 = getelementptr i8, ptr %tk, i32 %mul181
  %52 = ptrtoint ptr %arrayidx182 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx182, align 1
  %conv183 = zext i8 %53 to i32
  %add187 = or i32 %mul, 13
  %arrayidx188 = getelementptr i8, ptr %tk, i32 %add187
  %54 = ptrtoint ptr %arrayidx188 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx188, align 1
  %conv190 = zext i8 %55 to i32
  %shl191 = shl nuw nsw i32 %conv190, 8
  %xor192359 = or i32 %shl191, %conv183
  %xor193 = xor i32 %xor192359, %conv178
  %idxprom196 = and i32 %xor193, 255
  %arrayidx197 = getelementptr [256 x i16], ptr @Sbox1, i32 0, i32 %idxprom196
  %56 = ptrtoint ptr %arrayidx197 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %arrayidx197, align 2
  %58 = lshr i32 %xor193, 8
  %arrayidx220 = getelementptr [2 x [256 x i16]], ptr @Sbox1, i32 0, i32 1, i32 %58
  %59 = ptrtoint ptr %arrayidx220 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %arrayidx220, align 2
  %xor222360 = xor i16 %60, %57
  %61 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %arrayidx19, align 2
  %add225 = add i16 %62, %xor222360
  store i16 %add225, ptr %arrayidx19, align 2
  %conv228 = zext i16 %add225 to i32
  %63 = load i8, ptr %arrayidx33, align 1
  %conv233 = zext i8 %63 to i32
  %64 = load i8, ptr %arrayidx39, align 1
  %conv240 = zext i8 %64 to i32
  %shl241 = shl nuw nsw i32 %conv240, 8
  %xor242361 = or i32 %shl241, %conv233
  %xor243 = xor i32 %xor242361, %conv228
  %idxprom246 = and i32 %xor243, 255
  %arrayidx247 = getelementptr [256 x i16], ptr @Sbox1, i32 0, i32 %idxprom246
  %65 = ptrtoint ptr %arrayidx247 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %arrayidx247, align 2
  %67 = lshr i32 %xor243, 8
  %arrayidx270 = getelementptr [2 x [256 x i16]], ptr @Sbox1, i32 0, i32 1, i32 %67
  %68 = ptrtoint ptr %arrayidx270 to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %arrayidx270, align 2
  %xor272362 = xor i16 %69, %66
  %70 = trunc i32 %i.0363 to i16
  %add275 = add i16 %18, %70
  %conv282 = add i16 %add275, %xor272362
  store i16 %conv282, ptr %arrayidx28, align 2
  %inc = add nuw nsw i32 %i.0363, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  ret void
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @phase2(ptr nocapture noundef writeonly %rc4key, ptr nocapture noundef readonly %tk, ptr nocapture noundef readonly %p1k, i16 noundef zeroext %iv16) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p1k to i32
  call void @__asan_load2_noabort(i32 %0)
  %PPK.sroa.0.0.copyload = load i16, ptr %p1k, align 2
  %PPK.sroa.8.0.p1k.sroa_idx = getelementptr inbounds i8, ptr %p1k, i32 2
  %1 = ptrtoint ptr %PPK.sroa.8.0.p1k.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %1)
  %PPK.sroa.8.0.copyload = load i16, ptr %PPK.sroa.8.0.p1k.sroa_idx, align 2
  %PPK.sroa.13.0.p1k.sroa_idx = getelementptr inbounds i8, ptr %p1k, i32 4
  %2 = ptrtoint ptr %PPK.sroa.13.0.p1k.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %2)
  %PPK.sroa.13.0.copyload = load i16, ptr %PPK.sroa.13.0.p1k.sroa_idx, align 2
  %PPK.sroa.18.0.p1k.sroa_idx = getelementptr inbounds i8, ptr %p1k, i32 6
  %3 = ptrtoint ptr %PPK.sroa.18.0.p1k.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %3)
  %PPK.sroa.18.0.copyload = load i16, ptr %PPK.sroa.18.0.p1k.sroa_idx, align 2
  %PPK.sroa.23.0.p1k.sroa_idx = getelementptr i8, ptr %p1k, i32 8
  %4 = ptrtoint ptr %PPK.sroa.23.0.p1k.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %4)
  %PPK.sroa.23.0.copyload = load i16, ptr %PPK.sroa.23.0.p1k.sroa_idx, align 2
  %add = add i16 %PPK.sroa.23.0.copyload, %iv16
  %conv7 = zext i16 %add to i32
  %5 = ptrtoint ptr %tk to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %tk, align 1
  %conv9 = zext i8 %6 to i32
  %arrayidx10 = getelementptr i8, ptr %tk, i32 1
  %7 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx10, align 1
  %conv12 = zext i8 %8 to i32
  %shl = shl nuw nsw i32 %conv12, 8
  %xor430 = or i32 %shl, %conv9
  %xor13 = xor i32 %xor430, %conv7
  %idxprom = and i32 %xor13, 255
  %arrayidx15 = getelementptr [256 x i16], ptr @Sbox1, i32 0, i32 %idxprom
  %9 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %arrayidx15, align 2
  %11 = lshr i32 %xor13, 8
  %arrayidx30 = getelementptr [2 x [256 x i16]], ptr @Sbox1, i32 0, i32 1, i32 %11
  %12 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx30, align 2
  %xor32431 = xor i16 %13, %10
  %add35 = add i16 %PPK.sroa.0.0.copyload, %xor32431
  %conv38 = zext i16 %add35 to i32
  %arrayidx39 = getelementptr i8, ptr %tk, i32 2
  %14 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx39, align 1
  %conv40 = zext i8 %15 to i32
  %arrayidx41 = getelementptr i8, ptr %tk, i32 3
  %16 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx41, align 1
  %conv43 = zext i8 %17 to i32
  %shl44 = shl nuw nsw i32 %conv43, 8
  %xor45432 = or i32 %shl44, %conv40
  %xor46 = xor i32 %xor45432, %conv38
  %idxprom49 = and i32 %xor46, 255
  %arrayidx50 = getelementptr [256 x i16], ptr @Sbox1, i32 0, i32 %idxprom49
  %18 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx50, align 2
  %20 = lshr i32 %xor46, 8
  %arrayidx66 = getelementptr [2 x [256 x i16]], ptr @Sbox1, i32 0, i32 1, i32 %20
  %21 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %arrayidx66, align 2
  %xor68433 = xor i16 %22, %19
  %add71 = add i16 %PPK.sroa.8.0.copyload, %xor68433
  %conv74 = zext i16 %add71 to i32
  %arrayidx75 = getelementptr i8, ptr %tk, i32 4
  %23 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx75, align 1
  %conv76 = zext i8 %24 to i32
  %arrayidx77 = getelementptr i8, ptr %tk, i32 5
  %25 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx77, align 1
  %conv79 = zext i8 %26 to i32
  %shl80 = shl nuw nsw i32 %conv79, 8
  %xor81434 = or i32 %shl80, %conv76
  %xor82 = xor i32 %xor81434, %conv74
  %idxprom85 = and i32 %xor82, 255
  %arrayidx86 = getelementptr [256 x i16], ptr @Sbox1, i32 0, i32 %idxprom85
  %27 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %arrayidx86, align 2
  %29 = lshr i32 %xor82, 8
  %arrayidx102 = getelementptr [2 x [256 x i16]], ptr @Sbox1, i32 0, i32 1, i32 %29
  %30 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %arrayidx102, align 2
  %xor104435 = xor i16 %31, %28
  %add107 = add i16 %PPK.sroa.13.0.copyload, %xor104435
  %conv110 = zext i16 %add107 to i32
  %arrayidx111 = getelementptr i8, ptr %tk, i32 6
  %32 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx111, align 1
  %conv112 = zext i8 %33 to i32
  %arrayidx113 = getelementptr i8, ptr %tk, i32 7
  %34 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx113, align 1
  %conv115 = zext i8 %35 to i32
  %shl116 = shl nuw nsw i32 %conv115, 8
  %xor117436 = or i32 %shl116, %conv112
  %xor118 = xor i32 %xor117436, %conv110
  %idxprom121 = and i32 %xor118, 255
  %arrayidx122 = getelementptr [256 x i16], ptr @Sbox1, i32 0, i32 %idxprom121
  %36 = ptrtoint ptr %arrayidx122 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %arrayidx122, align 2
  %38 = lshr i32 %xor118, 8
  %arrayidx138 = getelementptr [2 x [256 x i16]], ptr @Sbox1, i32 0, i32 1, i32 %38
  %39 = ptrtoint ptr %arrayidx138 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %arrayidx138, align 2
  %xor140437 = xor i16 %40, %37
  %add143 = add i16 %PPK.sroa.18.0.copyload, %xor140437
  %conv146 = zext i16 %add143 to i32
  %arrayidx147 = getelementptr i8, ptr %tk, i32 8
  %41 = ptrtoint ptr %arrayidx147 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx147, align 1
  %conv148 = zext i8 %42 to i32
  %arrayidx149 = getelementptr i8, ptr %tk, i32 9
  %43 = ptrtoint ptr %arrayidx149 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx149, align 1
  %conv151 = zext i8 %44 to i32
  %shl152 = shl nuw nsw i32 %conv151, 8
  %xor153438 = or i32 %shl152, %conv148
  %xor154 = xor i32 %xor153438, %conv146
  %idxprom157 = and i32 %xor154, 255
  %arrayidx158 = getelementptr [256 x i16], ptr @Sbox1, i32 0, i32 %idxprom157
  %45 = ptrtoint ptr %arrayidx158 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %arrayidx158, align 2
  %47 = lshr i32 %xor154, 8
  %arrayidx174 = getelementptr [2 x [256 x i16]], ptr @Sbox1, i32 0, i32 1, i32 %47
  %48 = ptrtoint ptr %arrayidx174 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %arrayidx174, align 2
  %xor176439 = xor i16 %49, %46
  %add179 = add i16 %PPK.sroa.23.0.copyload, %xor176439
  %conv182 = zext i16 %add179 to i32
  %arrayidx183 = getelementptr i8, ptr %tk, i32 10
  %50 = ptrtoint ptr %arrayidx183 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx183, align 1
  %conv184 = zext i8 %51 to i32
  %arrayidx185 = getelementptr i8, ptr %tk, i32 11
  %52 = ptrtoint ptr %arrayidx185 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx185, align 1
  %conv187 = zext i8 %53 to i32
  %shl188 = shl nuw nsw i32 %conv187, 8
  %xor189440 = or i32 %shl188, %conv184
  %xor190 = xor i32 %xor189440, %conv182
  %idxprom193 = and i32 %xor190, 255
  %arrayidx194 = getelementptr [256 x i16], ptr @Sbox1, i32 0, i32 %idxprom193
  %54 = ptrtoint ptr %arrayidx194 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %arrayidx194, align 2
  %56 = lshr i32 %xor190, 8
  %arrayidx210 = getelementptr [2 x [256 x i16]], ptr @Sbox1, i32 0, i32 1, i32 %56
  %57 = ptrtoint ptr %arrayidx210 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %arrayidx210, align 2
  %xor212441 = xor i16 %58, %55
  %add215 = add i16 %xor212441, %add
  %conv218 = zext i16 %add215 to i32
  %arrayidx219 = getelementptr i8, ptr %tk, i32 12
  %59 = ptrtoint ptr %arrayidx219 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx219, align 1
  %conv220 = zext i8 %60 to i32
  %arrayidx221 = getelementptr i8, ptr %tk, i32 13
  %61 = ptrtoint ptr %arrayidx221 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx221, align 1
  %conv223 = zext i8 %62 to i32
  %shl224 = shl nuw nsw i32 %conv223, 8
  %xor225442 = or i32 %shl224, %conv220
  %xor226 = xor i32 %xor225442, %conv218
  %63 = lshr i32 %xor226, 1
  %and239 = shl nuw nsw i32 %xor226, 15
  %xor241443 = or i32 %63, %and239
  %64 = trunc i32 %xor241443 to i16
  %conv245 = add i16 %add35, %64
  %conv247 = zext i16 %conv245 to i32
  %arrayidx248 = getelementptr i8, ptr %tk, i32 14
  %65 = ptrtoint ptr %arrayidx248 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx248, align 1
  %conv249 = zext i8 %66 to i32
  %arrayidx250 = getelementptr i8, ptr %tk, i32 15
  %67 = ptrtoint ptr %arrayidx250 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx250, align 1
  %conv252 = zext i8 %68 to i32
  %shl253 = shl nuw nsw i32 %conv252, 8
  %xor254444 = or i32 %shl253, %conv249
  %xor255 = xor i32 %xor254444, %conv247
  %69 = lshr i32 %xor255, 1
  %and268 = shl nuw nsw i32 %xor255, 15
  %xor270445 = or i32 %69, %and268
  %70 = trunc i32 %xor270445 to i16
  %conv274 = add i16 %add71, %70
  %xor283446 = tail call i16 @llvm.fshl.i16(i16 %conv274, i16 %conv274, i16 15)
  %add286 = add i16 %xor283446, %add107
  %xor296447 = tail call i16 @llvm.fshl.i16(i16 %add286, i16 %add286, i16 15)
  %add299 = add i16 %xor296447, %add143
  %xor309448 = tail call i16 @llvm.fshl.i16(i16 %add299, i16 %add299, i16 15)
  %add312 = add i16 %xor309448, %add179
  %xor322449 = tail call i16 @llvm.fshl.i16(i16 %add312, i16 %add312, i16 15)
  %add325 = add i16 %xor322449, %add215
  %71 = lshr i16 %iv16, 8
  %conv330 = trunc i16 %71 to i8
  %72 = ptrtoint ptr %rc4key to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %conv330, ptr %rc4key, align 1
  %73 = and i8 %conv330, 95
  %conv338 = or i8 %73, 32
  %arrayidx339 = getelementptr i8, ptr %rc4key, i32 1
  %74 = ptrtoint ptr %arrayidx339 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %conv338, ptr %arrayidx339, align 1
  %conv342 = trunc i16 %iv16 to i8
  %arrayidx343 = getelementptr i8, ptr %rc4key, i32 2
  %75 = ptrtoint ptr %arrayidx343 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %conv342, ptr %arrayidx343, align 1
  %76 = ptrtoint ptr %tk to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %tk, align 1
  %conv347 = zext i8 %77 to i16
  %78 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx10, align 1
  %conv350 = zext i8 %79 to i16
  %shl351 = shl nuw i16 %conv350, 8
  %xor352450 = or i16 %shl351, %conv347
  %xor353 = xor i16 %add325, %xor352450
  %80 = lshr i16 %xor353, 1
  %conv356 = trunc i16 %80 to i8
  %arrayidx357 = getelementptr i8, ptr %rc4key, i32 3
  %81 = ptrtoint ptr %arrayidx357 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %conv356, ptr %arrayidx357, align 1
  %conv365 = trunc i16 %conv245 to i8
  %arrayidx367 = getelementptr i8, ptr %rc4key, i32 4
  %82 = ptrtoint ptr %arrayidx367 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %conv365, ptr %arrayidx367, align 1
  %83 = lshr i16 %conv245, 8
  %conv372 = trunc i16 %83 to i8
  %arrayidx375 = getelementptr i8, ptr %rc4key, i32 5
  %84 = ptrtoint ptr %arrayidx375 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %conv372, ptr %arrayidx375, align 1
  %conv365.1 = trunc i16 %conv274 to i8
  %arrayidx367.1 = getelementptr i8, ptr %rc4key, i32 6
  %85 = ptrtoint ptr %arrayidx367.1 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %conv365.1, ptr %arrayidx367.1, align 1
  %86 = lshr i16 %conv274, 8
  %conv372.1 = trunc i16 %86 to i8
  %arrayidx375.1 = getelementptr i8, ptr %rc4key, i32 7
  %87 = ptrtoint ptr %arrayidx375.1 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %conv372.1, ptr %arrayidx375.1, align 1
  %conv365.2 = trunc i16 %add286 to i8
  %arrayidx367.2 = getelementptr i8, ptr %rc4key, i32 8
  %88 = ptrtoint ptr %arrayidx367.2 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %conv365.2, ptr %arrayidx367.2, align 1
  %89 = lshr i16 %add286, 8
  %conv372.2 = trunc i16 %89 to i8
  %arrayidx375.2 = getelementptr i8, ptr %rc4key, i32 9
  %90 = ptrtoint ptr %arrayidx375.2 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %conv372.2, ptr %arrayidx375.2, align 1
  %conv365.3 = trunc i16 %add299 to i8
  %arrayidx367.3 = getelementptr i8, ptr %rc4key, i32 10
  %91 = ptrtoint ptr %arrayidx367.3 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %conv365.3, ptr %arrayidx367.3, align 1
  %92 = lshr i16 %add299, 8
  %conv372.3 = trunc i16 %92 to i8
  %arrayidx375.3 = getelementptr i8, ptr %rc4key, i32 11
  %93 = ptrtoint ptr %arrayidx375.3 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %conv372.3, ptr %arrayidx375.3, align 1
  %conv365.4 = trunc i16 %add312 to i8
  %arrayidx367.4 = getelementptr i8, ptr %rc4key, i32 12
  %94 = ptrtoint ptr %arrayidx367.4 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %conv365.4, ptr %arrayidx367.4, align 1
  %95 = lshr i16 %add312, 8
  %conv372.4 = trunc i16 %95 to i8
  %arrayidx375.4 = getelementptr i8, ptr %rc4key, i32 13
  %96 = ptrtoint ptr %arrayidx375.4 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %conv372.4, ptr %arrayidx375.4, align 1
  %conv365.5 = trunc i16 %add325 to i8
  %arrayidx367.5 = getelementptr i8, ptr %rc4key, i32 14
  %97 = ptrtoint ptr %arrayidx367.5 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %conv365.5, ptr %arrayidx367.5, align 1
  %98 = lshr i16 %add325, 8
  %conv372.5 = trunc i16 %98 to i8
  %arrayidx375.5 = getelementptr i8, ptr %rc4key, i32 15
  %99 = ptrtoint ptr %arrayidx375.5 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %conv372.5, ptr %arrayidx375.5, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r8712_tkip_decrypt(ptr noundef %padapter, ptr noundef %precvframe) local_unnamed_addr #5 align 64 {
entry:
  %rc4key = alloca [16 x i8], align 1
  %ttkey = alloca [16 x i8], align 1
  %mycontext = alloca %struct.arc4context, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %rc4key) #9
  %0 = call ptr @memset(ptr %rc4key, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ttkey) #9
  %1 = call ptr @memset(ptr %ttkey, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 264, ptr nonnull %mycontext) #9
  %2 = getelementptr inbounds i8, ptr %mycontext, i32 8
  %3 = call ptr @memset(ptr %2, i32 255, i32 256)
  %rx_data = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 8
  %4 = ptrtoint ptr %rx_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rx_data, align 4
  %encrypt = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 5, i32 12
  %6 = ptrtoint ptr %encrypt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %encrypt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp = icmp eq i32 %7, 2
  br i1 %cmp, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %entry
  %stapriv = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 7
  %ta = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 5, i32 20
  %call = tail call ptr @r8712_get_stainfo(ptr noundef %stapriv, ptr noundef %ta) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %if.then1

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then1:                                         ; preds = %if.then
  %hdrlen = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 5, i32 11
  %8 = ptrtoint ptr %hdrlen to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hdrlen, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 %9
  %iv_len = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 5, i32 13
  %10 = ptrtoint ptr %iv_len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %iv_len, align 4
  %add.ptr2 = getelementptr i8, ptr %5, i32 %11
  %add.ptr4 = getelementptr i8, ptr %add.ptr2, i32 %9
  %len = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 6
  %12 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len, align 4
  %14 = add i32 %11, %9
  %sub7 = sub i32 %13, %14
  %ra = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 5, i32 21
  %15 = ptrtoint ptr %ra to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ra, align 4
  %17 = and i32 %16, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.i.not = icmp eq i32 %17, 0
  br i1 %tobool.i.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.then1
  %arrayidx10 = getelementptr i8, ptr %add.ptr, i32 3
  %18 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx10, align 1
  %20 = lshr i8 %19, 6
  %21 = zext i8 %20 to i32
  %sub11 = add nsw i32 %21, -1
  %arrayidx12 = getelementptr %struct._adapter, ptr %padapter, i32 0, i32 8, i32 7, i32 %sub11
  %binstallGrpkey = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 8, i32 16
  %22 = ptrtoint ptr %binstallGrpkey to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %binstallGrpkey, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool14.not = icmp eq i8 %23, 0
  br i1 %tobool14.not, label %if.then9.cleanup_crit_edge, label %if.then9.do.body_crit_edge

if.then9.do.body_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else:                                          ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #11
  %x_UncstKey = getelementptr inbounds %struct.sta_info, ptr %call, i32 0, i32 14
  br label %do.body

do.body:                                          ; preds = %if.else, %if.then9.do.body_crit_edge
  %prwskey.0 = phi ptr [ %arrayidx12, %if.then9.do.body_crit_edge ], [ %x_UncstKey, %if.else ]
  %arrayidx18 = getelementptr i8, ptr %add.ptr, i32 2
  %24 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx18, align 1
  %26 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %add.ptr, align 1
  %arrayidx20 = getelementptr i8, ptr %add.ptr, i32 4
  %28 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx20, align 1
  %arrayidx21 = getelementptr i8, ptr %add.ptr, i32 5
  %30 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx21, align 1
  %arrayidx22 = getelementptr i8, ptr %add.ptr, i32 6
  %32 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx22, align 1
  %arrayidx23 = getelementptr i8, ptr %add.ptr, i32 7
  %34 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx23, align 1
  %txpn.sroa.10.0.insert.ext = zext i8 %25 to i64
  %txpn.sroa.9.0.insert.ext = zext i8 %27 to i64
  %txpn.sroa.9.0.insert.shift = shl nuw nsw i64 %txpn.sroa.9.0.insert.ext, 8
  %txpn.sroa.9.0.insert.insert = or i64 %txpn.sroa.9.0.insert.shift, %txpn.sroa.10.0.insert.ext
  %txpn.sroa.8.0.insert.ext = zext i8 %29 to i64
  %txpn.sroa.8.0.insert.shift = shl nuw nsw i64 %txpn.sroa.8.0.insert.ext, 16
  %txpn.sroa.8.0.insert.insert = or i64 %txpn.sroa.9.0.insert.insert, %txpn.sroa.8.0.insert.shift
  %txpn.sroa.7.0.insert.ext = zext i8 %31 to i64
  %txpn.sroa.7.0.insert.shift = shl nuw nsw i64 %txpn.sroa.7.0.insert.ext, 24
  %txpn.sroa.7.0.insert.insert = or i64 %txpn.sroa.8.0.insert.insert, %txpn.sroa.7.0.insert.shift
  %txpn.sroa.6.0.insert.ext = zext i8 %33 to i64
  %txpn.sroa.6.0.insert.shift = shl nuw nsw i64 %txpn.sroa.6.0.insert.ext, 32
  %txpn.sroa.5.0.insert.ext = zext i8 %35 to i64
  %txpn.sroa.5.0.insert.shift = shl nuw nsw i64 %txpn.sroa.5.0.insert.ext, 40
  %txpn.sroa.5.0.insert.mask = or i64 %txpn.sroa.7.0.insert.insert, %txpn.sroa.6.0.insert.shift
  %txpn.sroa.0.0.insert.mask = or i64 %txpn.sroa.5.0.insert.mask, %txpn.sroa.5.0.insert.shift
  %conv24 = trunc i64 %txpn.sroa.9.0.insert.insert to i16
  %txpn.sroa.0.0.insert.insert = lshr i64 %txpn.sroa.0.0.insert.mask, 16
  %conv26 = trunc i64 %txpn.sroa.0.0.insert.insert to i32
  call fastcc void @phase1(ptr noundef nonnull %ttkey, ptr noundef %prwskey.0, ptr noundef %ta, i32 noundef %conv26)
  call fastcc void @phase2(ptr noundef nonnull %rc4key, ptr noundef %prwskey.0, ptr noundef nonnull %ttkey, i16 noundef zeroext %conv24)
  %state1.i = getelementptr inbounds %struct.arc4context, ptr %mycontext, i32 0, i32 2
  %36 = ptrtoint ptr %mycontext to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %mycontext, align 4
  %y.i = getelementptr inbounds %struct.arc4context, ptr %mycontext, i32 0, i32 1
  %37 = ptrtoint ptr %y.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %y.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %do.body
  %counter.040.i = phi i32 [ 0, %do.body ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %conv.i = trunc i32 %counter.040.i to i8
  %arrayidx.i = getelementptr i8, ptr %state1.i, i32 %counter.040.i
  %38 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv.i, ptr %arrayidx.i, align 1
  %inc.i = add nuw nsw i32 %counter.040.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 256
  br i1 %exitcond.not.i, label %for.body.i.for.body5.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body.i.for.body5.i_crit_edge:                 ; preds = %for.body.i
  br label %for.body5.i

for.body5.i:                                      ; preds = %for.body5.i.for.body5.i_crit_edge, %for.body.i.for.body5.i_crit_edge
  %counter.143.i = phi i32 [ %inc21.i, %for.body5.i.for.body5.i_crit_edge ], [ 0, %for.body.i.for.body5.i_crit_edge ]
  %stateindex.042.i = phi i32 [ %and.i, %for.body5.i.for.body5.i_crit_edge ], [ 0, %for.body.i.for.body5.i_crit_edge ]
  %keyindex.041.i = phi i32 [ %spec.store.select.i, %for.body5.i.for.body5.i_crit_edge ], [ 0, %for.body.i.for.body5.i_crit_edge ]
  %arrayidx6.i = getelementptr i8, ptr %state1.i, i32 %counter.143.i
  %39 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx6.i, align 1
  %conv7.i = zext i8 %40 to i32
  %arrayidx8.i = getelementptr i8, ptr %rc4key, i32 %keyindex.041.i
  %41 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx8.i, align 1
  %conv9.i = zext i8 %42 to i32
  %add.i = add nuw nsw i32 %stateindex.042.i, %conv7.i
  %add10.i = add nuw nsw i32 %add.i, %conv9.i
  %and.i = and i32 %add10.i, 255
  %arrayidx11.i = getelementptr i8, ptr %state1.i, i32 %and.i
  %43 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx11.i, align 1
  store i8 %40, ptr %arrayidx11.i, align 1
  store i8 %44, ptr %arrayidx6.i, align 1
  %inc17.i = add i32 %keyindex.041.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %inc17.i)
  %cmp18.not.i = icmp ult i32 %inc17.i, 16
  %spec.store.select.i = select i1 %cmp18.not.i, i32 %inc17.i, i32 0
  %inc21.i = add nuw nsw i32 %counter.143.i, 1
  %exitcond44.not.i = icmp eq i32 %inc21.i, 256
  br i1 %exitcond44.not.i, label %arcfour_init.exit, label %for.body5.i.for.body5.i_crit_edge

for.body5.i.for.body5.i_crit_edge:                ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body5.i

arcfour_init.exit:                                ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %14)
  %cmp8.not.i = icmp eq i32 %13, %14
  br i1 %cmp8.not.i, label %arcfour_init.exit.arcfour_encrypt.exit_crit_edge, label %for.body.i115.preheader

arcfour_init.exit.arcfour_encrypt.exit_crit_edge: ; preds = %arcfour_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %arcfour_encrypt.exit

for.body.i115.preheader:                          ; preds = %arcfour_init.exit
  %45 = ptrtoint ptr %mycontext to i32
  call void @__asan_load4_noabort(i32 %45)
  %mycontext.promoted = load i32, ptr %mycontext, align 4
  %46 = ptrtoint ptr %y.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %y.i.promoted = load i32, ptr %y.i, align 4
  br label %for.body.i115

for.body.i115:                                    ; preds = %for.body.i115.for.body.i115_crit_edge, %for.body.i115.preheader
  %47 = phi i32 [ %and5.i.i, %for.body.i115.for.body.i115_crit_edge ], [ %y.i.promoted, %for.body.i115.preheader ]
  %and.i.i116 = phi i32 [ %and.i.i, %for.body.i115.for.body.i115_crit_edge ], [ %mycontext.promoted, %for.body.i115.preheader ]
  %i.09.i = phi i32 [ %inc.i113, %for.body.i115.for.body.i115_crit_edge ], [ 0, %for.body.i115.preheader ]
  %arrayidx.i112 = getelementptr i8, ptr %add.ptr4, i32 %i.09.i
  %48 = ptrtoint ptr %arrayidx.i112 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx.i112, align 1
  %add.i.i = add i32 %and.i.i116, 1
  %and.i.i = and i32 %add.i.i, 255
  %arrayidx.i.i = getelementptr i8, ptr %state1.i, i32 %and.i.i
  %50 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %51 to i32
  %add4.i.i = add i32 %47, %conv.i.i
  %and5.i.i = and i32 %add4.i.i, 255
  %arrayidx6.i.i = getelementptr i8, ptr %state1.i, i32 %and5.i.i
  %52 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx6.i.i, align 1
  %conv7.i.i = zext i8 %53 to i32
  store i8 %51, ptr %arrayidx6.i.i, align 1
  store i8 %53, ptr %arrayidx.i.i, align 1
  %add14.i.i = add nuw nsw i32 %conv7.i.i, %conv.i.i
  %and15.i.i = and i32 %add14.i.i, 255
  %arrayidx16.i.i = getelementptr i8, ptr %state1.i, i32 %and15.i.i
  %54 = ptrtoint ptr %arrayidx16.i.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx16.i.i, align 1
  %conv3.i = xor i8 %55, %49
  store i8 %conv3.i, ptr %arrayidx.i112, align 1
  %inc.i113 = add nuw i32 %i.09.i, 1
  %exitcond.not.i114 = icmp eq i32 %inc.i113, %sub7
  br i1 %exitcond.not.i114, label %for.body.i115.arcfour_encrypt.exit_crit_edge, label %for.body.i115.for.body.i115_crit_edge

for.body.i115.for.body.i115_crit_edge:            ; preds = %for.body.i115
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i115

for.body.i115.arcfour_encrypt.exit_crit_edge:     ; preds = %for.body.i115
  call void @__sanitizer_cov_trace_pc() #11
  br label %arcfour_encrypt.exit

arcfour_encrypt.exit:                             ; preds = %for.body.i115.arcfour_encrypt.exit_crit_edge, %arcfour_init.exit.arcfour_encrypt.exit_crit_edge
  %sub33 = add i32 %sub7, -4
  %call34 = tail call fastcc i32 @getcrc32(ptr noundef %add.ptr4, i32 noundef %sub33)
  br label %cleanup

cleanup:                                          ; preds = %arcfour_encrypt.exit, %if.then9.cleanup_crit_edge, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 264, ptr nonnull %mycontext) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ttkey) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %rc4key) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @r8712_aes_encrypt(ptr noundef %padapter, ptr noundef %pxmitframe) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %buf_addr = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 5
  %0 = ptrtoint ptr %buf_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buf_addr, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %1, i32 32
  %encrypt = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 17
  %2 = ptrtoint ptr %encrypt to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %encrypt, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %3)
  %cmp2 = icmp eq i8 %3, 4
  br i1 %cmp2, label %if.then4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then4:                                         ; preds = %if.end
  %psta = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 26
  %4 = ptrtoint ptr %psta to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %psta, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end7, label %if.then4.if.then9_crit_edge

if.then4.if.then9_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then9

if.end7:                                          ; preds = %if.then4
  %stapriv = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 7
  %ra = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 25
  %call = tail call ptr @r8712_get_stainfo(ptr noundef %stapriv, ptr noundef %ra) #9
  %tobool8.not = icmp eq ptr %call, null
  br i1 %tobool8.not, label %if.end7.cleanup_crit_edge, label %if.end7.if.then9_crit_edge

if.end7.if.then9_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then9

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then9:                                         ; preds = %if.end7.if.then9_crit_edge, %if.then4.if.then9_crit_edge
  %stainfo.087 = phi ptr [ %call, %if.end7.if.then9_crit_edge ], [ %5, %if.then4.if.then9_crit_edge ]
  %x_UncstKey = getelementptr inbounds %struct.sta_info, ptr %stainfo.087, i32 0, i32 14
  %nr_frags = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 10
  %6 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %nr_frags, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp1292.not = icmp eq i8 %7, 0
  br i1 %cmp1292.not, label %if.then9.cleanup_crit_edge, label %for.body.lr.ph

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.then9
  %conv1191 = zext i8 %7 to i32
  %frag_len = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 5, i32 19
  %hdrlen28 = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 9
  %iv_len31 = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 18
  %icv_len34 = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 19
  %last_txcmdsz = getelementptr inbounds %struct.xmit_frame, ptr %pxmitframe, i32 0, i32 1, i32 7
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %conv1195 = phi i32 [ %conv1191, %for.body.lr.ph ], [ %conv11, %for.inc.for.body_crit_edge ]
  %pframe.094 = phi ptr [ %add.ptr, %for.body.lr.ph ], [ %pframe.1, %for.inc.for.body_crit_edge ]
  %curfragnum.093 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %for.inc.for.body_crit_edge ]
  %add = add nuw nsw i32 %curfragnum.093, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv1195)
  %cmp16 = icmp eq i32 %add, %conv1195
  br i1 %cmp16, label %if.then18, label %if.else27

if.then18:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %last_txcmdsz to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %last_txcmdsz, align 2
  %conv19 = zext i16 %9 to i32
  %10 = ptrtoint ptr %hdrlen28 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %hdrlen28, align 1
  %conv20 = zext i8 %11 to i32
  %12 = ptrtoint ptr %iv_len31 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %iv_len31, align 2
  %conv21 = zext i8 %13 to i32
  %14 = ptrtoint ptr %icv_len34 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %icv_len34, align 1
  %conv23 = zext i8 %15 to i32
  %16 = add nuw nsw i32 %conv20, %conv21
  %17 = add nuw nsw i32 %16, %conv23
  %sub24 = sub nsw i32 %conv19, %17
  tail call fastcc void @aes_cipher(ptr noundef %x_UncstKey, i32 noundef %conv20, ptr noundef %pframe.094, i32 noundef %sub24)
  br label %for.inc

if.else27:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %frag_len to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %frag_len, align 4
  %20 = ptrtoint ptr %hdrlen28 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %hdrlen28, align 1
  %conv29 = zext i8 %21 to i32
  %22 = ptrtoint ptr %iv_len31 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %iv_len31, align 2
  %conv32 = zext i8 %23 to i32
  %24 = ptrtoint ptr %icv_len34 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %icv_len34, align 1
  %conv35 = zext i8 %25 to i32
  %26 = add nuw nsw i32 %conv29, %conv32
  %27 = add nuw nsw i32 %26, %conv35
  %sub36 = sub i32 %19, %27
  tail call fastcc void @aes_cipher(ptr noundef %x_UncstKey, i32 noundef %conv29, ptr noundef %pframe.094, i32 noundef %sub36)
  %28 = ptrtoint ptr %frag_len to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %frag_len, align 4
  %add.ptr40 = getelementptr i8, ptr %pframe.094, i32 %29
  %30 = ptrtoint ptr %add.ptr40 to i32
  %and = and i32 %30, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp41.not = icmp eq i32 %and, 0
  %add4383 = select i1 %cmp41.not, i32 0, i32 4
  %shr84 = add i32 %add4383, %30
  %shl = and i32 %shr84, -4
  %31 = inttoptr i32 %shl to ptr
  br label %for.inc

for.inc:                                          ; preds = %if.else27, %if.then18
  %pframe.1 = phi ptr [ %pframe.094, %if.then18 ], [ %31, %if.else27 ]
  %32 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %nr_frags, align 2
  %conv11 = zext i8 %33 to i32
  %cmp12 = icmp ult i32 %add, %conv11
  br i1 %cmp12, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then9.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ 0, %if.end7.cleanup_crit_edge ], [ 1, %if.then9.cleanup_crit_edge ], [ 1, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @aes_cipher(ptr nocapture noundef readonly %key, i32 noundef %hdrlen, ptr noundef %pframe, i32 noundef %plen) unnamed_addr #4 align 64 {
entry:
  %mic_iv = alloca [16 x i8], align 1
  %ctr_preload = alloca [16 x i8], align 1
  %chain_buffer = alloca [16 x i8], align 8
  %aes_out = alloca [16 x i8], align 1
  %padded_buffer = alloca [16 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %mic_iv) #9
  %0 = getelementptr inbounds [16 x i8], ptr %mic_iv, i32 0, i32 1
  %1 = getelementptr inbounds [16 x i8], ptr %mic_iv, i32 0, i32 2
  %2 = getelementptr inbounds [16 x i8], ptr %mic_iv, i32 0, i32 3
  %3 = getelementptr inbounds [16 x i8], ptr %mic_iv, i32 0, i32 4
  %4 = getelementptr inbounds [16 x i8], ptr %mic_iv, i32 0, i32 5
  %5 = getelementptr inbounds [16 x i8], ptr %mic_iv, i32 0, i32 6
  %6 = getelementptr inbounds [16 x i8], ptr %mic_iv, i32 0, i32 7
  %7 = getelementptr inbounds [16 x i8], ptr %mic_iv, i32 0, i32 8
  %8 = getelementptr inbounds [16 x i8], ptr %mic_iv, i32 0, i32 9
  %9 = getelementptr inbounds [16 x i8], ptr %mic_iv, i32 0, i32 10
  %10 = getelementptr inbounds [16 x i8], ptr %mic_iv, i32 0, i32 11
  %11 = getelementptr inbounds [16 x i8], ptr %mic_iv, i32 0, i32 12
  %12 = getelementptr inbounds [16 x i8], ptr %mic_iv, i32 0, i32 13
  %13 = getelementptr inbounds [16 x i8], ptr %mic_iv, i32 0, i32 14
  %14 = getelementptr inbounds [16 x i8], ptr %mic_iv, i32 0, i32 15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ctr_preload) #9
  %15 = getelementptr inbounds [16 x i8], ptr %ctr_preload, i32 0, i32 1
  %16 = getelementptr inbounds [16 x i8], ptr %ctr_preload, i32 0, i32 2
  %17 = getelementptr inbounds [16 x i8], ptr %ctr_preload, i32 0, i32 3
  %18 = getelementptr inbounds [16 x i8], ptr %ctr_preload, i32 0, i32 4
  %19 = getelementptr inbounds [16 x i8], ptr %ctr_preload, i32 0, i32 5
  %20 = getelementptr inbounds [16 x i8], ptr %ctr_preload, i32 0, i32 6
  %21 = getelementptr inbounds [16 x i8], ptr %ctr_preload, i32 0, i32 7
  %22 = getelementptr inbounds [16 x i8], ptr %ctr_preload, i32 0, i32 8
  %23 = getelementptr inbounds [16 x i8], ptr %ctr_preload, i32 0, i32 9
  %24 = getelementptr inbounds [16 x i8], ptr %ctr_preload, i32 0, i32 10
  %25 = getelementptr inbounds [16 x i8], ptr %ctr_preload, i32 0, i32 11
  %26 = getelementptr inbounds [16 x i8], ptr %ctr_preload, i32 0, i32 12
  %27 = getelementptr inbounds [16 x i8], ptr %ctr_preload, i32 0, i32 13
  %28 = getelementptr inbounds [16 x i8], ptr %ctr_preload, i32 0, i32 14
  %29 = getelementptr inbounds [16 x i8], ptr %ctr_preload, i32 0, i32 15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %chain_buffer) #9
  %30 = getelementptr inbounds [16 x i8], ptr %chain_buffer, i32 0, i32 1
  %31 = getelementptr inbounds [16 x i8], ptr %chain_buffer, i32 0, i32 2
  %32 = getelementptr inbounds [16 x i8], ptr %chain_buffer, i32 0, i32 3
  %33 = getelementptr inbounds [16 x i8], ptr %chain_buffer, i32 0, i32 4
  %34 = getelementptr inbounds [16 x i8], ptr %chain_buffer, i32 0, i32 5
  %35 = getelementptr inbounds [16 x i8], ptr %chain_buffer, i32 0, i32 6
  %36 = getelementptr inbounds [16 x i8], ptr %chain_buffer, i32 0, i32 7
  %37 = getelementptr inbounds [16 x i8], ptr %chain_buffer, i32 0, i32 8
  %38 = getelementptr inbounds [16 x i8], ptr %chain_buffer, i32 0, i32 9
  %39 = getelementptr inbounds [16 x i8], ptr %chain_buffer, i32 0, i32 10
  %40 = getelementptr inbounds [16 x i8], ptr %chain_buffer, i32 0, i32 11
  %41 = getelementptr inbounds [16 x i8], ptr %chain_buffer, i32 0, i32 12
  %42 = getelementptr inbounds [16 x i8], ptr %chain_buffer, i32 0, i32 13
  %43 = getelementptr inbounds [16 x i8], ptr %chain_buffer, i32 0, i32 14
  %44 = getelementptr inbounds [16 x i8], ptr %chain_buffer, i32 0, i32 15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %aes_out) #9
  %45 = getelementptr inbounds [16 x i8], ptr %aes_out, i32 0, i32 1
  %46 = getelementptr inbounds [16 x i8], ptr %aes_out, i32 0, i32 2
  %47 = getelementptr inbounds [16 x i8], ptr %aes_out, i32 0, i32 3
  %48 = getelementptr inbounds [16 x i8], ptr %aes_out, i32 0, i32 4
  %49 = getelementptr inbounds [16 x i8], ptr %aes_out, i32 0, i32 5
  %50 = getelementptr inbounds [16 x i8], ptr %aes_out, i32 0, i32 6
  %51 = getelementptr inbounds [16 x i8], ptr %aes_out, i32 0, i32 7
  %52 = getelementptr inbounds [16 x i8], ptr %aes_out, i32 0, i32 8
  %53 = getelementptr inbounds [16 x i8], ptr %aes_out, i32 0, i32 9
  %54 = getelementptr inbounds [16 x i8], ptr %aes_out, i32 0, i32 10
  %55 = getelementptr inbounds [16 x i8], ptr %aes_out, i32 0, i32 11
  %56 = getelementptr inbounds [16 x i8], ptr %aes_out, i32 0, i32 12
  %57 = getelementptr inbounds [16 x i8], ptr %aes_out, i32 0, i32 13
  %58 = getelementptr inbounds [16 x i8], ptr %aes_out, i32 0, i32 14
  %59 = getelementptr inbounds [16 x i8], ptr %aes_out, i32 0, i32 15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %padded_buffer)
  %padded_buffer.1..sroa_idx = getelementptr inbounds i8, ptr %padded_buffer, i32 1
  %padded_buffer.2..sroa_idx = getelementptr inbounds i8, ptr %padded_buffer, i32 2
  %padded_buffer.3..sroa_idx = getelementptr inbounds i8, ptr %padded_buffer, i32 3
  %padded_buffer.4..sroa_idx = getelementptr inbounds i8, ptr %padded_buffer, i32 4
  %padded_buffer.5..sroa_idx = getelementptr inbounds i8, ptr %padded_buffer, i32 5
  %padded_buffer.6..sroa_idx = getelementptr inbounds i8, ptr %padded_buffer, i32 6
  %padded_buffer.7..sroa_idx = getelementptr inbounds i8, ptr %padded_buffer, i32 7
  %padded_buffer.8..sroa_idx = getelementptr inbounds i8, ptr %padded_buffer, i32 8
  %padded_buffer.9..sroa_idx = getelementptr inbounds i8, ptr %padded_buffer, i32 9
  %padded_buffer.10..sroa_idx = getelementptr inbounds i8, ptr %padded_buffer, i32 10
  %padded_buffer.11..sroa_idx = getelementptr inbounds i8, ptr %padded_buffer, i32 11
  %padded_buffer.12..sroa_idx = getelementptr inbounds i8, ptr %padded_buffer, i32 12
  %padded_buffer.13..sroa_idx = getelementptr inbounds i8, ptr %padded_buffer, i32 13
  %padded_buffer.14..sroa_idx = getelementptr inbounds i8, ptr %padded_buffer, i32 14
  %padded_buffer.15..sroa_idx = getelementptr inbounds i8, ptr %padded_buffer, i32 15
  %60 = ptrtoint ptr %pframe to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %pframe, align 2
  %62 = getelementptr inbounds i8, ptr %mic_iv, i32 1
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 0, ptr %62, align 1
  %64 = call ptr @memset(ptr %ctr_preload, i32 0, i32 16)
  %65 = call ptr @memset(ptr %chain_buffer, i32 0, i32 16)
  %66 = call ptr @memset(ptr %aes_out, i32 0, i32 16)
  %67 = call ptr @memset(ptr %padded_buffer, i32 0, i32 16)
  %68 = add i32 %hdrlen, -24
  %switch.and = and i32 %68, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and)
  %switch.selectcmp = icmp eq i32 %switch.and, 0
  %69 = and i16 %61, -16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %69)
  %switch = icmp eq i16 %69, -32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %hdrlen)
  %cmp49.not = icmp eq i32 %hdrlen, 26
  %add52 = add i32 %hdrlen, 2
  %spec.select = select i1 %cmp49.not, i32 26, i32 %add52
  %hdrlen.addr.1 = select i1 %switch, i32 %spec.select, i32 %hdrlen
  %arrayidx = getelementptr i8, ptr %pframe, i32 %hdrlen.addr.1
  %70 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx, align 1
  %add58 = add i32 %hdrlen.addr.1, 1
  %arrayidx59 = getelementptr i8, ptr %pframe, i32 %add58
  %72 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx59, align 1
  %add61 = add i32 %hdrlen.addr.1, 4
  %arrayidx62 = getelementptr i8, ptr %pframe, i32 %add61
  %74 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx62, align 1
  %add64 = add i32 %hdrlen.addr.1, 5
  %arrayidx65 = getelementptr i8, ptr %pframe, i32 %add64
  %76 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx65, align 1
  %add67 = add i32 %hdrlen.addr.1, 6
  %arrayidx68 = getelementptr i8, ptr %pframe, i32 %add67
  %78 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx68, align 1
  %add70 = add i32 %hdrlen.addr.1, 7
  %arrayidx71 = getelementptr i8, ptr %pframe, i32 %add70
  %80 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx71, align 1
  %82 = ptrtoint ptr %mic_iv to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 89, ptr %mic_iv, align 1
  %tobool.not.i = xor i1 %switch, true
  %or.cond.i = or i1 %switch.selectcmp, %tobool.not.i
  br i1 %or.cond.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx2.i = getelementptr i8, ptr %pframe, i32 30
  %83 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %arrayidx2.i, align 1
  %85 = and i8 %84, 15
  %86 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %85, ptr %0, align 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %or.cond56.i = and i1 %switch.selectcmp, %switch
  br i1 %or.cond56.i, label %if.then8.i, label %if.end.i.if.end14.i_crit_edge

if.end.i.if.end14.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.i

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx9.i = getelementptr i8, ptr %pframe, i32 24
  %87 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %arrayidx9.i, align 1
  %89 = and i8 %88, 15
  %90 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %89, ptr %0, align 1
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then8.i, %if.end.i.if.end14.i_crit_edge
  br i1 %switch, label %if.end14.i.construct_mic_iv.exit_crit_edge, label %if.then16.i

if.end14.i.construct_mic_iv.exit_crit_edge:       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %construct_mic_iv.exit

if.then16.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #11
  %91 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 0, ptr %0, align 1
  br label %construct_mic_iv.exit

construct_mic_iv.exit:                            ; preds = %if.then16.i, %if.end14.i.construct_mic_iv.exit_crit_edge
  %arrayidx20.i = getelementptr i8, ptr %pframe, i32 10
  %92 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %arrayidx20.i, align 1
  %94 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %93, ptr %1, align 1
  %arrayidx20.1.i = getelementptr i8, ptr %pframe, i32 11
  %95 = ptrtoint ptr %arrayidx20.1.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %arrayidx20.1.i, align 1
  %97 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %96, ptr %2, align 1
  %arrayidx20.2.i = getelementptr i8, ptr %pframe, i32 12
  %98 = ptrtoint ptr %arrayidx20.2.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %arrayidx20.2.i, align 1
  %100 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %99, ptr %3, align 1
  %arrayidx20.3.i = getelementptr i8, ptr %pframe, i32 13
  %101 = ptrtoint ptr %arrayidx20.3.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %arrayidx20.3.i, align 1
  %103 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 %102, ptr %4, align 1
  %arrayidx20.4.i = getelementptr i8, ptr %pframe, i32 14
  %104 = ptrtoint ptr %arrayidx20.4.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %arrayidx20.4.i, align 1
  %106 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %105, ptr %5, align 1
  %arrayidx20.5.i = getelementptr i8, ptr %pframe, i32 15
  %107 = ptrtoint ptr %arrayidx20.5.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %arrayidx20.5.i, align 1
  %109 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %108, ptr %6, align 1
  %110 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 %81, ptr %7, align 1
  %111 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %79, ptr %8, align 1
  %112 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 %77, ptr %9, align 1
  %113 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %75, ptr %10, align 1
  %114 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 %73, ptr %11, align 1
  %115 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 %71, ptr %12, align 1
  %div55.i = lshr i32 %plen, 8
  %conv31.i = trunc i32 %div55.i to i8
  %116 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 %conv31.i, ptr %13, align 1
  %conv33.i = trunc i32 %plen to i8
  %117 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 %conv33.i, ptr %14, align 1
  %sub.i = add i32 %hdrlen.addr.1, -2
  %div.i = sdiv i32 %sub.i, 256
  %conv.i = trunc i32 %div.i to i8
  %conv2.i = trunc i32 %sub.i to i8
  %118 = ptrtoint ptr %pframe to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %pframe, align 1
  %120 = and i8 %119, -49
  %arrayidx8.i = getelementptr i8, ptr %pframe, i32 1
  %121 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %arrayidx8.i, align 1
  %123 = and i8 %122, -57
  %arrayidx13.i363 = getelementptr i8, ptr %pframe, i32 4
  %124 = ptrtoint ptr %arrayidx13.i363 to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %arrayidx13.i363, align 1
  %arrayidx15.i = getelementptr i8, ptr %pframe, i32 5
  %126 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %arrayidx15.i, align 1
  %arrayidx17.i364 = getelementptr i8, ptr %pframe, i32 6
  %128 = ptrtoint ptr %arrayidx17.i364 to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %arrayidx17.i364, align 1
  %arrayidx19.i = getelementptr i8, ptr %pframe, i32 7
  %130 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %arrayidx19.i, align 1
  %arrayidx21.i366 = getelementptr i8, ptr %pframe, i32 8
  %132 = ptrtoint ptr %arrayidx21.i366 to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %arrayidx21.i366, align 1
  %arrayidx23.i = getelementptr i8, ptr %pframe, i32 9
  %134 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %arrayidx23.i, align 1
  %arrayidx1.i = getelementptr i8, ptr %pframe, i32 16
  %136 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %arrayidx1.i, align 1
  %arrayidx3.i371 = getelementptr i8, ptr %pframe, i32 17
  %138 = ptrtoint ptr %arrayidx3.i371 to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %arrayidx3.i371, align 1
  %arrayidx5.i = getelementptr i8, ptr %pframe, i32 18
  %140 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %arrayidx5.i, align 1
  %arrayidx7.i373 = getelementptr i8, ptr %pframe, i32 19
  %142 = ptrtoint ptr %arrayidx7.i373 to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %arrayidx7.i373, align 1
  %arrayidx9.i375 = getelementptr i8, ptr %pframe, i32 20
  %144 = ptrtoint ptr %arrayidx9.i375 to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %arrayidx9.i375, align 1
  %arrayidx11.i = getelementptr i8, ptr %pframe, i32 21
  %146 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %arrayidx11.i, align 1
  %or.cond.i381 = or i1 %switch.selectcmp, %switch
  br i1 %or.cond.i381, label %construct_mic_iv.exit.if.end.i389_crit_edge, label %for.body18.preheader.i

construct_mic_iv.exit.if.end.i389_crit_edge:      ; preds = %construct_mic_iv.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i389

for.body18.preheader.i:                           ; preds = %construct_mic_iv.exit
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx19.i382 = getelementptr i8, ptr %pframe, i32 24
  %148 = ptrtoint ptr %arrayidx19.i382 to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %arrayidx19.i382, align 1
  %arrayidx19.1.i = getelementptr i8, ptr %pframe, i32 25
  %150 = ptrtoint ptr %arrayidx19.1.i to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %arrayidx19.1.i, align 1
  %arrayidx19.2.i = getelementptr i8, ptr %pframe, i32 26
  %152 = ptrtoint ptr %arrayidx19.2.i to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %arrayidx19.2.i, align 1
  %arrayidx19.3.i = getelementptr i8, ptr %pframe, i32 27
  %154 = ptrtoint ptr %arrayidx19.3.i to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %arrayidx19.3.i, align 1
  %arrayidx19.4.i = getelementptr i8, ptr %pframe, i32 28
  %156 = ptrtoint ptr %arrayidx19.4.i to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %arrayidx19.4.i, align 1
  %arrayidx19.5.i = getelementptr i8, ptr %pframe, i32 29
  %158 = ptrtoint ptr %arrayidx19.5.i to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %arrayidx19.5.i, align 1
  br label %if.end.i389

if.end.i389:                                      ; preds = %for.body18.preheader.i, %construct_mic_iv.exit.if.end.i389_crit_edge
  %mic_header2.sroa.28.0 = phi i8 [ 0, %construct_mic_iv.exit.if.end.i389_crit_edge ], [ %149, %for.body18.preheader.i ]
  %mic_header2.sroa.33.0 = phi i8 [ 0, %construct_mic_iv.exit.if.end.i389_crit_edge ], [ %151, %for.body18.preheader.i ]
  %mic_header2.sroa.38.0 = phi i8 [ 0, %construct_mic_iv.exit.if.end.i389_crit_edge ], [ %153, %for.body18.preheader.i ]
  %mic_header2.sroa.42.0 = phi i8 [ 0, %construct_mic_iv.exit.if.end.i389_crit_edge ], [ %155, %for.body18.preheader.i ]
  %mic_header2.sroa.46.0 = phi i8 [ 0, %construct_mic_iv.exit.if.end.i389_crit_edge ], [ %157, %for.body18.preheader.i ]
  %mic_header2.sroa.50.0 = phi i8 [ 0, %construct_mic_iv.exit.if.end.i389_crit_edge ], [ %159, %for.body18.preheader.i ]
  br i1 %or.cond56.i, label %if.then28.i, label %if.end.i389.if.end37.i_crit_edge

if.end.i389.if.end37.i_crit_edge:                 ; preds = %if.end.i389
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37.i

if.then28.i:                                      ; preds = %if.end.i389
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx29.i390 = getelementptr i8, ptr %pframe, i32 24
  %160 = ptrtoint ptr %arrayidx29.i390 to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %arrayidx29.i390, align 1
  %162 = and i8 %161, 15
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.then28.i, %if.end.i389.if.end37.i_crit_edge
  %mic_header2.sroa.28.1 = phi i8 [ %162, %if.then28.i ], [ %mic_header2.sroa.28.0, %if.end.i389.if.end37.i_crit_edge ]
  %mic_header2.sroa.33.1 = phi i8 [ 0, %if.then28.i ], [ %mic_header2.sroa.33.0, %if.end.i389.if.end37.i_crit_edge ]
  br i1 %or.cond.i, label %if.end37.i.construct_mic_header2.exit_crit_edge, label %for.body45.preheader.i

if.end37.i.construct_mic_header2.exit_crit_edge:  ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %construct_mic_header2.exit

for.body45.preheader.i:                           ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx47.i = getelementptr i8, ptr %pframe, i32 24
  %163 = ptrtoint ptr %arrayidx47.i to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %arrayidx47.i, align 1
  %arrayidx47.1.i = getelementptr i8, ptr %pframe, i32 25
  %165 = ptrtoint ptr %arrayidx47.1.i to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %arrayidx47.1.i, align 1
  %arrayidx47.2.i = getelementptr i8, ptr %pframe, i32 26
  %167 = ptrtoint ptr %arrayidx47.2.i to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %arrayidx47.2.i, align 1
  %arrayidx47.3.i = getelementptr i8, ptr %pframe, i32 27
  %169 = ptrtoint ptr %arrayidx47.3.i to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %arrayidx47.3.i, align 1
  %arrayidx47.4.i = getelementptr i8, ptr %pframe, i32 28
  %171 = ptrtoint ptr %arrayidx47.4.i to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %arrayidx47.4.i, align 1
  %arrayidx47.5.i = getelementptr i8, ptr %pframe, i32 29
  %173 = ptrtoint ptr %arrayidx47.5.i to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %arrayidx47.5.i, align 1
  %arrayidx53.i = getelementptr i8, ptr %pframe, i32 30
  %175 = ptrtoint ptr %arrayidx53.i to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %arrayidx53.i, align 1
  %177 = and i8 %176, 15
  br label %construct_mic_header2.exit

construct_mic_header2.exit:                       ; preds = %for.body45.preheader.i, %if.end37.i.construct_mic_header2.exit_crit_edge
  %mic_header2.sroa.28.2 = phi i8 [ %mic_header2.sroa.28.1, %if.end37.i.construct_mic_header2.exit_crit_edge ], [ %164, %for.body45.preheader.i ]
  %mic_header2.sroa.33.2 = phi i8 [ %mic_header2.sroa.33.1, %if.end37.i.construct_mic_header2.exit_crit_edge ], [ %166, %for.body45.preheader.i ]
  %mic_header2.sroa.38.1 = phi i8 [ %mic_header2.sroa.38.0, %if.end37.i.construct_mic_header2.exit_crit_edge ], [ %168, %for.body45.preheader.i ]
  %mic_header2.sroa.42.1 = phi i8 [ %mic_header2.sroa.42.0, %if.end37.i.construct_mic_header2.exit_crit_edge ], [ %170, %for.body45.preheader.i ]
  %mic_header2.sroa.46.1 = phi i8 [ %mic_header2.sroa.46.0, %if.end37.i.construct_mic_header2.exit_crit_edge ], [ %172, %for.body45.preheader.i ]
  %mic_header2.sroa.50.1 = phi i8 [ %mic_header2.sroa.50.0, %if.end37.i.construct_mic_header2.exit_crit_edge ], [ %174, %for.body45.preheader.i ]
  %mic_header2.sroa.54.0 = phi i8 [ 0, %if.end37.i.construct_mic_header2.exit_crit_edge ], [ %177, %for.body45.preheader.i ]
  %rem = and i32 %plen, 15
  %div362 = lshr i32 %plen, 4
  %add77 = add i32 %hdrlen.addr.1, 8
  call fastcc void @aes128k128d(ptr noundef %key, ptr noundef nonnull %mic_iv, ptr noundef nonnull %aes_out)
  %178 = ptrtoint ptr %aes_out to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %aes_out, align 1
  %xor9.i = xor i8 %179, %conv.i
  %180 = ptrtoint ptr %chain_buffer to i32
  call void @__asan_store1_noabort(i32 %180)
  store i8 %xor9.i, ptr %chain_buffer, align 8
  %181 = ptrtoint ptr %45 to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %45, align 1
  %xor9.1.i = xor i8 %182, %conv2.i
  %183 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %183)
  store i8 %xor9.1.i, ptr %30, align 1
  %184 = ptrtoint ptr %46 to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %46, align 1
  %xor9.2.i = xor i8 %185, %120
  %186 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %186)
  store i8 %xor9.2.i, ptr %31, align 2
  %187 = ptrtoint ptr %47 to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %47, align 1
  %xor9.3.i = xor i8 %188, %123
  %189 = ptrtoint ptr %32 to i32
  call void @__asan_store1_noabort(i32 %189)
  store i8 %xor9.3.i, ptr %32, align 1
  %190 = ptrtoint ptr %48 to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %48, align 1
  %xor9.4.i = xor i8 %191, %125
  %192 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %192)
  store i8 %xor9.4.i, ptr %33, align 4
  %193 = ptrtoint ptr %49 to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %49, align 1
  %xor9.5.i = xor i8 %194, %127
  %195 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %195)
  store i8 %xor9.5.i, ptr %34, align 1
  %196 = ptrtoint ptr %50 to i32
  call void @__asan_load1_noabort(i32 %196)
  %197 = load i8, ptr %50, align 1
  %xor9.6.i = xor i8 %197, %129
  %198 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %198)
  store i8 %xor9.6.i, ptr %35, align 2
  %199 = ptrtoint ptr %51 to i32
  call void @__asan_load1_noabort(i32 %199)
  %200 = load i8, ptr %51, align 1
  %xor9.7.i = xor i8 %200, %131
  %201 = ptrtoint ptr %36 to i32
  call void @__asan_store1_noabort(i32 %201)
  store i8 %xor9.7.i, ptr %36, align 1
  %202 = ptrtoint ptr %52 to i32
  call void @__asan_load1_noabort(i32 %202)
  %203 = load i8, ptr %52, align 1
  %xor9.8.i = xor i8 %203, %133
  %204 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %204)
  store i8 %xor9.8.i, ptr %37, align 8
  %205 = ptrtoint ptr %53 to i32
  call void @__asan_load1_noabort(i32 %205)
  %206 = load i8, ptr %53, align 1
  %xor9.9.i = xor i8 %206, %135
  %207 = ptrtoint ptr %38 to i32
  call void @__asan_store1_noabort(i32 %207)
  store i8 %xor9.9.i, ptr %38, align 1
  %208 = ptrtoint ptr %54 to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load i8, ptr %54, align 1
  %xor9.10.i = xor i8 %209, %93
  %210 = ptrtoint ptr %39 to i32
  call void @__asan_store1_noabort(i32 %210)
  store i8 %xor9.10.i, ptr %39, align 2
  %211 = ptrtoint ptr %55 to i32
  call void @__asan_load1_noabort(i32 %211)
  %212 = load i8, ptr %55, align 1
  %xor9.11.i = xor i8 %212, %96
  %213 = ptrtoint ptr %40 to i32
  call void @__asan_store1_noabort(i32 %213)
  store i8 %xor9.11.i, ptr %40, align 1
  %214 = ptrtoint ptr %56 to i32
  call void @__asan_load1_noabort(i32 %214)
  %215 = load i8, ptr %56, align 1
  %xor9.12.i = xor i8 %215, %99
  %216 = ptrtoint ptr %41 to i32
  call void @__asan_store1_noabort(i32 %216)
  store i8 %xor9.12.i, ptr %41, align 4
  %217 = ptrtoint ptr %57 to i32
  call void @__asan_load1_noabort(i32 %217)
  %218 = load i8, ptr %57, align 1
  %xor9.13.i = xor i8 %218, %102
  %219 = ptrtoint ptr %42 to i32
  call void @__asan_store1_noabort(i32 %219)
  store i8 %xor9.13.i, ptr %42, align 1
  %220 = ptrtoint ptr %58 to i32
  call void @__asan_load1_noabort(i32 %220)
  %221 = load i8, ptr %58, align 1
  %xor9.14.i = xor i8 %221, %105
  %222 = ptrtoint ptr %43 to i32
  call void @__asan_store1_noabort(i32 %222)
  store i8 %xor9.14.i, ptr %43, align 2
  %223 = ptrtoint ptr %59 to i32
  call void @__asan_load1_noabort(i32 %223)
  %224 = load i8, ptr %59, align 1
  %xor9.15.i = xor i8 %224, %108
  %225 = ptrtoint ptr %44 to i32
  call void @__asan_store1_noabort(i32 %225)
  store i8 %xor9.15.i, ptr %44, align 1
  call fastcc void @aes128k128d(ptr noundef %key, ptr noundef nonnull %chain_buffer, ptr noundef nonnull %aes_out)
  %226 = ptrtoint ptr %aes_out to i32
  call void @__asan_load1_noabort(i32 %226)
  %227 = load i8, ptr %aes_out, align 1
  %xor9.i393 = xor i8 %227, %137
  %228 = ptrtoint ptr %chain_buffer to i32
  call void @__asan_store1_noabort(i32 %228)
  store i8 %xor9.i393, ptr %chain_buffer, align 8
  %229 = ptrtoint ptr %45 to i32
  call void @__asan_load1_noabort(i32 %229)
  %230 = load i8, ptr %45, align 1
  %xor9.1.i396 = xor i8 %230, %139
  %231 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %231)
  store i8 %xor9.1.i396, ptr %30, align 1
  %232 = ptrtoint ptr %46 to i32
  call void @__asan_load1_noabort(i32 %232)
  %233 = load i8, ptr %46, align 1
  %xor9.2.i400 = xor i8 %233, %141
  %234 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %234)
  store i8 %xor9.2.i400, ptr %31, align 2
  %235 = ptrtoint ptr %47 to i32
  call void @__asan_load1_noabort(i32 %235)
  %236 = load i8, ptr %47, align 1
  %xor9.3.i404 = xor i8 %236, %143
  %237 = ptrtoint ptr %32 to i32
  call void @__asan_store1_noabort(i32 %237)
  store i8 %xor9.3.i404, ptr %32, align 1
  %238 = ptrtoint ptr %48 to i32
  call void @__asan_load1_noabort(i32 %238)
  %239 = load i8, ptr %48, align 1
  %xor9.4.i408 = xor i8 %239, %145
  %240 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %240)
  store i8 %xor9.4.i408, ptr %33, align 4
  %241 = ptrtoint ptr %49 to i32
  call void @__asan_load1_noabort(i32 %241)
  %242 = load i8, ptr %49, align 1
  %xor9.5.i412 = xor i8 %242, %147
  %243 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %243)
  store i8 %xor9.5.i412, ptr %34, align 1
  %244 = ptrtoint ptr %50 to i32
  call void @__asan_load1_noabort(i32 %244)
  %245 = load i8, ptr %50, align 1
  %246 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %246)
  store i8 %245, ptr %35, align 2
  %247 = ptrtoint ptr %51 to i32
  call void @__asan_load1_noabort(i32 %247)
  %248 = load i8, ptr %51, align 1
  %249 = ptrtoint ptr %36 to i32
  call void @__asan_store1_noabort(i32 %249)
  store i8 %248, ptr %36, align 1
  %250 = ptrtoint ptr %52 to i32
  call void @__asan_load1_noabort(i32 %250)
  %251 = load i8, ptr %52, align 1
  %xor9.8.i424 = xor i8 %251, %mic_header2.sroa.28.2
  %252 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %252)
  store i8 %xor9.8.i424, ptr %37, align 8
  %253 = ptrtoint ptr %53 to i32
  call void @__asan_load1_noabort(i32 %253)
  %254 = load i8, ptr %53, align 1
  %xor9.9.i428 = xor i8 %254, %mic_header2.sroa.33.2
  %255 = ptrtoint ptr %38 to i32
  call void @__asan_store1_noabort(i32 %255)
  store i8 %xor9.9.i428, ptr %38, align 1
  %256 = ptrtoint ptr %54 to i32
  call void @__asan_load1_noabort(i32 %256)
  %257 = load i8, ptr %54, align 1
  %xor9.10.i432 = xor i8 %257, %mic_header2.sroa.38.1
  %258 = ptrtoint ptr %39 to i32
  call void @__asan_store1_noabort(i32 %258)
  store i8 %xor9.10.i432, ptr %39, align 2
  %259 = ptrtoint ptr %55 to i32
  call void @__asan_load1_noabort(i32 %259)
  %260 = load i8, ptr %55, align 1
  %xor9.11.i436 = xor i8 %260, %mic_header2.sroa.42.1
  %261 = ptrtoint ptr %40 to i32
  call void @__asan_store1_noabort(i32 %261)
  store i8 %xor9.11.i436, ptr %40, align 1
  %262 = ptrtoint ptr %56 to i32
  call void @__asan_load1_noabort(i32 %262)
  %263 = load i8, ptr %56, align 1
  %xor9.12.i440 = xor i8 %263, %mic_header2.sroa.46.1
  %264 = ptrtoint ptr %41 to i32
  call void @__asan_store1_noabort(i32 %264)
  store i8 %xor9.12.i440, ptr %41, align 4
  %265 = ptrtoint ptr %57 to i32
  call void @__asan_load1_noabort(i32 %265)
  %266 = load i8, ptr %57, align 1
  %xor9.13.i444 = xor i8 %266, %mic_header2.sroa.50.1
  %267 = ptrtoint ptr %42 to i32
  call void @__asan_store1_noabort(i32 %267)
  store i8 %xor9.13.i444, ptr %42, align 1
  %268 = ptrtoint ptr %58 to i32
  call void @__asan_load1_noabort(i32 %268)
  %269 = load i8, ptr %58, align 1
  %xor9.14.i448 = xor i8 %269, %mic_header2.sroa.54.0
  %270 = ptrtoint ptr %43 to i32
  call void @__asan_store1_noabort(i32 %270)
  store i8 %xor9.14.i448, ptr %43, align 2
  %271 = ptrtoint ptr %59 to i32
  call void @__asan_load1_noabort(i32 %271)
  %272 = load i8, ptr %59, align 1
  %273 = ptrtoint ptr %44 to i32
  call void @__asan_store1_noabort(i32 %273)
  store i8 %272, ptr %44, align 1
  call fastcc void @aes128k128d(ptr noundef %key, ptr noundef nonnull %chain_buffer, ptr noundef nonnull %aes_out)
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %plen)
  %cmp90896.not = icmp ult i32 %plen, 16
  br i1 %cmp90896.not, label %construct_mic_header2.exit.for.end_crit_edge, label %for.body.preheader

construct_mic_header2.exit.for.end_crit_edge:     ; preds = %construct_mic_header2.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.preheader:                               ; preds = %construct_mic_header2.exit
  %umax = call i32 @llvm.umax.i32(i32 %div362, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %payload_index.0898 = phi i32 [ %add95, %for.body.for.body_crit_edge ], [ %add77, %for.body.preheader ]
  %i.0897 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx93 = getelementptr i8, ptr %pframe, i32 %payload_index.0898
  %274 = ptrtoint ptr %aes_out to i32
  call void @__asan_load1_noabort(i32 %274)
  %275 = load i8, ptr %aes_out, align 1
  %276 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_load1_noabort(i32 %276)
  %277 = load i8, ptr %arrayidx93, align 1
  %xor9.i454 = xor i8 %277, %275
  %278 = ptrtoint ptr %chain_buffer to i32
  call void @__asan_store1_noabort(i32 %278)
  store i8 %xor9.i454, ptr %chain_buffer, align 8
  %279 = ptrtoint ptr %45 to i32
  call void @__asan_load1_noabort(i32 %279)
  %280 = load i8, ptr %45, align 1
  %arrayidx1.1.i456 = getelementptr i8, ptr %arrayidx93, i32 1
  %281 = ptrtoint ptr %arrayidx1.1.i456 to i32
  call void @__asan_load1_noabort(i32 %281)
  %282 = load i8, ptr %arrayidx1.1.i456, align 1
  %xor9.1.i457 = xor i8 %282, %280
  %283 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %283)
  store i8 %xor9.1.i457, ptr %30, align 1
  %284 = ptrtoint ptr %46 to i32
  call void @__asan_load1_noabort(i32 %284)
  %285 = load i8, ptr %46, align 1
  %arrayidx1.2.i460 = getelementptr i8, ptr %arrayidx93, i32 2
  %286 = ptrtoint ptr %arrayidx1.2.i460 to i32
  call void @__asan_load1_noabort(i32 %286)
  %287 = load i8, ptr %arrayidx1.2.i460, align 1
  %xor9.2.i461 = xor i8 %287, %285
  %288 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %288)
  store i8 %xor9.2.i461, ptr %31, align 2
  %289 = ptrtoint ptr %47 to i32
  call void @__asan_load1_noabort(i32 %289)
  %290 = load i8, ptr %47, align 1
  %arrayidx1.3.i464 = getelementptr i8, ptr %arrayidx93, i32 3
  %291 = ptrtoint ptr %arrayidx1.3.i464 to i32
  call void @__asan_load1_noabort(i32 %291)
  %292 = load i8, ptr %arrayidx1.3.i464, align 1
  %xor9.3.i465 = xor i8 %292, %290
  %293 = ptrtoint ptr %32 to i32
  call void @__asan_store1_noabort(i32 %293)
  store i8 %xor9.3.i465, ptr %32, align 1
  %294 = ptrtoint ptr %48 to i32
  call void @__asan_load1_noabort(i32 %294)
  %295 = load i8, ptr %48, align 1
  %arrayidx1.4.i468 = getelementptr i8, ptr %arrayidx93, i32 4
  %296 = ptrtoint ptr %arrayidx1.4.i468 to i32
  call void @__asan_load1_noabort(i32 %296)
  %297 = load i8, ptr %arrayidx1.4.i468, align 1
  %xor9.4.i469 = xor i8 %297, %295
  %298 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %298)
  store i8 %xor9.4.i469, ptr %33, align 4
  %299 = ptrtoint ptr %49 to i32
  call void @__asan_load1_noabort(i32 %299)
  %300 = load i8, ptr %49, align 1
  %arrayidx1.5.i472 = getelementptr i8, ptr %arrayidx93, i32 5
  %301 = ptrtoint ptr %arrayidx1.5.i472 to i32
  call void @__asan_load1_noabort(i32 %301)
  %302 = load i8, ptr %arrayidx1.5.i472, align 1
  %xor9.5.i473 = xor i8 %302, %300
  %303 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %303)
  store i8 %xor9.5.i473, ptr %34, align 1
  %304 = ptrtoint ptr %50 to i32
  call void @__asan_load1_noabort(i32 %304)
  %305 = load i8, ptr %50, align 1
  %arrayidx1.6.i476 = getelementptr i8, ptr %arrayidx93, i32 6
  %306 = ptrtoint ptr %arrayidx1.6.i476 to i32
  call void @__asan_load1_noabort(i32 %306)
  %307 = load i8, ptr %arrayidx1.6.i476, align 1
  %xor9.6.i477 = xor i8 %307, %305
  %308 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %308)
  store i8 %xor9.6.i477, ptr %35, align 2
  %309 = ptrtoint ptr %51 to i32
  call void @__asan_load1_noabort(i32 %309)
  %310 = load i8, ptr %51, align 1
  %arrayidx1.7.i480 = getelementptr i8, ptr %arrayidx93, i32 7
  %311 = ptrtoint ptr %arrayidx1.7.i480 to i32
  call void @__asan_load1_noabort(i32 %311)
  %312 = load i8, ptr %arrayidx1.7.i480, align 1
  %xor9.7.i481 = xor i8 %312, %310
  %313 = ptrtoint ptr %36 to i32
  call void @__asan_store1_noabort(i32 %313)
  store i8 %xor9.7.i481, ptr %36, align 1
  %314 = ptrtoint ptr %52 to i32
  call void @__asan_load1_noabort(i32 %314)
  %315 = load i8, ptr %52, align 1
  %arrayidx1.8.i484 = getelementptr i8, ptr %arrayidx93, i32 8
  %316 = ptrtoint ptr %arrayidx1.8.i484 to i32
  call void @__asan_load1_noabort(i32 %316)
  %317 = load i8, ptr %arrayidx1.8.i484, align 1
  %xor9.8.i485 = xor i8 %317, %315
  %318 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %318)
  store i8 %xor9.8.i485, ptr %37, align 8
  %319 = ptrtoint ptr %53 to i32
  call void @__asan_load1_noabort(i32 %319)
  %320 = load i8, ptr %53, align 1
  %arrayidx1.9.i488 = getelementptr i8, ptr %arrayidx93, i32 9
  %321 = ptrtoint ptr %arrayidx1.9.i488 to i32
  call void @__asan_load1_noabort(i32 %321)
  %322 = load i8, ptr %arrayidx1.9.i488, align 1
  %xor9.9.i489 = xor i8 %322, %320
  %323 = ptrtoint ptr %38 to i32
  call void @__asan_store1_noabort(i32 %323)
  store i8 %xor9.9.i489, ptr %38, align 1
  %324 = ptrtoint ptr %54 to i32
  call void @__asan_load1_noabort(i32 %324)
  %325 = load i8, ptr %54, align 1
  %arrayidx1.10.i492 = getelementptr i8, ptr %arrayidx93, i32 10
  %326 = ptrtoint ptr %arrayidx1.10.i492 to i32
  call void @__asan_load1_noabort(i32 %326)
  %327 = load i8, ptr %arrayidx1.10.i492, align 1
  %xor9.10.i493 = xor i8 %327, %325
  %328 = ptrtoint ptr %39 to i32
  call void @__asan_store1_noabort(i32 %328)
  store i8 %xor9.10.i493, ptr %39, align 2
  %329 = ptrtoint ptr %55 to i32
  call void @__asan_load1_noabort(i32 %329)
  %330 = load i8, ptr %55, align 1
  %arrayidx1.11.i496 = getelementptr i8, ptr %arrayidx93, i32 11
  %331 = ptrtoint ptr %arrayidx1.11.i496 to i32
  call void @__asan_load1_noabort(i32 %331)
  %332 = load i8, ptr %arrayidx1.11.i496, align 1
  %xor9.11.i497 = xor i8 %332, %330
  %333 = ptrtoint ptr %40 to i32
  call void @__asan_store1_noabort(i32 %333)
  store i8 %xor9.11.i497, ptr %40, align 1
  %334 = ptrtoint ptr %56 to i32
  call void @__asan_load1_noabort(i32 %334)
  %335 = load i8, ptr %56, align 1
  %arrayidx1.12.i500 = getelementptr i8, ptr %arrayidx93, i32 12
  %336 = ptrtoint ptr %arrayidx1.12.i500 to i32
  call void @__asan_load1_noabort(i32 %336)
  %337 = load i8, ptr %arrayidx1.12.i500, align 1
  %xor9.12.i501 = xor i8 %337, %335
  %338 = ptrtoint ptr %41 to i32
  call void @__asan_store1_noabort(i32 %338)
  store i8 %xor9.12.i501, ptr %41, align 4
  %339 = ptrtoint ptr %57 to i32
  call void @__asan_load1_noabort(i32 %339)
  %340 = load i8, ptr %57, align 1
  %arrayidx1.13.i504 = getelementptr i8, ptr %arrayidx93, i32 13
  %341 = ptrtoint ptr %arrayidx1.13.i504 to i32
  call void @__asan_load1_noabort(i32 %341)
  %342 = load i8, ptr %arrayidx1.13.i504, align 1
  %xor9.13.i505 = xor i8 %342, %340
  %343 = ptrtoint ptr %42 to i32
  call void @__asan_store1_noabort(i32 %343)
  store i8 %xor9.13.i505, ptr %42, align 1
  %344 = ptrtoint ptr %58 to i32
  call void @__asan_load1_noabort(i32 %344)
  %345 = load i8, ptr %58, align 1
  %arrayidx1.14.i508 = getelementptr i8, ptr %arrayidx93, i32 14
  %346 = ptrtoint ptr %arrayidx1.14.i508 to i32
  call void @__asan_load1_noabort(i32 %346)
  %347 = load i8, ptr %arrayidx1.14.i508, align 1
  %xor9.14.i509 = xor i8 %347, %345
  %348 = ptrtoint ptr %43 to i32
  call void @__asan_store1_noabort(i32 %348)
  store i8 %xor9.14.i509, ptr %43, align 2
  %349 = ptrtoint ptr %59 to i32
  call void @__asan_load1_noabort(i32 %349)
  %350 = load i8, ptr %59, align 1
  %arrayidx1.15.i512 = getelementptr i8, ptr %arrayidx93, i32 15
  %351 = ptrtoint ptr %arrayidx1.15.i512 to i32
  call void @__asan_load1_noabort(i32 %351)
  %352 = load i8, ptr %arrayidx1.15.i512, align 1
  %xor9.15.i513 = xor i8 %352, %350
  %353 = ptrtoint ptr %44 to i32
  call void @__asan_store1_noabort(i32 %353)
  store i8 %xor9.15.i513, ptr %44, align 1
  %add95 = add i32 %payload_index.0898, 16
  call fastcc void @aes128k128d(ptr noundef %key, ptr noundef nonnull %chain_buffer, ptr noundef nonnull %aes_out)
  %inc = add nuw nsw i32 %i.0897, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %construct_mic_header2.exit.for.end_crit_edge
  %payload_index.0.lcssa = phi i32 [ %add77, %construct_mic_header2.exit.for.end_crit_edge ], [ %add95, %for.body.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp98.not = icmp eq i32 %rem, 0
  br i1 %cmp98.not, label %for.end.if.end124_crit_edge, label %for.end118

for.end.if.end124_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end124

for.end118:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %uglygep = getelementptr i8, ptr %pframe, i32 %payload_index.0.lcssa
  %354 = sub nuw nsw i32 16, %rem
  %355 = getelementptr i8, ptr %padded_buffer, i32 %rem
  %356 = call ptr @memset(ptr %355, i32 0, i32 %354)
  %357 = call ptr @memcpy(ptr %padded_buffer, ptr %uglygep, i32 %rem)
  %358 = add i32 %payload_index.0.lcssa, %rem
  %359 = ptrtoint ptr %aes_out to i32
  call void @__asan_load1_noabort(i32 %359)
  %360 = load i8, ptr %aes_out, align 1
  %361 = ptrtoint ptr %padded_buffer to i32
  call void @__asan_load1_noabort(i32 %361)
  %padded_buffer.0. = load i8, ptr %padded_buffer, align 8
  %xor9.i515 = xor i8 %padded_buffer.0., %360
  %362 = ptrtoint ptr %chain_buffer to i32
  call void @__asan_store1_noabort(i32 %362)
  store i8 %xor9.i515, ptr %chain_buffer, align 8
  %363 = ptrtoint ptr %45 to i32
  call void @__asan_load1_noabort(i32 %363)
  %364 = load i8, ptr %45, align 1
  %365 = ptrtoint ptr %padded_buffer.1..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %365)
  %padded_buffer.1. = load i8, ptr %padded_buffer.1..sroa_idx, align 1
  %xor9.1.i518 = xor i8 %padded_buffer.1., %364
  %366 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %366)
  store i8 %xor9.1.i518, ptr %30, align 1
  %367 = ptrtoint ptr %46 to i32
  call void @__asan_load1_noabort(i32 %367)
  %368 = load i8, ptr %46, align 1
  %369 = ptrtoint ptr %padded_buffer.2..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %369)
  %padded_buffer.2. = load i8, ptr %padded_buffer.2..sroa_idx, align 2
  %xor9.2.i522 = xor i8 %padded_buffer.2., %368
  %370 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %370)
  store i8 %xor9.2.i522, ptr %31, align 2
  %371 = ptrtoint ptr %47 to i32
  call void @__asan_load1_noabort(i32 %371)
  %372 = load i8, ptr %47, align 1
  %373 = ptrtoint ptr %padded_buffer.3..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %373)
  %padded_buffer.3. = load i8, ptr %padded_buffer.3..sroa_idx, align 1
  %xor9.3.i526 = xor i8 %padded_buffer.3., %372
  %374 = ptrtoint ptr %32 to i32
  call void @__asan_store1_noabort(i32 %374)
  store i8 %xor9.3.i526, ptr %32, align 1
  %375 = ptrtoint ptr %48 to i32
  call void @__asan_load1_noabort(i32 %375)
  %376 = load i8, ptr %48, align 1
  %377 = ptrtoint ptr %padded_buffer.4..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %377)
  %padded_buffer.4. = load i8, ptr %padded_buffer.4..sroa_idx, align 4
  %xor9.4.i530 = xor i8 %padded_buffer.4., %376
  %378 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %378)
  store i8 %xor9.4.i530, ptr %33, align 4
  %379 = ptrtoint ptr %49 to i32
  call void @__asan_load1_noabort(i32 %379)
  %380 = load i8, ptr %49, align 1
  %381 = ptrtoint ptr %padded_buffer.5..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %381)
  %padded_buffer.5. = load i8, ptr %padded_buffer.5..sroa_idx, align 1
  %xor9.5.i534 = xor i8 %padded_buffer.5., %380
  %382 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %382)
  store i8 %xor9.5.i534, ptr %34, align 1
  %383 = ptrtoint ptr %50 to i32
  call void @__asan_load1_noabort(i32 %383)
  %384 = load i8, ptr %50, align 1
  %385 = ptrtoint ptr %padded_buffer.6..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %385)
  %padded_buffer.6. = load i8, ptr %padded_buffer.6..sroa_idx, align 2
  %xor9.6.i538 = xor i8 %padded_buffer.6., %384
  %386 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %386)
  store i8 %xor9.6.i538, ptr %35, align 2
  %387 = ptrtoint ptr %51 to i32
  call void @__asan_load1_noabort(i32 %387)
  %388 = load i8, ptr %51, align 1
  %389 = ptrtoint ptr %padded_buffer.7..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %389)
  %padded_buffer.7. = load i8, ptr %padded_buffer.7..sroa_idx, align 1
  %xor9.7.i542 = xor i8 %padded_buffer.7., %388
  %390 = ptrtoint ptr %36 to i32
  call void @__asan_store1_noabort(i32 %390)
  store i8 %xor9.7.i542, ptr %36, align 1
  %391 = ptrtoint ptr %52 to i32
  call void @__asan_load1_noabort(i32 %391)
  %392 = load i8, ptr %52, align 1
  %393 = ptrtoint ptr %padded_buffer.8..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %393)
  %padded_buffer.8. = load i8, ptr %padded_buffer.8..sroa_idx, align 8
  %xor9.8.i546 = xor i8 %padded_buffer.8., %392
  %394 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %394)
  store i8 %xor9.8.i546, ptr %37, align 8
  %395 = ptrtoint ptr %53 to i32
  call void @__asan_load1_noabort(i32 %395)
  %396 = load i8, ptr %53, align 1
  %397 = ptrtoint ptr %padded_buffer.9..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %397)
  %padded_buffer.9. = load i8, ptr %padded_buffer.9..sroa_idx, align 1
  %xor9.9.i550 = xor i8 %padded_buffer.9., %396
  %398 = ptrtoint ptr %38 to i32
  call void @__asan_store1_noabort(i32 %398)
  store i8 %xor9.9.i550, ptr %38, align 1
  %399 = ptrtoint ptr %54 to i32
  call void @__asan_load1_noabort(i32 %399)
  %400 = load i8, ptr %54, align 1
  %401 = ptrtoint ptr %padded_buffer.10..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %401)
  %padded_buffer.10. = load i8, ptr %padded_buffer.10..sroa_idx, align 2
  %xor9.10.i554 = xor i8 %padded_buffer.10., %400
  %402 = ptrtoint ptr %39 to i32
  call void @__asan_store1_noabort(i32 %402)
  store i8 %xor9.10.i554, ptr %39, align 2
  %403 = ptrtoint ptr %55 to i32
  call void @__asan_load1_noabort(i32 %403)
  %404 = load i8, ptr %55, align 1
  %405 = ptrtoint ptr %padded_buffer.11..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %405)
  %padded_buffer.11. = load i8, ptr %padded_buffer.11..sroa_idx, align 1
  %xor9.11.i558 = xor i8 %padded_buffer.11., %404
  %406 = ptrtoint ptr %40 to i32
  call void @__asan_store1_noabort(i32 %406)
  store i8 %xor9.11.i558, ptr %40, align 1
  %407 = ptrtoint ptr %56 to i32
  call void @__asan_load1_noabort(i32 %407)
  %408 = load i8, ptr %56, align 1
  %409 = ptrtoint ptr %padded_buffer.12..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %409)
  %padded_buffer.12. = load i8, ptr %padded_buffer.12..sroa_idx, align 4
  %xor9.12.i562 = xor i8 %padded_buffer.12., %408
  %410 = ptrtoint ptr %41 to i32
  call void @__asan_store1_noabort(i32 %410)
  store i8 %xor9.12.i562, ptr %41, align 4
  %411 = ptrtoint ptr %57 to i32
  call void @__asan_load1_noabort(i32 %411)
  %412 = load i8, ptr %57, align 1
  %413 = ptrtoint ptr %padded_buffer.13..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %413)
  %padded_buffer.13. = load i8, ptr %padded_buffer.13..sroa_idx, align 1
  %xor9.13.i566 = xor i8 %padded_buffer.13., %412
  %414 = ptrtoint ptr %42 to i32
  call void @__asan_store1_noabort(i32 %414)
  store i8 %xor9.13.i566, ptr %42, align 1
  %415 = ptrtoint ptr %58 to i32
  call void @__asan_load1_noabort(i32 %415)
  %416 = load i8, ptr %58, align 1
  %417 = ptrtoint ptr %padded_buffer.14..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %417)
  %padded_buffer.14. = load i8, ptr %padded_buffer.14..sroa_idx, align 2
  %xor9.14.i570 = xor i8 %padded_buffer.14., %416
  %418 = ptrtoint ptr %43 to i32
  call void @__asan_store1_noabort(i32 %418)
  store i8 %xor9.14.i570, ptr %43, align 2
  %419 = ptrtoint ptr %59 to i32
  call void @__asan_load1_noabort(i32 %419)
  %420 = load i8, ptr %59, align 1
  %421 = ptrtoint ptr %padded_buffer.15..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %421)
  %padded_buffer.15. = load i8, ptr %padded_buffer.15..sroa_idx, align 1
  %xor9.15.i574 = xor i8 %padded_buffer.15., %420
  %422 = ptrtoint ptr %44 to i32
  call void @__asan_store1_noabort(i32 %422)
  store i8 %xor9.15.i574, ptr %44, align 1
  call fastcc void @aes128k128d(ptr noundef %key, ptr noundef nonnull %chain_buffer, ptr noundef nonnull %aes_out)
  br label %if.end124

if.end124:                                        ; preds = %for.end118, %for.end.if.end124_crit_edge
  %payload_index.2 = phi i32 [ %358, %for.end118 ], [ %payload_index.0.lcssa, %for.end.if.end124_crit_edge ]
  %423 = ptrtoint ptr %aes_out to i32
  call void @__asan_load1_noabort(i32 %423)
  %mic.sroa.0.0.copyload = load i8, ptr %aes_out, align 1
  %424 = ptrtoint ptr %45 to i32
  call void @__asan_load1_noabort(i32 %424)
  %mic.sroa.5.0.copyload = load i8, ptr %45, align 1
  %425 = ptrtoint ptr %46 to i32
  call void @__asan_load1_noabort(i32 %425)
  %mic.sroa.6.0.copyload = load i8, ptr %46, align 1
  %426 = ptrtoint ptr %47 to i32
  call void @__asan_load1_noabort(i32 %426)
  %mic.sroa.7.0.copyload = load i8, ptr %47, align 1
  %427 = ptrtoint ptr %48 to i32
  call void @__asan_load1_noabort(i32 %427)
  %mic.sroa.8.0.copyload = load i8, ptr %48, align 1
  %428 = ptrtoint ptr %49 to i32
  call void @__asan_load1_noabort(i32 %428)
  %mic.sroa.9.0.copyload = load i8, ptr %49, align 1
  %429 = ptrtoint ptr %50 to i32
  call void @__asan_load1_noabort(i32 %429)
  %mic.sroa.10.0.copyload = load i8, ptr %50, align 1
  %430 = ptrtoint ptr %51 to i32
  call void @__asan_load1_noabort(i32 %430)
  %mic.sroa.11.0.copyload = load i8, ptr %51, align 1
  %uglygep923 = getelementptr i8, ptr %pframe, i32 %payload_index.2
  %431 = ptrtoint ptr %uglygep923 to i32
  call void @__asan_store1_noabort(i32 %431)
  store i8 %mic.sroa.0.0.copyload, ptr %uglygep923, align 1
  %mic.sroa.5.0.uglygep923.sroa_idx = getelementptr inbounds i8, ptr %uglygep923, i32 1
  %432 = ptrtoint ptr %mic.sroa.5.0.uglygep923.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %432)
  store i8 %mic.sroa.5.0.copyload, ptr %mic.sroa.5.0.uglygep923.sroa_idx, align 1
  %mic.sroa.6.0.uglygep923.sroa_idx = getelementptr inbounds i8, ptr %uglygep923, i32 2
  %433 = ptrtoint ptr %mic.sroa.6.0.uglygep923.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %433)
  store i8 %mic.sroa.6.0.copyload, ptr %mic.sroa.6.0.uglygep923.sroa_idx, align 1
  %mic.sroa.7.0.uglygep923.sroa_idx = getelementptr inbounds i8, ptr %uglygep923, i32 3
  %434 = ptrtoint ptr %mic.sroa.7.0.uglygep923.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %434)
  store i8 %mic.sroa.7.0.copyload, ptr %mic.sroa.7.0.uglygep923.sroa_idx, align 1
  %mic.sroa.8.0.uglygep923.sroa_idx = getelementptr inbounds i8, ptr %uglygep923, i32 4
  %435 = ptrtoint ptr %mic.sroa.8.0.uglygep923.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %435)
  store i8 %mic.sroa.8.0.copyload, ptr %mic.sroa.8.0.uglygep923.sroa_idx, align 1
  %mic.sroa.9.0.uglygep923.sroa_idx = getelementptr inbounds i8, ptr %uglygep923, i32 5
  %436 = ptrtoint ptr %mic.sroa.9.0.uglygep923.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %436)
  store i8 %mic.sroa.9.0.copyload, ptr %mic.sroa.9.0.uglygep923.sroa_idx, align 1
  %mic.sroa.10.0.uglygep923.sroa_idx = getelementptr inbounds i8, ptr %uglygep923, i32 6
  %437 = ptrtoint ptr %mic.sroa.10.0.uglygep923.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %437)
  store i8 %mic.sroa.10.0.copyload, ptr %mic.sroa.10.0.uglygep923.sroa_idx, align 1
  %mic.sroa.11.0.uglygep923.sroa_idx = getelementptr inbounds i8, ptr %uglygep923, i32 7
  %438 = ptrtoint ptr %mic.sroa.11.0.uglygep923.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %438)
  store i8 %mic.sroa.11.0.copyload, ptr %mic.sroa.11.0.uglygep923.sroa_idx, align 1
  br i1 %cmp90896.not, label %if.end124.for.end169_crit_edge, label %for.body148.lr.ph

if.end124.for.end169_crit_edge:                   ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end169

for.body148.lr.ph:                                ; preds = %if.end124
  %arrayidx3.i578 = getelementptr i8, ptr %pframe, i32 30
  %arrayidx10.i583 = getelementptr i8, ptr %pframe, i32 24
  %umax925 = call i32 @llvm.umax.i32(i32 %div362, i32 1)
  br label %for.body148

for.body148:                                      ; preds = %construct_ctr_preload.exit.for.body148_crit_edge, %for.body148.lr.ph
  %payload_index.3910 = phi i32 [ %add77, %for.body148.lr.ph ], [ %556, %construct_ctr_preload.exit.for.body148_crit_edge ]
  %i.1909 = phi i32 [ 0, %for.body148.lr.ph ], [ %add151, %construct_ctr_preload.exit.for.body148_crit_edge ]
  %add151 = add nuw nsw i32 %i.1909, 1
  %439 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %439)
  store i8 0, ptr %15, align 1
  %440 = ptrtoint ptr %ctr_preload to i32
  call void @__asan_store1_noabort(i32 %440)
  store i8 1, ptr %ctr_preload, align 1
  br i1 %or.cond.i, label %for.body148.if.end.i582_crit_edge, label %if.then.i580

for.body148.if.end.i582_crit_edge:                ; preds = %for.body148
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i582

if.then.i580:                                     ; preds = %for.body148
  call void @__sanitizer_cov_trace_pc() #11
  %441 = ptrtoint ptr %arrayidx3.i578 to i32
  call void @__asan_load1_noabort(i32 %441)
  %442 = load i8, ptr %arrayidx3.i578, align 1
  %443 = and i8 %442, 15
  %444 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %444)
  store i8 %443, ptr %15, align 1
  br label %if.end.i582

if.end.i582:                                      ; preds = %if.then.i580, %for.body148.if.end.i582_crit_edge
  br i1 %or.cond56.i, label %if.then9.i, label %if.end.i582.construct_ctr_preload.exit_crit_edge

if.end.i582.construct_ctr_preload.exit_crit_edge: ; preds = %if.end.i582
  call void @__sanitizer_cov_trace_pc() #11
  br label %construct_ctr_preload.exit

if.then9.i:                                       ; preds = %if.end.i582
  call void @__sanitizer_cov_trace_pc() #11
  %445 = ptrtoint ptr %arrayidx10.i583 to i32
  call void @__asan_load1_noabort(i32 %445)
  %446 = load i8, ptr %arrayidx10.i583, align 1
  %447 = and i8 %446, 15
  %448 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %448)
  store i8 %447, ptr %15, align 1
  br label %construct_ctr_preload.exit

construct_ctr_preload.exit:                       ; preds = %if.then9.i, %if.end.i582.construct_ctr_preload.exit_crit_edge
  %449 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load1_noabort(i32 %449)
  %450 = load i8, ptr %arrayidx20.i, align 1
  %451 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %451)
  store i8 %450, ptr %16, align 1
  %452 = ptrtoint ptr %arrayidx20.1.i to i32
  call void @__asan_load1_noabort(i32 %452)
  %453 = load i8, ptr %arrayidx20.1.i, align 1
  %454 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %454)
  store i8 %453, ptr %17, align 1
  %455 = ptrtoint ptr %arrayidx20.2.i to i32
  call void @__asan_load1_noabort(i32 %455)
  %456 = load i8, ptr %arrayidx20.2.i, align 1
  %457 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %457)
  store i8 %456, ptr %18, align 1
  %458 = ptrtoint ptr %arrayidx20.3.i to i32
  call void @__asan_load1_noabort(i32 %458)
  %459 = load i8, ptr %arrayidx20.3.i, align 1
  %460 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %460)
  store i8 %459, ptr %19, align 1
  %461 = ptrtoint ptr %arrayidx20.4.i to i32
  call void @__asan_load1_noabort(i32 %461)
  %462 = load i8, ptr %arrayidx20.4.i, align 1
  %463 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %463)
  store i8 %462, ptr %20, align 1
  %464 = ptrtoint ptr %arrayidx20.5.i to i32
  call void @__asan_load1_noabort(i32 %464)
  %465 = load i8, ptr %arrayidx20.5.i, align 1
  %466 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %466)
  store i8 %465, ptr %21, align 1
  %467 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %467)
  store i8 %81, ptr %22, align 1
  %468 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %468)
  store i8 %79, ptr %23, align 1
  %469 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %469)
  store i8 %77, ptr %24, align 1
  %470 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %470)
  store i8 %75, ptr %25, align 1
  %471 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %471)
  store i8 %73, ptr %26, align 1
  %472 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %472)
  store i8 %71, ptr %27, align 1
  %div.i599.udiv974 = lshr i32 %add151, 8
  %conv34.i = trunc i32 %div.i599.udiv974 to i8
  %473 = ptrtoint ptr %28 to i32
  call void @__asan_store1_noabort(i32 %473)
  store i8 %conv34.i, ptr %28, align 1
  %conv36.i = trunc i32 %add151 to i8
  %474 = ptrtoint ptr %29 to i32
  call void @__asan_store1_noabort(i32 %474)
  store i8 %conv36.i, ptr %29, align 1
  call fastcc void @aes128k128d(ptr noundef %key, ptr noundef nonnull %ctr_preload, ptr noundef nonnull %aes_out)
  %arrayidx155 = getelementptr i8, ptr %pframe, i32 %payload_index.3910
  %475 = ptrtoint ptr %aes_out to i32
  call void @__asan_load1_noabort(i32 %475)
  %476 = load i8, ptr %aes_out, align 1
  %477 = ptrtoint ptr %arrayidx155 to i32
  call void @__asan_load1_noabort(i32 %477)
  %478 = load i8, ptr %arrayidx155, align 1
  %xor9.i601 = xor i8 %478, %476
  %479 = ptrtoint ptr %chain_buffer to i32
  call void @__asan_store1_noabort(i32 %479)
  store i8 %xor9.i601, ptr %chain_buffer, align 8
  %480 = ptrtoint ptr %45 to i32
  call void @__asan_load1_noabort(i32 %480)
  %481 = load i8, ptr %45, align 1
  %arrayidx1.1.i603 = getelementptr i8, ptr %arrayidx155, i32 1
  %482 = ptrtoint ptr %arrayidx1.1.i603 to i32
  call void @__asan_load1_noabort(i32 %482)
  %483 = load i8, ptr %arrayidx1.1.i603, align 1
  %xor9.1.i604 = xor i8 %483, %481
  %484 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %484)
  store i8 %xor9.1.i604, ptr %30, align 1
  %485 = ptrtoint ptr %46 to i32
  call void @__asan_load1_noabort(i32 %485)
  %486 = load i8, ptr %46, align 1
  %arrayidx1.2.i607 = getelementptr i8, ptr %arrayidx155, i32 2
  %487 = ptrtoint ptr %arrayidx1.2.i607 to i32
  call void @__asan_load1_noabort(i32 %487)
  %488 = load i8, ptr %arrayidx1.2.i607, align 1
  %xor9.2.i608 = xor i8 %488, %486
  %489 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %489)
  store i8 %xor9.2.i608, ptr %31, align 2
  %490 = ptrtoint ptr %47 to i32
  call void @__asan_load1_noabort(i32 %490)
  %491 = load i8, ptr %47, align 1
  %arrayidx1.3.i611 = getelementptr i8, ptr %arrayidx155, i32 3
  %492 = ptrtoint ptr %arrayidx1.3.i611 to i32
  call void @__asan_load1_noabort(i32 %492)
  %493 = load i8, ptr %arrayidx1.3.i611, align 1
  %xor9.3.i612 = xor i8 %493, %491
  %494 = ptrtoint ptr %32 to i32
  call void @__asan_store1_noabort(i32 %494)
  store i8 %xor9.3.i612, ptr %32, align 1
  %495 = ptrtoint ptr %48 to i32
  call void @__asan_load1_noabort(i32 %495)
  %496 = load i8, ptr %48, align 1
  %arrayidx1.4.i615 = getelementptr i8, ptr %arrayidx155, i32 4
  %497 = ptrtoint ptr %arrayidx1.4.i615 to i32
  call void @__asan_load1_noabort(i32 %497)
  %498 = load i8, ptr %arrayidx1.4.i615, align 1
  %xor9.4.i616 = xor i8 %498, %496
  %499 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %499)
  store i8 %xor9.4.i616, ptr %33, align 4
  %500 = ptrtoint ptr %49 to i32
  call void @__asan_load1_noabort(i32 %500)
  %501 = load i8, ptr %49, align 1
  %arrayidx1.5.i619 = getelementptr i8, ptr %arrayidx155, i32 5
  %502 = ptrtoint ptr %arrayidx1.5.i619 to i32
  call void @__asan_load1_noabort(i32 %502)
  %503 = load i8, ptr %arrayidx1.5.i619, align 1
  %xor9.5.i620 = xor i8 %503, %501
  %504 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %504)
  store i8 %xor9.5.i620, ptr %34, align 1
  %505 = ptrtoint ptr %50 to i32
  call void @__asan_load1_noabort(i32 %505)
  %506 = load i8, ptr %50, align 1
  %arrayidx1.6.i623 = getelementptr i8, ptr %arrayidx155, i32 6
  %507 = ptrtoint ptr %arrayidx1.6.i623 to i32
  call void @__asan_load1_noabort(i32 %507)
  %508 = load i8, ptr %arrayidx1.6.i623, align 1
  %xor9.6.i624 = xor i8 %508, %506
  %509 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %509)
  store i8 %xor9.6.i624, ptr %35, align 2
  %510 = ptrtoint ptr %51 to i32
  call void @__asan_load1_noabort(i32 %510)
  %511 = load i8, ptr %51, align 1
  %arrayidx1.7.i627 = getelementptr i8, ptr %arrayidx155, i32 7
  %512 = ptrtoint ptr %arrayidx1.7.i627 to i32
  call void @__asan_load1_noabort(i32 %512)
  %513 = load i8, ptr %arrayidx1.7.i627, align 1
  %xor9.7.i628 = xor i8 %513, %511
  %514 = ptrtoint ptr %36 to i32
  call void @__asan_store1_noabort(i32 %514)
  store i8 %xor9.7.i628, ptr %36, align 1
  %515 = ptrtoint ptr %52 to i32
  call void @__asan_load1_noabort(i32 %515)
  %516 = load i8, ptr %52, align 1
  %arrayidx1.8.i631 = getelementptr i8, ptr %arrayidx155, i32 8
  %517 = ptrtoint ptr %arrayidx1.8.i631 to i32
  call void @__asan_load1_noabort(i32 %517)
  %518 = load i8, ptr %arrayidx1.8.i631, align 1
  %xor9.8.i632 = xor i8 %518, %516
  %519 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %519)
  store i8 %xor9.8.i632, ptr %37, align 8
  %520 = ptrtoint ptr %53 to i32
  call void @__asan_load1_noabort(i32 %520)
  %521 = load i8, ptr %53, align 1
  %arrayidx1.9.i635 = getelementptr i8, ptr %arrayidx155, i32 9
  %522 = ptrtoint ptr %arrayidx1.9.i635 to i32
  call void @__asan_load1_noabort(i32 %522)
  %523 = load i8, ptr %arrayidx1.9.i635, align 1
  %xor9.9.i636 = xor i8 %523, %521
  %524 = ptrtoint ptr %38 to i32
  call void @__asan_store1_noabort(i32 %524)
  store i8 %xor9.9.i636, ptr %38, align 1
  %525 = ptrtoint ptr %54 to i32
  call void @__asan_load1_noabort(i32 %525)
  %526 = load i8, ptr %54, align 1
  %arrayidx1.10.i639 = getelementptr i8, ptr %arrayidx155, i32 10
  %527 = ptrtoint ptr %arrayidx1.10.i639 to i32
  call void @__asan_load1_noabort(i32 %527)
  %528 = load i8, ptr %arrayidx1.10.i639, align 1
  %xor9.10.i640 = xor i8 %528, %526
  %529 = ptrtoint ptr %39 to i32
  call void @__asan_store1_noabort(i32 %529)
  store i8 %xor9.10.i640, ptr %39, align 2
  %530 = ptrtoint ptr %55 to i32
  call void @__asan_load1_noabort(i32 %530)
  %531 = load i8, ptr %55, align 1
  %arrayidx1.11.i643 = getelementptr i8, ptr %arrayidx155, i32 11
  %532 = ptrtoint ptr %arrayidx1.11.i643 to i32
  call void @__asan_load1_noabort(i32 %532)
  %533 = load i8, ptr %arrayidx1.11.i643, align 1
  %xor9.11.i644 = xor i8 %533, %531
  %534 = ptrtoint ptr %40 to i32
  call void @__asan_store1_noabort(i32 %534)
  store i8 %xor9.11.i644, ptr %40, align 1
  %535 = ptrtoint ptr %56 to i32
  call void @__asan_load1_noabort(i32 %535)
  %536 = load i8, ptr %56, align 1
  %arrayidx1.12.i647 = getelementptr i8, ptr %arrayidx155, i32 12
  %537 = ptrtoint ptr %arrayidx1.12.i647 to i32
  call void @__asan_load1_noabort(i32 %537)
  %538 = load i8, ptr %arrayidx1.12.i647, align 1
  %xor9.12.i648 = xor i8 %538, %536
  %539 = ptrtoint ptr %41 to i32
  call void @__asan_store1_noabort(i32 %539)
  store i8 %xor9.12.i648, ptr %41, align 4
  %540 = ptrtoint ptr %57 to i32
  call void @__asan_load1_noabort(i32 %540)
  %541 = load i8, ptr %57, align 1
  %arrayidx1.13.i651 = getelementptr i8, ptr %arrayidx155, i32 13
  %542 = ptrtoint ptr %arrayidx1.13.i651 to i32
  call void @__asan_load1_noabort(i32 %542)
  %543 = load i8, ptr %arrayidx1.13.i651, align 1
  %xor9.13.i652 = xor i8 %543, %541
  %544 = ptrtoint ptr %42 to i32
  call void @__asan_store1_noabort(i32 %544)
  store i8 %xor9.13.i652, ptr %42, align 1
  %545 = ptrtoint ptr %58 to i32
  call void @__asan_load1_noabort(i32 %545)
  %546 = load i8, ptr %58, align 1
  %arrayidx1.14.i655 = getelementptr i8, ptr %arrayidx155, i32 14
  %547 = ptrtoint ptr %arrayidx1.14.i655 to i32
  call void @__asan_load1_noabort(i32 %547)
  %548 = load i8, ptr %arrayidx1.14.i655, align 1
  %xor9.14.i656 = xor i8 %548, %546
  %549 = ptrtoint ptr %43 to i32
  call void @__asan_store1_noabort(i32 %549)
  store i8 %xor9.14.i656, ptr %43, align 2
  %550 = ptrtoint ptr %59 to i32
  call void @__asan_load1_noabort(i32 %550)
  %551 = load i8, ptr %59, align 1
  %arrayidx1.15.i659 = getelementptr i8, ptr %arrayidx155, i32 15
  %552 = ptrtoint ptr %arrayidx1.15.i659 to i32
  call void @__asan_load1_noabort(i32 %552)
  %553 = load i8, ptr %arrayidx1.15.i659, align 1
  %xor9.15.i660 = xor i8 %553, %551
  %554 = ptrtoint ptr %44 to i32
  call void @__asan_store1_noabort(i32 %554)
  store i8 %xor9.15.i660, ptr %44, align 1
  %555 = call ptr @memcpy(ptr %arrayidx155, ptr %chain_buffer, i32 16)
  %556 = add i32 %payload_index.3910, 16
  %exitcond926.not = icmp eq i32 %add151, %umax925
  br i1 %exitcond926.not, label %construct_ctr_preload.exit.for.end169_crit_edge, label %construct_ctr_preload.exit.for.body148_crit_edge

construct_ctr_preload.exit.for.body148_crit_edge: ; preds = %construct_ctr_preload.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body148

construct_ctr_preload.exit.for.end169_crit_edge:  ; preds = %construct_ctr_preload.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end169

for.end169:                                       ; preds = %construct_ctr_preload.exit.for.end169_crit_edge, %if.end124.for.end169_crit_edge
  %payload_index.3.lcssa = phi i32 [ %add77, %if.end124.for.end169_crit_edge ], [ %556, %construct_ctr_preload.exit.for.end169_crit_edge ]
  br i1 %cmp98.not, label %for.end169.if.end209_crit_edge, label %if.then172

for.end169.if.end209_crit_edge:                   ; preds = %for.end169
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end209

if.then172:                                       ; preds = %for.end169
  %add175 = add nuw nsw i32 %div362, 1
  %557 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %557)
  store i8 0, ptr %15, align 1
  %558 = ptrtoint ptr %ctr_preload to i32
  call void @__asan_store1_noabort(i32 %558)
  store i8 1, ptr %ctr_preload, align 1
  br i1 %or.cond.i, label %if.then172.if.end.i669_crit_edge, label %if.then.i666

if.then172.if.end.i669_crit_edge:                 ; preds = %if.then172
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i669

if.then.i666:                                     ; preds = %if.then172
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx3.i664 = getelementptr i8, ptr %pframe, i32 30
  %559 = ptrtoint ptr %arrayidx3.i664 to i32
  call void @__asan_load1_noabort(i32 %559)
  %560 = load i8, ptr %arrayidx3.i664, align 1
  %561 = and i8 %560, 15
  %562 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %562)
  store i8 %561, ptr %15, align 1
  br label %if.end.i669

if.end.i669:                                      ; preds = %if.then.i666, %if.then172.if.end.i669_crit_edge
  br i1 %or.cond56.i, label %if.then9.i672, label %if.end.i669.for.body202.preheader_crit_edge

if.end.i669.for.body202.preheader_crit_edge:      ; preds = %if.end.i669
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body202.preheader

if.then9.i672:                                    ; preds = %if.end.i669
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx10.i670 = getelementptr i8, ptr %pframe, i32 24
  %563 = ptrtoint ptr %arrayidx10.i670 to i32
  call void @__asan_load1_noabort(i32 %563)
  %564 = load i8, ptr %arrayidx10.i670, align 1
  %565 = and i8 %564, 15
  %566 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %566)
  store i8 %565, ptr %15, align 1
  br label %for.body202.preheader

for.body202.preheader:                            ; preds = %if.then9.i672, %if.end.i669.for.body202.preheader_crit_edge
  %567 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load1_noabort(i32 %567)
  %568 = load i8, ptr %arrayidx20.i, align 1
  %569 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %569)
  store i8 %568, ptr %16, align 1
  %570 = ptrtoint ptr %arrayidx20.1.i to i32
  call void @__asan_load1_noabort(i32 %570)
  %571 = load i8, ptr %arrayidx20.1.i, align 1
  %572 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %572)
  store i8 %571, ptr %17, align 1
  %573 = ptrtoint ptr %arrayidx20.2.i to i32
  call void @__asan_load1_noabort(i32 %573)
  %574 = load i8, ptr %arrayidx20.2.i, align 1
  %575 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %575)
  store i8 %574, ptr %18, align 1
  %576 = ptrtoint ptr %arrayidx20.3.i to i32
  call void @__asan_load1_noabort(i32 %576)
  %577 = load i8, ptr %arrayidx20.3.i, align 1
  %578 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %578)
  store i8 %577, ptr %19, align 1
  %579 = ptrtoint ptr %arrayidx20.4.i to i32
  call void @__asan_load1_noabort(i32 %579)
  %580 = load i8, ptr %arrayidx20.4.i, align 1
  %581 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %581)
  store i8 %580, ptr %20, align 1
  %582 = ptrtoint ptr %arrayidx20.5.i to i32
  call void @__asan_load1_noabort(i32 %582)
  %583 = load i8, ptr %arrayidx20.5.i, align 1
  %584 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %584)
  store i8 %583, ptr %21, align 1
  %585 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %585)
  store i8 %81, ptr %22, align 1
  %586 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %586)
  store i8 %79, ptr %23, align 1
  %587 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %587)
  store i8 %77, ptr %24, align 1
  %588 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %588)
  store i8 %75, ptr %25, align 1
  %589 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %589)
  store i8 %73, ptr %26, align 1
  %590 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %590)
  store i8 %71, ptr %27, align 1
  %div.i696895 = lshr i32 %add175, 8
  %conv34.i697 = trunc i32 %div.i696895 to i8
  %591 = ptrtoint ptr %28 to i32
  call void @__asan_store1_noabort(i32 %591)
  store i8 %conv34.i697, ptr %28, align 1
  %conv36.i699 = trunc i32 %add175 to i8
  %592 = ptrtoint ptr %29 to i32
  call void @__asan_store1_noabort(i32 %592)
  store i8 %conv36.i699, ptr %29, align 1
  %uglygep927 = getelementptr i8, ptr %pframe, i32 %payload_index.3.lcssa
  %593 = sub nuw nsw i32 16, %rem
  %594 = getelementptr i8, ptr %padded_buffer, i32 %rem
  %595 = call ptr @memset(ptr %594, i32 0, i32 %593)
  %596 = call ptr @memcpy(ptr %padded_buffer, ptr %uglygep927, i32 %rem)
  call fastcc void @aes128k128d(ptr noundef %key, ptr noundef nonnull %ctr_preload, ptr noundef nonnull %aes_out)
  %597 = ptrtoint ptr %aes_out to i32
  call void @__asan_load1_noabort(i32 %597)
  %598 = load i8, ptr %aes_out, align 1
  %599 = ptrtoint ptr %padded_buffer to i32
  call void @__asan_load1_noabort(i32 %599)
  %padded_buffer.0.942 = load i8, ptr %padded_buffer, align 8
  %xor9.i702 = xor i8 %padded_buffer.0.942, %598
  %600 = ptrtoint ptr %chain_buffer to i32
  call void @__asan_store1_noabort(i32 %600)
  store i8 %xor9.i702, ptr %chain_buffer, align 8
  %601 = ptrtoint ptr %45 to i32
  call void @__asan_load1_noabort(i32 %601)
  %602 = load i8, ptr %45, align 1
  %603 = ptrtoint ptr %padded_buffer.1..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %603)
  %padded_buffer.1.944 = load i8, ptr %padded_buffer.1..sroa_idx, align 1
  %xor9.1.i705 = xor i8 %padded_buffer.1.944, %602
  %604 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %604)
  store i8 %xor9.1.i705, ptr %30, align 1
  %605 = ptrtoint ptr %46 to i32
  call void @__asan_load1_noabort(i32 %605)
  %606 = load i8, ptr %46, align 1
  %607 = ptrtoint ptr %padded_buffer.2..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %607)
  %padded_buffer.2.946 = load i8, ptr %padded_buffer.2..sroa_idx, align 2
  %xor9.2.i709 = xor i8 %padded_buffer.2.946, %606
  %608 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %608)
  store i8 %xor9.2.i709, ptr %31, align 2
  %609 = ptrtoint ptr %47 to i32
  call void @__asan_load1_noabort(i32 %609)
  %610 = load i8, ptr %47, align 1
  %611 = ptrtoint ptr %padded_buffer.3..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %611)
  %padded_buffer.3.948 = load i8, ptr %padded_buffer.3..sroa_idx, align 1
  %xor9.3.i713 = xor i8 %padded_buffer.3.948, %610
  %612 = ptrtoint ptr %32 to i32
  call void @__asan_store1_noabort(i32 %612)
  store i8 %xor9.3.i713, ptr %32, align 1
  %613 = ptrtoint ptr %48 to i32
  call void @__asan_load1_noabort(i32 %613)
  %614 = load i8, ptr %48, align 1
  %615 = ptrtoint ptr %padded_buffer.4..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %615)
  %padded_buffer.4.950 = load i8, ptr %padded_buffer.4..sroa_idx, align 4
  %xor9.4.i717 = xor i8 %padded_buffer.4.950, %614
  %616 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %616)
  store i8 %xor9.4.i717, ptr %33, align 4
  %617 = ptrtoint ptr %49 to i32
  call void @__asan_load1_noabort(i32 %617)
  %618 = load i8, ptr %49, align 1
  %619 = ptrtoint ptr %padded_buffer.5..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %619)
  %padded_buffer.5.952 = load i8, ptr %padded_buffer.5..sroa_idx, align 1
  %xor9.5.i721 = xor i8 %padded_buffer.5.952, %618
  %620 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %620)
  store i8 %xor9.5.i721, ptr %34, align 1
  %621 = ptrtoint ptr %50 to i32
  call void @__asan_load1_noabort(i32 %621)
  %622 = load i8, ptr %50, align 1
  %623 = ptrtoint ptr %padded_buffer.6..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %623)
  %padded_buffer.6.954 = load i8, ptr %padded_buffer.6..sroa_idx, align 2
  %xor9.6.i725 = xor i8 %padded_buffer.6.954, %622
  %624 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %624)
  store i8 %xor9.6.i725, ptr %35, align 2
  %625 = ptrtoint ptr %51 to i32
  call void @__asan_load1_noabort(i32 %625)
  %626 = load i8, ptr %51, align 1
  %627 = ptrtoint ptr %padded_buffer.7..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %627)
  %padded_buffer.7.956 = load i8, ptr %padded_buffer.7..sroa_idx, align 1
  %xor9.7.i729 = xor i8 %padded_buffer.7.956, %626
  %628 = ptrtoint ptr %36 to i32
  call void @__asan_store1_noabort(i32 %628)
  store i8 %xor9.7.i729, ptr %36, align 1
  %629 = ptrtoint ptr %52 to i32
  call void @__asan_load1_noabort(i32 %629)
  %630 = load i8, ptr %52, align 1
  %631 = ptrtoint ptr %padded_buffer.8..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %631)
  %padded_buffer.8.958 = load i8, ptr %padded_buffer.8..sroa_idx, align 8
  %xor9.8.i733 = xor i8 %padded_buffer.8.958, %630
  %632 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %632)
  store i8 %xor9.8.i733, ptr %37, align 8
  %633 = ptrtoint ptr %53 to i32
  call void @__asan_load1_noabort(i32 %633)
  %634 = load i8, ptr %53, align 1
  %635 = ptrtoint ptr %padded_buffer.9..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %635)
  %padded_buffer.9.960 = load i8, ptr %padded_buffer.9..sroa_idx, align 1
  %xor9.9.i737 = xor i8 %padded_buffer.9.960, %634
  %636 = ptrtoint ptr %38 to i32
  call void @__asan_store1_noabort(i32 %636)
  store i8 %xor9.9.i737, ptr %38, align 1
  %637 = ptrtoint ptr %54 to i32
  call void @__asan_load1_noabort(i32 %637)
  %638 = load i8, ptr %54, align 1
  %639 = ptrtoint ptr %padded_buffer.10..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %639)
  %padded_buffer.10.962 = load i8, ptr %padded_buffer.10..sroa_idx, align 2
  %xor9.10.i741 = xor i8 %padded_buffer.10.962, %638
  %640 = ptrtoint ptr %39 to i32
  call void @__asan_store1_noabort(i32 %640)
  store i8 %xor9.10.i741, ptr %39, align 2
  %641 = ptrtoint ptr %55 to i32
  call void @__asan_load1_noabort(i32 %641)
  %642 = load i8, ptr %55, align 1
  %643 = ptrtoint ptr %padded_buffer.11..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %643)
  %padded_buffer.11.964 = load i8, ptr %padded_buffer.11..sroa_idx, align 1
  %xor9.11.i745 = xor i8 %padded_buffer.11.964, %642
  %644 = ptrtoint ptr %40 to i32
  call void @__asan_store1_noabort(i32 %644)
  store i8 %xor9.11.i745, ptr %40, align 1
  %645 = ptrtoint ptr %56 to i32
  call void @__asan_load1_noabort(i32 %645)
  %646 = load i8, ptr %56, align 1
  %647 = ptrtoint ptr %padded_buffer.12..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %647)
  %padded_buffer.12.966 = load i8, ptr %padded_buffer.12..sroa_idx, align 4
  %xor9.12.i749 = xor i8 %padded_buffer.12.966, %646
  %648 = ptrtoint ptr %41 to i32
  call void @__asan_store1_noabort(i32 %648)
  store i8 %xor9.12.i749, ptr %41, align 4
  %649 = ptrtoint ptr %57 to i32
  call void @__asan_load1_noabort(i32 %649)
  %650 = load i8, ptr %57, align 1
  %651 = ptrtoint ptr %padded_buffer.13..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %651)
  %padded_buffer.13.968 = load i8, ptr %padded_buffer.13..sroa_idx, align 1
  %xor9.13.i753 = xor i8 %padded_buffer.13.968, %650
  %652 = ptrtoint ptr %42 to i32
  call void @__asan_store1_noabort(i32 %652)
  store i8 %xor9.13.i753, ptr %42, align 1
  %653 = ptrtoint ptr %58 to i32
  call void @__asan_load1_noabort(i32 %653)
  %654 = load i8, ptr %58, align 1
  %655 = ptrtoint ptr %padded_buffer.14..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %655)
  %padded_buffer.14.970 = load i8, ptr %padded_buffer.14..sroa_idx, align 2
  %xor9.14.i757 = xor i8 %padded_buffer.14.970, %654
  %656 = ptrtoint ptr %43 to i32
  call void @__asan_store1_noabort(i32 %656)
  store i8 %xor9.14.i757, ptr %43, align 2
  %657 = ptrtoint ptr %59 to i32
  call void @__asan_load1_noabort(i32 %657)
  %658 = load i8, ptr %59, align 1
  %659 = ptrtoint ptr %padded_buffer.15..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %659)
  %padded_buffer.15.972 = load i8, ptr %padded_buffer.15..sroa_idx, align 1
  %xor9.15.i761 = xor i8 %padded_buffer.15.972, %658
  %660 = ptrtoint ptr %44 to i32
  call void @__asan_store1_noabort(i32 %660)
  store i8 %xor9.15.i761, ptr %44, align 1
  %uglygep929 = getelementptr i8, ptr %pframe, i32 %payload_index.3.lcssa
  %661 = call ptr @memcpy(ptr %uglygep929, ptr %chain_buffer, i32 %rem)
  %662 = add i32 %payload_index.3.lcssa, %rem
  br label %if.end209

if.end209:                                        ; preds = %for.body202.preheader, %for.end169.if.end209_crit_edge
  %payload_index.6 = phi i32 [ %payload_index.3.lcssa, %for.end169.if.end209_crit_edge ], [ %662, %for.body202.preheader ]
  %663 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %663)
  store i8 0, ptr %15, align 1
  %664 = ptrtoint ptr %ctr_preload to i32
  call void @__asan_store1_noabort(i32 %664)
  store i8 1, ptr %ctr_preload, align 1
  br i1 %or.cond.i, label %if.end209.if.end.i770_crit_edge, label %if.then.i767

if.end209.if.end.i770_crit_edge:                  ; preds = %if.end209
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i770

if.then.i767:                                     ; preds = %if.end209
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx3.i765 = getelementptr i8, ptr %pframe, i32 30
  %665 = ptrtoint ptr %arrayidx3.i765 to i32
  call void @__asan_load1_noabort(i32 %665)
  %666 = load i8, ptr %arrayidx3.i765, align 1
  %667 = and i8 %666, 15
  %668 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %668)
  store i8 %667, ptr %15, align 1
  br label %if.end.i770

if.end.i770:                                      ; preds = %if.then.i767, %if.end209.if.end.i770_crit_edge
  br i1 %or.cond56.i, label %if.then9.i773, label %if.end.i770.construct_ctr_preload.exit799_crit_edge

if.end.i770.construct_ctr_preload.exit799_crit_edge: ; preds = %if.end.i770
  call void @__sanitizer_cov_trace_pc() #11
  br label %construct_ctr_preload.exit799

if.then9.i773:                                    ; preds = %if.end.i770
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx10.i771 = getelementptr i8, ptr %pframe, i32 24
  %669 = ptrtoint ptr %arrayidx10.i771 to i32
  call void @__asan_load1_noabort(i32 %669)
  %670 = load i8, ptr %arrayidx10.i771, align 1
  %671 = and i8 %670, 15
  %672 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %672)
  store i8 %671, ptr %15, align 1
  br label %construct_ctr_preload.exit799

construct_ctr_preload.exit799:                    ; preds = %if.then9.i773, %if.end.i770.construct_ctr_preload.exit799_crit_edge
  %673 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load1_noabort(i32 %673)
  %674 = load i8, ptr %arrayidx20.i, align 1
  %675 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %675)
  store i8 %674, ptr %16, align 1
  %676 = ptrtoint ptr %arrayidx20.1.i to i32
  call void @__asan_load1_noabort(i32 %676)
  %677 = load i8, ptr %arrayidx20.1.i, align 1
  %678 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %678)
  store i8 %677, ptr %17, align 1
  %679 = ptrtoint ptr %arrayidx20.2.i to i32
  call void @__asan_load1_noabort(i32 %679)
  %680 = load i8, ptr %arrayidx20.2.i, align 1
  %681 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %681)
  store i8 %680, ptr %18, align 1
  %682 = ptrtoint ptr %arrayidx20.3.i to i32
  call void @__asan_load1_noabort(i32 %682)
  %683 = load i8, ptr %arrayidx20.3.i, align 1
  %684 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %684)
  store i8 %683, ptr %19, align 1
  %685 = ptrtoint ptr %arrayidx20.4.i to i32
  call void @__asan_load1_noabort(i32 %685)
  %686 = load i8, ptr %arrayidx20.4.i, align 1
  %687 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %687)
  store i8 %686, ptr %20, align 1
  %688 = ptrtoint ptr %arrayidx20.5.i to i32
  call void @__asan_load1_noabort(i32 %688)
  %689 = load i8, ptr %arrayidx20.5.i, align 1
  %690 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %690)
  store i8 %689, ptr %21, align 1
  %691 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %691)
  store i8 %81, ptr %22, align 1
  %692 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %692)
  store i8 %79, ptr %23, align 1
  %693 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %693)
  store i8 %77, ptr %24, align 1
  %694 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %694)
  store i8 %75, ptr %25, align 1
  %695 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %695)
  store i8 %73, ptr %26, align 1
  %696 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %696)
  store i8 %71, ptr %27, align 1
  %697 = ptrtoint ptr %28 to i32
  call void @__asan_store1_noabort(i32 %697)
  store i8 0, ptr %28, align 1
  %698 = ptrtoint ptr %29 to i32
  call void @__asan_store1_noabort(i32 %698)
  store i8 0, ptr %29, align 1
  %699 = add i32 %hdrlen.addr.1, %plen
  %700 = add i32 %699, 8
  %uglygep932 = getelementptr i8, ptr %pframe, i32 %700
  %701 = ptrtoint ptr %uglygep932 to i32
  call void @__asan_loadN_noabort(i32 %701, i32 8)
  %702 = load i64, ptr %uglygep932, align 1
  %703 = ptrtoint ptr %padded_buffer to i32
  call void @__asan_store8_noabort(i32 %703)
  store i64 %702, ptr %padded_buffer, align 8
  call fastcc void @aes128k128d(ptr noundef %key, ptr noundef nonnull %ctr_preload, ptr noundef nonnull %aes_out)
  %704 = ptrtoint ptr %aes_out to i32
  call void @__asan_load1_noabort(i32 %704)
  %705 = load i8, ptr %aes_out, align 1
  %706 = ptrtoint ptr %padded_buffer to i32
  call void @__asan_load1_noabort(i32 %706)
  %padded_buffer.0.943 = load i8, ptr %padded_buffer, align 8
  %xor9.i800 = xor i8 %padded_buffer.0.943, %705
  %707 = ptrtoint ptr %chain_buffer to i32
  call void @__asan_store1_noabort(i32 %707)
  store i8 %xor9.i800, ptr %chain_buffer, align 8
  %708 = ptrtoint ptr %45 to i32
  call void @__asan_load1_noabort(i32 %708)
  %709 = load i8, ptr %45, align 1
  %710 = ptrtoint ptr %padded_buffer.1..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %710)
  %padded_buffer.1.945 = load i8, ptr %padded_buffer.1..sroa_idx, align 1
  %xor9.1.i803 = xor i8 %padded_buffer.1.945, %709
  %711 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %711)
  store i8 %xor9.1.i803, ptr %30, align 1
  %712 = ptrtoint ptr %46 to i32
  call void @__asan_load1_noabort(i32 %712)
  %713 = load i8, ptr %46, align 1
  %714 = ptrtoint ptr %padded_buffer.2..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %714)
  %padded_buffer.2.947 = load i8, ptr %padded_buffer.2..sroa_idx, align 2
  %xor9.2.i807 = xor i8 %padded_buffer.2.947, %713
  %715 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %715)
  store i8 %xor9.2.i807, ptr %31, align 2
  %716 = ptrtoint ptr %47 to i32
  call void @__asan_load1_noabort(i32 %716)
  %717 = load i8, ptr %47, align 1
  %718 = ptrtoint ptr %padded_buffer.3..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %718)
  %padded_buffer.3.949 = load i8, ptr %padded_buffer.3..sroa_idx, align 1
  %xor9.3.i811 = xor i8 %padded_buffer.3.949, %717
  %719 = ptrtoint ptr %32 to i32
  call void @__asan_store1_noabort(i32 %719)
  store i8 %xor9.3.i811, ptr %32, align 1
  %720 = ptrtoint ptr %48 to i32
  call void @__asan_load1_noabort(i32 %720)
  %721 = load i8, ptr %48, align 1
  %722 = ptrtoint ptr %padded_buffer.4..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %722)
  %padded_buffer.4.951 = load i8, ptr %padded_buffer.4..sroa_idx, align 4
  %xor9.4.i815 = xor i8 %padded_buffer.4.951, %721
  %723 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %723)
  store i8 %xor9.4.i815, ptr %33, align 4
  %724 = ptrtoint ptr %49 to i32
  call void @__asan_load1_noabort(i32 %724)
  %725 = load i8, ptr %49, align 1
  %726 = ptrtoint ptr %padded_buffer.5..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %726)
  %padded_buffer.5.953 = load i8, ptr %padded_buffer.5..sroa_idx, align 1
  %xor9.5.i819 = xor i8 %padded_buffer.5.953, %725
  %727 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %727)
  store i8 %xor9.5.i819, ptr %34, align 1
  %728 = ptrtoint ptr %50 to i32
  call void @__asan_load1_noabort(i32 %728)
  %729 = load i8, ptr %50, align 1
  %730 = ptrtoint ptr %padded_buffer.6..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %730)
  %padded_buffer.6.955 = load i8, ptr %padded_buffer.6..sroa_idx, align 2
  %xor9.6.i823 = xor i8 %padded_buffer.6.955, %729
  %731 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %731)
  store i8 %xor9.6.i823, ptr %35, align 2
  %732 = ptrtoint ptr %51 to i32
  call void @__asan_load1_noabort(i32 %732)
  %733 = load i8, ptr %51, align 1
  %734 = ptrtoint ptr %padded_buffer.7..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %734)
  %padded_buffer.7.957 = load i8, ptr %padded_buffer.7..sroa_idx, align 1
  %xor9.7.i827 = xor i8 %padded_buffer.7.957, %733
  %735 = ptrtoint ptr %36 to i32
  call void @__asan_store1_noabort(i32 %735)
  store i8 %xor9.7.i827, ptr %36, align 1
  %uglygep933 = getelementptr i8, ptr %pframe, i32 %payload_index.6
  %736 = load i64, ptr %chain_buffer, align 8
  %737 = ptrtoint ptr %uglygep933 to i32
  call void @__asan_storeN_noabort(i32 %737, i32 8)
  store i64 %736, ptr %uglygep933, align 1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %padded_buffer)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %aes_out) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %chain_buffer) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ctr_preload) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %mic_iv) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r8712_aes_decrypt(ptr noundef %padapter, ptr noundef %precvframe) local_unnamed_addr #5 align 64 {
entry:
  %mic_iv.i = alloca [16 x i8], align 1
  %ctr_preload.i = alloca [16 x i8], align 1
  %chain_buffer.i = alloca [16 x i8], align 8
  %aes_out.i = alloca [16 x i8], align 1
  %padded_buffer.i = alloca [16 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_data = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 8
  %0 = ptrtoint ptr %rx_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_data, align 4
  %encrypt = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 5, i32 12
  %2 = ptrtoint ptr %encrypt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %encrypt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp = icmp eq i32 %3, 4
  br i1 %cmp, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %entry
  %stapriv = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 7
  %ta = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 5, i32 20
  %call = tail call ptr @r8712_get_stainfo(ptr noundef %stapriv, ptr noundef %ta) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %if.then1

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then1:                                         ; preds = %if.then
  %ra = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 5, i32 21
  %4 = ptrtoint ptr %ra to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ra, align 4
  %6 = and i32 %5, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.i.not = icmp eq i32 %6, 0
  br i1 %tobool.i.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.then1
  %hdrlen = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 5, i32 11
  %7 = ptrtoint ptr %hdrlen to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %hdrlen, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %8
  %arrayidx4 = getelementptr i8, ptr %add.ptr, i32 3
  %9 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx4, align 1
  %11 = lshr i8 %10, 6
  %12 = zext i8 %11 to i32
  %sub = add nsw i32 %12, -1
  %arrayidx5 = getelementptr %struct._adapter, ptr %padapter, i32 0, i32 8, i32 7, i32 %sub
  %binstallGrpkey = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 8, i32 16
  %13 = ptrtoint ptr %binstallGrpkey to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %binstallGrpkey, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool7.not = icmp eq i8 %14, 0
  br i1 %tobool7.not, label %if.then3.cleanup_crit_edge, label %if.then3.if.end10_crit_edge

if.then3.if.end10_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else:                                          ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #11
  %x_UncstKey = getelementptr inbounds %struct.sta_info, ptr %call, i32 0, i32 14
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then3.if.end10_crit_edge
  %prwskey.0 = phi ptr [ %arrayidx5, %if.then3.if.end10_crit_edge ], [ %x_UncstKey, %if.else ]
  %len = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 6
  %15 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len, align 4
  %hdrlen11 = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 5, i32 11
  %17 = ptrtoint ptr %hdrlen11 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %hdrlen11, align 4
  %iv_len = getelementptr inbounds %struct.recv_frame_hdr, ptr %precvframe, i32 0, i32 5, i32 13
  %19 = ptrtoint ptr %iv_len to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %iv_len, align 4
  %21 = add i32 %18, %20
  %sub13 = sub i32 %16, %21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %mic_iv.i) #9
  %22 = getelementptr inbounds [16 x i8], ptr %mic_iv.i, i32 0, i32 1
  %23 = getelementptr inbounds [16 x i8], ptr %mic_iv.i, i32 0, i32 2
  %24 = getelementptr inbounds [16 x i8], ptr %mic_iv.i, i32 0, i32 3
  %25 = getelementptr inbounds [16 x i8], ptr %mic_iv.i, i32 0, i32 4
  %26 = getelementptr inbounds [16 x i8], ptr %mic_iv.i, i32 0, i32 5
  %27 = getelementptr inbounds [16 x i8], ptr %mic_iv.i, i32 0, i32 6
  %28 = getelementptr inbounds [16 x i8], ptr %mic_iv.i, i32 0, i32 7
  %29 = getelementptr inbounds [16 x i8], ptr %mic_iv.i, i32 0, i32 8
  %30 = getelementptr inbounds [16 x i8], ptr %mic_iv.i, i32 0, i32 9
  %31 = getelementptr inbounds [16 x i8], ptr %mic_iv.i, i32 0, i32 10
  %32 = getelementptr inbounds [16 x i8], ptr %mic_iv.i, i32 0, i32 11
  %33 = getelementptr inbounds [16 x i8], ptr %mic_iv.i, i32 0, i32 12
  %34 = getelementptr inbounds [16 x i8], ptr %mic_iv.i, i32 0, i32 13
  %35 = getelementptr inbounds [16 x i8], ptr %mic_iv.i, i32 0, i32 14
  %36 = getelementptr inbounds [16 x i8], ptr %mic_iv.i, i32 0, i32 15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ctr_preload.i) #9
  %37 = getelementptr inbounds [16 x i8], ptr %ctr_preload.i, i32 0, i32 1
  %38 = getelementptr inbounds [16 x i8], ptr %ctr_preload.i, i32 0, i32 2
  %39 = getelementptr inbounds [16 x i8], ptr %ctr_preload.i, i32 0, i32 3
  %40 = getelementptr inbounds [16 x i8], ptr %ctr_preload.i, i32 0, i32 4
  %41 = getelementptr inbounds [16 x i8], ptr %ctr_preload.i, i32 0, i32 5
  %42 = getelementptr inbounds [16 x i8], ptr %ctr_preload.i, i32 0, i32 6
  %43 = getelementptr inbounds [16 x i8], ptr %ctr_preload.i, i32 0, i32 7
  %44 = getelementptr inbounds [16 x i8], ptr %ctr_preload.i, i32 0, i32 8
  %45 = getelementptr inbounds [16 x i8], ptr %ctr_preload.i, i32 0, i32 9
  %46 = getelementptr inbounds [16 x i8], ptr %ctr_preload.i, i32 0, i32 10
  %47 = getelementptr inbounds [16 x i8], ptr %ctr_preload.i, i32 0, i32 11
  %48 = getelementptr inbounds [16 x i8], ptr %ctr_preload.i, i32 0, i32 12
  %49 = getelementptr inbounds [16 x i8], ptr %ctr_preload.i, i32 0, i32 13
  %50 = getelementptr inbounds [16 x i8], ptr %ctr_preload.i, i32 0, i32 14
  %51 = getelementptr inbounds [16 x i8], ptr %ctr_preload.i, i32 0, i32 15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %chain_buffer.i) #9
  %52 = getelementptr inbounds [16 x i8], ptr %chain_buffer.i, i32 0, i32 1
  %53 = getelementptr inbounds [16 x i8], ptr %chain_buffer.i, i32 0, i32 2
  %54 = getelementptr inbounds [16 x i8], ptr %chain_buffer.i, i32 0, i32 3
  %55 = getelementptr inbounds [16 x i8], ptr %chain_buffer.i, i32 0, i32 4
  %56 = getelementptr inbounds [16 x i8], ptr %chain_buffer.i, i32 0, i32 5
  %57 = getelementptr inbounds [16 x i8], ptr %chain_buffer.i, i32 0, i32 6
  %58 = getelementptr inbounds [16 x i8], ptr %chain_buffer.i, i32 0, i32 7
  %59 = getelementptr inbounds [16 x i8], ptr %chain_buffer.i, i32 0, i32 8
  %60 = getelementptr inbounds [16 x i8], ptr %chain_buffer.i, i32 0, i32 9
  %61 = getelementptr inbounds [16 x i8], ptr %chain_buffer.i, i32 0, i32 10
  %62 = getelementptr inbounds [16 x i8], ptr %chain_buffer.i, i32 0, i32 11
  %63 = getelementptr inbounds [16 x i8], ptr %chain_buffer.i, i32 0, i32 12
  %64 = getelementptr inbounds [16 x i8], ptr %chain_buffer.i, i32 0, i32 13
  %65 = getelementptr inbounds [16 x i8], ptr %chain_buffer.i, i32 0, i32 14
  %66 = getelementptr inbounds [16 x i8], ptr %chain_buffer.i, i32 0, i32 15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %aes_out.i) #9
  %67 = getelementptr inbounds [16 x i8], ptr %aes_out.i, i32 0, i32 1
  %68 = getelementptr inbounds [16 x i8], ptr %aes_out.i, i32 0, i32 2
  %69 = getelementptr inbounds [16 x i8], ptr %aes_out.i, i32 0, i32 3
  %70 = getelementptr inbounds [16 x i8], ptr %aes_out.i, i32 0, i32 4
  %71 = getelementptr inbounds [16 x i8], ptr %aes_out.i, i32 0, i32 5
  %72 = getelementptr inbounds [16 x i8], ptr %aes_out.i, i32 0, i32 6
  %73 = getelementptr inbounds [16 x i8], ptr %aes_out.i, i32 0, i32 7
  %74 = getelementptr inbounds [16 x i8], ptr %aes_out.i, i32 0, i32 8
  %75 = getelementptr inbounds [16 x i8], ptr %aes_out.i, i32 0, i32 9
  %76 = getelementptr inbounds [16 x i8], ptr %aes_out.i, i32 0, i32 10
  %77 = getelementptr inbounds [16 x i8], ptr %aes_out.i, i32 0, i32 11
  %78 = getelementptr inbounds [16 x i8], ptr %aes_out.i, i32 0, i32 12
  %79 = getelementptr inbounds [16 x i8], ptr %aes_out.i, i32 0, i32 13
  %80 = getelementptr inbounds [16 x i8], ptr %aes_out.i, i32 0, i32 14
  %81 = getelementptr inbounds [16 x i8], ptr %aes_out.i, i32 0, i32 15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %padded_buffer.i) #9
  %padded_buffer.1..sroa_idx.i = getelementptr inbounds i8, ptr %padded_buffer.i, i32 1
  %padded_buffer.2..sroa_idx.i = getelementptr inbounds i8, ptr %padded_buffer.i, i32 2
  %padded_buffer.3..sroa_idx.i = getelementptr inbounds i8, ptr %padded_buffer.i, i32 3
  %padded_buffer.4..sroa_idx.i = getelementptr inbounds i8, ptr %padded_buffer.i, i32 4
  %padded_buffer.5..sroa_idx.i = getelementptr inbounds i8, ptr %padded_buffer.i, i32 5
  %padded_buffer.6..sroa_idx.i = getelementptr inbounds i8, ptr %padded_buffer.i, i32 6
  %padded_buffer.7..sroa_idx.i = getelementptr inbounds i8, ptr %padded_buffer.i, i32 7
  %padded_buffer.8..sroa_idx.i = getelementptr inbounds i8, ptr %padded_buffer.i, i32 8
  %padded_buffer.9..sroa_idx.i = getelementptr inbounds i8, ptr %padded_buffer.i, i32 9
  %padded_buffer.10..sroa_idx.i = getelementptr inbounds i8, ptr %padded_buffer.i, i32 10
  %padded_buffer.11..sroa_idx.i = getelementptr inbounds i8, ptr %padded_buffer.i, i32 11
  %padded_buffer.12..sroa_idx.i = getelementptr inbounds i8, ptr %padded_buffer.i, i32 12
  %padded_buffer.13..sroa_idx.i = getelementptr inbounds i8, ptr %padded_buffer.i, i32 13
  %padded_buffer.14..sroa_idx.i = getelementptr inbounds i8, ptr %padded_buffer.i, i32 14
  %padded_buffer.15..sroa_idx.i = getelementptr inbounds i8, ptr %padded_buffer.i, i32 15
  %82 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %1, align 2
  %84 = call ptr @memset(ptr %mic_iv.i, i32 0, i32 16)
  %85 = call ptr @memset(ptr %ctr_preload.i, i32 0, i32 16)
  %86 = call ptr @memset(ptr %chain_buffer.i, i32 0, i32 16)
  %87 = call ptr @memset(ptr %aes_out.i, i32 0, i32 16)
  %88 = call ptr @memset(ptr %padded_buffer.i, i32 0, i32 16)
  %sub.i = add i32 %sub13, -8
  %div481.i = lshr i32 %sub.i, 4
  %rem.i = and i32 %sub.i, 15
  %arrayidx.i = getelementptr i8, ptr %1, i32 %18
  %89 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %arrayidx.i, align 1
  %add.i = add i32 %18, 1
  %arrayidx11.i = getelementptr i8, ptr %1, i32 %add.i
  %91 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %arrayidx11.i, align 1
  %add13.i = add i32 %18, 4
  %arrayidx14.i = getelementptr i8, ptr %1, i32 %add13.i
  %93 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %arrayidx14.i, align 1
  %add16.i = add i32 %18, 5
  %arrayidx17.i = getelementptr i8, ptr %1, i32 %add16.i
  %95 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %arrayidx17.i, align 1
  %add19.i = add i32 %18, 6
  %arrayidx20.i = getelementptr i8, ptr %1, i32 %add19.i
  %97 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %arrayidx20.i, align 1
  %add22.i = add i32 %18, 7
  %arrayidx23.i = getelementptr i8, ptr %1, i32 %add22.i
  %99 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %arrayidx23.i, align 1
  %101 = add i32 %18, -24
  %switch.and.i = and i32 %101, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and.i)
  %switch.selectcmp.i = icmp eq i32 %switch.and.i, 0
  %102 = and i16 %83, -16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %102)
  %switch.i = icmp eq i16 %102, -32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %18)
  %cmp55.not.i = icmp eq i32 %18, 26
  %add58.i = add i32 %18, 2
  %spec.select.i = select i1 %cmp55.not.i, i32 26, i32 %add58.i
  %hdrlen.addr.1.i = select i1 %switch.i, i32 %spec.select.i, i32 %18
  %add63.i = add i32 %hdrlen.addr.1.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %sub.i)
  %cmp641188.not.i = icmp ult i32 %sub.i, 16
  br i1 %cmp641188.not.i, label %if.end10.for.end83.i_crit_edge, label %for.body.lr.ph.i

if.end10.for.end83.i_crit_edge:                   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end83.i

for.body.lr.ph.i:                                 ; preds = %if.end10
  %tobool.not.i.i = xor i1 %switch.i, true
  %or.cond.i.i = or i1 %switch.selectcmp.i, %tobool.not.i.i
  %arrayidx3.i.i = getelementptr i8, ptr %1, i32 30
  %or.cond60.i.i = and i1 %switch.selectcmp.i, %switch.i
  %arrayidx10.i.i = getelementptr i8, ptr %1, i32 24
  %arrayidx20.i.i = getelementptr i8, ptr %1, i32 10
  %arrayidx20.1.i.i = getelementptr i8, ptr %1, i32 11
  %arrayidx20.2.i.i = getelementptr i8, ptr %1, i32 12
  %arrayidx20.3.i.i = getelementptr i8, ptr %1, i32 13
  %arrayidx20.4.i.i = getelementptr i8, ptr %1, i32 14
  %arrayidx20.5.i.i = getelementptr i8, ptr %1, i32 15
  %umax.i = tail call i32 @llvm.umax.i32(i32 %div481.i, i32 1) #9
  br label %for.body.i

for.body.i:                                       ; preds = %construct_ctr_preload.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %payload_index.01190.i = phi i32 [ %add63.i, %for.body.lr.ph.i ], [ %220, %construct_ctr_preload.exit.i.for.body.i_crit_edge ]
  %i.01189.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add68.i, %construct_ctr_preload.exit.i.for.body.i_crit_edge ]
  %add68.i = add nuw nsw i32 %i.01189.i, 1
  %103 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 0, ptr %37, align 1
  %104 = ptrtoint ptr %ctr_preload.i to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 1, ptr %ctr_preload.i, align 1
  br i1 %or.cond.i.i, label %for.body.i.if.end.i.i_crit_edge, label %if.then.i.i

for.body.i.if.end.i.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %105 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %arrayidx3.i.i, align 1
  %107 = and i8 %106, 15
  %108 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 %107, ptr %37, align 1
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %for.body.i.if.end.i.i_crit_edge
  br i1 %or.cond60.i.i, label %if.then9.i.i, label %if.end.i.i.construct_ctr_preload.exit.i_crit_edge

if.end.i.i.construct_ctr_preload.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %construct_ctr_preload.exit.i

if.then9.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %109 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %arrayidx10.i.i, align 1
  %111 = and i8 %110, 15
  %112 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 %111, ptr %37, align 1
  br label %construct_ctr_preload.exit.i

construct_ctr_preload.exit.i:                     ; preds = %if.then9.i.i, %if.end.i.i.construct_ctr_preload.exit.i_crit_edge
  %113 = ptrtoint ptr %arrayidx20.i.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %arrayidx20.i.i, align 1
  %115 = ptrtoint ptr %38 to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 %114, ptr %38, align 1
  %116 = ptrtoint ptr %arrayidx20.1.i.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %arrayidx20.1.i.i, align 1
  %118 = ptrtoint ptr %39 to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 %117, ptr %39, align 1
  %119 = ptrtoint ptr %arrayidx20.2.i.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %arrayidx20.2.i.i, align 1
  %121 = ptrtoint ptr %40 to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 %120, ptr %40, align 1
  %122 = ptrtoint ptr %arrayidx20.3.i.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %arrayidx20.3.i.i, align 1
  %124 = ptrtoint ptr %41 to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 %123, ptr %41, align 1
  %125 = ptrtoint ptr %arrayidx20.4.i.i to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %arrayidx20.4.i.i, align 1
  %127 = ptrtoint ptr %42 to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 %126, ptr %42, align 1
  %128 = ptrtoint ptr %arrayidx20.5.i.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %arrayidx20.5.i.i, align 1
  %130 = ptrtoint ptr %43 to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 %129, ptr %43, align 1
  %131 = ptrtoint ptr %44 to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 %100, ptr %44, align 1
  %132 = ptrtoint ptr %45 to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 %98, ptr %45, align 1
  %133 = ptrtoint ptr %46 to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 %96, ptr %46, align 1
  %134 = ptrtoint ptr %47 to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 %94, ptr %47, align 1
  %135 = ptrtoint ptr %48 to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 %92, ptr %48, align 1
  %136 = ptrtoint ptr %49 to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 %90, ptr %49, align 1
  %div.i.udiv1300.i = lshr i32 %add68.i, 8
  %conv34.i.i = trunc i32 %div.i.udiv1300.i to i8
  %137 = ptrtoint ptr %50 to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 %conv34.i.i, ptr %50, align 1
  %conv36.i.i = trunc i32 %add68.i to i8
  %138 = ptrtoint ptr %51 to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 %conv36.i.i, ptr %51, align 1
  call fastcc void @aes128k128d(ptr noundef %prwskey.0, ptr noundef nonnull %ctr_preload.i, ptr noundef nonnull %aes_out.i) #9
  %arrayidx72.i = getelementptr i8, ptr %1, i32 %payload_index.01190.i
  %139 = ptrtoint ptr %aes_out.i to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %aes_out.i, align 1
  %141 = ptrtoint ptr %arrayidx72.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %arrayidx72.i, align 1
  %xor9.i.i = xor i8 %142, %140
  %143 = ptrtoint ptr %chain_buffer.i to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 %xor9.i.i, ptr %chain_buffer.i, align 8
  %144 = ptrtoint ptr %67 to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %67, align 1
  %arrayidx1.1.i.i = getelementptr i8, ptr %arrayidx72.i, i32 1
  %146 = ptrtoint ptr %arrayidx1.1.i.i to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %arrayidx1.1.i.i, align 1
  %xor9.1.i.i = xor i8 %147, %145
  %148 = ptrtoint ptr %52 to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 %xor9.1.i.i, ptr %52, align 1
  %149 = ptrtoint ptr %68 to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %68, align 1
  %arrayidx1.2.i.i = getelementptr i8, ptr %arrayidx72.i, i32 2
  %151 = ptrtoint ptr %arrayidx1.2.i.i to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %arrayidx1.2.i.i, align 1
  %xor9.2.i.i = xor i8 %152, %150
  %153 = ptrtoint ptr %53 to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 %xor9.2.i.i, ptr %53, align 2
  %154 = ptrtoint ptr %69 to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %69, align 1
  %arrayidx1.3.i.i = getelementptr i8, ptr %arrayidx72.i, i32 3
  %156 = ptrtoint ptr %arrayidx1.3.i.i to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %arrayidx1.3.i.i, align 1
  %xor9.3.i.i = xor i8 %157, %155
  %158 = ptrtoint ptr %54 to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 %xor9.3.i.i, ptr %54, align 1
  %159 = ptrtoint ptr %70 to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %70, align 1
  %arrayidx1.4.i.i = getelementptr i8, ptr %arrayidx72.i, i32 4
  %161 = ptrtoint ptr %arrayidx1.4.i.i to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %arrayidx1.4.i.i, align 1
  %xor9.4.i.i = xor i8 %162, %160
  %163 = ptrtoint ptr %55 to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 %xor9.4.i.i, ptr %55, align 4
  %164 = ptrtoint ptr %71 to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %71, align 1
  %arrayidx1.5.i.i = getelementptr i8, ptr %arrayidx72.i, i32 5
  %166 = ptrtoint ptr %arrayidx1.5.i.i to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %arrayidx1.5.i.i, align 1
  %xor9.5.i.i = xor i8 %167, %165
  %168 = ptrtoint ptr %56 to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 %xor9.5.i.i, ptr %56, align 1
  %169 = ptrtoint ptr %72 to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %72, align 1
  %arrayidx1.6.i.i = getelementptr i8, ptr %arrayidx72.i, i32 6
  %171 = ptrtoint ptr %arrayidx1.6.i.i to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %arrayidx1.6.i.i, align 1
  %xor9.6.i.i = xor i8 %172, %170
  %173 = ptrtoint ptr %57 to i32
  call void @__asan_store1_noabort(i32 %173)
  store i8 %xor9.6.i.i, ptr %57, align 2
  %174 = ptrtoint ptr %73 to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %73, align 1
  %arrayidx1.7.i.i = getelementptr i8, ptr %arrayidx72.i, i32 7
  %176 = ptrtoint ptr %arrayidx1.7.i.i to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %arrayidx1.7.i.i, align 1
  %xor9.7.i.i = xor i8 %177, %175
  %178 = ptrtoint ptr %58 to i32
  call void @__asan_store1_noabort(i32 %178)
  store i8 %xor9.7.i.i, ptr %58, align 1
  %179 = ptrtoint ptr %74 to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %74, align 1
  %arrayidx1.8.i.i = getelementptr i8, ptr %arrayidx72.i, i32 8
  %181 = ptrtoint ptr %arrayidx1.8.i.i to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %arrayidx1.8.i.i, align 1
  %xor9.8.i.i = xor i8 %182, %180
  %183 = ptrtoint ptr %59 to i32
  call void @__asan_store1_noabort(i32 %183)
  store i8 %xor9.8.i.i, ptr %59, align 8
  %184 = ptrtoint ptr %75 to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %75, align 1
  %arrayidx1.9.i.i = getelementptr i8, ptr %arrayidx72.i, i32 9
  %186 = ptrtoint ptr %arrayidx1.9.i.i to i32
  call void @__asan_load1_noabort(i32 %186)
  %187 = load i8, ptr %arrayidx1.9.i.i, align 1
  %xor9.9.i.i = xor i8 %187, %185
  %188 = ptrtoint ptr %60 to i32
  call void @__asan_store1_noabort(i32 %188)
  store i8 %xor9.9.i.i, ptr %60, align 1
  %189 = ptrtoint ptr %76 to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %76, align 1
  %arrayidx1.10.i.i = getelementptr i8, ptr %arrayidx72.i, i32 10
  %191 = ptrtoint ptr %arrayidx1.10.i.i to i32
  call void @__asan_load1_noabort(i32 %191)
  %192 = load i8, ptr %arrayidx1.10.i.i, align 1
  %xor9.10.i.i = xor i8 %192, %190
  %193 = ptrtoint ptr %61 to i32
  call void @__asan_store1_noabort(i32 %193)
  store i8 %xor9.10.i.i, ptr %61, align 2
  %194 = ptrtoint ptr %77 to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %77, align 1
  %arrayidx1.11.i.i = getelementptr i8, ptr %arrayidx72.i, i32 11
  %196 = ptrtoint ptr %arrayidx1.11.i.i to i32
  call void @__asan_load1_noabort(i32 %196)
  %197 = load i8, ptr %arrayidx1.11.i.i, align 1
  %xor9.11.i.i = xor i8 %197, %195
  %198 = ptrtoint ptr %62 to i32
  call void @__asan_store1_noabort(i32 %198)
  store i8 %xor9.11.i.i, ptr %62, align 1
  %199 = ptrtoint ptr %78 to i32
  call void @__asan_load1_noabort(i32 %199)
  %200 = load i8, ptr %78, align 1
  %arrayidx1.12.i.i = getelementptr i8, ptr %arrayidx72.i, i32 12
  %201 = ptrtoint ptr %arrayidx1.12.i.i to i32
  call void @__asan_load1_noabort(i32 %201)
  %202 = load i8, ptr %arrayidx1.12.i.i, align 1
  %xor9.12.i.i = xor i8 %202, %200
  %203 = ptrtoint ptr %63 to i32
  call void @__asan_store1_noabort(i32 %203)
  store i8 %xor9.12.i.i, ptr %63, align 4
  %204 = ptrtoint ptr %79 to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %79, align 1
  %arrayidx1.13.i.i = getelementptr i8, ptr %arrayidx72.i, i32 13
  %206 = ptrtoint ptr %arrayidx1.13.i.i to i32
  call void @__asan_load1_noabort(i32 %206)
  %207 = load i8, ptr %arrayidx1.13.i.i, align 1
  %xor9.13.i.i = xor i8 %207, %205
  %208 = ptrtoint ptr %64 to i32
  call void @__asan_store1_noabort(i32 %208)
  store i8 %xor9.13.i.i, ptr %64, align 1
  %209 = ptrtoint ptr %80 to i32
  call void @__asan_load1_noabort(i32 %209)
  %210 = load i8, ptr %80, align 1
  %arrayidx1.14.i.i = getelementptr i8, ptr %arrayidx72.i, i32 14
  %211 = ptrtoint ptr %arrayidx1.14.i.i to i32
  call void @__asan_load1_noabort(i32 %211)
  %212 = load i8, ptr %arrayidx1.14.i.i, align 1
  %xor9.14.i.i = xor i8 %212, %210
  %213 = ptrtoint ptr %65 to i32
  call void @__asan_store1_noabort(i32 %213)
  store i8 %xor9.14.i.i, ptr %65, align 2
  %214 = ptrtoint ptr %81 to i32
  call void @__asan_load1_noabort(i32 %214)
  %215 = load i8, ptr %81, align 1
  %arrayidx1.15.i.i = getelementptr i8, ptr %arrayidx72.i, i32 15
  %216 = ptrtoint ptr %arrayidx1.15.i.i to i32
  call void @__asan_load1_noabort(i32 %216)
  %217 = load i8, ptr %arrayidx1.15.i.i, align 1
  %xor9.15.i.i = xor i8 %217, %215
  %218 = ptrtoint ptr %66 to i32
  call void @__asan_store1_noabort(i32 %218)
  store i8 %xor9.15.i.i, ptr %66, align 1
  %219 = call ptr @memcpy(ptr %arrayidx72.i, ptr %chain_buffer.i, i32 16)
  %220 = add i32 %payload_index.01190.i, 16
  %exitcond.not.i = icmp eq i32 %add68.i, %umax.i
  br i1 %exitcond.not.i, label %construct_ctr_preload.exit.i.for.end83.i_crit_edge, label %construct_ctr_preload.exit.i.for.body.i_crit_edge

construct_ctr_preload.exit.i.for.body.i_crit_edge: ; preds = %construct_ctr_preload.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

construct_ctr_preload.exit.i.for.end83.i_crit_edge: ; preds = %construct_ctr_preload.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end83.i

for.end83.i:                                      ; preds = %construct_ctr_preload.exit.i.for.end83.i_crit_edge, %if.end10.for.end83.i_crit_edge
  %payload_index.0.lcssa.i = phi i32 [ %add63.i, %if.end10.for.end83.i_crit_edge ], [ %220, %construct_ctr_preload.exit.i.for.end83.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %cmp84.not.i = icmp eq i32 %rem.i, 0
  br i1 %cmp84.not.i, label %for.end83.if.end123_crit_edge.i, label %if.then86.i

for.end83.if.end123_crit_edge.i:                  ; preds = %for.end83.i
  call void @__sanitizer_cov_trace_pc() #11
  %.pre.i = xor i1 %switch.i, true
  %.pre1299.i = or i1 %switch.selectcmp.i, %.pre.i
  br label %if.end123.i

if.then86.i:                                      ; preds = %for.end83.i
  %add89.i = add nuw nsw i32 %div481.i, 1
  %221 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %221)
  store i8 0, ptr %37, align 1
  %222 = ptrtoint ptr %ctr_preload.i to i32
  call void @__asan_store1_noabort(i32 %222)
  store i8 1, ptr %ctr_preload.i, align 1
  %tobool.not.i482.i = xor i1 %switch.i, true
  %or.cond.i483.i = or i1 %switch.selectcmp.i, %tobool.not.i482.i
  br i1 %or.cond.i483.i, label %if.then86.i.if.end.i489.i_crit_edge, label %if.then.i486.i

if.then86.i.if.end.i489.i_crit_edge:              ; preds = %if.then86.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i489.i

if.then.i486.i:                                   ; preds = %if.then86.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx3.i484.i = getelementptr i8, ptr %1, i32 30
  %223 = ptrtoint ptr %arrayidx3.i484.i to i32
  call void @__asan_load1_noabort(i32 %223)
  %224 = load i8, ptr %arrayidx3.i484.i, align 1
  %225 = and i8 %224, 15
  %226 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %226)
  store i8 %225, ptr %37, align 1
  br label %if.end.i489.i

if.end.i489.i:                                    ; preds = %if.then.i486.i, %if.then86.i.if.end.i489.i_crit_edge
  %or.cond60.i488.i = and i1 %switch.selectcmp.i, %switch.i
  br i1 %or.cond60.i488.i, label %if.then9.i492.i, label %if.end.i489.i.for.body116.preheader.i_crit_edge

if.end.i489.i.for.body116.preheader.i_crit_edge:  ; preds = %if.end.i489.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body116.preheader.i

if.then9.i492.i:                                  ; preds = %if.end.i489.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx10.i490.i = getelementptr i8, ptr %1, i32 24
  %227 = ptrtoint ptr %arrayidx10.i490.i to i32
  call void @__asan_load1_noabort(i32 %227)
  %228 = load i8, ptr %arrayidx10.i490.i, align 1
  %229 = and i8 %228, 15
  %230 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %230)
  store i8 %229, ptr %37, align 1
  br label %for.body116.preheader.i

for.body116.preheader.i:                          ; preds = %if.then9.i492.i, %if.end.i489.i.for.body116.preheader.i_crit_edge
  %arrayidx20.i493.i = getelementptr i8, ptr %1, i32 10
  %231 = ptrtoint ptr %arrayidx20.i493.i to i32
  call void @__asan_load1_noabort(i32 %231)
  %232 = load i8, ptr %arrayidx20.i493.i, align 1
  %233 = ptrtoint ptr %38 to i32
  call void @__asan_store1_noabort(i32 %233)
  store i8 %232, ptr %38, align 1
  %arrayidx20.1.i495.i = getelementptr i8, ptr %1, i32 11
  %234 = ptrtoint ptr %arrayidx20.1.i495.i to i32
  call void @__asan_load1_noabort(i32 %234)
  %235 = load i8, ptr %arrayidx20.1.i495.i, align 1
  %236 = ptrtoint ptr %39 to i32
  call void @__asan_store1_noabort(i32 %236)
  store i8 %235, ptr %39, align 1
  %arrayidx20.2.i497.i = getelementptr i8, ptr %1, i32 12
  %237 = ptrtoint ptr %arrayidx20.2.i497.i to i32
  call void @__asan_load1_noabort(i32 %237)
  %238 = load i8, ptr %arrayidx20.2.i497.i, align 1
  %239 = ptrtoint ptr %40 to i32
  call void @__asan_store1_noabort(i32 %239)
  store i8 %238, ptr %40, align 1
  %arrayidx20.3.i499.i = getelementptr i8, ptr %1, i32 13
  %240 = ptrtoint ptr %arrayidx20.3.i499.i to i32
  call void @__asan_load1_noabort(i32 %240)
  %241 = load i8, ptr %arrayidx20.3.i499.i, align 1
  %242 = ptrtoint ptr %41 to i32
  call void @__asan_store1_noabort(i32 %242)
  store i8 %241, ptr %41, align 1
  %arrayidx20.4.i501.i = getelementptr i8, ptr %1, i32 14
  %243 = ptrtoint ptr %arrayidx20.4.i501.i to i32
  call void @__asan_load1_noabort(i32 %243)
  %244 = load i8, ptr %arrayidx20.4.i501.i, align 1
  %245 = ptrtoint ptr %42 to i32
  call void @__asan_store1_noabort(i32 %245)
  store i8 %244, ptr %42, align 1
  %arrayidx20.5.i503.i = getelementptr i8, ptr %1, i32 15
  %246 = ptrtoint ptr %arrayidx20.5.i503.i to i32
  call void @__asan_load1_noabort(i32 %246)
  %247 = load i8, ptr %arrayidx20.5.i503.i, align 1
  %248 = ptrtoint ptr %43 to i32
  call void @__asan_store1_noabort(i32 %248)
  store i8 %247, ptr %43, align 1
  %249 = ptrtoint ptr %44 to i32
  call void @__asan_store1_noabort(i32 %249)
  store i8 %100, ptr %44, align 1
  %250 = ptrtoint ptr %45 to i32
  call void @__asan_store1_noabort(i32 %250)
  store i8 %98, ptr %45, align 1
  %251 = ptrtoint ptr %46 to i32
  call void @__asan_store1_noabort(i32 %251)
  store i8 %96, ptr %46, align 1
  %252 = ptrtoint ptr %47 to i32
  call void @__asan_store1_noabort(i32 %252)
  store i8 %94, ptr %47, align 1
  %253 = ptrtoint ptr %48 to i32
  call void @__asan_store1_noabort(i32 %253)
  store i8 %92, ptr %48, align 1
  %254 = ptrtoint ptr %49 to i32
  call void @__asan_store1_noabort(i32 %254)
  store i8 %90, ptr %49, align 1
  %div.i5161184.i = lshr i32 %add89.i, 8
  %conv34.i517.i = trunc i32 %div.i5161184.i to i8
  %255 = ptrtoint ptr %50 to i32
  call void @__asan_store1_noabort(i32 %255)
  store i8 %conv34.i517.i, ptr %50, align 1
  %conv36.i519.i = trunc i32 %add89.i to i8
  %256 = ptrtoint ptr %51 to i32
  call void @__asan_store1_noabort(i32 %256)
  store i8 %conv36.i519.i, ptr %51, align 1
  %uglygep1225.i = getelementptr i8, ptr %1, i32 %payload_index.0.lcssa.i
  %257 = sub nuw nsw i32 16, %rem.i
  %258 = getelementptr i8, ptr %padded_buffer.i, i32 %rem.i
  %259 = call ptr @memset(ptr %258, i32 0, i32 %257)
  %260 = call ptr @memcpy(ptr %padded_buffer.i, ptr %uglygep1225.i, i32 %rem.i)
  call fastcc void @aes128k128d(ptr noundef %prwskey.0, ptr noundef nonnull %ctr_preload.i, ptr noundef nonnull %aes_out.i) #9
  %261 = ptrtoint ptr %aes_out.i to i32
  call void @__asan_load1_noabort(i32 %261)
  %262 = load i8, ptr %aes_out.i, align 1
  %263 = ptrtoint ptr %padded_buffer.i to i32
  call void @__asan_load1_noabort(i32 %263)
  %padded_buffer.0..i = load i8, ptr %padded_buffer.i, align 8
  %xor9.i522.i = xor i8 %padded_buffer.0..i, %262
  %264 = ptrtoint ptr %chain_buffer.i to i32
  call void @__asan_store1_noabort(i32 %264)
  store i8 %xor9.i522.i, ptr %chain_buffer.i, align 8
  %265 = ptrtoint ptr %67 to i32
  call void @__asan_load1_noabort(i32 %265)
  %266 = load i8, ptr %67, align 1
  %267 = ptrtoint ptr %padded_buffer.1..sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %267)
  %padded_buffer.1..i = load i8, ptr %padded_buffer.1..sroa_idx.i, align 1
  %xor9.1.i525.i = xor i8 %padded_buffer.1..i, %266
  %268 = ptrtoint ptr %52 to i32
  call void @__asan_store1_noabort(i32 %268)
  store i8 %xor9.1.i525.i, ptr %52, align 1
  %269 = ptrtoint ptr %68 to i32
  call void @__asan_load1_noabort(i32 %269)
  %270 = load i8, ptr %68, align 1
  %271 = ptrtoint ptr %padded_buffer.2..sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %271)
  %padded_buffer.2..i = load i8, ptr %padded_buffer.2..sroa_idx.i, align 2
  %xor9.2.i529.i = xor i8 %padded_buffer.2..i, %270
  %272 = ptrtoint ptr %53 to i32
  call void @__asan_store1_noabort(i32 %272)
  store i8 %xor9.2.i529.i, ptr %53, align 2
  %273 = ptrtoint ptr %69 to i32
  call void @__asan_load1_noabort(i32 %273)
  %274 = load i8, ptr %69, align 1
  %275 = ptrtoint ptr %padded_buffer.3..sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %275)
  %padded_buffer.3..i = load i8, ptr %padded_buffer.3..sroa_idx.i, align 1
  %xor9.3.i533.i = xor i8 %padded_buffer.3..i, %274
  %276 = ptrtoint ptr %54 to i32
  call void @__asan_store1_noabort(i32 %276)
  store i8 %xor9.3.i533.i, ptr %54, align 1
  %277 = ptrtoint ptr %70 to i32
  call void @__asan_load1_noabort(i32 %277)
  %278 = load i8, ptr %70, align 1
  %279 = ptrtoint ptr %padded_buffer.4..sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %279)
  %padded_buffer.4..i = load i8, ptr %padded_buffer.4..sroa_idx.i, align 4
  %xor9.4.i537.i = xor i8 %padded_buffer.4..i, %278
  %280 = ptrtoint ptr %55 to i32
  call void @__asan_store1_noabort(i32 %280)
  store i8 %xor9.4.i537.i, ptr %55, align 4
  %281 = ptrtoint ptr %71 to i32
  call void @__asan_load1_noabort(i32 %281)
  %282 = load i8, ptr %71, align 1
  %283 = ptrtoint ptr %padded_buffer.5..sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %283)
  %padded_buffer.5..i = load i8, ptr %padded_buffer.5..sroa_idx.i, align 1
  %xor9.5.i541.i = xor i8 %padded_buffer.5..i, %282
  %284 = ptrtoint ptr %56 to i32
  call void @__asan_store1_noabort(i32 %284)
  store i8 %xor9.5.i541.i, ptr %56, align 1
  %285 = ptrtoint ptr %72 to i32
  call void @__asan_load1_noabort(i32 %285)
  %286 = load i8, ptr %72, align 1
  %287 = ptrtoint ptr %padded_buffer.6..sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %287)
  %padded_buffer.6..i = load i8, ptr %padded_buffer.6..sroa_idx.i, align 2
  %xor9.6.i545.i = xor i8 %padded_buffer.6..i, %286
  %288 = ptrtoint ptr %57 to i32
  call void @__asan_store1_noabort(i32 %288)
  store i8 %xor9.6.i545.i, ptr %57, align 2
  %289 = ptrtoint ptr %73 to i32
  call void @__asan_load1_noabort(i32 %289)
  %290 = load i8, ptr %73, align 1
  %291 = ptrtoint ptr %padded_buffer.7..sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %291)
  %padded_buffer.7..i = load i8, ptr %padded_buffer.7..sroa_idx.i, align 1
  %xor9.7.i549.i = xor i8 %padded_buffer.7..i, %290
  %292 = ptrtoint ptr %58 to i32
  call void @__asan_store1_noabort(i32 %292)
  store i8 %xor9.7.i549.i, ptr %58, align 1
  %293 = ptrtoint ptr %74 to i32
  call void @__asan_load1_noabort(i32 %293)
  %294 = load i8, ptr %74, align 1
  %295 = ptrtoint ptr %padded_buffer.8..sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %295)
  %padded_buffer.8..i = load i8, ptr %padded_buffer.8..sroa_idx.i, align 8
  %xor9.8.i553.i = xor i8 %padded_buffer.8..i, %294
  %296 = ptrtoint ptr %59 to i32
  call void @__asan_store1_noabort(i32 %296)
  store i8 %xor9.8.i553.i, ptr %59, align 8
  %297 = ptrtoint ptr %75 to i32
  call void @__asan_load1_noabort(i32 %297)
  %298 = load i8, ptr %75, align 1
  %299 = ptrtoint ptr %padded_buffer.9..sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %299)
  %padded_buffer.9..i = load i8, ptr %padded_buffer.9..sroa_idx.i, align 1
  %xor9.9.i557.i = xor i8 %padded_buffer.9..i, %298
  %300 = ptrtoint ptr %60 to i32
  call void @__asan_store1_noabort(i32 %300)
  store i8 %xor9.9.i557.i, ptr %60, align 1
  %301 = ptrtoint ptr %76 to i32
  call void @__asan_load1_noabort(i32 %301)
  %302 = load i8, ptr %76, align 1
  %303 = ptrtoint ptr %padded_buffer.10..sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %303)
  %padded_buffer.10..i = load i8, ptr %padded_buffer.10..sroa_idx.i, align 2
  %xor9.10.i561.i = xor i8 %padded_buffer.10..i, %302
  %304 = ptrtoint ptr %61 to i32
  call void @__asan_store1_noabort(i32 %304)
  store i8 %xor9.10.i561.i, ptr %61, align 2
  %305 = ptrtoint ptr %77 to i32
  call void @__asan_load1_noabort(i32 %305)
  %306 = load i8, ptr %77, align 1
  %307 = ptrtoint ptr %padded_buffer.11..sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %307)
  %padded_buffer.11..i = load i8, ptr %padded_buffer.11..sroa_idx.i, align 1
  %xor9.11.i565.i = xor i8 %padded_buffer.11..i, %306
  %308 = ptrtoint ptr %62 to i32
  call void @__asan_store1_noabort(i32 %308)
  store i8 %xor9.11.i565.i, ptr %62, align 1
  %309 = ptrtoint ptr %78 to i32
  call void @__asan_load1_noabort(i32 %309)
  %310 = load i8, ptr %78, align 1
  %311 = ptrtoint ptr %padded_buffer.12..sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %311)
  %padded_buffer.12..i = load i8, ptr %padded_buffer.12..sroa_idx.i, align 4
  %xor9.12.i569.i = xor i8 %padded_buffer.12..i, %310
  %312 = ptrtoint ptr %63 to i32
  call void @__asan_store1_noabort(i32 %312)
  store i8 %xor9.12.i569.i, ptr %63, align 4
  %313 = ptrtoint ptr %79 to i32
  call void @__asan_load1_noabort(i32 %313)
  %314 = load i8, ptr %79, align 1
  %315 = ptrtoint ptr %padded_buffer.13..sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %315)
  %padded_buffer.13..i = load i8, ptr %padded_buffer.13..sroa_idx.i, align 1
  %xor9.13.i573.i = xor i8 %padded_buffer.13..i, %314
  %316 = ptrtoint ptr %64 to i32
  call void @__asan_store1_noabort(i32 %316)
  store i8 %xor9.13.i573.i, ptr %64, align 1
  %317 = ptrtoint ptr %80 to i32
  call void @__asan_load1_noabort(i32 %317)
  %318 = load i8, ptr %80, align 1
  %319 = ptrtoint ptr %padded_buffer.14..sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %319)
  %padded_buffer.14..i = load i8, ptr %padded_buffer.14..sroa_idx.i, align 2
  %xor9.14.i577.i = xor i8 %padded_buffer.14..i, %318
  %320 = ptrtoint ptr %65 to i32
  call void @__asan_store1_noabort(i32 %320)
  store i8 %xor9.14.i577.i, ptr %65, align 2
  %321 = ptrtoint ptr %81 to i32
  call void @__asan_load1_noabort(i32 %321)
  %322 = load i8, ptr %81, align 1
  %323 = ptrtoint ptr %padded_buffer.15..sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %323)
  %padded_buffer.15..i = load i8, ptr %padded_buffer.15..sroa_idx.i, align 1
  %xor9.15.i581.i = xor i8 %padded_buffer.15..i, %322
  %324 = ptrtoint ptr %66 to i32
  call void @__asan_store1_noabort(i32 %324)
  store i8 %xor9.15.i581.i, ptr %66, align 1
  %325 = call ptr @memcpy(ptr %uglygep1225.i, ptr %chain_buffer.i, i32 %rem.i)
  br label %if.end123.i

if.end123.i:                                      ; preds = %for.body116.preheader.i, %for.end83.if.end123_crit_edge.i
  %or.cond.i584.pre-phi.i = phi i1 [ %.pre1299.i, %for.end83.if.end123_crit_edge.i ], [ %or.cond.i483.i, %for.body116.preheader.i ]
  %add124.i = add i32 %hdrlen.addr.1.i, %sub13
  %add125.i = add i32 %add124.i, 8
  %326 = call ptr @memcpy(ptr @aes_decipher.message, ptr %1, i32 %add125.i)
  %arrayidx126.i = getelementptr i8, ptr %1, i32 %hdrlen.addr.1.i
  %327 = ptrtoint ptr %arrayidx126.i to i32
  call void @__asan_load1_noabort(i32 %327)
  %328 = load i8, ptr %arrayidx126.i, align 1
  %add128.i = add i32 %hdrlen.addr.1.i, 1
  %arrayidx129.i = getelementptr i8, ptr %1, i32 %add128.i
  %329 = ptrtoint ptr %arrayidx129.i to i32
  call void @__asan_load1_noabort(i32 %329)
  %330 = load i8, ptr %arrayidx129.i, align 1
  %add131.i = add i32 %hdrlen.addr.1.i, 4
  %arrayidx132.i = getelementptr i8, ptr %1, i32 %add131.i
  %331 = ptrtoint ptr %arrayidx132.i to i32
  call void @__asan_load1_noabort(i32 %331)
  %332 = load i8, ptr %arrayidx132.i, align 1
  %add134.i = add i32 %hdrlen.addr.1.i, 5
  %arrayidx135.i = getelementptr i8, ptr %1, i32 %add134.i
  %333 = ptrtoint ptr %arrayidx135.i to i32
  call void @__asan_load1_noabort(i32 %333)
  %334 = load i8, ptr %arrayidx135.i, align 1
  %add137.i = add i32 %hdrlen.addr.1.i, 6
  %arrayidx138.i = getelementptr i8, ptr %1, i32 %add137.i
  %335 = ptrtoint ptr %arrayidx138.i to i32
  call void @__asan_load1_noabort(i32 %335)
  %336 = load i8, ptr %arrayidx138.i, align 1
  %add140.i = add i32 %hdrlen.addr.1.i, 7
  %arrayidx141.i = getelementptr i8, ptr %1, i32 %add140.i
  %337 = ptrtoint ptr %arrayidx141.i to i32
  call void @__asan_load1_noabort(i32 %337)
  %338 = load i8, ptr %arrayidx141.i, align 1
  %339 = ptrtoint ptr %mic_iv.i to i32
  call void @__asan_store1_noabort(i32 %339)
  store i8 89, ptr %mic_iv.i, align 1
  br i1 %or.cond.i584.pre-phi.i, label %if.end123.i.if.end.i587.i_crit_edge, label %if.then.i585.i

if.end123.i.if.end.i587.i_crit_edge:              ; preds = %if.end123.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i587.i

if.then.i585.i:                                   ; preds = %if.end123.i
  call void @__sanitizer_cov_trace_pc() #11
  %340 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 30), align 1
  %341 = and i8 %340, 15
  %342 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %342)
  store i8 %341, ptr %22, align 1
  br label %if.end.i587.i

if.end.i587.i:                                    ; preds = %if.then.i585.i, %if.end123.i.if.end.i587.i_crit_edge
  %or.cond56.i.i = and i1 %switch.selectcmp.i, %switch.i
  br i1 %or.cond56.i.i, label %if.then8.i.i, label %if.end.i587.i.if.end14.i.i_crit_edge

if.end.i587.i.if.end14.i.i_crit_edge:             ; preds = %if.end.i587.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.i.i

if.then8.i.i:                                     ; preds = %if.end.i587.i
  call void @__sanitizer_cov_trace_pc() #11
  %343 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 24), align 1
  %344 = and i8 %343, 15
  %345 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %345)
  store i8 %344, ptr %22, align 1
  br label %if.end14.i.i

if.end14.i.i:                                     ; preds = %if.then8.i.i, %if.end.i587.i.if.end14.i.i_crit_edge
  br i1 %switch.i, label %if.end14.i.i.construct_mic_iv.exit.i_crit_edge, label %if.then16.i.i

if.end14.i.i.construct_mic_iv.exit.i_crit_edge:   ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %construct_mic_iv.exit.i

if.then16.i.i:                                    ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %346 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %346)
  store i8 0, ptr %22, align 1
  br label %construct_mic_iv.exit.i

construct_mic_iv.exit.i:                          ; preds = %if.then16.i.i, %if.end14.i.i.construct_mic_iv.exit.i_crit_edge
  %347 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 10), align 1
  %348 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %348)
  store i8 %347, ptr %23, align 1
  %349 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 11), align 1
  %350 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %350)
  store i8 %349, ptr %24, align 1
  %351 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 12), align 1
  %352 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %352)
  store i8 %351, ptr %25, align 1
  %353 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 13), align 1
  %354 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %354)
  store i8 %353, ptr %26, align 1
  %355 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 14), align 1
  %356 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %356)
  store i8 %355, ptr %27, align 1
  %357 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 15), align 1
  %358 = ptrtoint ptr %28 to i32
  call void @__asan_store1_noabort(i32 %358)
  store i8 %357, ptr %28, align 1
  %359 = ptrtoint ptr %29 to i32
  call void @__asan_store1_noabort(i32 %359)
  store i8 %338, ptr %29, align 1
  %360 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %360)
  store i8 %336, ptr %30, align 1
  %361 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %361)
  store i8 %334, ptr %31, align 1
  %362 = ptrtoint ptr %32 to i32
  call void @__asan_store1_noabort(i32 %362)
  store i8 %332, ptr %32, align 1
  %363 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %363)
  store i8 %330, ptr %33, align 1
  %364 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %364)
  store i8 %328, ptr %34, align 1
  %div55.i.i = lshr i32 %sub.i, 8
  %conv31.i.i = trunc i32 %div55.i.i to i8
  %365 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %365)
  store i8 %conv31.i.i, ptr %35, align 1
  %conv33.i.i = trunc i32 %sub.i to i8
  %366 = ptrtoint ptr %36 to i32
  call void @__asan_store1_noabort(i32 %366)
  store i8 %conv33.i.i, ptr %36, align 1
  %sub.i.i = add i32 %hdrlen.addr.1.i, -2
  %div.i594.i = sdiv i32 %sub.i.i, 256
  %conv.i.i = trunc i32 %div.i594.i to i8
  %conv2.i.i = trunc i32 %sub.i.i to i8
  %367 = load i8, ptr @aes_decipher.message, align 1
  %368 = and i8 %367, -49
  %369 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 1), align 1
  %370 = and i8 %369, -57
  %371 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 4), align 1
  %372 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 5), align 1
  %373 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 6), align 1
  %374 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 7), align 1
  %375 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 8), align 1
  %376 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 9), align 1
  %377 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 16), align 1
  %378 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 17), align 1
  %379 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 18), align 1
  %380 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 19), align 1
  %381 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 20), align 1
  %382 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 21), align 1
  %or.cond.i609.i = or i1 %switch.selectcmp.i, %switch.i
  br i1 %or.cond.i609.i, label %construct_mic_iv.exit.i.if.end.i616.i_crit_edge, label %for.body18.preheader.i.i

construct_mic_iv.exit.i.if.end.i616.i_crit_edge:  ; preds = %construct_mic_iv.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i616.i

for.body18.preheader.i.i:                         ; preds = %construct_mic_iv.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %383 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 24), align 1
  %384 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 25), align 1
  %385 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 26), align 1
  %386 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 27), align 1
  %387 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 28), align 1
  %388 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 29), align 1
  br label %if.end.i616.i

if.end.i616.i:                                    ; preds = %for.body18.preheader.i.i, %construct_mic_iv.exit.i.if.end.i616.i_crit_edge
  %mic_header2.sroa.28.0.i = phi i8 [ 0, %construct_mic_iv.exit.i.if.end.i616.i_crit_edge ], [ %383, %for.body18.preheader.i.i ]
  %mic_header2.sroa.33.0.i = phi i8 [ 0, %construct_mic_iv.exit.i.if.end.i616.i_crit_edge ], [ %384, %for.body18.preheader.i.i ]
  %mic_header2.sroa.38.0.i = phi i8 [ 0, %construct_mic_iv.exit.i.if.end.i616.i_crit_edge ], [ %385, %for.body18.preheader.i.i ]
  %mic_header2.sroa.42.0.i = phi i8 [ 0, %construct_mic_iv.exit.i.if.end.i616.i_crit_edge ], [ %386, %for.body18.preheader.i.i ]
  %mic_header2.sroa.46.0.i = phi i8 [ 0, %construct_mic_iv.exit.i.if.end.i616.i_crit_edge ], [ %387, %for.body18.preheader.i.i ]
  %mic_header2.sroa.50.0.i = phi i8 [ 0, %construct_mic_iv.exit.i.if.end.i616.i_crit_edge ], [ %388, %for.body18.preheader.i.i ]
  br i1 %or.cond56.i.i, label %if.then28.i.i, label %if.end.i616.i.if.end37.i.i_crit_edge

if.end.i616.i.if.end37.i.i_crit_edge:             ; preds = %if.end.i616.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37.i.i

if.then28.i.i:                                    ; preds = %if.end.i616.i
  call void @__sanitizer_cov_trace_pc() #11
  %389 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 24), align 1
  %390 = and i8 %389, 15
  br label %if.end37.i.i

if.end37.i.i:                                     ; preds = %if.then28.i.i, %if.end.i616.i.if.end37.i.i_crit_edge
  %mic_header2.sroa.28.1.i = phi i8 [ %390, %if.then28.i.i ], [ %mic_header2.sroa.28.0.i, %if.end.i616.i.if.end37.i.i_crit_edge ]
  %mic_header2.sroa.33.1.i = phi i8 [ 0, %if.then28.i.i ], [ %mic_header2.sroa.33.0.i, %if.end.i616.i.if.end37.i.i_crit_edge ]
  br i1 %or.cond.i584.pre-phi.i, label %if.end37.i.i.construct_mic_header2.exit.i_crit_edge, label %for.body45.preheader.i.i

if.end37.i.i.construct_mic_header2.exit.i_crit_edge: ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %construct_mic_header2.exit.i

for.body45.preheader.i.i:                         ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %391 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 24), align 1
  %392 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 25), align 1
  %393 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 26), align 1
  %394 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 27), align 1
  %395 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 28), align 1
  %396 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 29), align 1
  %397 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 30), align 1
  %398 = and i8 %397, 15
  br label %construct_mic_header2.exit.i

construct_mic_header2.exit.i:                     ; preds = %for.body45.preheader.i.i, %if.end37.i.i.construct_mic_header2.exit.i_crit_edge
  %mic_header2.sroa.28.2.i = phi i8 [ %mic_header2.sroa.28.1.i, %if.end37.i.i.construct_mic_header2.exit.i_crit_edge ], [ %391, %for.body45.preheader.i.i ]
  %mic_header2.sroa.33.2.i = phi i8 [ %mic_header2.sroa.33.1.i, %if.end37.i.i.construct_mic_header2.exit.i_crit_edge ], [ %392, %for.body45.preheader.i.i ]
  %mic_header2.sroa.38.1.i = phi i8 [ %mic_header2.sroa.38.0.i, %if.end37.i.i.construct_mic_header2.exit.i_crit_edge ], [ %393, %for.body45.preheader.i.i ]
  %mic_header2.sroa.42.1.i = phi i8 [ %mic_header2.sroa.42.0.i, %if.end37.i.i.construct_mic_header2.exit.i_crit_edge ], [ %394, %for.body45.preheader.i.i ]
  %mic_header2.sroa.46.1.i = phi i8 [ %mic_header2.sroa.46.0.i, %if.end37.i.i.construct_mic_header2.exit.i_crit_edge ], [ %395, %for.body45.preheader.i.i ]
  %mic_header2.sroa.50.1.i = phi i8 [ %mic_header2.sroa.50.0.i, %if.end37.i.i.construct_mic_header2.exit.i_crit_edge ], [ %396, %for.body45.preheader.i.i ]
  %mic_header2.sroa.54.0.i = phi i8 [ 0, %if.end37.i.i.construct_mic_header2.exit.i_crit_edge ], [ %398, %for.body45.preheader.i.i ]
  call fastcc void @aes128k128d(ptr noundef %prwskey.0, ptr noundef nonnull %mic_iv.i, ptr noundef nonnull %aes_out.i) #9
  %399 = ptrtoint ptr %aes_out.i to i32
  call void @__asan_load1_noabort(i32 %399)
  %400 = load i8, ptr %aes_out.i, align 1
  %xor9.i618.i = xor i8 %400, %conv.i.i
  %401 = ptrtoint ptr %chain_buffer.i to i32
  call void @__asan_store1_noabort(i32 %401)
  store i8 %xor9.i618.i, ptr %chain_buffer.i, align 8
  %402 = ptrtoint ptr %67 to i32
  call void @__asan_load1_noabort(i32 %402)
  %403 = load i8, ptr %67, align 1
  %xor9.1.i621.i = xor i8 %403, %conv2.i.i
  %404 = ptrtoint ptr %52 to i32
  call void @__asan_store1_noabort(i32 %404)
  store i8 %xor9.1.i621.i, ptr %52, align 1
  %405 = ptrtoint ptr %68 to i32
  call void @__asan_load1_noabort(i32 %405)
  %406 = load i8, ptr %68, align 1
  %xor9.2.i625.i = xor i8 %406, %368
  %407 = ptrtoint ptr %53 to i32
  call void @__asan_store1_noabort(i32 %407)
  store i8 %xor9.2.i625.i, ptr %53, align 2
  %408 = ptrtoint ptr %69 to i32
  call void @__asan_load1_noabort(i32 %408)
  %409 = load i8, ptr %69, align 1
  %xor9.3.i629.i = xor i8 %409, %370
  %410 = ptrtoint ptr %54 to i32
  call void @__asan_store1_noabort(i32 %410)
  store i8 %xor9.3.i629.i, ptr %54, align 1
  %411 = ptrtoint ptr %70 to i32
  call void @__asan_load1_noabort(i32 %411)
  %412 = load i8, ptr %70, align 1
  %xor9.4.i633.i = xor i8 %412, %371
  %413 = ptrtoint ptr %55 to i32
  call void @__asan_store1_noabort(i32 %413)
  store i8 %xor9.4.i633.i, ptr %55, align 4
  %414 = ptrtoint ptr %71 to i32
  call void @__asan_load1_noabort(i32 %414)
  %415 = load i8, ptr %71, align 1
  %xor9.5.i637.i = xor i8 %415, %372
  %416 = ptrtoint ptr %56 to i32
  call void @__asan_store1_noabort(i32 %416)
  store i8 %xor9.5.i637.i, ptr %56, align 1
  %417 = ptrtoint ptr %72 to i32
  call void @__asan_load1_noabort(i32 %417)
  %418 = load i8, ptr %72, align 1
  %xor9.6.i641.i = xor i8 %418, %373
  %419 = ptrtoint ptr %57 to i32
  call void @__asan_store1_noabort(i32 %419)
  store i8 %xor9.6.i641.i, ptr %57, align 2
  %420 = ptrtoint ptr %73 to i32
  call void @__asan_load1_noabort(i32 %420)
  %421 = load i8, ptr %73, align 1
  %xor9.7.i645.i = xor i8 %421, %374
  %422 = ptrtoint ptr %58 to i32
  call void @__asan_store1_noabort(i32 %422)
  store i8 %xor9.7.i645.i, ptr %58, align 1
  %423 = ptrtoint ptr %74 to i32
  call void @__asan_load1_noabort(i32 %423)
  %424 = load i8, ptr %74, align 1
  %xor9.8.i649.i = xor i8 %424, %375
  %425 = ptrtoint ptr %59 to i32
  call void @__asan_store1_noabort(i32 %425)
  store i8 %xor9.8.i649.i, ptr %59, align 8
  %426 = ptrtoint ptr %75 to i32
  call void @__asan_load1_noabort(i32 %426)
  %427 = load i8, ptr %75, align 1
  %xor9.9.i653.i = xor i8 %427, %376
  %428 = ptrtoint ptr %60 to i32
  call void @__asan_store1_noabort(i32 %428)
  store i8 %xor9.9.i653.i, ptr %60, align 1
  %429 = ptrtoint ptr %76 to i32
  call void @__asan_load1_noabort(i32 %429)
  %430 = load i8, ptr %76, align 1
  %xor9.10.i657.i = xor i8 %430, %347
  %431 = ptrtoint ptr %61 to i32
  call void @__asan_store1_noabort(i32 %431)
  store i8 %xor9.10.i657.i, ptr %61, align 2
  %432 = ptrtoint ptr %77 to i32
  call void @__asan_load1_noabort(i32 %432)
  %433 = load i8, ptr %77, align 1
  %xor9.11.i661.i = xor i8 %433, %349
  %434 = ptrtoint ptr %62 to i32
  call void @__asan_store1_noabort(i32 %434)
  store i8 %xor9.11.i661.i, ptr %62, align 1
  %435 = ptrtoint ptr %78 to i32
  call void @__asan_load1_noabort(i32 %435)
  %436 = load i8, ptr %78, align 1
  %xor9.12.i665.i = xor i8 %436, %351
  %437 = ptrtoint ptr %63 to i32
  call void @__asan_store1_noabort(i32 %437)
  store i8 %xor9.12.i665.i, ptr %63, align 4
  %438 = ptrtoint ptr %79 to i32
  call void @__asan_load1_noabort(i32 %438)
  %439 = load i8, ptr %79, align 1
  %xor9.13.i669.i = xor i8 %439, %353
  %440 = ptrtoint ptr %64 to i32
  call void @__asan_store1_noabort(i32 %440)
  store i8 %xor9.13.i669.i, ptr %64, align 1
  %441 = ptrtoint ptr %80 to i32
  call void @__asan_load1_noabort(i32 %441)
  %442 = load i8, ptr %80, align 1
  %xor9.14.i673.i = xor i8 %442, %355
  %443 = ptrtoint ptr %65 to i32
  call void @__asan_store1_noabort(i32 %443)
  store i8 %xor9.14.i673.i, ptr %65, align 2
  %444 = ptrtoint ptr %81 to i32
  call void @__asan_load1_noabort(i32 %444)
  %445 = load i8, ptr %81, align 1
  %xor9.15.i677.i = xor i8 %445, %357
  %446 = ptrtoint ptr %66 to i32
  call void @__asan_store1_noabort(i32 %446)
  store i8 %xor9.15.i677.i, ptr %66, align 1
  call fastcc void @aes128k128d(ptr noundef %prwskey.0, ptr noundef nonnull %chain_buffer.i, ptr noundef nonnull %aes_out.i) #9
  %447 = ptrtoint ptr %aes_out.i to i32
  call void @__asan_load1_noabort(i32 %447)
  %448 = load i8, ptr %aes_out.i, align 1
  %xor9.i679.i = xor i8 %448, %377
  %449 = ptrtoint ptr %chain_buffer.i to i32
  call void @__asan_store1_noabort(i32 %449)
  store i8 %xor9.i679.i, ptr %chain_buffer.i, align 8
  %450 = ptrtoint ptr %67 to i32
  call void @__asan_load1_noabort(i32 %450)
  %451 = load i8, ptr %67, align 1
  %xor9.1.i682.i = xor i8 %451, %378
  %452 = ptrtoint ptr %52 to i32
  call void @__asan_store1_noabort(i32 %452)
  store i8 %xor9.1.i682.i, ptr %52, align 1
  %453 = ptrtoint ptr %68 to i32
  call void @__asan_load1_noabort(i32 %453)
  %454 = load i8, ptr %68, align 1
  %xor9.2.i686.i = xor i8 %454, %379
  %455 = ptrtoint ptr %53 to i32
  call void @__asan_store1_noabort(i32 %455)
  store i8 %xor9.2.i686.i, ptr %53, align 2
  %456 = ptrtoint ptr %69 to i32
  call void @__asan_load1_noabort(i32 %456)
  %457 = load i8, ptr %69, align 1
  %xor9.3.i690.i = xor i8 %457, %380
  %458 = ptrtoint ptr %54 to i32
  call void @__asan_store1_noabort(i32 %458)
  store i8 %xor9.3.i690.i, ptr %54, align 1
  %459 = ptrtoint ptr %70 to i32
  call void @__asan_load1_noabort(i32 %459)
  %460 = load i8, ptr %70, align 1
  %xor9.4.i694.i = xor i8 %460, %381
  %461 = ptrtoint ptr %55 to i32
  call void @__asan_store1_noabort(i32 %461)
  store i8 %xor9.4.i694.i, ptr %55, align 4
  %462 = ptrtoint ptr %71 to i32
  call void @__asan_load1_noabort(i32 %462)
  %463 = load i8, ptr %71, align 1
  %xor9.5.i698.i = xor i8 %463, %382
  %464 = ptrtoint ptr %56 to i32
  call void @__asan_store1_noabort(i32 %464)
  store i8 %xor9.5.i698.i, ptr %56, align 1
  %465 = ptrtoint ptr %72 to i32
  call void @__asan_load1_noabort(i32 %465)
  %466 = load i8, ptr %72, align 1
  %467 = ptrtoint ptr %57 to i32
  call void @__asan_store1_noabort(i32 %467)
  store i8 %466, ptr %57, align 2
  %468 = ptrtoint ptr %73 to i32
  call void @__asan_load1_noabort(i32 %468)
  %469 = load i8, ptr %73, align 1
  %470 = ptrtoint ptr %58 to i32
  call void @__asan_store1_noabort(i32 %470)
  store i8 %469, ptr %58, align 1
  %471 = ptrtoint ptr %74 to i32
  call void @__asan_load1_noabort(i32 %471)
  %472 = load i8, ptr %74, align 1
  %xor9.8.i710.i = xor i8 %472, %mic_header2.sroa.28.2.i
  %473 = ptrtoint ptr %59 to i32
  call void @__asan_store1_noabort(i32 %473)
  store i8 %xor9.8.i710.i, ptr %59, align 8
  %474 = ptrtoint ptr %75 to i32
  call void @__asan_load1_noabort(i32 %474)
  %475 = load i8, ptr %75, align 1
  %xor9.9.i714.i = xor i8 %475, %mic_header2.sroa.33.2.i
  %476 = ptrtoint ptr %60 to i32
  call void @__asan_store1_noabort(i32 %476)
  store i8 %xor9.9.i714.i, ptr %60, align 1
  %477 = ptrtoint ptr %76 to i32
  call void @__asan_load1_noabort(i32 %477)
  %478 = load i8, ptr %76, align 1
  %xor9.10.i718.i = xor i8 %478, %mic_header2.sroa.38.1.i
  %479 = ptrtoint ptr %61 to i32
  call void @__asan_store1_noabort(i32 %479)
  store i8 %xor9.10.i718.i, ptr %61, align 2
  %480 = ptrtoint ptr %77 to i32
  call void @__asan_load1_noabort(i32 %480)
  %481 = load i8, ptr %77, align 1
  %xor9.11.i722.i = xor i8 %481, %mic_header2.sroa.42.1.i
  %482 = ptrtoint ptr %62 to i32
  call void @__asan_store1_noabort(i32 %482)
  store i8 %xor9.11.i722.i, ptr %62, align 1
  %483 = ptrtoint ptr %78 to i32
  call void @__asan_load1_noabort(i32 %483)
  %484 = load i8, ptr %78, align 1
  %xor9.12.i726.i = xor i8 %484, %mic_header2.sroa.46.1.i
  %485 = ptrtoint ptr %63 to i32
  call void @__asan_store1_noabort(i32 %485)
  store i8 %xor9.12.i726.i, ptr %63, align 4
  %486 = ptrtoint ptr %79 to i32
  call void @__asan_load1_noabort(i32 %486)
  %487 = load i8, ptr %79, align 1
  %xor9.13.i730.i = xor i8 %487, %mic_header2.sroa.50.1.i
  %488 = ptrtoint ptr %64 to i32
  call void @__asan_store1_noabort(i32 %488)
  store i8 %xor9.13.i730.i, ptr %64, align 1
  %489 = ptrtoint ptr %80 to i32
  call void @__asan_load1_noabort(i32 %489)
  %490 = load i8, ptr %80, align 1
  %xor9.14.i734.i = xor i8 %490, %mic_header2.sroa.54.0.i
  %491 = ptrtoint ptr %65 to i32
  call void @__asan_store1_noabort(i32 %491)
  store i8 %xor9.14.i734.i, ptr %65, align 2
  %492 = ptrtoint ptr %81 to i32
  call void @__asan_load1_noabort(i32 %492)
  %493 = load i8, ptr %81, align 1
  %494 = ptrtoint ptr %66 to i32
  call void @__asan_store1_noabort(i32 %494)
  store i8 %493, ptr %66, align 1
  call fastcc void @aes128k128d(ptr noundef %prwskey.0, ptr noundef nonnull %chain_buffer.i, ptr noundef nonnull %aes_out.i) #9
  br i1 %cmp641188.not.i, label %construct_mic_header2.exit.i.for.end177.i_crit_edge, label %for.body168.preheader.i

construct_mic_header2.exit.i.for.end177.i_crit_edge: ; preds = %construct_mic_header2.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end177.i

for.body168.preheader.i:                          ; preds = %construct_mic_header2.exit.i
  %umax1229.i = call i32 @llvm.umax.i32(i32 %div481.i, i32 1) #9
  br label %for.body168.i

for.body168.i:                                    ; preds = %for.body168.i.for.body168.i_crit_edge, %for.body168.preheader.i
  %payload_index.31199.i = phi i32 [ %add172.i, %for.body168.i.for.body168.i_crit_edge ], [ %add63.i, %for.body168.preheader.i ]
  %i.11198.i = phi i32 [ %inc176.i, %for.body168.i.for.body168.i_crit_edge ], [ 0, %for.body168.preheader.i ]
  %arrayidx170.i = getelementptr [2048 x i8], ptr @aes_decipher.message, i32 0, i32 %payload_index.31199.i
  %495 = ptrtoint ptr %aes_out.i to i32
  call void @__asan_load1_noabort(i32 %495)
  %496 = load i8, ptr %aes_out.i, align 1
  %497 = ptrtoint ptr %arrayidx170.i to i32
  call void @__asan_load1_noabort(i32 %497)
  %498 = load i8, ptr %arrayidx170.i, align 1
  %xor9.i740.i = xor i8 %498, %496
  %499 = ptrtoint ptr %chain_buffer.i to i32
  call void @__asan_store1_noabort(i32 %499)
  store i8 %xor9.i740.i, ptr %chain_buffer.i, align 8
  %500 = ptrtoint ptr %67 to i32
  call void @__asan_load1_noabort(i32 %500)
  %501 = load i8, ptr %67, align 1
  %arrayidx1.1.i742.i = getelementptr i8, ptr %arrayidx170.i, i32 1
  %502 = ptrtoint ptr %arrayidx1.1.i742.i to i32
  call void @__asan_load1_noabort(i32 %502)
  %503 = load i8, ptr %arrayidx1.1.i742.i, align 1
  %xor9.1.i743.i = xor i8 %503, %501
  %504 = ptrtoint ptr %52 to i32
  call void @__asan_store1_noabort(i32 %504)
  store i8 %xor9.1.i743.i, ptr %52, align 1
  %505 = ptrtoint ptr %68 to i32
  call void @__asan_load1_noabort(i32 %505)
  %506 = load i8, ptr %68, align 1
  %arrayidx1.2.i746.i = getelementptr i8, ptr %arrayidx170.i, i32 2
  %507 = ptrtoint ptr %arrayidx1.2.i746.i to i32
  call void @__asan_load1_noabort(i32 %507)
  %508 = load i8, ptr %arrayidx1.2.i746.i, align 1
  %xor9.2.i747.i = xor i8 %508, %506
  %509 = ptrtoint ptr %53 to i32
  call void @__asan_store1_noabort(i32 %509)
  store i8 %xor9.2.i747.i, ptr %53, align 2
  %510 = ptrtoint ptr %69 to i32
  call void @__asan_load1_noabort(i32 %510)
  %511 = load i8, ptr %69, align 1
  %arrayidx1.3.i750.i = getelementptr i8, ptr %arrayidx170.i, i32 3
  %512 = ptrtoint ptr %arrayidx1.3.i750.i to i32
  call void @__asan_load1_noabort(i32 %512)
  %513 = load i8, ptr %arrayidx1.3.i750.i, align 1
  %xor9.3.i751.i = xor i8 %513, %511
  %514 = ptrtoint ptr %54 to i32
  call void @__asan_store1_noabort(i32 %514)
  store i8 %xor9.3.i751.i, ptr %54, align 1
  %515 = ptrtoint ptr %70 to i32
  call void @__asan_load1_noabort(i32 %515)
  %516 = load i8, ptr %70, align 1
  %arrayidx1.4.i754.i = getelementptr i8, ptr %arrayidx170.i, i32 4
  %517 = ptrtoint ptr %arrayidx1.4.i754.i to i32
  call void @__asan_load1_noabort(i32 %517)
  %518 = load i8, ptr %arrayidx1.4.i754.i, align 1
  %xor9.4.i755.i = xor i8 %518, %516
  %519 = ptrtoint ptr %55 to i32
  call void @__asan_store1_noabort(i32 %519)
  store i8 %xor9.4.i755.i, ptr %55, align 4
  %520 = ptrtoint ptr %71 to i32
  call void @__asan_load1_noabort(i32 %520)
  %521 = load i8, ptr %71, align 1
  %arrayidx1.5.i758.i = getelementptr i8, ptr %arrayidx170.i, i32 5
  %522 = ptrtoint ptr %arrayidx1.5.i758.i to i32
  call void @__asan_load1_noabort(i32 %522)
  %523 = load i8, ptr %arrayidx1.5.i758.i, align 1
  %xor9.5.i759.i = xor i8 %523, %521
  %524 = ptrtoint ptr %56 to i32
  call void @__asan_store1_noabort(i32 %524)
  store i8 %xor9.5.i759.i, ptr %56, align 1
  %525 = ptrtoint ptr %72 to i32
  call void @__asan_load1_noabort(i32 %525)
  %526 = load i8, ptr %72, align 1
  %arrayidx1.6.i762.i = getelementptr i8, ptr %arrayidx170.i, i32 6
  %527 = ptrtoint ptr %arrayidx1.6.i762.i to i32
  call void @__asan_load1_noabort(i32 %527)
  %528 = load i8, ptr %arrayidx1.6.i762.i, align 1
  %xor9.6.i763.i = xor i8 %528, %526
  %529 = ptrtoint ptr %57 to i32
  call void @__asan_store1_noabort(i32 %529)
  store i8 %xor9.6.i763.i, ptr %57, align 2
  %530 = ptrtoint ptr %73 to i32
  call void @__asan_load1_noabort(i32 %530)
  %531 = load i8, ptr %73, align 1
  %arrayidx1.7.i766.i = getelementptr i8, ptr %arrayidx170.i, i32 7
  %532 = ptrtoint ptr %arrayidx1.7.i766.i to i32
  call void @__asan_load1_noabort(i32 %532)
  %533 = load i8, ptr %arrayidx1.7.i766.i, align 1
  %xor9.7.i767.i = xor i8 %533, %531
  %534 = ptrtoint ptr %58 to i32
  call void @__asan_store1_noabort(i32 %534)
  store i8 %xor9.7.i767.i, ptr %58, align 1
  %535 = ptrtoint ptr %74 to i32
  call void @__asan_load1_noabort(i32 %535)
  %536 = load i8, ptr %74, align 1
  %arrayidx1.8.i770.i = getelementptr i8, ptr %arrayidx170.i, i32 8
  %537 = ptrtoint ptr %arrayidx1.8.i770.i to i32
  call void @__asan_load1_noabort(i32 %537)
  %538 = load i8, ptr %arrayidx1.8.i770.i, align 1
  %xor9.8.i771.i = xor i8 %538, %536
  %539 = ptrtoint ptr %59 to i32
  call void @__asan_store1_noabort(i32 %539)
  store i8 %xor9.8.i771.i, ptr %59, align 8
  %540 = ptrtoint ptr %75 to i32
  call void @__asan_load1_noabort(i32 %540)
  %541 = load i8, ptr %75, align 1
  %arrayidx1.9.i774.i = getelementptr i8, ptr %arrayidx170.i, i32 9
  %542 = ptrtoint ptr %arrayidx1.9.i774.i to i32
  call void @__asan_load1_noabort(i32 %542)
  %543 = load i8, ptr %arrayidx1.9.i774.i, align 1
  %xor9.9.i775.i = xor i8 %543, %541
  %544 = ptrtoint ptr %60 to i32
  call void @__asan_store1_noabort(i32 %544)
  store i8 %xor9.9.i775.i, ptr %60, align 1
  %545 = ptrtoint ptr %76 to i32
  call void @__asan_load1_noabort(i32 %545)
  %546 = load i8, ptr %76, align 1
  %arrayidx1.10.i778.i = getelementptr i8, ptr %arrayidx170.i, i32 10
  %547 = ptrtoint ptr %arrayidx1.10.i778.i to i32
  call void @__asan_load1_noabort(i32 %547)
  %548 = load i8, ptr %arrayidx1.10.i778.i, align 1
  %xor9.10.i779.i = xor i8 %548, %546
  %549 = ptrtoint ptr %61 to i32
  call void @__asan_store1_noabort(i32 %549)
  store i8 %xor9.10.i779.i, ptr %61, align 2
  %550 = ptrtoint ptr %77 to i32
  call void @__asan_load1_noabort(i32 %550)
  %551 = load i8, ptr %77, align 1
  %arrayidx1.11.i782.i = getelementptr i8, ptr %arrayidx170.i, i32 11
  %552 = ptrtoint ptr %arrayidx1.11.i782.i to i32
  call void @__asan_load1_noabort(i32 %552)
  %553 = load i8, ptr %arrayidx1.11.i782.i, align 1
  %xor9.11.i783.i = xor i8 %553, %551
  %554 = ptrtoint ptr %62 to i32
  call void @__asan_store1_noabort(i32 %554)
  store i8 %xor9.11.i783.i, ptr %62, align 1
  %555 = ptrtoint ptr %78 to i32
  call void @__asan_load1_noabort(i32 %555)
  %556 = load i8, ptr %78, align 1
  %arrayidx1.12.i786.i = getelementptr i8, ptr %arrayidx170.i, i32 12
  %557 = ptrtoint ptr %arrayidx1.12.i786.i to i32
  call void @__asan_load1_noabort(i32 %557)
  %558 = load i8, ptr %arrayidx1.12.i786.i, align 1
  %xor9.12.i787.i = xor i8 %558, %556
  %559 = ptrtoint ptr %63 to i32
  call void @__asan_store1_noabort(i32 %559)
  store i8 %xor9.12.i787.i, ptr %63, align 4
  %560 = ptrtoint ptr %79 to i32
  call void @__asan_load1_noabort(i32 %560)
  %561 = load i8, ptr %79, align 1
  %arrayidx1.13.i790.i = getelementptr i8, ptr %arrayidx170.i, i32 13
  %562 = ptrtoint ptr %arrayidx1.13.i790.i to i32
  call void @__asan_load1_noabort(i32 %562)
  %563 = load i8, ptr %arrayidx1.13.i790.i, align 1
  %xor9.13.i791.i = xor i8 %563, %561
  %564 = ptrtoint ptr %64 to i32
  call void @__asan_store1_noabort(i32 %564)
  store i8 %xor9.13.i791.i, ptr %64, align 1
  %565 = ptrtoint ptr %80 to i32
  call void @__asan_load1_noabort(i32 %565)
  %566 = load i8, ptr %80, align 1
  %arrayidx1.14.i794.i = getelementptr i8, ptr %arrayidx170.i, i32 14
  %567 = ptrtoint ptr %arrayidx1.14.i794.i to i32
  call void @__asan_load1_noabort(i32 %567)
  %568 = load i8, ptr %arrayidx1.14.i794.i, align 1
  %xor9.14.i795.i = xor i8 %568, %566
  %569 = ptrtoint ptr %65 to i32
  call void @__asan_store1_noabort(i32 %569)
  store i8 %xor9.14.i795.i, ptr %65, align 2
  %570 = ptrtoint ptr %81 to i32
  call void @__asan_load1_noabort(i32 %570)
  %571 = load i8, ptr %81, align 1
  %arrayidx1.15.i798.i = getelementptr i8, ptr %arrayidx170.i, i32 15
  %572 = ptrtoint ptr %arrayidx1.15.i798.i to i32
  call void @__asan_load1_noabort(i32 %572)
  %573 = load i8, ptr %arrayidx1.15.i798.i, align 1
  %xor9.15.i799.i = xor i8 %573, %571
  %574 = ptrtoint ptr %66 to i32
  call void @__asan_store1_noabort(i32 %574)
  store i8 %xor9.15.i799.i, ptr %66, align 1
  %add172.i = add i32 %payload_index.31199.i, 16
  call fastcc void @aes128k128d(ptr noundef %prwskey.0, ptr noundef nonnull %chain_buffer.i, ptr noundef nonnull %aes_out.i) #9
  %inc176.i = add nuw nsw i32 %i.11198.i, 1
  %exitcond1230.not.i = icmp eq i32 %inc176.i, %umax1229.i
  br i1 %exitcond1230.not.i, label %for.body168.i.for.end177.i_crit_edge, label %for.body168.i.for.body168.i_crit_edge

for.body168.i.for.body168.i_crit_edge:            ; preds = %for.body168.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body168.i

for.body168.i.for.end177.i_crit_edge:             ; preds = %for.body168.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end177.i

for.end177.i:                                     ; preds = %for.body168.i.for.end177.i_crit_edge, %construct_mic_header2.exit.i.for.end177.i_crit_edge
  %payload_index.3.lcssa.i = phi i32 [ %add63.i, %construct_mic_header2.exit.i.for.end177.i_crit_edge ], [ %add172.i, %for.body168.i.for.end177.i_crit_edge ]
  br i1 %cmp84.not.i, label %for.end177.i.if.end204.i_crit_edge, label %for.end198.i

for.end177.i.if.end204.i_crit_edge:               ; preds = %for.end177.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end204.i

for.end198.i:                                     ; preds = %for.end177.i
  call void @__sanitizer_cov_trace_pc() #11
  %uglygep1231.i = getelementptr i8, ptr @aes_decipher.message, i32 %payload_index.3.lcssa.i
  %575 = sub nuw nsw i32 16, %rem.i
  %576 = getelementptr i8, ptr %padded_buffer.i, i32 %rem.i
  %577 = call ptr @memset(ptr %576, i32 0, i32 %575)
  %578 = call ptr @memcpy(ptr %padded_buffer.i, ptr %uglygep1231.i, i32 %rem.i)
  %579 = add i32 %payload_index.3.lcssa.i, %rem.i
  %580 = ptrtoint ptr %aes_out.i to i32
  call void @__asan_load1_noabort(i32 %580)
  %581 = load i8, ptr %aes_out.i, align 1
  %582 = ptrtoint ptr %padded_buffer.i to i32
  call void @__asan_load1_noabort(i32 %582)
  %padded_buffer.0.1251.i = load i8, ptr %padded_buffer.i, align 8
  %xor9.i801.i = xor i8 %padded_buffer.0.1251.i, %581
  %583 = ptrtoint ptr %chain_buffer.i to i32
  call void @__asan_store1_noabort(i32 %583)
  store i8 %xor9.i801.i, ptr %chain_buffer.i, align 8
  %584 = ptrtoint ptr %67 to i32
  call void @__asan_load1_noabort(i32 %584)
  %585 = load i8, ptr %67, align 1
  %586 = ptrtoint ptr %padded_buffer.1..sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %586)
  %padded_buffer.1.1254.i = load i8, ptr %padded_buffer.1..sroa_idx.i, align 1
  %xor9.1.i804.i = xor i8 %padded_buffer.1.1254.i, %585
  %587 = ptrtoint ptr %52 to i32
  call void @__asan_store1_noabort(i32 %587)
  store i8 %xor9.1.i804.i, ptr %52, align 1
  %588 = ptrtoint ptr %68 to i32
  call void @__asan_load1_noabort(i32 %588)
  %589 = load i8, ptr %68, align 1
  %590 = ptrtoint ptr %padded_buffer.2..sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %590)
  %padded_buffer.2.1257.i = load i8, ptr %padded_buffer.2..sroa_idx.i, align 2
  %xor9.2.i808.i = xor i8 %padded_buffer.2.1257.i, %589
  %591 = ptrtoint ptr %53 to i32
  call void @__asan_store1_noabort(i32 %591)
  store i8 %xor9.2.i808.i, ptr %53, align 2
  %592 = ptrtoint ptr %69 to i32
  call void @__asan_load1_noabort(i32 %592)
  %593 = load i8, ptr %69, align 1
  %594 = ptrtoint ptr %padded_buffer.3..sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %594)
  %padded_buffer.3.1260.i = load i8, ptr %padded_buffer.3..sroa_idx.i, align 1
  %xor9.3.i812.i = xor i8 %padded_buffer.3.1260.i, %593
  %595 = ptrtoint ptr %54 to i32
  call void @__asan_store1_noabort(i32 %595)
  store i8 %xor9.3.i812.i, ptr %54, align 1
  %596 = ptrtoint ptr %70 to i32
  call void @__asan_load1_noabort(i32 %596)
  %597 = load i8, ptr %70, align 1
  %598 = ptrtoint ptr %padded_buffer.4..sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %598)
  %padded_buffer.4.1263.i = load i8, ptr %padded_buffer.4..sroa_idx.i, align 4
  %xor9.4.i816.i = xor i8 %padded_buffer.4.1263.i, %597
  %599 = ptrtoint ptr %55 to i32
  call void @__asan_store1_noabort(i32 %599)
  store i8 %xor9.4.i816.i, ptr %55, align 4
  %600 = ptrtoint ptr %71 to i32
  call void @__asan_load1_noabort(i32 %600)
  %601 = load i8, ptr %71, align 1
  %602 = ptrtoint ptr %padded_buffer.5..sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %602)
  %padded_buffer.5.1266.i = load i8, ptr %padded_buffer.5..sroa_idx.i, align 1
  %xor9.5.i820.i = xor i8 %padded_buffer.5.1266.i, %601
  %603 = ptrtoint ptr %56 to i32
  call void @__asan_store1_noabort(i32 %603)
  store i8 %xor9.5.i820.i, ptr %56, align 1
  %604 = ptrtoint ptr %72 to i32
  call void @__asan_load1_noabort(i32 %604)
  %605 = load i8, ptr %72, align 1
  %606 = ptrtoint ptr %padded_buffer.6..sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %606)
  %padded_buffer.6.1269.i = load i8, ptr %padded_buffer.6..sroa_idx.i, align 2
  %xor9.6.i824.i = xor i8 %padded_buffer.6.1269.i, %605
  %607 = ptrtoint ptr %57 to i32
  call void @__asan_store1_noabort(i32 %607)
  store i8 %xor9.6.i824.i, ptr %57, align 2
  %608 = ptrtoint ptr %73 to i32
  call void @__asan_load1_noabort(i32 %608)
  %609 = load i8, ptr %73, align 1
  %610 = ptrtoint ptr %padded_buffer.7..sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %610)
  %padded_buffer.7.1272.i = load i8, ptr %padded_buffer.7..sroa_idx.i, align 1
  %xor9.7.i828.i = xor i8 %padded_buffer.7.1272.i, %609
  %611 = ptrtoint ptr %58 to i32
  call void @__asan_store1_noabort(i32 %611)
  store i8 %xor9.7.i828.i, ptr %58, align 1
  %612 = ptrtoint ptr %74 to i32
  call void @__asan_load1_noabort(i32 %612)
  %613 = load i8, ptr %74, align 1
  %614 = ptrtoint ptr %padded_buffer.8..sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %614)
  %padded_buffer.8.1275.i = load i8, ptr %padded_buffer.8..sroa_idx.i, align 8
  %xor9.8.i832.i = xor i8 %padded_buffer.8.1275.i, %613
  %615 = ptrtoint ptr %59 to i32
  call void @__asan_store1_noabort(i32 %615)
  store i8 %xor9.8.i832.i, ptr %59, align 8
  %616 = ptrtoint ptr %75 to i32
  call void @__asan_load1_noabort(i32 %616)
  %617 = load i8, ptr %75, align 1
  %618 = ptrtoint ptr %padded_buffer.9..sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %618)
  %padded_buffer.9.1278.i = load i8, ptr %padded_buffer.9..sroa_idx.i, align 1
  %xor9.9.i836.i = xor i8 %padded_buffer.9.1278.i, %617
  %619 = ptrtoint ptr %60 to i32
  call void @__asan_store1_noabort(i32 %619)
  store i8 %xor9.9.i836.i, ptr %60, align 1
  %620 = ptrtoint ptr %76 to i32
  call void @__asan_load1_noabort(i32 %620)
  %621 = load i8, ptr %76, align 1
  %622 = ptrtoint ptr %padded_buffer.10..sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %622)
  %padded_buffer.10.1281.i = load i8, ptr %padded_buffer.10..sroa_idx.i, align 2
  %xor9.10.i840.i = xor i8 %padded_buffer.10.1281.i, %621
  %623 = ptrtoint ptr %61 to i32
  call void @__asan_store1_noabort(i32 %623)
  store i8 %xor9.10.i840.i, ptr %61, align 2
  %624 = ptrtoint ptr %77 to i32
  call void @__asan_load1_noabort(i32 %624)
  %625 = load i8, ptr %77, align 1
  %626 = ptrtoint ptr %padded_buffer.11..sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %626)
  %padded_buffer.11.1284.i = load i8, ptr %padded_buffer.11..sroa_idx.i, align 1
  %xor9.11.i844.i = xor i8 %padded_buffer.11.1284.i, %625
  %627 = ptrtoint ptr %62 to i32
  call void @__asan_store1_noabort(i32 %627)
  store i8 %xor9.11.i844.i, ptr %62, align 1
  %628 = ptrtoint ptr %78 to i32
  call void @__asan_load1_noabort(i32 %628)
  %629 = load i8, ptr %78, align 1
  %630 = ptrtoint ptr %padded_buffer.12..sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %630)
  %padded_buffer.12.1287.i = load i8, ptr %padded_buffer.12..sroa_idx.i, align 4
  %xor9.12.i848.i = xor i8 %padded_buffer.12.1287.i, %629
  %631 = ptrtoint ptr %63 to i32
  call void @__asan_store1_noabort(i32 %631)
  store i8 %xor9.12.i848.i, ptr %63, align 4
  %632 = ptrtoint ptr %79 to i32
  call void @__asan_load1_noabort(i32 %632)
  %633 = load i8, ptr %79, align 1
  %634 = ptrtoint ptr %padded_buffer.13..sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %634)
  %padded_buffer.13.1290.i = load i8, ptr %padded_buffer.13..sroa_idx.i, align 1
  %xor9.13.i852.i = xor i8 %padded_buffer.13.1290.i, %633
  %635 = ptrtoint ptr %64 to i32
  call void @__asan_store1_noabort(i32 %635)
  store i8 %xor9.13.i852.i, ptr %64, align 1
  %636 = ptrtoint ptr %80 to i32
  call void @__asan_load1_noabort(i32 %636)
  %637 = load i8, ptr %80, align 1
  %638 = ptrtoint ptr %padded_buffer.14..sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %638)
  %padded_buffer.14.1293.i = load i8, ptr %padded_buffer.14..sroa_idx.i, align 2
  %xor9.14.i856.i = xor i8 %padded_buffer.14.1293.i, %637
  %639 = ptrtoint ptr %65 to i32
  call void @__asan_store1_noabort(i32 %639)
  store i8 %xor9.14.i856.i, ptr %65, align 2
  %640 = ptrtoint ptr %81 to i32
  call void @__asan_load1_noabort(i32 %640)
  %641 = load i8, ptr %81, align 1
  %642 = ptrtoint ptr %padded_buffer.15..sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %642)
  %padded_buffer.15.1296.i = load i8, ptr %padded_buffer.15..sroa_idx.i, align 1
  %xor9.15.i860.i = xor i8 %padded_buffer.15.1296.i, %641
  %643 = ptrtoint ptr %66 to i32
  call void @__asan_store1_noabort(i32 %643)
  store i8 %xor9.15.i860.i, ptr %66, align 1
  call fastcc void @aes128k128d(ptr noundef %prwskey.0, ptr noundef nonnull %chain_buffer.i, ptr noundef nonnull %aes_out.i) #9
  br label %if.end204.i

if.end204.i:                                      ; preds = %for.end198.i, %for.end177.i.if.end204.i_crit_edge
  %payload_index.5.i = phi i32 [ %579, %for.end198.i ], [ %payload_index.3.lcssa.i, %for.end177.i.if.end204.i_crit_edge ]
  %644 = ptrtoint ptr %aes_out.i to i32
  call void @__asan_load1_noabort(i32 %644)
  %mic.sroa.0.0.copyload.i = load i8, ptr %aes_out.i, align 1
  %645 = ptrtoint ptr %67 to i32
  call void @__asan_load1_noabort(i32 %645)
  %mic.sroa.5.0.copyload.i = load i8, ptr %67, align 1
  %646 = ptrtoint ptr %68 to i32
  call void @__asan_load1_noabort(i32 %646)
  %mic.sroa.6.0.copyload.i = load i8, ptr %68, align 1
  %647 = ptrtoint ptr %69 to i32
  call void @__asan_load1_noabort(i32 %647)
  %mic.sroa.7.0.copyload.i = load i8, ptr %69, align 1
  %648 = ptrtoint ptr %70 to i32
  call void @__asan_load1_noabort(i32 %648)
  %mic.sroa.8.0.copyload.i = load i8, ptr %70, align 1
  %649 = ptrtoint ptr %71 to i32
  call void @__asan_load1_noabort(i32 %649)
  %mic.sroa.9.0.copyload.i = load i8, ptr %71, align 1
  %650 = ptrtoint ptr %72 to i32
  call void @__asan_load1_noabort(i32 %650)
  %mic.sroa.10.0.copyload.i = load i8, ptr %72, align 1
  %651 = ptrtoint ptr %73 to i32
  call void @__asan_load1_noabort(i32 %651)
  %mic.sroa.11.0.copyload.i = load i8, ptr %73, align 1
  %uglygep1232.i = getelementptr i8, ptr @aes_decipher.message, i32 %payload_index.5.i
  %652 = ptrtoint ptr %uglygep1232.i to i32
  call void @__asan_store1_noabort(i32 %652)
  store i8 %mic.sroa.0.0.copyload.i, ptr %uglygep1232.i, align 1
  %mic.sroa.5.0.uglygep1232.sroa_idx.i = getelementptr inbounds i8, ptr %uglygep1232.i, i32 1
  %653 = ptrtoint ptr %mic.sroa.5.0.uglygep1232.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %653)
  store i8 %mic.sroa.5.0.copyload.i, ptr %mic.sroa.5.0.uglygep1232.sroa_idx.i, align 1
  %mic.sroa.6.0.uglygep1232.sroa_idx.i = getelementptr inbounds i8, ptr %uglygep1232.i, i32 2
  %654 = ptrtoint ptr %mic.sroa.6.0.uglygep1232.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %654)
  store i8 %mic.sroa.6.0.copyload.i, ptr %mic.sroa.6.0.uglygep1232.sroa_idx.i, align 1
  %mic.sroa.7.0.uglygep1232.sroa_idx.i = getelementptr inbounds i8, ptr %uglygep1232.i, i32 3
  %655 = ptrtoint ptr %mic.sroa.7.0.uglygep1232.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %655)
  store i8 %mic.sroa.7.0.copyload.i, ptr %mic.sroa.7.0.uglygep1232.sroa_idx.i, align 1
  %mic.sroa.8.0.uglygep1232.sroa_idx.i = getelementptr inbounds i8, ptr %uglygep1232.i, i32 4
  %656 = ptrtoint ptr %mic.sroa.8.0.uglygep1232.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %656)
  store i8 %mic.sroa.8.0.copyload.i, ptr %mic.sroa.8.0.uglygep1232.sroa_idx.i, align 1
  %mic.sroa.9.0.uglygep1232.sroa_idx.i = getelementptr inbounds i8, ptr %uglygep1232.i, i32 5
  %657 = ptrtoint ptr %mic.sroa.9.0.uglygep1232.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %657)
  store i8 %mic.sroa.9.0.copyload.i, ptr %mic.sroa.9.0.uglygep1232.sroa_idx.i, align 1
  %mic.sroa.10.0.uglygep1232.sroa_idx.i = getelementptr inbounds i8, ptr %uglygep1232.i, i32 6
  %658 = ptrtoint ptr %mic.sroa.10.0.uglygep1232.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %658)
  store i8 %mic.sroa.10.0.copyload.i, ptr %mic.sroa.10.0.uglygep1232.sroa_idx.i, align 1
  %mic.sroa.11.0.uglygep1232.sroa_idx.i = getelementptr inbounds i8, ptr %uglygep1232.i, i32 7
  %659 = ptrtoint ptr %mic.sroa.11.0.uglygep1232.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %659)
  store i8 %mic.sroa.11.0.copyload.i, ptr %mic.sroa.11.0.uglygep1232.sroa_idx.i, align 1
  br i1 %cmp641188.not.i, label %if.end204.i.for.end249.i_crit_edge, label %for.body228.lr.ph.i

if.end204.i.for.end249.i_crit_edge:               ; preds = %if.end204.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end249.i

for.body228.lr.ph.i:                              ; preds = %if.end204.i
  %umax1234.i = call i32 @llvm.umax.i32(i32 %div481.i, i32 1) #9
  br label %for.body228.i

for.body228.i:                                    ; preds = %construct_ctr_preload.exit893.i.for.body228.i_crit_edge, %for.body228.lr.ph.i
  %payload_index.61212.i = phi i32 [ %add63.i, %for.body228.lr.ph.i ], [ %769, %construct_ctr_preload.exit893.i.for.body228.i_crit_edge ]
  %i.21211.i = phi i32 [ 0, %for.body228.lr.ph.i ], [ %add231.i, %construct_ctr_preload.exit893.i.for.body228.i_crit_edge ]
  %add231.i = add nuw nsw i32 %i.21211.i, 1
  %660 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %660)
  store i8 0, ptr %37, align 1
  %661 = ptrtoint ptr %ctr_preload.i to i32
  call void @__asan_store1_noabort(i32 %661)
  store i8 1, ptr %ctr_preload.i, align 1
  br i1 %or.cond.i584.pre-phi.i, label %for.body228.i.if.end.i868.i_crit_edge, label %if.then.i865.i

for.body228.i.if.end.i868.i_crit_edge:            ; preds = %for.body228.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i868.i

if.then.i865.i:                                   ; preds = %for.body228.i
  call void @__sanitizer_cov_trace_pc() #11
  %662 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 30), align 1
  %663 = and i8 %662, 15
  %664 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %664)
  store i8 %663, ptr %37, align 1
  br label %if.end.i868.i

if.end.i868.i:                                    ; preds = %if.then.i865.i, %for.body228.i.if.end.i868.i_crit_edge
  br i1 %or.cond56.i.i, label %if.then9.i870.i, label %if.end.i868.i.construct_ctr_preload.exit893.i_crit_edge

if.end.i868.i.construct_ctr_preload.exit893.i_crit_edge: ; preds = %if.end.i868.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %construct_ctr_preload.exit893.i

if.then9.i870.i:                                  ; preds = %if.end.i868.i
  call void @__sanitizer_cov_trace_pc() #11
  %665 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 24), align 1
  %666 = and i8 %665, 15
  %667 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %667)
  store i8 %666, ptr %37, align 1
  br label %construct_ctr_preload.exit893.i

construct_ctr_preload.exit893.i:                  ; preds = %if.then9.i870.i, %if.end.i868.i.construct_ctr_preload.exit893.i_crit_edge
  %668 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 10), align 1
  %669 = ptrtoint ptr %38 to i32
  call void @__asan_store1_noabort(i32 %669)
  store i8 %668, ptr %38, align 1
  %670 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 11), align 1
  %671 = ptrtoint ptr %39 to i32
  call void @__asan_store1_noabort(i32 %671)
  store i8 %670, ptr %39, align 1
  %672 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 12), align 1
  %673 = ptrtoint ptr %40 to i32
  call void @__asan_store1_noabort(i32 %673)
  store i8 %672, ptr %40, align 1
  %674 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 13), align 1
  %675 = ptrtoint ptr %41 to i32
  call void @__asan_store1_noabort(i32 %675)
  store i8 %674, ptr %41, align 1
  %676 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 14), align 1
  %677 = ptrtoint ptr %42 to i32
  call void @__asan_store1_noabort(i32 %677)
  store i8 %676, ptr %42, align 1
  %678 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 15), align 1
  %679 = ptrtoint ptr %43 to i32
  call void @__asan_store1_noabort(i32 %679)
  store i8 %678, ptr %43, align 1
  %680 = ptrtoint ptr %44 to i32
  call void @__asan_store1_noabort(i32 %680)
  store i8 %338, ptr %44, align 1
  %681 = ptrtoint ptr %45 to i32
  call void @__asan_store1_noabort(i32 %681)
  store i8 %336, ptr %45, align 1
  %682 = ptrtoint ptr %46 to i32
  call void @__asan_store1_noabort(i32 %682)
  store i8 %334, ptr %46, align 1
  %683 = ptrtoint ptr %47 to i32
  call void @__asan_store1_noabort(i32 %683)
  store i8 %332, ptr %47, align 1
  %684 = ptrtoint ptr %48 to i32
  call void @__asan_store1_noabort(i32 %684)
  store i8 %330, ptr %48, align 1
  %685 = ptrtoint ptr %49 to i32
  call void @__asan_store1_noabort(i32 %685)
  store i8 %328, ptr %49, align 1
  %div.i888.udiv1301.i = lshr i32 %add231.i, 8
  %conv34.i889.i = trunc i32 %div.i888.udiv1301.i to i8
  %686 = ptrtoint ptr %50 to i32
  call void @__asan_store1_noabort(i32 %686)
  store i8 %conv34.i889.i, ptr %50, align 1
  %conv36.i891.i = trunc i32 %add231.i to i8
  %687 = ptrtoint ptr %51 to i32
  call void @__asan_store1_noabort(i32 %687)
  store i8 %conv36.i891.i, ptr %51, align 1
  call fastcc void @aes128k128d(ptr noundef %prwskey.0, ptr noundef nonnull %ctr_preload.i, ptr noundef nonnull %aes_out.i) #9
  %arrayidx235.i = getelementptr [2048 x i8], ptr @aes_decipher.message, i32 0, i32 %payload_index.61212.i
  %688 = ptrtoint ptr %aes_out.i to i32
  call void @__asan_load1_noabort(i32 %688)
  %689 = load i8, ptr %aes_out.i, align 1
  %690 = ptrtoint ptr %arrayidx235.i to i32
  call void @__asan_load1_noabort(i32 %690)
  %691 = load i8, ptr %arrayidx235.i, align 1
  %xor9.i894.i = xor i8 %691, %689
  %692 = ptrtoint ptr %chain_buffer.i to i32
  call void @__asan_store1_noabort(i32 %692)
  store i8 %xor9.i894.i, ptr %chain_buffer.i, align 8
  %693 = ptrtoint ptr %67 to i32
  call void @__asan_load1_noabort(i32 %693)
  %694 = load i8, ptr %67, align 1
  %arrayidx1.1.i896.i = getelementptr i8, ptr %arrayidx235.i, i32 1
  %695 = ptrtoint ptr %arrayidx1.1.i896.i to i32
  call void @__asan_load1_noabort(i32 %695)
  %696 = load i8, ptr %arrayidx1.1.i896.i, align 1
  %xor9.1.i897.i = xor i8 %696, %694
  %697 = ptrtoint ptr %52 to i32
  call void @__asan_store1_noabort(i32 %697)
  store i8 %xor9.1.i897.i, ptr %52, align 1
  %698 = ptrtoint ptr %68 to i32
  call void @__asan_load1_noabort(i32 %698)
  %699 = load i8, ptr %68, align 1
  %arrayidx1.2.i900.i = getelementptr i8, ptr %arrayidx235.i, i32 2
  %700 = ptrtoint ptr %arrayidx1.2.i900.i to i32
  call void @__asan_load1_noabort(i32 %700)
  %701 = load i8, ptr %arrayidx1.2.i900.i, align 1
  %xor9.2.i901.i = xor i8 %701, %699
  %702 = ptrtoint ptr %53 to i32
  call void @__asan_store1_noabort(i32 %702)
  store i8 %xor9.2.i901.i, ptr %53, align 2
  %703 = ptrtoint ptr %69 to i32
  call void @__asan_load1_noabort(i32 %703)
  %704 = load i8, ptr %69, align 1
  %arrayidx1.3.i904.i = getelementptr i8, ptr %arrayidx235.i, i32 3
  %705 = ptrtoint ptr %arrayidx1.3.i904.i to i32
  call void @__asan_load1_noabort(i32 %705)
  %706 = load i8, ptr %arrayidx1.3.i904.i, align 1
  %xor9.3.i905.i = xor i8 %706, %704
  %707 = ptrtoint ptr %54 to i32
  call void @__asan_store1_noabort(i32 %707)
  store i8 %xor9.3.i905.i, ptr %54, align 1
  %708 = ptrtoint ptr %70 to i32
  call void @__asan_load1_noabort(i32 %708)
  %709 = load i8, ptr %70, align 1
  %arrayidx1.4.i908.i = getelementptr i8, ptr %arrayidx235.i, i32 4
  %710 = ptrtoint ptr %arrayidx1.4.i908.i to i32
  call void @__asan_load1_noabort(i32 %710)
  %711 = load i8, ptr %arrayidx1.4.i908.i, align 1
  %xor9.4.i909.i = xor i8 %711, %709
  %712 = ptrtoint ptr %55 to i32
  call void @__asan_store1_noabort(i32 %712)
  store i8 %xor9.4.i909.i, ptr %55, align 4
  %713 = ptrtoint ptr %71 to i32
  call void @__asan_load1_noabort(i32 %713)
  %714 = load i8, ptr %71, align 1
  %arrayidx1.5.i912.i = getelementptr i8, ptr %arrayidx235.i, i32 5
  %715 = ptrtoint ptr %arrayidx1.5.i912.i to i32
  call void @__asan_load1_noabort(i32 %715)
  %716 = load i8, ptr %arrayidx1.5.i912.i, align 1
  %xor9.5.i913.i = xor i8 %716, %714
  %717 = ptrtoint ptr %56 to i32
  call void @__asan_store1_noabort(i32 %717)
  store i8 %xor9.5.i913.i, ptr %56, align 1
  %718 = ptrtoint ptr %72 to i32
  call void @__asan_load1_noabort(i32 %718)
  %719 = load i8, ptr %72, align 1
  %arrayidx1.6.i916.i = getelementptr i8, ptr %arrayidx235.i, i32 6
  %720 = ptrtoint ptr %arrayidx1.6.i916.i to i32
  call void @__asan_load1_noabort(i32 %720)
  %721 = load i8, ptr %arrayidx1.6.i916.i, align 1
  %xor9.6.i917.i = xor i8 %721, %719
  %722 = ptrtoint ptr %57 to i32
  call void @__asan_store1_noabort(i32 %722)
  store i8 %xor9.6.i917.i, ptr %57, align 2
  %723 = ptrtoint ptr %73 to i32
  call void @__asan_load1_noabort(i32 %723)
  %724 = load i8, ptr %73, align 1
  %arrayidx1.7.i920.i = getelementptr i8, ptr %arrayidx235.i, i32 7
  %725 = ptrtoint ptr %arrayidx1.7.i920.i to i32
  call void @__asan_load1_noabort(i32 %725)
  %726 = load i8, ptr %arrayidx1.7.i920.i, align 1
  %xor9.7.i921.i = xor i8 %726, %724
  %727 = ptrtoint ptr %58 to i32
  call void @__asan_store1_noabort(i32 %727)
  store i8 %xor9.7.i921.i, ptr %58, align 1
  %728 = ptrtoint ptr %74 to i32
  call void @__asan_load1_noabort(i32 %728)
  %729 = load i8, ptr %74, align 1
  %arrayidx1.8.i924.i = getelementptr i8, ptr %arrayidx235.i, i32 8
  %730 = ptrtoint ptr %arrayidx1.8.i924.i to i32
  call void @__asan_load1_noabort(i32 %730)
  %731 = load i8, ptr %arrayidx1.8.i924.i, align 1
  %xor9.8.i925.i = xor i8 %731, %729
  %732 = ptrtoint ptr %59 to i32
  call void @__asan_store1_noabort(i32 %732)
  store i8 %xor9.8.i925.i, ptr %59, align 8
  %733 = ptrtoint ptr %75 to i32
  call void @__asan_load1_noabort(i32 %733)
  %734 = load i8, ptr %75, align 1
  %arrayidx1.9.i928.i = getelementptr i8, ptr %arrayidx235.i, i32 9
  %735 = ptrtoint ptr %arrayidx1.9.i928.i to i32
  call void @__asan_load1_noabort(i32 %735)
  %736 = load i8, ptr %arrayidx1.9.i928.i, align 1
  %xor9.9.i929.i = xor i8 %736, %734
  %737 = ptrtoint ptr %60 to i32
  call void @__asan_store1_noabort(i32 %737)
  store i8 %xor9.9.i929.i, ptr %60, align 1
  %738 = ptrtoint ptr %76 to i32
  call void @__asan_load1_noabort(i32 %738)
  %739 = load i8, ptr %76, align 1
  %arrayidx1.10.i932.i = getelementptr i8, ptr %arrayidx235.i, i32 10
  %740 = ptrtoint ptr %arrayidx1.10.i932.i to i32
  call void @__asan_load1_noabort(i32 %740)
  %741 = load i8, ptr %arrayidx1.10.i932.i, align 1
  %xor9.10.i933.i = xor i8 %741, %739
  %742 = ptrtoint ptr %61 to i32
  call void @__asan_store1_noabort(i32 %742)
  store i8 %xor9.10.i933.i, ptr %61, align 2
  %743 = ptrtoint ptr %77 to i32
  call void @__asan_load1_noabort(i32 %743)
  %744 = load i8, ptr %77, align 1
  %arrayidx1.11.i936.i = getelementptr i8, ptr %arrayidx235.i, i32 11
  %745 = ptrtoint ptr %arrayidx1.11.i936.i to i32
  call void @__asan_load1_noabort(i32 %745)
  %746 = load i8, ptr %arrayidx1.11.i936.i, align 1
  %xor9.11.i937.i = xor i8 %746, %744
  %747 = ptrtoint ptr %62 to i32
  call void @__asan_store1_noabort(i32 %747)
  store i8 %xor9.11.i937.i, ptr %62, align 1
  %748 = ptrtoint ptr %78 to i32
  call void @__asan_load1_noabort(i32 %748)
  %749 = load i8, ptr %78, align 1
  %arrayidx1.12.i940.i = getelementptr i8, ptr %arrayidx235.i, i32 12
  %750 = ptrtoint ptr %arrayidx1.12.i940.i to i32
  call void @__asan_load1_noabort(i32 %750)
  %751 = load i8, ptr %arrayidx1.12.i940.i, align 1
  %xor9.12.i941.i = xor i8 %751, %749
  %752 = ptrtoint ptr %63 to i32
  call void @__asan_store1_noabort(i32 %752)
  store i8 %xor9.12.i941.i, ptr %63, align 4
  %753 = ptrtoint ptr %79 to i32
  call void @__asan_load1_noabort(i32 %753)
  %754 = load i8, ptr %79, align 1
  %arrayidx1.13.i944.i = getelementptr i8, ptr %arrayidx235.i, i32 13
  %755 = ptrtoint ptr %arrayidx1.13.i944.i to i32
  call void @__asan_load1_noabort(i32 %755)
  %756 = load i8, ptr %arrayidx1.13.i944.i, align 1
  %xor9.13.i945.i = xor i8 %756, %754
  %757 = ptrtoint ptr %64 to i32
  call void @__asan_store1_noabort(i32 %757)
  store i8 %xor9.13.i945.i, ptr %64, align 1
  %758 = ptrtoint ptr %80 to i32
  call void @__asan_load1_noabort(i32 %758)
  %759 = load i8, ptr %80, align 1
  %arrayidx1.14.i948.i = getelementptr i8, ptr %arrayidx235.i, i32 14
  %760 = ptrtoint ptr %arrayidx1.14.i948.i to i32
  call void @__asan_load1_noabort(i32 %760)
  %761 = load i8, ptr %arrayidx1.14.i948.i, align 1
  %xor9.14.i949.i = xor i8 %761, %759
  %762 = ptrtoint ptr %65 to i32
  call void @__asan_store1_noabort(i32 %762)
  store i8 %xor9.14.i949.i, ptr %65, align 2
  %763 = ptrtoint ptr %81 to i32
  call void @__asan_load1_noabort(i32 %763)
  %764 = load i8, ptr %81, align 1
  %arrayidx1.15.i952.i = getelementptr i8, ptr %arrayidx235.i, i32 15
  %765 = ptrtoint ptr %arrayidx1.15.i952.i to i32
  call void @__asan_load1_noabort(i32 %765)
  %766 = load i8, ptr %arrayidx1.15.i952.i, align 1
  %xor9.15.i953.i = xor i8 %766, %764
  %767 = ptrtoint ptr %66 to i32
  call void @__asan_store1_noabort(i32 %767)
  store i8 %xor9.15.i953.i, ptr %66, align 1
  %768 = call ptr @memcpy(ptr %arrayidx235.i, ptr %chain_buffer.i, i32 16)
  %769 = add i32 %payload_index.61212.i, 16
  %exitcond1235.not.i = icmp eq i32 %add231.i, %umax1234.i
  br i1 %exitcond1235.not.i, label %construct_ctr_preload.exit893.i.for.end249.i_crit_edge, label %construct_ctr_preload.exit893.i.for.body228.i_crit_edge

construct_ctr_preload.exit893.i.for.body228.i_crit_edge: ; preds = %construct_ctr_preload.exit893.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body228.i

construct_ctr_preload.exit893.i.for.end249.i_crit_edge: ; preds = %construct_ctr_preload.exit893.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end249.i

for.end249.i:                                     ; preds = %construct_ctr_preload.exit893.i.for.end249.i_crit_edge, %if.end204.i.for.end249.i_crit_edge
  %payload_index.6.lcssa.i = phi i32 [ %add63.i, %if.end204.i.for.end249.i_crit_edge ], [ %769, %construct_ctr_preload.exit893.i.for.end249.i_crit_edge ]
  br i1 %cmp84.not.i, label %for.end249.i.if.end289.i_crit_edge, label %if.then252.i

for.end249.i.if.end289.i_crit_edge:               ; preds = %for.end249.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end289.i

if.then252.i:                                     ; preds = %for.end249.i
  %add255.i = add nuw nsw i32 %div481.i, 1
  %770 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %770)
  store i8 0, ptr %37, align 1
  %771 = ptrtoint ptr %ctr_preload.i to i32
  call void @__asan_store1_noabort(i32 %771)
  store i8 1, ptr %ctr_preload.i, align 1
  br i1 %or.cond.i584.pre-phi.i, label %if.then252.i.if.end.i961.i_crit_edge, label %if.then.i958.i

if.then252.i.if.end.i961.i_crit_edge:             ; preds = %if.then252.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i961.i

if.then.i958.i:                                   ; preds = %if.then252.i
  call void @__sanitizer_cov_trace_pc() #11
  %772 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 30), align 1
  %773 = and i8 %772, 15
  %774 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %774)
  store i8 %773, ptr %37, align 1
  br label %if.end.i961.i

if.end.i961.i:                                    ; preds = %if.then.i958.i, %if.then252.i.if.end.i961.i_crit_edge
  br i1 %or.cond56.i.i, label %if.then9.i963.i, label %if.end.i961.i.for.body282.preheader.i_crit_edge

if.end.i961.i.for.body282.preheader.i_crit_edge:  ; preds = %if.end.i961.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body282.preheader.i

if.then9.i963.i:                                  ; preds = %if.end.i961.i
  call void @__sanitizer_cov_trace_pc() #11
  %775 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 24), align 1
  %776 = and i8 %775, 15
  %777 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %777)
  store i8 %776, ptr %37, align 1
  br label %for.body282.preheader.i

for.body282.preheader.i:                          ; preds = %if.then9.i963.i, %if.end.i961.i.for.body282.preheader.i_crit_edge
  %778 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 10), align 1
  %779 = ptrtoint ptr %38 to i32
  call void @__asan_store1_noabort(i32 %779)
  store i8 %778, ptr %38, align 1
  %780 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 11), align 1
  %781 = ptrtoint ptr %39 to i32
  call void @__asan_store1_noabort(i32 %781)
  store i8 %780, ptr %39, align 1
  %782 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 12), align 1
  %783 = ptrtoint ptr %40 to i32
  call void @__asan_store1_noabort(i32 %783)
  store i8 %782, ptr %40, align 1
  %784 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 13), align 1
  %785 = ptrtoint ptr %41 to i32
  call void @__asan_store1_noabort(i32 %785)
  store i8 %784, ptr %41, align 1
  %786 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 14), align 1
  %787 = ptrtoint ptr %42 to i32
  call void @__asan_store1_noabort(i32 %787)
  store i8 %786, ptr %42, align 1
  %788 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 15), align 1
  %789 = ptrtoint ptr %43 to i32
  call void @__asan_store1_noabort(i32 %789)
  store i8 %788, ptr %43, align 1
  %790 = ptrtoint ptr %44 to i32
  call void @__asan_store1_noabort(i32 %790)
  store i8 %338, ptr %44, align 1
  %791 = ptrtoint ptr %45 to i32
  call void @__asan_store1_noabort(i32 %791)
  store i8 %336, ptr %45, align 1
  %792 = ptrtoint ptr %46 to i32
  call void @__asan_store1_noabort(i32 %792)
  store i8 %334, ptr %46, align 1
  %793 = ptrtoint ptr %47 to i32
  call void @__asan_store1_noabort(i32 %793)
  store i8 %332, ptr %47, align 1
  %794 = ptrtoint ptr %48 to i32
  call void @__asan_store1_noabort(i32 %794)
  store i8 %330, ptr %48, align 1
  %795 = ptrtoint ptr %49 to i32
  call void @__asan_store1_noabort(i32 %795)
  store i8 %328, ptr %49, align 1
  %div.i9811185.i = lshr i32 %add255.i, 8
  %conv34.i982.i = trunc i32 %div.i9811185.i to i8
  %796 = ptrtoint ptr %50 to i32
  call void @__asan_store1_noabort(i32 %796)
  store i8 %conv34.i982.i, ptr %50, align 1
  %conv36.i984.i = trunc i32 %add255.i to i8
  %797 = ptrtoint ptr %51 to i32
  call void @__asan_store1_noabort(i32 %797)
  store i8 %conv36.i984.i, ptr %51, align 1
  %uglygep1236.i = getelementptr i8, ptr @aes_decipher.message, i32 %payload_index.6.lcssa.i
  %798 = sub nuw nsw i32 16, %rem.i
  %799 = getelementptr i8, ptr %padded_buffer.i, i32 %rem.i
  %800 = call ptr @memset(ptr %799, i32 0, i32 %798)
  %801 = call ptr @memcpy(ptr %padded_buffer.i, ptr %uglygep1236.i, i32 %rem.i)
  call fastcc void @aes128k128d(ptr noundef %prwskey.0, ptr noundef nonnull %ctr_preload.i, ptr noundef nonnull %aes_out.i) #9
  %802 = ptrtoint ptr %aes_out.i to i32
  call void @__asan_load1_noabort(i32 %802)
  %803 = load i8, ptr %aes_out.i, align 1
  %804 = ptrtoint ptr %padded_buffer.i to i32
  call void @__asan_load1_noabort(i32 %804)
  %padded_buffer.0.1252.i = load i8, ptr %padded_buffer.i, align 8
  %xor9.i987.i = xor i8 %padded_buffer.0.1252.i, %803
  %805 = ptrtoint ptr %chain_buffer.i to i32
  call void @__asan_store1_noabort(i32 %805)
  store i8 %xor9.i987.i, ptr %chain_buffer.i, align 8
  %806 = ptrtoint ptr %67 to i32
  call void @__asan_load1_noabort(i32 %806)
  %807 = load i8, ptr %67, align 1
  %808 = ptrtoint ptr %padded_buffer.1..sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %808)
  %padded_buffer.1.1255.i = load i8, ptr %padded_buffer.1..sroa_idx.i, align 1
  %xor9.1.i990.i = xor i8 %padded_buffer.1.1255.i, %807
  %809 = ptrtoint ptr %52 to i32
  call void @__asan_store1_noabort(i32 %809)
  store i8 %xor9.1.i990.i, ptr %52, align 1
  %810 = ptrtoint ptr %68 to i32
  call void @__asan_load1_noabort(i32 %810)
  %811 = load i8, ptr %68, align 1
  %812 = ptrtoint ptr %padded_buffer.2..sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %812)
  %padded_buffer.2.1258.i = load i8, ptr %padded_buffer.2..sroa_idx.i, align 2
  %xor9.2.i994.i = xor i8 %padded_buffer.2.1258.i, %811
  %813 = ptrtoint ptr %53 to i32
  call void @__asan_store1_noabort(i32 %813)
  store i8 %xor9.2.i994.i, ptr %53, align 2
  %814 = ptrtoint ptr %69 to i32
  call void @__asan_load1_noabort(i32 %814)
  %815 = load i8, ptr %69, align 1
  %816 = ptrtoint ptr %padded_buffer.3..sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %816)
  %padded_buffer.3.1261.i = load i8, ptr %padded_buffer.3..sroa_idx.i, align 1
  %xor9.3.i998.i = xor i8 %padded_buffer.3.1261.i, %815
  %817 = ptrtoint ptr %54 to i32
  call void @__asan_store1_noabort(i32 %817)
  store i8 %xor9.3.i998.i, ptr %54, align 1
  %818 = ptrtoint ptr %70 to i32
  call void @__asan_load1_noabort(i32 %818)
  %819 = load i8, ptr %70, align 1
  %820 = ptrtoint ptr %padded_buffer.4..sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %820)
  %padded_buffer.4.1264.i = load i8, ptr %padded_buffer.4..sroa_idx.i, align 4
  %xor9.4.i1002.i = xor i8 %padded_buffer.4.1264.i, %819
  %821 = ptrtoint ptr %55 to i32
  call void @__asan_store1_noabort(i32 %821)
  store i8 %xor9.4.i1002.i, ptr %55, align 4
  %822 = ptrtoint ptr %71 to i32
  call void @__asan_load1_noabort(i32 %822)
  %823 = load i8, ptr %71, align 1
  %824 = ptrtoint ptr %padded_buffer.5..sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %824)
  %padded_buffer.5.1267.i = load i8, ptr %padded_buffer.5..sroa_idx.i, align 1
  %xor9.5.i1006.i = xor i8 %padded_buffer.5.1267.i, %823
  %825 = ptrtoint ptr %56 to i32
  call void @__asan_store1_noabort(i32 %825)
  store i8 %xor9.5.i1006.i, ptr %56, align 1
  %826 = ptrtoint ptr %72 to i32
  call void @__asan_load1_noabort(i32 %826)
  %827 = load i8, ptr %72, align 1
  %828 = ptrtoint ptr %padded_buffer.6..sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %828)
  %padded_buffer.6.1270.i = load i8, ptr %padded_buffer.6..sroa_idx.i, align 2
  %xor9.6.i1010.i = xor i8 %padded_buffer.6.1270.i, %827
  %829 = ptrtoint ptr %57 to i32
  call void @__asan_store1_noabort(i32 %829)
  store i8 %xor9.6.i1010.i, ptr %57, align 2
  %830 = ptrtoint ptr %73 to i32
  call void @__asan_load1_noabort(i32 %830)
  %831 = load i8, ptr %73, align 1
  %832 = ptrtoint ptr %padded_buffer.7..sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %832)
  %padded_buffer.7.1273.i = load i8, ptr %padded_buffer.7..sroa_idx.i, align 1
  %xor9.7.i1014.i = xor i8 %padded_buffer.7.1273.i, %831
  %833 = ptrtoint ptr %58 to i32
  call void @__asan_store1_noabort(i32 %833)
  store i8 %xor9.7.i1014.i, ptr %58, align 1
  %834 = ptrtoint ptr %74 to i32
  call void @__asan_load1_noabort(i32 %834)
  %835 = load i8, ptr %74, align 1
  %836 = ptrtoint ptr %padded_buffer.8..sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %836)
  %padded_buffer.8.1276.i = load i8, ptr %padded_buffer.8..sroa_idx.i, align 8
  %xor9.8.i1018.i = xor i8 %padded_buffer.8.1276.i, %835
  %837 = ptrtoint ptr %59 to i32
  call void @__asan_store1_noabort(i32 %837)
  store i8 %xor9.8.i1018.i, ptr %59, align 8
  %838 = ptrtoint ptr %75 to i32
  call void @__asan_load1_noabort(i32 %838)
  %839 = load i8, ptr %75, align 1
  %840 = ptrtoint ptr %padded_buffer.9..sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %840)
  %padded_buffer.9.1279.i = load i8, ptr %padded_buffer.9..sroa_idx.i, align 1
  %xor9.9.i1022.i = xor i8 %padded_buffer.9.1279.i, %839
  %841 = ptrtoint ptr %60 to i32
  call void @__asan_store1_noabort(i32 %841)
  store i8 %xor9.9.i1022.i, ptr %60, align 1
  %842 = ptrtoint ptr %76 to i32
  call void @__asan_load1_noabort(i32 %842)
  %843 = load i8, ptr %76, align 1
  %844 = ptrtoint ptr %padded_buffer.10..sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %844)
  %padded_buffer.10.1282.i = load i8, ptr %padded_buffer.10..sroa_idx.i, align 2
  %xor9.10.i1026.i = xor i8 %padded_buffer.10.1282.i, %843
  %845 = ptrtoint ptr %61 to i32
  call void @__asan_store1_noabort(i32 %845)
  store i8 %xor9.10.i1026.i, ptr %61, align 2
  %846 = ptrtoint ptr %77 to i32
  call void @__asan_load1_noabort(i32 %846)
  %847 = load i8, ptr %77, align 1
  %848 = ptrtoint ptr %padded_buffer.11..sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %848)
  %padded_buffer.11.1285.i = load i8, ptr %padded_buffer.11..sroa_idx.i, align 1
  %xor9.11.i1030.i = xor i8 %padded_buffer.11.1285.i, %847
  %849 = ptrtoint ptr %62 to i32
  call void @__asan_store1_noabort(i32 %849)
  store i8 %xor9.11.i1030.i, ptr %62, align 1
  %850 = ptrtoint ptr %78 to i32
  call void @__asan_load1_noabort(i32 %850)
  %851 = load i8, ptr %78, align 1
  %852 = ptrtoint ptr %padded_buffer.12..sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %852)
  %padded_buffer.12.1288.i = load i8, ptr %padded_buffer.12..sroa_idx.i, align 4
  %xor9.12.i1034.i = xor i8 %padded_buffer.12.1288.i, %851
  %853 = ptrtoint ptr %63 to i32
  call void @__asan_store1_noabort(i32 %853)
  store i8 %xor9.12.i1034.i, ptr %63, align 4
  %854 = ptrtoint ptr %79 to i32
  call void @__asan_load1_noabort(i32 %854)
  %855 = load i8, ptr %79, align 1
  %856 = ptrtoint ptr %padded_buffer.13..sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %856)
  %padded_buffer.13.1291.i = load i8, ptr %padded_buffer.13..sroa_idx.i, align 1
  %xor9.13.i1038.i = xor i8 %padded_buffer.13.1291.i, %855
  %857 = ptrtoint ptr %64 to i32
  call void @__asan_store1_noabort(i32 %857)
  store i8 %xor9.13.i1038.i, ptr %64, align 1
  %858 = ptrtoint ptr %80 to i32
  call void @__asan_load1_noabort(i32 %858)
  %859 = load i8, ptr %80, align 1
  %860 = ptrtoint ptr %padded_buffer.14..sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %860)
  %padded_buffer.14.1294.i = load i8, ptr %padded_buffer.14..sroa_idx.i, align 2
  %xor9.14.i1042.i = xor i8 %padded_buffer.14.1294.i, %859
  %861 = ptrtoint ptr %65 to i32
  call void @__asan_store1_noabort(i32 %861)
  store i8 %xor9.14.i1042.i, ptr %65, align 2
  %862 = ptrtoint ptr %81 to i32
  call void @__asan_load1_noabort(i32 %862)
  %863 = load i8, ptr %81, align 1
  %864 = ptrtoint ptr %padded_buffer.15..sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %864)
  %padded_buffer.15.1297.i = load i8, ptr %padded_buffer.15..sroa_idx.i, align 1
  %xor9.15.i1046.i = xor i8 %padded_buffer.15.1297.i, %863
  %865 = ptrtoint ptr %66 to i32
  call void @__asan_store1_noabort(i32 %865)
  store i8 %xor9.15.i1046.i, ptr %66, align 1
  %866 = call ptr @memcpy(ptr %uglygep1236.i, ptr %chain_buffer.i, i32 %rem.i)
  %867 = add i32 %payload_index.6.lcssa.i, %rem.i
  br label %if.end289.i

if.end289.i:                                      ; preds = %for.body282.preheader.i, %for.end249.i.if.end289.i_crit_edge
  %payload_index.9.i = phi i32 [ %payload_index.6.lcssa.i, %for.end249.i.if.end289.i_crit_edge ], [ %867, %for.body282.preheader.i ]
  %868 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %868)
  store i8 0, ptr %37, align 1
  %869 = ptrtoint ptr %ctr_preload.i to i32
  call void @__asan_store1_noabort(i32 %869)
  store i8 1, ptr %ctr_preload.i, align 1
  br i1 %or.cond.i584.pre-phi.i, label %if.end289.i.if.end.i1054.i_crit_edge, label %if.then.i1051.i

if.end289.i.if.end.i1054.i_crit_edge:             ; preds = %if.end289.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i1054.i

if.then.i1051.i:                                  ; preds = %if.end289.i
  call void @__sanitizer_cov_trace_pc() #11
  %870 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 30), align 1
  %871 = and i8 %870, 15
  %872 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %872)
  store i8 %871, ptr %37, align 1
  br label %if.end.i1054.i

if.end.i1054.i:                                   ; preds = %if.then.i1051.i, %if.end289.i.if.end.i1054.i_crit_edge
  br i1 %or.cond56.i.i, label %if.then9.i1056.i, label %if.end.i1054.i.aes_decipher.exit_crit_edge

if.end.i1054.i.aes_decipher.exit_crit_edge:       ; preds = %if.end.i1054.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %aes_decipher.exit

if.then9.i1056.i:                                 ; preds = %if.end.i1054.i
  call void @__sanitizer_cov_trace_pc() #11
  %873 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 24), align 1
  %874 = and i8 %873, 15
  %875 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %875)
  store i8 %874, ptr %37, align 1
  br label %aes_decipher.exit

aes_decipher.exit:                                ; preds = %if.then9.i1056.i, %if.end.i1054.i.aes_decipher.exit_crit_edge
  %876 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 10), align 1
  %877 = ptrtoint ptr %38 to i32
  call void @__asan_store1_noabort(i32 %877)
  store i8 %876, ptr %38, align 1
  %878 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 11), align 1
  %879 = ptrtoint ptr %39 to i32
  call void @__asan_store1_noabort(i32 %879)
  store i8 %878, ptr %39, align 1
  %880 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 12), align 1
  %881 = ptrtoint ptr %40 to i32
  call void @__asan_store1_noabort(i32 %881)
  store i8 %880, ptr %40, align 1
  %882 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 13), align 1
  %883 = ptrtoint ptr %41 to i32
  call void @__asan_store1_noabort(i32 %883)
  store i8 %882, ptr %41, align 1
  %884 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 14), align 1
  %885 = ptrtoint ptr %42 to i32
  call void @__asan_store1_noabort(i32 %885)
  store i8 %884, ptr %42, align 1
  %886 = load i8, ptr getelementptr inbounds ([2048 x i8], ptr @aes_decipher.message, i32 0, i32 15), align 1
  %887 = ptrtoint ptr %43 to i32
  call void @__asan_store1_noabort(i32 %887)
  store i8 %886, ptr %43, align 1
  %888 = ptrtoint ptr %44 to i32
  call void @__asan_store1_noabort(i32 %888)
  store i8 %338, ptr %44, align 1
  %889 = ptrtoint ptr %45 to i32
  call void @__asan_store1_noabort(i32 %889)
  store i8 %336, ptr %45, align 1
  %890 = ptrtoint ptr %46 to i32
  call void @__asan_store1_noabort(i32 %890)
  store i8 %334, ptr %46, align 1
  %891 = ptrtoint ptr %47 to i32
  call void @__asan_store1_noabort(i32 %891)
  store i8 %332, ptr %47, align 1
  %892 = ptrtoint ptr %48 to i32
  call void @__asan_store1_noabort(i32 %892)
  store i8 %330, ptr %48, align 1
  %893 = ptrtoint ptr %49 to i32
  call void @__asan_store1_noabort(i32 %893)
  store i8 %328, ptr %49, align 1
  %894 = ptrtoint ptr %50 to i32
  call void @__asan_store1_noabort(i32 %894)
  store i8 0, ptr %50, align 1
  %895 = ptrtoint ptr %51 to i32
  call void @__asan_store1_noabort(i32 %895)
  store i8 0, ptr %51, align 1
  %uglygep1241.i = getelementptr i8, ptr @aes_decipher.message, i32 %add124.i
  %896 = ptrtoint ptr %uglygep1241.i to i32
  call void @__asan_loadN_noabort(i32 %896, i32 8)
  %897 = load i64, ptr %uglygep1241.i, align 1
  %898 = ptrtoint ptr %padded_buffer.i to i32
  call void @__asan_store8_noabort(i32 %898)
  store i64 %897, ptr %padded_buffer.i, align 8
  call fastcc void @aes128k128d(ptr noundef %prwskey.0, ptr noundef nonnull %ctr_preload.i, ptr noundef nonnull %aes_out.i) #9
  %899 = ptrtoint ptr %aes_out.i to i32
  call void @__asan_load1_noabort(i32 %899)
  %900 = load i8, ptr %aes_out.i, align 1
  %901 = lshr i64 %897, 56
  %902 = trunc i64 %901 to i8
  %xor9.i1077.i = xor i8 %900, %902
  %903 = ptrtoint ptr %chain_buffer.i to i32
  call void @__asan_store1_noabort(i32 %903)
  store i8 %xor9.i1077.i, ptr %chain_buffer.i, align 8
  %904 = ptrtoint ptr %67 to i32
  call void @__asan_load1_noabort(i32 %904)
  %905 = load i8, ptr %67, align 1
  %906 = lshr i64 %897, 48
  %907 = trunc i64 %906 to i8
  %xor9.1.i1080.i = xor i8 %905, %907
  %908 = ptrtoint ptr %52 to i32
  call void @__asan_store1_noabort(i32 %908)
  store i8 %xor9.1.i1080.i, ptr %52, align 1
  %909 = ptrtoint ptr %68 to i32
  call void @__asan_load1_noabort(i32 %909)
  %910 = load i8, ptr %68, align 1
  %911 = lshr i64 %897, 40
  %912 = trunc i64 %911 to i8
  %xor9.2.i1084.i = xor i8 %910, %912
  %913 = ptrtoint ptr %53 to i32
  call void @__asan_store1_noabort(i32 %913)
  store i8 %xor9.2.i1084.i, ptr %53, align 2
  %914 = ptrtoint ptr %69 to i32
  call void @__asan_load1_noabort(i32 %914)
  %915 = load i8, ptr %69, align 1
  %916 = lshr i64 %897, 32
  %917 = trunc i64 %916 to i8
  %xor9.3.i1088.i = xor i8 %915, %917
  %918 = ptrtoint ptr %54 to i32
  call void @__asan_store1_noabort(i32 %918)
  store i8 %xor9.3.i1088.i, ptr %54, align 1
  %919 = ptrtoint ptr %70 to i32
  call void @__asan_load1_noabort(i32 %919)
  %920 = load i8, ptr %70, align 1
  %921 = lshr i64 %897, 24
  %922 = trunc i64 %921 to i8
  %xor9.4.i1092.i = xor i8 %920, %922
  %923 = ptrtoint ptr %55 to i32
  call void @__asan_store1_noabort(i32 %923)
  store i8 %xor9.4.i1092.i, ptr %55, align 4
  %924 = ptrtoint ptr %71 to i32
  call void @__asan_load1_noabort(i32 %924)
  %925 = load i8, ptr %71, align 1
  %926 = lshr i64 %897, 16
  %927 = trunc i64 %926 to i8
  %xor9.5.i1096.i = xor i8 %925, %927
  %928 = ptrtoint ptr %56 to i32
  call void @__asan_store1_noabort(i32 %928)
  store i8 %xor9.5.i1096.i, ptr %56, align 1
  %929 = ptrtoint ptr %72 to i32
  call void @__asan_load1_noabort(i32 %929)
  %930 = load i8, ptr %72, align 1
  %931 = lshr i64 %897, 8
  %932 = trunc i64 %931 to i8
  %xor9.6.i1100.i = xor i8 %930, %932
  %933 = ptrtoint ptr %57 to i32
  call void @__asan_store1_noabort(i32 %933)
  store i8 %xor9.6.i1100.i, ptr %57, align 2
  %934 = ptrtoint ptr %73 to i32
  call void @__asan_load1_noabort(i32 %934)
  %935 = load i8, ptr %73, align 1
  %936 = trunc i64 %897 to i8
  %xor9.7.i1104.i = xor i8 %935, %936
  %937 = ptrtoint ptr %58 to i32
  call void @__asan_store1_noabort(i32 %937)
  store i8 %xor9.7.i1104.i, ptr %58, align 1
  %uglygep1242.i = getelementptr i8, ptr @aes_decipher.message, i32 %payload_index.9.i
  %938 = load i64, ptr %chain_buffer.i, align 8
  %939 = ptrtoint ptr %uglygep1242.i to i32
  call void @__asan_storeN_noabort(i32 %939, i32 8)
  store i64 %938, ptr %uglygep1242.i, align 1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %padded_buffer.i) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %aes_out.i) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %chain_buffer.i) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ctr_preload.i) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %mic_iv.i) #9
  br label %cleanup

cleanup:                                          ; preds = %aes_decipher.exit, %if.then3.cleanup_crit_edge, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @r8712_use_tkipkey_handler(ptr nocapture noundef writeonly %t) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %busetkipkey = getelementptr i8, ptr %t, i32 -3
  %0 = ptrtoint ptr %busetkipkey to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %busetkipkey, align 1
  ret void
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @aes128k128d(ptr nocapture noundef readonly %key, ptr nocapture noundef readonly %data, ptr noundef %ciphertext) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %key to i32
  call void @__asan_load1_noabort(i32 %0)
  %round_key.sroa.0.0.copyload = load i8, ptr %key, align 1
  %round_key.sroa.7.0.key.sroa_idx = getelementptr inbounds i8, ptr %key, i32 1
  %1 = ptrtoint ptr %round_key.sroa.7.0.key.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %1)
  %round_key.sroa.7.0.copyload = load i8, ptr %round_key.sroa.7.0.key.sroa_idx, align 1
  %round_key.sroa.11.0.key.sroa_idx = getelementptr inbounds i8, ptr %key, i32 2
  %2 = ptrtoint ptr %round_key.sroa.11.0.key.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %2)
  %round_key.sroa.11.0.copyload = load i8, ptr %round_key.sroa.11.0.key.sroa_idx, align 1
  %round_key.sroa.15.0.key.sroa_idx = getelementptr inbounds i8, ptr %key, i32 3
  %3 = ptrtoint ptr %round_key.sroa.15.0.key.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %3)
  %round_key.sroa.15.0.copyload = load i8, ptr %round_key.sroa.15.0.key.sroa_idx, align 1
  %round_key.sroa.19.0.key.sroa_idx = getelementptr inbounds i8, ptr %key, i32 4
  %4 = ptrtoint ptr %round_key.sroa.19.0.key.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %4)
  %round_key.sroa.19.0.copyload = load i8, ptr %round_key.sroa.19.0.key.sroa_idx, align 1
  %round_key.sroa.23.0.key.sroa_idx = getelementptr inbounds i8, ptr %key, i32 5
  %5 = ptrtoint ptr %round_key.sroa.23.0.key.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %5)
  %round_key.sroa.23.0.copyload = load i8, ptr %round_key.sroa.23.0.key.sroa_idx, align 1
  %round_key.sroa.27.0.key.sroa_idx = getelementptr inbounds i8, ptr %key, i32 6
  %6 = ptrtoint ptr %round_key.sroa.27.0.key.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %6)
  %round_key.sroa.27.0.copyload = load i8, ptr %round_key.sroa.27.0.key.sroa_idx, align 1
  %round_key.sroa.31.0.key.sroa_idx = getelementptr inbounds i8, ptr %key, i32 7
  %7 = ptrtoint ptr %round_key.sroa.31.0.key.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %7)
  %round_key.sroa.31.0.copyload = load i8, ptr %round_key.sroa.31.0.key.sroa_idx, align 1
  %round_key.sroa.35.0.key.sroa_idx = getelementptr inbounds i8, ptr %key, i32 8
  %8 = ptrtoint ptr %round_key.sroa.35.0.key.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %8)
  %round_key.sroa.35.0.copyload = load i8, ptr %round_key.sroa.35.0.key.sroa_idx, align 1
  %round_key.sroa.39.0.key.sroa_idx = getelementptr inbounds i8, ptr %key, i32 9
  %9 = ptrtoint ptr %round_key.sroa.39.0.key.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %9)
  %round_key.sroa.39.0.copyload = load i8, ptr %round_key.sroa.39.0.key.sroa_idx, align 1
  %round_key.sroa.43.0.key.sroa_idx = getelementptr inbounds i8, ptr %key, i32 10
  %10 = ptrtoint ptr %round_key.sroa.43.0.key.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %10)
  %round_key.sroa.43.0.copyload = load i8, ptr %round_key.sroa.43.0.key.sroa_idx, align 1
  %round_key.sroa.47.0.key.sroa_idx = getelementptr inbounds i8, ptr %key, i32 11
  %11 = ptrtoint ptr %round_key.sroa.47.0.key.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %11)
  %round_key.sroa.47.0.copyload = load i8, ptr %round_key.sroa.47.0.key.sroa_idx, align 1
  %round_key.sroa.51.0.key.sroa_idx = getelementptr inbounds i8, ptr %key, i32 12
  %12 = ptrtoint ptr %round_key.sroa.51.0.key.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %12)
  %round_key.sroa.51.0.copyload = load i8, ptr %round_key.sroa.51.0.key.sroa_idx, align 1
  %round_key.sroa.55.0.key.sroa_idx = getelementptr inbounds i8, ptr %key, i32 13
  %13 = ptrtoint ptr %round_key.sroa.55.0.key.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %13)
  %round_key.sroa.55.0.copyload = load i8, ptr %round_key.sroa.55.0.key.sroa_idx, align 1
  %round_key.sroa.59.0.key.sroa_idx = getelementptr inbounds i8, ptr %key, i32 14
  %14 = ptrtoint ptr %round_key.sroa.59.0.key.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %14)
  %round_key.sroa.59.0.copyload = load i8, ptr %round_key.sroa.59.0.key.sroa_idx, align 1
  %round_key.sroa.63.0.key.sroa_idx = getelementptr inbounds i8, ptr %key, i32 15
  %15 = ptrtoint ptr %round_key.sroa.63.0.key.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %15)
  %round_key.sroa.63.0.copyload = load i8, ptr %round_key.sroa.63.0.key.sroa_idx, align 1
  %arrayidx.1.i47 = getelementptr i8, ptr %ciphertext, i32 1
  %arrayidx.2.i49 = getelementptr i8, ptr %ciphertext, i32 2
  %arrayidx.3.i51 = getelementptr i8, ptr %ciphertext, i32 3
  %arrayidx.4.i53 = getelementptr i8, ptr %ciphertext, i32 4
  %arrayidx.5.i55 = getelementptr i8, ptr %ciphertext, i32 5
  %arrayidx.6.i57 = getelementptr i8, ptr %ciphertext, i32 6
  %arrayidx.7.i59 = getelementptr i8, ptr %ciphertext, i32 7
  %arrayidx.8.i61 = getelementptr i8, ptr %ciphertext, i32 8
  %arrayidx.9.i63 = getelementptr i8, ptr %ciphertext, i32 9
  %arrayidx.10.i65 = getelementptr i8, ptr %ciphertext, i32 10
  %arrayidx.11.i67 = getelementptr i8, ptr %ciphertext, i32 11
  %arrayidx.12.i69 = getelementptr i8, ptr %ciphertext, i32 12
  %arrayidx.13.i71 = getelementptr i8, ptr %ciphertext, i32 13
  %arrayidx.14.i73 = getelementptr i8, ptr %ciphertext, i32 14
  %arrayidx.15.i75 = getelementptr i8, ptr %ciphertext, i32 15
  %arrayidx1.1.i = getelementptr i8, ptr %data, i32 1
  %arrayidx1.2.i = getelementptr i8, ptr %data, i32 2
  %arrayidx1.3.i = getelementptr i8, ptr %data, i32 3
  %arrayidx1.4.i = getelementptr i8, ptr %data, i32 4
  %arrayidx1.5.i = getelementptr i8, ptr %data, i32 5
  %arrayidx1.6.i = getelementptr i8, ptr %data, i32 6
  %arrayidx1.7.i = getelementptr i8, ptr %data, i32 7
  %arrayidx1.8.i = getelementptr i8, ptr %data, i32 8
  %arrayidx1.9.i = getelementptr i8, ptr %data, i32 9
  %arrayidx1.10.i = getelementptr i8, ptr %data, i32 10
  %arrayidx1.11.i = getelementptr i8, ptr %data, i32 11
  %arrayidx1.12.i = getelementptr i8, ptr %data, i32 12
  %arrayidx1.13.i = getelementptr i8, ptr %data, i32 13
  %arrayidx1.14.i = getelementptr i8, ptr %data, i32 14
  %arrayidx1.15.i = getelementptr i8, ptr %data, i32 15
  br label %for.body4

for.body4:                                        ; preds = %for.inc30, %entry
  %16 = phi i8 [ %round_key.sroa.63.0.copyload, %entry ], [ %xor9.3.i87.i, %for.inc30 ]
  %17 = phi i8 [ %round_key.sroa.59.0.copyload, %entry ], [ %xor9.2.i83.i, %for.inc30 ]
  %18 = phi i8 [ %round_key.sroa.55.0.copyload, %entry ], [ %xor9.1.i79.i, %for.inc30 ]
  %19 = phi i8 [ %round_key.sroa.51.0.copyload, %entry ], [ %xor9.i76.i, %for.inc30 ]
  %20 = phi i8 [ %round_key.sroa.47.0.copyload, %entry ], [ %xor9.3.i74.i, %for.inc30 ]
  %21 = phi i8 [ %round_key.sroa.43.0.copyload, %entry ], [ %xor9.2.i70.i, %for.inc30 ]
  %22 = phi i8 [ %round_key.sroa.39.0.copyload, %entry ], [ %xor9.1.i66.i, %for.inc30 ]
  %23 = phi i8 [ %round_key.sroa.35.0.copyload, %entry ], [ %xor9.i63.i, %for.inc30 ]
  %24 = phi i8 [ %round_key.sroa.31.0.copyload, %entry ], [ %xor9.3.i61.i, %for.inc30 ]
  %25 = phi i8 [ %round_key.sroa.27.0.copyload, %entry ], [ %xor9.2.i57.i, %for.inc30 ]
  %26 = phi i8 [ %round_key.sroa.23.0.copyload, %entry ], [ %xor9.1.i53.i, %for.inc30 ]
  %27 = phi i8 [ %round_key.sroa.19.0.copyload, %entry ], [ %xor9.i50.i, %for.inc30 ]
  %28 = phi i8 [ %round_key.sroa.15.0.copyload, %entry ], [ %xor9.3.i.i.sink, %for.inc30 ]
  %29 = phi i8 [ %round_key.sroa.11.0.copyload, %entry ], [ %xor9.2.i.i.sink, %for.inc30 ]
  %30 = phi i8 [ %round_key.sroa.7.0.copyload, %entry ], [ %xor9.1.i.i.sink, %for.inc30 ]
  %xor43.i434519 = phi i8 [ %round_key.sroa.0.0.copyload, %entry ], [ %xor43.i.sink, %for.inc30 ]
  %round.0516 = phi i32 [ 0, %entry ], [ %inc31, %for.inc30 ]
  %31 = zext i32 %round.0516 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %round.0516, label %if.else14 [
    i32 0, label %if.then
    i32 10, label %for.end32
  ]

if.then:                                          ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %data, align 1
  %xor9.i = xor i8 %33, %xor43.i434519
  %34 = ptrtoint ptr %ciphertext to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %xor9.i, ptr %ciphertext, align 1
  %35 = ptrtoint ptr %arrayidx1.1.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx1.1.i, align 1
  %xor9.1.i = xor i8 %36, %30
  %37 = ptrtoint ptr %arrayidx.1.i47 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %xor9.1.i, ptr %arrayidx.1.i47, align 1
  %38 = ptrtoint ptr %arrayidx1.2.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx1.2.i, align 1
  %xor9.2.i = xor i8 %39, %29
  %40 = ptrtoint ptr %arrayidx.2.i49 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %xor9.2.i, ptr %arrayidx.2.i49, align 1
  %41 = ptrtoint ptr %arrayidx1.3.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx1.3.i, align 1
  %xor9.3.i = xor i8 %42, %28
  %43 = ptrtoint ptr %arrayidx.3.i51 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %xor9.3.i, ptr %arrayidx.3.i51, align 1
  %44 = ptrtoint ptr %arrayidx1.4.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx1.4.i, align 1
  %xor9.4.i = xor i8 %45, %27
  %46 = ptrtoint ptr %arrayidx.4.i53 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %xor9.4.i, ptr %arrayidx.4.i53, align 1
  %47 = ptrtoint ptr %arrayidx1.5.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx1.5.i, align 1
  %xor9.5.i = xor i8 %48, %26
  %49 = ptrtoint ptr %arrayidx.5.i55 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %xor9.5.i, ptr %arrayidx.5.i55, align 1
  %50 = ptrtoint ptr %arrayidx1.6.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx1.6.i, align 1
  %xor9.6.i = xor i8 %51, %25
  %52 = ptrtoint ptr %arrayidx.6.i57 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %xor9.6.i, ptr %arrayidx.6.i57, align 1
  %53 = ptrtoint ptr %arrayidx1.7.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx1.7.i, align 1
  %xor9.7.i = xor i8 %54, %24
  %55 = ptrtoint ptr %arrayidx.7.i59 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %xor9.7.i, ptr %arrayidx.7.i59, align 1
  %56 = ptrtoint ptr %arrayidx1.8.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx1.8.i, align 1
  %xor9.8.i = xor i8 %57, %23
  %58 = ptrtoint ptr %arrayidx.8.i61 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %xor9.8.i, ptr %arrayidx.8.i61, align 1
  %59 = ptrtoint ptr %arrayidx1.9.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx1.9.i, align 1
  %xor9.9.i = xor i8 %60, %22
  %61 = ptrtoint ptr %arrayidx.9.i63 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %xor9.9.i, ptr %arrayidx.9.i63, align 1
  %62 = ptrtoint ptr %arrayidx1.10.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx1.10.i, align 1
  %xor9.10.i = xor i8 %63, %21
  %64 = ptrtoint ptr %arrayidx.10.i65 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %xor9.10.i, ptr %arrayidx.10.i65, align 1
  %65 = ptrtoint ptr %arrayidx1.11.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx1.11.i, align 1
  %xor9.11.i = xor i8 %66, %20
  %67 = ptrtoint ptr %arrayidx.11.i67 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %xor9.11.i, ptr %arrayidx.11.i67, align 1
  %68 = ptrtoint ptr %arrayidx1.12.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx1.12.i, align 1
  %xor9.12.i = xor i8 %69, %19
  %70 = ptrtoint ptr %arrayidx.12.i69 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %xor9.12.i, ptr %arrayidx.12.i69, align 1
  %71 = ptrtoint ptr %arrayidx1.13.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx1.13.i, align 1
  %xor9.13.i = xor i8 %72, %18
  %73 = ptrtoint ptr %arrayidx.13.i71 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %xor9.13.i, ptr %arrayidx.13.i71, align 1
  %74 = ptrtoint ptr %arrayidx1.14.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx1.14.i, align 1
  %xor9.14.i = xor i8 %75, %17
  %76 = ptrtoint ptr %arrayidx.14.i73 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %xor9.14.i, ptr %arrayidx.14.i73, align 1
  %77 = ptrtoint ptr %arrayidx1.15.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx1.15.i, align 1
  %xor9.15.i = xor i8 %78, %16
  %79 = ptrtoint ptr %arrayidx.15.i75 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %xor9.15.i, ptr %arrayidx.15.i75, align 1
  %conv.i.i = zext i8 %18 to i32
  %arrayidx.i.i = getelementptr [256 x i8], ptr @sbox_table, i32 0, i32 %conv.i.i
  %80 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx.i.i, align 1
  %82 = xor i8 %xor43.i434519, %81
  %xor43.i = xor i8 %82, 1
  br label %for.inc30

if.else14:                                        ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #11
  %83 = ptrtoint ptr %ciphertext to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %ciphertext, align 1
  %conv.i.i143 = zext i8 %84 to i32
  %arrayidx.i.i144 = getelementptr [256 x i8], ptr @sbox_table, i32 0, i32 %conv.i.i143
  %85 = ptrtoint ptr %arrayidx.i.i144 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %arrayidx.i.i144, align 1
  %87 = ptrtoint ptr %arrayidx.1.i47 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %arrayidx.1.i47, align 1
  %conv.i.1.i146 = zext i8 %88 to i32
  %arrayidx.i.1.i147 = getelementptr [256 x i8], ptr @sbox_table, i32 0, i32 %conv.i.1.i146
  %89 = ptrtoint ptr %arrayidx.i.1.i147 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %arrayidx.i.1.i147, align 1
  %91 = ptrtoint ptr %arrayidx.2.i49 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %arrayidx.2.i49, align 1
  %conv.i.2.i150 = zext i8 %92 to i32
  %arrayidx.i.2.i151 = getelementptr [256 x i8], ptr @sbox_table, i32 0, i32 %conv.i.2.i150
  %93 = ptrtoint ptr %arrayidx.i.2.i151 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %arrayidx.i.2.i151, align 1
  %95 = ptrtoint ptr %arrayidx.3.i51 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %arrayidx.3.i51, align 1
  %conv.i.3.i154 = zext i8 %96 to i32
  %arrayidx.i.3.i155 = getelementptr [256 x i8], ptr @sbox_table, i32 0, i32 %conv.i.3.i154
  %97 = ptrtoint ptr %arrayidx.i.3.i155 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %arrayidx.i.3.i155, align 1
  %99 = ptrtoint ptr %arrayidx.4.i53 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %arrayidx.4.i53, align 1
  %conv.i.4.i158 = zext i8 %100 to i32
  %arrayidx.i.4.i159 = getelementptr [256 x i8], ptr @sbox_table, i32 0, i32 %conv.i.4.i158
  %101 = ptrtoint ptr %arrayidx.i.4.i159 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %arrayidx.i.4.i159, align 1
  %103 = ptrtoint ptr %arrayidx.5.i55 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %arrayidx.5.i55, align 1
  %conv.i.5.i162 = zext i8 %104 to i32
  %arrayidx.i.5.i163 = getelementptr [256 x i8], ptr @sbox_table, i32 0, i32 %conv.i.5.i162
  %105 = ptrtoint ptr %arrayidx.i.5.i163 to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %arrayidx.i.5.i163, align 1
  %107 = ptrtoint ptr %arrayidx.6.i57 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %arrayidx.6.i57, align 1
  %conv.i.6.i166 = zext i8 %108 to i32
  %arrayidx.i.6.i167 = getelementptr [256 x i8], ptr @sbox_table, i32 0, i32 %conv.i.6.i166
  %109 = ptrtoint ptr %arrayidx.i.6.i167 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %arrayidx.i.6.i167, align 1
  %111 = ptrtoint ptr %arrayidx.7.i59 to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %arrayidx.7.i59, align 1
  %conv.i.7.i170 = zext i8 %112 to i32
  %arrayidx.i.7.i171 = getelementptr [256 x i8], ptr @sbox_table, i32 0, i32 %conv.i.7.i170
  %113 = ptrtoint ptr %arrayidx.i.7.i171 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %arrayidx.i.7.i171, align 1
  %115 = ptrtoint ptr %arrayidx.8.i61 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %arrayidx.8.i61, align 1
  %conv.i.8.i174 = zext i8 %116 to i32
  %arrayidx.i.8.i175 = getelementptr [256 x i8], ptr @sbox_table, i32 0, i32 %conv.i.8.i174
  %117 = ptrtoint ptr %arrayidx.i.8.i175 to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %arrayidx.i.8.i175, align 1
  %119 = ptrtoint ptr %arrayidx.9.i63 to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %arrayidx.9.i63, align 1
  %conv.i.9.i178 = zext i8 %120 to i32
  %arrayidx.i.9.i179 = getelementptr [256 x i8], ptr @sbox_table, i32 0, i32 %conv.i.9.i178
  %121 = ptrtoint ptr %arrayidx.i.9.i179 to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %arrayidx.i.9.i179, align 1
  %123 = ptrtoint ptr %arrayidx.10.i65 to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %arrayidx.10.i65, align 1
  %conv.i.10.i182 = zext i8 %124 to i32
  %arrayidx.i.10.i183 = getelementptr [256 x i8], ptr @sbox_table, i32 0, i32 %conv.i.10.i182
  %125 = ptrtoint ptr %arrayidx.i.10.i183 to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %arrayidx.i.10.i183, align 1
  %127 = ptrtoint ptr %arrayidx.11.i67 to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %arrayidx.11.i67, align 1
  %conv.i.11.i186 = zext i8 %128 to i32
  %arrayidx.i.11.i187 = getelementptr [256 x i8], ptr @sbox_table, i32 0, i32 %conv.i.11.i186
  %129 = ptrtoint ptr %arrayidx.i.11.i187 to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %arrayidx.i.11.i187, align 1
  %131 = ptrtoint ptr %arrayidx.12.i69 to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %arrayidx.12.i69, align 1
  %conv.i.12.i190 = zext i8 %132 to i32
  %arrayidx.i.12.i191 = getelementptr [256 x i8], ptr @sbox_table, i32 0, i32 %conv.i.12.i190
  %133 = ptrtoint ptr %arrayidx.i.12.i191 to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %arrayidx.i.12.i191, align 1
  %135 = ptrtoint ptr %arrayidx.13.i71 to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %arrayidx.13.i71, align 1
  %conv.i.13.i194 = zext i8 %136 to i32
  %arrayidx.i.13.i195 = getelementptr [256 x i8], ptr @sbox_table, i32 0, i32 %conv.i.13.i194
  %137 = ptrtoint ptr %arrayidx.i.13.i195 to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %arrayidx.i.13.i195, align 1
  %139 = ptrtoint ptr %arrayidx.14.i73 to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %arrayidx.14.i73, align 1
  %conv.i.14.i198 = zext i8 %140 to i32
  %arrayidx.i.14.i199 = getelementptr [256 x i8], ptr @sbox_table, i32 0, i32 %conv.i.14.i198
  %141 = ptrtoint ptr %arrayidx.i.14.i199 to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %arrayidx.i.14.i199, align 1
  %143 = ptrtoint ptr %arrayidx.15.i75 to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %arrayidx.15.i75, align 1
  %conv.i.15.i202 = zext i8 %144 to i32
  %arrayidx.i.15.i203 = getelementptr [256 x i8], ptr @sbox_table, i32 0, i32 %conv.i.15.i202
  %145 = ptrtoint ptr %arrayidx.i.15.i203 to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %arrayidx.i.15.i203, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %cmp1.i = icmp slt i8 %86, 0
  %spec.select.i = select i1 %cmp1.i, i8 27, i8 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %106)
  %cmp1.1.i = icmp slt i8 %106, 0
  %add1b.sroa.6.0.i = select i1 %cmp1.1.i, i8 27, i8 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %126)
  %cmp1.2.i = icmp slt i8 %126, 0
  %add1b.sroa.10.0.i = select i1 %cmp1.2.i, i8 27, i8 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %146)
  %cmp1.3.i = icmp slt i8 %146, 0
  %add1b.sroa.14.0.i = select i1 %cmp1.3.i, i8 27, i8 0
  %shl.2.i = shl i8 %106, 1
  %shl.1.i = shl i8 %126, 1
  %shl.i = shl i8 %146, 1
  %shl64.i = shl i8 %86, 1
  %xor9.i.i238 = xor i8 %spec.select.i, %shl64.i
  %xor9.1.i.i239 = xor i8 %add1b.sroa.6.0.i, %shl.2.i
  %xor9.2.i.i240 = xor i8 %add1b.sroa.10.0.i, %shl.1.i
  %xor9.3.i.i241 = xor i8 %add1b.sroa.14.0.i, %shl.i
  %xor9.1.i121.i = xor i8 %146, %126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %102)
  %cmp1.i242 = icmp slt i8 %102, 0
  %spec.select.i243 = select i1 %cmp1.i242, i8 27, i8 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %122)
  %cmp1.1.i245 = icmp slt i8 %122, 0
  %add1b.sroa.6.0.i246 = select i1 %cmp1.1.i245, i8 27, i8 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %142)
  %cmp1.2.i248 = icmp slt i8 %142, 0
  %add1b.sroa.10.0.i249 = select i1 %cmp1.2.i248, i8 27, i8 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %cmp1.3.i251 = icmp slt i8 %98, 0
  %add1b.sroa.14.0.i252 = select i1 %cmp1.3.i251, i8 27, i8 0
  %shl.2.i253 = shl i8 %122, 1
  %shl.1.i254 = shl i8 %142, 1
  %shl.i255 = shl i8 %98, 1
  %shl64.i256 = shl i8 %102, 1
  %xor9.i.i257 = xor i8 %spec.select.i243, %shl64.i256
  %xor9.1.i.i258 = xor i8 %add1b.sroa.6.0.i246, %shl.2.i253
  %xor9.2.i.i259 = xor i8 %add1b.sroa.10.0.i249, %shl.1.i254
  %xor9.3.i.i260 = xor i8 %add1b.sroa.14.0.i252, %shl.i255
  %xor9.1.i121.i261 = xor i8 %142, %98
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %118)
  %cmp1.i279 = icmp slt i8 %118, 0
  %spec.select.i280 = select i1 %cmp1.i279, i8 27, i8 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %138)
  %cmp1.1.i282 = icmp slt i8 %138, 0
  %add1b.sroa.6.0.i283 = select i1 %cmp1.1.i282, i8 27, i8 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %cmp1.2.i285 = icmp slt i8 %94, 0
  %add1b.sroa.10.0.i286 = select i1 %cmp1.2.i285, i8 27, i8 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %114)
  %cmp1.3.i288 = icmp slt i8 %114, 0
  %add1b.sroa.14.0.i289 = select i1 %cmp1.3.i288, i8 27, i8 0
  %shl.2.i290 = shl i8 %138, 1
  %shl.1.i291 = shl i8 %94, 1
  %shl.i292 = shl i8 %114, 1
  %shl64.i293 = shl i8 %118, 1
  %xor9.i.i294 = xor i8 %spec.select.i280, %shl64.i293
  %xor9.1.i.i295 = xor i8 %add1b.sroa.6.0.i283, %shl.2.i290
  %xor9.2.i.i296 = xor i8 %add1b.sroa.10.0.i286, %shl.1.i291
  %xor9.3.i.i297 = xor i8 %add1b.sroa.14.0.i289, %shl.i292
  %xor9.1.i121.i298 = xor i8 %114, %94
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %134)
  %cmp1.i316 = icmp slt i8 %134, 0
  %spec.select.i317 = select i1 %cmp1.i316, i8 27, i8 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %cmp1.1.i319 = icmp slt i8 %90, 0
  %add1b.sroa.6.0.i320 = select i1 %cmp1.1.i319, i8 27, i8 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %110)
  %cmp1.2.i322 = icmp slt i8 %110, 0
  %add1b.sroa.10.0.i323 = select i1 %cmp1.2.i322, i8 27, i8 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %130)
  %cmp1.3.i325 = icmp slt i8 %130, 0
  %add1b.sroa.14.0.i326 = select i1 %cmp1.3.i325, i8 27, i8 0
  %shl.2.i327 = shl i8 %90, 1
  %shl.1.i328 = shl i8 %110, 1
  %shl.i329 = shl i8 %130, 1
  %shl64.i330 = shl i8 %134, 1
  %xor9.i.i331 = xor i8 %spec.select.i317, %shl64.i330
  %xor9.1.i.i332 = xor i8 %add1b.sroa.6.0.i320, %shl.2.i327
  %xor9.2.i.i333 = xor i8 %add1b.sroa.10.0.i323, %shl.1.i328
  %xor9.3.i.i334 = xor i8 %add1b.sroa.14.0.i326, %shl.i329
  %xor9.1.i121.i335 = xor i8 %130, %110
  %xor9.i131.i = xor i8 %106, %xor9.i.i238
  %xor9.i144.i = xor i8 %xor9.i131.i, %xor9.1.i.i239
  %xor9.i157.i = xor i8 %xor9.i144.i, %xor9.1.i121.i
  %xor9.i353 = xor i8 %xor9.i157.i, %xor43.i434519
  %147 = ptrtoint ptr %ciphertext to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 %xor9.i353, ptr %ciphertext, align 1
  %xor9.1.i134.i = xor i8 %xor9.2.i.i240, %86
  %xor9.1.i147.i = xor i8 %xor9.1.i134.i, %xor9.1.i.i239
  %xor9.1.i160.i = xor i8 %xor9.1.i147.i, %xor9.1.i121.i
  %xor9.1.i356 = xor i8 %xor9.1.i160.i, %30
  %148 = ptrtoint ptr %arrayidx.1.i47 to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 %xor9.1.i356, ptr %arrayidx.1.i47, align 1
  %xor9.3.i129.i = xor i8 %106, %86
  %xor9.2.i138.i = xor i8 %xor9.3.i129.i, %xor9.2.i.i240
  %xor9.2.i151.i = xor i8 %xor9.2.i138.i, %146
  %xor9.2.i164.i = xor i8 %xor9.2.i151.i, %xor9.3.i.i241
  %xor9.2.i360 = xor i8 %xor9.2.i164.i, %29
  %149 = ptrtoint ptr %arrayidx.2.i49 to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 %xor9.2.i360, ptr %arrayidx.2.i49, align 1
  %xor9.3.i142.i = xor i8 %xor9.i131.i, %86
  %xor9.3.i155.i = xor i8 %xor9.3.i142.i, %126
  %xor9.3.i168.i = xor i8 %xor9.3.i155.i, %xor9.3.i.i241
  %xor9.3.i364 = xor i8 %xor9.3.i168.i, %28
  %150 = ptrtoint ptr %arrayidx.3.i51 to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 %xor9.3.i364, ptr %arrayidx.3.i51, align 1
  %xor9.i131.i262 = xor i8 %122, %xor9.i.i257
  %xor9.i144.i263 = xor i8 %xor9.i131.i262, %xor9.1.i.i258
  %xor9.i157.i264 = xor i8 %xor9.i144.i263, %xor9.1.i121.i261
  %xor9.4.i368 = xor i8 %xor9.i157.i264, %27
  %151 = ptrtoint ptr %arrayidx.4.i53 to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 %xor9.4.i368, ptr %arrayidx.4.i53, align 1
  %xor9.1.i134.i265 = xor i8 %xor9.1.i121.i261, %xor9.1.i.i258
  %xor9.1.i147.i266 = xor i8 %xor9.1.i134.i265, %102
  %xor9.1.i160.i267 = xor i8 %xor9.1.i147.i266, %xor9.2.i.i259
  %xor9.5.i372 = xor i8 %xor9.1.i160.i267, %26
  %152 = ptrtoint ptr %arrayidx.5.i55 to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 %xor9.5.i372, ptr %arrayidx.5.i55, align 1
  %xor9.3.i129.i269 = xor i8 %xor9.3.i.i260, %102
  %xor9.2.i138.i270 = xor i8 %xor9.3.i129.i269, %98
  %xor9.2.i151.i271 = xor i8 %xor9.2.i138.i270, %122
  %xor9.2.i164.i272 = xor i8 %xor9.2.i151.i271, %xor9.2.i.i259
  %xor9.6.i376 = xor i8 %xor9.2.i164.i272, %25
  %153 = ptrtoint ptr %arrayidx.6.i57 to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 %xor9.6.i376, ptr %arrayidx.6.i57, align 1
  %xor9.3.i142.i275 = xor i8 %xor9.3.i129.i269, %xor9.i.i257
  %xor9.3.i155.i276 = xor i8 %xor9.3.i142.i275, %122
  %xor9.3.i168.i277 = xor i8 %xor9.3.i155.i276, %142
  %xor9.7.i380 = xor i8 %xor9.3.i168.i277, %24
  %154 = ptrtoint ptr %arrayidx.7.i59 to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 %xor9.7.i380, ptr %arrayidx.7.i59, align 1
  %xor9.i131.i299 = xor i8 %138, %xor9.i.i294
  %xor9.i144.i300 = xor i8 %xor9.i131.i299, %xor9.1.i121.i298
  %xor9.i157.i301 = xor i8 %xor9.i144.i300, %xor9.1.i.i295
  %xor9.8.i384 = xor i8 %xor9.i157.i301, %23
  %155 = ptrtoint ptr %arrayidx.8.i61 to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 %xor9.8.i384, ptr %arrayidx.8.i61, align 1
  %xor9.1.i134.i302 = xor i8 %118, %xor9.2.i.i296
  %xor9.1.i147.i303 = xor i8 %xor9.1.i134.i302, %xor9.1.i121.i298
  %xor9.1.i160.i304 = xor i8 %xor9.1.i147.i303, %xor9.1.i.i295
  %xor9.9.i388 = xor i8 %xor9.1.i160.i304, %22
  %156 = ptrtoint ptr %arrayidx.9.i63 to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 %xor9.9.i388, ptr %arrayidx.9.i63, align 1
  %xor9.2.i138.i307 = xor i8 %xor9.1.i134.i302, %114
  %xor9.2.i151.i308 = xor i8 %xor9.2.i138.i307, %xor9.3.i.i297
  %xor9.2.i164.i309 = xor i8 %xor9.2.i151.i308, %138
  %xor9.10.i392 = xor i8 %xor9.2.i164.i309, %21
  %157 = ptrtoint ptr %arrayidx.10.i65 to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 %xor9.10.i392, ptr %arrayidx.10.i65, align 1
  %xor9.i118.i311 = xor i8 %xor9.3.i.i297, %118
  %xor9.3.i142.i312 = xor i8 %xor9.i118.i311, %94
  %xor9.3.i155.i313 = xor i8 %xor9.3.i142.i312, %xor9.i.i294
  %xor9.3.i168.i314 = xor i8 %xor9.3.i155.i313, %138
  %xor9.11.i396 = xor i8 %xor9.3.i168.i314, %20
  %158 = ptrtoint ptr %arrayidx.11.i67 to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 %xor9.11.i396, ptr %arrayidx.11.i67, align 1
  %xor9.i131.i336 = xor i8 %xor9.1.i121.i335, %xor9.1.i.i332
  %xor9.i144.i337 = xor i8 %xor9.i131.i336, %90
  %xor9.i157.i338 = xor i8 %xor9.i144.i337, %xor9.i.i331
  %xor9.12.i400 = xor i8 %xor9.i157.i338, %19
  %159 = ptrtoint ptr %arrayidx.12.i69 to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 %xor9.12.i400, ptr %arrayidx.12.i69, align 1
  %xor9.1.i147.i340 = xor i8 %xor9.i131.i336, %xor9.2.i.i333
  %xor9.1.i160.i341 = xor i8 %xor9.1.i147.i340, %134
  %xor9.13.i404 = xor i8 %xor9.1.i160.i341, %18
  %160 = ptrtoint ptr %arrayidx.13.i71 to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 %xor9.13.i404, ptr %arrayidx.13.i71, align 1
  %xor9.3.i129.i343 = xor i8 %134, %xor9.2.i.i333
  %xor9.2.i138.i344 = xor i8 %xor9.3.i129.i343, %90
  %xor9.2.i151.i345 = xor i8 %xor9.2.i138.i344, %130
  %xor9.2.i164.i346 = xor i8 %xor9.2.i151.i345, %xor9.3.i.i334
  %xor9.14.i408 = xor i8 %xor9.2.i164.i346, %17
  %161 = ptrtoint ptr %arrayidx.14.i73 to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 %xor9.14.i408, ptr %arrayidx.14.i73, align 1
  %xor9.i118.i348 = xor i8 %134, %90
  %xor9.3.i142.i349 = xor i8 %xor9.i118.i348, %110
  %xor9.3.i155.i350 = xor i8 %xor9.3.i142.i349, %xor9.3.i.i334
  %xor9.3.i168.i351 = xor i8 %xor9.3.i155.i350, %xor9.i.i331
  %xor9.15.i412 = xor i8 %xor9.3.i168.i351, %16
  %162 = ptrtoint ptr %arrayidx.15.i75 to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 %xor9.15.i412, ptr %arrayidx.15.i75, align 1
  %conv.i.i415 = zext i8 %18 to i32
  %arrayidx.i.i416 = getelementptr [256 x i8], ptr @sbox_table, i32 0, i32 %conv.i.i415
  %163 = ptrtoint ptr %arrayidx.i.i416 to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %arrayidx.i.i416, align 1
  %arrayidx11.i426 = getelementptr [12 x i8], ptr @next_key.rcon_table, i32 0, i32 %round.0516
  %165 = ptrtoint ptr %arrayidx11.i426 to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %arrayidx11.i426, align 1
  %xor9.i.i427 = xor i8 %164, %xor43.i434519
  %xor43.i434 = xor i8 %xor9.i.i427, %166
  br label %for.inc30

for.inc30:                                        ; preds = %if.else14, %if.then
  %xor43.i.sink = phi i8 [ %xor43.i, %if.then ], [ %xor43.i434, %if.else14 ]
  %conv.i48.i.pn = zext i8 %19 to i32
  %.pn538.in = getelementptr [256 x i8], ptr @sbox_table, i32 0, i32 %conv.i48.i.pn
  %167 = ptrtoint ptr %.pn538.in to i32
  call void @__asan_load1_noabort(i32 %167)
  %.pn538 = load i8, ptr %.pn538.in, align 1
  %xor9.3.i.i.sink = xor i8 %.pn538, %28
  %conv.i46.i.pn = zext i8 %16 to i32
  %.pn537.in = getelementptr [256 x i8], ptr @sbox_table, i32 0, i32 %conv.i46.i.pn
  %168 = ptrtoint ptr %.pn537.in to i32
  call void @__asan_load1_noabort(i32 %168)
  %.pn537 = load i8, ptr %.pn537.in, align 1
  %xor9.2.i.i.sink = xor i8 %.pn537, %29
  %conv.i44.i.pn = zext i8 %17 to i32
  %.pn.in = getelementptr [256 x i8], ptr @sbox_table, i32 0, i32 %conv.i44.i.pn
  %169 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load1_noabort(i32 %169)
  %.pn = load i8, ptr %.pn.in, align 1
  %xor9.1.i.i.sink = xor i8 %.pn, %30
  %xor9.i50.i = xor i8 %xor43.i.sink, %27
  %xor9.1.i53.i = xor i8 %xor9.1.i.i.sink, %26
  %xor9.2.i57.i = xor i8 %xor9.2.i.i.sink, %25
  %xor9.3.i61.i = xor i8 %xor9.3.i.i.sink, %24
  %xor9.i63.i = xor i8 %xor9.i50.i, %23
  %xor9.1.i66.i = xor i8 %xor9.1.i53.i, %22
  %xor9.2.i70.i = xor i8 %xor9.2.i57.i, %21
  %xor9.3.i74.i = xor i8 %xor9.3.i61.i, %20
  %xor9.i76.i = xor i8 %xor9.i63.i, %19
  %xor9.1.i79.i = xor i8 %xor9.1.i66.i, %18
  %xor9.2.i83.i = xor i8 %xor9.2.i70.i, %17
  %xor9.3.i87.i = xor i8 %xor9.3.i74.i, %16
  %inc31 = add nuw nsw i32 %round.0516, 1
  br label %for.body4

for.end32:                                        ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #11
  %170 = ptrtoint ptr %ciphertext to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %ciphertext, align 1
  %conv.i.i45 = zext i8 %171 to i32
  %arrayidx.i.i46 = getelementptr [256 x i8], ptr @sbox_table, i32 0, i32 %conv.i.i45
  %172 = ptrtoint ptr %arrayidx.i.i46 to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %arrayidx.i.i46, align 1
  %174 = ptrtoint ptr %arrayidx.1.i47 to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %arrayidx.1.i47, align 1
  %conv.i.1.i = zext i8 %175 to i32
  %arrayidx.i.1.i = getelementptr [256 x i8], ptr @sbox_table, i32 0, i32 %conv.i.1.i
  %176 = ptrtoint ptr %arrayidx.i.1.i to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %arrayidx.i.1.i, align 1
  %178 = ptrtoint ptr %arrayidx.2.i49 to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %arrayidx.2.i49, align 1
  %conv.i.2.i = zext i8 %179 to i32
  %arrayidx.i.2.i = getelementptr [256 x i8], ptr @sbox_table, i32 0, i32 %conv.i.2.i
  %180 = ptrtoint ptr %arrayidx.i.2.i to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %arrayidx.i.2.i, align 1
  %182 = ptrtoint ptr %arrayidx.3.i51 to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %arrayidx.3.i51, align 1
  %conv.i.3.i = zext i8 %183 to i32
  %arrayidx.i.3.i = getelementptr [256 x i8], ptr @sbox_table, i32 0, i32 %conv.i.3.i
  %184 = ptrtoint ptr %arrayidx.i.3.i to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %arrayidx.i.3.i, align 1
  %186 = ptrtoint ptr %arrayidx.4.i53 to i32
  call void @__asan_load1_noabort(i32 %186)
  %187 = load i8, ptr %arrayidx.4.i53, align 1
  %conv.i.4.i = zext i8 %187 to i32
  %arrayidx.i.4.i = getelementptr [256 x i8], ptr @sbox_table, i32 0, i32 %conv.i.4.i
  %188 = ptrtoint ptr %arrayidx.i.4.i to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %arrayidx.i.4.i, align 1
  %190 = ptrtoint ptr %arrayidx.5.i55 to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %arrayidx.5.i55, align 1
  %conv.i.5.i = zext i8 %191 to i32
  %arrayidx.i.5.i = getelementptr [256 x i8], ptr @sbox_table, i32 0, i32 %conv.i.5.i
  %192 = ptrtoint ptr %arrayidx.i.5.i to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %arrayidx.i.5.i, align 1
  %194 = ptrtoint ptr %arrayidx.6.i57 to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %arrayidx.6.i57, align 1
  %conv.i.6.i = zext i8 %195 to i32
  %arrayidx.i.6.i = getelementptr [256 x i8], ptr @sbox_table, i32 0, i32 %conv.i.6.i
  %196 = ptrtoint ptr %arrayidx.i.6.i to i32
  call void @__asan_load1_noabort(i32 %196)
  %197 = load i8, ptr %arrayidx.i.6.i, align 1
  %198 = ptrtoint ptr %arrayidx.7.i59 to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %arrayidx.7.i59, align 1
  %conv.i.7.i = zext i8 %199 to i32
  %arrayidx.i.7.i = getelementptr [256 x i8], ptr @sbox_table, i32 0, i32 %conv.i.7.i
  %200 = ptrtoint ptr %arrayidx.i.7.i to i32
  call void @__asan_load1_noabort(i32 %200)
  %201 = load i8, ptr %arrayidx.i.7.i, align 1
  %202 = ptrtoint ptr %arrayidx.8.i61 to i32
  call void @__asan_load1_noabort(i32 %202)
  %203 = load i8, ptr %arrayidx.8.i61, align 1
  %conv.i.8.i = zext i8 %203 to i32
  %arrayidx.i.8.i = getelementptr [256 x i8], ptr @sbox_table, i32 0, i32 %conv.i.8.i
  %204 = ptrtoint ptr %arrayidx.i.8.i to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %arrayidx.i.8.i, align 1
  %206 = ptrtoint ptr %arrayidx.9.i63 to i32
  call void @__asan_load1_noabort(i32 %206)
  %207 = load i8, ptr %arrayidx.9.i63, align 1
  %conv.i.9.i = zext i8 %207 to i32
  %arrayidx.i.9.i = getelementptr [256 x i8], ptr @sbox_table, i32 0, i32 %conv.i.9.i
  %208 = ptrtoint ptr %arrayidx.i.9.i to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load i8, ptr %arrayidx.i.9.i, align 1
  %210 = ptrtoint ptr %arrayidx.10.i65 to i32
  call void @__asan_load1_noabort(i32 %210)
  %211 = load i8, ptr %arrayidx.10.i65, align 1
  %conv.i.10.i = zext i8 %211 to i32
  %arrayidx.i.10.i = getelementptr [256 x i8], ptr @sbox_table, i32 0, i32 %conv.i.10.i
  %212 = ptrtoint ptr %arrayidx.i.10.i to i32
  call void @__asan_load1_noabort(i32 %212)
  %213 = load i8, ptr %arrayidx.i.10.i, align 1
  %214 = ptrtoint ptr %arrayidx.11.i67 to i32
  call void @__asan_load1_noabort(i32 %214)
  %215 = load i8, ptr %arrayidx.11.i67, align 1
  %conv.i.11.i = zext i8 %215 to i32
  %arrayidx.i.11.i = getelementptr [256 x i8], ptr @sbox_table, i32 0, i32 %conv.i.11.i
  %216 = ptrtoint ptr %arrayidx.i.11.i to i32
  call void @__asan_load1_noabort(i32 %216)
  %217 = load i8, ptr %arrayidx.i.11.i, align 1
  %218 = ptrtoint ptr %arrayidx.12.i69 to i32
  call void @__asan_load1_noabort(i32 %218)
  %219 = load i8, ptr %arrayidx.12.i69, align 1
  %conv.i.12.i = zext i8 %219 to i32
  %arrayidx.i.12.i = getelementptr [256 x i8], ptr @sbox_table, i32 0, i32 %conv.i.12.i
  %220 = ptrtoint ptr %arrayidx.i.12.i to i32
  call void @__asan_load1_noabort(i32 %220)
  %221 = load i8, ptr %arrayidx.i.12.i, align 1
  %222 = ptrtoint ptr %arrayidx.13.i71 to i32
  call void @__asan_load1_noabort(i32 %222)
  %223 = load i8, ptr %arrayidx.13.i71, align 1
  %conv.i.13.i = zext i8 %223 to i32
  %arrayidx.i.13.i = getelementptr [256 x i8], ptr @sbox_table, i32 0, i32 %conv.i.13.i
  %224 = ptrtoint ptr %arrayidx.i.13.i to i32
  call void @__asan_load1_noabort(i32 %224)
  %225 = load i8, ptr %arrayidx.i.13.i, align 1
  %226 = ptrtoint ptr %arrayidx.14.i73 to i32
  call void @__asan_load1_noabort(i32 %226)
  %227 = load i8, ptr %arrayidx.14.i73, align 1
  %conv.i.14.i = zext i8 %227 to i32
  %arrayidx.i.14.i = getelementptr [256 x i8], ptr @sbox_table, i32 0, i32 %conv.i.14.i
  %228 = ptrtoint ptr %arrayidx.i.14.i to i32
  call void @__asan_load1_noabort(i32 %228)
  %229 = load i8, ptr %arrayidx.i.14.i, align 1
  %230 = ptrtoint ptr %arrayidx.15.i75 to i32
  call void @__asan_load1_noabort(i32 %230)
  %231 = load i8, ptr %arrayidx.15.i75, align 1
  %conv.i.15.i = zext i8 %231 to i32
  %arrayidx.i.15.i = getelementptr [256 x i8], ptr @sbox_table, i32 0, i32 %conv.i.15.i
  %232 = ptrtoint ptr %arrayidx.i.15.i to i32
  call void @__asan_load1_noabort(i32 %232)
  %233 = load i8, ptr %arrayidx.i.15.i, align 1
  %xor9.i82 = xor i8 %xor43.i434519, %173
  store i8 %xor9.i82, ptr %ciphertext, align 1
  %xor9.1.i85 = xor i8 %30, %193
  store i8 %xor9.1.i85, ptr %arrayidx.1.i47, align 1
  %xor9.2.i89 = xor i8 %29, %213
  store i8 %xor9.2.i89, ptr %arrayidx.2.i49, align 1
  %xor9.3.i93 = xor i8 %28, %233
  store i8 %xor9.3.i93, ptr %arrayidx.3.i51, align 1
  %xor9.4.i97 = xor i8 %27, %189
  store i8 %xor9.4.i97, ptr %arrayidx.4.i53, align 1
  %xor9.5.i101 = xor i8 %26, %209
  store i8 %xor9.5.i101, ptr %arrayidx.5.i55, align 1
  %xor9.6.i105 = xor i8 %25, %229
  store i8 %xor9.6.i105, ptr %arrayidx.6.i57, align 1
  %xor9.7.i109 = xor i8 %24, %185
  store i8 %xor9.7.i109, ptr %arrayidx.7.i59, align 1
  %xor9.8.i113 = xor i8 %23, %205
  store i8 %xor9.8.i113, ptr %arrayidx.8.i61, align 1
  %xor9.9.i117 = xor i8 %22, %225
  store i8 %xor9.9.i117, ptr %arrayidx.9.i63, align 1
  %xor9.10.i121 = xor i8 %21, %181
  store i8 %xor9.10.i121, ptr %arrayidx.10.i65, align 1
  %xor9.11.i125 = xor i8 %20, %201
  store i8 %xor9.11.i125, ptr %arrayidx.11.i67, align 1
  %xor9.12.i129 = xor i8 %19, %221
  store i8 %xor9.12.i129, ptr %arrayidx.12.i69, align 1
  %xor9.13.i133 = xor i8 %18, %177
  store i8 %xor9.13.i133, ptr %arrayidx.13.i71, align 1
  %xor9.14.i137 = xor i8 %17, %197
  store i8 %xor9.14.i137, ptr %arrayidx.14.i73, align 1
  %xor9.15.i141 = xor i8 %16, %217
  store i8 %xor9.15.i141, ptr %arrayidx.15.i75, align 1
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.fshl.i16(i16, i16, i16) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.bitreverse.i8(i8) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = distinct !{null, !1, !"bcrc32initialized", i1 false, i1 false}
!1 = !{!"../drivers/staging/rtl8712/rtl871x_security.c", i32 101, i32 13}
!2 = !{ptr @crc32_table, !3, !"crc32_table", i1 false, i1 false}
!3 = !{!"../drivers/staging/rtl8712/rtl871x_security.c", i32 102, i32 12}
!4 = !{ptr @Sbox1, !5, !"Sbox1", i1 false, i1 false}
!5 = !{!"../drivers/staging/rtl8712/rtl871x_security.c", i32 386, i32 29}
!6 = !{ptr @next_key.rcon_table, !7, !"rcon_table", i1 false, i1 false}
!7 = !{!"../drivers/staging/rtl8712/rtl871x_security.c", i32 765, i32 18}
!8 = !{ptr @sbox_table, !9, !"sbox_table", i1 false, i1 false}
!9 = !{!"../drivers/staging/rtl8712/rtl871x_security.c", i32 700, i32 17}
!10 = !{ptr @aes_decipher.message, !11, !"message", i1 false, i1 false}
!11 = !{!"../drivers/staging/rtl8712/rtl871x_security.c", i32 1190, i32 12}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
