; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/realtek/rtlwifi/rtl8192ee/rf.c_pt.bc'
source_filename = "../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/rf.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.128, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.anon.128 = type { i32, i16 }
%struct.rtl_priv = type { ptr, %struct.completion, %struct.list_head, ptr, ptr, %struct.rtl_dualmac_easy_concurrent_ctl, %struct.rtl_dmsp_ctl, %struct.rtl_locks, %struct.rtl_works, %struct.rtl_mac, %struct.rtl_hal, %struct.rtl_regulatory, %struct.rtl_rfkill, %struct.rtl_io, %struct.rtl_phy, %struct.rtl_dm, %struct.rtl_security, %struct.rtl_efuse, %struct.rtl_led_ctl, %struct.rtl_tx_report, %struct.rtl_scan_list, %struct.rtl_ps_ctl, %struct.rate_adaptive, %struct.dynamic_primary_cca, %struct.wireless_stats, %struct.rt_link_detect, %struct.false_alarm_statistics, ptr, %struct.list_head, %struct.sk_buff_head, %struct.rtl_debug, i32, ptr, ptr, i32, %struct.dig_t, %struct.ps_t, i32, i32, i32, i32, i8, i8, ptr, i32, i8, i8, [5 x i8], %struct.proxim, %struct.bt_coexist_info, i8, %struct.wiphy_wowlan_support, [0 x i8] }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rtl_dualmac_easy_concurrent_ctl = type { i32, i8, i8, i8, i8 }
%struct.rtl_dmsp_ctl = type { i8, i8, i8, i8, i32, i8, i8, i8, i8, i32 }
%struct.rtl_locks = type { %struct.mutex, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.rtl_works = type { ptr, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.tasklet_struct, %struct.tasklet_struct, ptr, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.work_struct }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.129, i32 }
%union.anon.129 = type { ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rtl_mac = type { [6 x i8], i8, i8, i32, i32, [6 x %struct.ieee80211_supported_band], ptr, ptr, i32, [9 x %struct.rtl_tid_data], i32, i32, i32, i8, i8, i8, i32, i16, i16, i16, i8, i8, i8, [9 x %struct.sk_buff_head], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [6 x i8], i32, [16 x i8], i32, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i64, i8, i8, i16, i8, i32, i8, i8, i8, i8, [5 x %struct.ieee80211_tx_queue_params], [4 x %struct.rtl_qos_parameters], i64, i64, i32, i32 }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.rtl_tid_data = type { %struct.rtl_ht_agg }
%struct.rtl_ht_agg = type { i16, i16, i16, i64, i32, i8, i8 }
%struct.ieee80211_tx_queue_params = type { i16, i16, i16, i8, i8, i8, i8, %struct.ieee80211_he_mu_edca_param_ac_rec }
%struct.ieee80211_he_mu_edca_param_ac_rec = type { i8, i8, i8 }
%struct.rtl_qos_parameters = type { i16, i16, i8, i8, i16 }
%struct.rtl_hal = type { ptr, i8, i8, i8, i8, i8, i8, i8, %struct.bt_coexist_8723, i32, i16, i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, ptr, i16, i16, i8, i8, i8, i8, i8, i8, i16, i32, i8, i8, %struct.p2p_ps_offload_t, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i64, i32, ptr, i8, i8, i8 }
%struct.bt_coexist_8723 = type { i32, i32, i32, i32, i8, i8, i8, i32, i8, i8, i8, %struct.btdm_8723 }
%struct.btdm_8723 = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [5 x i8], i8, i32, i32, i32, i8, i32, i32, i32, i32, i8, i8 }
%struct.p2p_ps_offload_t = type { i8 }
%struct.rtl_regulatory = type { [2 x i8], i16, i16, i32, i16, i16, i16, ptr }
%struct.rtl_rfkill = type { i8 }
%struct.rtl_io = type { ptr, %struct.mutex, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rtl_phy = type { [4 x %struct.bb_reg_def], %struct.init_gain, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i16, i32, i32, i32, [16 x i32], [4 x i32], [10 x i32], i8, [4 x i8], i8, i8, [46 x %struct.iqk_matrix_regs], i8, i8, i8, i8, [13 x [16 x i32]], [13 x [16 x i32]], [2 x [4 x [4 x [84 x i32]]]], [4 x [4 x [6 x i8]]], [4 x [4 x [5 x i8]]], [4 x i8], i8, i8, i8, i8, [4 x [4 x [6 x [14 x [4 x i8]]]]], [4 x [4 x [6 x [49 x [4 x i8]]]]], [2 x i32], i8, [2 x i32], i32, i8, i32, i8, [10 x %struct.phy_parameters], i16, i8, i32 }
%struct.bb_reg_def = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.init_gain = type { i8, i8, i8, i8, i8 }
%struct.iqk_matrix_regs = type { i8, [1 x [8 x i32]] }
%struct.phy_parameters = type { i16, ptr }
%struct.rtl_dm = type { i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8], i8, i8, i8, [6 x i8], i8, i8, i8, i8, i8, [8 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8], i8, i8, i8, [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], i8, i8, i8, i8, %struct.dm_phy_dbg_info, i8, i8, i8, [2 x i32], i32, i32, i8, i32, i32, i8, [4 x i8], i8, [4 x i8], i8, i8, i8, i8, i8, i8, i8, i8, %struct.fast_ant_training, i8, i8, i32, i32, i32, i32, i8, ptr, i8, i64, i64 }
%struct.dm_phy_dbg_info = type { [4 x i8], i64, i64, i64, i16, i16, [4 x i32] }
%struct.fast_ant_training = type { [6 x i8], i8, i8, i8, [7 x i32], [7 x i32], [7 x i32], i8, i32, [33 x i8], [33 x i8], [33 x i8], [33 x i32], [33 x i32], [33 x i32], [33 x i32], i8, i8 }
%struct.rtl_security = type { i8, i8, i8, i32, i32, i32, [32 x [6 x i8]], [5 x [61 x i8]], [5 x i8], ptr }
%struct.rtl_efuse = type { ptr, i8, i8, i16, [2 x [512 x i8]], i16, i8, i8, i8, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, [6 x i8], i8, i8, i8, i8, i8, [2 x i8], [3 x [2 x i8]], [12 x i8], [12 x i8], [4 x [3 x i8]], [4 x [12 x i8]], [4 x [12 x i8]], [2 x i8], i8, i8, [2 x [3 x i8]], [2 x [59 x i8]], [2 x [59 x i8]], [4 x [14 x i8]], [4 x [59 x i8]], [4 x [59 x i8]], [4 x [59 x i8]], [4 x [59 x i8]], [4 x [59 x i8]], [4 x [59 x i8]], [4 x [59 x i8]], [4 x [7 x i8]], [4 x [4 x i8]], [4 x [4 x i8]], [4 x [4 x i8]], [4 x [4 x i8]], i8, i16, [3 x i8], i8, i8, [2 x i8], i16, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.rtl_led_ctl = type { i8, %struct.rtl_led, %struct.rtl_led }
%struct.rtl_led = type { ptr, i32, i8 }
%struct.rtl_tx_report = type { %struct.atomic_t, i16, i32, i16, %struct.sk_buff_head }
%struct.rtl_scan_list = type { i32, %struct.list_head }
%struct.rtl_ps_ctl = type { i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i8, i8, i32, i32, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.rtl_p2p_ps_info, i8, i8, i8, i8, i8, i32 }
%struct.rtl_p2p_ps_info = type { i32, i32, i8, i8, i8, i8, [2 x i8], [2 x i32], [2 x i32], [2 x i32] }
%struct.rate_adaptive = type { i8, i8, i16, i32, i32, i8, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i8, i8, i8, i8, i8 }
%struct.dynamic_primary_cca = type { i8, i8, i8, i8, i8, i8, i8 }
%struct.wireless_stats = type { i64, i64, i64, i64, i64, i64, i32, i32, i64, i64, [4 x i32], i32, i32, i32, i32, i32, i32, [4 x i8], [4 x i8], [2 x i8], [4 x i16], [4 x i16], %struct.rt_smooth_data, %struct.rt_smooth_data }
%struct.rt_smooth_data = type { [100 x i32], i32, i32, i32 }
%struct.rt_link_detect = type { i32, i32, [4 x i32], [4 x i32], i32, i32, i8, i8, i8, i8, i8, [9 x [4 x i32]], [9 x i32], [9 x i8] }
%struct.false_alarm_statistics = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.sk_buff_head = type { %union.anon.61, i32, %struct.spinlock }
%union.anon.61 = type { %struct.anon.62 }
%struct.anon.62 = type { ptr, ptr }
%struct.rtl_debug = type { ptr, [20 x i8] }
%struct.dig_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32 }
%struct.ps_t = type { i8, i8, i8, i8, i8, i32 }
%struct.proxim = type { i8, ptr, ptr, ptr }
%struct.bt_coexist_info = type { ptr, %struct.rtl_btc_info, ptr, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.rtl_btc_info = type { i8, i8, i8, i8, i8, i8, i32 }
%struct.wiphy_wowlan_support = type { i32, i32, i32, i32, i32, i32, ptr }
%struct.rtl_hal_cfg = type { i8, i8, ptr, ptr, ptr, ptr, ptr, i32, [91 x i32] }
%struct.rtl_hal_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@rtl92ee_phy_rf6052_set_bandwidth._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 36, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013rtl8192ee: unknown bandwidth: %#X\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"rtl92ee_phy_rf6052_set_bandwidth\00", [63 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"drivers/net/wireless/realtek/rtlwifi/rtl8192ee/rf.c\00", [44 x i8] zeroinitializer }, align 32
@rtl92ee_phy_rf6052_set_bandwidth._entry_ptr = internal global ptr @rtl92ee_phy_rf6052_set_bandwidth._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Radio[%d] Fail!!\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@switch.table.rtl92ee_phy_rf6052_config = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 16, i32 1048576, i32 16, i32 1048576], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.5 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.6 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 36, i32 3 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 121, i32 4 }
@___asan_gen_.21 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.22 = private constant [55 x i8] c"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/rf.c\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 127, i32 2 }
@___asan_gen_.24 = private unnamed_addr constant [39 x i8] c"switch.table.rtl92ee_phy_rf6052_config\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @rtl92ee_phy_rf6052_set_bandwidth._entry, ptr @rtl92ee_phy_rf6052_set_bandwidth._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @switch.table.rtl92ee_phy_rf6052_config], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92ee_phy_rf6052_set_bandwidth._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rtl92ee_phy_rf6052_config to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92ee_phy_rf6052_set_bandwidth(ptr noundef %hw, i8 noundef zeroext %bandwidth) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %2 = zext i8 %bandwidth to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i8 %bandwidth, label %do.end [
    i8 0, label %sw.bb
    i8 1, label %sw.bb8
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %rfreg_chnlval = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 52
  %3 = ptrtoint ptr %rfreg_chnlval to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rfreg_chnlval, align 4
  %or1 = or i32 %4, 3072
  store i32 %or1, ptr %rfreg_chnlval, align 4
  %5 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %priv, align 8
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %6, i32 0, i32 32
  %7 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cfg.i, align 8
  %ops.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops.i, align 4
  %set_rfreg.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %10, i32 0, i32 48
  %11 = ptrtoint ptr %set_rfreg.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %set_rfreg.i, align 4
  tail call void %12(ptr noundef %hw, i32 noundef 0, i32 noundef 24, i32 noundef 1048575, i32 noundef %or1) #3
  %13 = ptrtoint ptr %rfreg_chnlval to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rfreg_chnlval, align 4
  %15 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %priv, align 8
  %cfg.i33 = getelementptr inbounds %struct.rtl_priv, ptr %16, i32 0, i32 32
  %17 = ptrtoint ptr %cfg.i33 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cfg.i33, align 8
  %ops.i34 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %ops.i34 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops.i34, align 4
  %set_rfreg.i35 = getelementptr inbounds %struct.rtl_hal_ops, ptr %20, i32 0, i32 48
  %21 = ptrtoint ptr %set_rfreg.i35 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %set_rfreg.i35, align 4
  tail call void %22(ptr noundef %hw, i32 noundef 1, i32 noundef 24, i32 noundef 1048575, i32 noundef %14) #3
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %rfreg_chnlval9 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 52
  %23 = ptrtoint ptr %rfreg_chnlval9 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rfreg_chnlval9, align 4
  %and11 = and i32 %24, -3073
  %or12 = or i32 %and11, 1024
  store i32 %or12, ptr %rfreg_chnlval9, align 4
  %25 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %priv, align 8
  %cfg.i37 = getelementptr inbounds %struct.rtl_priv, ptr %26, i32 0, i32 32
  %27 = ptrtoint ptr %cfg.i37 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cfg.i37, align 8
  %ops.i38 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %28, i32 0, i32 4
  %29 = ptrtoint ptr %ops.i38 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ops.i38, align 4
  %set_rfreg.i39 = getelementptr inbounds %struct.rtl_hal_ops, ptr %30, i32 0, i32 48
  %31 = ptrtoint ptr %set_rfreg.i39 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %set_rfreg.i39, align 4
  tail call void %32(ptr noundef %hw, i32 noundef 0, i32 noundef 24, i32 noundef 1048575, i32 noundef %or12) #3
  %33 = ptrtoint ptr %rfreg_chnlval9 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rfreg_chnlval9, align 4
  %35 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %priv, align 8
  %cfg.i41 = getelementptr inbounds %struct.rtl_priv, ptr %36, i32 0, i32 32
  %37 = ptrtoint ptr %cfg.i41 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %cfg.i41, align 8
  %ops.i42 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %38, i32 0, i32 4
  %39 = ptrtoint ptr %ops.i42 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ops.i42, align 4
  %set_rfreg.i43 = getelementptr inbounds %struct.rtl_hal_ops, ptr %40, i32 0, i32 48
  %41 = ptrtoint ptr %set_rfreg.i43 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %set_rfreg.i43, align 4
  tail call void %42(ptr noundef %hw, i32 noundef 1, i32 noundef 24, i32 noundef 1048575, i32 noundef %34) #3
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %conv = zext i8 %bandwidth to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %conv) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb8, %sw.bb
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @rtl92ee_phy_rf6052_config(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %rf_type = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 4
  %2 = ptrtoint ptr %rf_type to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %rf_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp = icmp eq i8 %3, 0
  %spec.select = select i1 %cmp, i8 1, i8 2
  %4 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 58
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %spec.select, ptr %4, align 4
  %6 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv, align 8
  %phy.i = getelementptr inbounds %struct.rtl_priv, ptr %7, i32 0, i32 14
  %num_total_rfpath.i = getelementptr inbounds %struct.rtl_priv, ptr %7, i32 0, i32 14, i32 58
  %8 = ptrtoint ptr %num_total_rfpath.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %num_total_rfpath.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp103.not.i = icmp eq i8 %9, 0
  br i1 %cmp103.not.i, label %entry.for.end.i_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.for.end.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %indvars.iv.i = phi i32 [ %indvars.iv.next.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %u4_regvalue.0104.i = phi i32 [ %u4_regvalue.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [4 x %struct.bb_reg_def], ptr %phy.i, i32 0, i32 %indvars.iv.i
  %10 = trunc i32 %indvars.iv.i to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %10)
  %11 = icmp ult i8 %10, 4
  br i1 %11, label %switch.lookup, label %for.body.i.sw.epilog.i_crit_edge

for.body.i.sw.epilog.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog.i

switch.lookup:                                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  %sext = shl i32 %indvars.iv.i, 24
  %12 = ashr exact i32 %sext, 24
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.rtl92ee_phy_rf6052_config, i32 0, i32 %12
  %13 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %13)
  %switch.load = load i32, ptr %switch.gep, align 4
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i, align 4
  %16 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %priv, align 8
  %cfg.i64.i = getelementptr inbounds %struct.rtl_priv, ptr %17, i32 0, i32 32
  %18 = ptrtoint ptr %cfg.i64.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cfg.i64.i, align 8
  %ops.i65.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %ops.i65.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ops.i65.i, align 4
  %get_bbreg.i66.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %21, i32 0, i32 45
  %22 = ptrtoint ptr %get_bbreg.i66.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %get_bbreg.i66.i, align 4
  %call.i67.i = tail call i32 %23(ptr noundef %hw, i32 noundef %15, i32 noundef %switch.load) #3
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %switch.lookup, %for.body.i.sw.epilog.i_crit_edge
  %u4_regvalue.1.i = phi i32 [ %u4_regvalue.0104.i, %for.body.i.sw.epilog.i_crit_edge ], [ %call.i67.i, %switch.lookup ]
  %rfintfe.i = getelementptr [4 x %struct.bb_reg_def], ptr %phy.i, i32 0, i32 %indvars.iv.i, i32 3
  %24 = ptrtoint ptr %rfintfe.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rfintfe.i, align 4
  %26 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %priv, align 8
  %cfg.i69.i = getelementptr inbounds %struct.rtl_priv, ptr %27, i32 0, i32 32
  %28 = ptrtoint ptr %cfg.i69.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cfg.i69.i, align 8
  %ops.i70.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %29, i32 0, i32 4
  %30 = ptrtoint ptr %ops.i70.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ops.i70.i, align 4
  %set_bbreg.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %31, i32 0, i32 46
  %32 = ptrtoint ptr %set_bbreg.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %set_bbreg.i.i, align 4
  tail call void %33(ptr noundef %hw, i32 noundef %25, i32 noundef 1048576, i32 noundef 1) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 214748) #3
  %rfintfo.i = getelementptr [4 x %struct.bb_reg_def], ptr %phy.i, i32 0, i32 %indvars.iv.i, i32 2
  %35 = ptrtoint ptr %rfintfo.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rfintfo.i, align 4
  %37 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %priv, align 8
  %cfg.i72.i = getelementptr inbounds %struct.rtl_priv, ptr %38, i32 0, i32 32
  %39 = ptrtoint ptr %cfg.i72.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cfg.i72.i, align 8
  %ops.i73.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %40, i32 0, i32 4
  %41 = ptrtoint ptr %ops.i73.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ops.i73.i, align 4
  %set_bbreg.i74.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %42, i32 0, i32 46
  %43 = ptrtoint ptr %set_bbreg.i74.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %set_bbreg.i74.i, align 4
  tail call void %44(ptr noundef %hw, i32 noundef %36, i32 noundef 16, i32 noundef 1) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %45(i32 noundef 214748) #3
  %rfhssi_para2.i = getelementptr [4 x %struct.bb_reg_def], ptr %phy.i, i32 0, i32 %indvars.iv.i, i32 8
  %46 = ptrtoint ptr %rfhssi_para2.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %rfhssi_para2.i, align 4
  %48 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %priv, align 8
  %cfg.i76.i = getelementptr inbounds %struct.rtl_priv, ptr %49, i32 0, i32 32
  %50 = ptrtoint ptr %cfg.i76.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %cfg.i76.i, align 8
  %ops.i77.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %51, i32 0, i32 4
  %52 = ptrtoint ptr %ops.i77.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ops.i77.i, align 4
  %set_bbreg.i78.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %53, i32 0, i32 46
  %54 = ptrtoint ptr %set_bbreg.i78.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %set_bbreg.i78.i, align 4
  tail call void %55(ptr noundef %hw, i32 noundef %47, i32 noundef 1024, i32 noundef 0) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %56 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %56(i32 noundef 214748) #3
  %57 = ptrtoint ptr %rfhssi_para2.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %rfhssi_para2.i, align 4
  %59 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %priv, align 8
  %cfg.i80.i = getelementptr inbounds %struct.rtl_priv, ptr %60, i32 0, i32 32
  %61 = ptrtoint ptr %cfg.i80.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %cfg.i80.i, align 8
  %ops.i81.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %62, i32 0, i32 4
  %63 = ptrtoint ptr %ops.i81.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ops.i81.i, align 4
  %set_bbreg.i82.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %64, i32 0, i32 46
  %65 = ptrtoint ptr %set_bbreg.i82.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %set_bbreg.i82.i, align 4
  tail call void %66(ptr noundef %hw, i32 noundef %58, i32 noundef 2048, i32 noundef 0) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %67 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %67(i32 noundef 214748) #3
  %68 = zext i8 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %68, ptr @__sancov_gen_cov_switch_values.5)
  switch i8 %10, label %sw.epilog.i.for.inc.i_crit_edge [
    i8 0, label %sw.epilog16.thread.i
    i8 1, label %sw.epilog16.thread94.i
    i8 3, label %sw.epilog.i.for.inc.sink.split.i_crit_edge
    i8 2, label %for.inc.critedge99.i
  ]

