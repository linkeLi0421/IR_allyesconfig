; ModuleID = '/llk/IR_all_yes/drivers/staging/vt6656/rxtx.c_pt.bc'
source_filename = "../drivers/staging/vt6656/rxtx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
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
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.134, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.anon.134 = type { i32, i16 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.133, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.possible_net_t = type { ptr }
%struct.anon.133 = type { i64, i64, i8 }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_rate = type { i32, i16, i16, i16 }
%struct.vnt_private = type { ptr, ptr, i8, ptr, ptr, i64, i32, i32, %struct.spinlock, %struct.mutex, i32, ptr, i32, [128 x ptr], i32, [128 x ptr], %struct.usb_anchor, i32, %struct.vnt_interrupt_buffer, i16, i8, i8, i8, %struct.vnt_cmd_card_init, %struct.vnt_rsp_card_init, i8, [6 x i8], [6 x i8], i8, i64, i32, i32, i32, i8, i8, i8, i32, i32, i32, i32, i8, i8, i32, i8, i8, [256 x i8], i8, i8, i8, i8, i8, [14 x i8], [14 x i8], [42 x i8], i16, i16, i32, i32, i16, i16, i32, i32, [32 x i32], i32, i32, i32, i32, i32, i8, [4 x i8], i8, i8, %struct.delayed_work, %struct.ieee80211_low_level_stats }
%struct.usb_anchor = type { %struct.list_head, %struct.wait_queue_head, %struct.spinlock, %struct.atomic_t, i8 }
%struct.vnt_interrupt_buffer = type { ptr }
%struct.vnt_cmd_card_init = type { i8, i8, [6 x i8], i8, i8 }
%struct.vnt_rsp_card_init = type { i8, [6 x i8], i8, i8, i8 }
%struct.ieee80211_low_level_stats = type { i32, i32, i32, i32 }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.vnt_usb_send_context = type { ptr, ptr, ptr, i32, i16, i16, i8, i8, i8, i8 }
%struct.ieee80211_key_conf = type { %struct.atomic64_t, i32, i8, i8, i8, i8, i16, i8, [0 x i8] }
%struct.atomic64_t = type { i64 }
%struct.vnt_tx_fifo_head = type { [16 x i8], i16, i16, i16, i16 }
%struct.vnt_tx_buffer = type { %struct.vnt_tx_fifo_head, %union.vnt_tx_head }
%union.vnt_tx_head = type { %struct.anon.145 }
%struct.anon.145 = type { %struct.vnt_rrv_time_rts, %union.vnt_tx }
%struct.vnt_rrv_time_rts = type { i16, i16, i16, i16, i16, i16 }
%union.vnt_tx = type { %struct.vnt_tx_mic_hdr }
%struct.vnt_tx_mic_hdr = type { %struct.vnt_mic_hdr, %union.vnt_tx_data_head }
%struct.vnt_mic_hdr = type { i8, i8, [6 x i8], [6 x i8], i16, i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, [6 x i8], i16 }
%union.vnt_tx_data_head = type { %struct.vnt_rts_g }
%struct.vnt_rts_g = type { %struct.vnt_phy_field, %struct.vnt_phy_field, i16, i16, i16, i16, %struct.ieee80211_rts, %struct.vnt_tx_datahead_g }
%struct.vnt_phy_field = type { i8, i8, i16 }
%struct.ieee80211_rts = type { i16, i16, [6 x i8], [6 x i8] }
%struct.vnt_tx_datahead_g = type { %struct.vnt_phy_field, %struct.vnt_phy_field, i16, i16, i16, i16 }
%struct.ieee80211_hdr = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, [6 x i8] }
%struct.vnt_cts = type { %struct.vnt_phy_field, i16, i16, %struct.ieee80211_cts, i16, %struct.vnt_tx_datahead_g }
%struct.ieee80211_cts = type { i16, i16, [6 x i8] }
%struct.vnt_rts_ab = type { %struct.vnt_phy_field, i16, i16, %struct.ieee80211_rts, %struct.vnt_tx_datahead_ab }
%struct.vnt_tx_datahead_ab = type { %struct.vnt_phy_field, i16, i16 }
%struct.vnt_tx_short_buf_head = type { i16, i16, %struct.vnt_phy_field, i16, i16 }
%struct.ieee80211_mgmt = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, %union.anon.149 }
%union.anon.149 = type { %struct.anon.155, [16 x i8] }
%struct.anon.155 = type { i16, i16, [6 x i8], [0 x i8] }
%struct.ieee80211_bss_conf = type { ptr, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i16, i16, i64, i32, i8, i32, ptr, [6 x i32], i16, i32, i32, i32, i32, %struct.cfg80211_chan_def, %struct.ieee80211_mu_group_data, [4 x i32], i32, i8, i8, i8, [32 x i8], i32, i8, i32, i32, %struct.ieee80211_p2p_noa_attr, i8, i16, i8, i8, ptr, i8, [6 x i8], i8, i8, i8, i8, %struct.anon.135, %struct.ieee80211_he_obss_pd, %struct.cfg80211_he_bss_color, %struct.ieee80211_fils_discovery, i32, i8, %struct.cfg80211_bitrate_mask, i32, [8 x %struct.ieee80211_tx_pwr_env], i8, i8 }
%struct.ieee80211_mu_group_data = type { [8 x i8], [16 x i8] }
%struct.ieee80211_p2p_noa_attr = type { i8, i8, [4 x %struct.ieee80211_p2p_noa_desc] }
%struct.ieee80211_p2p_noa_desc = type <{ i8, i32, i32, i32 }>
%struct.anon.135 = type { i32, i16 }
%struct.ieee80211_he_obss_pd = type { i8, i8, i8, i8, i8, [8 x i8], [8 x i8] }
%struct.cfg80211_he_bss_color = type { i8, i8, i8 }
%struct.ieee80211_fils_discovery = type { i32, i32 }
%struct.cfg80211_bitrate_mask = type { [6 x %struct.anon.136] }
%struct.anon.136 = type { i32, [10 x i8], [8 x i16], [8 x i16], i32, i32, i32 }
%struct.ieee80211_tx_pwr_env = type { i8, [8 x i8] }

@vnt_tx_packet.__UNIQUE_ID_ddebug385 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 -122, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vt6656_stage\00", [19 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"vnt_tx_packet\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/staging/vt6656/rxtx.c\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s No free context\0A\00", [44 x i8] zeroinitializer }, align 32
@ieee80211_get_tx_rate.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/net/mac80211.h\00", [41 x i8] zeroinitializer }, align 32
@vnt_get_free_context.__UNIQUE_ID_ddebug383 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.6, i8 0, i8 15, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"vnt_get_free_context\00", [43 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@vnt_get_free_context.__UNIQUE_ID_ddebug384 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.7, i8 0, i8 18, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s No Free Tx Context\0A\00", [41 x i8] zeroinitializer }, align 32
@vnt_phy_signal = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\00\01\02\03\8B\8F\8A\8E\89\8D\88\8C", [20 x i8] zeroinitializer }, align 32
@vnt_time_stampoff = internal constant { [2 x [12 x i16]], [48 x i8] } { [2 x [12 x i16]] [[12 x i16] [i16 384, i16 288, i16 226, i16 209, i16 54, i16 43, i16 37, i16 31, i16 28, i16 25, i16 24, i16 23], [12 x i16] [i16 384, i16 192, i16 130, i16 113, i16 54, i16 43, i16 37, i16 31, i16 28, i16 25, i16 24, i16 23]], [48 x i8] zeroinitializer }, align 32
@vnt_beacon_xmit.__UNIQUE_ID_ddebug386 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.9, i8 0, i8 -97, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"vnt_beacon_xmit\00", [16 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s No free context!\0A\00", [43 x i8] zeroinitializer }, align 32
@switch.table.vnt_tx_packet = internal constant { [4 x i16], [24 x i8] } { [4 x i16] [i16 160, i16 80, i16 30, i16 15], [24 x i8] zeroinitializer }, align 32
@switch.table.vnt_tx_packet.10 = internal constant { [4 x i16], [24 x i8] } { [4 x i16] [i16 160, i16 80, i16 30, i16 15], [24 x i8] zeroinitializer }, align 32
@switch.table.vnt_tx_packet.11 = internal constant { [4 x i16], [24 x i8] } { [4 x i16] [i16 160, i16 80, i16 30, i16 15], [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.12 = internal global [6 x i64] [i64 4, i64 32, i64 1027073, i64 1027074, i64 1027076, i64 1027077]
@__sancov_gen_cov_switch_values.13 = internal global [6 x i64] [i64 4, i64 16, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.14 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.15 = internal global [6 x i64] [i64 4, i64 16, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 536, i32 3 }
@___asan_gen_.29 = private unnamed_addr constant [26 x i8] c"../include/net/mac80211.h\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 2737, i32 6 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 61, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 75, i32 3 }
@___asan_gen_.40 = private unnamed_addr constant [15 x i8] c"vnt_phy_signal\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 40, i32 17 }
@___asan_gen_.43 = private unnamed_addr constant [18 x i8] c"vnt_time_stampoff\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 29, i32 18 }
@___asan_gen_.49 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.50 = private constant [33 x i8] c"../drivers/staging/vt6656/rxtx.c\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 637, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant [27 x i8] c"switch.table.vnt_tx_packet\00", align 1
@___asan_gen_.53 = private unnamed_addr constant [30 x i8] c"switch.table.vnt_tx_packet.10\00", align 1
@___asan_gen_.54 = private unnamed_addr constant [30 x i8] c"switch.table.vnt_tx_packet.11\00", align 1
@llvm.compiler.used = appending global [15 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @vnt_phy_signal, ptr @vnt_time_stampoff, ptr @.str.8, ptr @.str.9, ptr @switch.table.vnt_tx_packet, ptr @switch.table.vnt_tx_packet.10, ptr @switch.table.vnt_tx_packet.11], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vnt_phy_signal to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vnt_time_stampoff to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.vnt_tx_packet to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.vnt_tx_packet.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.vnt_tx_packet.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vnt_tx_packet(ptr noundef %priv, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %1 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data, align 4
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %0, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp.i = icmp slt i8 %4, 0
  br i1 %cmp.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %entry
  %.b49.i = load i1, ptr @ieee80211_get_tx_rate.__already_done, align 1
  br i1 %.b49.i, label %land.rhs.i.ieee80211_get_tx_rate.exit_crit_edge, label %if.then.i, !prof !33

land.rhs.i.ieee80211_get_tx_rate.exit_crit_edge:  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ieee80211_get_tx_rate.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @ieee80211_get_tx_rate.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 2737, i32 noundef 9, ptr noundef null) #5
  br label %ieee80211_get_tx_rate.exit

if.end39.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %priv, align 8
  %wiphy.i = getelementptr inbounds %struct.ieee80211_hw, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %wiphy.i, align 8
  %band.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %9 = ptrtoint ptr %band.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %bf.load.i = load i32, ptr %band.i, align 4
  %bf.lshr.i = lshr i32 %bf.load.i, 29
  %arrayidx40.i = getelementptr %struct.wiphy, ptr %8, i32 0, i32 53, i32 %bf.lshr.i
  %10 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx40.i, align 4
  %bitrates.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %bitrates.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bitrates.i, align 4
  %idxprom51.i = zext i8 %4 to i32
  %arrayidx44.i = getelementptr %struct.ieee80211_rate, ptr %13, i32 %idxprom51.i
  br label %ieee80211_get_tx_rate.exit

ieee80211_get_tx_rate.exit:                       ; preds = %if.end39.i, %if.then.i, %land.rhs.i.ieee80211_get_tx_rate.exit_crit_edge
  %retval.0.i239 = phi ptr [ %arrayidx44.i, %if.end39.i ], [ null, %if.then.i ], [ null, %land.rhs.i.ieee80211_get_tx_rate.exit_crit_edge ]
  %hw_value = getelementptr inbounds %struct.ieee80211_rate, ptr %retval.0.i239, i32 0, i32 2
  %14 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %hw_value, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %15)
  %cmp = icmp ugt i16 %15, 3
  br i1 %cmp, label %if.then, label %ieee80211_get_tx_rate.exit.do.body19_crit_edge

ieee80211_get_tx_rate.exit.do.body19_crit_edge:   ; preds = %ieee80211_get_tx_rate.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body19

if.then:                                          ; preds = %ieee80211_get_tx_rate.exit
  %band = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %16 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %16)
  %bf.load = load i32, ptr %band, align 4
  %bf.lshr.mask = and i32 %bf.load, -536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %bf.lshr.mask)
  %cmp3 = icmp eq i32 %bf.lshr.mask, 536870912
  br i1 %cmp3, label %if.then.do.body19_crit_edge, label %if.else

if.then.do.body19_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body19

if.else:                                          ; preds = %if.then
  %flags6 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 9
  %17 = ptrtoint ptr %flags6 to i32
  call void @__asan_loadN_noabort(i32 %17, i32 2)
  %bf.load7 = load i16, ptr %flags6, align 1
  %18 = and i16 %bf.load7, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool.not = icmp eq i16 %18, 0
  br i1 %tobool.not, label %if.else.do.body19_crit_edge, label %if.then9

if.else.do.body19_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body19

if.then9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %basic_rates = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 42
  %19 = ptrtoint ptr %basic_rates to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %basic_rates, align 4
  %and10 = and i32 %20, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  %not.tobool11.not = xor i1 %tobool11.not, true
  %.238 = select i1 %tobool11.not, i8 3, i8 2
  br label %do.body19

do.body19:                                        ; preds = %if.then9, %if.else.do.body19_crit_edge, %if.then.do.body19_crit_edge, %ieee80211_get_tx_rate.exit.do.body19_crit_edge
  %cmp56 = phi i1 [ true, %if.then.do.body19_crit_edge ], [ false, %if.then9 ], [ true, %if.else.do.body19_crit_edge ], [ false, %ieee80211_get_tx_rate.exit.do.body19_crit_edge ]
  %cmp67 = phi i1 [ false, %if.then.do.body19_crit_edge ], [ %not.tobool11.not, %if.then9 ], [ false, %if.else.do.body19_crit_edge ], [ false, %ieee80211_get_tx_rate.exit.do.body19_crit_edge ]
  %pkt_type.0 = phi i8 [ 0, %if.then.do.body19_crit_edge ], [ %.238, %if.then9 ], [ 0, %if.else.do.body19_crit_edge ], [ 1, %ieee80211_get_tx_rate.exit.do.body19_crit_edge ]
  %lock = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 8
  %call23 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vnt_get_free_context.__UNIQUE_ID_ddebug383, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vnt_tx_packet, %if.then.i240)) #5
          to label %do.end.i [label %if.then.i240], !srcloc !34

if.then.i240:                                     ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #7
  %usb.i = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 3
  %21 = ptrtoint ptr %usb.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %usb.i, align 4
  %dev.i = getelementptr inbounds %struct.usb_device, ptr %22, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vnt_get_free_context.__UNIQUE_ID_ddebug383, ptr noundef %dev.i, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.5) #5
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i240, %do.body19
  %num_tx_context.i = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 17
  %23 = ptrtoint ptr %num_tx_context.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_tx_context.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp60.not.i = icmp eq i32 %24, 0
  br i1 %cmp60.not.i, label %do.end.i.do.body15.i_crit_edge, label %do.end.i.for.body.i_crit_edge

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  br label %for.body.i

do.end.i.do.body15.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body15.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end.i.for.body.i_crit_edge
  %ii.061.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %do.end.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.vnt_private, ptr %priv, i32 0, i32 15, i32 %ii.061.i
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.i, align 4
  %tobool3.not.i = icmp eq ptr %26, null
  br i1 %tobool3.not.i, label %for.body.i.do.body29_crit_edge, label %if.end5.i

for.body.i.do.body29_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body29

if.end5.i:                                        ; preds = %for.body.i
  %in_use.i = getelementptr inbounds %struct.vnt_usb_send_context, ptr %26, i32 0, i32 9
  %27 = ptrtoint ptr %in_use.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %in_use.i, align 1, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool8.not.i = icmp eq i8 %28, 0
  br i1 %tobool8.not.i, label %if.end40, label %for.inc.i

for.inc.i:                                        ; preds = %if.end5.i
  %inc.i = add nuw i32 %ii.061.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %24
  br i1 %exitcond.not.i, label %for.inc.i.do.body15.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.inc.i.do.body15.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body15.i

do.body15.i:                                      ; preds = %for.inc.i.do.body15.i_crit_edge, %do.end.i.do.body15.i_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vnt_get_free_context.__UNIQUE_ID_ddebug384, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vnt_tx_packet, %if.then27.i)) #5
          to label %do.end32.i [label %if.then27.i], !srcloc !34

if.then27.i:                                      ; preds = %do.body15.i
  call void @__sanitizer_cov_trace_pc() #7
  %usb28.i = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 3
  %29 = ptrtoint ptr %usb28.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %usb28.i, align 4
  %dev29.i = getelementptr inbounds %struct.usb_device, ptr %30, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vnt_get_free_context.__UNIQUE_ID_ddebug384, ptr noundef %dev29.i, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.5) #5
  br label %do.end32.i

