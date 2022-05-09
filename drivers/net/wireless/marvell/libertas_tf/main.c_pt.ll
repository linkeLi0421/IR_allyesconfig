; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/marvell/libertas_tf/main.c_pt.bc'
source_filename = "../drivers/net/wireless/marvell/libertas_tf/main.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+lbtf_debug\22, \22a\22\09"
module asm "\09.weak\09__crc_lbtf_debug\09\09\09\09"
module asm "\09.long\09__crc_lbtf_debug\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_lbtf_debug:\09\09\09\09\09"
module asm "\09.asciz \09\22lbtf_debug\22\09\09\09\09\09"
module asm "__kstrtabns_lbtf_debug:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+lbtf_rx\22, \22a\22\09"
module asm "\09.weak\09__crc_lbtf_rx\09\09\09\09"
module asm "\09.long\09__crc_lbtf_rx\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_lbtf_rx:\09\09\09\09\09"
module asm "\09.asciz \09\22lbtf_rx\22\09\09\09\09\09"
module asm "__kstrtabns_lbtf_rx:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+lbtf_add_card\22, \22a\22\09"
module asm "\09.weak\09__crc_lbtf_add_card\09\09\09\09"
module asm "\09.long\09__crc_lbtf_add_card\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_lbtf_add_card:\09\09\09\09\09"
module asm "\09.asciz \09\22lbtf_add_card\22\09\09\09\09\09"
module asm "__kstrtabns_lbtf_add_card:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+lbtf_remove_card\22, \22a\22\09"
module asm "\09.weak\09__crc_lbtf_remove_card\09\09\09\09"
module asm "\09.long\09__crc_lbtf_remove_card\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_lbtf_remove_card:\09\09\09\09\09"
module asm "\09.asciz \09\22lbtf_remove_card\22\09\09\09\09\09"
module asm "__kstrtabns_lbtf_remove_card:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+lbtf_send_tx_feedback\22, \22a\22\09"
module asm "\09.weak\09__crc_lbtf_send_tx_feedback\09\09\09\09"
module asm "\09.long\09__crc_lbtf_send_tx_feedback\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_lbtf_send_tx_feedback:\09\09\09\09\09"
module asm "\09.asciz \09\22lbtf_send_tx_feedback\22\09\09\09\09\09"
module asm "__kstrtabns_lbtf_send_tx_feedback:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+lbtf_bcn_sent\22, \22a\22\09"
module asm "\09.weak\09__crc_lbtf_bcn_sent\09\09\09\09"
module asm "\09.long\09__crc_lbtf_bcn_sent\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_lbtf_bcn_sent:\09\09\09\09\09"
module asm "\09.asciz \09\22lbtf_bcn_sent\22\09\09\09\09\09"
module asm "__kstrtabns_lbtf_bcn_sent:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.97 }
%union.anon.97 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ieee80211_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.ieee80211_rate = type { i32, i16, i16, i16 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lbtf_private = type { ptr, ptr, ptr, [2312 x i8], ptr, %struct.work_struct, %struct.work_struct, i32, i32, %struct.mutex, i16, ptr, ptr, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.timer_list, i32, i32, i8, i16, [6 x i8], [32 x [6 x i8]], i32, i32, ptr, ptr, i16, i16, %struct.channel_range, i8, i32, [14 x %struct.ieee80211_channel], [12 x %struct.ieee80211_rate], %struct.ieee80211_supported_band, %struct.lbtf_offset_value, i8, %struct.sk_buff_head, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.channel_range = type { i8, i8, i8 }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.lbtf_offset_value = type { i32, i32 }
%struct.sk_buff_head = type { %union.anon.64, i32, %struct.spinlock }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr }
%struct.sk_buff = type { %union.anon.43, %union.anon.46, %union.anon.47, [48 x i8], %union.anon.48, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.50, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.43 = type { %struct.anon.44 }
%struct.anon.44 = type { ptr, ptr, %union.anon.45 }
%union.anon.45 = type { ptr }
%union.anon.46 = type { ptr }
%union.anon.47 = type { i64 }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { i32, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.52, i32, i32, i32, i16, i16, %union.anon.54, i32, %union.anon.55, %union.anon.56, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.52 = type { i32 }
%union.anon.54 = type { i32 }
%union.anon.55 = type { i32 }
%union.anon.56 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.rxpd = type { i16, i8, i8, i16, i8, i8, i32, i32, i8, [3 x i8] }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.128, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.anon.128 = type { i32, i16 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.124, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.possible_net_t = type { ptr }
%struct.anon.124 = type { i64, i64, i8 }
%struct.lbtf_ops = type { ptr, ptr, ptr }
%struct.txpd = type { i32, i32, i32, i16, %union.anon.148, i8, i8, i8, i8 }
%union.anon.148 = type { %struct.anon.149 }
%struct.anon.149 = type { [2 x i8], [4 x i8] }
%struct.cmd_ctrl_node = type { %struct.list_head, i32, ptr, i32, ptr, i16, %struct.wait_queue_head }
%struct.ieee80211_vif = type { i32, %struct.ieee80211_bss_conf, [6 x i8], i8, i8, i8, i8, [4 x i8], ptr, ptr, i32, i32, ptr, i8, i8, [4 x i8], i8, i8, ptr, [0 x i8] }
%struct.ieee80211_bss_conf = type { ptr, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i16, i16, i64, i32, i8, i32, ptr, [6 x i32], i16, i32, i32, i32, i32, %struct.cfg80211_chan_def, %struct.ieee80211_mu_group_data, [4 x i32], i32, i8, i8, i8, [32 x i8], i32, i8, i32, i32, %struct.ieee80211_p2p_noa_attr, i8, i16, i8, i8, ptr, i8, [6 x i8], i8, i8, i8, i8, %struct.anon.129, %struct.ieee80211_he_obss_pd, %struct.cfg80211_he_bss_color, %struct.ieee80211_fils_discovery, i32, i8, %struct.cfg80211_bitrate_mask, i32, [8 x %struct.ieee80211_tx_pwr_env], i8, i8 }
%struct.ieee80211_mu_group_data = type { [8 x i8], [16 x i8] }
%struct.ieee80211_p2p_noa_attr = type { i8, i8, [4 x %struct.ieee80211_p2p_noa_desc] }
%struct.ieee80211_p2p_noa_desc = type <{ i8, i32, i32, i32 }>
%struct.anon.129 = type { i32, i16 }
%struct.ieee80211_he_obss_pd = type { i8, i8, i8, i8, i8, [8 x i8], [8 x i8] }
%struct.cfg80211_he_bss_color = type { i8, i8, i8 }
%struct.ieee80211_fils_discovery = type { i32, i32 }
%struct.cfg80211_bitrate_mask = type { [6 x %struct.anon.130] }
%struct.anon.130 = type { i32, [10 x i8], [8 x i16], [8 x i16], i32, i32, i32 }
%struct.ieee80211_tx_pwr_env = type { i8, [8 x i8] }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.survey_info = type { ptr, i64, i64, i64, i64, i64, i64, i64, i32, i8 }

@lbtf_debug = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__kstrtab_lbtf_debug = external dso_local constant [0 x i8], align 1
@__kstrtabns_lbtf_debug = external dso_local constant [0 x i8], align 1
@__ksymtab_lbtf_debug = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @lbtf_debug to i32), ptr @__kstrtab_lbtf_debug, ptr @__kstrtabns_lbtf_debug }, section "___ksymtab_gpl+lbtf_debug", align 4
@__param_str_libertas_tf_debug = internal constant [30 x i8] c"libertas_tf.libertas_tf_debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@__param_libertas_tf_debug = internal constant %struct.kernel_param { ptr @__param_str_libertas_tf_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @lbtf_debug } }, section "__param", align 4
@__UNIQUE_ID_libertas_tf_debugtype349 = internal constant [43 x i8] c"libertas_tf.parmtype=libertas_tf_debug:int\00", section ".modinfo", align 1
@lbtf_rx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 495, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017libertas_tf enter: %s()\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"lbtf_rx\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"drivers/net/wireless/marvell/libertas_tf/main.c\00", [48 x i8] zeroinitializer }, align 32
@lbtf_rx._entry_ptr = internal global ptr @lbtf_rx._entry, section ".printk_index", align 4
@lbtf_rx._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 498, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\017libertas_tf rx: rx before we turned on the radio\00", [45 x i8] zeroinitializer }, align 32
@lbtf_rx._entry_ptr.5 = internal global ptr @lbtf_rx._entry.3, section ".printk_index", align 4
@lbtf_rx._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 533, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\017libertas_tf rx: rx data: skb->len-sizeof(RxPd) = %d-%zd = %zd\0A\00", [63 x i8] zeroinitializer }, align 32
@lbtf_rx._entry_ptr.8 = internal global ptr @lbtf_rx._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"RX Data\00", [24 x i8] zeroinitializer }, align 32
@lbtf_rx._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.1, ptr @.str.2, i32 540, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017libertas_tf leave: %s()\0A\00", [37 x i8] zeroinitializer }, align 32
@lbtf_rx._entry_ptr.12 = internal global ptr @lbtf_rx._entry.10, section ".printk_index", align 4
@__kstrtab_lbtf_rx = external dso_local constant [0 x i8], align 1
@__kstrtabns_lbtf_rx = external dso_local constant [0 x i8], align 1
@__ksymtab_lbtf_rx = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @lbtf_rx to i32), ptr @__kstrtab_lbtf_rx, ptr @__kstrtabns_lbtf_rx }, section "___ksymtab_gpl+lbtf_rx", align 4
@lbtf_add_card._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.13, ptr @.str.2, i32 556, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"lbtf_add_card\00", [18 x i8] zeroinitializer }, align 32
@lbtf_add_card._entry_ptr = internal global ptr @lbtf_add_card._entry, section ".printk_index", align 4
@lbtf_ops = internal constant { %struct.ieee80211_ops, [124 x i8] } { %struct.ieee80211_ops { ptr @lbtf_op_tx, ptr @lbtf_op_start, ptr @lbtf_op_stop, ptr null, ptr null, ptr null, ptr @lbtf_op_add_interface, ptr null, ptr @lbtf_op_remove_interface, ptr @lbtf_op_config, ptr @lbtf_op_bss_info_changed, ptr null, ptr null, ptr @lbtf_op_prepare_multicast, ptr @lbtf_op_configure_filter, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @lbtf_op_get_survey, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [124 x i8] zeroinitializer }, align 32
@lbtf_channels = internal constant { [14 x %struct.ieee80211_channel], [208 x i8] } { [14 x %struct.ieee80211_channel] [%struct.ieee80211_channel { i32 0, i32 2412, i16 0, i16 1, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2417, i16 0, i16 2, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2422, i16 0, i16 3, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2427, i16 0, i16 4, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2432, i16 0, i16 5, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2437, i16 0, i16 6, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2442, i16 0, i16 7, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2447, i16 0, i16 8, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2452, i16 0, i16 9, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2457, i16 0, i16 10, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2462, i16 0, i16 11, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2467, i16 0, i16 12, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2472, i16 0, i16 13, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2484, i16 0, i16 14, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }], [208 x i8] zeroinitializer }, align 32
@lbtf_rates = internal constant { [12 x %struct.ieee80211_rate], [48 x i8] } { [12 x %struct.ieee80211_rate] [%struct.ieee80211_rate { i32 0, i16 10, i16 0, i16 0 }, %struct.ieee80211_rate { i32 1, i16 20, i16 1, i16 0 }, %struct.ieee80211_rate { i32 1, i16 55, i16 2, i16 0 }, %struct.ieee80211_rate { i32 1, i16 110, i16 3, i16 0 }, %struct.ieee80211_rate { i32 0, i16 60, i16 5, i16 0 }, %struct.ieee80211_rate { i32 0, i16 90, i16 6, i16 0 }, %struct.ieee80211_rate { i32 0, i16 120, i16 7, i16 0 }, %struct.ieee80211_rate { i32 0, i16 180, i16 8, i16 0 }, %struct.ieee80211_rate { i32 0, i16 240, i16 9, i16 0 }, %struct.ieee80211_rate { i32 0, i16 360, i16 10, i16 0 }, %struct.ieee80211_rate { i32 0, i16 480, i16 11, i16 0 }, %struct.ieee80211_rate { i32 0, i16 540, i16 12, i16 0 }], [48 x i8] zeroinitializer }, align 32
@lbtf_add_card.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"(work_completion)(&priv->cmd_work)\00", [61 x i8] zeroinitializer }, align 32
@lbtf_add_card.__key.15 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"(work_completion)(&priv->tx_work)\00", [62 x i8] zeroinitializer }, align 32
@lbtf_add_card._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.13, ptr @.str.2, i32 596, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\017libertas_tf usbd: %s:Error programming the firmware\0A\00", [41 x i8] zeroinitializer }, align 32
@lbtf_add_card._entry_ptr.19 = internal global ptr @lbtf_add_card._entry.17, section ".printk_index", align 4
@lbtf_add_card._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.13, ptr @.str.2, i32 618, ptr @.str.22, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"libertastf: Marvell WLAN 802.11 thinfirm adapter\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@lbtf_add_card._entry_ptr.24 = internal global ptr @lbtf_add_card._entry.20, section ".printk_index", align 4
@lbtf_add_card._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.13, ptr @.str.2, i32 627, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017libertas_tf leave: %s(), priv %p\0A\00", [60 x i8] zeroinitializer }, align 32
@lbtf_add_card._entry_ptr.27 = internal global ptr @lbtf_add_card._entry.25, section ".printk_index", align 4
@__kstrtab_lbtf_add_card = external dso_local constant [0 x i8], align 1
@__kstrtabns_lbtf_add_card = external dso_local constant [0 x i8], align 1
@__ksymtab_lbtf_add_card = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @lbtf_add_card to i32), ptr @__kstrtab_lbtf_add_card, ptr @__kstrtabns_lbtf_add_card }, section "___ksymtab_gpl+lbtf_add_card", align 4
@lbtf_remove_card._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.28, ptr @.str.2, i32 637, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"lbtf_remove_card\00", [47 x i8] zeroinitializer }, align 32
@lbtf_remove_card._entry_ptr = internal global ptr @lbtf_remove_card._entry, section ".printk_index", align 4
@lbtf_remove_card._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.28, ptr @.str.2, i32 646, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lbtf_remove_card._entry_ptr.30 = internal global ptr @lbtf_remove_card._entry.29, section ".printk_index", align 4
@__kstrtab_lbtf_remove_card = external dso_local constant [0 x i8], align 1
@__kstrtabns_lbtf_remove_card = external dso_local constant [0 x i8], align 1
@__ksymtab_lbtf_remove_card = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @lbtf_remove_card to i32), ptr @__kstrtab_lbtf_remove_card, ptr @__kstrtabns_lbtf_remove_card }, section "___ksymtab_gpl+lbtf_remove_card", align 4
@lbtf_wq = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@__kstrtab_lbtf_send_tx_feedback = external dso_local constant [0 x i8], align 1
@__kstrtabns_lbtf_send_tx_feedback = external dso_local constant [0 x i8], align 1
@__ksymtab_lbtf_send_tx_feedback = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @lbtf_send_tx_feedback to i32), ptr @__kstrtab_lbtf_send_tx_feedback, ptr @__kstrtabns_lbtf_send_tx_feedback }, section "___ksymtab_gpl+lbtf_send_tx_feedback", align 4
@__kstrtab_lbtf_bcn_sent = external dso_local constant [0 x i8], align 1
@__kstrtabns_lbtf_bcn_sent = external dso_local constant [0 x i8], align 1
@__ksymtab_lbtf_bcn_sent = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @lbtf_bcn_sent to i32), ptr @__kstrtab_lbtf_bcn_sent, ptr @__kstrtabns_lbtf_bcn_sent }, section "___ksymtab_gpl+lbtf_bcn_sent", align 4
@lbtf_exit_module._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.31, ptr @.str.2, i32 717, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"lbtf_exit_module\00", [47 x i8] zeroinitializer }, align 32
@lbtf_exit_module._entry_ptr = internal global ptr @lbtf_exit_module._entry, section ".printk_index", align 4
@lbtf_exit_module._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.31, ptr @.str.2, i32 719, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lbtf_exit_module._entry_ptr.33 = internal global ptr @lbtf_exit_module._entry.32, section ".printk_index", align 4
@__initcall__kmod_libertas_tf__355_722_lbtf_init_module6 = internal global ptr @lbtf_init_module, section ".initcall6.init", align 4
@__exitcall_lbtf_exit_module = internal global ptr @lbtf_exit_module, section ".exitcall.exit", align 4
@__UNIQUE_ID_description356 = internal constant [62 x i8] c"libertas_tf.description=Libertas WLAN Thinfirm Driver Library\00", section ".modinfo", align 1
@__UNIQUE_ID_author357 = internal constant [32 x i8] c"libertas_tf.author=Cozybit Inc.\00", section ".modinfo", align 1
@__UNIQUE_ID_file358 = internal constant [70 x i8] c"libertas_tf.file=drivers/net/wireless/marvell/libertas_tf/libertas_tf\00", section ".modinfo", align 1
@__UNIQUE_ID_license359 = internal constant [24 x i8] c"libertas_tf.license=GPL\00", section ".modinfo", align 1
@.str.34 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"libertas_tf %s: \00", [47 x i8] zeroinitializer }, align 32
@lbtf_deb_hex.__UNIQUE_ID_ddebug348 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, i8 0, i8 24, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"libertas_tf\00", [20 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"lbtf_deb_hex\00", [19 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"drivers/net/wireless/marvell/libertas_tf/deb_defs.h\00", [44 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"hexdump\00", [24 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@lbtf_op_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.40, ptr @.str.2, i32 258, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"lbtf_op_start\00", [18 x i8] zeroinitializer }, align 32
@lbtf_op_start._entry_ptr = internal global ptr @lbtf_op_start._entry, section ".printk_index", align 4
@lbtf_op_start._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.40, ptr @.str.2, i32 266, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lbtf_op_start._entry_ptr.42 = internal global ptr @lbtf_op_start._entry.41, section ".printk_index", align 4
@lbtf_op_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.43, ptr @.str.2, i32 278, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"lbtf_op_stop\00", [19 x i8] zeroinitializer }, align 32
@lbtf_op_stop._entry_ptr = internal global ptr @lbtf_op_stop._entry, section ".printk_index", align 4
@lbtf_op_stop._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.43, ptr @.str.2, i32 296, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lbtf_op_stop._entry_ptr.45 = internal global ptr @lbtf_op_stop._entry.44, section ".printk_index", align 4
@lbtf_op_add_interface._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.46, ptr @.str.2, i32 303, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"lbtf_op_add_interface\00", [42 x i8] zeroinitializer }, align 32
@lbtf_op_add_interface._entry_ptr = internal global ptr @lbtf_op_add_interface._entry, section ".printk_index", align 4
@lbtf_op_add_interface._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.46, ptr @.str.2, i32 321, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lbtf_op_add_interface._entry_ptr.48 = internal global ptr @lbtf_op_add_interface._entry.47, section ".printk_index", align 4
@lbtf_op_remove_interface._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.49, ptr @.str.2, i32 329, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"lbtf_op_remove_interface\00", [39 x i8] zeroinitializer }, align 32
@lbtf_op_remove_interface._entry_ptr = internal global ptr @lbtf_op_remove_interface._entry, section ".printk_index", align 4
@lbtf_op_remove_interface._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.49, ptr @.str.2, i32 337, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lbtf_op_remove_interface._entry_ptr.51 = internal global ptr @lbtf_op_remove_interface._entry.50, section ".printk_index", align 4
@lbtf_op_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.52, ptr @.str.2, i32 344, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"lbtf_op_config\00", [17 x i8] zeroinitializer }, align 32
@lbtf_op_config._entry_ptr = internal global ptr @lbtf_op_config._entry, section ".printk_index", align 4
@lbtf_op_config._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.52, ptr @.str.2, i32 350, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lbtf_op_config._entry_ptr.54 = internal global ptr @lbtf_op_config._entry.53, section ".printk_index", align 4
@lbtf_op_bss_info_changed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.55, ptr @.str.2, i32 424, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"lbtf_op_bss_info_changed\00", [39 x i8] zeroinitializer }, align 32
@lbtf_op_bss_info_changed._entry_ptr = internal global ptr @lbtf_op_bss_info_changed._entry, section ".printk_index", align 4
@lbtf_op_bss_info_changed._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.55, ptr @.str.2, i32 456, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lbtf_op_bss_info_changed._entry_ptr.57 = internal global ptr @lbtf_op_bss_info_changed._entry.56, section ".printk_index", align 4
@lbtf_op_configure_filter._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.58, ptr @.str.2, i32 382, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"lbtf_op_configure_filter\00", [39 x i8] zeroinitializer }, align 32
@lbtf_op_configure_filter._entry_ptr = internal global ptr @lbtf_op_configure_filter._entry, section ".printk_index", align 4
@lbtf_op_configure_filter._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.58, ptr @.str.2, i32 388, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lbtf_op_configure_filter._entry_ptr.60 = internal global ptr @lbtf_op_configure_filter._entry.59, section ".printk_index", align 4
@lbtf_op_configure_filter._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.58, ptr @.str.2, i32 414, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lbtf_op_configure_filter._entry_ptr.62 = internal global ptr @lbtf_op_configure_filter._entry.61, section ".printk_index", align 4
@lbtf_init_adapter._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.63, ptr @.str.2, i32 153, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"lbtf_init_adapter\00", [46 x i8] zeroinitializer }, align 32
@lbtf_init_adapter._entry_ptr = internal global ptr @lbtf_init_adapter._entry, section ".printk_index", align 4
@lbtf_init_adapter.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.64 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&priv->lock\00", [20 x i8] zeroinitializer }, align 32
@lbtf_init_adapter.__key.65 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.66 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"(&priv->command_timer)\00", [41 x i8] zeroinitializer }, align 32
@lbtf_init_adapter.__key.67 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.68 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&priv->driver_lock\00", [45 x i8] zeroinitializer }, align 32
@lbtf_init_adapter._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.63, ptr @.str.2, i32 169, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lbtf_init_adapter._entry_ptr.70 = internal global ptr @lbtf_init_adapter._entry.69, section ".printk_index", align 4
@command_timer_fn._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.71, ptr @.str.2, i32 131, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"command_timer_fn\00", [47 x i8] zeroinitializer }, align 32
@command_timer_fn._entry_ptr = internal global ptr @command_timer_fn._entry, section ".printk_index", align 4
@command_timer_fn._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.71, ptr @.str.2, i32 137, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\017libertastf: command timer expired; no pending command\0A\00", [39 x i8] zeroinitializer }, align 32
@command_timer_fn._entry_ptr.74 = internal global ptr @command_timer_fn._entry.72, section ".printk_index", align 4
@command_timer_fn._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.71, ptr @.str.2, i32 142, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017libertas: command %x timed out\0A\00", [62 x i8] zeroinitializer }, align 32
@command_timer_fn._entry_ptr.77 = internal global ptr @command_timer_fn._entry.75, section ".printk_index", align 4
@command_timer_fn._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.71, ptr @.str.2, i32 148, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@command_timer_fn._entry_ptr.79 = internal global ptr @command_timer_fn._entry.78, section ".printk_index", align 4
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.80 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@lbtf_cmd_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.81, ptr @.str.2, i32 87, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"lbtf_cmd_work\00", [18 x i8] zeroinitializer }, align 32
@lbtf_cmd_work._entry_ptr = internal global ptr @lbtf_cmd_work._entry, section ".printk_index", align 4
@lbtf_cmd_work._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.81, ptr @.str.2, i32 120, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lbtf_cmd_work._entry_ptr.83 = internal global ptr @lbtf_cmd_work._entry.82, section ".printk_index", align 4
@lbtf_tx_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.84, ptr @.str.2, i32 206, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"lbtf_tx_work\00", [19 x i8] zeroinitializer }, align 32
@lbtf_tx_work._entry_ptr = internal global ptr @lbtf_tx_work._entry, section ".printk_index", align 4
@lbtf_tx_work._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.84, ptr @.str.2, i32 215, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lbtf_tx_work._entry_ptr.86 = internal global ptr @lbtf_tx_work._entry.85, section ".printk_index", align 4
@lbtf_tx_work._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.84, ptr @.str.2, i32 225, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lbtf_tx_work._entry_ptr.88 = internal global ptr @lbtf_tx_work._entry.87, section ".printk_index", align 4
@.str.89 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"TX Data\00", [24 x i8] zeroinitializer }, align 32
@lbtf_tx_work._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.84, ptr @.str.2, i32 249, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013libertas_tf: TX error: %d\00", [36 x i8] zeroinitializer }, align 32
@lbtf_tx_work._entry_ptr.92 = internal global ptr @lbtf_tx_work._entry.90, section ".printk_index", align 4
@lbtf_tx_work._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.84, ptr @.str.2, i32 251, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lbtf_tx_work._entry_ptr.94 = internal global ptr @lbtf_tx_work._entry.93, section ".printk_index", align 4
@ieee80211_get_tx_rate.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.95 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/net/mac80211.h\00", [41 x i8] zeroinitializer }, align 32
@lbtf_free_adapter._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.96, ptr @.str.2, i32 175, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"lbtf_free_adapter\00", [46 x i8] zeroinitializer }, align 32
@lbtf_free_adapter._entry_ptr = internal global ptr @lbtf_free_adapter._entry, section ".printk_index", align 4
@lbtf_free_adapter._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.96, ptr @.str.2, i32 178, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lbtf_free_adapter._entry_ptr.98 = internal global ptr @lbtf_free_adapter._entry.97, section ".printk_index", align 4
@lbtf_init_module._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.99, ptr @.str.2, i32 705, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"lbtf_init_module\00", [47 x i8] zeroinitializer }, align 32
@lbtf_init_module._entry_ptr = internal global ptr @lbtf_init_module._entry, section ".printk_index", align 4
@.str.100 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"libertastf\00", [21 x i8] zeroinitializer }, align 32
@lbtf_init_module._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.99, ptr @.str.2, i32 708, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013libertastf: couldn't create workqueue\0A\00", [55 x i8] zeroinitializer }, align 32
@lbtf_init_module._entry_ptr.103 = internal global ptr @lbtf_init_module._entry.101, section ".printk_index", align 4
@lbtf_init_module._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.99, ptr @.str.2, i32 711, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lbtf_init_module._entry_ptr.105 = internal global ptr @lbtf_init_module._entry.104, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 7]
@__sancov_gen_cov_switch_values.106 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 7]
@__sancov_gen_cov_switch_values.107 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 7]
@___asan_gen_.108 = private unnamed_addr constant [11 x i8] c"lbtf_debug\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 20, i32 14 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 495, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 498, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 532, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 534, i32 28 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 540, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 556, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant [9 x i8] c"lbtf_ops\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 475, i32 35 }
@___asan_gen_.153 = private unnamed_addr constant [14 x i8] c"lbtf_channels\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 26, i32 39 }
@___asan_gen_.156 = private unnamed_addr constant [11 x i8] c"lbtf_rates\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 44, i32 36 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 592, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 593, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 596, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 618, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 627, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 637, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 646, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant [8 x i8] c"lbtf_wq\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 24, i32 26 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 717, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 719, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 96, i32 42 }
@___asan_gen_.232 = private unnamed_addr constant [55 x i8] c"../drivers/net/wireless/marvell/libertas_tf/deb_defs.h\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 97, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 258, i32 2 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 266, i32 2 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 278, i32 2 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 296, i32 2 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 303, i32 2 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 321, i32 2 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 329, i32 2 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 337, i32 2 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 344, i32 2 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 350, i32 2 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 424, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 456, i32 2 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 382, i32 2 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 388, i32 3 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 414, i32 2 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 153, i32 2 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 155, i32 2 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 158, i32 2 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 163, i32 2 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 169, i32 2 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 131, i32 2 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 136, i32 3 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 141, i32 2 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 148, i32 2 }
@___asan_gen_.348 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.352 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 1984, i32 2 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 87, i32 2 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 120, i32 2 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 206, i32 2 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 215, i32 3 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 225, i32 3 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 240, i32 28 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 249, i32 3 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 251, i32 2 }
@___asan_gen_.388 = private unnamed_addr constant [26 x i8] c"../include/net/mac80211.h\00", align 1
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 2737, i32 6 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 175, i32 2 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 178, i32 2 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 705, i32 2 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 706, i32 28 }
@___asan_gen_.411 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 708, i32 3 }
@___asan_gen_.414 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.415 = private constant [51 x i8] c"../drivers/net/wireless/marvell/libertas_tf/main.c\00", align 1
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 711, i32 2 }
@llvm.compiler.used = appending global [163 x ptr] [ptr @__UNIQUE_ID_author357, ptr @__UNIQUE_ID_description356, ptr @__UNIQUE_ID_file358, ptr @__UNIQUE_ID_libertas_tf_debugtype349, ptr @__UNIQUE_ID_license359, ptr @__exitcall_lbtf_exit_module, ptr @__initcall__kmod_libertas_tf__355_722_lbtf_init_module6, ptr @__ksymtab_lbtf_add_card, ptr @__ksymtab_lbtf_bcn_sent, ptr @__ksymtab_lbtf_debug, ptr @__ksymtab_lbtf_remove_card, ptr @__ksymtab_lbtf_rx, ptr @__ksymtab_lbtf_send_tx_feedback, ptr @__param_libertas_tf_debug, ptr @command_timer_fn._entry, ptr @command_timer_fn._entry.72, ptr @command_timer_fn._entry.75, ptr @command_timer_fn._entry.78, ptr @command_timer_fn._entry_ptr, ptr @command_timer_fn._entry_ptr.74, ptr @command_timer_fn._entry_ptr.77, ptr @command_timer_fn._entry_ptr.79, ptr @lbtf_add_card._entry, ptr @lbtf_add_card._entry.17, ptr @lbtf_add_card._entry.20, ptr @lbtf_add_card._entry.25, ptr @lbtf_add_card._entry_ptr, ptr @lbtf_add_card._entry_ptr.19, ptr @lbtf_add_card._entry_ptr.24, ptr @lbtf_add_card._entry_ptr.27, ptr @lbtf_cmd_work._entry, ptr @lbtf_cmd_work._entry.82, ptr @lbtf_cmd_work._entry_ptr, ptr @lbtf_cmd_work._entry_ptr.83, ptr @lbtf_exit_module, ptr @lbtf_exit_module._entry, ptr @lbtf_exit_module._entry.32, ptr @lbtf_exit_module._entry_ptr, ptr @lbtf_exit_module._entry_ptr.33, ptr @lbtf_free_adapter._entry, ptr @lbtf_free_adapter._entry.97, ptr @lbtf_free_adapter._entry_ptr, ptr @lbtf_free_adapter._entry_ptr.98, ptr @lbtf_init_adapter._entry, ptr @lbtf_init_adapter._entry.69, ptr @lbtf_init_adapter._entry_ptr, ptr @lbtf_init_adapter._entry_ptr.70, ptr @lbtf_init_module._entry, ptr @lbtf_init_module._entry.101, ptr @lbtf_init_module._entry.104, ptr @lbtf_init_module._entry_ptr, ptr @lbtf_init_module._entry_ptr.103, ptr @lbtf_init_module._entry_ptr.105, ptr @lbtf_op_add_interface._entry, ptr @lbtf_op_add_interface._entry.47, ptr @lbtf_op_add_interface._entry_ptr, ptr @lbtf_op_add_interface._entry_ptr.48, ptr @lbtf_op_bss_info_changed._entry, ptr @lbtf_op_bss_info_changed._entry.56, ptr @lbtf_op_bss_info_changed._entry_ptr, ptr @lbtf_op_bss_info_changed._entry_ptr.57, ptr @lbtf_op_config._entry, ptr @lbtf_op_config._entry.53, ptr @lbtf_op_config._entry_ptr, ptr @lbtf_op_config._entry_ptr.54, ptr @lbtf_op_configure_filter._entry, ptr @lbtf_op_configure_filter._entry.59, ptr @lbtf_op_configure_filter._entry.61, ptr @lbtf_op_configure_filter._entry_ptr, ptr @lbtf_op_configure_filter._entry_ptr.60, ptr @lbtf_op_configure_filter._entry_ptr.62, ptr @lbtf_op_remove_interface._entry, ptr @lbtf_op_remove_interface._entry.50, ptr @lbtf_op_remove_interface._entry_ptr, ptr @lbtf_op_remove_interface._entry_ptr.51, ptr @lbtf_op_start._entry, ptr @lbtf_op_start._entry.41, ptr @lbtf_op_start._entry_ptr, ptr @lbtf_op_start._entry_ptr.42, ptr @lbtf_op_stop._entry, ptr @lbtf_op_stop._entry.44, ptr @lbtf_op_stop._entry_ptr, ptr @lbtf_op_stop._entry_ptr.45, ptr @lbtf_remove_card._entry, ptr @lbtf_remove_card._entry.29, ptr @lbtf_remove_card._entry_ptr, ptr @lbtf_remove_card._entry_ptr.30, ptr @lbtf_rx._entry, ptr @lbtf_rx._entry.10, ptr @lbtf_rx._entry.3, ptr @lbtf_rx._entry.6, ptr @lbtf_rx._entry_ptr, ptr @lbtf_rx._entry_ptr.12, ptr @lbtf_rx._entry_ptr.5, ptr @lbtf_rx._entry_ptr.8, ptr @lbtf_tx_work._entry, ptr @lbtf_tx_work._entry.85, ptr @lbtf_tx_work._entry.87, ptr @lbtf_tx_work._entry.90, ptr @lbtf_tx_work._entry.93, ptr @lbtf_tx_work._entry_ptr, ptr @lbtf_tx_work._entry_ptr.86, ptr @lbtf_tx_work._entry_ptr.88, ptr @lbtf_tx_work._entry_ptr.92, ptr @lbtf_tx_work._entry_ptr.94, ptr @lbtf_debug, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @lbtf_ops, ptr @lbtf_channels, ptr @lbtf_rates, ptr @lbtf_add_card.__key, ptr @.str.14, ptr @lbtf_add_card.__key.15, ptr @.str.16, ptr @.str.18, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.26, ptr @.str.28, ptr @lbtf_wq, ptr @.str.31, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.43, ptr @.str.46, ptr @.str.49, ptr @.str.52, ptr @.str.55, ptr @.str.58, ptr @.str.63, ptr @lbtf_init_adapter.__key, ptr @.str.64, ptr @lbtf_init_adapter.__key.65, ptr @.str.66, ptr @lbtf_init_adapter.__key.67, ptr @.str.68, ptr @.str.71, ptr @.str.73, ptr @.str.76, ptr @skb_queue_head_init.__key, ptr @.str.80, ptr @.str.81, ptr @.str.84, ptr @.str.89, ptr @.str.91, ptr @.str.95, ptr @.str.96, ptr @.str.99, ptr @.str.100, ptr @.str.102], section "llvm.metadata"
@0 = internal global [103 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbtf_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbtf_rx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbtf_rx._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbtf_rx._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbtf_rx._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbtf_add_card._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbtf_ops to i32), i32 452, i32 576, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbtf_channels to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbtf_rates to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbtf_add_card.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbtf_add_card.__key.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbtf_add_card._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbtf_add_card._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbtf_add_card._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbtf_remove_card._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbtf_remove_card._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbtf_wq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbtf_exit_module._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbtf_exit_module._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbtf_op_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbtf_op_start._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbtf_op_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbtf_op_stop._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbtf_op_add_interface._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbtf_op_add_interface._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbtf_op_remove_interface._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbtf_op_remove_interface._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbtf_op_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbtf_op_config._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbtf_op_bss_info_changed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbtf_op_bss_info_changed._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbtf_op_configure_filter._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbtf_op_configure_filter._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbtf_op_configure_filter._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbtf_init_adapter._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbtf_init_adapter.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbtf_init_adapter.__key.65 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbtf_init_adapter.__key.67 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbtf_init_adapter._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @command_timer_fn._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @command_timer_fn._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @command_timer_fn._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @command_timer_fn._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbtf_cmd_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbtf_cmd_work._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbtf_tx_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbtf_tx_work._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbtf_tx_work._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbtf_tx_work._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbtf_tx_work._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbtf_free_adapter._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbtf_free_adapter._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbtf_init_module._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbtf_init_module._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbtf_init_module._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lbtf_rx(ptr nocapture noundef %priv, ptr noundef %skb) #0 align 64 {
entry:
  %newprompt.i = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @lbtf_debug, align 4
  %and = and i32 %0, 32769
  call void @__sanitizer_cov_trace_const_cmp4(i32 32769, i32 %and)
  %cmp = icmp eq i32 %and, 32769
  br i1 %cmp, label %do.end, label %entry.do.end3_crit_edge

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #12
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %radioon = getelementptr inbounds %struct.lbtf_private, ptr %priv, i32 0, i32 30
  %1 = ptrtoint ptr %radioon to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %radioon, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %2)
  %cmp4.not = icmp eq i8 %2, 1
  br i1 %cmp4.not, label %if.end20, label %do.body7

