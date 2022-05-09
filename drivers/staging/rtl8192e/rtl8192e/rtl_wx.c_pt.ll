; ModuleID = '/llk/IR_all_yes/drivers/staging/rtl8192e/rtl8192e/rtl_wx.c_pt.bc'
source_filename = "../drivers/staging/rtl8192e/rtl8192e/rtl_wx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.iw_priv_args = type { i32, i16, i16, [16 x i8] }
%struct.iw_handler_def = type { ptr, i16, i16, i16, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rtllib_device = type { ptr, ptr, %struct.rtllib_security, i8, i32, i8, i32, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, ptr, %struct.spinlock, [16 x i8], [16 x i8], [16 x i8], [16 x i8], i8, i8, i8, i8, i8, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.list_head, [16 x %struct.tx_ts_record], %struct.list_head, %struct.list_head, %struct.list_head, [16 x %struct.rx_ts_record], [128 x %struct.rx_reorder_entry], %struct.list_head, %struct.net_device_stats, %struct.rtllib_softmac_stats, %struct.list_head, %struct.list_head, ptr, i32, i32, i32, i8, %struct.rt_intel_promisc_mode, %struct.spinlock, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, ptr, i32, ptr, [6 x i8], i16, i16, %struct.lib80211_crypt_info, [32 x %struct.sw_cam_table], [16 x %struct.rt_pmkid_list], [17 x [4 x %struct.rtllib_frag_entry]], [17 x i32], i16, i16, [6 x i8], %struct.rtllib_network, i32, i32, i32, i32, i16, i16, ptr, i8, [162 x i8], i8, i8, i32, i32, i16, i16, [5 x i16], i16, i16, i8, i16, i16, i32, i32, %struct.tasklet_struct, i64, i8, i16, i16, i16, i16, i16, %struct.mutex, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.spinlock, i16, i16, i16, i32, [31 x %struct.list_head], [17 x i16], [17 x i16], [17 x i32], i32, i8, i8, [5 x ptr], i32, i32, i8, [16 x %struct.sk_buff_head], [16 x %struct.sk_buff_head], i8, i8, i32, i32, i8, i8, i8, i32, i32, i32, i8, %struct.bandwidth_autoswitch, i8, %struct.rt_link_detect, i8, %struct.rt_pwr_save_ctrl, %struct.tx_pending, %struct.timer_list, %struct.timer_list, i8, %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, %union.anon.124, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [0 x i8] }
%struct.rtllib_security = type <{ i16, [4 x i8], [4 x [32 x i8]], i8, i16 }>
%struct.atomic_t = type { i32 }
%struct.tx_ts_record = type { %struct.ts_common_info, i16, %struct.ba_record, %struct.ba_record, i8, i8, i8, i8, %struct.timer_list, i8 }
%struct.ts_common_info = type { %struct.list_head, %struct.timer_list, %struct.timer_list, [6 x i8], %union.tspec_body, [4 x %union.qos_tclas], i8, i8 }
%union.tspec_body = type { %struct.anon.119 }
%struct.anon.119 = type { %union.qos_tsinfo, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16 }
%union.qos_tsinfo = type { %struct.anon.120 }
%struct.anon.120 = type { i8, i8, i8, i8 }
%union.qos_tclas = type { %struct._TYPE1_IPV6 }
%struct._TYPE1_IPV6 = type { i8, i8, i8, i8, [16 x i8], [16 x i8], i16, i16, [3 x i8] }
%struct.ba_record = type { %struct.timer_list, i8, i8, %union.ba_param_set, i16, %union.sequence_control }
%union.ba_param_set = type { i16 }
%union.sequence_control = type { i16 }
%struct.rx_ts_record = type { %struct.ts_common_info, i16, i16, %struct.list_head, %struct.timer_list, %struct.ba_record, i16, i8, i8 }
%struct.rx_reorder_entry = type { %struct.list_head, i16, ptr }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rtllib_softmac_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i32 }
%struct.list_head = type { ptr, ptr }
%struct.rt_intel_promisc_mode = type { i8, i8 }
%struct.lib80211_crypt_info = type { ptr, ptr, [4 x ptr], i32, %struct.list_head, %struct.timer_list, i32 }
%struct.sw_cam_table = type { [6 x i8], i8, [16 x i8], i16, i8, i8 }
%struct.rt_pmkid_list = type { [6 x i8], [16 x i8], [33 x i8], i8 }
%struct.rtllib_frag_entry = type { i32, i32, i32, ptr, [6 x i8], [6 x i8] }
%struct.rtllib_network = type { [6 x i8], i8, [33 x i8], i8, [33 x i8], i8, %struct.rtllib_qos_data, i8, i8, i8, [2 x i8], i8, i8, [6 x i8], i8, i8, %struct.rtllib_rx_stats, i16, [12 x i8], i8, [16 x i8], i8, i32, i8, i32, [2 x i32], i16, i16, i16, i8, [64 x i8], i32, [64 x i8], i32, [256 x i8], i32, %struct.rtllib_tim_parameters, i8, i8, i64, i8, [4 x %struct.rtllib_wmm_ac_param], i8, i16, [255 x i8], %struct.bss_ht, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.list_head }
%struct.rtllib_qos_data = type { %struct.rtllib_qos_parameters, i32, i32, i32, i8, i8 }
%struct.rtllib_qos_parameters = type { [4 x i16], [4 x i16], [4 x i8], [4 x i8], [4 x i16] }
%struct.rtllib_rx_stats = type { i64, i8, i8, i8, i16, i8, i8, i8, i8, i16, i64, i32, i8, i16, i8, i32, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, [4 x i8], [2 x i8], i8, i8, i8, i16, i16, i16, i16, i8, i8, i16 }
%struct.rtllib_tim_parameters = type { i8, i8 }
%struct.rtllib_wmm_ac_param = type { i8, i8, i16 }
%struct.bss_ht = type { i8, [32 x i8], i16, [32 x i8], i16, i32, i32, i8, i8, i8, i8 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.123, i32 }
%union.anon.123 = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.24 }
%union.anon.24 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.23 }
%union.anon.23 = type { %struct.raw_spinlock }
%struct.sk_buff_head = type { %union.anon.68, i32, %struct.spinlock }
%union.anon.68 = type { %struct.anon.69 }
%struct.anon.69 = type { ptr, ptr }
%struct.bandwidth_autoswitch = type { i32, i32, i8, i8 }
%struct.rt_link_detect = type { i32, i32, [10 x i32], [10 x i32], i16, i16, i32, i32, i32, i8, i8, i8 }
%struct.rt_pwr_save_ctrl = type { i8, i8, i8, i32, i32, i8, i8, i8, i8, i32, i32, i8 }
%struct.tx_pending = type { i32, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.124 = type { %struct.anon.125 }
%struct.anon.125 = type { [16 x %struct.sw_chnl_cmd], [16 x %struct.sw_chnl_cmd], [16 x %struct.sw_chnl_cmd] }
%struct.sw_chnl_cmd = type { i32, i32, i32, i32 }
%struct.iw_point = type { ptr, i16, i16 }
%struct.iw_range = type { i32, i32, i32, i16, i8, i8, [6 x i32], i32, %struct.iw_quality, %struct.iw_quality, i8, [32 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, [8 x i16], i8, i8, i8, i16, i8, [8 x i32], i8, i8, i16, i16, i16, i32, i32, i32, i32, i16, i8, [32 x %struct.iw_freq], i32 }
%struct.iw_quality = type { i8, i8, i8, i8 }
%struct.iw_freq = type { i32, i16, i8, i8 }
%struct.iw_scan_req = type { i8, i8, i8, i8, %struct.sockaddr, [32 x i8], i32, i32, [32 x %struct.iw_freq] }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.iw_param = type { i32, i8, i8, i16 }
%struct.iw_encode_ext = type { i32, [8 x i8], [8 x i8], %struct.sockaddr, i16, i16, [0 x i8] }
%struct.rt_hi_throughput = type <{ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.ht_capab_ele, %struct.ht_info_ele, [32 x i8], [32 x i8], i8, i16, i8, i16, i8, i8, i8, i8, i8, i8, i32, i8, i8, i32, i16, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, [10 x i8], i8, i8, i8, i8, i16, i8, i8, i32, i8, i8, i8, i8 }>
%struct.ht_capab_ele = type <{ [3 x i8], [16 x i8], i16, [4 x i8], i8 }>
%struct.ht_info_ele = type { i8, [5 x i8], [16 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@r8192_wx_handlers = internal global { [53 x ptr], [44 x i8] } { [53 x ptr] [ptr null, ptr @_rtl92e_wx_get_name, ptr null, ptr null, ptr @_rtl92e_wx_set_freq, ptr @_rtl92e_wx_get_freq, ptr @_rtl92e_wx_set_mode, ptr @_rtl92e_wx_get_mode, ptr @_rtl92e_wx_set_sens, ptr @_rtl92e_wx_get_sens, ptr null, ptr @_rtl92e_wx_get_range, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @_rtl92e_wx_set_wap, ptr @_rtl92e_wx_get_wap, ptr @_rtl92e_wx_set_mlme, ptr null, ptr @_rtl92e_wx_set_scan, ptr @_rtl92e_wx_get_scan, ptr @_rtl92e_wx_set_essid, ptr @_rtl92e_wx_get_essid, ptr @_rtl92e_wx_set_nick, ptr @_rtl92e_wx_get_nick, ptr null, ptr null, ptr @_rtl92e_wx_set_rate, ptr @_rtl92e_wx_get_rate, ptr @_rtl92e_wx_set_rts, ptr @_rtl92e_wx_get_rts, ptr @_rtl92e_wx_set_frag, ptr @_rtl92e_wx_get_frag, ptr null, ptr null, ptr @_rtl92e_wx_set_retry, ptr @_rtl92e_wx_get_retry, ptr @_rtl92e_wx_set_enc, ptr @_rtl92e_wx_get_enc, ptr @_rtl92e_wx_set_power, ptr @_rtl92e_wx_get_power, ptr null, ptr null, ptr @_rtl92e_wx_set_gen_ie, ptr @_rtl92e_wx_get_gen_ie, ptr @_rtl92e_wx_set_auth, ptr null, ptr @_rtl92e_wx_set_encode_ext], [44 x i8] zeroinitializer }, align 32
@r8192_private_handler = internal global { [24 x ptr], [32 x i8] } { [24 x ptr] [ptr @_rtl92e_wx_set_debug, ptr @_rtl92e_wx_set_scan_type, ptr @_rtl92e_wx_set_rawtx, ptr @_rtl92e_wx_force_reset, ptr null, ptr null, ptr @_rtl92e_wx_adapter_power_status, ptr null, ptr null, ptr null, ptr @_rtl92e_wx_set_lps_awake_interval, ptr @_rtl92e_wx_set_force_lps, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @_rtl92e_wx_set_promisc_mode, ptr @_rtl92e_wx_get_promisc_mode], [32 x i8] zeroinitializer }, align 32
@r8192_private_args = internal constant { [9 x %struct.iw_priv_args], [40 x i8] } { [9 x %struct.iw_priv_args] [%struct.iw_priv_args { i32 35808, i16 18433, i16 0, [16 x i8] c"set_debugflag\00\00\00" }, %struct.iw_priv_args { i32 35809, i16 18433, i16 0, [16 x i8] c"activescan\00\00\00\00\00\00" }, %struct.iw_priv_args { i32 35810, i16 18433, i16 0, [16 x i8] c"rawtx\00\00\00\00\00\00\00\00\00\00\00" }, %struct.iw_priv_args { i32 35811, i16 18433, i16 0, [16 x i8] c"forcereset\00\00\00\00\00\00" }, %struct.iw_priv_args { i32 35814, i16 18433, i16 0, [16 x i8] c"set_power\00\00\00\00\00\00\00" }, %struct.iw_priv_args { i32 35818, i16 18433, i16 0, [16 x i8] c"lps_interv\00\00\00\00\00\00" }, %struct.iw_priv_args { i32 35819, i16 18433, i16 0, [16 x i8] c"lps_force\00\00\00\00\00\00\00" }, %struct.iw_priv_args { i32 35830, i16 18435, i16 0, [16 x i8] c"setpromisc\00\00\00\00\00\00" }, %struct.iw_priv_args { i32 35831, i16 0, i16 10285, [16 x i8] c"getpromisc\00\00\00\00\00\00" }], [40 x i8] zeroinitializer }, align 32
@r8192_wx_handlers_def = dso_local constant { %struct.iw_handler_def, [40 x i8] } { %struct.iw_handler_def { ptr @r8192_wx_handlers, i16 53, i16 24, i16 9, ptr @r8192_private_handler, ptr @r8192_private_args, ptr @_rtl92e_get_wireless_stats }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s(): RF is OFF.\0A\00", [46 x i8] zeroinitializer }, align 32
@__func__._rtl92e_wx_set_mode = private unnamed_addr constant [20 x i8] c"_rtl92e_wx_set_mode\00", align 1
@.str.1 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"=========>%s(): rtl92e_ips_leave\0A\00", [62 x i8] zeroinitializer }, align 32
@rtl8192_rates = internal constant { [12 x i32], [48 x i8] } { [12 x i32] [i32 1000000, i32 2000000, i32 5500000, i32 11000000, i32 6000000, i32 9000000, i32 12000000, i32 18000000, i32 24000000, i32 36000000, i32 48000000, i32 54000000], [48 x i8] zeroinitializer }, align 32
@rtllib_wlan_frequencies = external dso_local local_unnamed_addr constant [0 x i32], align 4
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"================>%s(): hwradio off\0A\00", [60 x i8] zeroinitializer }, align 32
@__func__._rtl92e_wx_set_scan = private unnamed_addr constant [20 x i8] c"_rtl92e_wx_set_scan\00", align 1
@rt_global_debug_component = external dso_local local_unnamed_addr global i32, align 4
@_rtl92e_wx_set_scan._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @__func__._rtl92e_wx_set_scan, ptr @.str.4, i32 432, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\017rtl819xE:=========>%s(): rtl92e_ips_leave\0A\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/staging/rtl8192e/rtl8192e/rtl_wx.c\00", [53 x i8] zeroinitializer }, align 32
@_rtl92e_wx_set_scan._entry_ptr = internal global ptr @_rtl92e_wx_set_scan._entry, section ".printk_index", align 4
@.str.5 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"=========>%s():hw radio off,or Rf state is eRfOff, return\0A\00", [37 x i8] zeroinitializer }, align 32
@__func__._rtl92e_wx_set_essid = private unnamed_addr constant [21 x i8] c"_rtl92e_wx_set_essid\00", align 1
@__const._rtl92e_wx_set_enc.zero_addr = private unnamed_addr constant [4 x [6 x i8]] [[6 x i8] zeroinitializer, [6 x i8] c"\00\00\00\00\00\01", [6 x i8] c"\00\00\00\00\00\02", [6 x i8] c"\00\00\00\00\00\03"], align 1
@_rtl92e_wx_set_enc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.4, i32 684, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017rtl819xE:Setting SW wep key\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"_rtl92e_wx_set_enc\00", [45 x i8] zeroinitializer }, align 32
@_rtl92e_wx_set_enc._entry_ptr = internal global ptr @_rtl92e_wx_set_enc._entry, section ".printk_index", align 4
@.str.8 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"wrong type in WEP, not WEP40 and WEP104\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s(): Can't set Power: Radio is Off.\0A\00", [58 x i8] zeroinitializer }, align 32
@__func__._rtl92e_wx_set_power = private unnamed_addr constant [21 x i8] c"_rtl92e_wx_set_power\00", align 1
@.str.10 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"=====>%s(), *extra:%x, debugflag:%x\0A\00", [59 x i8] zeroinitializer }, align 32
@__func__._rtl92e_wx_set_debug = private unnamed_addr constant [21 x i8] c"_rtl92e_wx_set_debug\00", align 1
@_rtl92e_wx_force_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.4, i32 153, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\017rtl819xE:%s(): force reset ! extra is %d\0A\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"_rtl92e_wx_force_reset\00", [41 x i8] zeroinitializer }, align 32
@_rtl92e_wx_force_reset._entry_ptr = internal global ptr @_rtl92e_wx_force_reset._entry, section ".printk_index", align 4
@_rtl92e_wx_adapter_power_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.4, i32 171, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\017rtl819xE:%s(): %s\0A\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"_rtl92e_wx_adapter_power_status\00", [32 x i8] zeroinitializer }, align 32
@_rtl92e_wx_adapter_power_status._entry_ptr = internal global ptr @_rtl92e_wx_adapter_power_status._entry, section ".printk_index", align 4
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DC power\00", [23 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"AC power\00", [23 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s(): set lps awake interval ! extra is %d\0A\00", [52 x i8] zeroinitializer }, align 32
@__func__._rtl92e_wx_set_lps_awake_interval = private unnamed_addr constant [34 x i8] c"_rtl92e_wx_set_lps_awake_interval\00", align 1
@.str.18 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%s(): force LPS ! extra is %d (1 is open 0 is close)\0A\00", [42 x i8] zeroinitializer }, align 32
@__func__._rtl92e_wx_set_force_lps = private unnamed_addr constant [25 x i8] c"_rtl92e_wx_set_force_lps\00", align 1
@.str.19 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"=======>%s(), on = %d, filter src sta = %d\0A\00", [52 x i8] zeroinitializer }, align 32
@__func__._rtl92e_wx_set_promisc_mode = private unnamed_addr constant [28 x i8] c"_rtl92e_wx_set_promisc_mode\00", align 1
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"PromiscuousMode:%d, FilterSrcSTAFrame:%d\00", [55 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 6]
@__sancov_gen_cov_switch_values.24 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 16, i64 5, i64 13]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 3]
@___asan_gen_.27 = private unnamed_addr constant [18 x i8] c"r8192_wx_handlers\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 1079, i32 19 }
@___asan_gen_.30 = private unnamed_addr constant [22 x i8] c"r8192_private_handler\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 1154, i32 19 }
@___asan_gen_.33 = private unnamed_addr constant [19 x i8] c"r8192_private_args\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 1119, i32 34 }
@___asan_gen_.36 = private unnamed_addr constant [22 x i8] c"r8192_wx_handlers_def\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 1209, i32 29 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 263, i32 23 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 269, i32 10 }
@___asan_gen_.45 = private unnamed_addr constant [14 x i8] c"rtl8192_rates\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 12, i32 12 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 395, i32 20 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 430, i32 5 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 497, i32 8 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 684, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 740, i32 9 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 103, i32 20 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 234, i32 19 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 152, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 170, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 200, i32 19 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 217, i32 7 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 1049, i32 8 }
@___asan_gen_.115 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 156, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.118 = private constant [46 x i8] c"../drivers/staging/rtl8192e/rtl8192e/rtl_wx.c\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 1068, i32 22 }
@llvm.compiler.used = appending global [35 x ptr] [ptr @_rtl92e_wx_adapter_power_status._entry, ptr @_rtl92e_wx_adapter_power_status._entry_ptr, ptr @_rtl92e_wx_force_reset._entry, ptr @_rtl92e_wx_force_reset._entry_ptr, ptr @_rtl92e_wx_set_enc._entry, ptr @_rtl92e_wx_set_enc._entry_ptr, ptr @_rtl92e_wx_set_scan._entry, ptr @_rtl92e_wx_set_scan._entry_ptr, ptr @r8192_wx_handlers, ptr @r8192_private_handler, ptr @r8192_private_args, ptr @r8192_wx_handlers_def, ptr @.str, ptr @.str.1, ptr @rtl8192_rates, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.22, ptr @.str.23], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r8192_wx_handlers to i32), i32 212, i32 256, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r8192_private_handler to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r8192_private_args to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r8192_wx_handlers_def to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8192_rates to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_wx_set_scan._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_wx_set_enc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_wx_force_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92e_wx_adapter_power_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @_rtl92e_get_wireless_stats(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %rtllib = getelementptr i8, ptr %dev, i32 31316
  %0 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rtllib, align 8
  %state = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 90
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %3)
  %cmp = icmp ult i32 %3, 5
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %rssi = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 89, i32 16, i32 1
  %4 = ptrtoint ptr %rssi to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %rssi, align 8
  %signal = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 89, i32 16, i32 2
  %6 = ptrtoint ptr %signal to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %signal, align 1
  %noise11 = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 89, i32 16, i32 3
  %8 = ptrtoint ptr %noise11 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %noise11, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %.sink43 = phi i8 [ %7, %if.end ], [ 10, %entry.cleanup_crit_edge ]
  %.sink42 = phi i8 [ %5, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  %.sink = phi i8 [ %9, %if.end ], [ -100, %entry.cleanup_crit_edge ]
  %10 = getelementptr i8, ptr %dev, i32 34690
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %.sink43, ptr %10, align 2
  %12 = getelementptr i8, ptr %dev, i32 34691
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %.sink42, ptr %12, align 1
  %14 = getelementptr i8, ptr %dev, i32 34692
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %.sink, ptr %14, align 2
  %16 = getelementptr i8, ptr %dev, i32 34693
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 15, ptr %16, align 1
  %wstats1 = getelementptr i8, ptr %dev, i32 34688
  ret ptr %wstats1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_rtl92e_wx_get_name(ptr nocapture noundef readonly %dev, ptr noundef %info, ptr noundef %wrqu, ptr noundef %extra) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %rtllib = getelementptr i8, ptr %dev, i32 31316
  %0 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rtllib, align 8
  %call1 = tail call i32 @rtllib_wx_get_name(ptr noundef %1, ptr noundef %info, ptr noundef %wrqu, ptr noundef %extra) #12
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_rtl92e_wx_set_freq(ptr noundef %dev, ptr noundef %a, ptr noundef %wrqu, ptr noundef %b) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %bHwRadioOff = getelementptr i8, ptr %dev, i32 35740
  %0 = ptrtoint ptr %bHwRadioOff to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bHwRadioOff, align 8, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %wx_mutex = getelementptr i8, ptr %dev, i32 32240
  tail call void @mutex_lock_nested(ptr noundef %wx_mutex, i32 noundef 0) #12
  %rtllib = getelementptr i8, ptr %dev, i32 31316
  %2 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rtllib, align 8
  %call1 = tail call i32 @rtllib_wx_set_freq(ptr noundef %3, ptr noundef %a, ptr noundef %wrqu, ptr noundef %b) #12
  tail call void @mutex_unlock(ptr noundef %wx_mutex) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_rtl92e_wx_get_freq(ptr nocapture noundef readonly %dev, ptr noundef %a, ptr noundef %wrqu, ptr noundef %b) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %rtllib = getelementptr i8, ptr %dev, i32 31316
  %0 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rtllib, align 8
  %call1 = tail call i32 @rtllib_wx_get_freq(ptr noundef %1, ptr noundef %a, ptr noundef %wrqu, ptr noundef %b) #12
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_rtl92e_wx_set_mode(ptr noundef %dev, ptr noundef %a, ptr noundef %wrqu, ptr noundef %b) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %bHwRadioOff = getelementptr i8, ptr %dev, i32 35740
  %0 = ptrtoint ptr %bHwRadioOff to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bHwRadioOff, align 8, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %rtllib = getelementptr i8, ptr %dev, i32 31316
  %2 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rtllib, align 8
  %eRFPowerState = getelementptr inbounds %struct.rtllib_device, ptr %3, i32 0, i32 23
  %4 = ptrtoint ptr %eRFPowerState to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %eRFPowerState, align 4
  %wx_mutex = getelementptr i8, ptr %dev, i32 32240
  tail call void @mutex_lock_nested(ptr noundef %wx_mutex, i32 noundef 0) #12
  %6 = ptrtoint ptr %wrqu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %wrqu, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %7, label %lor.lhs.false3 [
    i32 1, label %if.end.if.then5_crit_edge
    i32 6, label %if.end.if.then5_crit_edge43
  ]

if.end.if.then5_crit_edge43:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then5

if.end.if.then5_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then5

lor.lhs.false3:                                   ; preds = %if.end
  %bNetPromiscuousMode = getelementptr i8, ptr %dev, i32 20740
  %9 = ptrtoint ptr %bNetPromiscuousMode to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %bNetPromiscuousMode, align 4, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool4.not = icmp eq i8 %10, 0
  br i1 %tobool4.not, label %lor.lhs.false3.if.end21_crit_edge, label %lor.lhs.false3.if.then5_crit_edge

lor.lhs.false3.if.then5_crit_edge:                ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then5

lor.lhs.false3.if.end21_crit_edge:                ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

if.then5:                                         ; preds = %lor.lhs.false3.if.then5_crit_edge, %if.end.if.then5_crit_edge, %if.end.if.then5_crit_edge43
  %11 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rtllib, align 8
  %PowerSaveControl = getelementptr inbounds %struct.rtllib_device, ptr %12, i32 0, i32 158
  %13 = ptrtoint ptr %PowerSaveControl to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %PowerSaveControl, align 4, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool7.not = icmp ne i8 %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp9 = icmp eq i32 %5, 2
  %or.cond = select i1 %tobool7.not, i1 %cmp9, i1 false
  br i1 %or.cond, label %if.then10, label %if.then5.if.end21_crit_edge

if.then5.if.end21_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

if.then10:                                        ; preds = %if.then5
  %RfOffReason = getelementptr inbounds %struct.rtllib_device, ptr %12, i32 0, i32 24
  %15 = ptrtoint ptr %RfOffReason to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %RfOffReason, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %16)
  %cmp12 = icmp ugt i32 %16, 268435456
  br i1 %cmp12, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %dev, ptr noundef nonnull @.str, ptr noundef nonnull @__func__._rtl92e_wx_set_mode) #15
  br label %cleanup.sink.split