do.end32.i:                                       ; preds = %if.then27.i, %do.body15.i
  %31 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %priv, align 8
  tail call void @ieee80211_stop_queues(ptr noundef %32) #5
  br label %do.body29

do.body29:                                        ; preds = %do.end32.i, %for.body.i.do.body29_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vnt_tx_packet.__UNIQUE_ID_ddebug385, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vnt_tx_packet, %if.then35)) #5
          to label %do.end38 [label %if.then35], !srcloc !34

if.then35:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #7
  %usb = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 3
  %33 = ptrtoint ptr %usb to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %usb, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %34, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vnt_tx_packet.__UNIQUE_ID_ddebug385, ptr noundef %dev, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1) #5
  br label %do.end38

do.end38:                                         ; preds = %if.then35, %do.body29
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call23) #5
  br label %cleanup

if.end40:                                         ; preds = %if.end5.i
  %in_use.i.le = getelementptr inbounds %struct.vnt_usb_send_context, ptr %26, i32 0, i32 9
  %35 = ptrtoint ptr %in_use.i.le to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 1, ptr %in_use.i.le, align 1
  %pkt_type41 = getelementptr inbounds %struct.vnt_usb_send_context, ptr %26, i32 0, i32 8
  %36 = ptrtoint ptr %pkt_type41 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %pkt_type.0, ptr %pkt_type41, align 2
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %37 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %len, align 4
  %add = add i32 %38, 4
  %frame_len = getelementptr inbounds %struct.vnt_usb_send_context, ptr %26, i32 0, i32 3
  %39 = ptrtoint ptr %frame_len to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %add, ptr %frame_len, align 4
  %40 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %hw_value, align 2
  %tx_rate43 = getelementptr inbounds %struct.vnt_usb_send_context, ptr %26, i32 0, i32 5
  %42 = ptrtoint ptr %tx_rate43 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %41, ptr %tx_rate43, align 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call23) #5
  %call45 = tail call ptr @skb_clone(ptr noundef %skb, i32 noundef 2592) #5
  %skb46 = getelementptr inbounds %struct.vnt_usb_send_context, ptr %26, i32 0, i32 1
  %43 = ptrtoint ptr %skb46 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call45, ptr %skb46, align 4
  %tobool48.not = icmp eq ptr %call45, null
  br i1 %tobool48.not, label %if.then49, label %if.end50

if.then49:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  %44 = ptrtoint ptr %in_use.i.le to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %in_use.i.le, align 1
  br label %cleanup

if.end50:                                         ; preds = %if.end40
  %use_cts_prot.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 21
  %45 = ptrtoint ptr %use_cts_prot.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %bf.load.i242 = load i8, ptr %use_cts_prot.i, align 1
  %46 = and i8 %bf.load.i242, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool.not.i = icmp eq i8 %46, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i242)
  %tobool3.not.i243 = icmp sgt i8 %bf.load.i242, -1
  %..i = select i1 %tobool3.not.i243, i16 36, i16 48
  %spec.select.i = select i1 %tobool3.not.i243, i16 8, i16 32
  %size.0.i = select i1 %tobool.not.i, i16 %spec.select.i, i16 %..i
  %hw_key.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %47 = ptrtoint ptr %hw_key.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %hw_key.i, align 4
  %tobool13.not.i = icmp eq ptr %48, null
  br i1 %tobool13.not.i, label %if.end50.vnt_get_hdr_size.exit_crit_edge, label %if.then14.i

if.end50.vnt_get_hdr_size.exit_crit_edge:         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #7
  br label %vnt_get_hdr_size.exit

if.then14.i:                                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #7
  %cipher.i = getelementptr inbounds %struct.ieee80211_key_conf, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %cipher.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %cipher.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1027076, i32 %50)
  %cmp.i244 = icmp eq i32 %50, 1027076
  %narrow.i = add nuw nsw i16 %size.0.i, 48
  %spec.select58.i = select i1 %cmp.i244, i16 %narrow.i, i16 %size.0.i
  br label %vnt_get_hdr_size.exit

vnt_get_hdr_size.exit:                            ; preds = %if.then14.i, %if.end50.vnt_get_hdr_size.exit_crit_edge
  %size.1.i = phi i16 [ %size.0.i, %if.end50.vnt_get_hdr_size.exit_crit_edge ], [ %spec.select58.i, %if.then14.i ]
  %.59.i.op = select i1 %tobool3.not.i243, i16 32, i16 36
  %add32.i = select i1 %tobool.not.i, i16 28, i16 %.59.i.op
  %add45.i = add nuw nsw i16 %add32.i, %size.1.i
  %conv52 = zext i16 %add45.i to i32
  %call53 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef %conv52) #5
  %tx_buffer54 = getelementptr inbounds %struct.vnt_usb_send_context, ptr %26, i32 0, i32 2
  %51 = ptrtoint ptr %tx_buffer54 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call53, ptr %tx_buffer54, align 4
  %type = getelementptr inbounds %struct.vnt_usb_send_context, ptr %26, i32 0, i32 6
  %52 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 0, ptr %type, align 4
  %fifo_ctl = getelementptr inbounds %struct.vnt_tx_fifo_head, ptr %call53, i32 0, i32 1
  %. = select i1 %cmp67, i16 2, i16 3
  %spec.select267 = select i1 %cmp, i16 %., i16 1
  %.sink266 = select i1 %cmp56, i16 0, i16 %spec.select267
  %53 = ptrtoint ptr %fifo_ctl to i32
  call void @__asan_storeN_noabort(i32 %53, i32 2)
  store i16 %.sink266, ptr %fifo_ctl, align 1
  %54 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %2, align 2
  %56 = and i16 %55, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %56)
  %cmp.i245 = icmp eq i16 %56, 2048
  br i1 %cmp.i245, label %vnt_get_hdr_size.exit.if.end92_crit_edge, label %if.then82

vnt_get_hdr_size.exit.if.end92_crit_edge:         ; preds = %vnt_get_hdr_size.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end92

if.then82:                                        ; preds = %vnt_get_hdr_size.exit
  call void @__sanitizer_cov_trace_pc() #7
  %fifo_ctl83 = getelementptr inbounds %struct.vnt_tx_fifo_head, ptr %call53, i32 0, i32 1
  %57 = ptrtoint ptr %fifo_ctl83 to i32
  call void @__asan_loadN_noabort(i32 %57, i32 2)
  %58 = load i16, ptr %fifo_ctl83, align 1
  %59 = or i16 %58, 28672
  store i16 %59, ptr %fifo_ctl83, align 1
  br label %if.end92

if.end92:                                         ; preds = %if.then82, %vnt_get_hdr_size.exit.if.end92_crit_edge
  %.sink = phi i16 [ 32000, %if.then82 ], [ 16415, %vnt_get_hdr_size.exit.if.end92_crit_edge ]
  %60 = getelementptr inbounds %struct.vnt_tx_fifo_head, ptr %call53, i32 0, i32 2
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_storeN_noabort(i32 %61, i32 2)
  store i16 %.sink, ptr %60, align 1
  %62 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %cb.i, align 8
  %and94 = and i32 %63, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and94)
  %tobool95.not = icmp eq i32 %and94, 0
  br i1 %tobool95.not, label %if.then96, label %if.end92.if.end101_crit_edge

if.end92.if.end101_crit_edge:                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end101

if.then96:                                        ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #7
  %fifo_ctl97 = getelementptr inbounds %struct.vnt_tx_fifo_head, ptr %call53, i32 0, i32 1
  %64 = ptrtoint ptr %fifo_ctl97 to i32
  call void @__asan_loadN_noabort(i32 %64, i32 2)
  %65 = load i16, ptr %fifo_ctl97, align 1
  %66 = or i16 %65, 512
  store i16 %66, ptr %fifo_ctl97, align 1
  br label %if.end101

if.end101:                                        ; preds = %if.then96, %if.end92.if.end101_crit_edge
  %67 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %2, align 2
  %69 = and i16 %68, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %69)
  %cmp.i246.not = icmp eq i16 %69, 0
  br i1 %cmp.i246.not, label %if.end101.if.end109_crit_edge, label %if.then104

if.end101.if.end109_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end109

if.then104:                                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #7
  %fifo_ctl105 = getelementptr inbounds %struct.vnt_tx_fifo_head, ptr %call53, i32 0, i32 1
  %70 = ptrtoint ptr %fifo_ctl105 to i32
  call void @__asan_loadN_noabort(i32 %70, i32 2)
  %71 = load i16, ptr %fifo_ctl105, align 1
  %72 = or i16 %71, 2048
  store i16 %72, ptr %fifo_ctl105, align 1
  br label %if.end109

if.end109:                                        ; preds = %if.then104, %if.end101.if.end109_crit_edge
  %73 = ptrtoint ptr %use_cts_prot.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %bf.load110 = load i8, ptr %use_cts_prot.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load110)
  %tobool112.not = icmp sgt i8 %bf.load110, -1
  br i1 %tobool112.not, label %if.end109.if.end118_crit_edge, label %if.then113

if.end109.if.end118_crit_edge:                    ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end118

if.then113:                                       ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #7
  %fifo_ctl114 = getelementptr inbounds %struct.vnt_tx_fifo_head, ptr %call53, i32 0, i32 1
  %74 = ptrtoint ptr %fifo_ctl114 to i32
  call void @__asan_loadN_noabort(i32 %74, i32 2)
  %75 = load i16, ptr %fifo_ctl114, align 1
  %76 = or i16 %75, -32768
  store i16 %76, ptr %fifo_ctl114, align 1
  br label %if.end118

if.end118:                                        ; preds = %if.then113, %if.end109.if.end118_crit_edge
  %77 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %2, align 2
  %79 = and i16 %78, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %79)
  %cmp.i247 = icmp eq i16 %79, 3
  br i1 %cmp.i247, label %if.then121, label %if.end118.if.end126_crit_edge

if.end118.if.end126_crit_edge:                    ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end126

if.then121:                                       ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #7
  %fifo_ctl122 = getelementptr inbounds %struct.vnt_tx_fifo_head, ptr %call53, i32 0, i32 1
  %80 = ptrtoint ptr %fifo_ctl122 to i32
  call void @__asan_loadN_noabort(i32 %80, i32 2)
  %81 = load i16, ptr %fifo_ctl122, align 1
  %82 = or i16 %81, 256
  store i16 %82, ptr %fifo_ctl122, align 1
  br label %if.end126

if.end126:                                        ; preds = %if.then121, %if.end118.if.end126_crit_edge
  %83 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %2, align 2
  %call128 = tail call i32 @ieee80211_hdrlen(i16 noundef zeroext %84) #8
  %call128.tr = trunc i32 %call128 to i16
  %85 = shl i16 %call128.tr, 2
  %86 = and i16 %85, 252
  %frag_ctl = getelementptr inbounds %struct.vnt_tx_fifo_head, ptr %call53, i32 0, i32 3
  %87 = ptrtoint ptr %frag_ctl to i32
  call void @__asan_storeN_noabort(i32 %87, i32 2)
  store i16 %86, ptr %frag_ctl, align 1
  %88 = ptrtoint ptr %hw_key.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %hw_key.i, align 4
  %tobool130.not = icmp eq ptr %89, null
  br i1 %tobool130.not, label %if.end126.if.end136_crit_edge, label %if.then131

if.end126.if.end136_crit_edge:                    ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end136

if.then131:                                       ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #7
  %icv_len = getelementptr inbounds %struct.ieee80211_key_conf, ptr %89, i32 0, i32 2
  %90 = ptrtoint ptr %icv_len to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %icv_len, align 4
  %conv133 = zext i8 %91 to i32
  %92 = ptrtoint ptr %frame_len to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %frame_len, align 4
  %add135 = add i32 %93, %conv133
  store i32 %add135, ptr %frame_len, align 4
  br label %if.end136

if.end136:                                        ; preds = %if.then131, %if.end126.if.end136_crit_edge
  %94 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %hw_value, align 2
  %96 = tail call i16 @llvm.bswap.i16(i16 %95)
  %current_rate = getelementptr inbounds %struct.vnt_tx_fifo_head, ptr %call53, i32 0, i32 4
  %97 = ptrtoint ptr %current_rate to i32
  call void @__asan_storeN_noabort(i32 %97, i32 2)
  store i16 %96, ptr %current_rate, align 1
  %98 = ptrtoint ptr %skb46 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %skb46, align 4
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %99, i32 0, i32 3
  %use_cts_prot.i248 = getelementptr inbounds %struct.sk_buff, ptr %99, i32 0, i32 3, i32 21
  %100 = ptrtoint ptr %use_cts_prot.i248 to i32
  call void @__asan_load1_noabort(i32 %100)
  %bf.load.i249 = load i8, ptr %use_cts_prot.i248, align 1
  %101 = and i8 %bf.load.i249, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %tobool.not.i250 = icmp eq i8 %101, 0
  br i1 %tobool.not.i250, label %if.end5.i254, label %if.then.i252

if.then.i252:                                     ; preds = %if.end136
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i249)
  %tobool3.not.i251 = icmp sgt i8 %bf.load.i249, -1
  %102 = ptrtoint ptr %tx_buffer54 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %tx_buffer54, align 4
  %tx_head2.i12.i = getelementptr inbounds %struct.vnt_tx_buffer, ptr %103, i32 0, i32 1
  br i1 %tobool3.not.i251, label %if.end.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.then.i252
  %tx.i.i = getelementptr inbounds %struct.vnt_tx_buffer, ptr %103, i32 0, i32 1, i32 0, i32 1
  %104 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %26, align 4
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %105, align 8
  %vif.i.i.i = getelementptr inbounds %struct.vnt_private, ptr %105, i32 0, i32 1
  %108 = ptrtoint ptr %vif.i.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %vif.i.i.i, align 4
  %110 = ptrtoint ptr %frame_len to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %frame_len, align 4
  %call2.i.i.i = tail call zeroext i16 @ieee80211_rts_duration(ptr noundef %107, ptr noundef %109, i32 noundef %111, ptr noundef %cb.i.i) #5
  %rts_rrv_time_aa.i.i = getelementptr inbounds %struct.vnt_tx_buffer, ptr %103, i32 0, i32 1, i32 0, i32 0, i32 1
  %112 = ptrtoint ptr %rts_rrv_time_aa.i.i to i32
  call void @__asan_storeN_noabort(i32 %112, i32 2)
  store i16 %call2.i.i.i, ptr %rts_rrv_time_aa.i.i, align 1
  %113 = ptrtoint ptr %tx_head2.i12.i to i32
  call void @__asan_storeN_noabort(i32 %113, i32 2)
  store i16 %call2.i.i.i, ptr %tx_head2.i12.i, align 1
  %rts_rrv_time_bb.i.i = getelementptr inbounds %struct.vnt_tx_buffer, ptr %103, i32 0, i32 1, i32 0, i32 0, i32 2
  %114 = ptrtoint ptr %rts_rrv_time_bb.i.i to i32
  call void @__asan_storeN_noabort(i32 %114, i32 2)
  store i16 %call2.i.i.i, ptr %rts_rrv_time_bb.i.i, align 1
  %115 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %26, align 4
  %117 = ptrtoint ptr %skb46 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %skb46, align 4
  %119 = getelementptr inbounds %struct.sk_buff, ptr %118, i32 0, i32 3, i32 8
  %120 = ptrtoint ptr %119 to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %119, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %121)
  %cmp.i.i.i.i = icmp slt i8 %121, 0
  br i1 %cmp.i.i.i.i, label %land.rhs.i.i.i.i, label %if.end39.i.i.i.i

land.rhs.i.i.i.i:                                 ; preds = %if.then4.i
  %.b49.i.i.i.i = load i1, ptr @ieee80211_get_tx_rate.__already_done, align 1
  br i1 %.b49.i.i.i.i, label %land.rhs.i.i.i.i.vnt_rxtx_rsvtime_le16.exit.i.i_crit_edge, label %if.then.i.i.i.i, !prof !33

land.rhs.i.i.i.i.vnt_rxtx_rsvtime_le16.exit.i.i_crit_edge: ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vnt_rxtx_rsvtime_le16.exit.i.i

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @ieee80211_get_tx_rate.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 2737, i32 noundef 9, ptr noundef null) #5
  br label %vnt_rxtx_rsvtime_le16.exit.i.i

if.end39.i.i.i.i:                                 ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #7
  %122 = ptrtoint ptr %116 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %116, align 8
  %wiphy.i.i.i.i = getelementptr inbounds %struct.ieee80211_hw, ptr %123, i32 0, i32 1
  %124 = ptrtoint ptr %wiphy.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %wiphy.i.i.i.i, align 8
  %band.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %118, i32 0, i32 3, i32 4
  %126 = ptrtoint ptr %band.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %bf.load.i.i.i.i = load i32, ptr %band.i.i.i.i, align 4
  %bf.lshr.i.i.i.i = lshr i32 %bf.load.i.i.i.i, 29
  %arrayidx40.i.i.i.i = getelementptr %struct.wiphy, ptr %125, i32 0, i32 53, i32 %bf.lshr.i.i.i.i
  %127 = ptrtoint ptr %arrayidx40.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %arrayidx40.i.i.i.i, align 4
  %bitrates.i.i.i.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %128, i32 0, i32 1
  %129 = ptrtoint ptr %bitrates.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %bitrates.i.i.i.i, align 4
  %idxprom51.i.i.i.i = zext i8 %121 to i32
  %arrayidx44.i.i.i.i = getelementptr %struct.ieee80211_rate, ptr %130, i32 %idxprom51.i.i.i.i
  br label %vnt_rxtx_rsvtime_le16.exit.i.i