do.body7:                                         ; preds = %do.end3
  %3 = load i32, ptr @lbtf_debug, align 4
  %and8 = and i32 %3, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %cmp9.not = icmp eq i32 %and8, 0
  br i1 %cmp9.not, label %do.body7.do.body79_crit_edge, label %do.end14

do.body7.do.body79_crit_edge:                     ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body79

do.end14:                                         ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #11
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #12
  br label %do.body79

if.end20:                                         ; preds = %do.end3
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %5, align 1
  %8 = lshr i16 %7, 3
  %9 = and i16 %8, 32
  %10 = xor i16 %9, 32
  %11 = zext i16 %10 to i32
  %cur_freq = getelementptr inbounds %struct.lbtf_private, ptr %priv, i32 0, i32 24
  %12 = ptrtoint ptr %cur_freq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cur_freq, align 4
  %conv25 = trunc i32 %13 to i16
  %bf.shl = shl i16 %conv25, 3
  %snr = getelementptr inbounds %struct.rxpd, ptr %5, i32 0, i32 1
  %14 = ptrtoint ptr %snr to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %snr, align 1
  %nf = getelementptr inbounds %struct.rxpd, ptr %5, i32 0, i32 4
  %16 = ptrtoint ptr %nf to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %nf, align 1
  %sub = sub i8 %15, %17
  %noise = getelementptr inbounds %struct.lbtf_private, ptr %priv, i32 0, i32 38
  %18 = ptrtoint ptr %noise to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %noise, align 4
  %rx_rate = getelementptr inbounds %struct.rxpd, ptr %5, i32 0, i32 5
  %19 = ptrtoint ptr %rx_rate to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %rx_rate, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %20)
  %cmp31 = icmp ugt i8 %20, 4
  br i1 %cmp31, label %if.then33, label %if.end20.if.end35_crit_edge