sw.epilog.i.for.inc.sink.split.i_crit_edge:       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.sink.split.i

sw.epilog.i.for.inc.i_crit_edge:                  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.i

sw.epilog16.thread.i:                             ; preds = %sw.epilog.i
  %call11.i = tail call zeroext i1 @rtl92ee_phy_config_rf_with_headerfile(ptr noundef %hw, i32 noundef %indvars.iv.i) #3
  %69 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx.i, align 4
  %71 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %priv, align 8
  %cfg.i84.i = getelementptr inbounds %struct.rtl_priv, ptr %72, i32 0, i32 32
  %73 = ptrtoint ptr %cfg.i84.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %cfg.i84.i, align 8
  %ops.i85.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %74, i32 0, i32 4
  %75 = ptrtoint ptr %ops.i85.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %ops.i85.i, align 4
  %set_bbreg.i86.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %76, i32 0, i32 46
  %77 = ptrtoint ptr %set_bbreg.i86.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %set_bbreg.i86.i, align 4
  tail call void %78(ptr noundef %hw, i32 noundef %70, i32 noundef 16, i32 noundef %u4_regvalue.1.i) #3
  br i1 %call11.i, label %sw.epilog16.thread.i.for.inc.i_crit_edge, label %sw.epilog16.thread.i.if.then.i_crit_edge