vnt_rxtx_rsvtime_le16.exit.i.i:                   ; preds = %if.end39.i.i.i.i, %if.then.i.i.i.i, %land.rhs.i.i.i.i.vnt_rxtx_rsvtime_le16.exit.i.i_crit_edge
  %retval.0.i.i.i.i = phi ptr [ %arrayidx44.i.i.i.i, %if.end39.i.i.i.i ], [ null, %if.then.i.i.i.i ], [ null, %land.rhs.i.i.i.i.vnt_rxtx_rsvtime_le16.exit.i.i_crit_edge ]
  %131 = ptrtoint ptr %116 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %116, align 8
  %vif.i30.i.i = getelementptr inbounds %struct.sk_buff, ptr %118, i32 0, i32 3, i32 24
  %133 = ptrtoint ptr %vif.i30.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %vif.i30.i.i, align 8
  %band.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %118, i32 0, i32 3, i32 4
  %135 = ptrtoint ptr %band.i.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %bf.load.i.i.i = load i32, ptr %band.i.i.i, align 4
  %bf.lshr.i.i.i = lshr i32 %bf.load.i.i.i, 29
  %136 = ptrtoint ptr %frame_len to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %frame_len, align 4
  %call4.i.i.i = tail call zeroext i16 @ieee80211_generic_frame_duration(ptr noundef %132, ptr noundef %134, i32 noundef %bf.lshr.i.i.i, i32 noundef %137, ptr noundef %retval.0.i.i.i.i) #5
  %rrv_time_a.i.i = getelementptr inbounds %struct.vnt_tx_buffer, ptr %103, i32 0, i32 1, i32 0, i32 0, i32 5
  %138 = ptrtoint ptr %rrv_time_a.i.i to i32
  call void @__asan_storeN_noabort(i32 %138, i32 2)
  store i16 %call4.i.i.i, ptr %rrv_time_a.i.i, align 1
  %rrv_time_b.i.i = getelementptr inbounds %struct.vnt_tx_buffer, ptr %103, i32 0, i32 1, i32 0, i32 0, i32 4
  %139 = ptrtoint ptr %rrv_time_b.i.i to i32
  call void @__asan_storeN_noabort(i32 %139, i32 2)
  store i16 %call4.i.i.i, ptr %rrv_time_b.i.i, align 1
  %hw_key.i.i = getelementptr inbounds %struct.sk_buff, ptr %99, i32 0, i32 3, i32 28
  %140 = ptrtoint ptr %hw_key.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %hw_key.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %141, null
  br i1 %tobool.not.i.i, label %vnt_rxtx_rsvtime_le16.exit.i.i.if.end13.i.i_crit_edge, label %if.then.i.i

vnt_rxtx_rsvtime_le16.exit.i.i.if.end13.i.i_crit_edge: ; preds = %vnt_rxtx_rsvtime_le16.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13.i.i

if.then.i.i:                                      ; preds = %vnt_rxtx_rsvtime_le16.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %142 = ptrtoint ptr %skb46 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %skb46, align 4
  %call9.i.i = tail call fastcc zeroext i1 @vnt_fill_txkey(ptr noundef %103, ptr noundef %143) #5
  %head12.i.i = getelementptr inbounds %struct.vnt_tx_buffer, ptr %103, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1
  %spec.select.i.i = select i1 %call9.i.i, ptr %head12.i.i, ptr %tx.i.i
  br label %if.end13.i.i

if.end13.i.i:                                     ; preds = %if.then.i.i, %vnt_rxtx_rsvtime_le16.exit.i.i.if.end13.i.i_crit_edge
  %head.0.i.i = phi ptr [ %tx.i.i, %vnt_rxtx_rsvtime_le16.exit.i.i.if.end13.i.i_crit_edge ], [ %spec.select.i.i, %if.then.i.i ]
  %144 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %26, align 4
  %top_cck_basic_rate.i.i.i = getelementptr inbounds %struct.vnt_private, ptr %145, i32 0, i32 44
  %146 = ptrtoint ptr %top_cck_basic_rate.i.i.i to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %top_cck_basic_rate.i.i.i, align 1
  %preamble_type1.i.i.i.i = getelementptr inbounds %struct.vnt_private, ptr %145, i32 0, i32 46
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %147)
  %148 = icmp ult i8 %147, 4
  br i1 %148, label %switch.lookup, label %if.end13.i.i.vnt_get_phy_field.exit.i.i.i_crit_edge

if.end13.i.i.vnt_get_phy_field.exit.i.i.i_crit_edge: ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vnt_get_phy_field.exit.i.i.i

switch.lookup:                                    ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %149 = ptrtoint ptr %preamble_type1.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %preamble_type1.i.i.i.i, align 2
  %151 = sext i8 %147 to i32
  %switch.gep = getelementptr inbounds [4 x i16], ptr @switch.table.vnt_tx_packet, i32 0, i32 %151
  %152 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load2_noabort(i32 %152)
  %switch.load = load i16, ptr %switch.gep, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %147)
  %cmp25.not.i.i.i.i = icmp ne i8 %147, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %150)
  %cmp29.i.i.i.i = icmp eq i8 %150, 1
  %or.cond.i.i.i.i = select i1 %cmp25.not.i.i.i.i, i1 %cmp29.i.i.i.i, i1 false
  %spec.select78.i.i.i.i = select i1 %or.cond.i.i.i.i, i8 8, i8 0
  br label %vnt_get_phy_field.exit.i.i.i

vnt_get_phy_field.exit.i.i.i:                     ; preds = %switch.lookup, %if.end13.i.i.vnt_get_phy_field.exit.i.i.i_crit_edge
  %count.082.i.i.i.i = phi i16 [ %switch.load, %switch.lookup ], [ 0, %if.end13.i.i.vnt_get_phy_field.exit.i.i.i_crit_edge ]
  %mask.0.i.i.i.i = phi i8 [ %spec.select78.i.i.i.i, %switch.lookup ], [ 0, %if.end13.i.i.vnt_get_phy_field.exit.i.i.i_crit_edge ]
  %153 = tail call i8 @llvm.umin.i8(i8 %147, i8 11) #5
  %spec.select77.i.i.i.i = zext i8 %153 to i32
  %arrayidx.i.i.i.i = getelementptr [12 x i8], ptr @vnt_phy_signal, i32 0, i32 %spec.select77.i.i.i.i
  %154 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %arrayidx.i.i.i.i, align 1
  %or.i.i.i.i = or i8 %155, %mask.0.i.i.i.i
  %156 = ptrtoint ptr %head.0.i.i to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 %or.i.i.i.i, ptr %head.0.i.i, align 1
  %service.i.i.i.i = getelementptr inbounds %struct.vnt_phy_field, ptr %head.0.i.i, i32 0, i32 1
  %157 = ptrtoint ptr %service.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 0, ptr %service.i.i.i.i, align 1
  %158 = tail call i16 @llvm.bswap.i16(i16 %count.082.i.i.i.i) #5
  %len55.i.i.i.i = getelementptr inbounds %struct.vnt_phy_field, ptr %head.0.i.i, i32 0, i32 2
  %159 = ptrtoint ptr %len55.i.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %159, i32 2)
  store i16 %158, ptr %len55.i.i.i.i, align 1
  %top_ofdm_basic_rate.i.i.i = getelementptr inbounds %struct.vnt_private, ptr %145, i32 0, i32 43
  %160 = ptrtoint ptr %top_ofdm_basic_rate.i.i.i to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %top_ofdm_basic_rate.i.i.i, align 8
  %162 = ptrtoint ptr %pkt_type41 to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %pkt_type41, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %161)
  %164 = icmp ult i8 %161, 4
  br i1 %164, label %switch.lookup270, label %if.then18.i29.i.i.i

if.then18.i29.i.i.i:                              ; preds = %vnt_get_phy_field.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %163)
  %cmp20.i.i.i.i = icmp eq i8 %163, 0
  %spec.select76.i.i.i.i = select i1 %cmp20.i.i.i.i, i8 16, i8 0
  br label %vnt_rxtx_rts.exit.i

switch.lookup270:                                 ; preds = %vnt_get_phy_field.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %165 = ptrtoint ptr %preamble_type1.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %preamble_type1.i.i.i.i, align 2
  %167 = sext i8 %161 to i32
  %switch.gep271 = getelementptr inbounds [4 x i16], ptr @switch.table.vnt_tx_packet.10, i32 0, i32 %167
  %168 = ptrtoint ptr %switch.gep271 to i32
  call void @__asan_load2_noabort(i32 %168)
  %switch.load272 = load i16, ptr %switch.gep271, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %161)
  %cmp25.not.i31.i.i.i = icmp ne i8 %161, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %166)
  %cmp29.i32.i.i.i = icmp eq i8 %166, 1
  %or.cond.i33.i.i.i = select i1 %cmp25.not.i31.i.i.i, i1 %cmp29.i32.i.i.i, i1 false
  %spec.select78.i34.i.i.i = select i1 %or.cond.i33.i.i.i, i8 8, i8 0
  br label %vnt_rxtx_rts.exit.i

vnt_rxtx_rts.exit.i:                              ; preds = %switch.lookup270, %if.then18.i29.i.i.i
  %count.082.i36.i.i.i = phi i16 [ 0, %if.then18.i29.i.i.i ], [ %switch.load272, %switch.lookup270 ]
  %mask.0.i37.i.i.i = phi i8 [ %spec.select76.i.i.i.i, %if.then18.i29.i.i.i ], [ %spec.select78.i34.i.i.i, %switch.lookup270 ]
  %a.i.i.i = getelementptr inbounds %struct.vnt_rts_g, ptr %head.0.i.i, i32 0, i32 1
  %169 = tail call i8 @llvm.umin.i8(i8 %161, i8 11) #5
  %spec.select77.i38.i.i.i = zext i8 %169 to i32
  %arrayidx.i39.i.i.i = getelementptr [12 x i8], ptr @vnt_phy_signal, i32 0, i32 %spec.select77.i38.i.i.i
  %170 = ptrtoint ptr %arrayidx.i39.i.i.i to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %arrayidx.i39.i.i.i, align 1
  %or.i40.i.i.i = or i8 %171, %mask.0.i37.i.i.i
  %172 = ptrtoint ptr %a.i.i.i to i32
  call void @__asan_store1_noabort(i32 %172)
  store i8 %or.i40.i.i.i, ptr %a.i.i.i, align 1
  %service.i41.i.i.i = getelementptr inbounds %struct.vnt_rts_g, ptr %head.0.i.i, i32 0, i32 1, i32 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %163)
  %cmp43.i.not.i.i.i = icmp eq i8 %163, 1
  %173 = ptrtoint ptr %service.i41.i.i.i to i32
  call void @__asan_store1_noabort(i32 %173)
  store i8 0, ptr %service.i41.i.i.i, align 1
  %conv54.i43.i.i.i = select i1 %cmp43.i.not.i.i.i, i16 %count.082.i36.i.i.i, i16 20
  %174 = tail call i16 @llvm.bswap.i16(i16 %conv54.i43.i.i.i) #5
  %len55.i44.i.i.i = getelementptr inbounds %struct.vnt_rts_g, ptr %head.0.i.i, i32 0, i32 1, i32 2
  %175 = ptrtoint ptr %len55.i44.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %175, i32 2)
  store i16 %174, ptr %len55.i44.i.i.i, align 1
  %176 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %26, align 4
  %178 = ptrtoint ptr %skb46 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %skb46, align 4
  %cb.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %179, i32 0, i32 3
  %180 = ptrtoint ptr %177 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %177, align 8
  %vif.i.i.i.i = getelementptr inbounds %struct.vnt_private, ptr %177, i32 0, i32 1
  %182 = ptrtoint ptr %vif.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %vif.i.i.i.i, align 4
  %184 = ptrtoint ptr %frame_len to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %frame_len, align 4
  %call2.i.i.i.i = tail call zeroext i16 @ieee80211_rts_duration(ptr noundef %181, ptr noundef %183, i32 noundef %185, ptr noundef %cb.i.i.i.i.i) #5
  %duration_bb.i.i.i = getelementptr inbounds %struct.vnt_rts_g, ptr %head.0.i.i, i32 0, i32 4
  %186 = ptrtoint ptr %duration_bb.i.i.i to i32
  call void @__asan_store2_noabort(i32 %186)
  store i16 %call2.i.i.i.i, ptr %duration_bb.i.i.i, align 2
  %duration_aa.i.i.i = getelementptr inbounds %struct.vnt_rts_g, ptr %head.0.i.i, i32 0, i32 3
  %187 = ptrtoint ptr %duration_aa.i.i.i to i32
  call void @__asan_store2_noabort(i32 %187)
  store i16 %call2.i.i.i.i, ptr %duration_aa.i.i.i, align 2
  %duration_ba.i.i.i = getelementptr inbounds %struct.vnt_rts_g, ptr %head.0.i.i, i32 0, i32 2
  %188 = ptrtoint ptr %duration_ba.i.i.i to i32
  call void @__asan_store2_noabort(i32 %188)
  store i16 %call2.i.i.i.i, ptr %duration_ba.i.i.i, align 2
  %data.i.i.i = getelementptr inbounds %struct.vnt_rts_g, ptr %head.0.i.i, i32 0, i32 6
  %189 = ptrtoint ptr %skb46 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %skb46, align 4
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %190, i32 0, i32 19
  %191 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %data.i.i.i.i, align 4
  %duration1.i.i.i.i = getelementptr inbounds %struct.vnt_rts_g, ptr %head.0.i.i, i32 0, i32 6, i32 1
  %193 = ptrtoint ptr %duration1.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %193)
  store i16 %call2.i.i.i.i, ptr %duration1.i.i.i.i, align 2
  %194 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_store2_noabort(i32 %194)
  store i16 -19456, ptr %data.i.i.i, align 2
  %ra.i.i.i.i = getelementptr inbounds %struct.vnt_rts_g, ptr %head.0.i.i, i32 0, i32 6, i32 2
  %addr1.i.i.i.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %192, i32 0, i32 2
  %195 = ptrtoint ptr %addr1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %addr1.i.i.i.i, align 4
  %197 = ptrtoint ptr %ra.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 %196, ptr %ra.i.i.i.i, align 4
  %add.ptr.i.i.i.i.i = getelementptr %struct.ieee80211_hdr, ptr %192, i32 0, i32 2, i32 4
  %198 = ptrtoint ptr %add.ptr.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %198)
  %199 = load i16, ptr %add.ptr.i.i.i.i.i, align 2
  %add.ptr1.i.i.i.i.i = getelementptr %struct.vnt_rts_g, ptr %head.0.i.i, i32 0, i32 6, i32 2, i32 4
  %200 = ptrtoint ptr %add.ptr1.i.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %200)
  store i16 %199, ptr %add.ptr1.i.i.i.i.i, align 2
  %ta.i.i.i.i = getelementptr inbounds %struct.vnt_rts_g, ptr %head.0.i.i, i32 0, i32 6, i32 3
  %addr2.i.i.i.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %192, i32 0, i32 3
  %201 = ptrtoint ptr %addr2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %addr2.i.i.i.i, align 4
  %203 = ptrtoint ptr %ta.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %203)
  store i32 %202, ptr %ta.i.i.i.i, align 4
  %add.ptr.i9.i.i.i.i = getelementptr %struct.ieee80211_hdr, ptr %192, i32 0, i32 3, i32 4
  %204 = ptrtoint ptr %add.ptr.i9.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %204)
  %205 = load i16, ptr %add.ptr.i9.i.i.i.i, align 2
  %add.ptr1.i10.i.i.i.i = getelementptr %struct.vnt_rts_g, ptr %head.0.i.i, i32 0, i32 6, i32 3, i32 4
  %206 = ptrtoint ptr %add.ptr1.i10.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %206)
  store i16 %205, ptr %add.ptr1.i10.i.i.i.i, align 2
  %data_head.i.i.i = getelementptr inbounds %struct.vnt_rts_g, ptr %head.0.i.i, i32 0, i32 7
  tail call fastcc void @vnt_rxtx_datahead_g(ptr noundef nonnull %26, ptr noundef %data_head.i.i.i) #5
  br label %vnt_generate_tx_parameter.exit

if.end.i:                                         ; preds = %if.then.i252
  %tx.i13.i = getelementptr inbounds %struct.vnt_tx_buffer, ptr %103, i32 0, i32 1, i32 0, i32 0, i32 4
  %207 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %26, align 4
  %209 = getelementptr inbounds %struct.sk_buff, ptr %99, i32 0, i32 3, i32 8
  %210 = ptrtoint ptr %209 to i32
  call void @__asan_load1_noabort(i32 %210)
  %211 = load i8, ptr %209, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %211)
  %cmp.i.i.i14.i = icmp slt i8 %211, 0
  br i1 %cmp.i.i.i14.i, label %land.rhs.i.i.i16.i, label %if.end39.i.i.i26.i