if.end20.if.end35_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

if.then33:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  %dec = add i8 %20, -1
  %21 = ptrtoint ptr %rx_rate to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %dec, ptr %rx_rate, align 1
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %if.end20.if.end35_crit_edge
  %22 = ptrtoint ptr %rx_rate to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %rx_rate, align 1
  %call37 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 20) #9
  %24 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %25, align 2
  %28 = and i16 %27, -29696
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30720, i16 %28)
  %cmp.i = icmp eq i16 %28, -30720
  %29 = and i16 %27, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %29)
  %cmp.i132 = icmp eq i16 %29, 3
  %xor131 = xor i1 %cmp.i, %cmp.i132
  %xor = zext i1 %xor131 to i32
  br i1 %cmp.i, label %land.rhs, label %if.end35.land.end_crit_edge

if.end35.land.end_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.end

land.rhs:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  %retval.0.v.i = select i1 %cmp.i132, i32 30, i32 24
  %retval.0.i = getelementptr i8, ptr %25, i32 %retval.0.v.i
  %30 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %retval.0.i, align 1
  %32 = lshr i8 %31, 7
  %and49.lobit = zext i8 %32 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end35.land.end_crit_edge
  %33 = phi i32 [ 0, %if.end35.land.end_crit_edge ], [ %and49.lobit, %land.rhs ]
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %xor)
  %tobool52.not = icmp eq i32 %33, %xor
  br i1 %tobool52.not, label %land.end.if.end56_crit_edge, label %if.then53

land.end.if.end56_crit_edge:                      ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56

if.then53:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr = getelementptr i8, ptr %25, i32 2
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %34 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %len, align 4
  %36 = call ptr @memmove(ptr %add.ptr, ptr %25, i32 %35)
  %37 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %data, align 4
  %add.ptr.i = getelementptr i8, ptr %38, i32 2
  store ptr %add.ptr.i, ptr %data, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %39 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %40, i32 2
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  br label %if.end56

if.end56:                                         ; preds = %if.then53, %land.end.if.end56_crit_edge
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %41 = call ptr @memset(ptr %cb.i, i32 0, i32 24)
  %stats.sroa.5.0.call57.sroa_idx = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %42 = ptrtoint ptr %stats.sroa.5.0.call57.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %11, ptr %stats.sroa.5.0.call57.sroa_idx, align 8
  %stats.sroa.7.0.call57.sroa_idx = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %43 = ptrtoint ptr %stats.sroa.7.0.call57.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %bf.shl, ptr %stats.sroa.7.0.call57.sroa_idx, align 4
  %stats.sroa.9.0.call57.sroa_idx = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 30
  %44 = call ptr @memset(ptr %stats.sroa.9.0.call57.sroa_idx, i32 0, i32 3)
  %stats.sroa.9105.0.call57.sroa_idx = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 33
  %45 = ptrtoint ptr %stats.sroa.9105.0.call57.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %23, ptr %stats.sroa.9105.0.call57.sroa_idx, align 1
  %stats.sroa.10.0.call57.sroa_idx = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 34
  %stats.sroa.11107.0.call57.sroa_idx = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 38
  %46 = ptrtoint ptr %stats.sroa.10.0.call57.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %46, i32 4)
  store i32 0, ptr %stats.sroa.10.0.call57.sroa_idx, align 2
  %47 = ptrtoint ptr %stats.sroa.11107.0.call57.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %sub, ptr %stats.sroa.11107.0.call57.sroa_idx, align 2
  %stats.sroa.12.0.call57.sroa_idx = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 39
  %48 = call ptr @memset(ptr %stats.sroa.12.0.call57.sroa_idx, i32 0, i32 9)
  %49 = load i32, ptr @lbtf_debug, align 4
  %and59 = and i32 %49, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %cmp60.not = icmp eq i32 %and59, 0
  br i1 %cmp60.not, label %if.end56.do.end73_crit_edge, label %do.end65

if.end56.do.end73_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end73

do.end65:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  %len67 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %50 = ptrtoint ptr %len67 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %len67, align 4
  %sub69 = add i32 %51, -20
  %call70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %51, i32 noundef 20, i32 noundef %sub69) #12
  br label %do.end73

do.end73:                                         ; preds = %do.end65, %if.end56.do.end73_crit_edge
  %52 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %data, align 4
  %len75 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %54 = ptrtoint ptr %len75 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %len75, align 4
  %56 = tail call i32 @llvm.umin.i32(i32 %55, i32 100)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %newprompt.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool.not.i = icmp eq i32 %56, 0
  br i1 %tobool.not.i, label %do.end73.lbtf_deb_hex.exit_crit_edge, label %land.lhs.true.i

do.end73.lbtf_deb_hex.exit_crit_edge:             ; preds = %do.end73
  call void @__sanitizer_cov_trace_pc() #11
  br label %lbtf_deb_hex.exit

land.lhs.true.i:                                  ; preds = %do.end73
  %57 = load i32, ptr @lbtf_debug, align 4
  %58 = and i32 %57, 2129920
  call void @__sanitizer_cov_trace_const_cmp4(i32 2129920, i32 %58)
  %.not = icmp eq i32 %58, 2129920
  br i1 %.not, label %if.then.i, label %land.lhs.true.i.lbtf_deb_hex.exit_crit_edge

land.lhs.true.i.lbtf_deb_hex.exit_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lbtf_deb_hex.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %newprompt.i, i32 noundef 32, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.9) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lbtf_deb_hex.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lbtf_rx, %if.then9.i)) #9
          to label %lbtf_deb_hex.exit [label %if.then9.i], !srcloc !248

if.then9.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @print_hex_dump(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.9, i32 noundef 0, i32 noundef 16, i32 noundef 1, ptr noundef %53, i32 noundef %56, i1 noundef zeroext true) #9
  br label %lbtf_deb_hex.exit

lbtf_deb_hex.exit:                                ; preds = %if.then9.i, %if.then.i, %land.lhs.true.i.lbtf_deb_hex.exit_crit_edge, %do.end73.lbtf_deb_hex.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %newprompt.i) #9
  %hw = getelementptr inbounds %struct.lbtf_private, ptr %priv, i32 0, i32 1
  %59 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %hw, align 4
  tail call void @ieee80211_rx_irqsafe(ptr noundef %60, ptr noundef %skb) #9
  br label %do.body79

do.body79:                                        ; preds = %lbtf_deb_hex.exit, %do.end14, %do.body7.do.body79_crit_edge
  %61 = load i32, ptr @lbtf_debug, align 4
  %and80 = and i32 %61, 32770
  call void @__sanitizer_cov_trace_const_cmp4(i32 32770, i32 %and80)
  %cmp81 = icmp eq i32 %and80, 32770
  br i1 %cmp81, label %do.end86, label %do.body79.do.end91_crit_edge

do.body79.do.end91_crit_edge:                     ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end91

do.end86:                                         ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #11
  %call88 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1) #12
  br label %do.end91

do.end91:                                         ; preds = %do.end86, %do.body79.do.end91_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_rx_irqsafe(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @lbtf_add_card(ptr noundef %card, ptr noundef %dmdev, ptr noundef %ops) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @lbtf_debug, align 4
  %and = and i32 %0, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %and)
  %cmp = icmp eq i32 %and, 5
  br i1 %cmp, label %do.end, label %entry.do.end3_crit_edge

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.13) #12
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %call.i = tail call ptr @ieee80211_alloc_hw_nm(i32 noundef 3968, ptr noundef nonnull @lbtf_ops, ptr noundef null) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %do.end3.do.body86_crit_edge, label %if.end6

do.end3.do.body86_crit_edge:                      ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body86

if.end6:                                          ; preds = %do.end3
  %priv7 = getelementptr inbounds %struct.ieee80211_hw, ptr %call.i, i32 0, i32 3
  %1 = ptrtoint ptr %priv7 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv7, align 8
  %3 = load i32, ptr @lbtf_debug, align 4
  %and.i = and i32 %3, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 5
  br i1 %cmp.i, label %do.end.i, label %if.end6.do.end2.i_crit_edge

if.end6.do.end2.i_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end2.i

do.end.i:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %call.i149 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.63) #12
  br label %do.end2.i

do.end2.i:                                        ; preds = %do.end.i, %if.end6.do.end2.i_crit_edge
  %current_addr.i = getelementptr inbounds %struct.lbtf_private, ptr %2, i32 0, i32 21
  %4 = call ptr @memset(ptr %current_addr.i, i32 255, i32 6)
  %lock.i = getelementptr inbounds %struct.lbtf_private, ptr %2, i32 0, i32 9
  tail call void @__mutex_init(ptr noundef %lock.i, ptr noundef nonnull @.str.64, ptr noundef nonnull @lbtf_init_adapter.__key) #9
  %vif.i = getelementptr inbounds %struct.lbtf_private, ptr %2, i32 0, i32 4
  %5 = ptrtoint ptr %vif.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %vif.i, align 4
  %command_timer.i = getelementptr inbounds %struct.lbtf_private, ptr %2, i32 0, i32 16
  tail call void @init_timer_key(ptr noundef %command_timer.i, ptr noundef nonnull @command_timer_fn, i32 noundef 0, ptr noundef nonnull @.str.66, ptr noundef nonnull @lbtf_init_adapter.__key.65) #9
  %cmdfreeq.i = getelementptr inbounds %struct.lbtf_private, ptr %2, i32 0, i32 13
  %6 = ptrtoint ptr %cmdfreeq.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %cmdfreeq.i, ptr %cmdfreeq.i, align 4
  %prev.i.i = getelementptr inbounds %struct.lbtf_private, ptr %2, i32 0, i32 13, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %cmdfreeq.i, ptr %prev.i.i, align 4
  %cmdpendingq.i = getelementptr inbounds %struct.lbtf_private, ptr %2, i32 0, i32 14
  %8 = ptrtoint ptr %cmdpendingq.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %cmdpendingq.i, ptr %cmdpendingq.i, align 4
  %prev.i30.i = getelementptr inbounds %struct.lbtf_private, ptr %2, i32 0, i32 14, i32 1
  %9 = ptrtoint ptr %prev.i30.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %cmdpendingq.i, ptr %prev.i30.i, align 4
  %driver_lock.i = getelementptr inbounds %struct.lbtf_private, ptr %2, i32 0, i32 15
  tail call void @__raw_spin_lock_init(ptr noundef %driver_lock.i, ptr noundef nonnull @.str.68, ptr noundef nonnull @lbtf_init_adapter.__key.67, i16 noundef signext 3) #9
  %call10.i = tail call i32 @lbtf_allocate_cmd_buffer(ptr noundef %2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool.not.i, label %do.body13.i, label %do.end2.i.err_init_adapter_crit_edge

do.end2.i.err_init_adapter_crit_edge:             ; preds = %do.end2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_init_adapter

do.body13.i:                                      ; preds = %do.end2.i
  %10 = load i32, ptr @lbtf_debug, align 4
  %and14.i = and i32 %10, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %and14.i)
  %cmp15.i = icmp eq i32 %and14.i, 6
  br i1 %cmp15.i, label %do.end18.i, label %do.body13.i.if.end11_crit_edge

do.body13.i.if.end11_crit_edge:                   ; preds = %do.body13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

do.end18.i:                                       ; preds = %do.body13.i
  call void @__sanitizer_cov_trace_pc() #11
  %call20.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.63) #12
  br label %if.end11