sw.epilog16.thread.i.if.then.i_crit_edge:         ; preds = %sw.epilog16.thread.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then.i

sw.epilog16.thread.i.for.inc.i_crit_edge:         ; preds = %sw.epilog16.thread.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.i

sw.epilog16.thread94.i:                           ; preds = %sw.epilog.i
  %call14.i = tail call zeroext i1 @rtl92ee_phy_config_rf_with_headerfile(ptr noundef %hw, i32 noundef %indvars.iv.i) #3
  %79 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx.i, align 4
  %81 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %priv, align 8
  %cfg.i88.i = getelementptr inbounds %struct.rtl_priv, ptr %82, i32 0, i32 32
  %83 = ptrtoint ptr %cfg.i88.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %cfg.i88.i, align 8
  %ops.i89.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %84, i32 0, i32 4
  %85 = ptrtoint ptr %ops.i89.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %ops.i89.i, align 4
  %set_bbreg.i90.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %86, i32 0, i32 46
  %87 = ptrtoint ptr %set_bbreg.i90.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %set_bbreg.i90.i, align 4
  tail call void %88(ptr noundef %hw, i32 noundef %80, i32 noundef 1048576, i32 noundef %u4_regvalue.1.i) #3
  br i1 %call14.i, label %sw.epilog16.thread94.i.for.inc.i_crit_edge, label %sw.epilog16.thread94.i.if.then.i_crit_edge