land.rhs.i.i.i16.i:                               ; preds = %if.end.i
  %.b49.i.i.i15.i = load i1, ptr @ieee80211_get_tx_rate.__already_done, align 1
  br i1 %.b49.i.i.i15.i, label %land.rhs.i.i.i16.i.vnt_rxtx_rsvtime_le16.exit.i39.i_crit_edge, label %if.then.i.i.i17.i, !prof !33

land.rhs.i.i.i16.i.vnt_rxtx_rsvtime_le16.exit.i39.i_crit_edge: ; preds = %land.rhs.i.i.i16.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vnt_rxtx_rsvtime_le16.exit.i39.i

if.then.i.i.i17.i:                                ; preds = %land.rhs.i.i.i16.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @ieee80211_get_tx_rate.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 2737, i32 noundef 9, ptr noundef null) #5
  br label %vnt_rxtx_rsvtime_le16.exit.i39.i

if.end39.i.i.i26.i:                               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %212 = ptrtoint ptr %208 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %208, align 8
  %wiphy.i.i.i18.i = getelementptr inbounds %struct.ieee80211_hw, ptr %213, i32 0, i32 1
  %214 = ptrtoint ptr %wiphy.i.i.i18.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %wiphy.i.i.i18.i, align 8
  %band.i.i.i19.i = getelementptr inbounds %struct.sk_buff, ptr %99, i32 0, i32 3, i32 4
  %216 = ptrtoint ptr %band.i.i.i19.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %bf.load.i.i.i20.i = load i32, ptr %band.i.i.i19.i, align 4
  %bf.lshr.i.i.i21.i = lshr i32 %bf.load.i.i.i20.i, 29
  %arrayidx40.i.i.i22.i = getelementptr %struct.wiphy, ptr %215, i32 0, i32 53, i32 %bf.lshr.i.i.i21.i
  %217 = ptrtoint ptr %arrayidx40.i.i.i22.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %arrayidx40.i.i.i22.i, align 4
  %bitrates.i.i.i23.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %218, i32 0, i32 1
  %219 = ptrtoint ptr %bitrates.i.i.i23.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %bitrates.i.i.i23.i, align 4
  %idxprom51.i.i.i24.i = zext i8 %211 to i32
  %arrayidx44.i.i.i25.i = getelementptr %struct.ieee80211_rate, ptr %220, i32 %idxprom51.i.i.i24.i
  br label %vnt_rxtx_rsvtime_le16.exit.i39.i

vnt_rxtx_rsvtime_le16.exit.i39.i:                 ; preds = %if.end39.i.i.i26.i, %if.then.i.i.i17.i, %land.rhs.i.i.i16.i.vnt_rxtx_rsvtime_le16.exit.i39.i_crit_edge
  %retval.0.i.i.i27.i = phi ptr [ %arrayidx44.i.i.i25.i, %if.end39.i.i.i26.i ], [ null, %if.then.i.i.i17.i ], [ null, %land.rhs.i.i.i16.i.vnt_rxtx_rsvtime_le16.exit.i39.i_crit_edge ]
  %221 = ptrtoint ptr %208 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %208, align 8
  %vif.i.i28.i = getelementptr inbounds %struct.sk_buff, ptr %99, i32 0, i32 3, i32 24
  %223 = ptrtoint ptr %vif.i.i28.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %vif.i.i28.i, align 8
  %band.i.i29.i = getelementptr inbounds %struct.sk_buff, ptr %99, i32 0, i32 3, i32 4
  %225 = ptrtoint ptr %band.i.i29.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %bf.load.i.i30.i = load i32, ptr %band.i.i29.i, align 4
  %bf.lshr.i.i31.i = lshr i32 %bf.load.i.i30.i, 29
  %226 = ptrtoint ptr %frame_len to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %frame_len, align 4
  %call4.i.i33.i = tail call zeroext i16 @ieee80211_generic_frame_duration(ptr noundef %222, ptr noundef %224, i32 noundef %bf.lshr.i.i31.i, i32 noundef %227, ptr noundef %retval.0.i.i.i27.i) #5
  %rrv_time_a.i34.i = getelementptr inbounds %struct.vnt_tx_buffer, ptr %103, i32 0, i32 1, i32 0, i32 0, i32 3
  %228 = ptrtoint ptr %rrv_time_a.i34.i to i32
  call void @__asan_storeN_noabort(i32 %228, i32 2)
  store i16 %call4.i.i33.i, ptr %rrv_time_a.i34.i, align 1
  %rrv_time_b.i35.i = getelementptr inbounds %struct.vnt_tx_buffer, ptr %103, i32 0, i32 1, i32 0, i32 0, i32 2
  %229 = ptrtoint ptr %rrv_time_b.i35.i to i32
  call void @__asan_storeN_noabort(i32 %229, i32 2)
  store i16 %call4.i.i33.i, ptr %rrv_time_b.i35.i, align 1
  %230 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %26, align 4
  %232 = ptrtoint ptr %skb46 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %skb46, align 4
  %cb.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %233, i32 0, i32 3
  %234 = ptrtoint ptr %231 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %231, align 8
  %vif.i24.i.i = getelementptr inbounds %struct.vnt_private, ptr %231, i32 0, i32 1
  %236 = ptrtoint ptr %vif.i24.i.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %vif.i24.i.i, align 4
  %238 = ptrtoint ptr %frame_len to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %frame_len, align 4
  %call2.i.i36.i = tail call zeroext i16 @ieee80211_ctstoself_duration(ptr noundef %235, ptr noundef %237, i32 noundef %239, ptr noundef %cb.i.i.i.i) #5
  %240 = ptrtoint ptr %tx_head2.i12.i to i32
  call void @__asan_storeN_noabort(i32 %240, i32 2)
  store i16 %call2.i.i36.i, ptr %tx_head2.i12.i, align 1
  %hw_key.i37.i = getelementptr inbounds %struct.sk_buff, ptr %99, i32 0, i32 3, i32 28
  %241 = ptrtoint ptr %hw_key.i37.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %hw_key.i37.i, align 4
  %tobool.not.i38.i = icmp eq ptr %242, null
  br i1 %tobool.not.i38.i, label %vnt_rxtx_rsvtime_le16.exit.i39.i.if.end11.i.i_crit_edge, label %if.then.i41.i

vnt_rxtx_rsvtime_le16.exit.i39.i.if.end11.i.i_crit_edge: ; preds = %vnt_rxtx_rsvtime_le16.exit.i39.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11.i.i

if.then.i41.i:                                    ; preds = %vnt_rxtx_rsvtime_le16.exit.i39.i
  call void @__sanitizer_cov_trace_pc() #7
  %243 = ptrtoint ptr %skb46 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %skb46, align 4
  %call7.i.i = tail call fastcc zeroext i1 @vnt_fill_txkey(ptr noundef %103, ptr noundef %244) #5
  %head10.i.i = getelementptr inbounds %struct.vnt_tx_buffer, ptr %103, i32 0, i32 1, i32 0, i32 1, i32 0, i32 0, i32 11, i32 4
  %spec.select.i40.i = select i1 %call7.i.i, ptr %head10.i.i, ptr %tx.i13.i
  br label %if.end11.i.i

if.end11.i.i:                                     ; preds = %if.then.i41.i, %vnt_rxtx_rsvtime_le16.exit.i39.i.if.end11.i.i_crit_edge
  %head.0.i42.i = phi ptr [ %tx.i13.i, %vnt_rxtx_rsvtime_le16.exit.i39.i.if.end11.i.i_crit_edge ], [ %spec.select.i40.i, %if.then.i41.i ]
  %245 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %26, align 4
  %top_cck_basic_rate.i.i43.i = getelementptr inbounds %struct.vnt_private, ptr %246, i32 0, i32 44
  %247 = ptrtoint ptr %top_cck_basic_rate.i.i43.i to i32
  call void @__asan_load1_noabort(i32 %247)
  %248 = load i8, ptr %top_cck_basic_rate.i.i43.i, align 1
  %preamble_type1.i.i.i44.i = getelementptr inbounds %struct.vnt_private, ptr %246, i32 0, i32 46
  %249 = ptrtoint ptr %preamble_type1.i.i.i44.i to i32
  call void @__asan_load1_noabort(i32 %249)
  %250 = load i8, ptr %preamble_type1.i.i.i44.i, align 2
  %251 = zext i8 %248 to i64
  call void @__sanitizer_cov_trace_switch(i64 %251, ptr @__sancov_gen_cov_switch_values)
  switch i8 %248, label %if.end11.i.i.vnt_rxtx_cts.exit.i_crit_edge [
    i8 0, label %if.end11.i.i.if.else.i.i.i53.i_crit_edge
    i8 1, label %sw.bb2.i.i.i45.i
    i8 2, label %sw.bb3.i.i.i46.i
    i8 3, label %sw.bb6.i.i.i47.i
  ]

if.end11.i.i.if.else.i.i.i53.i_crit_edge:         ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i.i.i53.i

if.end11.i.i.vnt_rxtx_cts.exit.i_crit_edge:       ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vnt_rxtx_cts.exit.i

sw.bb2.i.i.i45.i:                                 ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i.i.i53.i

sw.bb3.i.i.i46.i:                                 ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i.i.i53.i

sw.bb6.i.i.i47.i:                                 ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i.i.i53.i

if.else.i.i.i53.i:                                ; preds = %sw.bb6.i.i.i47.i, %sw.bb3.i.i.i46.i, %sw.bb2.i.i.i45.i, %if.end11.i.i.if.else.i.i.i53.i_crit_edge
  %count.0.ph.i.i.i48.i = phi i16 [ 11, %sw.bb6.i.i.i47.i ], [ 56, %sw.bb2.i.i.i45.i ], [ 21, %sw.bb3.i.i.i46.i ], [ 112, %if.end11.i.i.if.else.i.i.i53.i_crit_edge ]
  %tobool.not.ph.i.i.i.i = phi i1 [ false, %sw.bb6.i.i.i47.i ], [ true, %sw.bb2.i.i.i45.i ], [ true, %sw.bb3.i.i.i46.i ], [ true, %if.end11.i.i.if.else.i.i.i53.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %248)
  %cmp25.not.i.i.i49.i = icmp ne i8 %248, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %250)
  %cmp29.i.i.i50.i = icmp eq i8 %250, 1
  %or.cond.i.i.i51.i = select i1 %cmp25.not.i.i.i49.i, i1 %cmp29.i.i.i50.i, i1 false
  %spec.select78.i.i.i52.i = select i1 %or.cond.i.i.i51.i, i8 8, i8 0
  br label %vnt_rxtx_cts.exit.i

vnt_rxtx_cts.exit.i:                              ; preds = %if.else.i.i.i53.i, %if.end11.i.i.vnt_rxtx_cts.exit.i_crit_edge
  %tobool.not84.i.i.i.i = phi i1 [ %tobool.not.ph.i.i.i.i, %if.else.i.i.i53.i ], [ true, %if.end11.i.i.vnt_rxtx_cts.exit.i_crit_edge ]
  %count.082.i.i.i54.i = phi i16 [ %count.0.ph.i.i.i48.i, %if.else.i.i.i53.i ], [ 0, %if.end11.i.i.vnt_rxtx_cts.exit.i_crit_edge ]
  %mask.0.i.i.i55.i = phi i8 [ %spec.select78.i.i.i52.i, %if.else.i.i.i53.i ], [ 0, %if.end11.i.i.vnt_rxtx_cts.exit.i_crit_edge ]
  %252 = tail call i8 @llvm.umin.i8(i8 %248, i8 11) #5
  %spec.select77.i.i.i56.i = zext i8 %252 to i32
  %arrayidx.i.i.i57.i = getelementptr [12 x i8], ptr @vnt_phy_signal, i32 0, i32 %spec.select77.i.i.i56.i
  %253 = ptrtoint ptr %arrayidx.i.i.i57.i to i32
  call void @__asan_load1_noabort(i32 %253)
  %254 = load i8, ptr %arrayidx.i.i.i57.i, align 1
  %or.i.i.i58.i = or i8 %254, %mask.0.i.i.i55.i
  %255 = ptrtoint ptr %head.0.i42.i to i32
  call void @__asan_store1_noabort(i32 %255)
  store i8 %or.i.i.i58.i, ptr %head.0.i42.i, align 1
  %service.i.i.i59.i = getelementptr inbounds %struct.vnt_phy_field, ptr %head.0.i42.i, i32 0, i32 1
  %spec.select = select i1 %tobool.not84.i.i.i.i, i8 0, i8 -128
  %256 = ptrtoint ptr %service.i.i.i59.i to i32
  call void @__asan_store1_noabort(i32 %256)
  store i8 %spec.select, ptr %service.i.i.i59.i, align 1
  %257 = tail call i16 @llvm.bswap.i16(i16 %count.082.i.i.i54.i) #5
  %len55.i.i.i60.i = getelementptr inbounds %struct.vnt_phy_field, ptr %head.0.i42.i, i32 0, i32 2
  %258 = ptrtoint ptr %len55.i.i.i60.i to i32
  call void @__asan_storeN_noabort(i32 %258, i32 2)
  store i16 %257, ptr %len55.i.i.i60.i, align 1
  %259 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %26, align 4
  %261 = ptrtoint ptr %skb46 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %skb46, align 4
  %cb.i.i.i.i61.i = getelementptr inbounds %struct.sk_buff, ptr %262, i32 0, i32 3
  %263 = ptrtoint ptr %260 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %260, align 8
  %vif.i.i.i62.i = getelementptr inbounds %struct.vnt_private, ptr %260, i32 0, i32 1
  %265 = ptrtoint ptr %vif.i.i.i62.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %vif.i.i.i62.i, align 4
  %267 = ptrtoint ptr %frame_len to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %frame_len, align 4
  %call2.i.i.i63.i = tail call zeroext i16 @ieee80211_ctstoself_duration(ptr noundef %264, ptr noundef %266, i32 noundef %268, ptr noundef %cb.i.i.i.i61.i) #5
  %duration_ba.i.i64.i = getelementptr inbounds %struct.vnt_cts, ptr %head.0.i42.i, i32 0, i32 1
  %269 = ptrtoint ptr %duration_ba.i.i64.i to i32
  call void @__asan_store2_noabort(i32 %269)
  store i16 %call2.i.i.i63.i, ptr %duration_ba.i.i64.i, align 2
  %data.i.i65.i = getelementptr inbounds %struct.vnt_cts, ptr %head.0.i42.i, i32 0, i32 3
  %duration.i.i.i = getelementptr inbounds %struct.vnt_cts, ptr %head.0.i42.i, i32 0, i32 3, i32 1
  %270 = ptrtoint ptr %duration.i.i.i to i32
  call void @__asan_store2_noabort(i32 %270)
  store i16 %call2.i.i.i63.i, ptr %duration.i.i.i, align 2
  %271 = ptrtoint ptr %data.i.i65.i to i32
  call void @__asan_store2_noabort(i32 %271)
  store i16 -15360, ptr %data.i.i65.i, align 2
  %ra.i.i.i = getelementptr inbounds %struct.vnt_cts, ptr %head.0.i42.i, i32 0, i32 3, i32 2
  %current_net_addr.i.i.i = getelementptr inbounds %struct.vnt_private, ptr %246, i32 0, i32 26
  %272 = ptrtoint ptr %current_net_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %current_net_addr.i.i.i, align 4
  %274 = ptrtoint ptr %ra.i.i.i to i32
  call void @__asan_store4_noabort(i32 %274)
  store i32 %273, ptr %ra.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr %struct.vnt_private, ptr %246, i32 0, i32 26, i32 4
  %275 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %275)
  %276 = load i16, ptr %add.ptr.i.i.i.i, align 2
  %add.ptr1.i.i.i.i = getelementptr %struct.vnt_cts, ptr %head.0.i42.i, i32 0, i32 3, i32 2, i32 4
  %277 = ptrtoint ptr %add.ptr1.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %277)
  store i16 %276, ptr %add.ptr1.i.i.i.i, align 2
  %data_head.i.i66.i = getelementptr inbounds %struct.vnt_cts, ptr %head.0.i42.i, i32 0, i32 5
  tail call fastcc void @vnt_rxtx_datahead_g(ptr noundef nonnull %26, ptr noundef %data_head.i.i66.i) #5
  br label %vnt_generate_tx_parameter.exit

if.end5.i254:                                     ; preds = %if.end136
  %278 = ptrtoint ptr %tx_buffer54 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %tx_buffer54, align 4
  %tx_head2.i69.i = getelementptr inbounds %struct.vnt_tx_buffer, ptr %279, i32 0, i32 1
  %tx.i70.i = getelementptr inbounds %struct.vnt_tx_buffer, ptr %279, i32 0, i32 1, i32 0, i32 0, i32 2
  %280 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %26, align 4
  %282 = getelementptr inbounds %struct.sk_buff, ptr %99, i32 0, i32 3, i32 8
  %283 = ptrtoint ptr %282 to i32
  call void @__asan_load1_noabort(i32 %283)
  %284 = load i8, ptr %282, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %284)
  %cmp.i.i.i71.i = icmp slt i8 %284, 0
  br i1 %cmp.i.i.i71.i, label %land.rhs.i.i.i73.i, label %if.end39.i.i.i83.i