if.end11:                                         ; preds = %do.end18.i, %do.body13.i.if.end11_crit_edge
  %hw12 = getelementptr inbounds %struct.lbtf_private, ptr %2, i32 0, i32 1
  %11 = ptrtoint ptr %hw12 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i, ptr %hw12, align 4
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %card, ptr %2, align 4
  %ops14 = getelementptr inbounds %struct.lbtf_private, ptr %2, i32 0, i32 2
  %13 = ptrtoint ptr %ops14 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %ops, ptr %ops14, align 4
  %tx_skb = getelementptr inbounds %struct.lbtf_private, ptr %2, i32 0, i32 26
  %14 = ptrtoint ptr %tx_skb to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %tx_skb, align 4
  %radioon = getelementptr inbounds %struct.lbtf_private, ptr %2, i32 0, i32 30
  %15 = ptrtoint ptr %radioon to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %radioon, align 1
  %queues = getelementptr inbounds %struct.ieee80211_hw, ptr %call.i, i32 0, i32 11
  %16 = ptrtoint ptr %queues to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 1, ptr %queues, align 4
  %flags.i = getelementptr inbounds %struct.ieee80211_hw, ptr %call.i, i32 0, i32 4
  %17 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags.i, align 4
  %or.i.i151 = or i32 %18, 20
  store i32 %or.i.i151, ptr %flags.i, align 4
  %extra_tx_headroom = getelementptr inbounds %struct.ieee80211_hw, ptr %call.i, i32 0, i32 5
  %19 = ptrtoint ptr %extra_tx_headroom to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 24, ptr %extra_tx_headroom, align 4
  %channels = getelementptr inbounds %struct.lbtf_private, ptr %2, i32 0, i32 32
  %20 = call ptr @memcpy(ptr %channels, ptr @lbtf_channels, i32 784)
  %rates = getelementptr inbounds %struct.lbtf_private, ptr %2, i32 0, i32 33
  %21 = call ptr @memcpy(ptr %rates, ptr @lbtf_rates, i32 144)
  %band = getelementptr inbounds %struct.lbtf_private, ptr %2, i32 0, i32 34
  %n_bitrates = getelementptr inbounds %struct.lbtf_private, ptr %2, i32 0, i32 34, i32 4
  %22 = ptrtoint ptr %n_bitrates to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 12, ptr %n_bitrates, align 4
  %bitrates = getelementptr inbounds %struct.lbtf_private, ptr %2, i32 0, i32 34, i32 1
  %23 = ptrtoint ptr %bitrates to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %rates, ptr %bitrates, align 4
  %n_channels = getelementptr inbounds %struct.lbtf_private, ptr %2, i32 0, i32 34, i32 3
  %24 = ptrtoint ptr %n_channels to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 14, ptr %n_channels, align 4
  %25 = ptrtoint ptr %band to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %channels, ptr %band, align 4
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %call.i, i32 0, i32 1
  %26 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %wiphy, align 8
  %bands = getelementptr inbounds %struct.wiphy, ptr %27, i32 0, i32 53
  %28 = ptrtoint ptr %bands to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %band, ptr %bands, align 16
  %29 = load ptr, ptr %wiphy, align 8
  %interface_modes = getelementptr inbounds %struct.wiphy, ptr %29, i32 0, i32 9
  %30 = ptrtoint ptr %interface_modes to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 6, ptr %interface_modes, align 4
  %bc_ps_buf = getelementptr inbounds %struct.lbtf_private, ptr %2, i32 0, i32 37
  %lock.i152 = getelementptr inbounds %struct.lbtf_private, ptr %2, i32 0, i32 37, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i152, ptr noundef nonnull @.str.80, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #9
  %31 = ptrtoint ptr %bc_ps_buf to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %bc_ps_buf, ptr %bc_ps_buf, align 4
  %prev.i.i153 = getelementptr inbounds %struct.lbtf_private, ptr %2, i32 0, i32 37, i32 0, i32 0, i32 1
  %32 = ptrtoint ptr %prev.i.i153 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %bc_ps_buf, ptr %prev.i.i153, align 4
  %qlen.i.i = getelementptr inbounds %struct.lbtf_private, ptr %2, i32 0, i32 37, i32 1
  %33 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %qlen.i.i, align 4
  %34 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %wiphy, align 8
  %arrayidx.i = getelementptr %struct.wiphy, ptr %35, i32 0, i32 14, i32 1
  %36 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx.i, align 1
  %38 = or i8 %37, 32
  store i8 %38, ptr %arrayidx.i, align 1
  %39 = load ptr, ptr %wiphy, align 8
  %parent.i.i = getelementptr inbounds %struct.wiphy, ptr %39, i32 0, i32 56, i32 1
  %40 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %dmdev, ptr %parent.i.i, align 8
  %cmd_work = getelementptr inbounds %struct.lbtf_private, ptr %2, i32 0, i32 5
  tail call void @__init_work(ptr noundef %cmd_work, i32 noundef 0) #9
  %41 = ptrtoint ptr %cmd_work to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 -64, ptr %cmd_work, align 4
  %lockdep_map = getelementptr inbounds %struct.lbtf_private, ptr %2, i32 0, i32 5, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.14, ptr noundef nonnull @lbtf_add_card.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry31 = getelementptr inbounds %struct.lbtf_private, ptr %2, i32 0, i32 5, i32 1
  %42 = ptrtoint ptr %entry31 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %entry31, ptr %entry31, align 4
  %prev.i = getelementptr inbounds %struct.lbtf_private, ptr %2, i32 0, i32 5, i32 1, i32 1
  %43 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %entry31, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.lbtf_private, ptr %2, i32 0, i32 5, i32 2
  %44 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @lbtf_cmd_work, ptr %func, align 4
  %tx_work = getelementptr inbounds %struct.lbtf_private, ptr %2, i32 0, i32 6
  tail call void @__init_work(ptr noundef %tx_work, i32 noundef 0) #9
  %45 = ptrtoint ptr %tx_work to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 -64, ptr %tx_work, align 4
  %lockdep_map41 = getelementptr inbounds %struct.lbtf_private, ptr %2, i32 0, i32 6, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map41, ptr noundef nonnull @.str.16, ptr noundef nonnull @lbtf_add_card.__key.15, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry43 = getelementptr inbounds %struct.lbtf_private, ptr %2, i32 0, i32 6, i32 1
  %46 = ptrtoint ptr %entry43 to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %entry43, ptr %entry43, align 4
  %prev.i154 = getelementptr inbounds %struct.lbtf_private, ptr %2, i32 0, i32 6, i32 1, i32 1
  %47 = ptrtoint ptr %prev.i154 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %entry43, ptr %prev.i154, align 4
  %func45 = getelementptr inbounds %struct.lbtf_private, ptr %2, i32 0, i32 6, i32 2
  %48 = ptrtoint ptr %func45 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @lbtf_tx_work, ptr %func45, align 4
  %49 = ptrtoint ptr %ops14 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ops14, align 4
  %hw_prog_firmware = getelementptr inbounds %struct.lbtf_ops, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %hw_prog_firmware to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %hw_prog_firmware, align 4
  %call49 = tail call i32 %52(ptr noundef %2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end67, label %do.body52

do.body52:                                        ; preds = %if.end11
  %53 = load i32, ptr @lbtf_debug, align 4
  %and53 = and i32 %53, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %cmp54.not = icmp eq i32 %and53, 0
  br i1 %cmp54.not, label %do.body52.do.end64_crit_edge, label %do.end58

do.body52.do.end64_crit_edge:                     ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end64

do.end58:                                         ; preds = %do.body52
  %init_name.i = getelementptr inbounds %struct.device, ptr %dmdev, i32 0, i32 3
  %54 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i155 = icmp eq ptr %55, null
  br i1 %tobool.not.i155, label %if.end.i, label %do.end58.dev_name.exit_crit_edge

do.end58.dev_name.exit_crit_edge:                 ; preds = %do.end58
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end58
  call void @__sanitizer_cov_trace_pc() #11
  %56 = ptrtoint ptr %dmdev to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dmdev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end58.dev_name.exit_crit_edge
  %retval.0.i156 = phi ptr [ %57, %if.end.i ], [ %55, %do.end58.dev_name.exit_crit_edge ]
  %call61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %retval.0.i156) #12
  br label %do.end64

do.end64:                                         ; preds = %dev_name.exit, %do.body52.do.end64_crit_edge
  %58 = ptrtoint ptr %ops14 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ops14, align 4
  %hw_reset_device = getelementptr inbounds %struct.lbtf_ops, ptr %59, i32 0, i32 2
  %60 = ptrtoint ptr %hw_reset_device to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %hw_reset_device, align 4
  %call66 = tail call i32 %61(ptr noundef %2) #9
  br label %err_init_adapter

if.end67:                                         ; preds = %if.end11
  %62 = call ptr @memset(ptr %current_addr.i, i32 255, i32 6)
  %call69 = tail call i32 @lbtf_update_hw_spec(ptr noundef %2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.end72, label %if.end67.err_init_adapter_crit_edge

if.end67.err_init_adapter_crit_edge:              ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_init_adapter

if.end72:                                         ; preds = %if.end67
  %fwrelease = getelementptr inbounds %struct.lbtf_private, ptr %2, i32 0, i32 7
  %63 = ptrtoint ptr %fwrelease to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %fwrelease, align 4
  %65 = add i32 %64, -92602368
  call void @__sanitizer_cov_trace_const_cmp4(i32 -64768, i32 %65)
  %66 = icmp ult i32 %65, -64768
  br i1 %66, label %if.end72.err_init_adapter_crit_edge, label %if.end77

if.end72.err_init_adapter_crit_edge:              ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_init_adapter

if.end77:                                         ; preds = %if.end72
  %call78 = tail call i32 @lbtf_set_radio_control(ptr noundef %2) #9
  %call79 = tail call i32 @ieee80211_register_hw(ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %do.end85, label %if.end77.err_init_adapter_crit_edge

if.end77.err_init_adapter_crit_edge:              ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_init_adapter

do.end85:                                         ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dmdev, ptr noundef nonnull @.str.21) #12
  br label %do.body86

err_init_adapter:                                 ; preds = %if.end77.err_init_adapter_crit_edge, %if.end72.err_init_adapter_crit_edge, %if.end67.err_init_adapter_crit_edge, %do.end64, %do.end2.i.err_init_adapter_crit_edge
  %67 = load i32, ptr @lbtf_debug, align 4
  %and.i157 = and i32 %67, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %and.i157)
  %cmp.i158 = icmp eq i32 %and.i157, 5
  br i1 %cmp.i158, label %do.end.i160, label %err_init_adapter.do.end2.i162_crit_edge

err_init_adapter.do.end2.i162_crit_edge:          ; preds = %err_init_adapter
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end2.i162

do.end.i160:                                      ; preds = %err_init_adapter
  call void @__sanitizer_cov_trace_pc() #11
  %call.i159 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.96) #12
  br label %do.end2.i162

do.end2.i162:                                     ; preds = %do.end.i160, %err_init_adapter.do.end2.i162_crit_edge
  %call3.i = tail call i32 @lbtf_free_cmd_buffer(ptr noundef %2) #9
  %call4.i = tail call i32 @del_timer(ptr noundef %command_timer.i) #9
  %68 = load i32, ptr @lbtf_debug, align 4
  %and6.i = and i32 %68, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %and6.i)
  %cmp7.i = icmp eq i32 %and6.i, 6
  br i1 %cmp7.i, label %do.end10.i, label %do.end2.i162.lbtf_free_adapter.exit_crit_edge

do.end2.i162.lbtf_free_adapter.exit_crit_edge:    ; preds = %do.end2.i162
  call void @__sanitizer_cov_trace_pc() #11
  br label %lbtf_free_adapter.exit

do.end10.i:                                       ; preds = %do.end2.i162
  call void @__sanitizer_cov_trace_pc() #11
  %call12.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.96) #12
  br label %lbtf_free_adapter.exit

lbtf_free_adapter.exit:                           ; preds = %do.end10.i, %do.end2.i162.lbtf_free_adapter.exit_crit_edge
  tail call void @ieee80211_free_hw(ptr noundef nonnull %call.i) #9
  br label %do.body86

do.body86:                                        ; preds = %lbtf_free_adapter.exit, %do.end85, %do.end3.do.body86_crit_edge
  %priv.0 = phi ptr [ null, %lbtf_free_adapter.exit ], [ %2, %do.end85 ], [ null, %do.end3.do.body86_crit_edge ]
  %69 = load i32, ptr @lbtf_debug, align 4
  %and87 = and i32 %69, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %and87)
  %cmp88 = icmp eq i32 %and87, 6
  br i1 %cmp88, label %do.end92, label %do.body86.do.end97_crit_edge

do.body86.do.end97_crit_edge:                     ; preds = %do.body86
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end97

do.end92:                                         ; preds = %do.body86
  call void @__sanitizer_cov_trace_pc() #11
  %call94 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.13, ptr noundef %priv.0) #12
  br label %do.end97

do.end97:                                         ; preds = %do.end92, %do.body86.do.end97_crit_edge
  ret ptr %priv.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lbtf_cmd_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -2328
  %0 = load i32, ptr @lbtf_debug, align 4
  %and = and i32 %0, 16385
  call void @__sanitizer_cov_trace_const_cmp4(i32 16385, i32 %and)
  %cmp = icmp eq i32 %and, 16385
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.81) #12
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %driver_lock = getelementptr i8, ptr %work, i32 216
  tail call void @_raw_spin_lock_irq(ptr noundef %driver_lock) #9
  %cmd_response_rxed = getelementptr i8, ptr %work, i32 316
  %1 = ptrtoint ptr %cmd_response_rxed to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %cmd_response_rxed, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %do.end4.if.end10_crit_edge, label %if.then5

do.end4.if.end10_crit_edge:                       ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then5:                                         ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %cmd_response_rxed to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %cmd_response_rxed, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %driver_lock) #9
  %call8 = tail call i32 @lbtf_process_rx_command(ptr noundef %add.ptr) #9
  tail call void @_raw_spin_lock_irq(ptr noundef %driver_lock) #9
  br label %if.end10

if.end10:                                         ; preds = %if.then5, %do.end4.if.end10_crit_edge
  %cmd_timed_out = getelementptr i8, ptr %work, i32 312
  %4 = ptrtoint ptr %cmd_timed_out to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cmd_timed_out, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool11.not = icmp eq i32 %5, 0
  br i1 %tobool11.not, label %if.end10.if.end20_crit_edge, label %land.lhs.true

if.end10.if.end20_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

land.lhs.true:                                    ; preds = %if.end10
  %cur_cmd = getelementptr i8, ptr %work, i32 196
  %6 = ptrtoint ptr %cur_cmd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cur_cmd, align 4
  %tobool12.not = icmp eq ptr %7, null
  br i1 %tobool12.not, label %land.lhs.true.if.end20_crit_edge, label %if.then13

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.then13:                                        ; preds = %land.lhs.true
  %nr_retries = getelementptr i8, ptr %work, i32 308
  %8 = ptrtoint ptr %nr_retries to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nr_retries, align 4
  %inc = add i32 %9, 1
  store i32 %inc, ptr %nr_retries, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %inc)
  %cmp15 = icmp sgt i32 %inc, 10
  br i1 %cmp15, label %if.then16, label %if.else

if.then16:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lbtf_complete_command(ptr noundef %add.ptr, ptr noundef nonnull %7, i32 noundef -110) #9
  %10 = ptrtoint ptr %nr_retries to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %nr_retries, align 4
  br label %if.end20

if.else:                                          ; preds = %if.then13
  %11 = ptrtoint ptr %cur_cmd to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %cur_cmd, align 4
  %cmdpendingq = getelementptr i8, ptr %work, i32 208
  %12 = ptrtoint ptr %cmdpendingq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cmdpendingq, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %7, ptr noundef %cmdpendingq, ptr noundef %13) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.else.if.end20_crit_edge

if.else.if.end20_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.end.i.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %7, ptr %prev1.i.i, align 4
  %15 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %13, ptr %7, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %16 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %cmdpendingq, ptr %prev3.i.i, align 4
  %17 = ptrtoint ptr %cmdpendingq to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %7, ptr %cmdpendingq, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.end.i.i, %if.else.if.end20_crit_edge, %if.then16, %land.lhs.true.if.end20_crit_edge, %if.end10.if.end20_crit_edge
  %18 = ptrtoint ptr %cmd_timed_out to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %cmd_timed_out, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %driver_lock) #9
  %cur_cmd23 = getelementptr i8, ptr %work, i32 196
  %19 = ptrtoint ptr %cur_cmd23 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cur_cmd23, align 4
  %tobool24.not = icmp eq ptr %20, null
  br i1 %tobool24.not, label %if.then25, label %if.end20.do.body28_crit_edge

if.end20.do.body28_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body28

if.then25:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  %call26 = tail call i32 @lbtf_execute_next_command(ptr noundef %add.ptr) #9
  br label %do.body28

do.body28:                                        ; preds = %if.then25, %if.end20.do.body28_crit_edge
  %21 = load i32, ptr @lbtf_debug, align 4
  %and29 = and i32 %21, 16386
  call void @__sanitizer_cov_trace_const_cmp4(i32 16386, i32 %and29)
  %cmp30 = icmp eq i32 %and29, 16386
  br i1 %cmp30, label %do.end34, label %do.body28.do.end39_crit_edge

do.body28.do.end39_crit_edge:                     ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end39

do.end34:                                         ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #11
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.81) #12
  br label %do.end39

do.end39:                                         ; preds = %do.end34, %do.body28.do.end39_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lbtf_tx_work(ptr noundef %work) #0 align 64 {
entry:
  %newprompt.i = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -2372
  %0 = load i32, ptr @lbtf_debug, align 4
  %and = and i32 %0, 8454145
  call void @__sanitizer_cov_trace_const_cmp4(i32 8454145, i32 %and)
  %cmp = icmp eq i32 %and, 8454145
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.84) #12
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %vif = getelementptr i8, ptr %work, i32 -48
  %1 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %vif, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %4)
  %cmp5 = icmp eq i32 %4, 3
  br i1 %cmp5, label %land.lhs.true, label %do.end4.if.else_crit_edge

do.end4.if.else_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true:                                    ; preds = %do.end4
  %bc_ps_buf = getelementptr i8, ptr %work, i32 1536
  %5 = ptrtoint ptr %bc_ps_buf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bc_ps_buf, align 4
  %cmp.i.not = icmp eq ptr %6, %bc_ps_buf
  br i1 %cmp.i.not, label %land.lhs.true.if.else_crit_edge, label %if.then7

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then7:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %call9 = tail call ptr @skb_dequeue(ptr noundef %bc_ps_buf) #9
  br label %if.end28

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %do.end4.if.else_crit_edge
  %skb_to_tx = getelementptr i8, ptr %work, i32 484
  %7 = ptrtoint ptr %skb_to_tx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %skb_to_tx, align 4
  %tobool10.not = icmp eq ptr %8, null
  br i1 %tobool10.not, label %do.body15, label %if.then11

if.then11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %skb_to_tx to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %skb_to_tx, align 4
  br label %if.end28

do.body15:                                        ; preds = %if.else
  %10 = load i32, ptr @lbtf_debug, align 4
  %and16 = and i32 %10, 8454146
  call void @__sanitizer_cov_trace_const_cmp4(i32 8454146, i32 %and16)
  %cmp17 = icmp eq i32 %and16, 8454146
  br i1 %cmp17, label %do.body15.cleanup.sink.split_crit_edge, label %do.body15.cleanup_crit_edge