if.end15:                                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__._rtl92e_wx_set_mode) #15
  %17 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rtllib, align 8
  %ips_mutex = getelementptr inbounds %struct.rtllib_device, ptr %18, i32 0, i32 123
  tail call void @mutex_lock_nested(ptr noundef %ips_mutex, i32 noundef 0) #12
  tail call void @rtl92e_ips_leave(ptr noundef %dev) #12
  %19 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rtllib, align 8
  %ips_mutex18 = getelementptr inbounds %struct.rtllib_device, ptr %20, i32 0, i32 123
  tail call void @mutex_unlock(ptr noundef %ips_mutex18) #12
  br label %if.end21

if.end21:                                         ; preds = %if.end15, %if.then5.if.end21_crit_edge, %lor.lhs.false3.if.end21_crit_edge
  %21 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rtllib, align 8
  %call23 = tail call i32 @rtllib_wx_set_mode(ptr noundef %22, ptr noundef %a, ptr noundef %wrqu, ptr noundef %b) #12
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end21, %if.then13
  %retval.0.ph = phi i32 [ %call23, %if.end21 ], [ -1, %if.then13 ]
  tail call void @mutex_unlock(ptr noundef %wx_mutex) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_rtl92e_wx_get_mode(ptr nocapture noundef readonly %dev, ptr noundef %a, ptr noundef %wrqu, ptr noundef %b) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %rtllib = getelementptr i8, ptr %dev, i32 31316
  %0 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rtllib, align 8
  %call1 = tail call i32 @rtllib_wx_get_mode(ptr noundef %1, ptr noundef %a, ptr noundef %wrqu, ptr noundef %b) #12
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_rtl92e_wx_set_sens(ptr noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readonly %wrqu, ptr nocapture noundef readnone %extra) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %bHwRadioOff = getelementptr i8, ptr %dev, i32 35740
  %0 = ptrtoint ptr %bHwRadioOff to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bHwRadioOff, align 8, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %wx_mutex = getelementptr i8, ptr %dev, i32 32240
  tail call void @mutex_lock_nested(ptr noundef %wx_mutex, i32 noundef 0) #12
  %rf_set_sens = getelementptr i8, ptr %dev, i32 34720
  %2 = ptrtoint ptr %rf_set_sens to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rf_set_sens, align 4
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %if.end.exit_crit_edge, label %if.end2

if.end.exit_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

if.end2:                                          ; preds = %if.end
  %4 = ptrtoint ptr %wrqu to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %wrqu, align 4
  %conv = trunc i32 %5 to i16
  %call4 = tail call signext i16 %3(ptr noundef %dev, i16 noundef signext %conv) #12
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call4)
  %cmp6 = icmp eq i16 %call4, 0
  br i1 %cmp6, label %if.then8, label %if.end2.exit_crit_edge