land.rhs.i.i.i73.i:                               ; preds = %if.end5.i254
  %.b49.i.i.i72.i = load i1, ptr @ieee80211_get_tx_rate.__already_done, align 1
  br i1 %.b49.i.i.i72.i, label %land.rhs.i.i.i73.i.vnt_rxtx_rsvtime_le16.exit.i93.i_crit_edge, label %if.then.i.i.i74.i, !prof !33

land.rhs.i.i.i73.i.vnt_rxtx_rsvtime_le16.exit.i93.i_crit_edge: ; preds = %land.rhs.i.i.i73.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vnt_rxtx_rsvtime_le16.exit.i93.i

if.then.i.i.i74.i:                                ; preds = %land.rhs.i.i.i73.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @ieee80211_get_tx_rate.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 2737, i32 noundef 9, ptr noundef null) #5
  br label %vnt_rxtx_rsvtime_le16.exit.i93.i

if.end39.i.i.i83.i:                               ; preds = %if.end5.i254
  call void @__sanitizer_cov_trace_pc() #7
  %285 = ptrtoint ptr %281 to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %281, align 8
  %wiphy.i.i.i75.i = getelementptr inbounds %struct.ieee80211_hw, ptr %286, i32 0, i32 1
  %287 = ptrtoint ptr %wiphy.i.i.i75.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %wiphy.i.i.i75.i, align 8
  %band.i.i.i76.i = getelementptr inbounds %struct.sk_buff, ptr %99, i32 0, i32 3, i32 4
  %289 = ptrtoint ptr %band.i.i.i76.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %bf.load.i.i.i77.i = load i32, ptr %band.i.i.i76.i, align 4
  %bf.lshr.i.i.i78.i = lshr i32 %bf.load.i.i.i77.i, 29
  %arrayidx40.i.i.i79.i = getelementptr %struct.wiphy, ptr %288, i32 0, i32 53, i32 %bf.lshr.i.i.i78.i
  %290 = ptrtoint ptr %arrayidx40.i.i.i79.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %arrayidx40.i.i.i79.i, align 4
  %bitrates.i.i.i80.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %291, i32 0, i32 1
  %292 = ptrtoint ptr %bitrates.i.i.i80.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %bitrates.i.i.i80.i, align 4
  %idxprom51.i.i.i81.i = zext i8 %284 to i32
  %arrayidx44.i.i.i82.i = getelementptr %struct.ieee80211_rate, ptr %293, i32 %idxprom51.i.i.i81.i
  br label %vnt_rxtx_rsvtime_le16.exit.i93.i

vnt_rxtx_rsvtime_le16.exit.i93.i:                 ; preds = %if.end39.i.i.i83.i, %if.then.i.i.i74.i, %land.rhs.i.i.i73.i.vnt_rxtx_rsvtime_le16.exit.i93.i_crit_edge
  %retval.0.i.i.i84.i = phi ptr [ %arrayidx44.i.i.i82.i, %if.end39.i.i.i83.i ], [ null, %if.then.i.i.i74.i ], [ null, %land.rhs.i.i.i73.i.vnt_rxtx_rsvtime_le16.exit.i93.i_crit_edge ]
  %294 = ptrtoint ptr %281 to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %281, align 8
  %vif.i.i85.i = getelementptr inbounds %struct.sk_buff, ptr %99, i32 0, i32 3, i32 24
  %296 = ptrtoint ptr %vif.i.i85.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %vif.i.i85.i, align 8
  %band.i.i86.i = getelementptr inbounds %struct.sk_buff, ptr %99, i32 0, i32 3, i32 4
  %298 = ptrtoint ptr %band.i.i86.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %bf.load.i.i87.i = load i32, ptr %band.i.i86.i, align 4
  %bf.lshr.i.i88.i = lshr i32 %bf.load.i.i87.i, 29
  %299 = ptrtoint ptr %frame_len to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load i32, ptr %frame_len, align 4
  %call4.i.i90.i = tail call zeroext i16 @ieee80211_generic_frame_duration(ptr noundef %295, ptr noundef %297, i32 noundef %bf.lshr.i.i88.i, i32 noundef %300, ptr noundef %retval.0.i.i.i84.i) #5
  %rrv_time.i.i = getelementptr inbounds %struct.vnt_tx_buffer, ptr %279, i32 0, i32 1, i32 0, i32 0, i32 1
  %301 = ptrtoint ptr %rrv_time.i.i to i32
  call void @__asan_storeN_noabort(i32 %301, i32 2)
  store i16 %call4.i.i90.i, ptr %rrv_time.i.i, align 1
  %hw_key.i91.i = getelementptr inbounds %struct.sk_buff, ptr %99, i32 0, i32 3, i32 28
  %302 = ptrtoint ptr %hw_key.i91.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %hw_key.i91.i, align 4
  %tobool.not.i92.i = icmp eq ptr %303, null
  br i1 %tobool.not.i92.i, label %vnt_rxtx_rsvtime_le16.exit.i93.i.if.end9.i.i_crit_edge, label %if.then.i95.i

vnt_rxtx_rsvtime_le16.exit.i93.i.if.end9.i.i_crit_edge: ; preds = %vnt_rxtx_rsvtime_le16.exit.i93.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i.i

if.then.i95.i:                                    ; preds = %vnt_rxtx_rsvtime_le16.exit.i93.i
  call void @__sanitizer_cov_trace_pc() #7
  %304 = ptrtoint ptr %skb46 to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %skb46, align 4
  %call5.i.i = tail call fastcc zeroext i1 @vnt_fill_txkey(ptr noundef %279, ptr noundef %305) #5
  %head8.i.i = getelementptr inbounds %struct.vnt_tx_buffer, ptr %279, i32 0, i32 1, i32 0, i32 1, i32 0, i32 0, i32 11
  %spec.select.i94.i = select i1 %call5.i.i, ptr %head8.i.i, ptr %tx.i70.i
  br label %if.end9.i.i

if.end9.i.i:                                      ; preds = %if.then.i95.i, %vnt_rxtx_rsvtime_le16.exit.i93.i.if.end9.i.i_crit_edge
  %head.0.i96.i = phi ptr [ %tx.i70.i, %vnt_rxtx_rsvtime_le16.exit.i93.i.if.end9.i.i_crit_edge ], [ %spec.select.i94.i, %if.then.i95.i ]
  %306 = ptrtoint ptr %use_cts_prot.i248 to i32
  call void @__asan_load1_noabort(i32 %306)
  %bf.load.i.i = load i8, ptr %use_cts_prot.i248, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool10.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool10.not.i.i, label %if.end13.i137.i, label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end9.i.i
  %307 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %26, align 4
  %309 = ptrtoint ptr %skb46 to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %skb46, align 4
  %cb.i.i.i97.i = getelementptr inbounds %struct.sk_buff, ptr %310, i32 0, i32 3
  %311 = ptrtoint ptr %308 to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %308, align 8
  %vif.i31.i.i = getelementptr inbounds %struct.vnt_private, ptr %308, i32 0, i32 1
  %313 = ptrtoint ptr %vif.i31.i.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %vif.i31.i.i, align 4
  %315 = ptrtoint ptr %frame_len to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load i32, ptr %frame_len, align 4
  %call2.i.i98.i = tail call zeroext i16 @ieee80211_rts_duration(ptr noundef %312, ptr noundef %314, i32 noundef %316, ptr noundef %cb.i.i.i97.i) #5
  %317 = ptrtoint ptr %tx_head2.i69.i to i32
  call void @__asan_storeN_noabort(i32 %317, i32 2)
  store i16 %call2.i.i98.i, ptr %tx_head2.i69.i, align 1
  %318 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %26, align 4
  %top_ofdm_basic_rate.i.i99.i = getelementptr inbounds %struct.vnt_private, ptr %319, i32 0, i32 43
  %320 = ptrtoint ptr %top_ofdm_basic_rate.i.i99.i to i32
  call void @__asan_load1_noabort(i32 %320)
  %321 = load i8, ptr %top_ofdm_basic_rate.i.i99.i, align 8
  %322 = ptrtoint ptr %pkt_type41 to i32
  call void @__asan_load1_noabort(i32 %322)
  %323 = load i8, ptr %pkt_type41, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %321)
  %324 = icmp ult i8 %321, 4
  br i1 %324, label %switch.lookup273, label %if.then18.i.i.i.i

if.then18.i.i.i.i:                                ; preds = %if.then11.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %323)
  %cmp20.i.i.i105.i = icmp eq i8 %323, 0
  %spec.select76.i.i.i106.i = select i1 %cmp20.i.i.i105.i, i8 16, i8 0
  br label %vnt_rxtx_rts_ab_head.exit.i.i

switch.lookup273:                                 ; preds = %if.then11.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %preamble_type1.i.i.i101.i = getelementptr inbounds %struct.vnt_private, ptr %319, i32 0, i32 46
  %325 = ptrtoint ptr %preamble_type1.i.i.i101.i to i32
  call void @__asan_load1_noabort(i32 %325)
  %326 = load i8, ptr %preamble_type1.i.i.i101.i, align 2
  %327 = sext i8 %321 to i32
  %switch.gep274 = getelementptr inbounds [4 x i16], ptr @switch.table.vnt_tx_packet.11, i32 0, i32 %327
  %328 = ptrtoint ptr %switch.gep274 to i32
  call void @__asan_load2_noabort(i32 %328)
  %switch.load275 = load i16, ptr %switch.gep274, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %321)
  %cmp25.not.i.i.i108.i = icmp ne i8 %321, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %326)
  %cmp29.i.i.i109.i = icmp eq i8 %326, 1
  %or.cond.i.i.i110.i = select i1 %cmp25.not.i.i.i108.i, i1 %cmp29.i.i.i109.i, i1 false
  %spec.select78.i.i.i111.i = select i1 %or.cond.i.i.i110.i, i8 8, i8 0
  br label %vnt_rxtx_rts_ab_head.exit.i.i

vnt_rxtx_rts_ab_head.exit.i.i:                    ; preds = %switch.lookup273, %if.then18.i.i.i.i
  %count.082.i.i.i113.i = phi i16 [ 0, %if.then18.i.i.i.i ], [ %switch.load275, %switch.lookup273 ]
  %mask.0.i.i.i114.i = phi i8 [ %spec.select76.i.i.i106.i, %if.then18.i.i.i.i ], [ %spec.select78.i.i.i111.i, %switch.lookup273 ]
  %329 = tail call i8 @llvm.umin.i8(i8 %321, i8 11) #5
  %spec.select77.i.i.i115.i = zext i8 %329 to i32
  %arrayidx.i.i.i116.i = getelementptr [12 x i8], ptr @vnt_phy_signal, i32 0, i32 %spec.select77.i.i.i115.i
  %330 = ptrtoint ptr %arrayidx.i.i.i116.i to i32
  call void @__asan_load1_noabort(i32 %330)
  %331 = load i8, ptr %arrayidx.i.i.i116.i, align 1
  %or.i.i.i117.i = or i8 %331, %mask.0.i.i.i114.i
  %332 = ptrtoint ptr %head.0.i96.i to i32
  call void @__asan_store1_noabort(i32 %332)
  store i8 %or.i.i.i117.i, ptr %head.0.i96.i, align 1
  %service.i.i.i118.i = getelementptr inbounds %struct.vnt_phy_field, ptr %head.0.i96.i, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %323)
  %cmp43.i.not.i.i119.i = icmp eq i8 %323, 1
  %333 = ptrtoint ptr %service.i.i.i118.i to i32
  call void @__asan_store1_noabort(i32 %333)
  store i8 0, ptr %service.i.i.i118.i, align 1
  %conv54.i.i.i.i = select i1 %cmp43.i.not.i.i119.i, i16 %count.082.i.i.i113.i, i16 20
  %334 = tail call i16 @llvm.bswap.i16(i16 %conv54.i.i.i.i) #5
  %len55.i.i.i120.i = getelementptr inbounds %struct.vnt_phy_field, ptr %head.0.i96.i, i32 0, i32 2
  %335 = ptrtoint ptr %len55.i.i.i120.i to i32
  call void @__asan_storeN_noabort(i32 %335, i32 2)
  store i16 %334, ptr %len55.i.i.i120.i, align 1
  %336 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %26, align 4
  %338 = ptrtoint ptr %skb46 to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %skb46, align 4
  %cb.i.i.i.i121.i = getelementptr inbounds %struct.sk_buff, ptr %339, i32 0, i32 3
  %340 = ptrtoint ptr %337 to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %337, align 8
  %vif.i.i.i122.i = getelementptr inbounds %struct.vnt_private, ptr %337, i32 0, i32 1
  %342 = ptrtoint ptr %vif.i.i.i122.i to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %vif.i.i.i122.i, align 4
  %344 = ptrtoint ptr %frame_len to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load i32, ptr %frame_len, align 4
  %call2.i.i.i123.i = tail call zeroext i16 @ieee80211_rts_duration(ptr noundef %341, ptr noundef %343, i32 noundef %345, ptr noundef %cb.i.i.i.i121.i) #5
  %duration.i.i124.i = getelementptr inbounds %struct.vnt_rts_ab, ptr %head.0.i96.i, i32 0, i32 1
  %346 = ptrtoint ptr %duration.i.i124.i to i32
  call void @__asan_store2_noabort(i32 %346)
  store i16 %call2.i.i.i123.i, ptr %duration.i.i124.i, align 2
  %data.i.i125.i = getelementptr inbounds %struct.vnt_rts_ab, ptr %head.0.i96.i, i32 0, i32 3
  %347 = ptrtoint ptr %skb46 to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load ptr, ptr %skb46, align 4
  %data.i.i.i126.i = getelementptr inbounds %struct.sk_buff, ptr %348, i32 0, i32 19
  %349 = ptrtoint ptr %data.i.i.i126.i to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %data.i.i.i126.i, align 4
  %duration1.i.i.i127.i = getelementptr inbounds %struct.vnt_rts_ab, ptr %head.0.i96.i, i32 0, i32 3, i32 1
  %351 = ptrtoint ptr %duration1.i.i.i127.i to i32
  call void @__asan_store2_noabort(i32 %351)
  store i16 %call2.i.i.i123.i, ptr %duration1.i.i.i127.i, align 2
  %352 = ptrtoint ptr %data.i.i125.i to i32
  call void @__asan_store2_noabort(i32 %352)
  store i16 -19456, ptr %data.i.i125.i, align 2
  %ra.i.i.i128.i = getelementptr inbounds %struct.vnt_rts_ab, ptr %head.0.i96.i, i32 0, i32 3, i32 2
  %addr1.i.i.i129.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %350, i32 0, i32 2
  %353 = ptrtoint ptr %addr1.i.i.i129.i to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load i32, ptr %addr1.i.i.i129.i, align 4
  %355 = ptrtoint ptr %ra.i.i.i128.i to i32
  call void @__asan_store4_noabort(i32 %355)
  store i32 %354, ptr %ra.i.i.i128.i, align 4
  %add.ptr.i.i.i.i130.i = getelementptr %struct.ieee80211_hdr, ptr %350, i32 0, i32 2, i32 4
  %356 = ptrtoint ptr %add.ptr.i.i.i.i130.i to i32
  call void @__asan_load2_noabort(i32 %356)
  %357 = load i16, ptr %add.ptr.i.i.i.i130.i, align 2
  %add.ptr1.i.i.i.i131.i = getelementptr %struct.vnt_rts_ab, ptr %head.0.i96.i, i32 0, i32 3, i32 2, i32 4
  %358 = ptrtoint ptr %add.ptr1.i.i.i.i131.i to i32
  call void @__asan_store2_noabort(i32 %358)
  store i16 %357, ptr %add.ptr1.i.i.i.i131.i, align 2
  %ta.i.i.i132.i = getelementptr inbounds %struct.vnt_rts_ab, ptr %head.0.i96.i, i32 0, i32 3, i32 3
  %addr2.i.i.i133.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %350, i32 0, i32 3
  %359 = ptrtoint ptr %addr2.i.i.i133.i to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load i32, ptr %addr2.i.i.i133.i, align 4
  %361 = ptrtoint ptr %ta.i.i.i132.i to i32
  call void @__asan_store4_noabort(i32 %361)
  store i32 %360, ptr %ta.i.i.i132.i, align 4
  %add.ptr.i9.i.i.i134.i = getelementptr %struct.ieee80211_hdr, ptr %350, i32 0, i32 3, i32 4
  %362 = ptrtoint ptr %add.ptr.i9.i.i.i134.i to i32
  call void @__asan_load2_noabort(i32 %362)
  %363 = load i16, ptr %add.ptr.i9.i.i.i134.i, align 2
  %add.ptr1.i10.i.i.i135.i = getelementptr %struct.vnt_rts_ab, ptr %head.0.i96.i, i32 0, i32 3, i32 3, i32 4
  %364 = ptrtoint ptr %add.ptr1.i10.i.i.i135.i to i32
  call void @__asan_store2_noabort(i32 %364)
  store i16 %363, ptr %add.ptr1.i10.i.i.i135.i, align 2
  %data_head.i.i136.i = getelementptr inbounds %struct.vnt_rts_ab, ptr %head.0.i96.i, i32 0, i32 4
  tail call fastcc void @vnt_rxtx_datahead_ab(ptr noundef nonnull %26, ptr noundef %data_head.i.i136.i) #5
  br label %vnt_generate_tx_parameter.exit

