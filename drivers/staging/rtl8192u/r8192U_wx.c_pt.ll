; ModuleID = '/llk/IR_all_yes/drivers/staging/rtl8192u/r8192U_wx.c_pt.bc'
source_filename = "../drivers/staging/rtl8192u/r8192U_wx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.iw_priv_args = type { i32, i16, i16, [16 x i8] }
%struct.iw_handler_def = type { ptr, i16, i16, i16, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.ieee80211_device = type { ptr, %struct.ieee80211_security, i8, i8, i8, i8, i32, i8, i8, i32, i32, i8, ptr, %struct.spinlock, %struct.spinlock, [16 x i8], [16 x i8], [16 x i8], i8, i8, i8, i8, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.list_head, [16 x %struct.tx_ts_record], %struct.list_head, %struct.list_head, %struct.list_head, [16 x %struct.rx_ts_record], [128 x %struct.rx_reorder_entry], %struct.list_head, i8, %struct.net_device_stats, %struct.ieee80211_stats, %struct.ieee80211_softmac_stats, %struct.list_head, %struct.list_head, ptr, i32, i32, i32, %struct.iw_spy_data, %struct.spinlock, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, ptr, [6 x i8], i16, i16, %struct.list_head, [4 x ptr], i32, %struct.timer_list, i32, i32, [17 x [4 x %struct.ieee80211_frag_entry]], [17 x i32], i16, i16, [6 x i8], [6 x i8], %struct.ieee80211_network, i32, i32, i32, i32, i32, i32, i32, i16, i32, i32, i16, ptr, i8, i32, i32, i16, i16, [5 x i16], i16, i16, i16, i16, i32, i32, %struct.tasklet_struct, i32, i32, i16, i16, i16, i16, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.spinlock, i16, i16, i16, i8, i32, i8, i8, [31 x %struct.list_head], [17 x i16], [17 x i16], [17 x i32], i32, [5 x ptr], i32, i32, i8, i32, [16 x %struct.sk_buff_head], [16 x %struct.sk_buff_head], [16 x %struct.sk_buff_head], [4 x i32], i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i32, i32, i32, i8, %struct.bandwidth_autoswitch, i8, %struct.rt_link_detect, %struct.rt_power_save_control, %struct.tx_pending, %struct.timer_list, %struct.timer_list, %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, ptr, [128 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [0 x i8] }
%struct.ieee80211_security = type { i16, i8, [4 x i8], [4 x [32 x i8]], i8, i16 }
%struct.tx_ts_record = type { %struct.ts_common_info, i16, %struct.ba_record, %struct.ba_record, i8, i8, i8, %struct.timer_list, i8 }
%struct.ts_common_info = type { %struct.list_head, %struct.timer_list, %struct.timer_list, [6 x i8], %struct.tspec_body, [4 x %union.qos_tclas], i8, i8 }
%struct.tspec_body = type { %struct.qos_tsinfo, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16 }
%struct.qos_tsinfo = type { i24 }
%union.qos_tclas = type { %struct.type1_ipv6 }
%struct.type1_ipv6 = type { i8, i8, i8, i8, [16 x i8], [16 x i8], i16, i16, [3 x i8] }
%struct.ba_record = type { %struct.timer_list, i8, i8, %union.ba_param_set, i16, %union.sequence_control }
%union.ba_param_set = type { i16 }
%union.sequence_control = type { i16 }
%struct.rx_ts_record = type { %struct.ts_common_info, i16, i16, %struct.list_head, %struct.timer_list, %struct.ba_record, i16, i8, i8 }
%struct.rx_reorder_entry = type { %struct.list_head, i16, ptr }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ieee80211_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ieee80211_softmac_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i32 }
%struct.iw_spy_data = type { i32, [8 x [6 x i8]], [8 x %struct.iw_quality], %struct.iw_quality, %struct.iw_quality, [8 x i8] }
%struct.iw_quality = type { i8, i8, i8, i8 }
%struct.list_head = type { ptr, ptr }
%struct.ieee80211_frag_entry = type { i32, i32, i32, ptr, [6 x i8], [6 x i8] }
%struct.ieee80211_network = type <{ [6 x i8], i8, i8, [6 x i8], i8, [33 x i8], i8, [3 x i8], %struct.ieee80211_qos_data, i8, i8, i8, i8, [2 x i16], i8, i8, [6 x i8], %struct.ieee80211_rx_stats, i16, [12 x i8], i8, [16 x i8], i8, i32, i8, [3 x i8], i32, i32, [2 x i32], i16, i16, i16, i8, [64 x i8], i8, i32, [64 x i8], i32, %struct.ieee80211_tim_parameters, i8, i8, [2 x i32], i8, [4 x %struct.ieee80211_wmm_ac_param], i8, i8, i8, i16, [255 x i8], %struct._BSS_HT, i8, i8, i8, i8, i8, i8, i8, i8, %struct.list_head, [4 x i8] }>
%struct.ieee80211_qos_data = type { %struct.ieee80211_qos_parameters, i32, i32, i8, i8 }
%struct.ieee80211_qos_parameters = type { [4 x i16], [4 x i16], [4 x i8], [4 x i8], [4 x i16] }
%struct.ieee80211_rx_stats = type { [2 x i32], i8, i8, i8, i16, i8, i8, i8, i8, i16, i64, i32, i8, i16, i8, i32, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, [4 x i8], [2 x i8], i8, i8, i8, ptr, i16, i16, i16, i16, i8, i8, i8, [4 x i8], i16 }
%struct.ieee80211_tim_parameters = type { i8, i8 }
%struct.ieee80211_wmm_ac_param = type { i8, i8, i16 }
%struct._BSS_HT = type <{ i8, [32 x i8], i16, [32 x i8], i16, i32, i8, i8 }>
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.120, i32 }
%union.anon.120 = type { ptr }
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
%struct.rt_link_detect = type { i32, i32, [10 x i32], [10 x i32], i16, i16, i32, i32, i8 }
%struct.rt_power_save_control = type { i8, i8, i8, i32, %struct.work_struct, %struct.timer_list, i32, i8, i32, %struct.ieee80211_network, i8, i8, i8, i8, [33 x i8], %struct.octet_string, i8, i8, i8, i16, i8, i16, %struct.octet_string, [264 x i8], i8, %struct.ibss_parms, i8, i8, [6 x i8] }
%struct.octet_string = type { ptr, i16 }
%struct.ibss_parms = type { i16 }
%struct.tx_pending = type { i32, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.iw_point = type { ptr, i16, i16 }
%struct.iw_range = type { i32, i32, i32, i16, i8, i8, [6 x i32], i32, %struct.iw_quality, %struct.iw_quality, i8, [32 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, [8 x i16], i8, i8, i8, i16, i8, [8 x i32], i8, i8, i16, i16, i16, i32, i32, i32, i32, i16, i8, [32 x %struct.iw_freq], i32 }
%struct.iw_freq = type { i32, i16, i8, i8 }
%struct.rt_dot11d_info = type { i16, [6 x i8], [255 x i8], i8, [162 x i8], [162 x i8], i32, i8 }
%struct.iw_range_with_scan_capa = type { i32, i32, i32, i16, i8, i8 }
%struct.iw_scan_req = type { i8, i8, i8, i8, %struct.sockaddr, [32 x i8], i32, i32, [32 x %struct.iw_freq] }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.iw_param = type { i32, i8, i8, i16 }
%struct.iw_encode_ext = type { i32, [8 x i8], [8 x i8], %struct.sockaddr, i16, i16, [0 x i8] }

@r8192_wx_handlers = internal global { [56 x ptr], [32 x i8] } { [56 x ptr] [ptr null, ptr @r8192_wx_get_name, ptr @dummy, ptr @dummy, ptr @r8192_wx_set_freq, ptr @r8192_wx_get_freq, ptr @r8192_wx_set_mode, ptr @r8192_wx_get_mode, ptr @r8192_wx_set_sens, ptr @r8192_wx_get_sens, ptr null, ptr @rtl8180_wx_get_range, ptr null, ptr null, ptr null, ptr null, ptr @dummy, ptr @dummy, ptr null, ptr null, ptr @r8192_wx_set_wap, ptr @r8192_wx_get_wap, ptr @r8192_wx_set_mlme, ptr @dummy, ptr @r8192_wx_set_scan, ptr @r8192_wx_get_scan, ptr @r8192_wx_set_essid, ptr @r8192_wx_get_essid, ptr @dummy, ptr @dummy, ptr null, ptr null, ptr @r8192_wx_set_rate, ptr @r8192_wx_get_rate, ptr @r8192_wx_set_rts, ptr @r8192_wx_get_rts, ptr @r8192_wx_set_frag, ptr @r8192_wx_get_frag, ptr @dummy, ptr @dummy, ptr @r8192_wx_set_retry, ptr @r8192_wx_get_retry, ptr @r8192_wx_set_enc, ptr @r8192_wx_get_enc, ptr @r8192_wx_set_power, ptr @r8192_wx_get_power, ptr null, ptr null, ptr @r8192_wx_set_gen_ie, ptr null, ptr @r8192_wx_set_auth, ptr null, ptr @r8192_wx_set_enc_ext, ptr null, ptr null, ptr null], [32 x i8] zeroinitializer }, align 32
@r8192_private_handler = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @r8192_wx_set_crcmon, ptr @r8192_wx_set_scan_type, ptr @r8192_wx_set_rawtx, ptr @r8192_wx_force_reset], [16 x i8] zeroinitializer }, align 32
@r8192_private_args = internal constant { [4 x %struct.iw_priv_args], [32 x i8] } { [4 x %struct.iw_priv_args] [%struct.iw_priv_args { i32 35808, i16 18433, i16 0, [16 x i8] c"badcrc\00\00\00\00\00\00\00\00\00\00" }, %struct.iw_priv_args { i32 35809, i16 18433, i16 0, [16 x i8] c"activescan\00\00\00\00\00\00" }, %struct.iw_priv_args { i32 35810, i16 18433, i16 0, [16 x i8] c"rawtx\00\00\00\00\00\00\00\00\00\00\00" }, %struct.iw_priv_args { i32 35811, i16 18433, i16 0, [16 x i8] c"forcereset\00\00\00\00\00\00" }], [32 x i8] zeroinitializer }, align 32
@r8192_wx_handlers_def = dso_local constant { %struct.iw_handler_def, [40 x i8] } { %struct.iw_handler_def { ptr @r8192_wx_handlers, i16 56, i16 4, i16 4, ptr @r8192_private_handler, ptr @r8192_private_args, ptr @r8192_get_wireless_stats }, [40 x i8] zeroinitializer }, align 32
@rtl8180_rates = internal constant { [12 x i32], [48 x i8] } { [12 x i32] [i32 1000000, i32 2000000, i32 5500000, i32 11000000, i32 6000000, i32 9000000, i32 12000000, i32 18000000, i32 24000000, i32 36000000, i32 48000000, i32 54000000], [48 x i8] zeroinitializer }, align 32
@ieee80211_wlan_frequencies_rsl = external dso_local local_unnamed_addr constant [0 x i32], align 4
@__const.r8192_wx_set_enc.zero_addr = private unnamed_addr constant [4 x [6 x i8]] [[6 x i8] zeroinitializer, [6 x i8] c"\00\00\00\00\00\01", [6 x i8] c"\00\00\00\00\00\02", [6 x i8] c"\00\00\00\00\00\03"], align 1
@rt_global_debug_component = external dso_local local_unnamed_addr global i32, align 4
@r8192_wx_set_enc.__UNIQUE_ID_ddebug349 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 -128, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"r8192u_usb\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"r8192_wx_set_enc\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/staging/rtl8192u/r8192U_wx.c\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"RTL8192U: Setting SW wep key\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"wrong type in WEP, not WEP40 and WEP104\0A\00", [55 x i8] zeroinitializer }, align 32
@r8192_wx_force_reset.__UNIQUE_ID_ddebug346 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.6, i8 0, i8 34, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"r8192_wx_force_reset\00", [43 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s(): force reset ! extra is %d\0A\00", [63 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 16, i64 5, i64 13]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 3]
@___asan_gen_.9 = private unnamed_addr constant [18 x i8] c"r8192_wx_handlers\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 819, i32 19 }
@___asan_gen_.12 = private unnamed_addr constant [22 x i8] c"r8192_private_handler\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 900, i32 19 }
@___asan_gen_.15 = private unnamed_addr constant [19 x i8] c"r8192_private_args\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 880, i32 34 }
@___asan_gen_.18 = private unnamed_addr constant [22 x i8] c"r8192_wx_handlers_def\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 935, i32 30 }
@___asan_gen_.21 = private unnamed_addr constant [14 x i8] c"rtl8180_rates\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 30, i32 18 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 514, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 578, i32 21 }
@___asan_gen_.42 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.43 = private constant [40 x i8] c"../drivers/staging/rtl8192u/r8192U_wx.c\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 137, i32 2 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @r8192_wx_handlers, ptr @r8192_private_handler, ptr @r8192_private_args, ptr @r8192_wx_handlers_def, ptr @rtl8180_rates, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r8192_wx_handlers to i32), i32 224, i32 256, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r8192_private_handler to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r8192_private_args to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r8192_wx_handlers_def to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8180_rates to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @r8192_get_wireless_stats(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ieee80211 = getelementptr i8, ptr %dev, i32 30156
  %0 = ptrtoint ptr %ieee80211 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ieee80211, align 4
  %state = getelementptr inbounds %struct.ieee80211_device, ptr %1, i32 0, i32 83
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %3)
  %cmp = icmp ult i32 %3, 5
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %rssi = getelementptr inbounds %struct.ieee80211_device, ptr %1, i32 0, i32 82, i32 17, i32 1
  %4 = ptrtoint ptr %rssi to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %rssi, align 8
  %signal = getelementptr inbounds %struct.ieee80211_device, ptr %1, i32 0, i32 82, i32 17, i32 2
  %6 = ptrtoint ptr %signal to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %signal, align 1
  %noise11 = getelementptr inbounds %struct.ieee80211_device, ptr %1, i32 0, i32 82, i32 17, i32 3
  %8 = ptrtoint ptr %noise11 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %noise11, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %.sink43 = phi i8 [ %7, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  %.sink42 = phi i8 [ %5, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  %.sink = phi i8 [ %9, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  %10 = getelementptr i8, ptr %dev, i32 33546
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %.sink43, ptr %10, align 2
  %12 = getelementptr i8, ptr %dev, i32 33547
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %.sink42, ptr %12, align 1
  %14 = getelementptr i8, ptr %dev, i32 33548
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %.sink, ptr %14, align 2
  %16 = getelementptr i8, ptr %dev, i32 33549
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 15, ptr %16, align 1
  %wstats1 = getelementptr i8, ptr %dev, i32 33544
  ret ptr %wstats1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @r8192_wx_get_name(ptr nocapture noundef readonly %dev, ptr noundef %info, ptr noundef %wrqu, ptr noundef %extra) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ieee80211 = getelementptr i8, ptr %dev, i32 30156
  %0 = ptrtoint ptr %ieee80211 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ieee80211, align 4
  %call1 = tail call i32 @ieee80211_wx_get_name_rsl(ptr noundef %1, ptr noundef %info, ptr noundef %wrqu, ptr noundef %extra) #9
  ret i32 %call1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dummy(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %a, ptr nocapture noundef readnone %wrqu, ptr nocapture noundef readnone %b) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @r8192_wx_set_freq(ptr noundef %dev, ptr noundef %a, ptr noundef %wrqu, ptr noundef %b) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %wx_mutex = getelementptr i8, ptr %dev, i32 30372
  tail call void @mutex_lock_nested(ptr noundef %wx_mutex, i32 noundef 0) #9
  %ieee80211 = getelementptr i8, ptr %dev, i32 30156
  %0 = ptrtoint ptr %ieee80211 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ieee80211, align 4
  %call1 = tail call i32 @ieee80211_wx_set_freq_rsl(ptr noundef %1, ptr noundef %a, ptr noundef %wrqu, ptr noundef %b) #9
  tail call void @mutex_unlock(ptr noundef %wx_mutex) #9
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @r8192_wx_get_freq(ptr nocapture noundef readonly %dev, ptr noundef %a, ptr noundef %wrqu, ptr noundef %b) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ieee80211 = getelementptr i8, ptr %dev, i32 30156
  %0 = ptrtoint ptr %ieee80211 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ieee80211, align 4
  %call1 = tail call i32 @ieee80211_wx_get_freq_rsl(ptr noundef %1, ptr noundef %a, ptr noundef %wrqu, ptr noundef %b) #9
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @r8192_wx_set_mode(ptr noundef %dev, ptr noundef %a, ptr noundef %wrqu, ptr noundef %b) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %wx_mutex = getelementptr i8, ptr %dev, i32 30372
  tail call void @mutex_lock_nested(ptr noundef %wx_mutex, i32 noundef 0) #9
  %ieee80211 = getelementptr i8, ptr %dev, i32 30156
  %0 = ptrtoint ptr %ieee80211 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ieee80211, align 4
  %call1 = tail call i32 @ieee80211_wx_set_mode_rsl(ptr noundef %1, ptr noundef %a, ptr noundef %wrqu, ptr noundef %b) #9
  tail call void @rtl8192_set_rxconf(ptr noundef %dev) #9
  tail call void @mutex_unlock(ptr noundef %wx_mutex) #9
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @r8192_wx_get_mode(ptr nocapture noundef readonly %dev, ptr noundef %a, ptr noundef %wrqu, ptr noundef %b) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ieee80211 = getelementptr i8, ptr %dev, i32 30156
  %0 = ptrtoint ptr %ieee80211 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ieee80211, align 4
  %call1 = tail call i32 @ieee80211_wx_get_mode_rsl(ptr noundef %1, ptr noundef %a, ptr noundef %wrqu, ptr noundef %b) #9
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @r8192_wx_set_sens(ptr noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readonly %wrqu, ptr nocapture noundef readnone %extra) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %wx_mutex = getelementptr i8, ptr %dev, i32 30372
  tail call void @mutex_lock_nested(ptr noundef %wx_mutex, i32 noundef 0) #9
  %rf_set_sens = getelementptr i8, ptr %dev, i32 30472
  %0 = ptrtoint ptr %rf_set_sens to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rf_set_sens, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.exit_crit_edge, label %if.end

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %wrqu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %wrqu, align 4
  %conv = trunc i32 %3 to i16
  %call2 = tail call signext i16 %1(ptr noundef %dev, i16 noundef signext %conv) #9
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call2)
  %cmp = icmp eq i16 %call2, 0
  br i1 %cmp, label %if.then5, label %if.end.exit_crit_edge

if.end.exit_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %wrqu to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %wrqu, align 4
  %conv7 = trunc i32 %5 to i16
  %sens = getelementptr i8, ptr %dev, i32 30364
  %6 = ptrtoint ptr %sens to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv7, ptr %sens, align 4
  br label %exit

exit:                                             ; preds = %if.then5, %if.end.exit_crit_edge, %entry.exit_crit_edge
  %err.0 = phi i32 [ 0, %if.then5 ], [ -1, %entry.exit_crit_edge ], [ -22, %if.end.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %wx_mutex) #9
  ret i32 %err.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @r8192_wx_get_sens(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef writeonly %wrqu, ptr nocapture noundef readnone %extra) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rf_set_sens = getelementptr i8, ptr %dev, i32 30472
  %0 = ptrtoint ptr %rf_set_sens to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rf_set_sens, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sens = getelementptr i8, ptr %dev, i32 30364
  %2 = ptrtoint ptr %sens to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %sens, align 4
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
define internal i32 @rtl8180_wx_get_range(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef writeonly %wrqu, ptr noundef writeonly %extra) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %length = getelementptr inbounds %struct.iw_point, ptr %wrqu, i32 0, i32 1
  %0 = ptrtoint ptr %length to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 568, ptr %length, align 4
  %1 = getelementptr inbounds i8, ptr %extra, i32 4
  %2 = call ptr @memset(ptr %1, i32 0, i32 564)
  %3 = ptrtoint ptr %extra to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 5000000, ptr %extra, align 4
  %rf_set_sens = getelementptr i8, ptr %dev, i32 30472
  %4 = ptrtoint ptr %rf_set_sens to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rf_set_sens, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %max_sens = getelementptr i8, ptr %dev, i32 30366
  %6 = ptrtoint ptr %max_sens to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %max_sens, align 2
  %conv = sext i16 %7 to i32
  %sensitivity = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 7
  %8 = ptrtoint ptr %sensitivity to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv, ptr %sensitivity, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
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
  store i8 -98, ptr %noise, align 2
  %updated = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 8, i32 3
  %12 = ptrtoint ptr %updated to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 7, ptr %updated, align 1
  %avg_qual = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 9
  %13 = ptrtoint ptr %avg_qual to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 92, ptr %avg_qual, align 4
  %level6 = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 9, i32 1
  %14 = ptrtoint ptr %level6 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -78, ptr %level6, align 1
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
  %uglygep = getelementptr i8, ptr %extra, i32 56
  %18 = call ptr @memcpy(ptr %uglygep, ptr @rtl8180_rates, i32 48)
  %min_frag = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 14
  %19 = ptrtoint ptr %min_frag to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 256, ptr %min_frag, align 4
  %max_frag = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 15
  %20 = ptrtoint ptr %max_frag to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 2346, ptr %max_frag, align 4
  %min_pmp = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 16
  %21 = ptrtoint ptr %min_pmp to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %min_pmp, align 4
  %max_pmp = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 17
  %22 = ptrtoint ptr %max_pmp to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 5000000, ptr %max_pmp, align 4
  %min_pmt = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 18
  %23 = ptrtoint ptr %min_pmt to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %min_pmt, align 4
  %max_pmt = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 19
  %24 = ptrtoint ptr %max_pmt to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 65535000, ptr %max_pmt, align 4
  %pmp_flags = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 20
  %25 = ptrtoint ptr %pmp_flags to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 4096, ptr %pmp_flags, align 4
  %pmt_flags = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 21
  %26 = ptrtoint ptr %pmt_flags to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 8192, ptr %pmt_flags, align 2
  %pm_capa = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 22
  %27 = ptrtoint ptr %pm_capa to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 13056, ptr %pm_capa, align 4
  %we_version_compiled = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 30
  %28 = ptrtoint ptr %we_version_compiled to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 22, ptr %we_version_compiled, align 4
  %we_version_source = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 31
  %29 = ptrtoint ptr %we_version_source to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 16, ptr %we_version_source, align 1
  %ieee80211 = getelementptr i8, ptr %dev, i32 30156
  br label %for.cond15

for.cond15:                                       ; preds = %if.end34.for.cond15_crit_edge, %if.end
  %val.0 = phi i16 [ 0, %if.end ], [ %val.1, %if.end34.for.cond15_crit_edge ]
  %i.1 = phi i32 [ 0, %if.end ], [ %add, %if.end34.for.cond15_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %i.1)
  %exitcond.not = icmp eq i32 %i.1, 14
  br i1 %exitcond.not, label %for.cond15.for.end42_crit_edge, label %for.body18

for.cond15.for.end42_crit_edge:                   ; preds = %for.cond15
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end42

for.body18:                                       ; preds = %for.cond15
  %30 = ptrtoint ptr %ieee80211 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ieee80211, align 4
  %dot11d_info = getelementptr inbounds %struct.ieee80211_device, ptr %31, i32 0, i32 94
  %32 = ptrtoint ptr %dot11d_info to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dot11d_info, align 4
  %add = add nuw nsw i32 %i.1, 1
  %arrayidx19 = getelementptr %struct.rt_dot11d_info, ptr %33, i32 0, i32 4, i32 %add
  %34 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx19, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool20.not = icmp eq i8 %35, 0
  br i1 %tobool20.not, label %for.body18.if.end34_crit_edge, label %if.then21

for.body18.if.end34_crit_edge:                    ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

if.then21:                                        ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #11
  %conv23 = trunc i32 %add to i8
  %idxprom = zext i16 %val.0 to i32
  %arrayidx24 = getelementptr %struct.iw_range, ptr %extra, i32 0, i32 41, i32 %idxprom
  %i25 = getelementptr %struct.iw_range, ptr %extra, i32 0, i32 41, i32 %idxprom, i32 2
  %36 = ptrtoint ptr %i25 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv23, ptr %i25, align 2
  %arrayidx26 = getelementptr [0 x i32], ptr @ieee80211_wlan_frequencies_rsl, i32 0, i32 %i.1
  %37 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx26, align 4
  %mul = mul i32 %38, 100000
  %39 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %mul, ptr %arrayidx24, align 4
  %e = getelementptr %struct.iw_range, ptr %extra, i32 0, i32 41, i32 %idxprom, i32 1
  %40 = ptrtoint ptr %e to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 1, ptr %e, align 4
  %inc33 = add i16 %val.0, 1
  br label %if.end34

if.end34:                                         ; preds = %if.then21, %for.body18.if.end34_crit_edge
  %val.1 = phi i16 [ %inc33, %if.then21 ], [ %val.0, %for.body18.if.end34_crit_edge ]
  %cmp36 = icmp eq i16 %val.1, 32
  br i1 %cmp36, label %if.end34.for.end42_crit_edge, label %if.end34.for.cond15_crit_edge

if.end34.for.cond15_crit_edge:                    ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond15

if.end34.for.end42_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end42

for.end42:                                        ; preds = %if.end34.for.end42_crit_edge, %for.cond15.for.end42_crit_edge
  %val.2 = phi i16 [ 32, %if.end34.for.end42_crit_edge ], [ %val.0, %for.cond15.for.end42_crit_edge ]
  %conv43 = trunc i16 %val.2 to i8
  %num_frequency = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 40
  %41 = ptrtoint ptr %num_frequency to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv43, ptr %num_frequency, align 2
  %num_channels = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 39
  %42 = ptrtoint ptr %num_channels to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %val.2, ptr %num_channels, align 4
  %enc_capa = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 42
  %43 = ptrtoint ptr %enc_capa to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 15, ptr %enc_capa, align 4
  %scan_capa = getelementptr inbounds %struct.iw_range_with_scan_capa, ptr %extra, i32 0, i32 5
  %44 = ptrtoint ptr %scan_capa to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 1, ptr %scan_capa, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @r8192_wx_set_wap(ptr noundef %dev, ptr noundef %info, ptr noundef %awrq, ptr noundef %extra) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %wx_mutex = getelementptr i8, ptr %dev, i32 30372
  tail call void @mutex_lock_nested(ptr noundef %wx_mutex, i32 noundef 0) #9
  %ieee80211 = getelementptr i8, ptr %dev, i32 30156
  %0 = ptrtoint ptr %ieee80211 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ieee80211, align 4
  %call1 = tail call i32 @ieee80211_wx_set_wap_rsl(ptr noundef %1, ptr noundef %info, ptr noundef %awrq, ptr noundef %extra) #9
  tail call void @mutex_unlock(ptr noundef %wx_mutex) #9
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @r8192_wx_get_wap(ptr nocapture noundef readonly %dev, ptr noundef %info, ptr noundef %wrqu, ptr noundef %extra) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ieee80211 = getelementptr i8, ptr %dev, i32 30156
  %0 = ptrtoint ptr %ieee80211 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ieee80211, align 4
  %call1 = tail call i32 @ieee80211_wx_get_wap_rsl(ptr noundef %1, ptr noundef %info, ptr noundef %wrqu, ptr noundef %extra) #9
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @r8192_wx_set_mlme(ptr noundef %dev, ptr noundef %info, ptr noundef %wrqu, ptr noundef %extra) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %wx_mutex = getelementptr i8, ptr %dev, i32 30372
  tail call void @mutex_lock_nested(ptr noundef %wx_mutex, i32 noundef 0) #9
  %ieee80211 = getelementptr i8, ptr %dev, i32 30156
  %0 = ptrtoint ptr %ieee80211 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ieee80211, align 4
  %call1 = tail call i32 @ieee80211_wx_set_mlme_rsl(ptr noundef %1, ptr noundef %info, ptr noundef %wrqu, ptr noundef %extra) #9
  tail call void @mutex_unlock(ptr noundef %wx_mutex) #9
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @r8192_wx_set_scan(ptr noundef %dev, ptr noundef %a, ptr noundef %wrqu, ptr noundef %b) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ieee80211 = getelementptr i8, ptr %dev, i32 30156
  %0 = ptrtoint ptr %ieee80211 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ieee80211, align 4
  %up = getelementptr i8, ptr %dev, i32 30368
  %2 = ptrtoint ptr %up to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %up, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %bBusyTraffic = getelementptr inbounds %struct.ieee80211_device, ptr %1, i32 0, i32 156, i32 8
  %4 = ptrtoint ptr %bBusyTraffic to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bBusyTraffic, align 4, !range !31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %flags = getelementptr inbounds %struct.iw_point, ptr %wrqu, i32 0, i32 2
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %flags, align 2
  %8 = and i16 %7, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool5.not = icmp eq i16 %8, 0
  br i1 %tobool5.not, label %if.end4.if.end16_crit_edge, label %if.then6

if.end4.if.end16_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.then6:                                         ; preds = %if.end4
  %essid_len = getelementptr inbounds %struct.iw_scan_req, ptr %b, i32 0, i32 1
  %9 = ptrtoint ptr %essid_len to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %essid_len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool7.not = icmp eq i8 %10, 0
  br i1 %tobool7.not, label %if.then6.if.end16_crit_edge, label %if.then8

if.then6.if.end16_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.then8:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  %11 = tail call i8 @llvm.umin.i8(i8 %10, i8 32)
  %cond = zext i8 %11 to i32
  %ssid_len = getelementptr inbounds %struct.ieee80211_device, ptr %1, i32 0, i32 82, i32 6
  %12 = ptrtoint ptr %ssid_len to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %ssid_len, align 8
  %ssid = getelementptr inbounds %struct.ieee80211_device, ptr %1, i32 0, i32 82, i32 5
  %essid = getelementptr inbounds %struct.iw_scan_req, ptr %b, i32 0, i32 5
  %13 = call ptr @memcpy(ptr %ssid, ptr %essid, i32 %cond)
  br label %if.end16

if.end16:                                         ; preds = %if.then8, %if.then6.if.end16_crit_edge, %if.end4.if.end16_crit_edge
  %wx_mutex = getelementptr i8, ptr %dev, i32 30372
  tail call void @mutex_lock_nested(ptr noundef %wx_mutex, i32 noundef 0) #9
  %14 = ptrtoint ptr %ieee80211 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ieee80211, align 4
  %state = getelementptr inbounds %struct.ieee80211_device, ptr %15, i32 0, i32 83
  %16 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %17)
  %cmp18.not = icmp eq i32 %17, 5
  br i1 %cmp18.not, label %if.else, label %if.then20

if.then20:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %scanning = getelementptr inbounds %struct.ieee80211_device, ptr %15, i32 0, i32 112
  %18 = ptrtoint ptr %scanning to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 0, ptr %scanning, align 8
  %19 = ptrtoint ptr %ieee80211 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ieee80211, align 4
  tail call void @ieee80211_softmac_scan_syncro_rsl(ptr noundef %20) #9
  br label %if.end25

if.else:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %call24 = tail call i32 @ieee80211_wx_set_scan_rsl(ptr noundef %15, ptr noundef %a, ptr noundef %wrqu, ptr noundef %b) #9
  br label %if.end25

if.end25:                                         ; preds = %if.else, %if.then20
  %ret.0 = phi i32 [ 0, %if.then20 ], [ %call24, %if.else ]
  tail call void @mutex_unlock(ptr noundef %wx_mutex) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end25 ], [ -100, %entry.cleanup_crit_edge ], [ -11, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @r8192_wx_get_scan(ptr noundef %dev, ptr noundef %a, ptr noundef %wrqu, ptr noundef %b) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %up = getelementptr i8, ptr %dev, i32 30368
  %0 = ptrtoint ptr %up to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %up, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %wx_mutex = getelementptr i8, ptr %dev, i32 30372
  tail call void @mutex_lock_nested(ptr noundef %wx_mutex, i32 noundef 0) #9
  %ieee80211 = getelementptr i8, ptr %dev, i32 30156
  %2 = ptrtoint ptr %ieee80211 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ieee80211, align 4
  %call1 = tail call i32 @ieee80211_wx_get_scan_rsl(ptr noundef %3, ptr noundef %a, ptr noundef %wrqu, ptr noundef %b) #9
  tail call void @mutex_unlock(ptr noundef %wx_mutex) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -100, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @r8192_wx_set_essid(ptr noundef %dev, ptr noundef %a, ptr noundef %wrqu, ptr noundef %b) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %wx_mutex = getelementptr i8, ptr %dev, i32 30372
  tail call void @mutex_lock_nested(ptr noundef %wx_mutex, i32 noundef 0) #9
  %ieee80211 = getelementptr i8, ptr %dev, i32 30156
  %0 = ptrtoint ptr %ieee80211 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ieee80211, align 4
  %call1 = tail call i32 @ieee80211_wx_set_essid_rsl(ptr noundef %1, ptr noundef %a, ptr noundef %wrqu, ptr noundef %b) #9
  tail call void @mutex_unlock(ptr noundef %wx_mutex) #9
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @r8192_wx_get_essid(ptr noundef %dev, ptr noundef %a, ptr noundef %wrqu, ptr noundef %b) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %wx_mutex = getelementptr i8, ptr %dev, i32 30372
  tail call void @mutex_lock_nested(ptr noundef %wx_mutex, i32 noundef 0) #9
  %ieee80211 = getelementptr i8, ptr %dev, i32 30156
  %0 = ptrtoint ptr %ieee80211 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ieee80211, align 4
  %call1 = tail call i32 @ieee80211_wx_get_essid_rsl(ptr noundef %1, ptr noundef %a, ptr noundef %wrqu, ptr noundef %b) #9
  tail call void @mutex_unlock(ptr noundef %wx_mutex) #9
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @r8192_wx_set_rate(ptr noundef %dev, ptr noundef %info, ptr noundef %wrqu, ptr noundef %extra) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %wx_mutex = getelementptr i8, ptr %dev, i32 30372
  tail call void @mutex_lock_nested(ptr noundef %wx_mutex, i32 noundef 0) #9
  %ieee80211 = getelementptr i8, ptr %dev, i32 30156
  %0 = ptrtoint ptr %ieee80211 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ieee80211, align 4
  %call1 = tail call i32 @ieee80211_wx_set_rate_rsl(ptr noundef %1, ptr noundef %info, ptr noundef %wrqu, ptr noundef %extra) #9
  tail call void @mutex_unlock(ptr noundef %wx_mutex) #9
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @r8192_wx_get_rate(ptr nocapture noundef readonly %dev, ptr noundef %info, ptr noundef %wrqu, ptr noundef %extra) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ieee80211 = getelementptr i8, ptr %dev, i32 30156
  %0 = ptrtoint ptr %ieee80211 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ieee80211, align 4
  %call1 = tail call i32 @ieee80211_wx_get_rate_rsl(ptr noundef %1, ptr noundef %info, ptr noundef %wrqu, ptr noundef %extra) #9
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @r8192_wx_set_rts(ptr noundef %dev, ptr noundef %info, ptr noundef %wrqu, ptr noundef %extra) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %wx_mutex = getelementptr i8, ptr %dev, i32 30372
  tail call void @mutex_lock_nested(ptr noundef %wx_mutex, i32 noundef 0) #9
  %ieee80211 = getelementptr i8, ptr %dev, i32 30156
  %0 = ptrtoint ptr %ieee80211 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ieee80211, align 4
  %call1 = tail call i32 @ieee80211_wx_set_rts_rsl(ptr noundef %1, ptr noundef %info, ptr noundef %wrqu, ptr noundef %extra) #9
  tail call void @mutex_unlock(ptr noundef %wx_mutex) #9
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @r8192_wx_get_rts(ptr nocapture noundef readonly %dev, ptr noundef %info, ptr noundef %wrqu, ptr noundef %extra) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ieee80211 = getelementptr i8, ptr %dev, i32 30156
  %0 = ptrtoint ptr %ieee80211 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ieee80211, align 4
  %call1 = tail call i32 @ieee80211_wx_get_rts_rsl(ptr noundef %1, ptr noundef %info, ptr noundef %wrqu, ptr noundef %extra) #9
  ret i32 %call1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @r8192_wx_set_frag(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readonly %wrqu, ptr nocapture noundef readnone %extra) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %disabled = getelementptr inbounds %struct.iw_param, ptr %wrqu, i32 0, i32 2
  %0 = ptrtoint ptr %disabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %disabled, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.else, label %entry.cleanup.sink.split_crit_edge

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.else:                                          ; preds = %entry
  %2 = ptrtoint ptr %wrqu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %wrqu, align 4
  %4 = add i32 %3, -2347
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2091, i32 %4)
  %5 = icmp ult i32 %4, -2091
  br i1 %5, label %if.else.cleanup_crit_edge, label %if.end

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %6 = trunc i32 %3 to i16
  %conv = and i16 %6, -2
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end, %entry.cleanup.sink.split_crit_edge
  %.sink = phi i16 [ %conv, %if.end ], [ 2342, %entry.cleanup.sink.split_crit_edge ]
  %ieee80211 = getelementptr i8, ptr %dev, i32 30156
  %7 = ptrtoint ptr %ieee80211 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ieee80211, align 4
  %fts = getelementptr inbounds %struct.ieee80211_device, ptr %8, i32 0, i32 78
  %9 = ptrtoint ptr %fts to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %.sink, ptr %fts, align 8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.else.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.else.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @r8192_wx_get_frag(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef writeonly %wrqu, ptr nocapture noundef readnone %extra) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ieee80211 = getelementptr i8, ptr %dev, i32 30156
  %0 = ptrtoint ptr %ieee80211 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ieee80211, align 4
  %fts = getelementptr inbounds %struct.ieee80211_device, ptr %1, i32 0, i32 78
  %2 = ptrtoint ptr %fts to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %fts, align 8
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
define internal i32 @r8192_wx_set_retry(ptr noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readonly %wrqu, ptr nocapture noundef readnone %extra) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %wx_mutex = getelementptr i8, ptr %dev, i32 30372
  tail call void @mutex_lock_nested(ptr noundef %wx_mutex, i32 noundef 0) #9
  %flags = getelementptr inbounds %struct.iw_param, ptr %wrqu, i32 0, i32 3
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %flags, align 2
  %conv = zext i16 %1 to i32
  %and = and i32 %conv, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.exit_crit_edge

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