if.end2.exit_crit_edge:                           ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

if.then8:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %wrqu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %wrqu, align 4
  %conv10 = trunc i32 %7 to i16
  %sens = getelementptr i8, ptr %dev, i32 35796
  %8 = ptrtoint ptr %sens to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv10, ptr %sens, align 8
  br label %exit

exit:                                             ; preds = %if.then8, %if.end2.exit_crit_edge, %if.end.exit_crit_edge
  %err.0 = phi i32 [ 0, %if.then8 ], [ -1, %if.end.exit_crit_edge ], [ -22, %if.end2.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %wx_mutex) #12
  br label %cleanup

cleanup:                                          ; preds = %exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %exit ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @_rtl92e_wx_get_sens(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef writeonly %wrqu, ptr nocapture noundef readnone %extra) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %rf_set_sens = getelementptr i8, ptr %dev, i32 34720
  %0 = ptrtoint ptr %rf_set_sens to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rf_set_sens, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %sens = getelementptr i8, ptr %dev, i32 35796
  %2 = ptrtoint ptr %sens to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %sens, align 8
  %conv = sext i16 %3 to i32
  %4 = ptrtoint ptr %wrqu to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv, ptr %wrqu, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_rtl92e_wx_get_range(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef writeonly %wrqu, ptr noundef %extra) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %length = getelementptr inbounds %struct.iw_point, ptr %wrqu, i32 0, i32 1
  %0 = ptrtoint ptr %length to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 568, ptr %length, align 4
  %1 = getelementptr inbounds i8, ptr %extra, i32 4
  %2 = call ptr @memset(ptr %1, i32 0, i32 564)
  %3 = ptrtoint ptr %extra to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 130000000, ptr %extra, align 4
  %rf_set_sens = getelementptr i8, ptr %dev, i32 34720
  %4 = ptrtoint ptr %rf_set_sens to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rf_set_sens, align 4
  %cmp.not = icmp eq ptr %5, null
  br i1 %cmp.not, label %entry.for.body.preheader_crit_edge, label %if.then

entry.for.body.preheader_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.preheader

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %max_sens = getelementptr i8, ptr %dev, i32 35798
  %6 = ptrtoint ptr %max_sens to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %max_sens, align 2
  %conv = sext i16 %7 to i32
  %sensitivity = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 7
  %8 = ptrtoint ptr %sensitivity to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv, ptr %sensitivity, align 4
  br label %for.body.preheader

for.body.preheader:                               ; preds = %if.then, %entry.for.body.preheader_crit_edge
  %max_qual = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 8
  %9 = ptrtoint ptr %max_qual to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 100, ptr %max_qual, align 4
  %level = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 8, i32 1
  %10 = ptrtoint ptr %level to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %level, align 1
  %noise = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 8, i32 2
  %11 = ptrtoint ptr %noise to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %noise, align 2
  %updated = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 8, i32 3
  %12 = ptrtoint ptr %updated to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 7, ptr %updated, align 1
  %avg_qual = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 9
  %13 = ptrtoint ptr %avg_qual to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 70, ptr %avg_qual, align 4
  %level6 = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 9, i32 1
  %14 = ptrtoint ptr %level6 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %level6, align 1
  %noise8 = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 9, i32 2
  %15 = ptrtoint ptr %noise8 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %noise8, align 2
  %updated10 = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 9, i32 3
  %16 = ptrtoint ptr %updated10 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 7, ptr %updated10, align 1
  %num_bitrates = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 10
  %17 = ptrtoint ptr %num_bitrates to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 12, ptr %num_bitrates, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.094 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr [12 x i32], ptr @rtl8192_rates, i32 0, i32 %i.094
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx, align 4
  %arrayidx15 = getelementptr %struct.iw_range, ptr %extra, i32 0, i32 11, i32 %i.094
  %20 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx15, align 4
  %inc = add nuw nsw i32 %i.094, 1
  %21 = ptrtoint ptr %num_bitrates to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %num_bitrates, align 4
  %conv12 = zext i8 %22 to i32
  %cmp13 = icmp ult i32 %inc, %conv12
  br i1 %cmp13, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.body
  %max_rts = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 13
  %23 = ptrtoint ptr %max_rts to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 2346, ptr %max_rts, align 4
  %min_frag = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 14
  %24 = ptrtoint ptr %min_frag to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 256, ptr %min_frag, align 4
  %max_frag = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 15
  %25 = ptrtoint ptr %max_frag to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 2346, ptr %max_frag, align 4
  %min_pmp = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 16
  %26 = ptrtoint ptr %min_pmp to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %min_pmp, align 4
  %max_pmp = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 17
  %27 = ptrtoint ptr %max_pmp to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 5000000, ptr %max_pmp, align 4
  %min_pmt = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 18
  %28 = ptrtoint ptr %min_pmt to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %min_pmt, align 4
  %max_pmt = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 19
  %29 = ptrtoint ptr %max_pmt to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 65535000, ptr %max_pmt, align 4
  %pmp_flags = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 20
  %30 = ptrtoint ptr %pmp_flags to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 4096, ptr %pmp_flags, align 4
  %pmt_flags = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 21
  %31 = ptrtoint ptr %pmt_flags to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 8192, ptr %pmt_flags, align 2
  %pm_capa = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 22
  %32 = ptrtoint ptr %pm_capa to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 13056, ptr %pm_capa, align 4
  %we_version_compiled = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 30
  %33 = ptrtoint ptr %we_version_compiled to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 22, ptr %we_version_compiled, align 4
  %we_version_source = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 31
  %34 = ptrtoint ptr %we_version_source to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 18, ptr %we_version_source, align 1
  %rtllib = getelementptr i8, ptr %dev, i32 31316
  br label %for.cond16

for.cond16:                                       ; preds = %if.end34.for.cond16_crit_edge, %for.end
  %val.0 = phi i16 [ 0, %for.end ], [ %val.1, %if.end34.for.cond16_crit_edge ]
  %i.1 = phi i32 [ 0, %for.end ], [ %add, %if.end34.for.cond16_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %i.1)
  %exitcond.not = icmp eq i32 %i.1, 14
  br i1 %exitcond.not, label %for.cond16.for.end42_crit_edge, label %for.body19

for.cond16.for.end42_crit_edge:                   ; preds = %for.cond16
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end42

for.body19:                                       ; preds = %for.cond16
  %35 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %rtllib, align 8
  %add = add nuw nsw i32 %i.1, 1
  %arrayidx20 = getelementptr %struct.rtllib_device, ptr %36, i32 0, i32 98, i32 %add
  %37 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx20, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool.not = icmp eq i8 %38, 0
  br i1 %tobool.not, label %for.body19.if.end34_crit_edge, label %if.then21

for.body19.if.end34_crit_edge:                    ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34

if.then21:                                        ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #14
  %conv23 = trunc i32 %add to i8
  %idxprom = zext i16 %val.0 to i32
  %arrayidx24 = getelementptr %struct.iw_range, ptr %extra, i32 0, i32 41, i32 %idxprom
  %i25 = getelementptr %struct.iw_range, ptr %extra, i32 0, i32 41, i32 %idxprom, i32 2
  %39 = ptrtoint ptr %i25 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv23, ptr %i25, align 2
  %arrayidx26 = getelementptr [0 x i32], ptr @rtllib_wlan_frequencies, i32 0, i32 %i.1
  %40 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx26, align 4
  %mul = mul i32 %41, 100000
  %42 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %mul, ptr %arrayidx24, align 4
  %e = getelementptr %struct.iw_range, ptr %extra, i32 0, i32 41, i32 %idxprom, i32 1
  %43 = ptrtoint ptr %e to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 1, ptr %e, align 4
  %inc33 = add i16 %val.0, 1
  br label %if.end34

if.end34:                                         ; preds = %if.then21, %for.body19.if.end34_crit_edge
  %val.1 = phi i16 [ %inc33, %if.then21 ], [ %val.0, %for.body19.if.end34_crit_edge ]
  %cmp36 = icmp eq i16 %val.1, 32
  br i1 %cmp36, label %if.end34.for.end42_crit_edge, label %if.end34.for.cond16_crit_edge

if.end34.for.cond16_crit_edge:                    ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond16

if.end34.for.end42_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end42

for.end42:                                        ; preds = %if.end34.for.end42_crit_edge, %for.cond16.for.end42_crit_edge
  %val.2 = phi i16 [ 32, %if.end34.for.end42_crit_edge ], [ %val.0, %for.cond16.for.end42_crit_edge ]
  %conv43 = trunc i16 %val.2 to i8
  %num_frequency = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 40
  %44 = ptrtoint ptr %num_frequency to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv43, ptr %num_frequency, align 2
  %num_channels = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 39
  %45 = ptrtoint ptr %num_channels to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %val.2, ptr %num_channels, align 4
  %enc_capa = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 42
  %46 = ptrtoint ptr %enc_capa to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 15, ptr %enc_capa, align 4
  %scan_capa = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 5
  %47 = ptrtoint ptr %scan_capa to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 33, ptr %scan_capa, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_rtl92e_wx_set_wap(ptr noundef %dev, ptr noundef %info, ptr noundef %awrq, ptr noundef %extra) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %bHwRadioOff = getelementptr i8, ptr %dev, i32 35740
  %0 = ptrtoint ptr %bHwRadioOff to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bHwRadioOff, align 8, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %wx_mutex = getelementptr i8, ptr %dev, i32 32240
  tail call void @mutex_lock_nested(ptr noundef %wx_mutex, i32 noundef 0) #12
  %rtllib = getelementptr i8, ptr %dev, i32 31316
  %2 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rtllib, align 8
  %call1 = tail call i32 @rtllib_wx_set_wap(ptr noundef %3, ptr noundef %info, ptr noundef %awrq, ptr noundef %extra) #12
  tail call void @mutex_unlock(ptr noundef %wx_mutex) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_rtl92e_wx_get_wap(ptr nocapture noundef readonly %dev, ptr noundef %info, ptr noundef %wrqu, ptr noundef %extra) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %rtllib = getelementptr i8, ptr %dev, i32 31316
  %0 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rtllib, align 8
  %call1 = tail call i32 @rtllib_wx_get_wap(ptr noundef %1, ptr noundef %info, ptr noundef %wrqu, ptr noundef %extra) #12
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_rtl92e_wx_set_mlme(ptr noundef %dev, ptr noundef %info, ptr noundef %wrqu, ptr noundef %extra) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %bHwRadioOff = getelementptr i8, ptr %dev, i32 35740
  %0 = ptrtoint ptr %bHwRadioOff to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bHwRadioOff, align 8, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %wx_mutex = getelementptr i8, ptr %dev, i32 32240
  tail call void @mutex_lock_nested(ptr noundef %wx_mutex, i32 noundef 0) #12
  %rtllib = getelementptr i8, ptr %dev, i32 31316
  %2 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rtllib, align 8
  %call1 = tail call i32 @rtllib_wx_set_mlme(ptr noundef %3, ptr noundef %info, ptr noundef %wrqu, ptr noundef %extra) #12
  tail call void @mutex_unlock(ptr noundef %wx_mutex) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_rtl92e_wx_set_scan(ptr noundef %dev, ptr noundef %a, ptr noundef %wrqu, ptr noundef %b) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %rtllib = getelementptr i8, ptr %dev, i32 31316
  %0 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rtllib, align 8
  %softmac_features = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 104
  %2 = ptrtoint ptr %softmac_features to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %softmac_features, align 2
  %4 = and i16 %3, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not = icmp eq i16 %4, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end17_crit_edge

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

if.then:                                          ; preds = %entry
  %state = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 90
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state, align 8
  %7 = add i32 %6, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %7)
  %8 = icmp ult i32 %7, 4
  br i1 %8, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %6)
  %cmp8 = icmp eq i32 %6, 5
  br i1 %cmp8, label %land.lhs.true10, label %if.end.if.end17_crit_edge

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

land.lhs.true10:                                  ; preds = %if.end
  %CntAfterLink = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 5
  %9 = ptrtoint ptr %CntAfterLink to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %CntAfterLink, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %10)
  %cmp13 = icmp ult i8 %10, 2
  br i1 %cmp13, label %land.lhs.true10.cleanup_crit_edge, label %land.lhs.true10.if.end17_crit_edge

land.lhs.true10.if.end17_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

land.lhs.true10.cleanup_crit_edge:                ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end17:                                         ; preds = %land.lhs.true10.if.end17_crit_edge, %if.end.if.end17_crit_edge, %entry.if.end17_crit_edge
  %bHwRadioOff = getelementptr i8, ptr %dev, i32 35740
  %11 = ptrtoint ptr %bHwRadioOff to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %bHwRadioOff, align 8, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool18.not = icmp eq i8 %12, 0
  br i1 %tobool18.not, label %if.end20, label %if.then19

if.then19:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__._rtl92e_wx_set_scan) #15
  br label %cleanup

if.end20:                                         ; preds = %if.end17
  %eRFPowerState = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 23
  %13 = ptrtoint ptr %eRFPowerState to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %eRFPowerState, align 4
  %up = getelementptr i8, ptr %dev, i32 30794
  %15 = ptrtoint ptr %up to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %up, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool22.not = icmp eq i16 %16, 0
  br i1 %tobool22.not, label %if.end20.cleanup_crit_edge, label %if.end24

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end24:                                         ; preds = %if.end20
  %bBusyTraffic = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 156, i32 9
  %17 = ptrtoint ptr %bBusyTraffic to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %bBusyTraffic, align 4, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool26.not = icmp eq i8 %18, 0
  br i1 %tobool26.not, label %if.end31, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end31:                                         ; preds = %if.end24
  %flags = getelementptr inbounds %struct.iw_point, ptr %wrqu, i32 0, i32 2
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %flags, align 2
  %21 = and i16 %20, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool34.not = icmp eq i16 %21, 0
  br i1 %tobool34.not, label %if.end31.if.end46_crit_edge, label %if.then35

if.end31.if.end46_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end46