sw.epilog16.thread94.i.if.then.i_crit_edge:       ; preds = %sw.epilog16.thread94.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then.i

sw.epilog16.thread94.i.for.inc.i_crit_edge:       ; preds = %sw.epilog16.thread94.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.i

if.then.i:                                        ; preds = %sw.epilog16.thread94.i.if.then.i_crit_edge, %sw.epilog16.thread.i.if.then.i_crit_edge
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %7, i64 noundef 4, i32 noundef 5, ptr noundef nonnull @.str.3, i32 noundef %indvars.iv.i) #3
  br label %_rtl92ee_phy_rf6052_config_parafile.exit

for.inc.critedge99.i:                             ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.sink.split.i

for.inc.sink.split.i:                             ; preds = %for.inc.critedge99.i, %sw.epilog.i.for.inc.sink.split.i_crit_edge
  %.sink117.i = phi i32 [ 16, %for.inc.critedge99.i ], [ 1048576, %sw.epilog.i.for.inc.sink.split.i_crit_edge ]
  %89 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %arrayidx.i, align 4
  %91 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %priv, align 8
  %cfg.i84.c.i = getelementptr inbounds %struct.rtl_priv, ptr %92, i32 0, i32 32
  %93 = ptrtoint ptr %cfg.i84.c.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %cfg.i84.c.i, align 8
  %ops.i85.c.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %94, i32 0, i32 4
  %95 = ptrtoint ptr %ops.i85.c.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %ops.i85.c.i, align 4
  %set_bbreg.i86.c.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %96, i32 0, i32 46
  %97 = ptrtoint ptr %set_bbreg.i86.c.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %set_bbreg.i86.c.i, align 4
  tail call void %98(ptr noundef %hw, i32 noundef %90, i32 noundef %.sink117.i, i32 noundef %u4_regvalue.1.i) #3
  br label %for.inc.i

for.inc.i:                                        ; preds = %for.inc.sink.split.i, %sw.epilog16.thread94.i.for.inc.i_crit_edge, %sw.epilog16.thread.i.for.inc.i_crit_edge, %sw.epilog.i.for.inc.i_crit_edge
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %99 = ptrtoint ptr %num_total_rfpath.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %num_total_rfpath.i, align 4
  %101 = zext i8 %100 to i32
  %cmp.i = icmp ult i32 %indvars.iv.next.i, %101
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %entry.for.end.i_crit_edge
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %7, i64 noundef 4, i32 noundef 5, ptr noundef nonnull @.str.4) #3
  br label %_rtl92ee_phy_rf6052_config_parafile.exit

_rtl92ee_phy_rf6052_config_parafile.exit:         ; preds = %for.end.i, %if.then.i
  %cmp101.i = phi i1 [ true, %for.end.i ], [ false, %if.then.i ]
  ret i1 %cmp101.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtl92ee_phy_config_rf_with_headerfile(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_rtl_dbg_print(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/rf.c", i32 36, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @rtl92ee_phy_rf6052_set_bandwidth._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @rtl92ee_phy_rf6052_set_bandwidth._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/rf.c", i32 121, i32 4}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/rf.c", i32 127, i32 2}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