lor.lhs.false:                                    ; preds = %entry
  %disabled = getelementptr inbounds %struct.iw_param, ptr %wrqu, i32 0, i32 2
  %2 = ptrtoint ptr %disabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %disabled, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp ne i8 %3, 0
  %and5 = and i32 %conv, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  %or.cond = select i1 %tobool2.not, i1 true, i1 %tobool6.not
  br i1 %or.cond, label %lor.lhs.false.exit_crit_edge, label %if.end8

lor.lhs.false.exit_crit_edge:                     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

if.end8:                                          ; preds = %lor.lhs.false
  %4 = ptrtoint ptr %wrqu to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %wrqu, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %5)
  %cmp = icmp sgt i32 %5, 255
  br i1 %cmp, label %if.end8.exit_crit_edge, label %if.end11

if.end8.exit_crit_edge:                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

if.end11:                                         ; preds = %if.end8
  %and14 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  %conv20 = trunc i32 %5 to i8
  br i1 %tobool15.not, label %if.else, label %if.then16

if.then16:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %retry_rts = getelementptr i8, ptr %dev, i32 33883
  %6 = ptrtoint ptr %retry_rts to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv20, ptr %retry_rts, align 1
  br label %if.end22

if.else:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %retry_data = getelementptr i8, ptr %dev, i32 33882
  %7 = ptrtoint ptr %retry_data to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv20, ptr %retry_data, align 2
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.then16
  tail call void @rtl8192_commit(ptr noundef %dev) #9
  br label %exit