if.end13.i137.i:                                  ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @vnt_rxtx_datahead_ab(ptr noundef nonnull %26, ptr noundef %head.0.i96.i) #5
  br label %vnt_generate_tx_parameter.exit

vnt_generate_tx_parameter.exit:                   ; preds = %if.end13.i137.i, %vnt_rxtx_rts_ab_head.exit.i.i, %vnt_rxtx_cts.exit.i, %vnt_rxtx_rts.exit.i
  %seq_ctrl = getelementptr inbounds %struct.ieee80211_hdr, ptr %2, i32 0, i32 5
  %365 = ptrtoint ptr %seq_ctrl to i32
  call void @__asan_load2_noabort(i32 %365)
  %366 = load i16, ptr %seq_ctrl, align 2
  %367 = and i16 %366, -3841
  %368 = tail call i16 @llvm.bswap.i16(i16 %367)
  %369 = lshr exact i16 %368, 4
  %seq_counter = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 59
  %370 = ptrtoint ptr %seq_counter to i32
  call void @__asan_store2_noabort(i32 %370)
  store i16 %369, ptr %seq_counter, align 2
  %call154 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  %call159 = tail call i32 @vnt_tx_context(ptr noundef %priv, ptr noundef nonnull %26, ptr noundef %skb) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call159)
  %tobool160.not = icmp eq i32 %call159, 0
  br i1 %tobool160.not, label %if.end164, label %if.then161

if.then161:                                       ; preds = %vnt_generate_tx_parameter.exit
  call void @__sanitizer_cov_trace_pc() #7
  %371 = ptrtoint ptr %skb46 to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load ptr, ptr %skb46, align 4
  tail call void @consume_skb(ptr noundef %372) #5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call154) #5
  br label %cleanup

if.end164:                                        ; preds = %vnt_generate_tx_parameter.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @consume_skb(ptr noundef %skb) #5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call154) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end164, %if.then161, %if.then49, %do.end38
  %retval.0 = phi i32 [ -5, %if.then161 ], [ 0, %if.end164 ], [ -12, %if.then49 ], [ -12, %do.end38 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @ieee80211_hdrlen(i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vnt_tx_context(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vnt_beacon_make(ptr noundef %priv, ptr noundef %vif) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %call.i = tail call ptr @ieee80211_beacon_get_tim(ptr noundef %1, ptr noundef %vif, ptr noundef null, ptr noundef null) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @vnt_beacon_xmit(ptr noundef %priv, ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  tail call void @ieee80211_free_txskb(ptr noundef %3, ptr noundef nonnull %call.i) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %if.then3 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vnt_beacon_xmit(ptr noundef %priv, ptr noundef %skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  %add = add i32 %1, 4
  %lock = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 8
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vnt_get_free_context.__UNIQUE_ID_ddebug383, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vnt_beacon_xmit, %if.then.i)) #5
          to label %do.end.i [label %if.then.i], !srcloc !34

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %usb.i = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 3
  %2 = ptrtoint ptr %usb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %usb.i, align 4
  %dev.i = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vnt_get_free_context.__UNIQUE_ID_ddebug383, ptr noundef %dev.i, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.5) #5
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %entry
  %num_tx_context.i = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 17
  %4 = ptrtoint ptr %num_tx_context.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_tx_context.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp60.not.i = icmp eq i32 %5, 0
  br i1 %cmp60.not.i, label %do.end.i.do.body15.i_crit_edge, label %do.end.i.for.body.i_crit_edge

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  br label %for.body.i

do.end.i.do.body15.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body15.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end.i.for.body.i_crit_edge
  %ii.061.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %do.end.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.vnt_private, ptr %priv, i32 0, i32 15, i32 %ii.061.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %tobool3.not.i = icmp eq ptr %7, null
  br i1 %tobool3.not.i, label %for.body.i.do.body6_crit_edge, label %if.end5.i

for.body.i.do.body6_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body6

if.end5.i:                                        ; preds = %for.body.i
  %in_use.i = getelementptr inbounds %struct.vnt_usb_send_context, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %in_use.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %in_use.i, align 1, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool8.not.i = icmp eq i8 %9, 0
  br i1 %tobool8.not.i, label %if.end16, label %for.inc.i

for.inc.i:                                        ; preds = %if.end5.i
  %inc.i = add nuw i32 %ii.061.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %5
  br i1 %exitcond.not.i, label %for.inc.i.do.body15.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.inc.i.do.body15.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body15.i

do.body15.i:                                      ; preds = %for.inc.i.do.body15.i_crit_edge, %do.end.i.do.body15.i_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vnt_get_free_context.__UNIQUE_ID_ddebug384, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vnt_beacon_xmit, %if.then27.i)) #5
          to label %do.end32.i [label %if.then27.i], !srcloc !34

if.then27.i:                                      ; preds = %do.body15.i
  call void @__sanitizer_cov_trace_pc() #7
  %usb28.i = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 3
  %10 = ptrtoint ptr %usb28.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %usb28.i, align 4
  %dev29.i = getelementptr inbounds %struct.usb_device, ptr %11, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vnt_get_free_context.__UNIQUE_ID_ddebug384, ptr noundef %dev29.i, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.5) #5
  br label %do.end32.i

do.end32.i:                                       ; preds = %if.then27.i, %do.body15.i
  %12 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %priv, align 8
  tail call void @ieee80211_stop_queues(ptr noundef %13) #5
  br label %do.body6

do.body6:                                         ; preds = %do.end32.i, %for.body.i.do.body6_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vnt_beacon_xmit.__UNIQUE_ID_ddebug386, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vnt_beacon_xmit, %if.then12)) #5
          to label %cleanup [label %if.then12], !srcloc !34

if.then12:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #7
  %usb = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 3
  %14 = ptrtoint ptr %usb to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %usb, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %15, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vnt_beacon_xmit.__UNIQUE_ID_ddebug386, ptr noundef %dev, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.8) #5
  br label %cleanup

if.end16:                                         ; preds = %if.end5.i
  %in_use.i.le = getelementptr inbounds %struct.vnt_usb_send_context, ptr %7, i32 0, i32 9
  %16 = ptrtoint ptr %in_use.i.le to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %in_use.i.le, align 1
  %skb17 = getelementptr inbounds %struct.vnt_usb_send_context, ptr %7, i32 0, i32 1
  %17 = ptrtoint ptr %skb17 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %skb, ptr %skb17, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #5
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %18 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data, align 4
  %call19 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 12) #5
  %bb_type = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 40
  %20 = ptrtoint ptr %bb_type to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %bb_type, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp21 = icmp eq i8 %21, 0
  br i1 %cmp21, label %if.then23, label %if.else

if.then23:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  %ab = getelementptr inbounds %struct.vnt_tx_short_buf_head, ptr %call19, i32 0, i32 2
  %22 = ptrtoint ptr %ab to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 -101, ptr %ab, align 1
  %service.i = getelementptr inbounds %struct.vnt_tx_short_buf_head, ptr %call19, i32 0, i32 2, i32 1
  %23 = ptrtoint ptr %service.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %service.i, align 1
  %conv54.i = trunc i32 %add to i16
  br label %if.end30

if.else:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %call19 to i32
  call void @__asan_loadN_noabort(i32 %24, i32 2)
  %25 = load i16, ptr %call19, align 1
  %26 = or i16 %25, 1
  store i16 %26, ptr %call19, align 1
  %ab27 = getelementptr inbounds %struct.vnt_tx_short_buf_head, ptr %call19, i32 0, i32 2
  %27 = ptrtoint ptr %ab27 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %ab27, align 1
  %service.i116 = getelementptr inbounds %struct.vnt_tx_short_buf_head, ptr %call19, i32 0, i32 2, i32 1
  %28 = ptrtoint ptr %service.i116 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %service.i116, align 1
  %add.tr = trunc i32 %add to i16
  %conv54.i117 = shl i16 %add.tr, 3
  br label %if.end30

if.end30:                                         ; preds = %if.else, %if.then23
  %conv54.i117.sink = phi i16 [ %conv54.i117, %if.else ], [ %conv54.i, %if.then23 ]
  %.sink = phi i32 [ 0, %if.else ], [ 4, %if.then23 ]
  %preamble_type1.i114.sink = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 46
  %29 = tail call i16 @llvm.bswap.i16(i16 %conv54.i117.sink) #5
  %len55.i118 = getelementptr inbounds %struct.vnt_tx_short_buf_head, ptr %call19, i32 0, i32 2, i32 2
  %30 = ptrtoint ptr %len55.i118 to i32
  call void @__asan_storeN_noabort(i32 %30, i32 2)
  store i16 %29, ptr %len55.i118, align 1
  %31 = ptrtoint ptr %preamble_type1.i114.sink to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %preamble_type1.i114.sink, align 2
  %33 = and i8 %32, 1
  %rem.i120 = zext i8 %33 to i32
  %arrayidx3.i121 = getelementptr [2 x [12 x i16]], ptr @vnt_time_stampoff, i32 0, i32 %rem.i120, i32 %.sink
  %34 = ptrtoint ptr %arrayidx3.i121 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %arrayidx3.i121, align 2
  %36 = tail call i16 @llvm.bswap.i16(i16 %35) #5
  %37 = getelementptr inbounds %struct.vnt_tx_short_buf_head, ptr %call19, i32 0, i32 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_storeN_noabort(i32 %38, i32 2)
  store i16 %36, ptr %37, align 1
  %duration = getelementptr inbounds %struct.ieee80211_mgmt, ptr %19, i32 0, i32 1
  %39 = ptrtoint ptr %duration to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %duration, align 2
  %duration31 = getelementptr inbounds %struct.vnt_tx_short_buf_head, ptr %call19, i32 0, i32 3
  %41 = ptrtoint ptr %duration31 to i32
  call void @__asan_storeN_noabort(i32 %41, i32 2)
  store i16 %40, ptr %duration31, align 1
  %u = getelementptr inbounds %struct.ieee80211_mgmt, ptr %19, i32 0, i32 6
  %42 = ptrtoint ptr %u to i32
  call void @__asan_storeN_noabort(i32 %42, i32 8)
  store i64 0, ptr %u, align 2
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %43 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %cb.i, align 8
  %and = and i32 %44, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool34.not = icmp eq i32 %and, 0
  br i1 %tobool34.not, label %if.end30.if.end38_crit_edge, label %if.then35

if.end30.if.end38_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38

if.then35:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  %45 = ptrtoint ptr %duration to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 0, ptr %duration, align 2
  %seq_counter = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 59
  %46 = ptrtoint ptr %seq_counter to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %seq_counter, align 2
  %shl = shl i16 %47, 4
  %48 = tail call i16 @llvm.bswap.i16(i16 %shl)
  %seq_ctrl = getelementptr inbounds %struct.ieee80211_hdr, ptr %19, i32 0, i32 5
  %49 = ptrtoint ptr %seq_ctrl to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %48, ptr %seq_ctrl, align 2
  br label %if.end38