if.then35:                                        ; preds = %if.end31
  %essid_len = getelementptr inbounds %struct.iw_scan_req, ptr %b, i32 0, i32 1
  %22 = ptrtoint ptr %essid_len to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %essid_len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool36.not = icmp eq i8 %23, 0
  br i1 %tobool36.not, label %if.then35.if.end46_crit_edge, label %if.then37

if.then35.if.end46_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end46

if.then37:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #14
  %24 = tail call i8 @llvm.umin.i8(i8 %23, i8 32)
  %cond = zext i8 %24 to i32
  %ssid_len = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 89, i32 3
  %25 = ptrtoint ptr %ssid_len to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %ssid_len, align 8
  %ssid = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 89, i32 2
  %essid = getelementptr inbounds %struct.iw_scan_req, ptr %b, i32 0, i32 5
  %26 = call ptr @memcpy(ptr %ssid, ptr %essid, i32 %cond)
  br label %if.end46

if.end46:                                         ; preds = %if.then37, %if.then35.if.end46_crit_edge, %if.end31.if.end46_crit_edge
  %wx_mutex = getelementptr i8, ptr %dev, i32 32240
  tail call void @mutex_lock_nested(ptr noundef %wx_mutex, i32 noundef 0) #12
  %27 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %rtllib, align 8
  %FirstIe_InScan = getelementptr inbounds %struct.rtllib_device, ptr %28, i32 0, i32 20
  %29 = ptrtoint ptr %FirstIe_InScan to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %FirstIe_InScan, align 1
  %30 = load ptr, ptr %rtllib, align 8
  %state49 = getelementptr inbounds %struct.rtllib_device, ptr %30, i32 0, i32 90
  %31 = ptrtoint ptr %state49 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %state49, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %32)
  %cmp50.not = icmp eq i32 %32, 5
  br i1 %cmp50.not, label %if.else, label %if.then52

if.then52:                                        ; preds = %if.end46
  %PowerSaveControl = getelementptr inbounds %struct.rtllib_device, ptr %30, i32 0, i32 158
  %33 = ptrtoint ptr %PowerSaveControl to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %PowerSaveControl, align 4, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool54.not = icmp ne i8 %34, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp56 = icmp eq i32 %14, 2
  %or.cond162 = select i1 %tobool54.not, i1 %cmp56, i1 false
  br i1 %or.cond162, label %if.then58, label %if.then52.if.end78_crit_edge

if.then52.if.end78_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end78

if.then58:                                        ; preds = %if.then52
  %RfOffReason = getelementptr inbounds %struct.rtllib_device, ptr %30, i32 0, i32 24
  %35 = ptrtoint ptr %RfOffReason to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %RfOffReason, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %36)
  %cmp60 = icmp ugt i32 %36, 268435456
  br i1 %cmp60, label %if.then62, label %do.body

if.then62:                                        ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %dev, ptr noundef nonnull @.str, ptr noundef nonnull @__func__._rtl92e_wx_set_scan) #15
  tail call void @mutex_unlock(ptr noundef %wx_mutex) #12
  br label %cleanup

do.body:                                          ; preds = %if.then58
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %37 = load i32, ptr @rt_global_debug_component, align 4
  %and65 = and i32 %37, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65)
  %tobool66.not = icmp eq i32 %and65, 0
  br i1 %tobool66.not, label %do.body.do.end73_crit_edge, label %do.end

do.body.do.end73_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end73

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %call70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__._rtl92e_wx_set_scan) #15
  br label %do.end73

do.end73:                                         ; preds = %do.end, %do.body.do.end73_crit_edge
  %38 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rtllib, align 8
  %ips_mutex = getelementptr inbounds %struct.rtllib_device, ptr %39, i32 0, i32 123
  tail call void @mutex_lock_nested(ptr noundef %ips_mutex, i32 noundef 0) #12
  tail call void @rtl92e_ips_leave(ptr noundef %dev) #12
  %40 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %rtllib, align 8
  %ips_mutex76 = getelementptr inbounds %struct.rtllib_device, ptr %41, i32 0, i32 123
  tail call void @mutex_unlock(ptr noundef %ips_mutex76) #12
  br label %if.end78

if.end78:                                         ; preds = %do.end73, %if.then52.if.end78_crit_edge
  %42 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %rtllib, align 8
  tail call void @rtllib_stop_scan(ptr noundef %43) #12
  %44 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %rtllib, align 8
  %LedControlHandler = getelementptr inbounds %struct.rtllib_device, ptr %45, i32 0, i32 202
  %46 = ptrtoint ptr %LedControlHandler to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %LedControlHandler, align 4
  %tobool81.not = icmp eq ptr %47, null
  br i1 %tobool81.not, label %if.end78.if.end85_crit_edge, label %if.then82

if.end78.if.end85_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end85

if.then82:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %47(ptr noundef %dev, i32 noundef 6) #12
  br label %if.end85

if.end85:                                         ; preds = %if.then82, %if.end78.if.end85_crit_edge
  %48 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %rtllib, align 8
  %eRFPowerState87 = getelementptr inbounds %struct.rtllib_device, ptr %49, i32 0, i32 23
  %50 = ptrtoint ptr %eRFPowerState87 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %eRFPowerState87, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %51)
  %cmp88.not = icmp eq i32 %51, 2
  br i1 %cmp88.not, label %if.end85.if.end109_crit_edge, label %if.then90

if.end85.if.end109_crit_edge:                     ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end109

if.then90:                                        ; preds = %if.end85
  %actscanning = getelementptr inbounds %struct.rtllib_device, ptr %49, i32 0, i32 19
  %52 = ptrtoint ptr %actscanning to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 1, ptr %actscanning, align 8
  %ScanOperationBackupHandler = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 201
  %53 = ptrtoint ptr %ScanOperationBackupHandler to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ScanOperationBackupHandler, align 8
  %tobool92.not = icmp eq ptr %54, null
  br i1 %tobool92.not, label %if.then90.if.end96_crit_edge, label %if.then93

if.then90.if.end96_crit_edge:                     ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end96

if.then93:                                        ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #14
  %dev95 = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 1
  %55 = ptrtoint ptr %dev95 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev95, align 4
  tail call void %54(ptr noundef %56, i8 noundef zeroext 0) #12
  br label %if.end96

if.end96:                                         ; preds = %if.then93, %if.then90.if.end96_crit_edge
  %57 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %rtllib, align 8
  tail call void @rtllib_start_scan_syncro(ptr noundef %58, i8 noundef zeroext 0) #12
  %59 = ptrtoint ptr %ScanOperationBackupHandler to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ScanOperationBackupHandler, align 8
  %tobool99.not = icmp eq ptr %60, null
  br i1 %tobool99.not, label %if.end96.if.end109_crit_edge, label %if.then100

if.end96.if.end109_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end109

if.then100:                                       ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #14
  %dev102 = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 1
  %61 = ptrtoint ptr %dev102 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev102, align 4
  tail call void %60(ptr noundef %62, i8 noundef zeroext 1) #12
  br label %if.end109

if.else:                                          ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #14
  %actscanning106 = getelementptr inbounds %struct.rtllib_device, ptr %30, i32 0, i32 19
  %63 = ptrtoint ptr %actscanning106 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 1, ptr %actscanning106, align 8
  %64 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %rtllib, align 8
  %call108 = tail call i32 @rtllib_wx_set_scan(ptr noundef %65, ptr noundef %a, ptr noundef %wrqu, ptr noundef %b) #12
  br label %if.end109

if.end109:                                        ; preds = %if.else, %if.then100, %if.end96.if.end109_crit_edge, %if.end85.if.end109_crit_edge
  %ret.0 = phi i32 [ %call108, %if.else ], [ 0, %if.end96.if.end109_crit_edge ], [ 0, %if.then100 ], [ 0, %if.end85.if.end109_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %wx_mutex) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end109, %if.then62, %if.end24.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %if.then19, %land.lhs.true10.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then19 ], [ -1, %if.then62 ], [ %ret.0, %if.end109 ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %land.lhs.true10.cleanup_crit_edge ], [ -100, %if.end20.cleanup_crit_edge ], [ -11, %if.end24.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_rtl92e_wx_get_scan(ptr noundef %dev, ptr noundef %a, ptr noundef %wrqu, ptr noundef %b) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %up = getelementptr i8, ptr %dev, i32 30794
  %0 = ptrtoint ptr %up to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %up, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %bHwRadioOff = getelementptr i8, ptr %dev, i32 35740
  %2 = ptrtoint ptr %bHwRadioOff to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bHwRadioOff, align 8, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %wx_mutex = getelementptr i8, ptr %dev, i32 32240
  tail call void @mutex_lock_nested(ptr noundef %wx_mutex, i32 noundef 0) #12
  %rtllib = getelementptr i8, ptr %dev, i32 31316
  %4 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rtllib, align 8
  %call4 = tail call i32 @rtllib_wx_get_scan(ptr noundef %5, ptr noundef %a, ptr noundef %wrqu, ptr noundef %b) #12
  tail call void @mutex_unlock(ptr noundef %wx_mutex) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end3 ], [ -100, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_rtl92e_wx_set_essid(ptr noundef %dev, ptr noundef %a, ptr noundef %wrqu, ptr noundef %b) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %bHwRadioOff = getelementptr i8, ptr %dev, i32 35740
  %0 = ptrtoint ptr %bHwRadioOff to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bHwRadioOff, align 8, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__._rtl92e_wx_set_essid) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %wx_mutex = getelementptr i8, ptr %dev, i32 32240
  tail call void @mutex_lock_nested(ptr noundef %wx_mutex, i32 noundef 0) #12
  %rtllib = getelementptr i8, ptr %dev, i32 31316
  %2 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rtllib, align 8
  %call1 = tail call i32 @rtllib_wx_set_essid(ptr noundef %3, ptr noundef %a, ptr noundef %wrqu, ptr noundef %b) #12
  tail call void @mutex_unlock(ptr noundef %wx_mutex) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_rtl92e_wx_get_essid(ptr noundef %dev, ptr noundef %a, ptr noundef %wrqu, ptr noundef %b) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %wx_mutex = getelementptr i8, ptr %dev, i32 32240
  tail call void @mutex_lock_nested(ptr noundef %wx_mutex, i32 noundef 0) #12
  %rtllib = getelementptr i8, ptr %dev, i32 31316
  %0 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rtllib, align 8
  %call1 = tail call i32 @rtllib_wx_get_essid(ptr noundef %1, ptr noundef %a, ptr noundef %wrqu, ptr noundef %b) #12
  tail call void @mutex_unlock(ptr noundef %wx_mutex) #12
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_rtl92e_wx_set_nick(ptr noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef %wrqu, ptr nocapture noundef readonly %extra) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %length = getelementptr inbounds %struct.iw_point, ptr %wrqu, i32 0, i32 1
  %0 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %1)
  %cmp = icmp ugt i16 %1, 32
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %wx_mutex = getelementptr i8, ptr %dev, i32 32240
  tail call void @mutex_lock_nested(ptr noundef %wx_mutex, i32 noundef 0) #12
  %2 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %length, align 4
  %4 = tail call i16 @llvm.umin.i16(i16 %3, i16 33)
  %5 = ptrtoint ptr %length to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %length, align 4
  %nick = getelementptr i8, ptr %dev, i32 35823
  %6 = call ptr @memset(ptr %nick, i32 0, i32 33)
  %7 = load i16, ptr %length, align 4
  %conv11 = zext i16 %7 to i32
  %8 = call ptr @memcpy(ptr %nick, ptr %extra, i32 %conv11)
  tail call void @mutex_unlock(ptr noundef %wx_mutex) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -7, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_rtl92e_wx_get_nick(ptr noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef writeonly %wrqu, ptr nocapture noundef writeonly %extra) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %wx_mutex = getelementptr i8, ptr %dev, i32 32240
  tail call void @mutex_lock_nested(ptr noundef %wx_mutex, i32 noundef 0) #12
  %nick = getelementptr i8, ptr %dev, i32 35823
  %call1 = tail call i32 @strlen(ptr noundef %nick) #16
  %conv = trunc i32 %call1 to i16
  %length = getelementptr inbounds %struct.iw_point, ptr %wrqu, i32 0, i32 1
  %0 = ptrtoint ptr %length to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 %conv, ptr %length, align 4
  %conv5 = and i32 %call1, 65535
  %1 = call ptr @memcpy(ptr %extra, ptr %nick, i32 %conv5)
  %flags = getelementptr inbounds %struct.iw_point, ptr %wrqu, i32 0, i32 2
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 1, ptr %flags, align 2
  tail call void @mutex_unlock(ptr noundef %wx_mutex) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_rtl92e_wx_set_rate(ptr noundef %dev, ptr noundef %info, ptr noundef %wrqu, ptr noundef %extra) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %bHwRadioOff = getelementptr i8, ptr %dev, i32 35740
  %0 = ptrtoint ptr %bHwRadioOff to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bHwRadioOff, align 8, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %wx_mutex = getelementptr i8, ptr %dev, i32 32240
  tail call void @mutex_lock_nested(ptr noundef %wx_mutex, i32 noundef 0) #12
  %rtllib = getelementptr i8, ptr %dev, i32 31316
  %2 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rtllib, align 8
  %call1 = tail call i32 @rtllib_wx_set_rate(ptr noundef %3, ptr noundef %info, ptr noundef %wrqu, ptr noundef %extra) #12
  tail call void @mutex_unlock(ptr noundef %wx_mutex) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_rtl92e_wx_get_rate(ptr nocapture noundef readonly %dev, ptr noundef %info, ptr noundef %wrqu, ptr noundef %extra) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %rtllib = getelementptr i8, ptr %dev, i32 31316
  %0 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rtllib, align 8
  %call1 = tail call i32 @rtllib_wx_get_rate(ptr noundef %1, ptr noundef %info, ptr noundef %wrqu, ptr noundef %extra) #12
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_rtl92e_wx_set_rts(ptr noundef %dev, ptr noundef %info, ptr noundef %wrqu, ptr noundef %extra) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %bHwRadioOff = getelementptr i8, ptr %dev, i32 35740
  %0 = ptrtoint ptr %bHwRadioOff to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bHwRadioOff, align 8, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %wx_mutex = getelementptr i8, ptr %dev, i32 32240
  tail call void @mutex_lock_nested(ptr noundef %wx_mutex, i32 noundef 0) #12
  %rtllib = getelementptr i8, ptr %dev, i32 31316
  %2 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rtllib, align 8
  %call1 = tail call i32 @rtllib_wx_set_rts(ptr noundef %3, ptr noundef %info, ptr noundef %wrqu, ptr noundef %extra) #12
  tail call void @mutex_unlock(ptr noundef %wx_mutex) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_rtl92e_wx_get_rts(ptr nocapture noundef readonly %dev, ptr noundef %info, ptr noundef %wrqu, ptr noundef %extra) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %rtllib = getelementptr i8, ptr %dev, i32 31316
  %0 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rtllib, align 8
  %call1 = tail call i32 @rtllib_wx_get_rts(ptr noundef %1, ptr noundef %info, ptr noundef %wrqu, ptr noundef %extra) #12
  ret i32 %call1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @_rtl92e_wx_set_frag(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readonly %wrqu, ptr nocapture noundef readnone %extra) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %bHwRadioOff = getelementptr i8, ptr %dev, i32 35740
  %0 = ptrtoint ptr %bHwRadioOff to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bHwRadioOff, align 8, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %disabled = getelementptr inbounds %struct.iw_param, ptr %wrqu, i32 0, i32 2
  %2 = ptrtoint ptr %disabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %disabled, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %if.else, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.else:                                          ; preds = %if.end
  %4 = ptrtoint ptr %wrqu to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %wrqu, align 4
  %6 = add i32 %5, -2347
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2091, i32 %6)
  %7 = icmp ult i32 %6, -2091
  br i1 %7, label %if.else.cleanup_crit_edge, label %if.end6

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end6:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %8 = trunc i32 %5 to i16
  %conv = and i16 %8, -2
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end6, %if.end.cleanup.sink.split_crit_edge
  %.sink = phi i16 [ %conv, %if.end6 ], [ 2342, %if.end.cleanup.sink.split_crit_edge ]
  %rtllib = getelementptr i8, ptr %dev, i32 31316
  %9 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rtllib, align 8
  %fts = getelementptr inbounds %struct.rtllib_device, ptr %10, i32 0, i32 86
  %11 = ptrtoint ptr %fts to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %.sink, ptr %fts, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.else.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -22, %if.else.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @_rtl92e_wx_get_frag(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef writeonly %wrqu, ptr nocapture noundef readnone %extra) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %rtllib = getelementptr i8, ptr %dev, i32 31316
  %0 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rtllib, align 8
  %fts = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 86
  %2 = ptrtoint ptr %fts to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %fts, align 4
  %conv = zext i16 %3 to i32
  %4 = ptrtoint ptr %wrqu to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv, ptr %wrqu, align 4
  %fixed = getelementptr inbounds %struct.iw_param, ptr %wrqu, i32 0, i32 1
  %5 = ptrtoint ptr %fixed to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %fixed, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2342, i16 %3)
  %cmp = icmp eq i16 %3, 2342
  %conv3 = zext i1 %cmp to i8
  %disabled = getelementptr inbounds %struct.iw_param, ptr %wrqu, i32 0, i32 2
  %6 = ptrtoint ptr %disabled to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv3, ptr %disabled, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_rtl92e_wx_set_retry(ptr noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readonly %wrqu, ptr nocapture noundef readnone %extra) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %bHwRadioOff = getelementptr i8, ptr %dev, i32 35740
  %0 = ptrtoint ptr %bHwRadioOff to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bHwRadioOff, align 8, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %wx_mutex = getelementptr i8, ptr %dev, i32 32240
  tail call void @mutex_lock_nested(ptr noundef %wx_mutex, i32 noundef 0) #12
  %flags = getelementptr inbounds %struct.iw_param, ptr %wrqu, i32 0, i32 3
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %flags, align 2
  %conv = zext i16 %3 to i32
  %and = and i32 %conv, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %lor.lhs.false, label %if.end.exit_crit_edge