exit:                                             ; preds = %if.end22, %if.end8.exit_crit_edge, %lor.lhs.false.exit_crit_edge, %entry.exit_crit_edge
  %err.0 = phi i32 [ 0, %if.end22 ], [ -22, %lor.lhs.false.exit_crit_edge ], [ -22, %entry.exit_crit_edge ], [ -22, %if.end8.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %wx_mutex) #9
  ret i32 %err.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @r8192_wx_get_retry(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef %wrqu, ptr nocapture noundef readnone %extra) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %and4 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool.not = icmp eq i32 %and4, 0
  %. = select i1 %tobool.not, i16 4097, i16 4098
  %.20 = select i1 %tobool.not, i32 33882, i32 33883
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
define internal i32 @r8192_wx_set_enc(ptr noundef %dev, ptr noundef %info, ptr noundef %wrqu, ptr noundef %key) #2 align 64 {
entry:
  %hwkey = alloca [4 x i32], align 4
  %zero_addr = alloca [4 x [6 x i8]], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ieee80211 = getelementptr i8, ptr %dev, i32 30156
  %0 = ptrtoint ptr %ieee80211 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ieee80211, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %hwkey) #9
  %2 = call ptr @memset(ptr %hwkey, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %zero_addr) #9
  %3 = call ptr @memcpy(ptr %zero_addr, ptr @__const.r8192_wx_set_enc.zero_addr, i32 24)
  %up = getelementptr i8, ptr %dev, i32 30368
  %4 = ptrtoint ptr %up to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %up, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not = icmp eq i16 %5, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %wx_mutex = getelementptr i8, ptr %dev, i32 30372
  tail call void @mutex_lock_nested(ptr noundef %wx_mutex, i32 noundef 0) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %6 = load i32, ptr @rt_global_debug_component, align 4
  %and = and i32 %6, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end.do.end12_crit_edge, label %do.body3