do.body15.cleanup_crit_edge:                      ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body15.cleanup.sink.split_crit_edge:           ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end28:                                         ; preds = %if.then11, %if.then7
  %skb.0 = phi ptr [ %8, %if.then11 ], [ %call9, %if.then7 ]
  %len29 = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 6
  %11 = ptrtoint ptr %len29 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len29, align 4
  %call31 = tail call ptr @skb_push(ptr noundef %skb.0, i32 noundef 24) #9
  %surpriseremoved = getelementptr i8, ptr %work, i32 1532
  %13 = ptrtoint ptr %surpriseremoved to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %surpriseremoved, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool32.not = icmp eq i8 %14, 0
  br i1 %tobool32.not, label %if.end46, label %if.then33

if.then33:                                        ; preds = %if.end28
  tail call void @__dev_kfree_skb_any(ptr noundef %skb.0, i32 noundef 1) #9
  %15 = load i32, ptr @lbtf_debug, align 4
  %and35 = and i32 %15, 8454146
  call void @__sanitizer_cov_trace_const_cmp4(i32 8454146, i32 %and35)
  %cmp36 = icmp eq i32 %and35, 8454146
  br i1 %cmp36, label %if.then33.cleanup.sink.split_crit_edge, label %if.then33.cleanup_crit_edge

if.then33.cleanup_crit_edge:                      ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then33.cleanup.sink.split_crit_edge:           ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end46:                                         ; preds = %if.end28
  %16 = call ptr @memset(ptr %call31, i32 0, i32 24)
  %17 = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 3, i32 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %17, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp.i139 = icmp slt i8 %19, 0
  br i1 %cmp.i139, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.end46
  %.b49.i = load i1, ptr @ieee80211_get_tx_rate.__already_done, align 1
  br i1 %.b49.i, label %land.rhs.i.ieee80211_get_tx_rate.exit_crit_edge, label %if.then.i, !prof !249

land.rhs.i.ieee80211_get_tx_rate.exit_crit_edge:  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ieee80211_get_tx_rate.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ieee80211_get_tx_rate.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.95, i32 noundef 2737, i32 noundef 9, ptr noundef null) #9
  br label %ieee80211_get_tx_rate.exit

if.end39.i:                                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  %hw = getelementptr i8, ptr %work, i32 -2368
  %20 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hw, align 4
  %wiphy.i = getelementptr inbounds %struct.ieee80211_hw, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %wiphy.i, align 8
  %band.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 3, i32 4
  %24 = ptrtoint ptr %band.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %bf.load.i = load i32, ptr %band.i, align 4
  %bf.lshr.i = lshr i32 %bf.load.i, 29
  %arrayidx40.i = getelementptr %struct.wiphy, ptr %23, i32 0, i32 53, i32 %bf.lshr.i
  %25 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx40.i, align 4
  %bitrates.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %bitrates.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bitrates.i, align 4
  %idxprom51.i = zext i8 %19 to i32
  %arrayidx44.i = getelementptr %struct.ieee80211_rate, ptr %28, i32 %idxprom51.i
  br label %ieee80211_get_tx_rate.exit

ieee80211_get_tx_rate.exit:                       ; preds = %if.end39.i, %if.then.i, %land.rhs.i.ieee80211_get_tx_rate.exit_crit_edge
  %retval.0.i = phi ptr [ %arrayidx44.i, %if.end39.i ], [ null, %if.then.i ], [ null, %land.rhs.i.ieee80211_get_tx_rate.exit_crit_edge ]
  %hw_value = getelementptr inbounds %struct.ieee80211_rate, ptr %retval.0.i, i32 0, i32 2
  %29 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %hw_value, align 2
  %31 = or i16 %30, 16
  %or = zext i16 %31 to i32
  %32 = tail call i32 @llvm.bswap.i32(i32 %or)
  %tx_control = getelementptr inbounds %struct.txpd, ptr %call31, i32 0, i32 1
  %33 = ptrtoint ptr %tx_control to i32
  call void @__asan_loadN_noabort(i32 %33, i32 4)
  %34 = load i32, ptr %tx_control, align 1
  %or48 = or i32 %32, %34
  store i32 %or48, ptr %tx_control, align 1
  %35 = getelementptr inbounds %struct.txpd, ptr %call31, i32 0, i32 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 19
  %36 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %data, align 4
  %add.ptr53 = getelementptr i8, ptr %37, i32 28
  %38 = call ptr @memcpy(ptr %35, ptr %add.ptr53, i32 6)
  %conv54 = trunc i32 %12 to i16
  %39 = tail call i16 @llvm.bswap.i16(i16 %conv54)
  %tx_packet_length = getelementptr inbounds %struct.txpd, ptr %call31, i32 0, i32 3
  %40 = ptrtoint ptr %tx_packet_length to i32
  call void @__asan_storeN_noabort(i32 %40, i32 2)
  store i16 %39, ptr %tx_packet_length, align 1
  %tx_packet_location = getelementptr inbounds %struct.txpd, ptr %call31, i32 0, i32 2
  %41 = ptrtoint ptr %tx_packet_location to i32
  call void @__asan_storeN_noabort(i32 %41, i32 4)
  store i32 402653184, ptr %tx_packet_location, align 1
  %42 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %data, align 4
  %44 = ptrtoint ptr %len29 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %len29, align 4
  %46 = tail call i32 @llvm.umin.i32(i32 %45, i32 100)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %newprompt.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool.not.i = icmp eq i32 %46, 0
  br i1 %tobool.not.i, label %ieee80211_get_tx_rate.exit.lbtf_deb_hex.exit_crit_edge, label %land.lhs.true.i

ieee80211_get_tx_rate.exit.lbtf_deb_hex.exit_crit_edge: ; preds = %ieee80211_get_tx_rate.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %lbtf_deb_hex.exit

land.lhs.true.i:                                  ; preds = %ieee80211_get_tx_rate.exit
  %47 = load i32, ptr @lbtf_debug, align 4
  %48 = and i32 %47, 2162688
  call void @__sanitizer_cov_trace_const_cmp4(i32 2162688, i32 %48)
  %.not = icmp eq i32 %48, 2162688
  br i1 %.not, label %if.then.i140, label %land.lhs.true.i.lbtf_deb_hex.exit_crit_edge

land.lhs.true.i.lbtf_deb_hex.exit_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lbtf_deb_hex.exit

if.then.i140:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %newprompt.i, i32 noundef 32, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.89) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lbtf_deb_hex.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lbtf_tx_work, %if.then9.i)) #9
          to label %lbtf_deb_hex.exit [label %if.then9.i], !srcloc !248

if.then9.i:                                       ; preds = %if.then.i140
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @print_hex_dump(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.89, i32 noundef 0, i32 noundef 16, i32 noundef 1, ptr noundef %43, i32 noundef %46, i1 noundef zeroext true) #9
  br label %lbtf_deb_hex.exit

lbtf_deb_hex.exit:                                ; preds = %if.then9.i, %if.then.i140, %land.lhs.true.i.lbtf_deb_hex.exit_crit_edge, %ieee80211_get_tx_rate.exit.lbtf_deb_hex.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %newprompt.i) #9
  %tx_skb = getelementptr i8, ptr %work, i32 488
  %49 = ptrtoint ptr %tx_skb to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %tx_skb, align 4
  %tobool61.not = icmp eq ptr %50, null
  br i1 %tobool61.not, label %do.end73, label %do.body65, !prof !249

do.body65:                                        ; preds = %lbtf_deb_hex.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/marvell/libertas_tf/main.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 241, 0\0A.popsection", ""() #9, !srcloc !250
  unreachable

do.end73:                                         ; preds = %lbtf_deb_hex.exit
  %driver_lock = getelementptr i8, ptr %work, i32 172
  tail call void @_raw_spin_lock_irq(ptr noundef %driver_lock) #9
  %51 = ptrtoint ptr %tx_skb to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %skb.0, ptr %tx_skb, align 4
  %ops = getelementptr i8, ptr %work, i32 -2364
  %52 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ops, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %53, align 4
  %56 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %data, align 4
  %58 = ptrtoint ptr %len29 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %len29, align 4
  %conv77 = trunc i32 %59 to i16
  %call78 = tail call i32 %55(ptr noundef %add.ptr, i8 noundef zeroext 0, ptr noundef %57, i16 noundef zeroext %conv77) #9
  tail call void @_raw_spin_unlock_irq(ptr noundef %driver_lock) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool80.not = icmp eq i32 %call78, 0
  br i1 %tobool80.not, label %do.end73.do.body89_crit_edge, label %if.then81

do.end73.do.body89_crit_edge:                     ; preds = %do.end73
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body89

if.then81:                                        ; preds = %do.end73
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__dev_kfree_skb_any(ptr noundef %skb.0, i32 noundef 1) #9
  %60 = ptrtoint ptr %tx_skb to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr null, ptr %tx_skb, align 4
  %call87 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.91, i32 noundef %call78) #12
  br label %do.body89

do.body89:                                        ; preds = %if.then81, %do.end73.do.body89_crit_edge
  %61 = load i32, ptr @lbtf_debug, align 4
  %and90 = and i32 %61, 8454146
  call void @__sanitizer_cov_trace_const_cmp4(i32 8454146, i32 %and90)
  %cmp91 = icmp eq i32 %and90, 8454146
  br i1 %cmp91, label %do.body89.cleanup.sink.split_crit_edge, label %do.body89.cleanup_crit_edge

do.body89.cleanup_crit_edge:                      ; preds = %do.body89
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body89.cleanup.sink.split_crit_edge:           ; preds = %do.body89
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %do.body89.cleanup.sink.split_crit_edge, %if.then33.cleanup.sink.split_crit_edge, %do.body15.cleanup.sink.split_crit_edge
  %call98 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.84) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.body89.cleanup_crit_edge, %if.then33.cleanup_crit_edge, %do.body15.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lbtf_update_hw_spec(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lbtf_set_radio_control(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_register_hw(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_free_hw(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lbtf_remove_card(ptr noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.lbtf_private, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw1, align 4
  %2 = load i32, ptr @lbtf_debug, align 4
  %and = and i32 %2, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %and)
  %cmp = icmp eq i32 %and, 5
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.28) #12
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %surpriseremoved = getelementptr inbounds %struct.lbtf_private, ptr %priv, i32 0, i32 36
  %3 = ptrtoint ptr %surpriseremoved to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %surpriseremoved, align 4
  %command_timer = getelementptr inbounds %struct.lbtf_private, ptr %priv, i32 0, i32 16
  %call5 = tail call i32 @del_timer(ptr noundef %command_timer) #9
  %4 = load i32, ptr @lbtf_debug, align 4
  %and.i = and i32 %4, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 5
  br i1 %cmp.i, label %do.end.i, label %do.end4.do.end2.i_crit_edge

do.end4.do.end2.i_crit_edge:                      ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end2.i

do.end.i:                                         ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.96) #12
  br label %do.end2.i

do.end2.i:                                        ; preds = %do.end.i, %do.end4.do.end2.i_crit_edge
  %call3.i = tail call i32 @lbtf_free_cmd_buffer(ptr noundef %priv) #9
  %call4.i = tail call i32 @del_timer(ptr noundef %command_timer) #9
  %5 = load i32, ptr @lbtf_debug, align 4
  %and6.i = and i32 %5, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %and6.i)
  %cmp7.i = icmp eq i32 %and6.i, 6
  br i1 %cmp7.i, label %do.end10.i, label %do.end2.i.lbtf_free_adapter.exit_crit_edge

do.end2.i.lbtf_free_adapter.exit_crit_edge:       ; preds = %do.end2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lbtf_free_adapter.exit

do.end10.i:                                       ; preds = %do.end2.i
  call void @__sanitizer_cov_trace_pc() #11
  %call12.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.96) #12
  br label %lbtf_free_adapter.exit

lbtf_free_adapter.exit:                           ; preds = %do.end10.i, %do.end2.i.lbtf_free_adapter.exit_crit_edge
  %6 = ptrtoint ptr %hw1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %hw1, align 4
  tail call void @ieee80211_unregister_hw(ptr noundef %1) #9
  tail call void @ieee80211_free_hw(ptr noundef %1) #9
  %7 = load i32, ptr @lbtf_debug, align 4
  %and8 = and i32 %7, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %and8)
  %cmp9 = icmp eq i32 %and8, 6
  br i1 %cmp9, label %do.end13, label %lbtf_free_adapter.exit.do.end18_crit_edge

lbtf_free_adapter.exit.do.end18_crit_edge:        ; preds = %lbtf_free_adapter.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end18

do.end13:                                         ; preds = %lbtf_free_adapter.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.28) #12
  br label %do.end18

do.end18:                                         ; preds = %do.end13, %lbtf_free_adapter.exit.do.end18_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_unregister_hw(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lbtf_send_tx_feedback(ptr noundef %priv, i8 zeroext %retrycnt, i8 noundef zeroext %fail) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_skb = getelementptr inbounds %struct.lbtf_private, ptr %priv, i32 0, i32 26
  %0 = ptrtoint ptr %tx_skb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_skb, align 4
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3
  %count.i = getelementptr %struct.sk_buff, ptr %1, i32 0, i32 3, i32 9
  %2 = ptrtoint ptr %count.i to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %bf.load.i = load i16, ptr %count.i, align 1
  %bf.clear.i = and i16 %bf.load.i, 2047
  store i16 %bf.clear.i, ptr %count.i, align 1
  %count.1.i = getelementptr %struct.sk_buff, ptr %1, i32 0, i32 3, i32 12
  %3 = ptrtoint ptr %count.1.i to i32
  call void @__asan_loadN_noabort(i32 %3, i32 2)
  %bf.load.1.i = load i16, ptr %count.1.i, align 1
  %bf.clear.1.i = and i16 %bf.load.1.i, 2047
  store i16 %bf.clear.1.i, ptr %count.1.i, align 1
  %count.2.i = getelementptr %struct.sk_buff, ptr %1, i32 0, i32 3, i32 15
  %4 = ptrtoint ptr %count.2.i to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %bf.load.2.i = load i16, ptr %count.2.i, align 1
  %bf.clear.2.i = and i16 %bf.load.2.i, 2047
  store i16 %bf.clear.2.i, ptr %count.2.i, align 1
  %count.3.i = getelementptr %struct.sk_buff, ptr %1, i32 0, i32 3, i32 18
  %5 = ptrtoint ptr %count.3.i to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %bf.load.3.i = load i16, ptr %count.3.i, align 1
  %bf.clear.3.i = and i16 %bf.load.3.i, 2047
  store i16 %bf.clear.3.i, ptr %count.3.i, align 1
  %add.ptr.i = getelementptr %struct.sk_buff, ptr %1, i32 0, i32 3, i32 20
  %6 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 28)
  %7 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cb.i, align 8
  %and = and i32 %8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %fail)
  %tobool1.not = icmp eq i8 %fail, 0
  %or.cond = and i1 %tobool1.not, %tobool.not
  br i1 %or.cond, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %or = or i32 %8, 512
  %9 = ptrtoint ptr %cb.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or, ptr %cb.i, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %10 = ptrtoint ptr %tx_skb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tx_skb, align 4
  %call4 = tail call ptr @skb_pull(ptr noundef %11, i32 noundef 24) #9
  %hw = getelementptr inbounds %struct.lbtf_private, ptr %priv, i32 0, i32 1
  %12 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw, align 4
  %14 = ptrtoint ptr %tx_skb to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tx_skb, align 4
  tail call void @ieee80211_tx_status_irqsafe(ptr noundef %13, ptr noundef %15) #9
  %16 = ptrtoint ptr %tx_skb to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %tx_skb, align 4
  %skb_to_tx = getelementptr inbounds %struct.lbtf_private, ptr %priv, i32 0, i32 25
  %17 = ptrtoint ptr %skb_to_tx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %skb_to_tx, align 4
  %tobool7.not = icmp eq ptr %18, null
  br i1 %tobool7.not, label %land.lhs.true8, label %if.end.if.else_crit_edge

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true8:                                   ; preds = %if.end
  %bc_ps_buf = getelementptr inbounds %struct.lbtf_private, ptr %priv, i32 0, i32 37
  %19 = ptrtoint ptr %bc_ps_buf to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bc_ps_buf, align 4
  %cmp.i.not = icmp eq ptr %20, %bc_ps_buf
  br i1 %cmp.i.not, label %if.then11, label %land.lhs.true8.if.else_crit_edge

land.lhs.true8.if.else_crit_edge:                 ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then11:                                        ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hw, align 4
  tail call void @ieee80211_wake_queues(ptr noundef %22) #9
  br label %if.end14