if.end.exit_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

lor.lhs.false:                                    ; preds = %if.end
  %disabled = getelementptr inbounds %struct.iw_param, ptr %wrqu, i32 0, i32 2
  %4 = ptrtoint ptr %disabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %disabled, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool3.not = icmp ne i8 %5, 0
  %and8 = and i32 %conv, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  %or.cond = select i1 %tobool3.not, i1 true, i1 %tobool9.not
  br i1 %or.cond, label %lor.lhs.false.exit_crit_edge, label %if.end11

lor.lhs.false.exit_crit_edge:                     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

if.end11:                                         ; preds = %lor.lhs.false
  %6 = ptrtoint ptr %wrqu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %wrqu, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %7)
  %cmp = icmp sgt i32 %7, 255
  br i1 %cmp, label %if.end11.exit_crit_edge, label %if.end14

if.end11.exit_crit_edge:                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit

if.end14:                                         ; preds = %if.end11
  %and17 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  %conv23 = trunc i32 %7 to i8
  br i1 %tobool18.not, label %if.else, label %if.then19

if.then19:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  %retry_rts = getelementptr i8, ptr %dev, i32 35017
  %8 = ptrtoint ptr %retry_rts to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv23, ptr %retry_rts, align 1
  br label %if.end24

if.else:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  %retry_data = getelementptr i8, ptr %dev, i32 35016
  %9 = ptrtoint ptr %retry_data to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv23, ptr %retry_data, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.then19
  tail call void @rtl92e_commit(ptr noundef %dev) #12
  br label %exit

exit:                                             ; preds = %if.end24, %if.end11.exit_crit_edge, %lor.lhs.false.exit_crit_edge, %if.end.exit_crit_edge
  %err.0 = phi i32 [ 0, %if.end24 ], [ -22, %lor.lhs.false.exit_crit_edge ], [ -22, %if.end.exit_crit_edge ], [ -22, %if.end11.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %wx_mutex) #12
  br label %cleanup

cleanup:                                          ; preds = %exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %exit ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @_rtl92e_wx_get_retry(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef %wrqu, ptr nocapture noundef readnone %extra) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %disabled = getelementptr inbounds %struct.iw_param, ptr %wrqu, i32 0, i32 2
  %0 = ptrtoint ptr %disabled to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %disabled, align 1
  %flags = getelementptr inbounds %struct.iw_param, ptr %wrqu, i32 0, i32 3
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %flags, align 2
  %conv = zext i16 %2 to i32
  %and = and i32 %conv, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %and)
  %cmp = icmp eq i32 %and, 8192
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %and4 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool.not = icmp eq i32 %and4, 0
  %. = select i1 %tobool.not, i16 4097, i16 4098
  %.20 = select i1 %tobool.not, i32 35016, i32 35017
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %., ptr %flags, align 2
  %retry_data = getelementptr i8, ptr %dev, i32 %.20
  %4 = ptrtoint ptr %retry_data to i32
  call void @__asan_load1_noabort(i32 %4)
  %storemerge.in = load i8, ptr %retry_data, align 1
  %storemerge = zext i8 %storemerge.in to i32
  %5 = ptrtoint ptr %wrqu to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %storemerge, ptr %wrqu, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_rtl92e_wx_set_enc(ptr noundef %dev, ptr noundef %info, ptr noundef %wrqu, ptr noundef %key) #1 align 64 {
entry:
  %hwkey = alloca [4 x i32], align 4
  %zero_addr = alloca [4 x [6 x i8]], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %rtllib = getelementptr i8, ptr %dev, i32 31316
  %0 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rtllib, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %hwkey) #12
  %2 = call ptr @memset(ptr %hwkey, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %zero_addr) #12
  %3 = call ptr @memcpy(ptr %zero_addr, ptr @__const._rtl92e_wx_set_enc.zero_addr, i32 24)
  %bHwRadioOff = getelementptr i8, ptr %dev, i32 35740
  %4 = ptrtoint ptr %bHwRadioOff to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bHwRadioOff, align 8, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %up = getelementptr i8, ptr %dev, i32 30794
  %6 = ptrtoint ptr %up to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %up, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool1.not = icmp eq i16 %7, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %wx_set_enc = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 26
  %8 = ptrtoint ptr %wx_set_enc to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %wx_set_enc, align 1
  %9 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rtllib, align 8
  %ips_mutex = getelementptr inbounds %struct.rtllib_device, ptr %10, i32 0, i32 123
  tail call void @mutex_lock_nested(ptr noundef %ips_mutex, i32 noundef 0) #12
  tail call void @rtl92e_ips_leave(ptr noundef %dev) #12
  %11 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rtllib, align 8
  %ips_mutex7 = getelementptr inbounds %struct.rtllib_device, ptr %12, i32 0, i32 123
  tail call void @mutex_unlock(ptr noundef %ips_mutex7) #12
  %wx_mutex = getelementptr i8, ptr %dev, i32 32240
  tail call void @mutex_lock_nested(ptr noundef %wx_mutex, i32 noundef 0) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %13 = load i32, ptr @rt_global_debug_component, align 4
  %and = and i32 %13, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %if.end3.do.end14_crit_edge, label %do.end

if.end3.do.end14_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end14

do.end:                                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #15
  br label %do.end14

do.end14:                                         ; preds = %do.end, %if.end3.do.end14_crit_edge
  %14 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rtllib, align 8
  %call16 = tail call i32 @rtllib_wx_set_encode(ptr noundef %15, ptr noundef %info, ptr noundef %wrqu, ptr noundef %key) #12
  tail call void @mutex_unlock(ptr noundef %wx_mutex) #12
  %flags = getelementptr inbounds %struct.iw_point, ptr %wrqu, i32 0, i32 2
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %flags, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %17)
  %tobool19.not = icmp sgt i16 %17, -1
  br i1 %tobool19.not, label %if.end22, label %if.then20

if.then20:                                        ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #14
  %group_key_type = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 80
  %18 = ptrtoint ptr %group_key_type to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 0, ptr %group_key_type, align 4
  %pairwise_key_type = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 79
  %19 = ptrtoint ptr %pairwise_key_type to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 0, ptr %pairwise_key_type, align 2
  tail call void @rtl92e_cam_reset(ptr noundef %dev) #12
  %20 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rtllib, align 8
  %swcamtable = getelementptr inbounds %struct.rtllib_device, ptr %21, i32 0, i32 82
  %22 = call ptr @memset(ptr %swcamtable, i32 0, i32 896)
  br label %end_hw_sec

if.end22:                                         ; preds = %do.end14
  %length = getelementptr inbounds %struct.iw_point, ptr %wrqu, i32 0, i32 1
  %23 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %cmp.not = icmp eq i16 %24, 0
  br i1 %cmp.not, label %if.end22.end_hw_sec_crit_edge, label %if.end52.3

if.end22.end_hw_sec_crit_edge:                    ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %end_hw_sec