if.end.do.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end12

do.body3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @r8192_wx_set_enc.__UNIQUE_ID_ddebug349, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@r8192_wx_set_enc, %if.then8)) #9
          to label %do.end12 [label %if.then8], !srcloc !32

if.then8:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @r8192_wx_set_enc.__UNIQUE_ID_ddebug349, ptr noundef nonnull @.str.3) #9
  br label %do.end12

do.end12:                                         ; preds = %if.then8, %do.body3, %if.end.do.end12_crit_edge
  %7 = ptrtoint ptr %ieee80211 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ieee80211, align 4
  %call14 = tail call i32 @ieee80211_wx_set_encode_rsl(ptr noundef %8, ptr noundef %info, ptr noundef %wrqu, ptr noundef %key) #9
  tail call void @mutex_unlock(ptr noundef %wx_mutex) #9
  %length = getelementptr inbounds %struct.iw_point, ptr %wrqu, i32 0, i32 1
  %9 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %cmp.not = icmp eq i16 %10, 0
  br i1 %cmp.not, label %do.end12.cleanup_crit_edge, label %if.end44.3

do.end12.cleanup_crit_edge:                       ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end44.3:                                       ; preds = %do.end12
  %11 = ptrtoint ptr %key to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %key, align 1
  %and22 = zext i8 %12 to i32
  %13 = ptrtoint ptr %hwkey to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %hwkey, align 4
  %or = or i32 %14, %and22
  %arrayidx47 = getelementptr i8, ptr %key, i32 1
  %15 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx47, align 1
  %and50 = zext i8 %16 to i32
  %shl = shl nuw nsw i32 %and50, 8
  %or52 = or i32 %shl, %or
  %arrayidx55 = getelementptr i8, ptr %key, i32 2
  %17 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx55, align 1
  %and58 = zext i8 %18 to i32
  %shl59 = shl nuw nsw i32 %and58, 16
  %or61 = or i32 %shl59, %or52
  %arrayidx64 = getelementptr i8, ptr %key, i32 3
  %19 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx64, align 1
  %and67 = zext i8 %20 to i32
  %shl68 = shl nuw i32 %and67, 24
  %or70 = or i32 %shl68, %or61
  store i32 %or70, ptr %hwkey, align 4
  %arrayidx.1 = getelementptr i8, ptr %key, i32 4
  %21 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx.1, align 1
  %and22.1 = zext i8 %22 to i32
  %arrayidx23.1 = getelementptr inbounds [4 x i32], ptr %hwkey, i32 0, i32 1
  %23 = ptrtoint ptr %arrayidx23.1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx23.1, align 4
  %or.1 = or i32 %24, %and22.1
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %10)
  %cmp30.1 = icmp ne i16 %10, 5
  %spec.select.1 = sext i1 %cmp30.1 to i8
  %arrayidx47.1 = getelementptr i8, ptr %key, i32 5
  %25 = ptrtoint ptr %arrayidx47.1 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx47.1, align 1
  %and50151.1 = and i8 %26, %spec.select.1
  %and50.1 = zext i8 %and50151.1 to i32
  %shl.1 = shl nuw nsw i32 %and50.1, 8
  %or52.1 = or i32 %shl.1, %or.1
  %arrayidx55.1 = getelementptr i8, ptr %key, i32 6
  %27 = ptrtoint ptr %arrayidx55.1 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx55.1, align 1
  %and58152.1 = and i8 %28, %spec.select.1
  %and58.1 = zext i8 %and58152.1 to i32
  %shl59.1 = shl nuw nsw i32 %and58.1, 16
  %or61.1 = or i32 %shl59.1, %or52.1
  %arrayidx64.1 = getelementptr i8, ptr %key, i32 7
  %29 = ptrtoint ptr %arrayidx64.1 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx64.1, align 1
  %and67153.1 = and i8 %30, %spec.select.1
  %and67.1 = zext i8 %and67153.1 to i32
  %shl68.1 = shl nuw i32 %and67.1, 24
  %or70.1 = or i32 %shl68.1, %or61.1
  %31 = ptrtoint ptr %arrayidx23.1 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %or70.1, ptr %arrayidx23.1, align 4
  %arrayidx.2 = getelementptr i8, ptr %key, i32 8
  %32 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx.2, align 1
  %and22150.2 = and i8 %33, %spec.select.1
  %and22.2 = zext i8 %and22150.2 to i32
  %arrayidx23.2 = getelementptr inbounds [4 x i32], ptr %hwkey, i32 0, i32 2
  %34 = ptrtoint ptr %arrayidx23.2 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx23.2, align 4
  %or.2 = or i32 %35, %and22.2
  %arrayidx47.2 = getelementptr i8, ptr %key, i32 9
  %36 = ptrtoint ptr %arrayidx47.2 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx47.2, align 1
  %and50151.2 = and i8 %37, %spec.select.1
  %and50.2 = zext i8 %and50151.2 to i32
  %shl.2 = shl nuw nsw i32 %and50.2, 8
  %or52.2 = or i32 %shl.2, %or.2
  %arrayidx55.2 = getelementptr i8, ptr %key, i32 10
  %38 = ptrtoint ptr %arrayidx55.2 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx55.2, align 1
  %and58152.2 = and i8 %39, %spec.select.1
  %and58.2 = zext i8 %and58152.2 to i32
  %shl59.2 = shl nuw nsw i32 %and58.2, 16
  %or61.2 = or i32 %shl59.2, %or52.2
  %arrayidx64.2 = getelementptr i8, ptr %key, i32 11
  %40 = ptrtoint ptr %arrayidx64.2 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx64.2, align 1
  %and67153.2 = and i8 %41, %spec.select.1
  %and67.2 = zext i8 %and67153.2 to i32
  %shl68.2 = shl nuw i32 %and67.2, 24
  %or70.2 = or i32 %shl68.2, %or61.2
  store i32 %or70.2, ptr %arrayidx23.2, align 4
  %arrayidx.3 = getelementptr i8, ptr %key, i32 12
  %42 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx.3, align 1
  %and22150.3 = and i8 %43, %spec.select.1
  %and22.3 = zext i8 %and22150.3 to i32
  %arrayidx23.3 = getelementptr inbounds [4 x i32], ptr %hwkey, i32 0, i32 3
  %44 = ptrtoint ptr %arrayidx23.3 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx23.3, align 4
  %or.3 = or i32 %45, %and22.3
  call void @__sanitizer_cov_trace_const_cmp2(i16 13, i16 %10)
  %cmp41.3 = icmp eq i16 %10, 13
  %spec.select154.3 = select i1 %cmp41.3, i8 0, i8 %spec.select.1
  %arrayidx47.3 = getelementptr i8, ptr %key, i32 13
  %46 = ptrtoint ptr %arrayidx47.3 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx47.3, align 1
  %and50151.3 = and i8 %47, %spec.select154.3
  %and50.3 = zext i8 %and50151.3 to i32
  %shl.3 = shl nuw nsw i32 %and50.3, 8
  %or52.3 = or i32 %shl.3, %or.3
  %arrayidx55.3 = getelementptr i8, ptr %key, i32 14
  %48 = ptrtoint ptr %arrayidx55.3 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx55.3, align 1
  %and58152.3 = and i8 %49, %spec.select154.3
  %and58.3 = zext i8 %and58152.3 to i32
  %shl59.3 = shl nuw nsw i32 %and58.3, 16
  %or61.3 = or i32 %shl59.3, %or52.3
  %arrayidx64.3 = getelementptr i8, ptr %key, i32 15
  %50 = ptrtoint ptr %arrayidx64.3 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx64.3, align 1
  %and67153.3 = and i8 %51, %spec.select154.3
  %and67.3 = zext i8 %and67153.3 to i32
  %shl68.3 = shl nuw i32 %and67.3, 24
  %or70.3 = or i32 %shl68.3, %or61.3
  %52 = ptrtoint ptr %arrayidx23.3 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %or70.3, ptr %arrayidx23.3, align 4
  %flags = getelementptr inbounds %struct.iw_point, ptr %wrqu, i32 0, i32 2
  %53 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %flags, align 2
  %trunc = trunc i16 %54 to i8
  %55 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values)
  switch i8 %trunc, label %if.end44.3.sw.epilog_crit_edge [
    i8 0, label %sw.bb
    i8 4, label %sw.bb76
    i8 2, label %sw.bb74
    i8 3, label %sw.bb75
  ]