if.else:                                          ; preds = %land.lhs.true8.if.else_crit_edge, %if.end.if.else_crit_edge
  %23 = load ptr, ptr @lbtf_wq, align 4
  %tx_work = getelementptr inbounds %struct.lbtf_private, ptr %priv, i32 0, i32 6
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %23, ptr noundef %tx_work) #9
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_tx_status_irqsafe(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_wake_queues(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lbtf_bcn_sent(ptr noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %vif = getelementptr inbounds %struct.lbtf_private, ptr %priv, i32 0, i32 4
  %0 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vif, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp.not = icmp eq i32 %3, 3
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %bc_ps_buf = getelementptr inbounds %struct.lbtf_private, ptr %priv, i32 0, i32 37
  %4 = ptrtoint ptr %bc_ps_buf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bc_ps_buf, align 4
  %cmp.i.not = icmp eq ptr %5, %bc_ps_buf
  br i1 %cmp.i.not, label %while.cond.preheader, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

while.cond.preheader:                             ; preds = %if.end
  %hw = getelementptr inbounds %struct.lbtf_private, ptr %priv, i32 0, i32 1
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw, align 4
  %8 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vif, align 4
  %call332 = tail call ptr @ieee80211_get_buffered_bc(ptr noundef %7, ptr noundef %9) #9
  %tobool4.not33 = icmp eq ptr %call332, null
  br i1 %tobool4.not33, label %while.cond.preheader.if.end11_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.if.end11_crit_edge:          ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %call334 = phi ptr [ %call3, %while.body.while.body_crit_edge ], [ %call332, %while.cond.preheader.while.body_crit_edge ]
  tail call void @skb_queue_tail(ptr noundef %bc_ps_buf, ptr noundef nonnull %call334) #9
  %10 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw, align 4
  %12 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vif, align 4
  %call3 = tail call ptr @ieee80211_get_buffered_bc(ptr noundef %11, ptr noundef %13) #9
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.end:                                        ; preds = %while.body
  br i1 %tobool4.not33, label %while.end.if.end11_crit_edge, label %if.then7

while.end.if.end11_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then7:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hw, align 4
  tail call void @ieee80211_stop_queues(ptr noundef %15) #9
  %16 = load ptr, ptr @lbtf_wq, align 4
  %tx_work = getelementptr inbounds %struct.lbtf_private, ptr %priv, i32 0, i32 6
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %16, ptr noundef %tx_work) #9
  br label %if.end11

if.end11:                                         ; preds = %if.then7, %while.end.if.end11_crit_edge, %while.cond.preheader.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %hw12 = getelementptr inbounds %struct.lbtf_private, ptr %priv, i32 0, i32 1
  %17 = ptrtoint ptr %hw12 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hw12, align 4
  %19 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %vif, align 4
  %call.i31 = tail call ptr @ieee80211_beacon_get_tim(ptr noundef %18, ptr noundef %20, ptr noundef null, ptr noundef null) #9
  %tobool15.not = icmp eq ptr %call.i31, null
  br i1 %tobool15.not, label %if.end11.cleanup_crit_edge, label %if.then16

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then16:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %call17 = tail call i32 @lbtf_beacon_set(ptr noundef %priv, ptr noundef nonnull %call.i31) #9
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i31, i32 noundef 0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %if.end11.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_get_buffered_bc(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_stop_queues(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lbtf_beacon_set(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @lbtf_exit_module() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = load i32, ptr @lbtf_debug, align 4
  %and = and i32 %0, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %and)
  %cmp = icmp eq i32 %and, 5
  br i1 %cmp, label %do.end, label %entry.do.end2_crit_edge

entry.do.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.31) #12
  br label %do.end2

do.end2:                                          ; preds = %do.end, %entry.do.end2_crit_edge
  %1 = load ptr, ptr @lbtf_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %1) #9
  %2 = load i32, ptr @lbtf_debug, align 4
  %and4 = and i32 %2, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %and4)
  %cmp5 = icmp eq i32 %and4, 6
  br i1 %cmp5, label %do.end8, label %do.end2.do.end12_crit_edge

do.end2.do.end12_crit_edge:                       ; preds = %do.end2
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end12

do.end8:                                          ; preds = %do.end2
  call void @__sanitizer_cov_trace_pc() #11
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.31) #12
  br label %do.end12

do.end12:                                         ; preds = %do.end8, %do.end2.do.end12_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @lbtf_init_module() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @lbtf_debug, align 4
  %and = and i32 %0, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %and)
  %cmp = icmp eq i32 %and, 5
  br i1 %cmp, label %do.end, label %entry.do.end2_crit_edge

entry.do.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.99) #12
  br label %do.end2

do.end2:                                          ; preds = %do.end, %entry.do.end2_crit_edge
  %call3 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.100, i32 noundef 8, i32 noundef 0) #9
  store ptr %call3, ptr @lbtf_wq, align 4
  %cmp4 = icmp eq ptr %call3, null
  br i1 %cmp4, label %do.end7, label %do.body11

do.end7:                                          ; preds = %do.end2
  call void @__sanitizer_cov_trace_pc() #11
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102) #12
  br label %return

do.body11:                                        ; preds = %do.end2
  %1 = load i32, ptr @lbtf_debug, align 4
  %and12 = and i32 %1, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %and12)
  %cmp13 = icmp eq i32 %and12, 6
  br i1 %cmp13, label %do.end16, label %do.body11.return_crit_edge

do.body11.return_crit_edge:                       ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

do.end16:                                         ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #11
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.99) #12
  br label %return

return:                                           ; preds = %do.end16, %do.body11.return_crit_edge, %do.end7
  %retval.0 = phi i32 [ -12, %do.end7 ], [ 0, %do.body11.return_crit_edge ], [ 0, %do.end16 ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_alloc_hw_nm(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lbtf_op_tx(ptr nocapture noundef readonly %hw, ptr nocapture noundef readnone %control, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %skb_to_tx = getelementptr inbounds %struct.lbtf_private, ptr %1, i32 0, i32 25
  %2 = ptrtoint ptr %skb_to_tx to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %skb, ptr %skb_to_tx, align 4
  %3 = load ptr, ptr @lbtf_wq, align 4
  %tx_work = getelementptr inbounds %struct.lbtf_private, ptr %1, i32 0, i32 6
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %3, ptr noundef %tx_work) #9
  %hw2 = getelementptr inbounds %struct.lbtf_private, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %hw2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw2, align 4
  tail call void @ieee80211_stop_queues(ptr noundef %5) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lbtf_op_start(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %2 = load i32, ptr @lbtf_debug, align 4
  %and = and i32 %2, 8388609
  call void @__sanitizer_cov_trace_const_cmp4(i32 8388609, i32 %and)
  %cmp = icmp eq i32 %and, 8388609
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.40) #12
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %capability = getelementptr inbounds %struct.lbtf_private, ptr %1, i32 0, i32 20
  %3 = ptrtoint ptr %capability to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 32, ptr %capability, align 2
  %radioon = getelementptr inbounds %struct.lbtf_private, ptr %1, i32 0, i32 30
  %4 = ptrtoint ptr %radioon to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %radioon, align 1
  %mac_control = getelementptr inbounds %struct.lbtf_private, ptr %1, i32 0, i32 27
  %5 = ptrtoint ptr %mac_control to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 3, ptr %mac_control, align 4
  tail call void @lbtf_set_mac_control(ptr noundef %1) #9
  %call5 = tail call i32 @lbtf_set_radio_control(ptr noundef %1) #9
  %6 = load i32, ptr @lbtf_debug, align 4
  %and7 = and i32 %6, 8388610
  call void @__sanitizer_cov_trace_const_cmp4(i32 8388610, i32 %and7)
  %cmp8 = icmp eq i32 %and7, 8388610
  br i1 %cmp8, label %do.end12, label %do.end4.do.end17_crit_edge

do.end4.do.end17_crit_edge:                       ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end17

do.end12:                                         ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #11
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.40) #12
  br label %do.end17

do.end17:                                         ; preds = %do.end12, %do.end4.do.end17_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lbtf_op_stop(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %2 = load i32, ptr @lbtf_debug, align 4
  %and = and i32 %2, 8388609
  call void @__sanitizer_cov_trace_const_cmp4(i32 8388609, i32 %and)
  %cmp = icmp eq i32 %and, 8388609
  br i1 %cmp, label %do.end, label %entry.do.body6_crit_edge

entry.do.body6_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.43) #12
  br label %do.body6

do.body6:                                         ; preds = %do.end, %entry.do.body6_crit_edge
  %driver_lock = getelementptr inbounds %struct.lbtf_private, ptr %1, i32 0, i32 15
  %call10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %driver_lock) #9
  %cmdpendingq = getelementptr inbounds %struct.lbtf_private, ptr %1, i32 0, i32 14
  %3 = ptrtoint ptr %cmdpendingq to i32
  call void @__asan_load4_noabort(i32 %3)
  %cmdnode.054 = load ptr, ptr %cmdpendingq, align 4
  %cmp17.not55 = icmp eq ptr %cmdnode.054, %cmdpendingq
  br i1 %cmp17.not55, label %do.body6.for.end_crit_edge, label %do.body6.for.body_crit_edge

do.body6.for.body_crit_edge:                      ; preds = %do.body6
  br label %for.body

do.body6.for.end_crit_edge:                       ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.body6.for.body_crit_edge
  %cmdnode.056 = phi ptr [ %cmdnode.0, %for.body.for.body_crit_edge ], [ %cmdnode.054, %do.body6.for.body_crit_edge ]
  %result = getelementptr inbounds %struct.cmd_ctrl_node, ptr %cmdnode.056, i32 0, i32 1
  %4 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -2, ptr %result, align 4
  %cmdwaitqwoken = getelementptr inbounds %struct.cmd_ctrl_node, ptr %cmdnode.056, i32 0, i32 5
  %5 = ptrtoint ptr %cmdwaitqwoken to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 1, ptr %cmdwaitqwoken, align 4
  %cmdwait_q = getelementptr inbounds %struct.cmd_ctrl_node, ptr %cmdnode.056, i32 0, i32 6
  tail call void @__wake_up(ptr noundef %cmdwait_q, i32 noundef 1, i32 noundef 1, ptr noundef null) #9
  %6 = ptrtoint ptr %cmdnode.056 to i32
  call void @__asan_load4_noabort(i32 %6)
  %cmdnode.0 = load ptr, ptr %cmdnode.056, align 4
  %cmp17.not = icmp eq ptr %cmdnode.0, %cmdpendingq
  br i1 %cmp17.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %do.body6.for.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %driver_lock, i32 noundef %call10) #9
  %cmd_work = getelementptr inbounds %struct.lbtf_private, ptr %1, i32 0, i32 5
  %call25 = tail call zeroext i1 @cancel_work_sync(ptr noundef %cmd_work) #9
  %tx_work = getelementptr inbounds %struct.lbtf_private, ptr %1, i32 0, i32 6
  %call26 = tail call zeroext i1 @cancel_work_sync(ptr noundef %tx_work) #9
  %bc_ps_buf = getelementptr inbounds %struct.lbtf_private, ptr %1, i32 0, i32 37
  %call2757 = tail call ptr @skb_dequeue(ptr noundef %bc_ps_buf) #9
  %tobool.not58 = icmp eq ptr %call2757, null
  br i1 %tobool.not58, label %for.end.while.end_crit_edge, label %for.end.while.body_crit_edge

for.end.while.body_crit_edge:                     ; preds = %for.end
  br label %while.body

for.end.while.end_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %for.end.while.body_crit_edge
  %call2759 = phi ptr [ %call27, %while.body.while.body_crit_edge ], [ %call2757, %for.end.while.body_crit_edge ]
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call2759, i32 noundef 1) #9
  %call27 = tail call ptr @skb_dequeue(ptr noundef %bc_ps_buf) #9
  %tobool.not = icmp eq ptr %call27, null
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %for.end.while.end_crit_edge
  %radioon = getelementptr inbounds %struct.lbtf_private, ptr %1, i32 0, i32 30
  %7 = ptrtoint ptr %radioon to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %radioon, align 1
  %call28 = tail call i32 @lbtf_set_radio_control(ptr noundef %1) #9
  %8 = load i32, ptr @lbtf_debug, align 4
  %and30 = and i32 %8, 8388610
  call void @__sanitizer_cov_trace_const_cmp4(i32 8388610, i32 %and30)
  %cmp31 = icmp eq i32 %and30, 8388610
  br i1 %cmp31, label %do.end36, label %while.end.do.end41_crit_edge

while.end.do.end41_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end41

do.end36:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.43) #12
  br label %do.end41

do.end41:                                         ; preds = %do.end36, %while.end.do.end41_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lbtf_op_add_interface(ptr nocapture noundef readonly %hw, ptr noundef %vif) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %2 = load i32, ptr @lbtf_debug, align 4
  %and = and i32 %2, 8388609
  call void @__sanitizer_cov_trace_const_cmp4(i32 8388609, i32 %and)
  %cmp = icmp eq i32 %and, 8388609
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.46) #12
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %vif5 = getelementptr inbounds %struct.lbtf_private, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %vif5 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %vif5, align 4
  %cmp6.not = icmp eq ptr %4, null
  br i1 %cmp6.not, label %if.end8, label %do.end4.cleanup_crit_edge

do.end4.cleanup_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %do.end4
  %5 = ptrtoint ptr %vif5 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %vif, ptr %vif5, align 4
  %6 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vif, align 8
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %7, label %sw.default [
    i32 7, label %if.end8.sw.epilog_crit_edge
    i32 3, label %if.end8.sw.epilog_crit_edge32
    i32 2, label %sw.bb10
  ]

if.end8.sw.epilog_crit_edge32:                    ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end8.sw.epilog_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb10:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.default:                                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %vif5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %vif5, align 4
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb10, %if.end8.sw.epilog_crit_edge, %if.end8.sw.epilog_crit_edge32
  %.sink = phi i32 [ 1, %sw.bb10 ], [ 2, %if.end8.sw.epilog_crit_edge ], [ 2, %if.end8.sw.epilog_crit_edge32 ]
  tail call void @lbtf_set_mode(ptr noundef %1, i32 noundef %.sink) #9
  %addr = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 2
  %call12 = tail call i32 @lbtf_set_mac_address(ptr noundef %1, ptr noundef %addr) #9
  %10 = load i32, ptr @lbtf_debug, align 4
  %and14 = and i32 %10, 8388610
  call void @__sanitizer_cov_trace_const_cmp4(i32 8388610, i32 %and14)
  %cmp15 = icmp eq i32 %and14, 8388610
  br i1 %cmp15, label %do.end19, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end19:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.46) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end19, %sw.epilog.cleanup_crit_edge, %sw.default, %do.end4.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %sw.default ], [ -95, %do.end4.cleanup_crit_edge ], [ 0, %do.end19 ], [ 0, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lbtf_op_remove_interface(ptr nocapture noundef readonly %hw, ptr nocapture noundef readnone %vif) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %2 = load i32, ptr @lbtf_debug, align 4
  %and = and i32 %2, 8388609
  call void @__sanitizer_cov_trace_const_cmp4(i32 8388609, i32 %and)
  %cmp = icmp eq i32 %and, 8388609
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.49) #12
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %vif5 = getelementptr inbounds %struct.lbtf_private, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %vif5 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %vif5, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 8
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.106)
  switch i32 %6, label %do.end4.if.end12_crit_edge [
    i32 3, label %do.end4.if.then10_crit_edge
    i32 7, label %do.end4.if.then10_crit_edge31
  ]

do.end4.if.then10_crit_edge31:                    ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then10

do.end4.if.then10_crit_edge:                      ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then10

do.end4.if.end12_crit_edge:                       ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then10:                                        ; preds = %do.end4.if.then10_crit_edge, %do.end4.if.then10_crit_edge31
  %call11 = tail call i32 @lbtf_beacon_ctrl(ptr noundef %1, i1 noundef zeroext false, i32 noundef 0) #9
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %do.end4.if.end12_crit_edge
  tail call void @lbtf_set_mode(ptr noundef %1, i32 noundef 0) #9
  tail call void @lbtf_set_bssid(ptr noundef %1, i1 noundef zeroext false, ptr noundef null) #9
  %8 = ptrtoint ptr %vif5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %vif5, align 4
  %9 = load i32, ptr @lbtf_debug, align 4
  %and15 = and i32 %9, 8388610
  call void @__sanitizer_cov_trace_const_cmp4(i32 8388610, i32 %and15)
  %cmp16 = icmp eq i32 %and15, 8388610
  br i1 %cmp16, label %do.end20, label %if.end12.do.end25_crit_edge

if.end12.do.end25_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end25

do.end20:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.49) #12
  br label %do.end25

do.end25:                                         ; preds = %do.end20, %if.end12.do.end25_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lbtf_op_config(ptr nocapture noundef readonly %hw, i32 noundef %changed) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %2 = load i32, ptr @lbtf_debug, align 4
  %and = and i32 %2, 8388609
  call void @__sanitizer_cov_trace_const_cmp4(i32 8388609, i32 %and)
  %cmp = icmp eq i32 %and, 8388609
  br i1 %cmp, label %do.end, label %entry.do.end5_crit_edge

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.52) #12
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %chandef = getelementptr inbounds %struct.ieee80211_conf, ptr %hw, i32 0, i32 7
  %3 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %chandef, align 4
  %center_freq = getelementptr inbounds %struct.ieee80211_channel, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %center_freq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %center_freq, align 4
  %cur_freq = getelementptr inbounds %struct.lbtf_private, ptr %1, i32 0, i32 24
  %7 = ptrtoint ptr %cur_freq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cur_freq, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp6.not = icmp eq i32 %6, %8
  br i1 %cmp6.not, label %do.end5.do.body16_crit_edge, label %if.then7

do.end5.do.body16_crit_edge:                      ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body16

if.then7:                                         ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %cur_freq to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %6, ptr %cur_freq, align 4
  %10 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %chandef, align 4
  %hw_value = getelementptr inbounds %struct.ieee80211_channel, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %hw_value, align 2
  %conv = trunc i16 %13 to i8
  %call14 = tail call i32 @lbtf_set_channel(ptr noundef %1, i8 noundef zeroext %conv) #9
  br label %do.body16