if.end52.3:                                       ; preds = %if.end22
  %25 = ptrtoint ptr %key to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %key, align 1
  %and30 = zext i8 %26 to i32
  %27 = ptrtoint ptr %hwkey to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %hwkey, align 4
  %or = or i32 %28, %and30
  %arrayidx55 = getelementptr i8, ptr %key, i32 1
  %29 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx55, align 1
  %and58 = zext i8 %30 to i32
  %shl = shl nuw nsw i32 %and58, 8
  %or60 = or i32 %shl, %or
  %arrayidx63 = getelementptr i8, ptr %key, i32 2
  %31 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx63, align 1
  %and66 = zext i8 %32 to i32
  %shl67 = shl nuw nsw i32 %and66, 16
  %or69 = or i32 %shl67, %or60
  %arrayidx72 = getelementptr i8, ptr %key, i32 3
  %33 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx72, align 1
  %and75 = zext i8 %34 to i32
  %shl76 = shl nuw i32 %and75, 24
  %or78 = or i32 %shl76, %or69
  store i32 %or78, ptr %hwkey, align 4
  %arrayidx.1 = getelementptr i8, ptr %key, i32 4
  %35 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx.1, align 1
  %and30.1 = zext i8 %36 to i32
  %arrayidx31.1 = getelementptr inbounds [4 x i32], ptr %hwkey, i32 0, i32 1
  %37 = ptrtoint ptr %arrayidx31.1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx31.1, align 4
  %or.1 = or i32 %38, %and30.1
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %24)
  %cmp38.1 = icmp ne i16 %24, 5
  %spec.select.1 = sext i1 %cmp38.1 to i8
  %arrayidx55.1 = getelementptr i8, ptr %key, i32 5
  %39 = ptrtoint ptr %arrayidx55.1 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx55.1, align 1
  %and58175.1 = and i8 %40, %spec.select.1
  %and58.1 = zext i8 %and58175.1 to i32
  %shl.1 = shl nuw nsw i32 %and58.1, 8
  %or60.1 = or i32 %shl.1, %or.1
  %arrayidx63.1 = getelementptr i8, ptr %key, i32 6
  %41 = ptrtoint ptr %arrayidx63.1 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx63.1, align 1
  %and66176.1 = and i8 %42, %spec.select.1
  %and66.1 = zext i8 %and66176.1 to i32
  %shl67.1 = shl nuw nsw i32 %and66.1, 16
  %or69.1 = or i32 %shl67.1, %or60.1
  %arrayidx72.1 = getelementptr i8, ptr %key, i32 7
  %43 = ptrtoint ptr %arrayidx72.1 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx72.1, align 1
  %and75177.1 = and i8 %44, %spec.select.1
  %and75.1 = zext i8 %and75177.1 to i32
  %shl76.1 = shl nuw i32 %and75.1, 24
  %or78.1 = or i32 %shl76.1, %or69.1
  %45 = ptrtoint ptr %arrayidx31.1 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %or78.1, ptr %arrayidx31.1, align 4
  %arrayidx.2 = getelementptr i8, ptr %key, i32 8
  %46 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx.2, align 1
  %and30174.2 = and i8 %47, %spec.select.1
  %and30.2 = zext i8 %and30174.2 to i32
  %arrayidx31.2 = getelementptr inbounds [4 x i32], ptr %hwkey, i32 0, i32 2
  %48 = ptrtoint ptr %arrayidx31.2 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx31.2, align 4
  %or.2 = or i32 %49, %and30.2
  %arrayidx55.2 = getelementptr i8, ptr %key, i32 9
  %50 = ptrtoint ptr %arrayidx55.2 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx55.2, align 1
  %and58175.2 = and i8 %51, %spec.select.1
  %and58.2 = zext i8 %and58175.2 to i32
  %shl.2 = shl nuw nsw i32 %and58.2, 8
  %or60.2 = or i32 %shl.2, %or.2
  %arrayidx63.2 = getelementptr i8, ptr %key, i32 10
  %52 = ptrtoint ptr %arrayidx63.2 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx63.2, align 1
  %and66176.2 = and i8 %53, %spec.select.1
  %and66.2 = zext i8 %and66176.2 to i32
  %shl67.2 = shl nuw nsw i32 %and66.2, 16
  %or69.2 = or i32 %shl67.2, %or60.2
  %arrayidx72.2 = getelementptr i8, ptr %key, i32 11
  %54 = ptrtoint ptr %arrayidx72.2 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx72.2, align 1
  %and75177.2 = and i8 %55, %spec.select.1
  %and75.2 = zext i8 %and75177.2 to i32
  %shl76.2 = shl nuw i32 %and75.2, 24
  %or78.2 = or i32 %shl76.2, %or69.2
  store i32 %or78.2, ptr %arrayidx31.2, align 4
  %arrayidx.3 = getelementptr i8, ptr %key, i32 12
  %56 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx.3, align 1
  %and30174.3 = and i8 %57, %spec.select.1
  %and30.3 = zext i8 %and30174.3 to i32
  %arrayidx31.3 = getelementptr inbounds [4 x i32], ptr %hwkey, i32 0, i32 3
  %58 = ptrtoint ptr %arrayidx31.3 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx31.3, align 4
  %or.3 = or i32 %59, %and30.3
  call void @__sanitizer_cov_trace_const_cmp2(i16 13, i16 %24)
  %cmp49.3 = icmp eq i16 %24, 13
  %spec.select178.3 = select i1 %cmp49.3, i8 0, i8 %spec.select.1
  %arrayidx55.3 = getelementptr i8, ptr %key, i32 13
  %60 = ptrtoint ptr %arrayidx55.3 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx55.3, align 1
  %and58175.3 = and i8 %61, %spec.select178.3
  %and58.3 = zext i8 %and58175.3 to i32
  %shl.3 = shl nuw nsw i32 %and58.3, 8
  %or60.3 = or i32 %shl.3, %or.3
  %arrayidx63.3 = getelementptr i8, ptr %key, i32 14
  %62 = ptrtoint ptr %arrayidx63.3 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx63.3, align 1
  %and66176.3 = and i8 %63, %spec.select178.3
  %and66.3 = zext i8 %and66176.3 to i32
  %shl67.3 = shl nuw nsw i32 %and66.3, 16
  %or69.3 = or i32 %shl67.3, %or60.3
  %arrayidx72.3 = getelementptr i8, ptr %key, i32 15
  %64 = ptrtoint ptr %arrayidx72.3 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx72.3, align 1
  %and75177.3 = and i8 %65, %spec.select178.3
  %and75.3 = zext i8 %and75177.3 to i32
  %shl76.3 = shl nuw i32 %and75.3, 24
  %or78.3 = or i32 %shl76.3, %or69.3
  %66 = ptrtoint ptr %arrayidx31.3 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %or78.3, ptr %arrayidx31.3, align 4
  %trunc = trunc i16 %17 to i8
  %67 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %67, ptr @__sancov_gen_cov_switch_values.24)
  switch i8 %trunc, label %if.end52.3.sw.epilog_crit_edge [
    i8 0, label %sw.bb
    i8 4, label %sw.bb85
    i8 2, label %sw.bb83
    i8 3, label %sw.bb84
  ]

if.end52.3.sw.epilog_crit_edge:                   ; preds = %if.end52.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end52.3
  call void @__sanitizer_cov_trace_pc() #14
  %tx_keyidx = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 81, i32 3
  %68 = ptrtoint ptr %tx_keyidx to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %tx_keyidx, align 8
  br label %sw.epilog

sw.bb83:                                          ; preds = %if.end52.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb84:                                          ; preds = %if.end52.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb85:                                          ; preds = %if.end52.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb85, %sw.bb84, %sw.bb83, %sw.bb, %if.end52.3.sw.epilog_crit_edge
  %key_idx.0 = phi i32 [ 3, %sw.bb85 ], [ 2, %sw.bb84 ], [ 1, %sw.bb83 ], [ %69, %sw.bb ], [ 0, %if.end52.3.sw.epilog_crit_edge ]
  %70 = zext i16 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %70, ptr @__sancov_gen_cov_switch_values.25)
  switch i16 %24, label %if.else108 [
    i16 5, label %if.then90
    i16 13, label %if.then96
  ]

if.then90:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  %pairwise_key_type91 = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 79
  %71 = ptrtoint ptr %pairwise_key_type91 to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 1, ptr %pairwise_key_type91, align 2
  tail call void @rtl92e_enable_hw_security_config(ptr noundef %dev) #12
  br label %end_hw_sec

if.then96:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  %pairwise_key_type97 = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 79
  %72 = ptrtoint ptr %pairwise_key_type97 to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 5, ptr %pairwise_key_type97, align 2
  tail call void @rtl92e_enable_hw_security_config(ptr noundef %dev) #12
  %conv98 = trunc i32 %key_idx.0 to i8
  %arrayidx100 = getelementptr [4 x [6 x i8]], ptr %zero_addr, i32 0, i32 %key_idx.0
  call void @rtl92e_set_key(ptr noundef %dev, i8 noundef zeroext %conv98, i8 noundef zeroext %conv98, i16 noundef zeroext 5, ptr noundef %arrayidx100, i8 noundef zeroext 0, ptr noundef nonnull %hwkey) #12
  call void @rtl92e_set_swcam(ptr noundef %dev, i8 noundef zeroext %conv98, i8 noundef zeroext %conv98, i16 noundef zeroext 5, ptr noundef %arrayidx100, i8 noundef zeroext 0, ptr noundef nonnull %hwkey, i8 noundef zeroext 0) #12
  br label %end_hw_sec

if.else108:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.8) #15
  br label %end_hw_sec

end_hw_sec:                                       ; preds = %if.else108, %if.then96, %if.then90, %if.end22.end_hw_sec_crit_edge, %if.then20
  %73 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %rtllib, align 8
  %wx_set_enc113 = getelementptr inbounds %struct.rtllib_device, ptr %74, i32 0, i32 26
  %75 = ptrtoint ptr %wx_set_enc113 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 0, ptr %wx_set_enc113, align 1
  br label %cleanup

cleanup:                                          ; preds = %end_hw_sec, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call16, %end_hw_sec ], [ 0, %entry.cleanup_crit_edge ], [ -100, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %zero_addr) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %hwkey) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_rtl92e_wx_get_enc(ptr nocapture noundef readonly %dev, ptr noundef %info, ptr noundef %wrqu, ptr noundef %key) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %rtllib = getelementptr i8, ptr %dev, i32 31316
  %0 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rtllib, align 8
  %call1 = tail call i32 @rtllib_wx_get_encode(ptr noundef %1, ptr noundef %info, ptr noundef %wrqu, ptr noundef %key) #12
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_rtl92e_wx_set_power(ptr noundef %dev, ptr noundef %info, ptr noundef %wrqu, ptr noundef %extra) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %bHwRadioOff = getelementptr i8, ptr %dev, i32 35740
  %0 = ptrtoint ptr %bHwRadioOff to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bHwRadioOff, align 8, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %dev, ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__._rtl92e_wx_set_power) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %wx_mutex = getelementptr i8, ptr %dev, i32 32240
  tail call void @mutex_lock_nested(ptr noundef %wx_mutex, i32 noundef 0) #12
  %rtllib = getelementptr i8, ptr %dev, i32 31316
  %2 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rtllib, align 8
  %call1 = tail call i32 @rtllib_wx_set_power(ptr noundef %3, ptr noundef %info, ptr noundef %wrqu, ptr noundef %extra) #12
  tail call void @mutex_unlock(ptr noundef %wx_mutex) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_rtl92e_wx_get_power(ptr nocapture noundef readonly %dev, ptr noundef %info, ptr noundef %wrqu, ptr noundef %extra) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %rtllib = getelementptr i8, ptr %dev, i32 31316
  %0 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rtllib, align 8
  %call1 = tail call i32 @rtllib_wx_get_power(ptr noundef %1, ptr noundef %info, ptr noundef %wrqu, ptr noundef %extra) #12
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_rtl92e_wx_set_gen_ie(ptr noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readonly %data, ptr noundef %extra) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %bHwRadioOff = getelementptr i8, ptr %dev, i32 35740
  %0 = ptrtoint ptr %bHwRadioOff to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bHwRadioOff, align 8, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %wx_mutex = getelementptr i8, ptr %dev, i32 32240
  tail call void @mutex_lock_nested(ptr noundef %wx_mutex, i32 noundef 0) #12
  %rtllib = getelementptr i8, ptr %dev, i32 31316
  %2 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rtllib, align 8
  %length = getelementptr inbounds %struct.iw_point, ptr %data, i32 0, i32 1
  %4 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %length, align 4
  %conv = zext i16 %5 to i32
  %call1 = tail call i32 @rtllib_wx_set_gen_ie(ptr noundef %3, ptr noundef %extra, i32 noundef %conv) #12
  tail call void @mutex_unlock(ptr noundef %wx_mutex) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @_rtl92e_wx_get_gen_ie(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef %data, ptr nocapture noundef writeonly %extra) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %rtllib = getelementptr i8, ptr %dev, i32 31316
  %0 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rtllib, align 8
  %wpa_ie_len = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 74
  %2 = ptrtoint ptr %wpa_ie_len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %wpa_ie_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %wpa_ie = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 75
  %4 = ptrtoint ptr %wpa_ie to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wpa_ie, align 8
  %cmp1 = icmp eq ptr %5, null
  br i1 %cmp1, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %length = getelementptr inbounds %struct.iw_point, ptr %data, i32 0, i32 1
  %6 = ptrtoint ptr %length to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %length, align 4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %length2 = getelementptr inbounds %struct.iw_point, ptr %data, i32 0, i32 1
  %7 = ptrtoint ptr %length2 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %length2, align 4
  %conv = zext i16 %8 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv)
  %cmp4 = icmp ugt i32 %3, %conv
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %conv9 = trunc i32 %3 to i16
  %9 = ptrtoint ptr %length2 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv9, ptr %length2, align 4
  %10 = ptrtoint ptr %wpa_ie to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wpa_ie, align 8
  %12 = ptrtoint ptr %wpa_ie_len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %wpa_ie_len, align 4
  %14 = call ptr @memcpy(ptr %extra, ptr %11, i32 %13)
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.end7 ], [ -7, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_rtl92e_wx_set_auth(ptr noundef %dev, ptr noundef %info, ptr noundef %data, ptr noundef %extra) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %bHwRadioOff = getelementptr i8, ptr %dev, i32 35740
  %0 = ptrtoint ptr %bHwRadioOff to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bHwRadioOff, align 8, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %wx_mutex = getelementptr i8, ptr %dev, i32 32240
  tail call void @mutex_lock_nested(ptr noundef %wx_mutex, i32 noundef 0) #12
  %rtllib = getelementptr i8, ptr %dev, i32 31316
  %2 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rtllib, align 8
  %call1 = tail call i32 @rtllib_wx_set_auth(ptr noundef %3, ptr noundef %info, ptr noundef %data, ptr noundef %extra) #12
  tail call void @mutex_unlock(ptr noundef %wx_mutex) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_rtl92e_wx_set_encode_ext(ptr noundef %dev, ptr noundef %info, ptr noundef %wrqu, ptr noundef %extra) #1 align 64 {
entry:
  %broadcast_addr = alloca [6 x i8], align 1
  %zero = alloca [6 x i8], align 1
  %key = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %rtllib = getelementptr i8, ptr %dev, i32 31316
  %0 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rtllib, align 8
  %bHwRadioOff = getelementptr i8, ptr %dev, i32 35740
  %2 = ptrtoint ptr %bHwRadioOff to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bHwRadioOff, align 8, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup111_crit_edge

entry.cleanup111_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup111

if.end:                                           ; preds = %entry
  %wx_mutex = getelementptr i8, ptr %dev, i32 32240
  tail call void @mutex_lock_nested(ptr noundef %wx_mutex, i32 noundef 0) #12
  %4 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rtllib, align 8
  %wx_set_enc = getelementptr inbounds %struct.rtllib_device, ptr %5, i32 0, i32 26
  %6 = ptrtoint ptr %wx_set_enc to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %wx_set_enc, align 1
  %7 = load ptr, ptr %rtllib, align 8
  %ips_mutex = getelementptr inbounds %struct.rtllib_device, ptr %7, i32 0, i32 123
  tail call void @mutex_lock_nested(ptr noundef %ips_mutex, i32 noundef 0) #12
  tail call void @rtl92e_ips_leave(ptr noundef %dev) #12
  %8 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rtllib, align 8
  %ips_mutex4 = getelementptr inbounds %struct.rtllib_device, ptr %9, i32 0, i32 123
  tail call void @mutex_unlock(ptr noundef %ips_mutex4) #12
  %call5 = tail call i32 @rtllib_wx_set_encode_ext(ptr noundef %1, ptr noundef %info, ptr noundef %wrqu, ptr noundef %extra) #12
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %broadcast_addr) #12
  %10 = call ptr @memset(ptr %broadcast_addr, i32 255, i32 6)
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %zero) #12
  %11 = call ptr @memset(ptr %zero, i32 0, i32 6)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %key) #12
  %flags = getelementptr inbounds %struct.iw_point, ptr %wrqu, i32 0, i32 2
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %flags, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %13)
  %tobool6.not = icmp sgt i16 %13, -1
  br i1 %tobool6.not, label %lor.lhs.false, label %if.end.if.then10_crit_edge

if.end.if.then10_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then10