if.end44.3.sw.epilog_crit_edge:                   ; preds = %if.end44.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end44.3
  call void @__sanitizer_cov_trace_pc() #11
  %tx_keyidx = getelementptr inbounds %struct.ieee80211_device, ptr %1, i32 0, i32 72
  %56 = ptrtoint ptr %tx_keyidx to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %tx_keyidx, align 8
  br label %sw.epilog

sw.bb74:                                          ; preds = %if.end44.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb75:                                          ; preds = %if.end44.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb76:                                          ; preds = %if.end44.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb76, %sw.bb75, %sw.bb74, %sw.bb, %if.end44.3.sw.epilog_crit_edge
  %key_idx.0 = phi i32 [ 3, %sw.bb76 ], [ 2, %sw.bb75 ], [ 1, %sw.bb74 ], [ %57, %sw.bb ], [ 0, %if.end44.3.sw.epilog_crit_edge ]
  %58 = zext i16 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values.7)
  switch i16 %10, label %if.else97 [
    i16 5, label %if.then81
    i16 13, label %if.then90
  ]

if.then81:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %pairwise_key_type = getelementptr inbounds %struct.ieee80211_device, ptr %1, i32 0, i32 68
  %59 = ptrtoint ptr %pairwise_key_type to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 1, ptr %pairwise_key_type, align 2
  tail call void @EnableHWSecurityConfig8192(ptr noundef %dev) #9
  %conv82 = trunc i32 %key_idx.0 to i8
  %arrayidx84 = getelementptr [4 x [6 x i8]], ptr %zero_addr, i32 0, i32 %key_idx.0
  call void @setKey(ptr noundef %dev, i8 noundef zeroext %conv82, i8 noundef zeroext %conv82, i16 noundef zeroext 1, ptr noundef %arrayidx84, i8 noundef zeroext 0, ptr noundef nonnull %hwkey) #9
  br label %cleanup