do.body16:                                        ; preds = %if.then7, %do.end5.do.body16_crit_edge
  %14 = load i32, ptr @lbtf_debug, align 4
  %and17 = and i32 %14, 8388610
  call void @__sanitizer_cov_trace_const_cmp4(i32 8388610, i32 %and17)
  %cmp18 = icmp eq i32 %and17, 8388610
  br i1 %cmp18, label %do.end23, label %do.body16.do.end28_crit_edge

do.body16.do.end28_crit_edge:                     ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end28

do.end23:                                         ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #11
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.52) #12
  br label %do.end28

do.end28:                                         ; preds = %do.end23, %do.body16.do.end28_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lbtf_op_bss_info_changed(ptr noundef %hw, ptr noundef %vif, ptr nocapture noundef readonly %bss_conf, i32 noundef %changes) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %2 = load i32, ptr @lbtf_debug, align 4
  %and = and i32 %2, 8388609
  call void @__sanitizer_cov_trace_const_cmp4(i32 8388609, i32 %and)
  %cmp = icmp eq i32 %and, 8388609
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.55) #12
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %and5 = and i32 %changes, 320
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool.not = icmp eq i32 %and5, 0
  br i1 %tobool.not, label %do.end4.if.end14_crit_edge, label %if.then6

do.end4.if.end14_crit_edge:                       ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then6:                                         ; preds = %do.end4
  %vif7 = getelementptr inbounds %struct.lbtf_private, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %vif7 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %vif7, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 8
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.107)
  switch i32 %6, label %if.then6.if.end14_crit_edge [
    i32 3, label %if.then6.sw.bb_crit_edge
    i32 7, label %if.then6.sw.bb_crit_edge58
  ]

if.then6.sw.bb_crit_edge58:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.then6.sw.bb_crit_edge:                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.then6.if.end14_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

sw.bb:                                            ; preds = %if.then6.sw.bb_crit_edge, %if.then6.sw.bb_crit_edge58
  %call.i = tail call ptr @ieee80211_beacon_get_tim(ptr noundef %hw, ptr noundef %vif, ptr noundef null, ptr noundef null) #9
  %tobool9.not = icmp eq ptr %call.i, null
  br i1 %tobool9.not, label %sw.bb.if.end14_crit_edge, label %if.then10

sw.bb.if.end14_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then10:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %call11 = tail call i32 @lbtf_beacon_set(ptr noundef %1, ptr noundef nonnull %call.i) #9
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i, i32 noundef 0) #9
  %beacon_int = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %bss_conf, i32 0, i32 19
  %8 = ptrtoint ptr %beacon_int to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %beacon_int, align 2
  %conv = zext i16 %9 to i32
  %call12 = tail call i32 @lbtf_beacon_ctrl(ptr noundef %1, i1 noundef zeroext true, i32 noundef %conv) #9
  br label %if.end14

if.end14:                                         ; preds = %if.then10, %sw.bb.if.end14_crit_edge, %if.then6.if.end14_crit_edge, %do.end4.if.end14_crit_edge
  %and15 = and i32 %changes, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end14.if.end21_crit_edge, label %if.then17

if.end14.if.end21_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %bss_conf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bss_conf, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 4
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %add.ptr.i, align 2
  %conv.i = zext i16 %15 to i32
  %or.i = or i32 %13, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp ne i32 %or.i, 0
  tail call void @lbtf_set_bssid(ptr noundef %1, i1 noundef zeroext %cmp.i, ptr noundef %11) #9
  br label %if.end21

if.end21:                                         ; preds = %if.then17, %if.end14.if.end21_crit_edge
  %and22 = and i32 %changes, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.end21.do.body31_crit_edge, label %if.then24

if.end21.do.body31_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body31

if.then24:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  %use_short_preamble = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %bss_conf, i32 0, i32 15
  %16 = ptrtoint ptr %use_short_preamble to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %use_short_preamble, align 1, !range !251
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool25.not = icmp eq i8 %17, 0
  %spec.select = select i1 %tobool25.not, i32 3, i32 2
  %18 = getelementptr inbounds %struct.lbtf_private, ptr %1, i32 0, i32 31
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %spec.select, ptr %18, align 4
  %call29 = tail call i32 @lbtf_set_radio_control(ptr noundef %1) #9
  br label %do.body31

do.body31:                                        ; preds = %if.then24, %if.end21.do.body31_crit_edge
  %20 = load i32, ptr @lbtf_debug, align 4
  %and32 = and i32 %20, 8388610
  call void @__sanitizer_cov_trace_const_cmp4(i32 8388610, i32 %and32)
  %cmp33 = icmp eq i32 %and32, 8388610
  br i1 %cmp33, label %do.end38, label %do.body31.do.end43_crit_edge

do.body31.do.end43_crit_edge:                     ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end43

do.end38:                                         ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #11
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.55) #12
  br label %do.end43

do.end43:                                         ; preds = %do.end38, %do.body31.do.end43_crit_edge
  ret void
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @lbtf_op_prepare_multicast(ptr nocapture noundef readonly %hw, ptr noundef readonly %mc_list) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %count = getelementptr inbounds %struct.netdev_hw_addr_list, ptr %mc_list, i32 0, i32 1
  %2 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %3)
  %cmp = icmp sgt i32 %3, 32
  %or.cond = or i1 %tobool.not, %cmp
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %nr_of_multicastmacaddr = getelementptr inbounds %struct.lbtf_private, ptr %1, i32 0, i32 23
  %4 = ptrtoint ptr %nr_of_multicastmacaddr to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %nr_of_multicastmacaddr, align 4
  %5 = ptrtoint ptr %mc_list to i32
  call void @__asan_load4_noabort(i32 %5)
  %ha.024 = load ptr, ptr %mc_list, align 4
  %cmp4.not25 = icmp eq ptr %ha.024, %mc_list
  br i1 %cmp4.not25, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %ha.027 = phi ptr [ %ha.0, %for.body.for.body_crit_edge ], [ %ha.024, %if.end.for.body_crit_edge ]
  %i.026 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %inc = add i32 %i.026, 1
  %arrayidx = getelementptr %struct.lbtf_private, ptr %1, i32 0, i32 22, i32 %i.026
  %addr = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.027, i32 0, i32 2
  %6 = call ptr @memcpy(ptr %arrayidx, ptr %addr, i32 6)
  %7 = ptrtoint ptr %ha.027 to i32
  call void @__asan_load4_noabort(i32 %7)
  %ha.0 = load ptr, ptr %ha.027, align 4
  %cmp4.not = icmp eq ptr %ha.0, %mc_list
  br i1 %cmp4.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = sext i32 %3 to i64
  ret i64 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lbtf_op_configure_filter(ptr nocapture noundef readonly %hw, i32 noundef %changed_flags, ptr nocapture noundef %new_flags, i64 noundef %multicast) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %mac_control = getelementptr inbounds %struct.lbtf_private, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %mac_control to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %mac_control, align 4
  %4 = load i32, ptr @lbtf_debug, align 4
  %and = and i32 %4, 8388609
  call void @__sanitizer_cov_trace_const_cmp4(i32 8388609, i32 %and)
  %cmp = icmp eq i32 %and, 8388609
  br i1 %cmp, label %do.end, label %entry.do.end5_crit_edge

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.58) #12
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %and6 = and i32 %changed_flags, 2
  %5 = ptrtoint ptr %new_flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %new_flags, align 4
  %and7 = and i32 %6, 2
  store i32 %and7, ptr %new_flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool.not = icmp eq i32 %and6, 0
  br i1 %tobool.not, label %do.body9, label %if.end22

do.body9:                                         ; preds = %do.end5
  %7 = load i32, ptr @lbtf_debug, align 4
  %and10 = and i32 %7, 8388610
  call void @__sanitizer_cov_trace_const_cmp4(i32 8388610, i32 %and10)
  %cmp11 = icmp eq i32 %and10, 8388610
  br i1 %cmp11, label %do.body9.cleanup.sink.split_crit_edge, label %do.body9.cleanup_crit_edge

do.body9.cleanup_crit_edge:                       ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body9.cleanup.sink.split_crit_edge:            ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end22:                                         ; preds = %do.end5
  %8 = ptrtoint ptr %mac_control to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %mac_control, align 4
  %10 = and i16 %9, -129
  store i16 %10, ptr %mac_control, align 4
  %11 = ptrtoint ptr %new_flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %new_flags, align 4
  %and27 = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp ne i32 %and27, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 32, i64 %multicast)
  %cmp29 = icmp ugt i64 %multicast, 32
  %or.cond = or i1 %cmp29, %tobool28.not
  br i1 %or.cond, label %if.then31, label %if.else

if.then31:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  %13 = and i16 %9, -417
  %14 = or i16 %13, 256
  %15 = ptrtoint ptr %mac_control to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %mac_control, align 4
  br label %if.end61

if.else:                                          ; preds = %if.end22
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %multicast)
  %tobool39.not = icmp eq i64 %multicast, 0
  %16 = and i16 %9, -417
  br i1 %tobool39.not, label %if.else50, label %if.then40

if.then40:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %17 = or i16 %16, 32
  %18 = ptrtoint ptr %mac_control to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %mac_control, align 4
  %call49 = tail call i32 @lbtf_cmd_set_mac_multicast_addr(ptr noundef %1) #9
  br label %if.end61

if.else50:                                        ; preds = %if.else
  %19 = ptrtoint ptr %mac_control to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %16, ptr %mac_control, align 4
  %nr_of_multicastmacaddr = getelementptr inbounds %struct.lbtf_private, ptr %1, i32 0, i32 23
  %20 = ptrtoint ptr %nr_of_multicastmacaddr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nr_of_multicastmacaddr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool55.not = icmp eq i32 %21, 0
  br i1 %tobool55.not, label %if.else50.if.end61_crit_edge, label %if.then56

if.else50.if.end61_crit_edge:                     ; preds = %if.else50
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61

if.then56:                                        ; preds = %if.else50
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %nr_of_multicastmacaddr to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %nr_of_multicastmacaddr, align 4
  %call58 = tail call i32 @lbtf_cmd_set_mac_multicast_addr(ptr noundef %1) #9
  br label %if.end61

if.end61:                                         ; preds = %if.then56, %if.else50.if.end61_crit_edge, %if.then40, %if.then31
  %23 = ptrtoint ptr %mac_control to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %mac_control, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %24, i16 %3)
  %cmp64.not = icmp eq i16 %24, %3
  br i1 %cmp64.not, label %if.end61.do.body68_crit_edge, label %if.then66

if.end61.do.body68_crit_edge:                     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body68

if.then66:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lbtf_set_mac_control(ptr noundef %1) #9
  br label %do.body68

do.body68:                                        ; preds = %if.then66, %if.end61.do.body68_crit_edge
  %25 = load i32, ptr @lbtf_debug, align 4
  %and69 = and i32 %25, 8388610
  call void @__sanitizer_cov_trace_const_cmp4(i32 8388610, i32 %and69)
  %cmp70 = icmp eq i32 %and69, 8388610
  br i1 %cmp70, label %do.body68.cleanup.sink.split_crit_edge, label %do.body68.cleanup_crit_edge