lor.lhs.false:                                    ; preds = %if.end
  %alg7 = getelementptr inbounds %struct.iw_encode_ext, ptr %extra, i32 0, i32 4
  %14 = ptrtoint ptr %alg7 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %alg7, align 4
  %16 = zext i16 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.26)
  switch i16 %15, label %cond.false [
    i16 0, label %lor.lhs.false.if.then10_crit_edge
    i16 3, label %lor.lhs.false.cond.end_crit_edge
  ]

lor.lhs.false.cond.end_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

lor.lhs.false.if.then10_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then10

if.then10:                                        ; preds = %lor.lhs.false.if.then10_crit_edge, %if.end.if.then10_crit_edge
  %group_key_type = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 80
  %17 = ptrtoint ptr %group_key_type to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 0, ptr %group_key_type, align 4
  %pairwise_key_type = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 79
  %18 = ptrtoint ptr %pairwise_key_type to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 0, ptr %pairwise_key_type, align 2
  tail call void @rtl92e_cam_reset(ptr noundef %dev) #12
  %19 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rtllib, align 8
  %swcamtable = getelementptr inbounds %struct.rtllib_device, ptr %20, i32 0, i32 82
  %21 = call ptr @memset(ptr %swcamtable, i32 0, i32 896)
  br label %cleanup

cond.false:                                       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  %phi.cast = trunc i16 %15 to i8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %lor.lhs.false.cond.end_crit_edge
  %cond = phi i8 [ %phi.cast, %cond.false ], [ 4, %lor.lhs.false.cond.end_crit_edge ]
  %conv23 = trunc i16 %13 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv23)
  %tobool24.not = icmp eq i8 %conv23, 0
  %dec = add i8 %conv23, -1
  %spec.select = select i1 %tobool24.not, i8 0, i8 %dec
  %22 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %extra, align 4
  %conv28174 = and i32 %23, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv28174)
  %tobool29.not = icmp eq i32 %conv28174, 0
  br i1 %tobool29.not, label %cond.end.if.then37_crit_edge, label %lor.lhs.false30

cond.end.if.then37_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then37

lor.lhs.false30:                                  ; preds = %cond.end
  %iw_mode = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 56
  %24 = ptrtoint ptr %iw_mode to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %iw_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %cmp31 = icmp eq i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %cond)
  %cmp35 = icmp eq i8 %cond, 1
  %or.cond = select i1 %cmp31, i1 true, i1 %cmp35
  br i1 %or.cond, label %lor.lhs.false30.if.then37_crit_edge, label %lor.lhs.false30.if.end48_crit_edge

lor.lhs.false30.if.end48_crit_edge:               ; preds = %lor.lhs.false30
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end48

lor.lhs.false30.if.then37_crit_edge:              ; preds = %lor.lhs.false30
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then37

if.then37:                                        ; preds = %lor.lhs.false30.if.then37_crit_edge, %cond.end.if.then37_crit_edge
  %key_len = getelementptr inbounds %struct.iw_encode_ext, ptr %extra, i32 0, i32 5
  %26 = ptrtoint ptr %key_len to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %key_len, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 13, i16 %27)
  %cmp39 = icmp eq i16 %27, 13
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %cond)
  %cmp42 = icmp eq i8 %cond, 1
  %28 = select i1 %cmp39, i1 %cmp42, i1 false
  %alg.0 = select i1 %28, i8 5, i8 %cond
  %conv46 = zext i8 %alg.0 to i16
  %pairwise_key_type47 = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 79
  %29 = ptrtoint ptr %pairwise_key_type47 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv46, ptr %pairwise_key_type47, align 2
  tail call void @rtl92e_enable_hw_security_config(ptr noundef %dev) #12
  br label %if.end48

if.end48:                                         ; preds = %if.then37, %lor.lhs.false30.if.end48_crit_edge
  %alg.1 = phi i8 [ %alg.0, %if.then37 ], [ %cond, %lor.lhs.false30.if.end48_crit_edge ]
  %key50 = getelementptr inbounds %struct.iw_encode_ext, ptr %extra, i32 0, i32 6
  %30 = call ptr @memcpy(ptr %key, ptr %key50, i32 16)
  %31 = and i8 %alg.1, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool54.not = icmp eq i8 %31, 0
  br i1 %tobool54.not, label %if.end48.if.else_crit_edge, label %land.lhs.true55

if.end48.if.else_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true55:                                  ; preds = %if.end48
  %auth_mode = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 64
  %32 = ptrtoint ptr %auth_mode to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %auth_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %33)
  %cmp56.not = icmp eq i32 %33, 2
  br i1 %cmp56.not, label %land.lhs.true55.if.else_crit_edge, label %if.then58

land.lhs.true55.if.else_crit_edge:                ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.then58:                                        ; preds = %land.lhs.true55
  %key_len59 = getelementptr inbounds %struct.iw_encode_ext, ptr %extra, i32 0, i32 5
  %34 = ptrtoint ptr %key_len59 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %key_len59, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 13, i16 %35)
  %cmp61 = icmp eq i16 %35, 13
  br i1 %cmp61, label %if.then63, label %if.then58.if.end65_crit_edge

if.then58.if.end65_crit_edge:                     ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end65

if.then63:                                        ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #14
  %pairwise_key_type64 = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 79
  %36 = ptrtoint ptr %pairwise_key_type64 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 5, ptr %pairwise_key_type64, align 2
  br label %if.end65

if.end65:                                         ; preds = %if.then63, %if.then58.if.end65_crit_edge
  %alg.2 = phi i8 [ 5, %if.then63 ], [ %alg.1, %if.then58.if.end65_crit_edge ]
  %conv66 = zext i8 %alg.2 to i16
  call void @rtl92e_set_key(ptr noundef %dev, i8 noundef zeroext %spec.select, i8 noundef zeroext %spec.select, i16 noundef zeroext %conv66, ptr noundef nonnull %zero, i8 noundef zeroext 0, ptr noundef nonnull %key) #12
  call void @rtl92e_set_swcam(ptr noundef %dev, i8 noundef zeroext %spec.select, i8 noundef zeroext %spec.select, i16 noundef zeroext %conv66, ptr noundef nonnull %zero, i8 noundef zeroext 0, ptr noundef nonnull %key, i8 noundef zeroext 0) #12
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true55.if.else_crit_edge, %if.end48.if.else_crit_edge
  br i1 %tobool29.not, label %if.else82, label %if.then73

if.then73:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %conv74 = zext i8 %alg.1 to i16
  %group_key_type75 = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 80
  %37 = ptrtoint ptr %group_key_type75 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %conv74, ptr %group_key_type75, align 4
  call void @rtl92e_set_key(ptr noundef %dev, i8 noundef zeroext %spec.select, i8 noundef zeroext %spec.select, i16 noundef zeroext %conv74, ptr noundef nonnull %broadcast_addr, i8 noundef zeroext 0, ptr noundef nonnull %key) #12
  call void @rtl92e_set_swcam(ptr noundef %dev, i8 noundef zeroext %spec.select, i8 noundef zeroext %spec.select, i16 noundef zeroext %conv74, ptr noundef nonnull %broadcast_addr, i8 noundef zeroext 0, ptr noundef nonnull %key, i8 noundef zeroext 0) #12
  br label %cleanup

if.else82:                                        ; preds = %if.else
  %pairwise_key_type83 = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 79
  %38 = ptrtoint ptr %pairwise_key_type83 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %pairwise_key_type83, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %39)
  %cmp85 = icmp eq i16 %39, 4
  br i1 %cmp85, label %land.lhs.true87, label %if.else82.if.end91_crit_edge

if.else82.if.end91_crit_edge:                     ; preds = %if.else82
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end91

land.lhs.true87:                                  ; preds = %if.else82
  %pHTInfo = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 27
  %40 = ptrtoint ptr %pHTInfo to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pHTInfo, align 8
  %bCurrentHTSupport = getelementptr inbounds %struct.rt_hi_throughput, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %bCurrentHTSupport to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %bCurrentHTSupport, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool89.not = icmp eq i8 %43, 0
  br i1 %tobool89.not, label %land.lhs.true87.if.end91_crit_edge, label %if.then90

land.lhs.true87.if.end91_crit_edge:               ; preds = %land.lhs.true87
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end91

if.then90:                                        ; preds = %land.lhs.true87
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @rtl92e_writeb(ptr noundef %dev, i32 noundef 371, i8 noundef zeroext 1) #12
  br label %if.end91

if.end91:                                         ; preds = %if.then90, %land.lhs.true87.if.end91_crit_edge, %if.else82.if.end91_crit_edge
  %conv92 = zext i8 %alg.1 to i16
  %ap_mac_addr = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 78
  call void @rtl92e_set_key(ptr noundef %dev, i8 noundef zeroext 4, i8 noundef zeroext %spec.select, i16 noundef zeroext %conv92, ptr noundef %ap_mac_addr, i8 noundef zeroext 0, ptr noundef nonnull %key) #12
  call void @rtl92e_set_swcam(ptr noundef %dev, i8 noundef zeroext 4, i8 noundef zeroext %spec.select, i16 noundef zeroext %conv92, ptr noundef %ap_mac_addr, i8 noundef zeroext 0, ptr noundef nonnull %key, i8 noundef zeroext 0) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end91, %if.then73, %if.end65, %if.then10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %key) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %zero) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %broadcast_addr) #12
  %44 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %rtllib, align 8
  %wx_set_enc109 = getelementptr inbounds %struct.rtllib_device, ptr %45, i32 0, i32 26
  %46 = ptrtoint ptr %wx_set_enc109 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %wx_set_enc109, align 1
  call void @mutex_unlock(ptr noundef %wx_mutex) #12
  br label %cleanup111