if.then90:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %pairwise_key_type91 = getelementptr inbounds %struct.ieee80211_device, ptr %1, i32 0, i32 68
  %60 = ptrtoint ptr %pairwise_key_type91 to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 5, ptr %pairwise_key_type91, align 2
  tail call void @EnableHWSecurityConfig8192(ptr noundef %dev) #9
  %conv92 = trunc i32 %key_idx.0 to i8
  %arrayidx94 = getelementptr [4 x [6 x i8]], ptr %zero_addr, i32 0, i32 %key_idx.0
  call void @setKey(ptr noundef %dev, i8 noundef zeroext %conv92, i8 noundef zeroext %conv92, i16 noundef zeroext 5, ptr noundef %arrayidx94, i8 noundef zeroext 0, ptr noundef nonnull %hwkey) #9
  br label %cleanup

if.else97:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %dev, ptr noundef nonnull @.str.4) #12
  br label %cleanup

cleanup:                                          ; preds = %if.else97, %if.then90, %if.then81, %do.end12.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -100, %entry.cleanup_crit_edge ], [ %call14, %if.then81 ], [ %call14, %if.else97 ], [ %call14, %if.then90 ], [ %call14, %do.end12.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %zero_addr) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %hwkey) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @r8192_wx_get_enc(ptr nocapture noundef readonly %dev, ptr noundef %info, ptr noundef %wrqu, ptr noundef %key) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ieee80211 = getelementptr i8, ptr %dev, i32 30156
  %0 = ptrtoint ptr %ieee80211 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ieee80211, align 4
  %call1 = tail call i32 @ieee80211_wx_get_encode_rsl(ptr noundef %1, ptr noundef %info, ptr noundef %wrqu, ptr noundef %key) #9
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @r8192_wx_set_power(ptr noundef %dev, ptr noundef %info, ptr noundef %wrqu, ptr noundef %extra) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %wx_mutex = getelementptr i8, ptr %dev, i32 30372
  tail call void @mutex_lock_nested(ptr noundef %wx_mutex, i32 noundef 0) #9
  %ieee80211 = getelementptr i8, ptr %dev, i32 30156
  %0 = ptrtoint ptr %ieee80211 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ieee80211, align 4
  %call1 = tail call i32 @ieee80211_wx_set_power_rsl(ptr noundef %1, ptr noundef %info, ptr noundef %wrqu, ptr noundef %extra) #9
  tail call void @mutex_unlock(ptr noundef %wx_mutex) #9
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @r8192_wx_get_power(ptr nocapture noundef readonly %dev, ptr noundef %info, ptr noundef %wrqu, ptr noundef %extra) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ieee80211 = getelementptr i8, ptr %dev, i32 30156
  %0 = ptrtoint ptr %ieee80211 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ieee80211, align 4
  %call1 = tail call i32 @ieee80211_wx_get_power_rsl(ptr noundef %1, ptr noundef %info, ptr noundef %wrqu, ptr noundef %extra) #9
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @r8192_wx_set_gen_ie(ptr noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readonly %data, ptr noundef %extra) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %wx_mutex = getelementptr i8, ptr %dev, i32 30372
  tail call void @mutex_lock_nested(ptr noundef %wx_mutex, i32 noundef 0) #9
  %ieee80211 = getelementptr i8, ptr %dev, i32 30156
  %0 = ptrtoint ptr %ieee80211 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ieee80211, align 4
  %length = getelementptr inbounds %struct.iw_point, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %length, align 4
  %conv = zext i16 %3 to i32
  %call1 = tail call i32 @ieee80211_wx_set_gen_ie_rsl(ptr noundef %1, ptr noundef %extra, i32 noundef %conv) #9
  tail call void @mutex_unlock(ptr noundef %wx_mutex) #9
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @r8192_wx_set_auth(ptr noundef %dev, ptr noundef %info, ptr noundef %data, ptr noundef %extra) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %wx_mutex = getelementptr i8, ptr %dev, i32 30372
  tail call void @mutex_lock_nested(ptr noundef %wx_mutex, i32 noundef 0) #9
  %ieee80211 = getelementptr i8, ptr %dev, i32 30156
  %0 = ptrtoint ptr %ieee80211 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ieee80211, align 4
  %call1 = tail call i32 @ieee80211_wx_set_auth_rsl(ptr noundef %1, ptr noundef %info, ptr noundef %data, ptr noundef %extra) #9
  tail call void @mutex_unlock(ptr noundef %wx_mutex) #9
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @r8192_wx_set_enc_ext(ptr noundef %dev, ptr noundef %info, ptr noundef %wrqu, ptr noundef %extra) #2 align 64 {
entry:
  %broadcast_addr = alloca [6 x i8], align 1
  %zero = alloca [6 x i8], align 1
  %key = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ieee80211 = getelementptr i8, ptr %dev, i32 30156
  %0 = ptrtoint ptr %ieee80211 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ieee80211, align 4
  %wx_mutex = getelementptr i8, ptr %dev, i32 30372
  tail call void @mutex_lock_nested(ptr noundef %wx_mutex, i32 noundef 0) #9
  %2 = ptrtoint ptr %ieee80211 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ieee80211, align 4
  %call2 = tail call i32 @ieee80211_wx_set_encode_ext_rsl(ptr noundef %3, ptr noundef %info, ptr noundef %wrqu, ptr noundef %extra) #9
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %broadcast_addr) #9
  %4 = call ptr @memset(ptr %broadcast_addr, i32 255, i32 6)
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %zero) #9
  %5 = call ptr @memset(ptr %zero, i32 0, i32 6)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %key) #9
  %flags = getelementptr inbounds %struct.iw_point, ptr %wrqu, i32 0, i32 2
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %flags, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %7)
  %tobool.not = icmp sgt i16 %7, -1
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %alg3 = getelementptr inbounds %struct.iw_encode_ext, ptr %extra, i32 0, i32 4
  %8 = ptrtoint ptr %alg3 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %alg3, align 4
  %10 = zext i16 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.8)
  switch i16 %9, label %cond.false [
    i16 0, label %lor.lhs.false.cleanup_crit_edge
    i16 3, label %lor.lhs.false.cond.end_crit_edge
  ]