if.end38:                                         ; preds = %if.then35, %if.end30.if.end38_crit_edge
  %seq_counter39 = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 59
  %50 = ptrtoint ptr %seq_counter39 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %seq_counter39, align 2
  %inc = add i16 %51, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 4095, i16 %inc)
  %cmp42 = icmp ugt i16 %inc, 4095
  %spec.select = select i1 %cmp42, i16 0, i16 %inc
  %52 = ptrtoint ptr %seq_counter39 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %spec.select, ptr %seq_counter39, align 2
  %type = getelementptr inbounds %struct.vnt_usb_send_context, ptr %7, i32 0, i32 6
  %53 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 1, ptr %type, align 4
  %call56 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  %call61 = tail call i32 @vnt_tx_context(ptr noundef %priv, ptr noundef nonnull %7, ptr noundef %skb) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.end38.cleanup_crit_edge, label %if.then63

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then63:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  %54 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %priv, align 8
  %56 = ptrtoint ptr %skb17 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %skb17, align 4
  tail call void @ieee80211_free_txskb(ptr noundef %55, ptr noundef %57) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then63, %if.end38.cleanup_crit_edge, %if.then12, %do.body6
  %call56.sink = phi i32 [ %call2, %do.body6 ], [ %call2, %if.then12 ], [ %call56, %if.then63 ], [ %call56, %if.end38.cleanup_crit_edge ]
  %retval.0 = phi i32 [ -12, %do.body6 ], [ -12, %if.then12 ], [ 0, %if.then63 ], [ 0, %if.end38.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call56.sink) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_free_txskb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vnt_beacon_enable(ptr noundef %priv, ptr noundef %vif, ptr nocapture noundef readonly %conf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @vnt_mac_reg_bits_off(ptr noundef %priv, i8 noundef zeroext 87, i8 noundef zeroext 1) #5
  %call1 = tail call i32 @vnt_mac_reg_bits_off(ptr noundef %priv, i8 noundef zeroext 72, i8 noundef zeroext 1) #5
  %beacon_int = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %conf, i32 0, i32 19
  %0 = ptrtoint ptr %beacon_int to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %beacon_int, align 2
  %call2 = tail call i32 @vnt_mac_set_beacon_interval(ptr noundef %priv, i16 noundef zeroext %1) #5
  %call3 = tail call zeroext i1 @vnt_clear_current_tsf(ptr noundef %priv) #5
  %call4 = tail call i32 @vnt_mac_reg_bits_on(ptr noundef %priv, i8 noundef zeroext 72, i8 noundef zeroext 1) #5
  %2 = ptrtoint ptr %beacon_int to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %beacon_int, align 2
  %call6 = tail call i32 @vnt_reset_next_tbtt(ptr noundef %priv, i16 noundef zeroext %3) #5
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 8
  %call.i.i = tail call ptr @ieee80211_beacon_get_tim(ptr noundef %5, ptr noundef %vif, ptr noundef null, ptr noundef null) #5
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %entry.vnt_beacon_make.exit_crit_edge, label %if.end.i

entry.vnt_beacon_make.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %vnt_beacon_make.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call fastcc i32 @vnt_beacon_xmit(ptr noundef %priv, ptr noundef nonnull %call.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.vnt_beacon_make.exit_crit_edge, label %if.then3.i

if.end.i.vnt_beacon_make.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vnt_beacon_make.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv, align 8
  tail call void @ieee80211_free_txskb(ptr noundef %7, ptr noundef nonnull %call.i.i) #5
  br label %vnt_beacon_make.exit

vnt_beacon_make.exit:                             ; preds = %if.then3.i, %if.end.i.vnt_beacon_make.exit_crit_edge, %entry.vnt_beacon_make.exit_crit_edge
  %retval.0.i = phi i32 [ -19, %if.then3.i ], [ -12, %entry.vnt_beacon_make.exit_crit_edge ], [ 0, %if.end.i.vnt_beacon_make.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vnt_mac_reg_bits_off(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vnt_mac_set_beacon_interval(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @vnt_clear_current_tsf(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vnt_mac_reg_bits_on(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vnt_reset_next_tbtt(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_stop_queues(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @vnt_fill_txkey(ptr noundef %tx_buffer, ptr noundef %skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_key = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %0 = ptrtoint ptr %hw_key to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_key, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  %call1 = tail call i32 @ieee80211_get_hdrlen_from_skb(ptr noundef %skb) #5
  %add.ptr = getelementptr i8, ptr %3, i32 %call1
  %call2 = tail call i32 @ieee80211_get_hdrlen_from_skb(ptr noundef %skb) #5
  %icv_len = getelementptr inbounds %struct.ieee80211_key_conf, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %icv_len to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %icv_len, align 4
  %conv5 = zext i8 %7 to i32
  %8 = add i32 %call2, %conv5
  %sub7 = sub i32 %5, %8
  %conv8 = trunc i32 %sub7 to i16
  %cipher = getelementptr inbounds %struct.ieee80211_key_conf, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %cipher to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cipher, align 8
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %10, label %entry.cleanup_crit_edge [
    i32 1027073, label %entry.sw.bb_crit_edge
    i32 1027077, label %entry.sw.bb_crit_edge191
    i32 1027074, label %sw.bb28
    i32 1027076, label %sw.bb35
  ]

entry.sw.bb_crit_edge191:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge191
  %12 = call ptr @memcpy(ptr %tx_buffer, ptr %add.ptr, i32 3)
  %add.ptr12 = getelementptr i8, ptr %tx_buffer, i32 3
  %key = getelementptr inbounds %struct.ieee80211_key_conf, ptr %1, i32 0, i32 8
  %keylen = getelementptr inbounds %struct.ieee80211_key_conf, ptr %1, i32 0, i32 7
  %13 = ptrtoint ptr %keylen to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %keylen, align 2
  %conv14 = zext i8 %14 to i32
  %15 = call ptr @memcpy(ptr %add.ptr12, ptr %key, i32 %conv14)
  %16 = load i8, ptr %keylen, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %16)
  %cmp = icmp eq i8 %16, 5
  br i1 %cmp, label %if.then, label %sw.bb.cleanup.sink.split_crit_edge

sw.bb.cleanup.sink.split_crit_edge:               ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr20 = getelementptr i8, ptr %tx_buffer, i32 8
  %17 = call ptr @memcpy(ptr %add.ptr20, ptr %add.ptr, i32 3)
  %add.ptr23 = getelementptr i8, ptr %tx_buffer, i32 11
  %18 = call ptr @memcpy(ptr %add.ptr23, ptr %key, i32 5)
  br label %cleanup.sink.split

sw.bb28:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @ieee80211_get_tkip_p2k(ptr noundef %1, ptr noundef %skb, ptr noundef %tx_buffer) #5
  br label %cleanup.sink.split

sw.bb35:                                          ; preds = %entry
  %use_cts_prot = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 21
  %19 = ptrtoint ptr %use_cts_prot to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load = load i8, ptr %use_cts_prot, align 1
  %20 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not = icmp eq i8 %20, 0
  br i1 %tobool.not, label %if.else46, label %if.then36

if.then36:                                        ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool39.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool39.not, label %if.else, label %if.then40

if.then40:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #7
  %tx = getelementptr inbounds %struct.vnt_tx_buffer, ptr %tx_buffer, i32 0, i32 1, i32 0, i32 1
  br label %if.end50

if.else:                                          ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #7
  %tx43 = getelementptr inbounds %struct.vnt_tx_buffer, ptr %tx_buffer, i32 0, i32 1, i32 0, i32 0, i32 4
  br label %if.end50

if.else46:                                        ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #7
  %tx48 = getelementptr inbounds %struct.vnt_tx_buffer, ptr %tx_buffer, i32 0, i32 1, i32 0, i32 0, i32 2
  br label %if.end50

if.end50:                                         ; preds = %if.else46, %if.else, %if.then40
  %mic_hdr.0 = phi ptr [ %tx, %if.then40 ], [ %tx43, %if.else ], [ %tx48, %if.else46 ]
  %21 = ptrtoint ptr %mic_hdr.0 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 89, ptr %mic_hdr.0, align 1
  %payload_len51 = getelementptr inbounds %struct.vnt_mic_hdr, ptr %mic_hdr.0, i32 0, i32 4
  %22 = ptrtoint ptr %payload_len51 to i32
  call void @__asan_storeN_noabort(i32 %22, i32 2)
  store i16 %conv8, ptr %payload_len51, align 1
  %mic_addr2 = getelementptr inbounds %struct.vnt_mic_hdr, ptr %mic_hdr.0, i32 0, i32 2
  %addr2 = getelementptr inbounds %struct.ieee80211_hdr, ptr %3, i32 0, i32 3
  %23 = ptrtoint ptr %addr2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %addr2, align 4
  %25 = ptrtoint ptr %mic_addr2 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %mic_addr2, align 4
  %add.ptr.i = getelementptr %struct.ieee80211_hdr, ptr %3, i32 0, i32 3, i32 4
  %26 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr %struct.vnt_mic_hdr, ptr %mic_hdr.0, i32 0, i32 2, i32 4
  %28 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %add.ptr1.i, align 2
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %1, i32 noundef 8) #5
  %call.i = tail call i64 @generic_atomic64_read(ptr noundef %1) #5
  %conv55 = trunc i64 %call.i to i8
  %ccmp_pn = getelementptr inbounds %struct.vnt_mic_hdr, ptr %mic_hdr.0, i32 0, i32 3
  %arrayidx = getelementptr %struct.vnt_mic_hdr, ptr %mic_hdr.0, i32 0, i32 3, i32 5
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv55, ptr %arrayidx, align 1
  %shr = lshr i64 %call.i, 8
  %conv56 = trunc i64 %shr to i8
  %arrayidx58 = getelementptr %struct.vnt_mic_hdr, ptr %mic_hdr.0, i32 0, i32 3, i32 4
  %30 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv56, ptr %arrayidx58, align 1
  %shr59 = lshr i64 %call.i, 16
  %conv60 = trunc i64 %shr59 to i8
  %arrayidx62 = getelementptr %struct.vnt_mic_hdr, ptr %mic_hdr.0, i32 0, i32 3, i32 3
  %31 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv60, ptr %arrayidx62, align 1
  %shr63 = lshr i64 %call.i, 24
  %conv64 = trunc i64 %shr63 to i8
  %arrayidx66 = getelementptr %struct.vnt_mic_hdr, ptr %mic_hdr.0, i32 0, i32 3, i32 2
  %32 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv64, ptr %arrayidx66, align 1
  %shr67 = lshr i64 %call.i, 32
  %conv68 = trunc i64 %shr67 to i8
  %arrayidx70 = getelementptr %struct.vnt_mic_hdr, ptr %mic_hdr.0, i32 0, i32 3, i32 1
  %33 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv68, ptr %arrayidx70, align 1
  %shr71 = lshr i64 %call.i, 40
  %conv72 = trunc i64 %shr71 to i8
  %34 = ptrtoint ptr %ccmp_pn to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv72, ptr %ccmp_pn, align 1
  %35 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %3, align 2
  %37 = and i16 %36, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %37)
  %cmp.i = icmp eq i16 %37, 3
  %spec.select = select i1 %cmp.i, i16 28, i16 22
  %38 = getelementptr inbounds %struct.vnt_mic_hdr, ptr %mic_hdr.0, i32 0, i32 5
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_storeN_noabort(i32 %39, i32 2)
  store i16 %spec.select, ptr %38, align 1
  %addr1 = getelementptr inbounds %struct.vnt_mic_hdr, ptr %mic_hdr.0, i32 0, i32 7
  %addr181 = getelementptr inbounds %struct.ieee80211_hdr, ptr %3, i32 0, i32 2
  %40 = ptrtoint ptr %addr181 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %addr181, align 4
  %42 = ptrtoint ptr %addr1 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %addr1, align 4
  %add.ptr.i179 = getelementptr %struct.ieee80211_hdr, ptr %3, i32 0, i32 2, i32 4
  %43 = ptrtoint ptr %add.ptr.i179 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %add.ptr.i179, align 2
  %add.ptr1.i180 = getelementptr %struct.vnt_mic_hdr, ptr %mic_hdr.0, i32 0, i32 7, i32 4
  %45 = ptrtoint ptr %add.ptr1.i180 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %44, ptr %add.ptr1.i180, align 2
  %addr283 = getelementptr inbounds %struct.vnt_mic_hdr, ptr %mic_hdr.0, i32 0, i32 8
  %46 = ptrtoint ptr %addr2 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %addr2, align 4
  %48 = ptrtoint ptr %addr283 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %addr283, align 4
  %49 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i182 = getelementptr %struct.vnt_mic_hdr, ptr %mic_hdr.0, i32 0, i32 8, i32 4
  %51 = ptrtoint ptr %add.ptr1.i182 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %50, ptr %add.ptr1.i182, align 2
  %addr3 = getelementptr inbounds %struct.vnt_mic_hdr, ptr %mic_hdr.0, i32 0, i32 9
  %addr388 = getelementptr inbounds %struct.ieee80211_hdr, ptr %3, i32 0, i32 4
  %52 = ptrtoint ptr %addr388 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %addr388, align 4
  %54 = ptrtoint ptr %addr3 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %addr3, align 4
  %add.ptr.i183 = getelementptr %struct.ieee80211_hdr, ptr %3, i32 0, i32 4, i32 4
  %55 = ptrtoint ptr %add.ptr.i183 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %add.ptr.i183, align 2
  %add.ptr1.i184 = getelementptr %struct.vnt_mic_hdr, ptr %mic_hdr.0, i32 0, i32 9, i32 4
  %57 = ptrtoint ptr %add.ptr1.i184 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %56, ptr %add.ptr1.i184, align 2
  %58 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %3, align 2
  %60 = and i16 %59, -28729
  %frame_control93 = getelementptr inbounds %struct.vnt_mic_hdr, ptr %mic_hdr.0, i32 0, i32 6
  %61 = ptrtoint ptr %frame_control93 to i32
  call void @__asan_storeN_noabort(i32 %61, i32 2)
  store i16 %60, ptr %frame_control93, align 1
  %seq_ctrl = getelementptr inbounds %struct.ieee80211_hdr, ptr %3, i32 0, i32 5
  %62 = ptrtoint ptr %seq_ctrl to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %seq_ctrl, align 2
  %64 = and i16 %63, 3840
  %seq_ctrl97 = getelementptr inbounds %struct.vnt_mic_hdr, ptr %mic_hdr.0, i32 0, i32 10
  %65 = ptrtoint ptr %seq_ctrl97 to i32
  call void @__asan_storeN_noabort(i32 %65, i32 2)
  store i16 %64, ptr %seq_ctrl97, align 1
  %66 = load i16, ptr %3, align 2
  %67 = and i16 %66, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %67)
  %cmp.i185 = icmp eq i16 %67, 3
  br i1 %cmp.i185, label %if.then100, label %if.end50.if.end104_crit_edge

if.end50.if.end104_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end104

if.then100:                                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #7
  %addr4 = getelementptr inbounds %struct.vnt_mic_hdr, ptr %mic_hdr.0, i32 0, i32 11
  %addr4102 = getelementptr inbounds %struct.ieee80211_hdr, ptr %3, i32 0, i32 6
  %68 = ptrtoint ptr %addr4102 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %addr4102, align 4
  %70 = ptrtoint ptr %addr4 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %addr4, align 4
  %add.ptr.i186 = getelementptr %struct.ieee80211_hdr, ptr %3, i32 0, i32 6, i32 4
  %71 = ptrtoint ptr %add.ptr.i186 to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %add.ptr.i186, align 2
  %add.ptr1.i187 = getelementptr %struct.vnt_mic_hdr, ptr %mic_hdr.0, i32 0, i32 11, i32 4
  %73 = ptrtoint ptr %add.ptr1.i187 to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %72, ptr %add.ptr1.i187, align 2
  br label %if.end104

if.end104:                                        ; preds = %if.then100, %if.end50.if.end104_crit_edge
  %key107 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %1, i32 0, i32 8
  %74 = call ptr @memcpy(ptr %tx_buffer, ptr %key107, i32 16)
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end104, %sw.bb28, %if.then, %sw.bb.cleanup.sink.split_crit_edge
  %.sink189 = phi i16 [ 2, %sw.bb28 ], [ 3, %if.end104 ], [ 1, %if.then ], [ 1, %sw.bb.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i1 [ false, %sw.bb28 ], [ true, %if.end104 ], [ false, %if.then ], [ false, %sw.bb.cleanup.sink.split_crit_edge ]
  %frag_ctl109 = getelementptr inbounds %struct.vnt_tx_fifo_head, ptr %tx_buffer, i32 0, i32 3
  %75 = ptrtoint ptr %frag_ctl109 to i32
  call void @__asan_loadN_noabort(i32 %75, i32 2)
  %76 = load i16, ptr %frag_ctl109, align 1
  %77 = or i16 %76, %.sink189
  store i16 %77, ptr %frag_ctl109, align 1
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @ieee80211_rts_duration(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @ieee80211_generic_frame_duration(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_get_hdrlen_from_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_get_tkip_p2k(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @vnt_rxtx_datahead_g(ptr nocapture noundef readonly %tx_context, ptr nocapture noundef writeonly %buf) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tx_context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_context, align 4
  %skb = getelementptr inbounds %struct.vnt_usb_send_context, ptr %tx_context, i32 0, i32 1
  %2 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %skb, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 19
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %frame_len2 = getelementptr inbounds %struct.vnt_usb_send_context, ptr %tx_context, i32 0, i32 3
  %6 = ptrtoint ptr %frame_len2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %frame_len2, align 4
  %tx_rate = getelementptr inbounds %struct.vnt_usb_send_context, ptr %tx_context, i32 0, i32 5
  %8 = ptrtoint ptr %tx_rate to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %tx_rate, align 2
  %pkt_type = getelementptr inbounds %struct.vnt_usb_send_context, ptr %tx_context, i32 0, i32 8
  %10 = ptrtoint ptr %pkt_type to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %pkt_type, align 2
  %a = getelementptr inbounds %struct.vnt_tx_datahead_g, ptr %buf, i32 0, i32 1
  %preamble_type1.i = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 46
  %12 = ptrtoint ptr %preamble_type1.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %preamble_type1.i, align 2
  %mul.i = shl i32 %7, 3
  %14 = zext i16 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.13)
  switch i16 %9, label %if.then18.i [
    i16 0, label %entry.if.else.i_crit_edge
    i16 1, label %sw.bb2.i
    i16 2, label %sw.bb3.i
    i16 3, label %sw.bb6.i
  ]

entry.if.else.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %div75.i = lshr exact i32 %mul.i, 1
  br label %if.else.i

sw.bb3.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %mul4.i = mul i32 %7, 80
  %sub.i = add i32 %mul4.i, 54
  %div5.i = udiv i32 %sub.i, 55
  br label %if.else.i

sw.bb6.i:                                         ; preds = %entry
  %div7.i = udiv i32 %mul.i, 11
  %mul8.i = mul nuw i32 %div7.i, 11
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %mul8.i)
  %cmp.not.i = icmp eq i32 %mul.i, %mul8.i
  br i1 %cmp.not.i, label %sw.bb6.i.if.else.i_crit_edge, label %if.then.i

sw.bb6.i.if.else.i_crit_edge:                     ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i

if.then.i:                                        ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i = add nuw nsw i32 %div7.i, 1
  %sub10.i = sub i32 %mul.i, %mul8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub10.i)
  %cmp11.i = icmp ugt i32 %sub10.i, 3
  br label %if.else.i

if.then18.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp20.i = icmp eq i8 %11, 0
  %spec.select76.i = select i1 %cmp20.i, i8 16, i8 0
  br label %vnt_get_phy_field.exit

if.else.i:                                        ; preds = %if.then.i, %sw.bb6.i.if.else.i_crit_edge, %sw.bb3.i, %sw.bb2.i, %entry.if.else.i_crit_edge
  %count.0.ph.i = phi i32 [ %inc.i, %if.then.i ], [ %div75.i, %sw.bb2.i ], [ %div5.i, %sw.bb3.i ], [ %div7.i, %sw.bb6.i.if.else.i_crit_edge ], [ %mul.i, %entry.if.else.i_crit_edge ]
  %tobool.not.ph.i = phi i1 [ %cmp11.i, %if.then.i ], [ true, %sw.bb2.i ], [ true, %sw.bb3.i ], [ true, %sw.bb6.i.if.else.i_crit_edge ], [ true, %entry.if.else.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %cmp25.not.i = icmp ne i16 %9, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %13)
  %cmp29.i = icmp eq i8 %13, 1
  %or.cond.i = select i1 %cmp25.not.i, i1 %cmp29.i, i1 false
  %spec.select78.i = select i1 %or.cond.i, i8 8, i8 0
  br label %vnt_get_phy_field.exit

vnt_get_phy_field.exit:                           ; preds = %if.else.i, %if.then18.i
  %tobool.not84.i = phi i1 [ true, %if.then18.i ], [ %tobool.not.ph.i, %if.else.i ]
  %count.082.i = phi i32 [ 0, %if.then18.i ], [ %count.0.ph.i, %if.else.i ]
  %mask.0.i = phi i8 [ %spec.select76.i, %if.then18.i ], [ %spec.select78.i, %if.else.i ]
  %15 = tail call i16 @llvm.umin.i16(i16 %9, i16 11) #5
  %spec.select77.i = zext i16 %15 to i32
  %arrayidx.i = getelementptr [12 x i8], ptr @vnt_phy_signal, i32 0, i32 %spec.select77.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.i, align 1
  %or.i = or i8 %17, %mask.0.i
  %18 = ptrtoint ptr %a to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %or.i, ptr %a, align 1
  %service.i = getelementptr inbounds %struct.vnt_tx_datahead_g, ptr %buf, i32 0, i32 1, i32 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %11)
  %cmp43.i = icmp ne i8 %11, 1
  %brmerge.i = select i1 %cmp43.i, i1 true, i1 %tobool.not84.i
  %spec.store.select.i = select i1 %brmerge.i, i8 0, i8 -128
  %19 = ptrtoint ptr %service.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %spec.store.select.i, ptr %service.i, align 1
  %spec.select.i = select i1 %cmp43.i, i32 %7, i32 %count.082.i
  %conv54.i = trunc i32 %spec.select.i to i16
  %20 = tail call i16 @llvm.bswap.i16(i16 %conv54.i) #5
  %len55.i = getelementptr inbounds %struct.vnt_tx_datahead_g, ptr %buf, i32 0, i32 1, i32 2
  %21 = ptrtoint ptr %len55.i to i32
  call void @__asan_storeN_noabort(i32 %21, i32 2)
  store i16 %20, ptr %len55.i, align 1
  %top_cck_basic_rate = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 44
  %22 = ptrtoint ptr %top_cck_basic_rate to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %top_cck_basic_rate, align 1
  %24 = ptrtoint ptr %preamble_type1.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %preamble_type1.i, align 2
  %26 = zext i8 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.14)
  switch i8 %23, label %vnt_get_phy_field.exit.vnt_get_phy_field.exit58_crit_edge [
    i8 0, label %vnt_get_phy_field.exit.if.else.i47_crit_edge
    i8 1, label %sw.bb2.i27
    i8 2, label %sw.bb3.i31
    i8 3, label %sw.bb6.i35
  ]

vnt_get_phy_field.exit.if.else.i47_crit_edge:     ; preds = %vnt_get_phy_field.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i47

vnt_get_phy_field.exit.vnt_get_phy_field.exit58_crit_edge: ; preds = %vnt_get_phy_field.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %vnt_get_phy_field.exit58

sw.bb2.i27:                                       ; preds = %vnt_get_phy_field.exit
  call void @__sanitizer_cov_trace_pc() #7
  %div75.i26 = lshr exact i32 %mul.i, 1
  br label %if.else.i47

sw.bb3.i31:                                       ; preds = %vnt_get_phy_field.exit
  call void @__sanitizer_cov_trace_pc() #7
  %mul4.i28 = mul i32 %7, 80
  %sub.i29 = add i32 %mul4.i28, 54
  %div5.i30 = udiv i32 %sub.i29, 55
  br label %if.else.i47

sw.bb6.i35:                                       ; preds = %vnt_get_phy_field.exit
  %div7.i32 = udiv i32 %mul.i, 11
  %mul8.i33 = mul nuw i32 %div7.i32, 11
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %mul8.i33)
  %cmp.not.i34 = icmp eq i32 %mul.i, %mul8.i33
  br i1 %cmp.not.i34, label %sw.bb6.i35.if.else.i47_crit_edge, label %if.then.i39

sw.bb6.i35.if.else.i47_crit_edge:                 ; preds = %sw.bb6.i35
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i47

if.then.i39:                                      ; preds = %sw.bb6.i35
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i36 = add nuw nsw i32 %div7.i32, 1
  %sub10.i37 = sub i32 %mul.i, %mul8.i33
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub10.i37)
  %cmp11.i38 = icmp ugt i32 %sub10.i37, 3
  br label %if.else.i47

if.else.i47:                                      ; preds = %if.then.i39, %sw.bb6.i35.if.else.i47_crit_edge, %sw.bb3.i31, %sw.bb2.i27, %vnt_get_phy_field.exit.if.else.i47_crit_edge
  %count.0.ph.i41 = phi i32 [ %inc.i36, %if.then.i39 ], [ %div75.i26, %sw.bb2.i27 ], [ %div5.i30, %sw.bb3.i31 ], [ %div7.i32, %sw.bb6.i35.if.else.i47_crit_edge ], [ %mul.i, %vnt_get_phy_field.exit.if.else.i47_crit_edge ]
  %tobool.not.ph.i42 = phi i1 [ %cmp11.i38, %if.then.i39 ], [ true, %sw.bb2.i27 ], [ true, %sw.bb3.i31 ], [ true, %sw.bb6.i35.if.else.i47_crit_edge ], [ true, %vnt_get_phy_field.exit.if.else.i47_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp25.not.i43 = icmp ne i8 %23, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %25)
  %cmp29.i44 = icmp eq i8 %25, 1
  %or.cond.i45 = select i1 %cmp25.not.i43, i1 %cmp29.i44, i1 false
  %spec.select78.i46 = select i1 %or.cond.i45, i8 8, i8 0
  br label %vnt_get_phy_field.exit58

vnt_get_phy_field.exit58:                         ; preds = %if.else.i47, %vnt_get_phy_field.exit.vnt_get_phy_field.exit58_crit_edge
  %tobool.not84.i48 = phi i1 [ %tobool.not.ph.i42, %if.else.i47 ], [ true, %vnt_get_phy_field.exit.vnt_get_phy_field.exit58_crit_edge ]
  %count.082.i49 = phi i32 [ %count.0.ph.i41, %if.else.i47 ], [ 0, %vnt_get_phy_field.exit.vnt_get_phy_field.exit58_crit_edge ]
  %mask.0.i50 = phi i8 [ %spec.select78.i46, %if.else.i47 ], [ 0, %vnt_get_phy_field.exit.vnt_get_phy_field.exit58_crit_edge ]
  %27 = tail call i8 @llvm.umin.i8(i8 %23, i8 11)
  %spec.select77.i51 = zext i8 %27 to i32
  %arrayidx.i52 = getelementptr [12 x i8], ptr @vnt_phy_signal, i32 0, i32 %spec.select77.i51
  %28 = ptrtoint ptr %arrayidx.i52 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx.i52, align 1
  %or.i53 = or i8 %29, %mask.0.i50
  %30 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %or.i53, ptr %buf, align 1
  %service.i54 = getelementptr inbounds %struct.vnt_phy_field, ptr %buf, i32 0, i32 1
  %spec.select = select i1 %tobool.not84.i48, i8 0, i8 -128
  %31 = ptrtoint ptr %service.i54 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %spec.select, ptr %service.i54, align 1
  %conv54.i56 = trunc i32 %count.082.i49 to i16
  %32 = tail call i16 @llvm.bswap.i16(i16 %conv54.i56) #5
  %len55.i57 = getelementptr inbounds %struct.vnt_phy_field, ptr %buf, i32 0, i32 2
  %33 = ptrtoint ptr %len55.i57 to i32
  call void @__asan_storeN_noabort(i32 %33, i32 2)
  store i16 %32, ptr %len55.i57, align 1
  %duration_id = getelementptr inbounds %struct.ieee80211_hdr, ptr %5, i32 0, i32 1
  %34 = ptrtoint ptr %duration_id to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %duration_id, align 2
  %duration_a = getelementptr inbounds %struct.vnt_tx_datahead_g, ptr %buf, i32 0, i32 3
  %36 = ptrtoint ptr %duration_a to i32
  call void @__asan_storeN_noabort(i32 %36, i32 2)
  store i16 %35, ptr %duration_a, align 1
  %37 = load i16, ptr %duration_id, align 2
  %duration_b = getelementptr inbounds %struct.vnt_tx_datahead_g, ptr %buf, i32 0, i32 2
  %38 = ptrtoint ptr %duration_b to i32
  call void @__asan_storeN_noabort(i32 %38, i32 2)
  store i16 %37, ptr %duration_b, align 1
  %39 = ptrtoint ptr %preamble_type1.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %preamble_type1.i, align 2
  %41 = and i8 %40, 1
  %rem.i = zext i8 %41 to i32
  %42 = urem i16 %9, 12
  %rem2.i = zext i16 %42 to i32
  %arrayidx3.i = getelementptr [2 x [12 x i16]], ptr @vnt_time_stampoff, i32 0, i32 %rem.i, i32 %rem2.i
  %43 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %arrayidx3.i, align 2
  %45 = tail call i16 @llvm.bswap.i16(i16 %44) #5
  %time_stamp_off_a = getelementptr inbounds %struct.vnt_tx_datahead_g, ptr %buf, i32 0, i32 5
  %46 = ptrtoint ptr %time_stamp_off_a to i32
  call void @__asan_storeN_noabort(i32 %46, i32 2)
  store i16 %45, ptr %time_stamp_off_a, align 1
  %47 = ptrtoint ptr %top_cck_basic_rate to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %top_cck_basic_rate, align 1
  %49 = ptrtoint ptr %preamble_type1.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %preamble_type1.i, align 2
  %51 = and i8 %50, 1
  %rem.i60 = zext i8 %51 to i32
  %52 = urem i8 %48, 12
  %rem2.i61 = zext i8 %52 to i32
  %arrayidx3.i62 = getelementptr [2 x [12 x i16]], ptr @vnt_time_stampoff, i32 0, i32 %rem.i60, i32 %rem2.i61
  %53 = ptrtoint ptr %arrayidx3.i62 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %arrayidx3.i62, align 2
  %55 = tail call i16 @llvm.bswap.i16(i16 %54) #5
  %time_stamp_off_b = getelementptr inbounds %struct.vnt_tx_datahead_g, ptr %buf, i32 0, i32 4
  %56 = ptrtoint ptr %time_stamp_off_b to i32
  call void @__asan_storeN_noabort(i32 %56, i32 2)
  store i16 %55, ptr %time_stamp_off_b, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @ieee80211_ctstoself_duration(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @vnt_rxtx_datahead_ab(ptr nocapture noundef readonly %tx_context, ptr nocapture noundef writeonly %buf) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tx_context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_context, align 4
  %skb = getelementptr inbounds %struct.vnt_usb_send_context, ptr %tx_context, i32 0, i32 1
  %2 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %skb, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 19
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %frame_len2 = getelementptr inbounds %struct.vnt_usb_send_context, ptr %tx_context, i32 0, i32 3
  %6 = ptrtoint ptr %frame_len2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %frame_len2, align 4
  %tx_rate = getelementptr inbounds %struct.vnt_usb_send_context, ptr %tx_context, i32 0, i32 5
  %8 = ptrtoint ptr %tx_rate to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %tx_rate, align 2
  %pkt_type = getelementptr inbounds %struct.vnt_usb_send_context, ptr %tx_context, i32 0, i32 8
  %10 = ptrtoint ptr %pkt_type to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %pkt_type, align 2
  %preamble_type1.i = getelementptr inbounds %struct.vnt_private, ptr %1, i32 0, i32 46
  %12 = ptrtoint ptr %preamble_type1.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %preamble_type1.i, align 2
  %mul.i = shl i32 %7, 3
  %14 = zext i16 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.15)
  switch i16 %9, label %if.then18.i [
    i16 0, label %entry.if.else.i_crit_edge
    i16 1, label %sw.bb2.i
    i16 2, label %sw.bb3.i
    i16 3, label %sw.bb6.i
  ]

entry.if.else.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %div75.i = lshr exact i32 %mul.i, 1
  br label %if.else.i

sw.bb3.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %mul4.i = mul i32 %7, 80
  %sub.i = add i32 %mul4.i, 54
  %div5.i = udiv i32 %sub.i, 55
  br label %if.else.i

sw.bb6.i:                                         ; preds = %entry
  %div7.i = udiv i32 %mul.i, 11
  %mul8.i = mul nuw i32 %div7.i, 11
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %mul8.i)
  %cmp.not.i = icmp eq i32 %mul.i, %mul8.i
  br i1 %cmp.not.i, label %sw.bb6.i.if.else.i_crit_edge, label %if.then.i

sw.bb6.i.if.else.i_crit_edge:                     ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i

if.then.i:                                        ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i = add nuw nsw i32 %div7.i, 1
  %sub10.i = sub i32 %mul.i, %mul8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub10.i)
  %cmp11.i = icmp ugt i32 %sub10.i, 3
  br label %if.else.i

if.then18.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp20.i = icmp eq i8 %11, 0
  %spec.select76.i = select i1 %cmp20.i, i8 16, i8 0
  br label %vnt_get_phy_field.exit

if.else.i:                                        ; preds = %if.then.i, %sw.bb6.i.if.else.i_crit_edge, %sw.bb3.i, %sw.bb2.i, %entry.if.else.i_crit_edge
  %count.0.ph.i = phi i32 [ %inc.i, %if.then.i ], [ %div75.i, %sw.bb2.i ], [ %div5.i, %sw.bb3.i ], [ %div7.i, %sw.bb6.i.if.else.i_crit_edge ], [ %mul.i, %entry.if.else.i_crit_edge ]
  %tobool.not.ph.i = phi i1 [ %cmp11.i, %if.then.i ], [ true, %sw.bb2.i ], [ true, %sw.bb3.i ], [ true, %sw.bb6.i.if.else.i_crit_edge ], [ true, %entry.if.else.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %cmp25.not.i = icmp ne i16 %9, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %13)
  %cmp29.i = icmp eq i8 %13, 1
  %or.cond.i = select i1 %cmp25.not.i, i1 %cmp29.i, i1 false
  %spec.select78.i = select i1 %or.cond.i, i8 8, i8 0
  br label %vnt_get_phy_field.exit

vnt_get_phy_field.exit:                           ; preds = %if.else.i, %if.then18.i
  %tobool.not84.i = phi i1 [ true, %if.then18.i ], [ %tobool.not.ph.i, %if.else.i ]
  %count.082.i = phi i32 [ 0, %if.then18.i ], [ %count.0.ph.i, %if.else.i ]
  %mask.0.i = phi i8 [ %spec.select76.i, %if.then18.i ], [ %spec.select78.i, %if.else.i ]
  %15 = tail call i16 @llvm.umin.i16(i16 %9, i16 11) #5
  %spec.select77.i = zext i16 %15 to i32
  %arrayidx.i = getelementptr [12 x i8], ptr @vnt_phy_signal, i32 0, i32 %spec.select77.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.i, align 1
  %or.i = or i8 %17, %mask.0.i
  %18 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %or.i, ptr %buf, align 1
  %service.i = getelementptr inbounds %struct.vnt_phy_field, ptr %buf, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %11)
  %cmp43.i = icmp ne i8 %11, 1
  %brmerge.i = select i1 %cmp43.i, i1 true, i1 %tobool.not84.i
  %spec.store.select.i = select i1 %brmerge.i, i8 0, i8 -128
  %19 = ptrtoint ptr %service.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %spec.store.select.i, ptr %service.i, align 1
  %spec.select.i = select i1 %cmp43.i, i32 %7, i32 %count.082.i
  %conv54.i = trunc i32 %spec.select.i to i16
  %20 = tail call i16 @llvm.bswap.i16(i16 %conv54.i) #5
  %len55.i = getelementptr inbounds %struct.vnt_phy_field, ptr %buf, i32 0, i32 2
  %21 = ptrtoint ptr %len55.i to i32
  call void @__asan_storeN_noabort(i32 %21, i32 2)
  store i16 %20, ptr %len55.i, align 1
  %duration_id = getelementptr inbounds %struct.ieee80211_hdr, ptr %5, i32 0, i32 1
  %22 = ptrtoint ptr %duration_id to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %duration_id, align 2
  %duration = getelementptr inbounds %struct.vnt_tx_datahead_ab, ptr %buf, i32 0, i32 1
  %24 = ptrtoint ptr %duration to i32
  call void @__asan_storeN_noabort(i32 %24, i32 2)
  store i16 %23, ptr %duration, align 1
  %25 = ptrtoint ptr %preamble_type1.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %preamble_type1.i, align 2
  %27 = and i8 %26, 1
  %rem.i = zext i8 %27 to i32
  %28 = urem i16 %9, 12
  %rem2.i = zext i16 %28 to i32
  %arrayidx3.i = getelementptr [2 x [12 x i16]], ptr @vnt_time_stampoff, i32 0, i32 %rem.i, i32 %rem2.i
  %29 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %arrayidx3.i, align 2
  %31 = tail call i16 @llvm.bswap.i16(i16 %30) #5
  %time_stamp_off = getelementptr inbounds %struct.vnt_tx_datahead_ab, ptr %buf, i32 0, i32 2
  %32 = ptrtoint ptr %time_stamp_off to i32
  call void @__asan_storeN_noabort(i32 %32, i32 2)
  store i16 %31, ptr %time_stamp_off, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_beacon_get_tim(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

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

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind readnone willreturn }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !12, !13, !15, !16, !18, !20, !22, !23}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/vt6656/rxtx.c", i32 536, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @vnt_tx_packet.__UNIQUE_ID_ddebug385, !1, !"__UNIQUE_ID_ddebug385", i1 false, i1 false}
!6 = distinct !{null, !7, !"__already_done", i1 false, i1 false}
!7 = !{!"../include/net/mac80211.h", i32 2737, i32 6}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/staging/vt6656/rxtx.c", i32 61, i32 2}
!11 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @vnt_get_free_context.__UNIQUE_ID_ddebug383, !10, !"__UNIQUE_ID_ddebug383", i1 false, i1 false}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/staging/vt6656/rxtx.c", i32 75, i32 3}
!15 = !{ptr @vnt_get_free_context.__UNIQUE_ID_ddebug384, !14, !"__UNIQUE_ID_ddebug384", i1 false, i1 false}
!16 = !{ptr @vnt_phy_signal, !17, !"vnt_phy_signal", i1 false, i1 false}
!17 = !{!"../drivers/staging/vt6656/rxtx.c", i32 40, i32 17}
!18 = !{ptr @vnt_time_stampoff, !19, !"vnt_time_stampoff", i1 false, i1 false}
!19 = !{!"../drivers/staging/vt6656/rxtx.c", i32 29, i32 18}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/staging/vt6656/rxtx.c", i32 637, i32 3}
!22 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @vnt_beacon_xmit.__UNIQUE_ID_ddebug386, !21, !"__UNIQUE_ID_ddebug386", i1 false, i1 false}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!33 = !{!"branch_weights", i32 2000, i32 1}
!34 = !{i64 2148866643, i64 2148866648, i64 2148866661, i64 2148866705, i64 2148866739, i64 2148866760}
!35 = !{i8 0, i8 2}