cleanup111:                                       ; preds = %cleanup, %entry.cleanup111_crit_edge
  %retval.0 = phi i32 [ %call5, %cleanup ], [ 0, %entry.cleanup111_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtllib_wx_get_name(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtllib_wx_set_freq(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtllib_wx_get_freq(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92e_ips_leave(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtllib_wx_set_mode(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtllib_wx_get_mode(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtllib_wx_set_wap(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtllib_wx_get_wap(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtllib_wx_set_mlme(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtllib_stop_scan(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtllib_start_scan_syncro(ptr noundef, i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtllib_wx_set_scan(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtllib_wx_get_scan(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtllib_wx_set_essid(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtllib_wx_get_essid(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtllib_wx_set_rate(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtllib_wx_get_rate(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtllib_wx_set_rts(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtllib_wx_get_rts(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92e_commit(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtllib_wx_set_encode(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92e_cam_reset(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92e_enable_hw_security_config(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92e_set_key(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92e_set_swcam(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, ptr noundef, i8 noundef zeroext, ptr noundef, i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtllib_wx_get_encode(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtllib_wx_set_power(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtllib_wx_get_power(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtllib_wx_set_gen_ie(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtllib_wx_set_auth(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtllib_wx_set_encode_ext(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92e_writeb(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_rtl92e_wx_set_debug(ptr noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readnone %wrqu, ptr nocapture noundef readonly %extra) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %bHwRadioOff = getelementptr i8, ptr %dev, i32 35740
  %0 = ptrtoint ptr %bHwRadioOff to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bHwRadioOff, align 8, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %extra to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %extra, align 1
  %conv = zext i8 %3 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %4 = load i32, ptr @rt_global_debug_component, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__._rtl92e_wx_set_debug, i32 noundef %conv, i32 noundef %4) #15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp.not = icmp eq i8 %3, 0
  br i1 %cmp.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %shl = shl nuw i32 1, %conv
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %5 = load i32, ptr @rt_global_debug_component, align 4
  %or = or i32 %5, %shl
  br label %if.end5

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %6 = load i32, ptr @rt_global_debug_component, align 4
  %and = and i32 %6, -2147483648
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then3
  %storemerge = phi i32 [ %and, %if.else ], [ %or, %if.then3 ]
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  store i32 %storemerge, ptr @rt_global_debug_component, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @_rtl92e_wx_set_scan_type(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %aa, ptr nocapture noundef readnone %wrqu, ptr nocapture noundef readonly %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %bHwRadioOff = getelementptr i8, ptr %dev, i32 35740
  %0 = ptrtoint ptr %bHwRadioOff to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bHwRadioOff, align 8, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %p, align 4
  %conv = trunc i32 %3 to i16
  %rtllib = getelementptr i8, ptr %dev, i32 31316
  %4 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rtllib, align 8
  %active_scan = getelementptr inbounds %struct.rtllib_device, ptr %5, i32 0, i32 103
  %6 = ptrtoint ptr %active_scan to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv, ptr %active_scan, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_rtl92e_wx_set_rawtx(ptr noundef %dev, ptr noundef %info, ptr noundef %wrqu, ptr noundef %extra) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %bHwRadioOff = getelementptr i8, ptr %dev, i32 35740
  %0 = ptrtoint ptr %bHwRadioOff to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bHwRadioOff, align 8, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %wx_mutex = getelementptr i8, ptr %dev, i32 32240
  tail call void @mutex_lock_nested(ptr noundef %wx_mutex, i32 noundef 0) #12
  %rtllib = getelementptr i8, ptr %dev, i32 31316
  %2 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rtllib, align 8
  %call1 = tail call i32 @rtllib_wx_set_rawtx(ptr noundef %3, ptr noundef %info, ptr noundef %wrqu, ptr noundef %extra) #12
  tail call void @mutex_unlock(ptr noundef %wx_mutex) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_rtl92e_wx_force_reset(ptr noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readnone %wrqu, ptr nocapture noundef readonly %extra) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %wx_mutex = getelementptr i8, ptr %dev, i32 32240
  tail call void @mutex_lock_nested(ptr noundef %wx_mutex, i32 noundef 0) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %0 = load i32, ptr @rt_global_debug_component, align 4
  %and = and i32 %0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %1 = ptrtoint ptr %extra to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %extra, align 1
  %conv = zext i8 %2 to i32
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef %conv) #15
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %3 = ptrtoint ptr %extra to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %extra, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool5 = icmp ne i8 %4, 0
  %force_reset = getelementptr i8, ptr %dev, i32 36215
  %frombool = zext i1 %tobool5 to i8
  %5 = ptrtoint ptr %force_reset to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %frombool, ptr %force_reset, align 1
  tail call void @mutex_unlock(ptr noundef %wx_mutex) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_rtl92e_wx_adapter_power_status(ptr noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readnone %wrqu, ptr nocapture noundef readonly %extra) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %rtllib = getelementptr i8, ptr %dev, i32 31316
  %0 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rtllib, align 8
  %wx_mutex = getelementptr i8, ptr %dev, i32 32240
  tail call void @mutex_lock_nested(ptr noundef %wx_mutex, i32 noundef 0) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %2 = load i32, ptr @rt_global_debug_component, align 4
  %and = and i32 %2, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end6_crit_edge, label %do.end

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %extra to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %extra, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %4)
  %cmp = icmp eq i8 %4, 6
  %cond = select i1 %cmp, ptr @.str.15, ptr @.str.16
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, ptr noundef nonnull %cond) #15
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %5 = ptrtoint ptr %extra to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %extra, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool8.not = icmp eq i8 %6, 0
  br i1 %tobool8.not, label %lor.lhs.false, label %do.end6.if.then11_crit_edge

do.end6.if.then11_crit_edge:                      ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11

lor.lhs.false:                                    ; preds = %do.end6
  %force_lps = getelementptr i8, ptr %dev, i32 36216
  %7 = ptrtoint ptr %force_lps to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %force_lps, align 4, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool9.not = icmp eq i8 %8, 0
  br i1 %tobool9.not, label %if.else, label %lor.lhs.false.if.then11_crit_edge

lor.lhs.false.if.then11_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11

if.then11:                                        ; preds = %lor.lhs.false.if.then11_crit_edge, %do.end6.if.then11_crit_edge
  %ps_force = getelementptr i8, ptr %dev, i32 35801
  %9 = ptrtoint ptr %ps_force to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %ps_force, align 1
  %bLeisurePs = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 158, i32 5
  %10 = ptrtoint ptr %bLeisurePs to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %bLeisurePs, align 4
  br label %if.end20

if.else:                                          ; preds = %lor.lhs.false
  %11 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rtllib, align 8
  %state = getelementptr inbounds %struct.rtllib_device, ptr %12, i32 0, i32 90
  %13 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %14)
  %cmp13 = icmp eq i32 %14, 5
  br i1 %cmp13, label %if.then15, label %if.else.if.end16_crit_edge

if.else.if.end16_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16

if.then15:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @rtl92e_leisure_ps_leave(ptr noundef %dev) #12
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.else.if.end16_crit_edge
  %ps_force17 = getelementptr i8, ptr %dev, i32 35801
  %15 = ptrtoint ptr %ps_force17 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %ps_force17, align 1
  %bLeisurePs18 = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 158, i32 5
  %16 = ptrtoint ptr %bLeisurePs18 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %bLeisurePs18, align 4
  %17 = ptrtoint ptr %extra to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %extra, align 1
  %conv19 = zext i8 %18 to i16
  %ps = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 109
  %19 = ptrtoint ptr %ps to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv19, ptr %ps, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.end16, %if.then11
  tail call void @mutex_unlock(ptr noundef %wx_mutex) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_rtl92e_wx_set_lps_awake_interval(ptr noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readnone %wrqu, ptr nocapture noundef readonly %extra) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %rtllib = getelementptr i8, ptr %dev, i32 31316
  %0 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rtllib, align 8
  %wx_mutex = getelementptr i8, ptr %dev, i32 32240
  tail call void @mutex_lock_nested(ptr noundef %wx_mutex, i32 noundef 0) #12
  %2 = ptrtoint ptr %extra to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %extra, align 1
  %conv = zext i8 %3 to i32
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__._rtl92e_wx_set_lps_awake_interval, i32 noundef %conv) #15
  %4 = ptrtoint ptr %extra to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %extra, align 1
  %RegMaxLPSAwakeIntvl = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 158, i32 7
  %6 = ptrtoint ptr %RegMaxLPSAwakeIntvl to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %RegMaxLPSAwakeIntvl, align 2
  tail call void @mutex_unlock(ptr noundef %wx_mutex) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_rtl92e_wx_set_force_lps(ptr noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readnone %wrqu, ptr nocapture noundef readonly %extra) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %wx_mutex = getelementptr i8, ptr %dev, i32 32240
  tail call void @mutex_lock_nested(ptr noundef %wx_mutex, i32 noundef 0) #12
  %0 = ptrtoint ptr %extra to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %extra, align 1
  %conv = zext i8 %1 to i32
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__._rtl92e_wx_set_force_lps, i32 noundef %conv) #15
  %2 = ptrtoint ptr %extra to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %extra, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool = icmp ne i8 %3, 0
  %force_lps = getelementptr i8, ptr %dev, i32 36216
  %frombool = zext i1 %tobool to i8
  %4 = ptrtoint ptr %force_lps to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %frombool, ptr %force_lps, align 4
  tail call void @mutex_unlock(ptr noundef %wx_mutex) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_rtl92e_wx_set_promisc_mode(ptr noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readonly %wrqu, ptr nocapture noundef readnone %extra) #1 align 64 {
entry:
  %info_buf = alloca [3 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %rtllib = getelementptr i8, ptr %dev, i32 31316
  %0 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rtllib, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %info_buf) #12
  %2 = ptrtoint ptr %info_buf to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %info_buf, align 4, !annotation !88
  %3 = getelementptr inbounds [3 x i32], ptr %info_buf, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !88
  %5 = getelementptr inbounds [3 x i32], ptr %info_buf, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4, !annotation !88
  %7 = ptrtoint ptr %wrqu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %wrqu, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.22, i32 noundef 156) #12
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i, label %entry.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.then11.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %9 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %8, i32 12, i32 -1226833920) #17, !srcloc !89
  %asmresult.i.i = extractvalue { i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !90

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %info_buf, i32 noundef 12) #12
  %10 = call i32 @llvm.read_register.i32(metadata !77) #12
  %and.i.i.i.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 4
  %12 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #9, !srcloc !91
  %and.i.i.i.i = and i32 %12, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #12, !srcloc !92
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !93
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %info_buf, ptr noundef %8, i32 noundef 12) #12
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #12, !srcloc !92
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !93
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !90

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %entry.if.then11.i.i_crit_edge
  %res.03.i.i = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 12, %entry.if.then11.i.i_crit_edge ], [ 12, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 12, %res.03.i.i
  %add.ptr.i.i = getelementptr i8, ptr %info_buf, i32 %sub.i.i
  %13 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.03.i.i)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %14 = ptrtoint ptr %info_buf to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %info_buf, align 4
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %3, align 4
  %18 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16711178, i32 %15)
  %cmp = icmp eq i32 %15, -16711178
  br i1 %cmp, label %if.then4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool5 = icmp ne i32 %17, 0
  %IntelPromiscuousModeInfo = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 58
  %frombool = zext i1 %tobool5 to i8
  %20 = ptrtoint ptr %IntelPromiscuousModeInfo to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %frombool, ptr %IntelPromiscuousModeInfo, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool8 = icmp ne i32 %19, 0
  %bFilterSourceStationFrame12 = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 58, i32 1
  %frombool13 = zext i1 %tobool8 to i8
  %21 = ptrtoint ptr %bFilterSourceStationFrame12 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %frombool13, ptr %bFilterSourceStationFrame12, align 1
  br i1 %tobool5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  call void @rtllib_EnableIntelPromiscuousMode(ptr noundef %dev, i1 noundef zeroext false) #12
  br label %cond.end

cond.false:                                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  call void @rtllib_DisableIntelPromiscuousMode(ptr noundef %dev, i1 noundef zeroext false) #12
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.19, ptr noundef nonnull @__func__._rtl92e_wx_set_promisc_mode, i32 noundef %17, i32 noundef %19) #15
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.end.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ 0, %cond.end ], [ -1, %if.end.cleanup_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %info_buf) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_rtl92e_wx_get_promisc_mode(ptr noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef writeonly %wrqu, ptr nocapture noundef %extra) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %rtllib = getelementptr i8, ptr %dev, i32 31316
  %0 = ptrtoint ptr %rtllib to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rtllib, align 8
  %wx_mutex = getelementptr i8, ptr %dev, i32 32240
  tail call void @mutex_lock_nested(ptr noundef %wx_mutex, i32 noundef 0) #12
  %IntelPromiscuousModeInfo = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 58
  %2 = ptrtoint ptr %IntelPromiscuousModeInfo to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %IntelPromiscuousModeInfo, align 1, !range !87
  %4 = zext i8 %3 to i32
  %bFilterSourceStationFrame = getelementptr inbounds %struct.rtllib_device, ptr %1, i32 0, i32 58, i32 1
  %5 = ptrtoint ptr %bFilterSourceStationFrame to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %bFilterSourceStationFrame, align 1, !range !87
  %7 = zext i8 %6 to i32
  %call4 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %extra, i32 noundef 45, ptr noundef nonnull @.str.23, i32 noundef %4, i32 noundef %7)
  %call5 = tail call i32 @strlen(ptr noundef %extra) #16
  %8 = trunc i32 %call5 to i16
  %conv6 = add i16 %8, 1
  %length = getelementptr inbounds %struct.iw_point, ptr %wrqu, i32 0, i32 1
  %9 = ptrtoint ptr %length to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv6, ptr %length, align 4
  tail call void @mutex_unlock(ptr noundef %wx_mutex) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtllib_wx_set_rawtx(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92e_leisure_ps_leave(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtllib_EnableIntelPromiscuousMode(ptr noundef, i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtllib_DisableIntelPromiscuousMode(ptr noundef, i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind readonly }
attributes #10 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nobuiltin }
attributes #17 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !19, !20, !21, !23, !25, !27, !28, !29, !30, !32, !34, !36, !38, !40, !42, !44, !45, !46, !47, !49, !50, !51, !52, !53, !54, !56, !58, !60, !62, !64, !66, !68, !69, !71, !73, !75}
!llvm.named.register.sp = !{!77}
!llvm.module.flags = !{!78, !79, !80, !81, !82, !83, !84, !85}
!llvm.ident = !{!86}

!0 = !{ptr @r8192_wx_handlers_def, !1, !"r8192_wx_handlers_def", i1 false, i1 false}
!1 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_wx.c", i32 1209, i32 29}
!2 = !{ptr @r8192_wx_handlers, !3, !"r8192_wx_handlers", i1 false, i1 false}
!3 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_wx.c", i32 1079, i32 19}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_wx.c", i32 263, i32 23}
!6 = !{ptr @__func__._rtl92e_wx_set_mode, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_wx.c", i32 264, i32 11}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_wx.c", i32 269, i32 10}
!10 = !{ptr @rtl8192_rates, !11, !"rtl8192_rates", i1 false, i1 false}
!11 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_wx.c", i32 12, i32 12}
!12 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_wx.c", i32 395, i32 20}
!14 = !{ptr @__func__._rtl92e_wx_set_scan, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_wx.c", i32 396, i32 8}
!16 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_wx.c", i32 430, i32 5}
!18 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @_rtl92e_wx_set_scan._entry, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @_rtl92e_wx_set_scan._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_wx.c", i32 497, i32 8}
!23 = !{ptr @__func__._rtl92e_wx_set_essid, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_wx.c", i32 498, i32 8}
!25 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_wx.c", i32 684, i32 2}
!27 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @_rtl92e_wx_set_enc._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @_rtl92e_wx_set_enc._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_wx.c", i32 740, i32 9}
!32 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_wx.c", i32 103, i32 20}
!34 = !{ptr @__func__._rtl92e_wx_set_power, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_wx.c", i32 104, i32 8}
!36 = !{ptr @r8192_private_handler, !37, !"r8192_private_handler", i1 false, i1 false}
!37 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_wx.c", i32 1154, i32 19}
!38 = !{ptr @.str.10, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_wx.c", i32 234, i32 19}
!40 = !{ptr @__func__._rtl92e_wx_set_debug, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_wx.c", i32 234, i32 60}
!42 = !{ptr @.str.11, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_wx.c", i32 152, i32 2}
!44 = !{ptr @.str.12, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @_rtl92e_wx_force_reset._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @_rtl92e_wx_force_reset._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.13, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_wx.c", i32 170, i32 2}
!49 = !{ptr @.str.14, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @_rtl92e_wx_adapter_power_status._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @_rtl92e_wx_adapter_power_status._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.15, !48, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.17, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_wx.c", i32 200, i32 19}
!56 = !{ptr @__func__._rtl92e_wx_set_lps_awake_interval, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_wx.c", i32 201, i32 7}
!58 = !{ptr @.str.18, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_wx.c", i32 217, i32 7}
!60 = !{ptr @__func__._rtl92e_wx_set_force_lps, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_wx.c", i32 218, i32 7}
!62 = !{ptr @.str.19, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_wx.c", i32 1049, i32 8}
!64 = !{ptr @__func__._rtl92e_wx_set_promisc_mode, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_wx.c", i32 1050, i32 8}
!66 = distinct !{null, !67, !"__already_done", i1 false, i1 false}
!67 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!68 = distinct !{null, !67, !"<string literal>", i1 false, i1 false}
!69 = distinct !{null, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!71 = !{ptr @.str.22, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!73 = !{ptr @.str.23, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_wx.c", i32 1068, i32 22}
!75 = !{ptr @r8192_private_args, !76, !"r8192_private_args", i1 false, i1 false}
!76 = !{!"../drivers/staging/rtl8192e/rtl8192e/rtl_wx.c", i32 1119, i32 34}
!77 = !{!"sp"}
!78 = !{i32 1, !"wchar_size", i32 2}
!79 = !{i32 1, !"min_enum_size", i32 4}
!80 = !{i32 8, !"branch-target-enforcement", i32 0}
!81 = !{i32 8, !"sign-return-address", i32 0}
!82 = !{i32 8, !"sign-return-address-all", i32 0}
!83 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!84 = !{i32 7, !"uwtable", i32 1}
!85 = !{i32 7, !"frame-pointer", i32 2}
!86 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!87 = !{i8 0, i8 2}
!88 = !{!"auto-init"}
!89 = !{i64 2153838325, i64 2153838350}
!90 = !{!"branch_weights", i32 2000, i32 1}
!91 = !{i64 6333880}
!92 = !{i64 6334077}
!93 = !{i64 2153819310}