lor.lhs.false.cond.end_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cond.false:                                       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  %phi.cast = trunc i16 %9 to i8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %lor.lhs.false.cond.end_crit_edge
  %cond = phi i8 [ %phi.cast, %cond.false ], [ 4, %lor.lhs.false.cond.end_crit_edge ]
  %conv16 = trunc i16 %7 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv16)
  %tobool17.not = icmp eq i8 %conv16, 0
  %dec = add i8 %conv16, -1
  %spec.select = select i1 %tobool17.not, i8 0, i8 %dec
  %11 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %extra, align 4
  %conv21109 = and i32 %12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv21109)
  %tobool22.not = icmp eq i32 %conv21109, 0
  br i1 %tobool22.not, label %cond.end.if.then30_crit_edge, label %lor.lhs.false23

cond.end.if.then30_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then30

lor.lhs.false23:                                  ; preds = %cond.end
  %iw_mode = getelementptr inbounds %struct.ieee80211_device, ptr %1, i32 0, i32 43
  %13 = ptrtoint ptr %iw_mode to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %iw_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp24 = icmp eq i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %cond)
  %cmp28 = icmp eq i8 %cond, 1
  %or.cond = select i1 %cmp24, i1 true, i1 %cmp28
  br i1 %or.cond, label %lor.lhs.false23.if.then30_crit_edge, label %lor.lhs.false23.if.end40_crit_edge

lor.lhs.false23.if.end40_crit_edge:               ; preds = %lor.lhs.false23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

lor.lhs.false23.if.then30_crit_edge:              ; preds = %lor.lhs.false23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then30

if.then30:                                        ; preds = %lor.lhs.false23.if.then30_crit_edge, %cond.end.if.then30_crit_edge
  %key_len = getelementptr inbounds %struct.iw_encode_ext, ptr %extra, i32 0, i32 5
  %15 = ptrtoint ptr %key_len to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %key_len, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 13, i16 %16)
  %cmp32 = icmp eq i16 %16, 13
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %cond)
  %cmp35 = icmp eq i8 %cond, 1
  %17 = select i1 %cmp32, i1 %cmp35, i1 false
  %alg.0 = select i1 %17, i8 5, i8 %cond
  %conv39 = zext i8 %alg.0 to i16
  %pairwise_key_type = getelementptr inbounds %struct.ieee80211_device, ptr %1, i32 0, i32 68
  %18 = ptrtoint ptr %pairwise_key_type to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv39, ptr %pairwise_key_type, align 2
  tail call void @EnableHWSecurityConfig8192(ptr noundef %dev) #9
  br label %if.end40

if.end40:                                         ; preds = %if.then30, %lor.lhs.false23.if.end40_crit_edge
  %alg.1 = phi i8 [ %alg.0, %if.then30 ], [ %cond, %lor.lhs.false23.if.end40_crit_edge ]
  %key41 = getelementptr inbounds %struct.iw_encode_ext, ptr %extra, i32 0, i32 6
  %19 = call ptr @memcpy(ptr %key, ptr %key41, i32 16)
  %20 = and i8 %alg.1, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool45.not = icmp eq i8 %20, 0
  br i1 %tobool45.not, label %if.end40.if.else_crit_edge, label %land.lhs.true46