do.body68.cleanup_crit_edge:                      ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body68.cleanup.sink.split_crit_edge:           ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %do.body68.cleanup.sink.split_crit_edge, %do.body9.cleanup.sink.split_crit_edge
  %call77 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.58) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.body68.cleanup_crit_edge, %do.body9.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @lbtf_op_get_survey(ptr nocapture noundef readonly %hw, i32 noundef %idx, ptr nocapture noundef writeonly %survey) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %idx)
  %cmp.not = icmp eq i32 %idx, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %chandef = getelementptr inbounds %struct.ieee80211_conf, ptr %hw, i32 0, i32 7
  %2 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chandef, align 4
  %4 = ptrtoint ptr %survey to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %survey, align 8
  %filled = getelementptr inbounds %struct.survey_info, ptr %survey, i32 0, i32 8
  %5 = ptrtoint ptr %filled to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %filled, align 8
  %noise = getelementptr inbounds %struct.lbtf_private, ptr %1, i32 0, i32 38
  %6 = ptrtoint ptr %noise to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %noise, align 4
  %noise3 = getelementptr inbounds %struct.survey_info, ptr %survey, i32 0, i32 9
  %8 = ptrtoint ptr %noise3 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %noise3, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lbtf_set_mac_control(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lbtf_set_mode(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lbtf_set_mac_address(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lbtf_beacon_ctrl(ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lbtf_set_bssid(ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lbtf_set_channel(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lbtf_cmd_set_mac_multicast_addr(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @command_timer_fn(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @lbtf_debug, align 4
  %and = and i32 %0, 16385
  call void @__sanitizer_cov_trace_const_cmp4(i32 16385, i32 %and)
  %cmp = icmp eq i32 %and, 16385
  br i1 %cmp, label %do.end, label %entry.do.body6_crit_edge

entry.do.body6_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.71) #12
  br label %do.body6

do.body6:                                         ; preds = %do.end, %entry.do.body6_crit_edge
  %driver_lock = getelementptr i8, ptr %t, i32 -44
  %call10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %driver_lock) #9
  %cur_cmd = getelementptr i8, ptr %t, i32 -64
  %1 = ptrtoint ptr %cur_cmd to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cur_cmd, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %do.end18, label %do.end24

do.end18:                                         ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #11
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73) #12
  br label %out

do.end24:                                         ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #11
  %cmdbuf = getelementptr inbounds %struct.cmd_ctrl_node, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %cmdbuf to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cmdbuf, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %6 = load i16, ptr %4, align 1
  %7 = tail call i16 @llvm.bswap.i16(i16 %6)
  %conv27 = zext i16 %7 to i32
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, i32 noundef %conv27) #12
  %cmd_timed_out = getelementptr i8, ptr %t, i32 52
  %8 = ptrtoint ptr %cmd_timed_out to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %cmd_timed_out, align 4
  %9 = load ptr, ptr @lbtf_wq, align 4
  %cmd_work = getelementptr i8, ptr %t, i32 -260
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %9, ptr noundef %cmd_work) #9
  br label %out

out:                                              ; preds = %do.end24, %do.end18
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %driver_lock, i32 noundef %call10) #9
  %10 = load i32, ptr @lbtf_debug, align 4
  %and32 = and i32 %10, 16386
  call void @__sanitizer_cov_trace_const_cmp4(i32 16386, i32 %and32)
  %cmp33 = icmp eq i32 %and32, 16386
  br i1 %cmp33, label %do.end38, label %out.do.end43_crit_edge

out.do.end43_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end43

do.end38:                                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.71) #12
  br label %do.end43

do.end43:                                         ; preds = %do.end38, %out.do.end43_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lbtf_allocate_cmd_buffer(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lbtf_process_rx_command(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lbtf_complete_command(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lbtf_execute_next_command(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lbtf_free_cmd_buffer(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_beacon_get_tim(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 103)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 103)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !9, !10, !11, !13, !14, !15, !17, !18, !19, !21, !23, !24, !25, !27, !29, !30, !31, !33, !34, !36, !37, !39, !40, !41, !43, !44, !45, !46, !47, !49, !50, !51, !53, !55, !56, !57, !59, !60, !62, !64, !66, !68, !69, !70, !72, !73, !75, !77, !79, !81, !83, !84, !86, !88, !89, !91, !93, !94, !95, !96, !97, !98, !100, !102, !103, !104, !106, !107, !109, !110, !111, !113, !114, !116, !117, !118, !120, !121, !123, !124, !125, !127, !128, !130, !131, !132, !134, !135, !137, !138, !139, !141, !142, !144, !145, !146, !148, !149, !151, !152, !154, !155, !156, !158, !159, !161, !162, !164, !165, !167, !168, !170, !171, !172, !174, !175, !176, !178, !179, !180, !182, !183, !185, !187, !189, !190, !192, !193, !194, !196, !197, !199, !200, !201, !203, !204, !206, !207, !209, !211, !212, !213, !215, !216, !218, !219, !221, !222, !223, !225, !226, !228, !229, !230, !232, !234, !235, !236, !238}
!llvm.module.flags = !{!239, !240, !241, !242, !243, !244, !245, !246}
!llvm.ident = !{!247}

!0 = !{ptr @__ksymtab_lbtf_debug, !1, !"__ksymtab_lbtf_debug", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/marvell/libertas_tf/main.c", i32 21, i32 1}
!2 = !{ptr @__param_libertas_tf_debug, !3, !"__param_libertas_tf_debug", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/marvell/libertas_tf/main.c", i32 22, i32 1}
!4 = !{ptr @__UNIQUE_ID_libertas_tf_debugtype349, !3, !"__UNIQUE_ID_libertas_tf_debugtype349", i1 false, i1 false}
!5 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/net/wireless/marvell/libertas_tf/main.c", i32 495, i32 2}
!7 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @lbtf_rx._entry, !6, !"_entry", i1 false, i1 false}
!10 = !{ptr @lbtf_rx._entry_ptr, !6, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/marvell/libertas_tf/main.c", i32 498, i32 3}
!13 = !{ptr @lbtf_rx._entry.3, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @lbtf_rx._entry_ptr.5, !12, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/marvell/libertas_tf/main.c", i32 532, i32 2}
!17 = !{ptr @lbtf_rx._entry.6, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @lbtf_rx._entry_ptr.8, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/wireless/marvell/libertas_tf/main.c", i32 534, i32 28}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/marvell/libertas_tf/main.c", i32 540, i32 2}
!23 = !{ptr @lbtf_rx._entry.10, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @lbtf_rx._entry_ptr.12, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @__ksymtab_lbtf_rx, !26, !"__ksymtab_lbtf_rx", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/marvell/libertas_tf/main.c", i32 543, i32 1}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/wireless/marvell/libertas_tf/main.c", i32 556, i32 2}
!29 = !{ptr @lbtf_add_card._entry, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @lbtf_add_card._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @lbtf_add_card.__key, !32, !"__key", i1 false, i1 false}
!32 = !{!"../drivers/net/wireless/marvell/libertas_tf/main.c", i32 592, i32 2}
!33 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @lbtf_add_card.__key.15, !35, !"__key", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/marvell/libertas_tf/main.c", i32 593, i32 2}
!36 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/wireless/marvell/libertas_tf/main.c", i32 596, i32 3}
!39 = !{ptr @lbtf_add_card._entry.17, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @lbtf_add_card._entry_ptr.19, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.21, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/wireless/marvell/libertas_tf/main.c", i32 618, i32 2}
!43 = !{ptr @.str.22, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.23, !42, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @lbtf_add_card._entry.20, !42, !"_entry", i1 false, i1 false}
!46 = !{ptr @lbtf_add_card._entry_ptr.24, !42, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.26, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/wireless/marvell/libertas_tf/main.c", i32 627, i32 2}
!49 = !{ptr @lbtf_add_card._entry.25, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @lbtf_add_card._entry_ptr.27, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @__ksymtab_lbtf_add_card, !52, !"__ksymtab_lbtf_add_card", i1 false, i1 false}
!52 = !{!"../drivers/net/wireless/marvell/libertas_tf/main.c", i32 630, i32 1}
!53 = !{ptr @.str.28, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/wireless/marvell/libertas_tf/main.c", i32 637, i32 2}
!55 = !{ptr @lbtf_remove_card._entry, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @lbtf_remove_card._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @lbtf_remove_card._entry.29, !58, !"_entry", i1 false, i1 false}
!58 = !{!"../drivers/net/wireless/marvell/libertas_tf/main.c", i32 646, i32 2}
!59 = !{ptr @lbtf_remove_card._entry_ptr.30, !58, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @__ksymtab_lbtf_remove_card, !61, !"__ksymtab_lbtf_remove_card", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/marvell/libertas_tf/main.c", i32 649, i32 1}
!62 = !{ptr @__ksymtab_lbtf_send_tx_feedback, !63, !"__ksymtab_lbtf_send_tx_feedback", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/marvell/libertas_tf/main.c", i32 672, i32 1}
!64 = !{ptr @__ksymtab_lbtf_bcn_sent, !65, !"__ksymtab_lbtf_bcn_sent", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/marvell/libertas_tf/main.c", i32 701, i32 1}
!66 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/marvell/libertas_tf/main.c", i32 717, i32 2}
!68 = !{ptr @lbtf_exit_module._entry, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @lbtf_exit_module._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @lbtf_exit_module._entry.32, !71, !"_entry", i1 false, i1 false}
!71 = !{!"../drivers/net/wireless/marvell/libertas_tf/main.c", i32 719, i32 2}
!72 = !{ptr @lbtf_exit_module._entry_ptr.33, !71, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @__initcall__kmod_libertas_tf__355_722_lbtf_init_module6, !74, !"__initcall__kmod_libertas_tf__355_722_lbtf_init_module6", i1 false, i1 false}
!74 = !{!"../drivers/net/wireless/marvell/libertas_tf/main.c", i32 722, i32 1}
!75 = !{ptr @__exitcall_lbtf_exit_module, !76, !"__exitcall_lbtf_exit_module", i1 false, i1 false}
!76 = !{!"../drivers/net/wireless/marvell/libertas_tf/main.c", i32 723, i32 1}
!77 = !{ptr @__UNIQUE_ID_description356, !78, !"__UNIQUE_ID_description356", i1 false, i1 false}
!78 = !{!"../drivers/net/wireless/marvell/libertas_tf/main.c", i32 725, i32 1}
!79 = !{ptr @__UNIQUE_ID_author357, !80, !"__UNIQUE_ID_author357", i1 false, i1 false}
!80 = !{!"../drivers/net/wireless/marvell/libertas_tf/main.c", i32 726, i32 1}
!81 = !{ptr @__UNIQUE_ID_file358, !82, !"__UNIQUE_ID_file358", i1 false, i1 false}
!82 = !{!"../drivers/net/wireless/marvell/libertas_tf/main.c", i32 727, i32 1}
!83 = !{ptr @__UNIQUE_ID_license359, !82, !"__UNIQUE_ID_license359", i1 false, i1 false}
!84 = !{ptr @lbtf_debug, !85, !"lbtf_debug", i1 false, i1 false}
!85 = !{!"../drivers/net/wireless/marvell/libertas_tf/main.c", i32 20, i32 14}
!86 = !{ptr @lbtf_wq, !87, !"lbtf_wq", i1 false, i1 false}
!87 = !{!"../drivers/net/wireless/marvell/libertas_tf/main.c", i32 24, i32 26}
!88 = !{ptr @__param_str_libertas_tf_debug, !3, !"__param_str_libertas_tf_debug", i1 false, i1 false}
!89 = !{ptr @.str.34, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/wireless/marvell/libertas_tf/deb_defs.h", i32 96, i32 42}
!91 = !{ptr @.str.35, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/wireless/marvell/libertas_tf/deb_defs.h", i32 97, i32 3}
!93 = !{ptr @.str.36, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @.str.37, !92, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @.str.38, !92, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @lbtf_deb_hex.__UNIQUE_ID_ddebug348, !92, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!97 = !{ptr @.str.39, !92, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @lbtf_ops, !99, !"lbtf_ops", i1 false, i1 false}
!99 = !{!"../drivers/net/wireless/marvell/libertas_tf/main.c", i32 475, i32 35}
!100 = !{ptr @.str.40, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/wireless/marvell/libertas_tf/main.c", i32 258, i32 2}
!102 = !{ptr @lbtf_op_start._entry, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @lbtf_op_start._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @lbtf_op_start._entry.41, !105, !"_entry", i1 false, i1 false}
!105 = !{!"../drivers/net/wireless/marvell/libertas_tf/main.c", i32 266, i32 2}
!106 = !{ptr @lbtf_op_start._entry_ptr.42, !105, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.43, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/wireless/marvell/libertas_tf/main.c", i32 278, i32 2}
!109 = !{ptr @lbtf_op_stop._entry, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @lbtf_op_stop._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @lbtf_op_stop._entry.44, !112, !"_entry", i1 false, i1 false}
!112 = !{!"../drivers/net/wireless/marvell/libertas_tf/main.c", i32 296, i32 2}
!113 = !{ptr @lbtf_op_stop._entry_ptr.45, !112, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.46, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/wireless/marvell/libertas_tf/main.c", i32 303, i32 2}
!116 = !{ptr @lbtf_op_add_interface._entry, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @lbtf_op_add_interface._entry_ptr, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @lbtf_op_add_interface._entry.47, !119, !"_entry", i1 false, i1 false}
!119 = !{!"../drivers/net/wireless/marvell/libertas_tf/main.c", i32 321, i32 2}
!120 = !{ptr @lbtf_op_add_interface._entry_ptr.48, !119, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.49, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/wireless/marvell/libertas_tf/main.c", i32 329, i32 2}
!123 = !{ptr @lbtf_op_remove_interface._entry, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @lbtf_op_remove_interface._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @lbtf_op_remove_interface._entry.50, !126, !"_entry", i1 false, i1 false}
!126 = !{!"../drivers/net/wireless/marvell/libertas_tf/main.c", i32 337, i32 2}
!127 = !{ptr @lbtf_op_remove_interface._entry_ptr.51, !126, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.52, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/wireless/marvell/libertas_tf/main.c", i32 344, i32 2}
!130 = !{ptr @lbtf_op_config._entry, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @lbtf_op_config._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @lbtf_op_config._entry.53, !133, !"_entry", i1 false, i1 false}
!133 = !{!"../drivers/net/wireless/marvell/libertas_tf/main.c", i32 350, i32 2}
!134 = !{ptr @lbtf_op_config._entry_ptr.54, !133, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.55, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/net/wireless/marvell/libertas_tf/main.c", i32 424, i32 2}
!137 = !{ptr @lbtf_op_bss_info_changed._entry, !136, !"_entry", i1 false, i1 false}
!138 = !{ptr @lbtf_op_bss_info_changed._entry_ptr, !136, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @lbtf_op_bss_info_changed._entry.56, !140, !"_entry", i1 false, i1 false}
!140 = !{!"../drivers/net/wireless/marvell/libertas_tf/main.c", i32 456, i32 2}
!141 = !{ptr @lbtf_op_bss_info_changed._entry_ptr.57, !140, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.58, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/net/wireless/marvell/libertas_tf/main.c", i32 382, i32 2}
!144 = !{ptr @lbtf_op_configure_filter._entry, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @lbtf_op_configure_filter._entry_ptr, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @lbtf_op_configure_filter._entry.59, !147, !"_entry", i1 false, i1 false}
!147 = !{!"../drivers/net/wireless/marvell/libertas_tf/main.c", i32 388, i32 3}
!148 = !{ptr @lbtf_op_configure_filter._entry_ptr.60, !147, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @lbtf_op_configure_filter._entry.61, !150, !"_entry", i1 false, i1 false}
!150 = !{!"../drivers/net/wireless/marvell/libertas_tf/main.c", i32 414, i32 2}
!151 = !{ptr @lbtf_op_configure_filter._entry_ptr.62, !150, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.63, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/net/wireless/marvell/libertas_tf/main.c", i32 153, i32 2}
!154 = !{ptr @lbtf_init_adapter._entry, !153, !"_entry", i1 false, i1 false}
!155 = !{ptr @lbtf_init_adapter._entry_ptr, !153, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @lbtf_init_adapter.__key, !157, !"__key", i1 false, i1 false}
!157 = !{!"../drivers/net/wireless/marvell/libertas_tf/main.c", i32 155, i32 2}
!158 = !{ptr @.str.64, !157, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @lbtf_init_adapter.__key.65, !160, !"__key", i1 false, i1 false}
!160 = !{!"../drivers/net/wireless/marvell/libertas_tf/main.c", i32 158, i32 2}
!161 = !{ptr @.str.66, !160, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @lbtf_init_adapter.__key.67, !163, !"__key", i1 false, i1 false}
!163 = !{!"../drivers/net/wireless/marvell/libertas_tf/main.c", i32 163, i32 2}
!164 = !{ptr @.str.68, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @lbtf_init_adapter._entry.69, !166, !"_entry", i1 false, i1 false}
!166 = !{!"../drivers/net/wireless/marvell/libertas_tf/main.c", i32 169, i32 2}
!167 = !{ptr @lbtf_init_adapter._entry_ptr.70, !166, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.71, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/net/wireless/marvell/libertas_tf/main.c", i32 131, i32 2}
!170 = !{ptr @command_timer_fn._entry, !169, !"_entry", i1 false, i1 false}
!171 = !{ptr @command_timer_fn._entry_ptr, !169, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.73, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/net/wireless/marvell/libertas_tf/main.c", i32 136, i32 3}
!174 = !{ptr @command_timer_fn._entry.72, !173, !"_entry", i1 false, i1 false}
!175 = !{ptr @command_timer_fn._entry_ptr.74, !173, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.76, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/net/wireless/marvell/libertas_tf/main.c", i32 141, i32 2}
!178 = !{ptr @command_timer_fn._entry.75, !177, !"_entry", i1 false, i1 false}
!179 = !{ptr @command_timer_fn._entry_ptr.77, !177, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @command_timer_fn._entry.78, !181, !"_entry", i1 false, i1 false}
!181 = !{!"../drivers/net/wireless/marvell/libertas_tf/main.c", i32 148, i32 2}
!182 = !{ptr @command_timer_fn._entry_ptr.79, !181, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @lbtf_channels, !184, !"lbtf_channels", i1 false, i1 false}
!184 = !{!"../drivers/net/wireless/marvell/libertas_tf/main.c", i32 26, i32 39}
!185 = !{ptr @lbtf_rates, !186, !"lbtf_rates", i1 false, i1 false}
!186 = !{!"../drivers/net/wireless/marvell/libertas_tf/main.c", i32 44, i32 36}
!187 = !{ptr @skb_queue_head_init.__key, !188, !"__key", i1 false, i1 false}
!188 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!189 = !{ptr @.str.80, !188, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @.str.81, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/net/wireless/marvell/libertas_tf/main.c", i32 87, i32 2}
!192 = !{ptr @lbtf_cmd_work._entry, !191, !"_entry", i1 false, i1 false}
!193 = !{ptr @lbtf_cmd_work._entry_ptr, !191, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @lbtf_cmd_work._entry.82, !195, !"_entry", i1 false, i1 false}
!195 = !{!"../drivers/net/wireless/marvell/libertas_tf/main.c", i32 120, i32 2}
!196 = !{ptr @lbtf_cmd_work._entry_ptr.83, !195, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @.str.84, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/net/wireless/marvell/libertas_tf/main.c", i32 206, i32 2}
!199 = !{ptr @lbtf_tx_work._entry, !198, !"_entry", i1 false, i1 false}
!200 = !{ptr @lbtf_tx_work._entry_ptr, !198, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @lbtf_tx_work._entry.85, !202, !"_entry", i1 false, i1 false}
!202 = !{!"../drivers/net/wireless/marvell/libertas_tf/main.c", i32 215, i32 3}
!203 = !{ptr @lbtf_tx_work._entry_ptr.86, !202, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @lbtf_tx_work._entry.87, !205, !"_entry", i1 false, i1 false}
!205 = !{!"../drivers/net/wireless/marvell/libertas_tf/main.c", i32 225, i32 3}
!206 = !{ptr @lbtf_tx_work._entry_ptr.88, !205, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @.str.89, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/net/wireless/marvell/libertas_tf/main.c", i32 240, i32 28}
!209 = !{ptr @.str.91, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/net/wireless/marvell/libertas_tf/main.c", i32 249, i32 3}
!211 = !{ptr @lbtf_tx_work._entry.90, !210, !"_entry", i1 false, i1 false}
!212 = !{ptr @lbtf_tx_work._entry_ptr.92, !210, !"_entry_ptr", i1 false, i1 false}
!213 = !{ptr @lbtf_tx_work._entry.93, !214, !"_entry", i1 false, i1 false}
!214 = !{!"../drivers/net/wireless/marvell/libertas_tf/main.c", i32 251, i32 2}
!215 = !{ptr @lbtf_tx_work._entry_ptr.94, !214, !"_entry_ptr", i1 false, i1 false}
!216 = distinct !{null, !217, !"__already_done", i1 false, i1 false}
!217 = !{!"../include/net/mac80211.h", i32 2737, i32 6}
!218 = !{ptr @.str.95, !217, !"<string literal>", i1 false, i1 false}
!219 = !{ptr @.str.96, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/net/wireless/marvell/libertas_tf/main.c", i32 175, i32 2}
!221 = !{ptr @lbtf_free_adapter._entry, !220, !"_entry", i1 false, i1 false}
!222 = !{ptr @lbtf_free_adapter._entry_ptr, !220, !"_entry_ptr", i1 false, i1 false}
!223 = !{ptr @lbtf_free_adapter._entry.97, !224, !"_entry", i1 false, i1 false}
!224 = !{!"../drivers/net/wireless/marvell/libertas_tf/main.c", i32 178, i32 2}
!225 = !{ptr @lbtf_free_adapter._entry_ptr.98, !224, !"_entry_ptr", i1 false, i1 false}
!226 = !{ptr @.str.99, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/net/wireless/marvell/libertas_tf/main.c", i32 705, i32 2}
!228 = !{ptr @lbtf_init_module._entry, !227, !"_entry", i1 false, i1 false}
!229 = !{ptr @lbtf_init_module._entry_ptr, !227, !"_entry_ptr", i1 false, i1 false}
!230 = !{ptr @.str.100, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/net/wireless/marvell/libertas_tf/main.c", i32 706, i32 28}
!232 = !{ptr @.str.102, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/net/wireless/marvell/libertas_tf/main.c", i32 708, i32 3}
!234 = !{ptr @lbtf_init_module._entry.101, !233, !"_entry", i1 false, i1 false}
!235 = !{ptr @lbtf_init_module._entry_ptr.103, !233, !"_entry_ptr", i1 false, i1 false}
!236 = !{ptr @lbtf_init_module._entry.104, !237, !"_entry", i1 false, i1 false}
!237 = !{!"../drivers/net/wireless/marvell/libertas_tf/main.c", i32 711, i32 2}
!238 = !{ptr @lbtf_init_module._entry_ptr.105, !237, !"_entry_ptr", i1 false, i1 false}
!239 = !{i32 1, !"wchar_size", i32 2}
!240 = !{i32 1, !"min_enum_size", i32 4}
!241 = !{i32 8, !"branch-target-enforcement", i32 0}
!242 = !{i32 8, !"sign-return-address", i32 0}
!243 = !{i32 8, !"sign-return-address-all", i32 0}
!244 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!245 = !{i32 7, !"uwtable", i32 1}
!246 = !{i32 7, !"frame-pointer", i32 2}
!247 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!248 = !{i64 2148176488, i64 2148176493, i64 2148176506, i64 2148176550, i64 2148176584, i64 2148176605}
!249 = !{!"branch_weights", i32 2000, i32 1}
!250 = !{i64 2157401253, i64 2157401765, i64 2157401290, i64 2157401346, i64 2157401380, i64 2157401404, i64 2157401445, i64 2157401466, i64 2157401494, i64 2157401528}
!251 = !{i8 0, i8 2}