if.end40.if.else_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true46:                                  ; preds = %if.end40
  %auth_mode = getelementptr inbounds %struct.ieee80211_device, ptr %1, i32 0, i32 50
  %21 = ptrtoint ptr %auth_mode to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %auth_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %22)
  %cmp47.not = icmp eq i32 %22, 2
  br i1 %cmp47.not, label %land.lhs.true46.if.else_crit_edge, label %if.then49

land.lhs.true46.if.else_crit_edge:                ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then49:                                        ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #11
  %conv50 = zext i8 %alg.1 to i16
  call void @setKey(ptr noundef %dev, i8 noundef zeroext %spec.select, i8 noundef zeroext %spec.select, i16 noundef zeroext %conv50, ptr noundef nonnull %zero, i8 noundef zeroext 0, ptr noundef nonnull %key) #9
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true46.if.else_crit_edge, %if.end40.if.else_crit_edge
  %conv60 = zext i8 %alg.1 to i16
  br i1 %tobool22.not, label %if.else59, label %if.then54

if.then54:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %group_key_type = getelementptr inbounds %struct.ieee80211_device, ptr %1, i32 0, i32 69
  %23 = ptrtoint ptr %group_key_type to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv60, ptr %group_key_type, align 4
  call void @setKey(ptr noundef %dev, i8 noundef zeroext %spec.select, i8 noundef zeroext %spec.select, i16 noundef zeroext %conv60, ptr noundef nonnull %broadcast_addr, i8 noundef zeroext 0, ptr noundef nonnull %key) #9
  br label %cleanup

if.else59:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %ap_mac_addr = getelementptr inbounds %struct.ieee80211_device, ptr %1, i32 0, i32 67
  call void @setKey(ptr noundef %dev, i8 noundef zeroext 4, i8 noundef zeroext %spec.select, i16 noundef zeroext %conv60, ptr noundef %ap_mac_addr, i8 noundef zeroext 0, ptr noundef nonnull %key) #9
  br label %cleanup

cleanup:                                          ; preds = %if.else59, %if.then54, %if.then49, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %key) #9
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %zero) #9
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %broadcast_addr) #9
  call void @mutex_unlock(ptr noundef %wx_mutex) #9
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_wx_get_name_rsl(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_wx_set_freq_rsl(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_wx_get_freq_rsl(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_wx_set_mode_rsl(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8192_set_rxconf(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_wx_get_mode_rsl(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_wx_set_wap_rsl(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_wx_get_wap_rsl(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_wx_set_mlme_rsl(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_softmac_scan_syncro_rsl(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_wx_set_scan_rsl(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_wx_get_scan_rsl(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_wx_set_essid_rsl(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_wx_get_essid_rsl(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_wx_set_rate_rsl(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_wx_get_rate_rsl(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_wx_set_rts_rsl(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_wx_get_rts_rsl(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8192_commit(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_wx_set_encode_rsl(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @EnableHWSecurityConfig8192(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @setKey(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_wx_get_encode_rsl(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_wx_set_power_rsl(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_wx_get_power_rsl(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_wx_set_gen_ie_rsl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_wx_set_auth_rsl(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_wx_set_encode_ext_rsl(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @r8192_wx_set_crcmon(ptr noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readnone %wrqu, ptr nocapture noundef readonly %extra) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %extra, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp sgt i32 %1, 0
  %wx_mutex = getelementptr i8, ptr %dev, i32 30372
  tail call void @mutex_lock_nested(ptr noundef %wx_mutex, i32 noundef 0) #9
  %spec.select = zext i1 %cmp to i16
  %2 = getelementptr i8, ptr %dev, i32 30370
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %spec.select, ptr %2, align 2
  tail call void @mutex_unlock(ptr noundef %wx_mutex) #9
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @r8192_wx_set_scan_type(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %aa, ptr nocapture noundef readnone %wrqu, ptr nocapture noundef readonly %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %p, align 4
  %conv = trunc i32 %1 to i16
  %ieee80211 = getelementptr i8, ptr %dev, i32 30156
  %2 = ptrtoint ptr %ieee80211 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ieee80211, align 4
  %active_scan = getelementptr inbounds %struct.ieee80211_device, ptr %3, i32 0, i32 98
  %4 = ptrtoint ptr %active_scan to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv, ptr %active_scan, align 4
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @r8192_wx_set_rawtx(ptr noundef %dev, ptr noundef %info, ptr noundef %wrqu, ptr noundef %extra) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %wx_mutex = getelementptr i8, ptr %dev, i32 30372
  tail call void @mutex_lock_nested(ptr noundef %wx_mutex, i32 noundef 0) #9
  %ieee80211 = getelementptr i8, ptr %dev, i32 30156
  %0 = ptrtoint ptr %ieee80211 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ieee80211, align 4
  %call1 = tail call i32 @ieee80211_wx_set_rawtx_rsl(ptr noundef %1, ptr noundef %info, ptr noundef %wrqu, ptr noundef %extra) #9
  tail call void @mutex_unlock(ptr noundef %wx_mutex) #9
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @r8192_wx_force_reset(ptr noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readnone %wrqu, ptr nocapture noundef readonly %extra) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %wx_mutex = getelementptr i8, ptr %dev, i32 30372
  tail call void @mutex_lock_nested(ptr noundef %wx_mutex, i32 noundef 0) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @r8192_wx_force_reset.__UNIQUE_ID_ddebug346, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@r8192_wx_force_reset, %if.then)) #9
          to label %do.end6 [label %if.then], !srcloc !32

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %extra to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %extra, align 1
  %conv = zext i8 %1 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @r8192_wx_force_reset.__UNIQUE_ID_ddebug346, ptr noundef %dev, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.5, i32 noundef %conv) #9
  br label %do.end6

do.end6:                                          ; preds = %if.then, %entry
  %2 = ptrtoint ptr %extra to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %extra, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool7 = icmp ne i8 %3, 0
  %force_reset = getelementptr i8, ptr %dev, i32 35393
  %frombool8 = zext i1 %tobool7 to i8
  %4 = ptrtoint ptr %force_reset to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %frombool8, ptr %force_reset, align 1
  tail call void @mutex_unlock(ptr noundef %wx_mutex) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_wx_set_rawtx_rsl(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !14, !16, !18, !19, !20}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = !{ptr @r8192_wx_handlers_def, !1, !"r8192_wx_handlers_def", i1 false, i1 false}
!1 = !{!"../drivers/staging/rtl8192u/r8192U_wx.c", i32 935, i32 30}
!2 = !{ptr @r8192_wx_handlers, !3, !"r8192_wx_handlers", i1 false, i1 false}
!3 = !{!"../drivers/staging/rtl8192u/r8192U_wx.c", i32 819, i32 19}
!4 = !{ptr @rtl8180_rates, !5, !"rtl8180_rates", i1 false, i1 false}
!5 = !{!"../drivers/staging/rtl8192u/r8192U_wx.c", i32 30, i32 18}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/staging/rtl8192u/r8192U_wx.c", i32 514, i32 2}
!8 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @r8192_wx_set_enc.__UNIQUE_ID_ddebug349, !7, !"__UNIQUE_ID_ddebug349", i1 false, i1 false}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/staging/rtl8192u/r8192U_wx.c", i32 578, i32 21}
!14 = !{ptr @r8192_private_handler, !15, !"r8192_private_handler", i1 false, i1 false}
!15 = !{!"../drivers/staging/rtl8192u/r8192U_wx.c", i32 900, i32 19}
!16 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/staging/rtl8192u/r8192U_wx.c", i32 137, i32 2}
!18 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @r8192_wx_force_reset.__UNIQUE_ID_ddebug346, !17, !"__UNIQUE_ID_ddebug346", i1 false, i1 false}
!20 = !{ptr @r8192_private_args, !21, !"r8192_private_args", i1 false, i1 false}
!21 = !{!"../drivers/staging/rtl8192u/r8192U_wx.c", i32 880, i32 34}
!22 = !{i32 1, !"wchar_size", i32 2}
!23 = !{i32 1, !"min_enum_size", i32 4}
!24 = !{i32 8, !"branch-target-enforcement", i32 0}
!25 = !{i32 8, !"sign-return-address", i32 0}
!26 = !{i32 8, !"sign-return-address-all", i32 0}
!27 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!28 = !{i32 7, !"uwtable", i32 1}
!29 = !{i32 7, !"frame-pointer", i32 2}
!30 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!31 = !{i8 0, i8 2}
!32 = !{i64 2149024342, i64 2149024347, i64 2149024360, i64 2149024404, i64 2149024438, i64 2149024459}
