; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/intersil/p54/main.c_pt.bc'
source_filename = "../drivers/net/wireless/intersil/p54/main.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+p54_init_common\22, \22a\22\09"
module asm "\09.weak\09__crc_p54_init_common\09\09\09\09"
module asm "\09.long\09__crc_p54_init_common\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_p54_init_common:\09\09\09\09\09"
module asm "\09.asciz \09\22p54_init_common\22\09\09\09\09\09"
module asm "__kstrtabns_p54_init_common:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+p54_register_common\22, \22a\22\09"
module asm "\09.weak\09__crc_p54_register_common\09\09\09\09"
module asm "\09.long\09__crc_p54_register_common\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_p54_register_common:\09\09\09\09\09"
module asm "\09.asciz \09\22p54_register_common\22\09\09\09\09\09"
module asm "__kstrtabns_p54_register_common:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+p54_free_common\22, \22a\22\09"
module asm "\09.weak\09__crc_p54_free_common\09\09\09\09"
module asm "\09.long\09__crc_p54_free_common\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_p54_free_common:\09\09\09\09\09"
module asm "\09.asciz \09\22p54_free_common\22\09\09\09\09\09"
module asm "__kstrtabns_p54_free_common:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+p54_unregister_common\22, \22a\22\09"
module asm "\09.weak\09__crc_p54_unregister_common\09\09\09\09"
module asm "\09.long\09__crc_p54_unregister_common\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_p54_unregister_common:\09\09\09\09\09"
module asm "\09.asciz \09\22p54_unregister_common\22\09\09\09\09\09"
module asm "__kstrtabns_p54_unregister_common:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.97 }
%union.anon.97 = type { ptr }
%struct.ieee80211_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.atomic_t = type { i32 }
%struct.ieee80211_mgmt = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, %union.anon.128 }
%union.anon.128 = type { %struct.anon.134, [16 x i8] }
%struct.anon.134 = type { i16, i16, [6 x i8], [0 x i8] }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.161, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.anon.161 = type { i32, i16 }
%struct.p54_common = type { ptr, ptr, ptr, ptr, ptr, %struct.sk_buff_head, %struct.sk_buff_head, %struct.mutex, i8, i32, i32, i16, i8, i8, i32, i32, i32, i8, i8, %struct.spinlock, [8 x %struct.p54_tx_queue_stats], [8 x %struct.p54_edcf_queue_param], i16, i8, i8, i32, ptr, ptr, ptr, i32, %struct.completion, i8, %struct.anon.165, i32, ptr, i32, ptr, ptr, ptr, [6 x ptr], [6 x i8], [6 x i8], [4 x [6 x i8]], i16, i32, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i32, %struct.completion, i8, i8, ptr, [4 x %struct.p54_led_dev], %struct.delayed_work, i16, %struct.ieee80211_low_level_stats, %struct.delayed_work, ptr, %struct.completion, %struct.mutex }
%struct.sk_buff_head = type { %union.anon.64, i32, %struct.spinlock }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.p54_tx_queue_stats = type { i32, i32, i32 }
%struct.p54_edcf_queue_param = type { i16, i16, i16, i16 }
%struct.anon.165 = type { i32, i32, i32, i32, i64, i64, i64, i64 }
%struct.p54_led_dev = type { ptr, %struct.led_classdev, [32 x i8], i32, i32, i32 }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.ieee80211_low_level_stats = type { i32, i32, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.124, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.possible_net_t = type { ptr }
%struct.anon.124 = type { i64, i64, i8 }
%struct.ieee80211_vif = type { i32, %struct.ieee80211_bss_conf, [6 x i8], i8, i8, i8, i8, [4 x i8], ptr, ptr, i32, i32, ptr, i8, i8, [4 x i8], i8, i8, ptr, [0 x i8] }
%struct.ieee80211_bss_conf = type { ptr, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i16, i16, i64, i32, i8, i32, ptr, [6 x i32], i16, i32, i32, i32, i32, %struct.cfg80211_chan_def, %struct.ieee80211_mu_group_data, [4 x i32], i32, i8, i8, i8, [32 x i8], i32, i8, i32, i32, %struct.ieee80211_p2p_noa_attr, i8, i16, i8, i8, ptr, i8, [6 x i8], i8, i8, i8, i8, %struct.anon.162, %struct.ieee80211_he_obss_pd, %struct.cfg80211_he_bss_color, %struct.ieee80211_fils_discovery, i32, i8, %struct.cfg80211_bitrate_mask, i32, [8 x %struct.ieee80211_tx_pwr_env], i8, i8 }
%struct.ieee80211_mu_group_data = type { [8 x i8], [16 x i8] }
%struct.ieee80211_p2p_noa_attr = type { i8, i8, [4 x %struct.ieee80211_p2p_noa_desc] }
%struct.ieee80211_p2p_noa_desc = type <{ i8, i32, i32, i32 }>
%struct.anon.162 = type { i32, i16 }
%struct.ieee80211_he_obss_pd = type { i8, i8, i8, i8, i8, [8 x i8], [8 x i8] }
%struct.cfg80211_he_bss_color = type { i8, i8, i8 }
%struct.ieee80211_fils_discovery = type { i32, i32 }
%struct.cfg80211_bitrate_mask = type { [6 x %struct.anon.163] }
%struct.anon.163 = type { i32, [10 x i8], [8 x i16], [8 x i16], i32, i32, i32 }
%struct.ieee80211_tx_pwr_env = type { i8, [8 x i8] }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.survey_info = type { ptr, i64, i64, i64, i64, i64, i64, i64, i32, i8 }
%struct.ieee80211_tx_control = type { ptr }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.ieee80211_sta = type <{ [6 x i32], [6 x i8], i16, %struct.ieee80211_sta_ht_cap, [2 x i8], %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_he_cap, %struct.ieee80211_he_6ghz_capa, i8, i16, i8, i8, i8, i8, i32, i32, ptr, i8, i8, i8, i8, i16, i8, i8, i16, [16 x i16], [2 x i8], %struct.ieee80211_sta_txpwr, [17 x ptr], [0 x i8] }>
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_he_cap = type <{ i8, %struct.ieee80211_he_cap_elem, %struct.ieee80211_he_mcs_nss_supp, [25 x i8] }>
%struct.ieee80211_he_cap_elem = type { [6 x i8], [11 x i8] }
%struct.ieee80211_he_mcs_nss_supp = type { i16, i16, i16, i16, i16, i16 }
%struct.ieee80211_he_6ghz_capa = type { i16 }
%struct.ieee80211_sta_txpwr = type { i16, i32 }
%struct.ieee80211_key_conf = type { %struct.atomic64_t, i32, i8, i8, i8, i8, i16, i8, [0 x i8] }
%struct.atomic64_t = type { i64 }
%struct.ieee80211_tx_queue_params = type { i16, i16, i16, i8, i8, i8, i8, %struct.ieee80211_he_mu_edca_param_ac_rec }
%struct.ieee80211_he_mu_edca_param_ac_rec = type { i8, i8, i8 }

@__param_str_nohwcrypt = internal constant [20 x i8] c"p54common.nohwcrypt\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@modparam_nohwcrypt = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_nohwcrypt = internal constant %struct.kernel_param { ptr @__param_str_nohwcrypt, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.97 { ptr @modparam_nohwcrypt } }, section "__param", align 4
@__UNIQUE_ID_nohwcrypttype348 = internal constant [34 x i8] c"p54common.parmtype=nohwcrypt:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_nohwcrypt349 = internal constant [54 x i8] c"p54common.parm=nohwcrypt:Disable hardware encryption.\00", section ".modinfo", align 1
@__UNIQUE_ID_author350 = internal constant [54 x i8] c"p54common.author=Michael Wu <flamingice@sourmilk.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description351 = internal constant [50 x i8] c"p54common.description=Softmac Prism54 common code\00", section ".modinfo", align 1
@__UNIQUE_ID_file352 = internal constant [59 x i8] c"p54common.file=drivers/net/wireless/intersil/p54/p54common\00", section ".modinfo", align 1
@__UNIQUE_ID_license353 = internal constant [22 x i8] c"p54common.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias354 = internal constant [30 x i8] c"p54common.alias=prism54common\00", section ".modinfo", align 1
@p54_ops = internal constant { %struct.ieee80211_ops, [124 x i8] } { %struct.ieee80211_ops { ptr @p54_tx_80211, ptr @p54_start, ptr @p54_stop, ptr null, ptr null, ptr null, ptr @p54_add_interface, ptr null, ptr @p54_remove_interface, ptr @p54_config, ptr @p54_bss_info_changed, ptr null, ptr null, ptr @p54_prepare_multicast, ptr @p54_configure_filter, ptr null, ptr @p54_set_tim, ptr @p54_set_key, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @p54_get_stats, ptr null, ptr null, ptr null, ptr @p54_sta_add_remove, ptr @p54_sta_add_remove, ptr null, ptr @p54_sta_notify, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @p54_conf_tx, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @p54_get_survey, ptr null, ptr @p54_set_coverage_class, ptr null, ptr null, ptr @p54_flush, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [124 x i8] zeroinitializer }, align 32
@p54_init_common.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&priv->tx_stats_lock\00", [43 x i8] zeroinitializer }, align 32
@p54_init_common.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&priv->conf_mutex\00", [46 x i8] zeroinitializer }, align 32
@p54_init_common.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&priv->eeprom_mutex\00", [44 x i8] zeroinitializer }, align 32
@p54_init_common.__key.5 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"(work_completion)(&(&priv->work)->work)\00", [56 x i8] zeroinitializer }, align 32
@p54_init_common.__key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&(&priv->work)->timer\00", [42 x i8] zeroinitializer }, align 32
@__kstrtab_p54_init_common = external dso_local constant [0 x i8], align 1
@__kstrtabns_p54_init_common = external dso_local constant [0 x i8], align 1
@__ksymtab_p54_init_common = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @p54_init_common to i32), ptr @__kstrtab_p54_init_common, ptr @__kstrtabns_p54_init_common }, section "___ksymtab_gpl+p54_init_common", align 4
@p54_register_common._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.11, i32 803, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Cannot register device (%d).\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"p54_register_common\00", [44 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/net/wireless/intersil/p54/main.c\00", [55 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@p54_register_common._entry_ptr = internal global ptr @p54_register_common._entry, section ".printk_index", align 4
@p54_register_common._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.10, ptr @.str.11, i32 816, ptr @.str.16, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"is registered as '%s'\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@p54_register_common._entry_ptr.17 = internal global ptr @p54_register_common._entry.14, section ".printk_index", align 4
@__kstrtab_p54_register_common = external dso_local constant [0 x i8], align 1
@__kstrtabns_p54_register_common = external dso_local constant [0 x i8], align 1
@__ksymtab_p54_register_common = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @p54_register_common to i32), ptr @__kstrtab_p54_register_common, ptr @__kstrtabns_p54_register_common }, section "___ksymtab_gpl+p54_register_common", align 4
@__kstrtab_p54_free_common = external dso_local constant [0 x i8], align 1
@__kstrtabns_p54_free_common = external dso_local constant [0 x i8], align 1
@__ksymtab_p54_free_common = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @p54_free_common to i32), ptr @__kstrtab_p54_free_common, ptr @__kstrtabns_p54_free_common }, section "___ksymtab_gpl+p54_free_common", align 4
@__kstrtab_p54_unregister_common = external dso_local constant [0 x i8], align 1
@__kstrtabns_p54_unregister_common = external dso_local constant [0 x i8], align 1
@__ksymtab_p54_unregister_common = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @p54_unregister_common to i32), ptr @__kstrtab_p54_unregister_common, ptr @__kstrtabns_p54_unregister_common }, section "___ksymtab_gpl+p54_unregister_common", align 4
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@p54_work.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 7]
@__sancov_gen_cov_switch_values.21 = internal global [6 x i64] [i64 4, i64 32, i64 1027073, i64 1027074, i64 1027076, i64 1027077]
@___asan_gen_.22 = private unnamed_addr constant [19 x i8] c"modparam_nohwcrypt\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 26, i32 13 }
@___asan_gen_.25 = private unnamed_addr constant [8 x i8] c"p54_ops\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 705, i32 35 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 740, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 782, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 783, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 787, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 803, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.83 = private constant [44 x i8] c"../drivers/net/wireless/intersil/p54/main.c\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 816, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 1984, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.94 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.95 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 87, i32 2 }
@llvm.compiler.used = appending global [39 x ptr] [ptr @__UNIQUE_ID_alias354, ptr @__UNIQUE_ID_author350, ptr @__UNIQUE_ID_description351, ptr @__UNIQUE_ID_file352, ptr @__UNIQUE_ID_license353, ptr @__UNIQUE_ID_nohwcrypt349, ptr @__UNIQUE_ID_nohwcrypttype348, ptr @__ksymtab_p54_free_common, ptr @__ksymtab_p54_init_common, ptr @__ksymtab_p54_register_common, ptr @__ksymtab_p54_unregister_common, ptr @__param_nohwcrypt, ptr @p54_register_common._entry, ptr @p54_register_common._entry.14, ptr @p54_register_common._entry_ptr, ptr @p54_register_common._entry_ptr.17, ptr @modparam_nohwcrypt, ptr @p54_ops, ptr @p54_init_common.__key, ptr @.str, ptr @p54_init_common.__key.1, ptr @.str.2, ptr @p54_init_common.__key.3, ptr @.str.4, ptr @p54_init_common.__key.5, ptr @.str.6, ptr @p54_init_common.__key.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @skb_queue_head_init.__key, ptr @.str.19, ptr @init_completion.__key, ptr @.str.20], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @modparam_nohwcrypt to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p54_ops to i32), i32 452, i32 576, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p54_init_common.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p54_init_common.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p54_init_common.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p54_init_common.__key.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p54_init_common.__key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p54_register_common._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p54_register_common._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @p54_find_ie(ptr nocapture noundef readonly %skb, i8 noundef zeroext %ie) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %1)
  %cmp = icmp ult i32 %1, 5
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %variable = getelementptr inbounds %struct.ieee80211_mgmt, ptr %3, i32 0, i32 6, i32 1, i32 2
  %add.ptr = getelementptr i8, ptr %3, i32 %1
  %cmp332 = icmp ult ptr %variable, %add.ptr
  br i1 %cmp332, label %if.end.while.body_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

while.body:                                       ; preds = %if.end16.while.body_crit_edge, %if.end.while.body_crit_edge
  %pos.033 = phi ptr [ %add.ptr19, %if.end16.while.body_crit_edge ], [ %variable, %if.end.while.body_crit_edge ]
  %add.ptr4 = getelementptr i8, ptr %pos.033, i32 2
  %arrayidx = getelementptr i8, ptr %pos.033, i32 1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %5 to i32
  %add.ptr5 = getelementptr i8, ptr %add.ptr4, i32 %conv
  %cmp6 = icmp ugt ptr %add.ptr5, %add.ptr
  br i1 %cmp6, label %while.body.cleanup_crit_edge, label %if.end9

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %while.body
  %6 = ptrtoint ptr %pos.033 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %pos.033, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %ie)
  %cmp13 = icmp eq i8 %7, %ie
  br i1 %cmp13, label %if.end9.cleanup_crit_edge, label %if.end16

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end16:                                         ; preds = %if.end9
  %add = add nuw nsw i32 %conv, 2
  %add.ptr19 = getelementptr i8, ptr %pos.033, i32 %add
  %cmp3 = icmp ult ptr %add.ptr19, %add.ptr
  br i1 %cmp3, label %if.end16.while.body_crit_edge, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end16.while.body_crit_edge:                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

cleanup:                                          ; preds = %if.end16.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %while.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ], [ null, %while.body.cleanup_crit_edge ], [ %pos.033, %if.end9.cleanup_crit_edge ], [ null, %if.end16.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @p54_init_common(i32 noundef %priv_data_len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @ieee80211_alloc_hw_nm(i32 noundef %priv_data_len, ptr noundef nonnull @p54_ops, ptr noundef null) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %p54_reset_stats.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

p54_reset_stats.exit:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %call.i, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %1, align 8
  %mode = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 46
  %3 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %mode, align 8
  %basic_rate_mask = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 49
  %4 = ptrtoint ptr %basic_rate_mask to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 351, ptr %basic_rate_mask, align 4
  %tx_stats_lock = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 19
  tail call void @__raw_spin_lock_init(ptr noundef %tx_stats_lock, ptr noundef nonnull @.str, ptr noundef nonnull @p54_init_common.__key, i16 noundef signext 3) #8
  %tx_queue = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 6
  %lock.i = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 6, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.19, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #8
  %5 = ptrtoint ptr %tx_queue to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %tx_queue, ptr %tx_queue, align 4
  %prev.i.i = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 6, i32 0, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %tx_queue, ptr %prev.i.i, align 4
  %qlen.i.i = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 6, i32 1
  %7 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %qlen.i.i, align 4
  %tx_pending = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 5
  %lock.i85 = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 5, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i85, ptr noundef nonnull @.str.19, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #8
  %8 = ptrtoint ptr %tx_pending to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %tx_pending, ptr %tx_pending, align 4
  %prev.i.i86 = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 5, i32 0, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i86 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %tx_pending, ptr %prev.i.i86, align 4
  %qlen.i.i87 = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 5, i32 1
  %10 = ptrtoint ptr %qlen.i.i87 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %qlen.i.i87, align 4
  %flags.i = getelementptr inbounds %struct.ieee80211_hw, ptr %call.i, i32 0, i32 4
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags.i, align 4
  %or.i.i97 = or i32 %12, 68370
  store i32 %or.i.i97, ptr %flags.i, align 4
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %call.i, i32 0, i32 1
  %13 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %wiphy, align 8
  %interface_modes = getelementptr inbounds %struct.wiphy, ptr %14, i32 0, i32 9
  %15 = ptrtoint ptr %interface_modes to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 142, ptr %interface_modes, align 4
  %beacon_req_id = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 55
  %16 = ptrtoint ptr %beacon_req_id to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %beacon_req_id, align 8
  %limit = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 20, i32 0, i32 1
  %17 = ptrtoint ptr %limit to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %limit, align 4
  %limit5 = getelementptr %struct.p54_common, ptr %1, i32 0, i32 20, i32 1, i32 1
  %18 = ptrtoint ptr %limit5 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %limit5, align 4
  %limit8 = getelementptr %struct.p54_common, ptr %1, i32 0, i32 20, i32 2, i32 1
  %19 = ptrtoint ptr %limit8 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 3, ptr %limit8, align 4
  %limit11 = getelementptr %struct.p54_common, ptr %1, i32 0, i32 20, i32 3, i32 1
  %20 = ptrtoint ptr %limit11 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 3, ptr %limit11, align 4
  %limit14 = getelementptr %struct.p54_common, ptr %1, i32 0, i32 20, i32 4, i32 1
  %21 = ptrtoint ptr %limit14 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 5, ptr %limit14, align 4
  %queues = getelementptr inbounds %struct.ieee80211_hw, ptr %call.i, i32 0, i32 11
  %22 = ptrtoint ptr %queues to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 1, ptr %queues, align 4
  %noise = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 33
  %23 = ptrtoint ptr %noise to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -94, ptr %noise, align 8
  %max_rates = getelementptr inbounds %struct.ieee80211_hw, ptr %call.i, i32 0, i32 14
  %24 = ptrtoint ptr %max_rates to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 4, ptr %max_rates, align 1
  %max_rate_tries = getelementptr inbounds %struct.ieee80211_hw, ptr %call.i, i32 0, i32 16
  %25 = ptrtoint ptr %max_rate_tries to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 7, ptr %max_rate_tries, align 1
  %extra_tx_headroom = getelementptr inbounds %struct.ieee80211_hw, ptr %call.i, i32 0, i32 5
  %26 = ptrtoint ptr %extra_tx_headroom to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 60, ptr %extra_tx_headroom, align 4
  %27 = load ptr, ptr %wiphy, align 8
  %flags = getelementptr inbounds %struct.wiphy, ptr %27, i32 0, i32 11
  %28 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flags, align 32
  %and = and i32 %29, -17
  store i32 %and, ptr %flags, align 32
  %conf_mutex = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 7
  tail call void @__mutex_init(ptr noundef %conf_mutex, ptr noundef nonnull @.str.2, ptr noundef nonnull @p54_init_common.__key.1) #8
  %eeprom_mutex = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 67
  tail call void @__mutex_init(ptr noundef %eeprom_mutex, ptr noundef nonnull @.str.4, ptr noundef nonnull @p54_init_common.__key.3) #8
  %stat_comp = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 30
  %30 = ptrtoint ptr %stat_comp to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %stat_comp, align 4
  %wait.i = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 30, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.20, ptr noundef nonnull @init_completion.__key) #8
  %eeprom_comp = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 66
  %31 = ptrtoint ptr %eeprom_comp to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %eeprom_comp, align 4
  %wait.i98 = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 66, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i98, ptr noundef nonnull @.str.20, ptr noundef nonnull @init_completion.__key) #8
  %beacon_comp = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 56
  %32 = ptrtoint ptr %beacon_comp to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %beacon_comp, align 4
  %wait.i99 = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 56, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i99, ptr noundef nonnull @.str.20, ptr noundef nonnull @init_completion.__key) #8
  %work = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 64
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #8
  %33 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 64, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.6, ptr noundef nonnull @p54_init_common.__key.5, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry31 = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 64, i32 0, i32 1
  %34 = ptrtoint ptr %entry31 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %entry31, ptr %entry31, align 4
  %prev.i = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 64, i32 0, i32 1, i32 1
  %35 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %entry31, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 64, i32 0, i32 2
  %36 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @p54_work, ptr %func, align 4
  %timer = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 64, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.8, ptr noundef nonnull @p54_init_common.__key.7) #8
  %mc_maclist = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 42
  %37 = call ptr @memset(ptr %mc_maclist, i32 255, i32 6)
  %curchan = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 27
  %38 = ptrtoint ptr %curchan to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %curchan, align 8
  %update_stats.i = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 31
  %39 = ptrtoint ptr %update_stats.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %update_stats.i, align 4
  %active.i = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 32, i32 4
  %40 = call ptr @memset(ptr %active.i, i32 0, i32 24)
  br label %cleanup

cleanup:                                          ; preds = %p54_reset_stats.exit, %entry.cleanup_crit_edge
  ret ptr %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @p54_work(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mode = getelementptr i8, ptr %work, i32 -2004
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end, !prof !73

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %work, i32 -2692
  %conf_mutex = getelementptr i8, ptr %work, i32 -2560
  tail call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #8
  %call = tail call i32 @p54_fetch_statistics(ptr noundef %add.ptr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end.if.end40_crit_edge, label %land.rhs

if.end.if.end40_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

land.rhs:                                         ; preds = %if.end
  %.b54 = load i1, ptr @p54_work.__already_done, align 1
  br i1 %.b54, label %land.rhs.if.end40_crit_edge, label %if.then17, !prof !74

land.rhs.if.end40_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

if.then17:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @p54_work.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 436, i32 noundef 9, ptr noundef null) #8
  br label %if.end40

if.end40:                                         ; preds = %if.then17, %land.rhs.if.end40_crit_edge, %if.end.if.end40_crit_edge
  tail call void @mutex_unlock(ptr noundef %conf_mutex) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @p54_register_common(ptr noundef %dev, ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %call = tail call i32 @ieee80211_register_hw(ptr noundef %dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %pdev, ptr noundef nonnull @.str.9, i32 noundef %call) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %registered = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %registered to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %registered, align 8
  %call2 = tail call i32 @p54_init_leds(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %do.end8, label %if.then4

if.then4:                                         ; preds = %if.end
  %3 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv1, align 8
  %registered.i = getelementptr inbounds %struct.p54_common, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %registered.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %registered.i, align 8, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i, label %if.then4.p54_unregister_common.exit_crit_edge, label %if.then.i

if.then4.p54_unregister_common.exit_crit_edge:    ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  br label %p54_unregister_common.exit

if.then.i:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %registered.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %registered.i, align 8
  tail call void @p54_unregister_leds(ptr noundef %4) #8
  tail call void @ieee80211_unregister_hw(ptr noundef %dev) #8
  br label %p54_unregister_common.exit

p54_unregister_common.exit:                       ; preds = %if.then.i, %if.then4.p54_unregister_common.exit_crit_edge
  %conf_mutex.i = getelementptr inbounds %struct.p54_common, ptr %4, i32 0, i32 7
  tail call void @mutex_destroy(ptr noundef %conf_mutex.i) #8
  %eeprom_mutex.i = getelementptr inbounds %struct.p54_common, ptr %4, i32 0, i32 67
  tail call void @mutex_destroy(ptr noundef %eeprom_mutex.i) #8
  br label %cleanup

do.end8:                                          ; preds = %if.end
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 1
  %8 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wiphy, align 8
  %init_name.i.i = getelementptr inbounds %struct.wiphy, ptr %9, i32 0, i32 56, i32 3
  %10 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end8.wiphy_name.exit_crit_edge

do.end8.wiphy_name.exit_crit_edge:                ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %wiphy_name.exit

if.end.i.i:                                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.wiphy, ptr %9, i32 0, i32 56
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 4
  br label %wiphy_name.exit

wiphy_name.exit:                                  ; preds = %if.end.i.i, %do.end8.wiphy_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %13, %if.end.i.i ], [ %11, %do.end8.wiphy_name.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %pdev, ptr noundef nonnull @.str.15, ptr noundef %retval.0.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %wiphy_name.exit, %p54_unregister_common.exit, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call2, %p54_unregister_common.exit ], [ 0, %wiphy_name.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_register_hw(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @p54_init_leds(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @p54_unregister_common(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %registered = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %registered to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %registered, align 8, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %registered to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %registered, align 8
  tail call void @p54_unregister_leds(ptr noundef %1) #8
  tail call void @ieee80211_unregister_hw(ptr noundef %dev) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %conf_mutex = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 7
  tail call void @mutex_destroy(ptr noundef %conf_mutex) #8
  %eeprom_mutex = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 67
  tail call void @mutex_destroy(ptr noundef %eeprom_mutex) #8
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @p54_free_common(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %arrayidx = getelementptr %struct.p54_common, ptr %1, i32 0, i32 39, i32 0
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  tail call void @kfree(ptr noundef %3) #8
  %arrayidx.1 = getelementptr %struct.p54_common, ptr %1, i32 0, i32 39, i32 1
  %4 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.1, align 4
  tail call void @kfree(ptr noundef %5) #8
  %arrayidx.2 = getelementptr %struct.p54_common, ptr %1, i32 0, i32 39, i32 2
  %6 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.2, align 4
  tail call void @kfree(ptr noundef %7) #8
  %arrayidx.3 = getelementptr %struct.p54_common, ptr %1, i32 0, i32 39, i32 3
  %8 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.3, align 4
  tail call void @kfree(ptr noundef %9) #8
  %arrayidx.4 = getelementptr %struct.p54_common, ptr %1, i32 0, i32 39, i32 4
  %10 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.4, align 4
  tail call void @kfree(ptr noundef %11) #8
  %arrayidx.5 = getelementptr %struct.p54_common, ptr %1, i32 0, i32 39, i32 5
  %12 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.5, align 4
  tail call void @kfree(ptr noundef %13) #8
  %iq_autocal = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 34
  %14 = ptrtoint ptr %iq_autocal to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %iq_autocal, align 4
  tail call void @kfree(ptr noundef %15) #8
  %output_limit = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 37
  %16 = ptrtoint ptr %output_limit to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %output_limit, align 8
  tail call void @kfree(ptr noundef %17) #8
  %curve_data = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 36
  %18 = ptrtoint ptr %curve_data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %curve_data, align 4
  tail call void @kfree(ptr noundef %19) #8
  %rssi_db = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 38
  %20 = ptrtoint ptr %rssi_db to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rssi_db, align 4
  tail call void @kfree(ptr noundef %21) #8
  %used_rxkeys = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 59
  %22 = ptrtoint ptr %used_rxkeys to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %used_rxkeys, align 8
  tail call void @kfree(ptr noundef %23) #8
  %survey = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 28
  %24 = ptrtoint ptr %survey to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %survey, align 4
  tail call void @kfree(ptr noundef %25) #8
  %26 = ptrtoint ptr %iq_autocal to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %iq_autocal, align 4
  %27 = ptrtoint ptr %output_limit to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %output_limit, align 8
  %28 = ptrtoint ptr %curve_data to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %curve_data, align 4
  %29 = ptrtoint ptr %rssi_db to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %rssi_db, align 4
  %30 = ptrtoint ptr %used_rxkeys to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %used_rxkeys, align 8
  %31 = ptrtoint ptr %survey to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %survey, align 4
  tail call void @ieee80211_free_hw(ptr noundef %dev) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_free_hw(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @p54_unregister_leds(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_unregister_hw(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_alloc_hw_nm(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @p54_tx_80211(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @p54_start(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %conf_mutex = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #8
  %open = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %open to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %open, align 4
  %call = tail call i32 %3(ptr noundef %dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

do.body:                                          ; preds = %entry
  %qos_params = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 21
  %4 = ptrtoint ptr %qos_params to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 512, ptr %qos_params, align 4
  %cwmin = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 21, i32 0, i32 1
  %5 = ptrtoint ptr %cwmin to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 768, ptr %cwmin, align 2
  %cwmax = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 21, i32 0, i32 2
  %6 = ptrtoint ptr %cwmax to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 1792, ptr %cwmax, align 4
  %txop = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 21, i32 0, i32 3
  %7 = ptrtoint ptr %txop to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 12032, ptr %txop, align 2
  %arrayidx10 = getelementptr %struct.p54_common, ptr %1, i32 0, i32 21, i32 1
  %8 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 512, ptr %arrayidx10, align 4
  %cwmin14 = getelementptr %struct.p54_common, ptr %1, i32 0, i32 21, i32 1, i32 1
  %9 = ptrtoint ptr %cwmin14 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 1792, ptr %cwmin14, align 2
  %cwmax17 = getelementptr %struct.p54_common, ptr %1, i32 0, i32 21, i32 1, i32 2
  %10 = ptrtoint ptr %cwmax17 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 3840, ptr %cwmax17, align 4
  %txop20 = getelementptr %struct.p54_common, ptr %1, i32 0, i32 21, i32 1, i32 3
  %11 = ptrtoint ptr %txop20 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 24064, ptr %txop20, align 2
  %arrayidx25 = getelementptr %struct.p54_common, ptr %1, i32 0, i32 21, i32 2
  %12 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 768, ptr %arrayidx25, align 4
  %cwmin29 = getelementptr %struct.p54_common, ptr %1, i32 0, i32 21, i32 2, i32 1
  %13 = ptrtoint ptr %cwmin29 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 3840, ptr %cwmin29, align 2
  %cwmax32 = getelementptr %struct.p54_common, ptr %1, i32 0, i32 21, i32 2, i32 2
  %14 = ptrtoint ptr %cwmax32 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 -253, ptr %cwmax32, align 4
  %txop35 = getelementptr %struct.p54_common, ptr %1, i32 0, i32 21, i32 2, i32 3
  %15 = ptrtoint ptr %txop35 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 0, ptr %txop35, align 2
  %arrayidx40 = getelementptr %struct.p54_common, ptr %1, i32 0, i32 21, i32 3
  %16 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 1792, ptr %arrayidx40, align 4
  %cwmin44 = getelementptr %struct.p54_common, ptr %1, i32 0, i32 21, i32 3, i32 1
  %17 = ptrtoint ptr %cwmin44 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 3840, ptr %cwmin44, align 2
  %cwmax47 = getelementptr %struct.p54_common, ptr %1, i32 0, i32 21, i32 3, i32 2
  %18 = ptrtoint ptr %cwmax47 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 -253, ptr %cwmax47, align 4
  %txop50 = getelementptr %struct.p54_common, ptr %1, i32 0, i32 21, i32 3, i32 3
  %19 = ptrtoint ptr %txop50 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 0, ptr %txop50, align 2
  %call53 = tail call i32 @p54_set_edcf(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end56, label %do.body.out_crit_edge

do.body.out_crit_edge:                            ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end56:                                         ; preds = %do.body
  %bssid = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 41
  %20 = call ptr @memset(ptr %bssid, i32 255, i32 6)
  %mode = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 46
  %21 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 6, ptr %mode, align 8
  %call57 = tail call i32 @p54_setup_mac(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.end61, label %if.then59

if.then59:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %mode, align 8
  br label %out

if.end61:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  %work = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 64
  tail call void @ieee80211_queue_delayed_work(ptr noundef %dev, ptr noundef %work, i32 noundef 0) #8
  %softled_state = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 62
  %23 = ptrtoint ptr %softled_state to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 0, ptr %softled_state, align 8
  %call62 = tail call i32 @p54_set_leds(ptr noundef %1) #8
  br label %out

out:                                              ; preds = %if.end61, %if.then59, %do.body.out_crit_edge, %entry.out_crit_edge
  %err.0 = phi i32 [ %call, %entry.out_crit_edge ], [ %call53, %do.body.out_crit_edge ], [ %call57, %if.then59 ], [ %call62, %if.end61 ]
  tail call void @mutex_unlock(ptr noundef %conf_mutex) #8
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @p54_stop(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %mode = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 46
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %mode, align 8
  %softled_state = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 62
  %3 = ptrtoint ptr %softled_state to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 0, ptr %softled_state, align 8
  %work = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 64
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %work) #8
  %conf_mutex = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #8
  %call2 = tail call i32 @p54_set_leds(ptr noundef %1) #8
  %stop = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %stop, align 8
  tail call void %5(ptr noundef %dev) #8
  %tx_pending = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 5
  tail call void @skb_queue_purge(ptr noundef %tx_pending) #8
  %tx_queue = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 6
  tail call void @skb_queue_purge(ptr noundef %tx_queue) #8
  %arrayidx = getelementptr %struct.p54_common, ptr %1, i32 0, i32 20, i32 0
  %count = getelementptr %struct.p54_common, ptr %1, i32 0, i32 20, i32 0, i32 2
  %6 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %count, align 4
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %arrayidx, align 4
  %arrayidx.1 = getelementptr %struct.p54_common, ptr %1, i32 0, i32 20, i32 1
  %count.1 = getelementptr %struct.p54_common, ptr %1, i32 0, i32 20, i32 1, i32 2
  %8 = ptrtoint ptr %count.1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %count.1, align 4
  %9 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %arrayidx.1, align 4
  %arrayidx.2 = getelementptr %struct.p54_common, ptr %1, i32 0, i32 20, i32 2
  %count.2 = getelementptr %struct.p54_common, ptr %1, i32 0, i32 20, i32 2, i32 2
  %10 = ptrtoint ptr %count.2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %count.2, align 4
  %11 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %arrayidx.2, align 4
  %arrayidx.3 = getelementptr %struct.p54_common, ptr %1, i32 0, i32 20, i32 3
  %count.3 = getelementptr %struct.p54_common, ptr %1, i32 0, i32 20, i32 3, i32 2
  %12 = ptrtoint ptr %count.3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %count.3, align 4
  %13 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %arrayidx.3, align 4
  %arrayidx.4 = getelementptr %struct.p54_common, ptr %1, i32 0, i32 20, i32 4
  %count.4 = getelementptr %struct.p54_common, ptr %1, i32 0, i32 20, i32 4, i32 2
  %14 = ptrtoint ptr %count.4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %count.4, align 4
  %15 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %arrayidx.4, align 4
  %arrayidx.5 = getelementptr %struct.p54_common, ptr %1, i32 0, i32 20, i32 5
  %count.5 = getelementptr %struct.p54_common, ptr %1, i32 0, i32 20, i32 5, i32 2
  %16 = ptrtoint ptr %count.5 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %count.5, align 4
  %17 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %arrayidx.5, align 4
  %arrayidx.6 = getelementptr %struct.p54_common, ptr %1, i32 0, i32 20, i32 6
  %count.6 = getelementptr %struct.p54_common, ptr %1, i32 0, i32 20, i32 6, i32 2
  %18 = ptrtoint ptr %count.6 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %count.6, align 4
  %19 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %arrayidx.6, align 4
  %arrayidx.7 = getelementptr %struct.p54_common, ptr %1, i32 0, i32 20, i32 7
  %count.7 = getelementptr %struct.p54_common, ptr %1, i32 0, i32 20, i32 7, i32 2
  %20 = ptrtoint ptr %count.7 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %count.7, align 4
  %21 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %arrayidx.7, align 4
  %beacon_req_id = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 55
  %22 = ptrtoint ptr %beacon_req_id to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %beacon_req_id, align 8
  %tsf_low32 = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 47
  %23 = ptrtoint ptr %tsf_low32 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %tsf_low32, align 4
  %tsf_high32 = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 48
  %24 = ptrtoint ptr %tsf_high32 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %tsf_high32, align 8
  tail call void @mutex_unlock(ptr noundef %conf_mutex) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @p54_add_interface(ptr nocapture noundef readonly %dev, ptr noundef %vif) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %driver_flags = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 10
  %2 = ptrtoint ptr %driver_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %driver_flags, align 8
  %or = or i32 %3, 1
  store i32 %or, ptr %driver_flags, align 8
  %conf_mutex = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #8
  %mode = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 46
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %5)
  %cmp.not = icmp eq i32 %5, 6
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %vif3 = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %vif3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %vif, ptr %vif3, align 4
  %7 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %vif, align 8
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %8, label %if.end.cleanup_crit_edge [
    i32 2, label %if.end.sw.bb_crit_edge
    i32 1, label %if.end.sw.bb_crit_edge22
    i32 3, label %if.end.sw.bb_crit_edge23
    i32 7, label %if.end.sw.bb_crit_edge24
  ]

if.end.sw.bb_crit_edge24:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end.sw.bb_crit_edge23:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end.sw.bb_crit_edge22:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge22, %if.end.sw.bb_crit_edge23, %if.end.sw.bb_crit_edge24
  %10 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %8, ptr %mode, align 8
  %mac_addr = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 40
  %addr = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 2
  %11 = call ptr @memcpy(ptr %mac_addr, ptr %addr, i32 6)
  %call = tail call i32 @p54_setup_mac(ptr noundef %1) #8
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %sw.bb ], [ -95, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %conf_mutex) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @p54_remove_interface(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %vif) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %conf_mutex = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #8
  %vif2 = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %vif2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %vif2, align 4
  %beacon_req_id = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 55
  %3 = ptrtoint ptr %beacon_req_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %beacon_req_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.not = icmp eq i32 %4, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @p54_tx_cancel(ptr noundef %1, i32 noundef %4) #8
  %beacon_comp = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 56
  %call4 = tail call i32 @wait_for_completion_interruptible_timeout(ptr noundef %beacon_comp, i32 noundef 100) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %mode = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 46
  %5 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 6, ptr %mode, align 8
  %mac_addr = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 40
  %6 = call ptr @memset(ptr %mac_addr, i32 0, i32 12)
  %call6 = tail call i32 @p54_setup_mac(ptr noundef %1) #8
  tail call void @mutex_unlock(ptr noundef %conf_mutex) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @p54_config(ptr nocapture noundef readonly %dev, i32 noundef %changed) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %conf_mutex = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #8
  %and = and i32 %changed, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %power_level = getelementptr inbounds %struct.ieee80211_conf, ptr %dev, i32 0, i32 1
  %2 = ptrtoint ptr %power_level to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %power_level, align 4
  %shl = shl i32 %3, 2
  %output_power = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 25
  %4 = ptrtoint ptr %output_power to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %shl, ptr %output_power, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and3 = and i32 %changed, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.end.if.end68_crit_edge, label %if.then5

if.end.if.end68_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end68

if.then5:                                         ; preds = %if.end
  %5 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %priv1, align 8
  %update_stats.i = getelementptr inbounds %struct.p54_common, ptr %6, i32 0, i32 31
  %7 = ptrtoint ptr %update_stats.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %update_stats.i, align 4
  %call.i = tail call i32 @p54_fetch_statistics(ptr noundef %6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then5.do.end_crit_edge

if.then5.do.end_crit_edge:                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end.i:                                         ; preds = %if.then5
  %stat_comp.i = getelementptr inbounds %struct.p54_common, ptr %6, i32 0, i32 30
  %call2.i = tail call i32 @wait_for_completion_interruptible_timeout(ptr noundef %stat_comp.i, i32 noundef 100) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp eq i32 %call2.i, 0
  br i1 %cmp.i, label %if.end.i.do.end_crit_edge, label %if.end.i.if.end21_crit_edge

if.end.i.if.end21_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.end.i.do.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %if.end.i.do.end_crit_edge, %if.then5.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 327, i32 noundef 9, ptr noundef null) #8
  br label %if.end21

if.end21:                                         ; preds = %do.end, %if.end.i.if.end21_crit_edge
  %curchan = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 27
  %8 = ptrtoint ptr %curchan to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %curchan, align 8
  store ptr null, ptr %curchan, align 8
  %call29 = tail call i32 @p54_scan(ptr noundef %1, i16 noundef zeroext 1, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end33, label %cleanup

if.end33:                                         ; preds = %if.end21
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 8
  %chandef = getelementptr inbounds %struct.ieee80211_conf, ptr %11, i32 0, i32 7
  %12 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %chandef, align 4
  %14 = ptrtoint ptr %curchan to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %curchan, align 8
  %tobool.not.i248 = icmp eq ptr %13, null
  br i1 %tobool.not.i248, label %if.end33.p54_reset_stats.exit_crit_edge, label %if.then.i

if.end33.p54_reset_stats.exit_crit_edge:          ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %p54_reset_stats.exit

if.then.i:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  %survey.i = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 28
  %15 = ptrtoint ptr %survey.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %survey.i, align 4
  %hw_value.i = getelementptr inbounds %struct.ieee80211_channel, ptr %13, i32 0, i32 3
  %17 = ptrtoint ptr %hw_value.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %hw_value.i, align 2
  %idxprom.i = zext i16 %18 to i32
  %time.i = getelementptr %struct.survey_info, ptr %16, i32 %idxprom.i, i32 1
  %time_tx.i = getelementptr %struct.survey_info, ptr %16, i32 %idxprom.i, i32 5
  %19 = ptrtoint ptr %time_tx.i to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 0, ptr %time_tx.i, align 8
  %20 = call ptr @memset(ptr %time.i, i32 0, i32 16)
  br label %p54_reset_stats.exit

p54_reset_stats.exit:                             ; preds = %if.then.i, %if.end33.p54_reset_stats.exit_crit_edge
  %update_stats.i249 = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 31
  %21 = ptrtoint ptr %update_stats.i249 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %update_stats.i249, align 4
  %active.i = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 32, i32 4
  %22 = call ptr @memset(ptr %active.i, i32 0, i32 24)
  %call37 = tail call i32 @p54_fetch_statistics(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %p54_reset_stats.exit.if.end68_crit_edge, label %do.end54, !prof !74

p54_reset_stats.exit.if.end68_crit_edge:          ; preds = %p54_reset_stats.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end68

do.end54:                                         ; preds = %p54_reset_stats.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 341, i32 noundef 9, ptr noundef null) #8
  br label %if.end68

cleanup:                                          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %curchan to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %9, ptr %curchan, align 8
  br label %out

if.end68:                                         ; preds = %do.end54, %p54_reset_stats.exit.if.end68_crit_edge, %if.end.if.end68_crit_edge
  %and69 = and i32 %changed, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69)
  %tobool70.not = icmp eq i32 %and69, 0
  br i1 %tobool70.not, label %if.end68.if.end140_crit_edge, label %if.then71

if.end68.if.end140_crit_edge:                     ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end140

if.then71:                                        ; preds = %if.end68
  %24 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %priv1, align 8
  %update_stats.i252 = getelementptr inbounds %struct.p54_common, ptr %25, i32 0, i32 31
  %26 = ptrtoint ptr %update_stats.i252 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %update_stats.i252, align 4
  %call.i253 = tail call i32 @p54_fetch_statistics(ptr noundef %25) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i253)
  %tobool.not.i254 = icmp eq i32 %call.i253, 0
  br i1 %tobool.not.i254, label %if.end.i259, label %if.then71.do.end90_crit_edge

if.then71.do.end90_crit_edge:                     ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end90

if.end.i259:                                      ; preds = %if.then71
  %stat_comp.i255 = getelementptr inbounds %struct.p54_common, ptr %25, i32 0, i32 30
  %call2.i256 = tail call i32 @wait_for_completion_interruptible_timeout(ptr noundef %stat_comp.i255, i32 noundef 100) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i256)
  %cmp.i257 = icmp eq i32 %call2.i256, 0
  br i1 %cmp.i257, label %if.end.i259.do.end90_crit_edge, label %if.end.i259.if.end96_crit_edge

if.end.i259.if.end96_crit_edge:                   ; preds = %if.end.i259
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end96

if.end.i259.do.end90_crit_edge:                   ; preds = %if.end.i259
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end90

do.end90:                                         ; preds = %if.end.i259.do.end90_crit_edge, %if.then71.do.end90_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 344, i32 noundef 9, ptr noundef null) #8
  br label %if.end96

if.end96:                                         ; preds = %do.end90, %if.end.i259.if.end96_crit_edge
  %call104 = tail call i32 @p54_set_ps(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104)
  %tobool105.not = icmp eq i32 %call104, 0
  br i1 %tobool105.not, label %if.end107, label %if.end96.out_crit_edge

if.end96.out_crit_edge:                           ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end107:                                        ; preds = %if.end96
  %27 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %priv1, align 8
  %update_stats.i263 = getelementptr inbounds %struct.p54_common, ptr %28, i32 0, i32 31
  %29 = ptrtoint ptr %update_stats.i263 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %update_stats.i263, align 4
  %call.i264 = tail call i32 @p54_fetch_statistics(ptr noundef %28) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i264)
  %tobool.not.i265 = icmp eq i32 %call.i264, 0
  br i1 %tobool.not.i265, label %if.end.i270, label %if.end107.do.end126_crit_edge

if.end107.do.end126_crit_edge:                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end126

if.end.i270:                                      ; preds = %if.end107
  %stat_comp.i266 = getelementptr inbounds %struct.p54_common, ptr %28, i32 0, i32 30
  %call2.i267 = tail call i32 @wait_for_completion_interruptible_timeout(ptr noundef %stat_comp.i266, i32 noundef 100) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i267)
  %cmp.i268 = icmp eq i32 %call2.i267, 0
  br i1 %cmp.i268, label %if.end.i270.do.end126_crit_edge, label %if.end.i270.if.end140_crit_edge

if.end.i270.if.end140_crit_edge:                  ; preds = %if.end.i270
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end140

if.end.i270.do.end126_crit_edge:                  ; preds = %if.end.i270
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end126

do.end126:                                        ; preds = %if.end.i270.do.end126_crit_edge, %if.end107.do.end126_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 348, i32 noundef 9, ptr noundef null) #8
  br label %if.end140

if.end140:                                        ; preds = %do.end126, %if.end.i270.if.end140_crit_edge, %if.end68.if.end140_crit_edge
  %and141 = and i32 %changed, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and141)
  %tobool142.not = icmp eq i32 %and141, 0
  br i1 %tobool142.not, label %if.end140.out_crit_edge, label %if.then143

if.end140.out_crit_edge:                          ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then143:                                       ; preds = %if.end140
  %30 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %priv1, align 8
  %update_stats.i274 = getelementptr inbounds %struct.p54_common, ptr %31, i32 0, i32 31
  %32 = ptrtoint ptr %update_stats.i274 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %update_stats.i274, align 4
  %call.i275 = tail call i32 @p54_fetch_statistics(ptr noundef %31) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i275)
  %tobool.not.i276 = icmp eq i32 %call.i275, 0
  br i1 %tobool.not.i276, label %if.end.i281, label %if.then143.do.end162_crit_edge

if.then143.do.end162_crit_edge:                   ; preds = %if.then143
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end162

if.end.i281:                                      ; preds = %if.then143
  %stat_comp.i277 = getelementptr inbounds %struct.p54_common, ptr %31, i32 0, i32 30
  %call2.i278 = tail call i32 @wait_for_completion_interruptible_timeout(ptr noundef %stat_comp.i277, i32 noundef 100) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i278)
  %cmp.i279 = icmp eq i32 %call2.i278, 0
  br i1 %cmp.i279, label %if.end.i281.do.end162_crit_edge, label %if.end.i281.if.end168_crit_edge

if.end.i281.if.end168_crit_edge:                  ; preds = %if.end.i281
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end168

if.end.i281.do.end162_crit_edge:                  ; preds = %if.end.i281
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end162

do.end162:                                        ; preds = %if.end.i281.do.end162_crit_edge, %if.then143.do.end162_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 351, i32 noundef 9, ptr noundef null) #8
  br label %if.end168

if.end168:                                        ; preds = %do.end162, %if.end.i281.if.end168_crit_edge
  %call176 = tail call i32 @p54_setup_mac(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call176)
  %tobool177.not = icmp eq i32 %call176, 0
  br i1 %tobool177.not, label %if.end179, label %if.end168.out_crit_edge

if.end168.out_crit_edge:                          ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end179:                                        ; preds = %if.end168
  %33 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %priv1, align 8
  %update_stats.i285 = getelementptr inbounds %struct.p54_common, ptr %34, i32 0, i32 31
  %35 = ptrtoint ptr %update_stats.i285 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 1, ptr %update_stats.i285, align 4
  %call.i286 = tail call i32 @p54_fetch_statistics(ptr noundef %34) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i286)
  %tobool.not.i287 = icmp eq i32 %call.i286, 0
  br i1 %tobool.not.i287, label %if.end.i292, label %if.end179.do.end198_crit_edge

if.end179.do.end198_crit_edge:                    ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end198

if.end.i292:                                      ; preds = %if.end179
  %stat_comp.i288 = getelementptr inbounds %struct.p54_common, ptr %34, i32 0, i32 30
  %call2.i289 = tail call i32 @wait_for_completion_interruptible_timeout(ptr noundef %stat_comp.i288, i32 noundef 100) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i289)
  %cmp.i290 = icmp eq i32 %call2.i289, 0
  br i1 %cmp.i290, label %if.end.i292.do.end198_crit_edge, label %if.end.i292.out_crit_edge

if.end.i292.out_crit_edge:                        ; preds = %if.end.i292
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end.i292.do.end198_crit_edge:                  ; preds = %if.end.i292
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end198

do.end198:                                        ; preds = %if.end.i292.do.end198_crit_edge, %if.end179.do.end198_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 355, i32 noundef 9, ptr noundef null) #8
  br label %out

out:                                              ; preds = %do.end198, %if.end.i292.out_crit_edge, %if.end168.out_crit_edge, %if.end140.out_crit_edge, %if.end96.out_crit_edge, %cleanup
  %ret.2 = phi i32 [ %call29, %cleanup ], [ %call104, %if.end96.out_crit_edge ], [ %call176, %if.end168.out_crit_edge ], [ 0, %if.end140.out_crit_edge ], [ 0, %do.end198 ], [ 0, %if.end.i292.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %conf_mutex) #8
  ret i32 %ret.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @p54_bss_info_changed(ptr nocapture noundef readonly %dev, ptr noundef %vif, ptr nocapture noundef readonly %info, i32 noundef %changed) #2 align 64 {
entry:
  %control.i = alloca %struct.ieee80211_tx_control, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %conf_mutex = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #8
  %and = and i32 %changed, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %bssid = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 41
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 8
  %4 = call ptr @memcpy(ptr %bssid, ptr %3, i32 6)
  %call = tail call i32 @p54_setup_mac(ptr noundef %1) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and3 = and i32 %changed, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.end.if.end10_crit_edge, label %if.then5

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then5:                                         ; preds = %if.end
  %call6 = tail call i32 @p54_scan(ptr noundef %1, i16 noundef zeroext 1, i16 noundef zeroext 0) #8
  %call7 = tail call i32 @p54_setup_mac(ptr noundef %1) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %control.i) #8
  %5 = ptrtoint ptr %control.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %control.i, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %call.i.i = tail call ptr @ieee80211_beacon_get_tim(ptr noundef %7, ptr noundef %vif, ptr noundef null, ptr noundef null) #8
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.then5.p54_beacon_update.exit_crit_edge, label %if.end.i

if.then5.p54_beacon_update.exit_crit_edge:        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %p54_beacon_update.exit

if.end.i:                                         ; preds = %if.then5
  %len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 6
  %8 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %9)
  %cmp.i.i.i = icmp ult i32 %9, 5
  br i1 %cmp.i.i.i, label %if.end.i.if.end4.i_crit_edge, label %if.end.i.i.i

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i

if.end.i.i.i:                                     ; preds = %if.end.i
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %10 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data.i.i.i, align 4
  %variable.i.i.i = getelementptr inbounds %struct.ieee80211_mgmt, ptr %11, i32 0, i32 6, i32 1, i32 2
  %add.ptr.i.i.i = getelementptr i8, ptr %11, i32 %9
  %cmp332.i.i.i = icmp ult ptr %variable.i.i.i, %add.ptr.i.i.i
  br i1 %cmp332.i.i.i, label %if.end.i.i.i.while.body.i.i.i_crit_edge, label %if.end.i.i.i.if.end4.i_crit_edge

if.end.i.i.i.if.end4.i_crit_edge:                 ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i

if.end.i.i.i.while.body.i.i.i_crit_edge:          ; preds = %if.end.i.i.i
  br label %while.body.i.i.i

while.body.i.i.i:                                 ; preds = %if.end16.i.i.i.while.body.i.i.i_crit_edge, %if.end.i.i.i.while.body.i.i.i_crit_edge
  %pos.033.i.i.i = phi ptr [ %add.ptr19.i.i.i, %if.end16.i.i.i.while.body.i.i.i_crit_edge ], [ %variable.i.i.i, %if.end.i.i.i.while.body.i.i.i_crit_edge ]
  %add.ptr4.i.i.i = getelementptr i8, ptr %pos.033.i.i.i, i32 2
  %arrayidx.i.i.i = getelementptr i8, ptr %pos.033.i.i.i, i32 1
  %12 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.i.i.i, align 1
  %conv.i.i.i = zext i8 %13 to i32
  %add.ptr5.i.i.i = getelementptr i8, ptr %add.ptr4.i.i.i, i32 %conv.i.i.i
  %cmp6.i.i.i = icmp ugt ptr %add.ptr5.i.i.i, %add.ptr.i.i.i
  br i1 %cmp6.i.i.i, label %while.body.i.i.i.if.end4.i_crit_edge, label %if.end9.i.i.i

while.body.i.i.i.if.end4.i_crit_edge:             ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i

if.end9.i.i.i:                                    ; preds = %while.body.i.i.i
  %14 = ptrtoint ptr %pos.033.i.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %pos.033.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %15)
  %cmp13.i.i.i = icmp eq i8 %15, 5
  br i1 %cmp13.i.i.i, label %p54_find_ie.exit.i.i, label %if.end16.i.i.i

if.end16.i.i.i:                                   ; preds = %if.end9.i.i.i
  %add.i.i.i = add nuw nsw i32 %conv.i.i.i, 2
  %add.ptr19.i.i.i = getelementptr i8, ptr %pos.033.i.i.i, i32 %add.i.i.i
  %cmp3.i.i.i = icmp ult ptr %add.ptr19.i.i.i, %add.ptr.i.i.i
  br i1 %cmp3.i.i.i, label %if.end16.i.i.i.while.body.i.i.i_crit_edge, label %if.end16.i.i.i.if.end4.i_crit_edge

if.end16.i.i.i.if.end4.i_crit_edge:               ; preds = %if.end16.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i

if.end16.i.i.i.while.body.i.i.i_crit_edge:        ; preds = %if.end16.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i.i

p54_find_ie.exit.i.i:                             ; preds = %if.end9.i.i.i
  %conv.i.i.i.le = zext i8 %13 to i32
  %tobool.not.i.i = icmp eq ptr %pos.033.i.i.i, null
  br i1 %tobool.not.i.i, label %p54_find_ie.exit.i.i.if.end4.i_crit_edge, label %if.end.i.i

p54_find_ie.exit.i.i.if.end4.i_crit_edge:         ; preds = %p54_find_ie.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i

if.end.i.i:                                       ; preds = %p54_find_ie.exit.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %13)
  %cmp.i.i = icmp ult i8 %13, 3
  br i1 %cmp.i.i, label %if.end.i.i.p54_beacon_update.exit_crit_edge, label %if.end6.i.i

if.end.i.i.p54_beacon_update.exit_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %p54_beacon_update.exit

if.end6.i.i:                                      ; preds = %if.end.i.i
  %arrayidx1.i.i = getelementptr i8, ptr %pos.033.i.i.i, i32 3
  %16 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx1.i.i, align 1
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %18 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %19 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %add.ptr5.i.i.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %20 = call ptr @memmove(ptr %pos.033.i.i.i, ptr %add.ptr5.i.i.i, i32 %sub.ptr.sub.i.i)
  %21 = load ptr, ptr %tail.i.i.i, align 8
  %idx.neg.i.i = sub nuw nsw i32 -2, %conv.i.i.i.le
  %add.ptr10.i.i = getelementptr i8, ptr %21, i32 %idx.neg.i.i
  %22 = ptrtoint ptr %add.ptr10.i.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 5, ptr %add.ptr10.i.i, align 1
  %arrayidx12.i.i = getelementptr i8, ptr %add.ptr10.i.i, i32 1
  %23 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 3, ptr %arrayidx12.i.i, align 1
  %arrayidx13.i.i = getelementptr i8, ptr %add.ptr10.i.i, i32 2
  %24 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %arrayidx13.i.i, align 1
  %arrayidx14.i.i = getelementptr i8, ptr %add.ptr10.i.i, i32 3
  %25 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %17, ptr %arrayidx14.i.i, align 1
  %arrayidx15.i.i = getelementptr i8, ptr %add.ptr10.i.i, i32 4
  %26 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %arrayidx15.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %13)
  %cmp17.not.i.i = icmp eq i8 %13, 3
  br i1 %cmp17.not.i.i, label %if.end6.i.i.if.end4.i_crit_edge, label %if.then19.i.i

if.end6.i.i.if.end4.i_crit_edge:                  ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i

if.then19.i.i:                                    ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %len.i.i.i, align 4
  %sub.neg.i.i = sub nsw i32 3, %conv.i.i.i.le
  %sub21.i.i = add i32 %sub.neg.i.i, %28
  tail call void @skb_trim(ptr noundef nonnull %call.i.i, i32 noundef %sub21.i.i) #8
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then19.i.i, %if.end6.i.i.if.end4.i_crit_edge, %p54_find_ie.exit.i.i.if.end4.i_crit_edge, %if.end16.i.i.i.if.end4.i_crit_edge, %while.body.i.i.i.if.end4.i_crit_edge, %if.end.i.i.i.if.end4.i_crit_edge, %if.end.i.if.end4.i_crit_edge
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 8
  call void @p54_tx_80211(ptr noundef %30, ptr noundef nonnull %control.i, ptr noundef nonnull %call.i.i) #8
  %tsf_high32.i = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 48
  %31 = ptrtoint ptr %tsf_high32.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %tsf_high32.i, align 8
  %tsf_low32.i = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 47
  %32 = ptrtoint ptr %tsf_low32.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %tsf_low32.i, align 4
  br label %p54_beacon_update.exit

p54_beacon_update.exit:                           ; preds = %if.end4.i, %if.end.i.i.p54_beacon_update.exit_crit_edge, %if.then5.p54_beacon_update.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %control.i) #8
  %call9 = call i32 @p54_set_edcf(ptr noundef %1) #8
  br label %if.end10

if.end10:                                         ; preds = %p54_beacon_update.exit, %if.end.if.end10_crit_edge
  %and11 = and i32 %changed, 264
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end10.if.end17_crit_edge, label %if.then13

if.end10.if.end17_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %use_short_slot = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %info, i32 0, i32 16
  %33 = ptrtoint ptr %use_short_slot to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %use_short_slot, align 2, !range !75
  %use_short_slot15 = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 18
  %35 = ptrtoint ptr %use_short_slot15 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %use_short_slot15, align 1
  %call16 = call i32 @p54_set_edcf(ptr noundef %1) #8
  br label %if.end17

if.end17:                                         ; preds = %if.then13, %if.end10.if.end17_crit_edge
  %and18 = and i32 %changed, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.end17.if.end30_crit_edge, label %if.then20

if.end17.if.end30_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.then20:                                        ; preds = %if.end17
  %chandef = getelementptr inbounds %struct.ieee80211_conf, ptr %dev, i32 0, i32 7
  %36 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %chandef, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %37, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %39)
  %cmp = icmp eq i32 %39, 1
  %basic_rates = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %info, i32 0, i32 24
  %40 = ptrtoint ptr %basic_rates to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %basic_rates, align 8
  %shl = shl i32 %41, 4
  %.sink = select i1 %cmp, i32 %shl, i32 %41
  %42 = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 49
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %.sink, ptr %42, align 4
  %call25 = call i32 @p54_setup_mac(ptr noundef %1) #8
  %fw_var = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 15
  %44 = ptrtoint ptr %fw_var to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %fw_var, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1279, i32 %45)
  %cmp26 = icmp ugt i32 %45, 1279
  br i1 %cmp26, label %if.then27, label %if.then20.if.end30_crit_edge

if.then20.if.end30_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.then27:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #10
  %call28 = call i32 @p54_scan(ptr noundef %1, i16 noundef zeroext 1, i16 noundef zeroext 0) #8
  br label %if.end30

if.end30:                                         ; preds = %if.then27, %if.then20.if.end30_crit_edge, %if.end17.if.end30_crit_edge
  %and31 = and i32 %changed, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.end30.if.end45_crit_edge, label %if.then33

if.end30.if.end45_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

if.then33:                                        ; preds = %if.end30
  %assoc = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %info, i32 0, i32 10
  %46 = ptrtoint ptr %assoc to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %assoc, align 1, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool34.not = icmp eq i8 %47, 0
  br i1 %tobool34.not, label %if.else41, label %if.then35

if.then35:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #10
  %aid = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %info, i32 0, i32 13
  %48 = ptrtoint ptr %aid to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %aid, align 2
  %aid36 = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 50
  %50 = ptrtoint ptr %aid36 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %49, ptr %aid36, align 8
  %beacon_int = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %info, i32 0, i32 19
  %51 = ptrtoint ptr %beacon_int to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %beacon_int, align 2
  %dtim_period = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %info, i32 0, i32 18
  %53 = ptrtoint ptr %dtim_period to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %dtim_period, align 8
  %conv37 = zext i8 %54 to i16
  %mul = mul i16 %52, 5
  %mul38 = mul i16 %mul, %conv37
  %wakeup_timer = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 43
  %55 = ptrtoint ptr %wakeup_timer to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %mul38, ptr %wakeup_timer, align 4
  %call40 = call i32 @p54_setup_mac(ptr noundef %1) #8
  br label %if.end45

if.else41:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #10
  %wakeup_timer42 = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 43
  %56 = ptrtoint ptr %wakeup_timer42 to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 500, ptr %wakeup_timer42, align 4
  %aid43 = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 50
  %57 = ptrtoint ptr %aid43 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 0, ptr %aid43, align 8
  br label %if.end45

if.end45:                                         ; preds = %if.else41, %if.then35, %if.end30.if.end45_crit_edge
  call void @mutex_unlock(ptr noundef %conf_mutex) #8
  ret void
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @p54_prepare_multicast(ptr nocapture noundef readonly %dev, ptr noundef readonly %mc_list) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %count = getelementptr inbounds %struct.netdev_hw_addr_list, ptr %mc_list, i32 0, i32 1
  %2 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count, align 4
  %add = add i32 %3, 1
  %mc_maclist_num = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 45
  %4 = ptrtoint ptr %mc_maclist_num to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %add, ptr %mc_maclist_num, align 4
  %5 = ptrtoint ptr %mc_list to i32
  call void @__asan_load4_noabort(i32 %5)
  %ha.0 = load ptr, ptr %mc_list, align 4
  %cmp.not = icmp eq ptr %ha.0, %mc_list
  br i1 %cmp.not, label %entry.for.end_crit_edge, label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %entry
  %arrayidx = getelementptr %struct.p54_common, ptr %1, i32 0, i32 42, i32 1
  %addr = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.0, i32 0, i32 2
  %6 = call ptr @memcpy(ptr %arrayidx, ptr %addr, i32 6)
  %7 = ptrtoint ptr %ha.0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %ha.0.1 = load ptr, ptr %ha.0, align 4
  %cmp.not.1 = icmp eq ptr %ha.0.1, %mc_list
  br i1 %cmp.not.1, label %for.body.for.end_crit_edge, label %for.body.1

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.1:                                       ; preds = %for.body
  %arrayidx.1 = getelementptr %struct.p54_common, ptr %1, i32 0, i32 42, i32 2
  %addr.1 = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.0.1, i32 0, i32 2
  %8 = call ptr @memcpy(ptr %arrayidx.1, ptr %addr.1, i32 6)
  %9 = ptrtoint ptr %ha.0.1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %ha.0.2 = load ptr, ptr %ha.0.1, align 4
  %cmp.not.2 = icmp eq ptr %ha.0.2, %mc_list
  br i1 %cmp.not.2, label %for.body.1.for.end_crit_edge, label %for.body.2

for.body.1.for.end_crit_edge:                     ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.2:                                       ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.2 = getelementptr %struct.p54_common, ptr %1, i32 0, i32 42, i32 3
  %addr.2 = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.0.2, i32 0, i32 2
  %10 = call ptr @memcpy(ptr %arrayidx.2, ptr %addr.2, i32 6)
  br label %for.end

for.end:                                          ; preds = %for.body.2, %for.body.1.for.end_crit_edge, %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret i64 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @p54_configure_filter(ptr nocapture noundef readonly %dev, i32 noundef %changed_flags, ptr nocapture noundef %total_flags, i64 noundef %multicast) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %2 = ptrtoint ptr %total_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %total_flags, align 4
  %and = and i32 %3, 66
  store i32 %and, ptr %total_flags, align 4
  %filter_flags = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 44
  %4 = ptrtoint ptr %filter_flags to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %and, ptr %filter_flags, align 8
  %and2 = and i32 %changed_flags, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool.not = icmp eq i32 %and2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @p54_setup_mac(ptr noundef %1) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and3 = and i32 %changed_flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %multicast)
  %tobool5.not = icmp eq i64 %multicast, 0
  %or.cond = and i1 %tobool4.not, %tobool5.not
  br i1 %or.cond, label %if.end.if.end8_crit_edge, label %if.then6

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call7 = tail call i32 @p54_set_groupfilter(ptr noundef %1) #8
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end.if.end8_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @p54_set_tim(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %sta, i1 noundef zeroext %set) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %aid = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 2
  %2 = ptrtoint ptr %aid to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %aid, align 2
  %call = tail call i32 @p54_update_beacon_tim(ptr noundef %1, i16 noundef zeroext %3, i1 noundef zeroext %set) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @p54_set_key(ptr nocapture noundef readonly %dev, i32 noundef %cmd, ptr nocapture noundef readnone %vif, ptr noundef %sta, ptr noundef %key) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %2 = load i8, ptr @modparam_nohwcrypt, align 1, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 6
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %flags, align 8
  %5 = and i16 %4, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool2.not = icmp eq i16 %5, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %conf_mutex = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cmd)
  %cmp = icmp eq i32 %cmd, 0
  br i1 %cmp, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end4
  %cipher = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 1
  %6 = ptrtoint ptr %cipher to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cipher, align 8
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %7, label %if.then6.out_unlock_crit_edge [
    i32 1027074, label %sw.bb
    i32 1027073, label %if.then6.sw.bb15_crit_edge
    i32 1027077, label %if.then6.sw.bb15_crit_edge100
    i32 1027076, label %sw.bb26
  ]

if.then6.sw.bb15_crit_edge100:                    ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb15

if.then6.sw.bb15_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb15

if.then6.out_unlock_crit_edge:                    ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_unlock

sw.bb:                                            ; preds = %if.then6
  %privacy_caps = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 57
  %9 = ptrtoint ptr %privacy_caps to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %privacy_caps, align 4
  %11 = and i8 %10, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool9.not = icmp eq i8 %11, 0
  br i1 %tobool9.not, label %sw.bb.out_unlock_crit_edge, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb.out_unlock_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_unlock

sw.bb15:                                          ; preds = %if.then6.sw.bb15_crit_edge, %if.then6.sw.bb15_crit_edge100
  %privacy_caps16 = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 57
  %12 = ptrtoint ptr %privacy_caps16 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %privacy_caps16, align 4
  %14 = and i8 %13, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool19.not = icmp eq i8 %14, 0
  br i1 %tobool19.not, label %sw.bb15.out_unlock_crit_edge, label %sw.bb15.sw.epilog_crit_edge

sw.bb15.sw.epilog_crit_edge:                      ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb15.out_unlock_crit_edge:                     ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_unlock

sw.bb26:                                          ; preds = %if.then6
  %privacy_caps27 = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 57
  %15 = ptrtoint ptr %privacy_caps27 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %privacy_caps27, align 4
  %17 = and i8 %16, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool30.not = icmp eq i8 %17, 0
  br i1 %tobool30.not, label %sw.bb26.out_unlock_crit_edge, label %sw.bb26.sw.epilog_crit_edge

sw.bb26.sw.epilog_crit_edge:                      ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb26.out_unlock_crit_edge:                     ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_unlock

sw.epilog:                                        ; preds = %sw.bb26.sw.epilog_crit_edge, %sw.bb15.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %algo.0 = phi i8 [ 3, %sw.bb.sw.epilog_crit_edge ], [ 1, %sw.bb15.sw.epilog_crit_edge ], [ 7, %sw.bb26.sw.epilog_crit_edge ]
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %flags, align 8
  %20 = or i16 %19, 2
  store i16 %20, ptr %flags, align 8
  %used_rxkeys = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 59
  %21 = ptrtoint ptr %used_rxkeys to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %used_rxkeys, align 8
  %rx_keycache_size = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 58
  %23 = ptrtoint ptr %rx_keycache_size to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %rx_keycache_size, align 1
  %conv37 = zext i8 %24 to i32
  %call = tail call i32 @bitmap_find_free_region(ptr noundef %22, i32 noundef %conv37, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp38 = icmp slt i32 %call, 0
  br i1 %cmp38, label %if.then40, label %if.end41

if.then40:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %hw_key_idx = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 4
  %25 = ptrtoint ptr %hw_key_idx to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 -1, ptr %hw_key_idx, align 2
  br label %out_unlock

if.end41:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %flags, align 8
  %28 = or i16 %27, 128
  store i16 %28, ptr %flags, align 8
  br label %if.end53

if.else:                                          ; preds = %if.end4
  %hw_key_idx46 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 4
  %29 = ptrtoint ptr %hw_key_idx46 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %hw_key_idx46, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %30)
  %cmp48 = icmp eq i8 %30, -1
  br i1 %cmp48, label %if.else.out_unlock_crit_edge, label %if.end51

if.else.out_unlock_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_unlock

if.end51:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %conv47 = zext i8 %30 to i32
  %used_rxkeys52 = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 59
  %31 = ptrtoint ptr %used_rxkeys52 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %used_rxkeys52, align 8
  tail call void @bitmap_release_region(ptr noundef %32, i32 noundef %conv47, i32 noundef 0) #8
  br label %if.end53

if.end53:                                         ; preds = %if.end51, %if.end41
  %slot.0 = phi i32 [ %call, %if.end41 ], [ %conv47, %if.end51 ]
  %algo.1 = phi i8 [ %algo.0, %if.end41 ], [ 0, %if.end51 ]
  %tobool54.not = icmp eq ptr %sta, null
  %addr56 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 1
  %spec.select = select i1 %tobool54.not, ptr null, ptr %addr56
  %keyidx = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 5
  %33 = ptrtoint ptr %keyidx to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %keyidx, align 1
  %keylen = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 7
  %35 = ptrtoint ptr %keylen to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %keylen, align 2
  %key58 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 8
  %call60 = tail call i32 @p54_upload_key(ptr noundef %1, i8 noundef zeroext %algo.1, i32 noundef %slot.0, i8 noundef zeroext %34, i8 noundef zeroext %36, ptr noundef %spec.select, ptr noundef %key58) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.end64, label %if.then62

if.then62:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  %used_rxkeys63 = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 59
  %37 = ptrtoint ptr %used_rxkeys63 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %used_rxkeys63, align 8
  tail call void @bitmap_release_region(ptr noundef %38, i32 noundef %slot.0, i32 noundef 0) #8
  br label %out_unlock

if.end64:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  %conv65 = trunc i32 %slot.0 to i8
  %hw_key_idx66 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 4
  %39 = ptrtoint ptr %hw_key_idx66 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv65, ptr %hw_key_idx66, align 2
  br label %out_unlock

out_unlock:                                       ; preds = %if.end64, %if.then62, %if.else.out_unlock_crit_edge, %if.then40, %sw.bb26.out_unlock_crit_edge, %sw.bb15.out_unlock_crit_edge, %sw.bb.out_unlock_crit_edge, %if.then6.out_unlock_crit_edge
  %ret.0 = phi i32 [ 0, %if.then40 ], [ -95, %if.then62 ], [ 0, %if.end64 ], [ 0, %if.else.out_unlock_crit_edge ], [ -95, %sw.bb.out_unlock_crit_edge ], [ -95, %sw.bb15.out_unlock_crit_edge ], [ -95, %sw.bb26.out_unlock_crit_edge ], [ -95, %if.then6.out_unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %conf_mutex) #8
  br label %cleanup

cleanup:                                          ; preds = %out_unlock, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out_unlock ], [ -95, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @p54_get_stats(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %stats) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %stats2 = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 63
  %2 = call ptr @memcpy(ptr %stats, ptr %stats2, i32 16)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @p54_sta_add_remove(ptr nocapture noundef readonly %hw, ptr nocapture noundef readnone %vif, ptr noundef %sta) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %addr = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 1
  %call = tail call i32 @p54_sta_unlock(ptr noundef %1, ptr noundef %addr) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @p54_sta_notify(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %vif, i32 noundef %notify_cmd, ptr noundef %sta) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %notify_cmd)
  %cond = icmp eq i32 %notify_cmd, 1
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %addr = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 1
  %call = tail call i32 @p54_sta_unlock(ptr noundef %1, ptr noundef %addr) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @p54_conf_tx(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %vif, i16 noundef zeroext %queue, ptr nocapture noundef readonly %params) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %conf_mutex = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #8
  %aifs = getelementptr inbounds %struct.ieee80211_tx_queue_params, ptr %params, i32 0, i32 3
  %2 = ptrtoint ptr %aifs to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %aifs, align 2
  %conv = zext i8 %3 to i16
  %4 = shl nuw i16 %conv, 8
  %idxprom = zext i16 %queue to i32
  %arrayidx = getelementptr %struct.p54_common, ptr %1, i32 0, i32 21, i32 %idxprom
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %arrayidx, align 4
  %cw_min = getelementptr inbounds %struct.ieee80211_tx_queue_params, ptr %params, i32 0, i32 1
  %6 = ptrtoint ptr %cw_min to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %cw_min, align 2
  %8 = tail call i16 @llvm.bswap.i16(i16 %7)
  %cwmin = getelementptr %struct.p54_common, ptr %1, i32 0, i32 21, i32 %idxprom, i32 1
  %9 = ptrtoint ptr %cwmin to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %cwmin, align 2
  %cw_max = getelementptr inbounds %struct.ieee80211_tx_queue_params, ptr %params, i32 0, i32 2
  %10 = ptrtoint ptr %cw_max to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %cw_max, align 2
  %12 = tail call i16 @llvm.bswap.i16(i16 %11)
  %cwmax = getelementptr %struct.p54_common, ptr %1, i32 0, i32 21, i32 %idxprom, i32 2
  %13 = ptrtoint ptr %cwmax to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %cwmax, align 4
  %14 = ptrtoint ptr %params to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %params, align 2
  %16 = tail call i16 @llvm.bswap.i16(i16 %15)
  %txop12 = getelementptr %struct.p54_common, ptr %1, i32 0, i32 21, i32 %idxprom, i32 3
  %17 = ptrtoint ptr %txop12 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %txop12, align 2
  %call = tail call i32 @p54_set_edcf(ptr noundef %1) #8
  tail call void @mutex_unlock(ptr noundef %conf_mutex) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @p54_get_survey(ptr nocapture noundef readonly %dev, i32 noundef %idx, ptr nocapture noundef %survey) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %chan_num = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 29
  %2 = ptrtoint ptr %chan_num to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chan_num, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %idx)
  %cmp.not = icmp ugt i32 %3, %idx
  br i1 %cmp.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %curchan = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 27
  %conf_mutex = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 7
  %survey1140 = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 28
  %time = getelementptr inbounds %struct.survey_info, ptr %survey, i32 0, i32 1
  %4 = ptrtoint ptr %curchan to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %curchan, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.cond.preheader.if.end10_crit_edge, label %land.lhs.true

for.cond.preheader.if.end10_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

land.lhs.true:                                    ; preds = %for.cond.preheader
  %hw_value = getelementptr inbounds %struct.ieee80211_channel, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %hw_value, align 2
  %conv = zext i16 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %idx)
  %cmp3 = icmp eq i32 %conv, %idx
  br i1 %cmp3, label %if.then5, label %land.lhs.true.if.end10_crit_edge

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then5:                                         ; preds = %land.lhs.true
  tail call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #8
  %8 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv1, align 8
  %update_stats.i = getelementptr inbounds %struct.p54_common, ptr %9, i32 0, i32 31
  %10 = ptrtoint ptr %update_stats.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %update_stats.i, align 4
  %call.i = tail call i32 @p54_fetch_statistics(ptr noundef %9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then5.p54_wait_for_stats.exit.thread_crit_edge

if.then5.p54_wait_for_stats.exit.thread_crit_edge: ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %p54_wait_for_stats.exit.thread

if.end.i:                                         ; preds = %if.then5
  %stat_comp.i = getelementptr inbounds %struct.p54_common, ptr %9, i32 0, i32 30
  %call2.i = tail call i32 @wait_for_completion_interruptible_timeout(ptr noundef %stat_comp.i, i32 noundef 100) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp eq i32 %call2.i, 0
  br i1 %cmp.i, label %if.end.i.p54_wait_for_stats.exit.thread_crit_edge, label %if.end10.thread

if.end.i.p54_wait_for_stats.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %p54_wait_for_stats.exit.thread

p54_wait_for_stats.exit.thread:                   ; preds = %if.end.i.p54_wait_for_stats.exit.thread_crit_edge, %if.then5.p54_wait_for_stats.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call.i, %if.then5.p54_wait_for_stats.exit.thread_crit_edge ], [ -110, %if.end.i.p54_wait_for_stats.exit.thread_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %conf_mutex) #8
  br label %cleanup

if.end10.thread:                                  ; preds = %if.end.i
  tail call void @mutex_unlock(ptr noundef %conf_mutex) #8
  %11 = ptrtoint ptr %survey1140 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %survey1140, align 4
  %arrayidx41 = getelementptr %struct.survey_info, ptr %12, i32 %idx
  %13 = call ptr @memcpy(ptr %survey, ptr %arrayidx41, i32 72)
  %14 = ptrtoint ptr %time to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %time, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %15)
  %cmp14.not = icmp eq i64 %15, 0
  br i1 %cmp14.not, label %if.else, label %if.then16

if.end10:                                         ; preds = %land.lhs.true.if.end10_crit_edge, %for.cond.preheader.if.end10_crit_edge
  %16 = ptrtoint ptr %survey1140 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %survey1140, align 4
  %arrayidx = getelementptr %struct.survey_info, ptr %17, i32 %idx
  %18 = call ptr @memcpy(ptr %survey, ptr %arrayidx, i32 72)
  br label %cleanup

if.then16:                                        ; preds = %if.end10.thread
  call void @__sanitizer_cov_trace_pc() #10
  %filled = getelementptr inbounds %struct.survey_info, ptr %survey, i32 0, i32 8
  %19 = ptrtoint ptr %filled to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %filled, align 8
  %or = or i32 %20, 2
  store i32 %or, ptr %filled, align 8
  br label %cleanup

if.else:                                          ; preds = %if.end10.thread
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @msleep(i32 noundef 100) #8
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then16, %if.end10, %p54_wait_for_stats.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %entry.cleanup_crit_edge ], [ 0, %if.then16 ], [ %retval.0.i.ph, %p54_wait_for_stats.exit.thread ], [ -110, %if.else ], [ 0, %if.end10 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @p54_set_coverage_class(ptr nocapture noundef readonly %dev, i16 noundef signext %coverage_class) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %conf_mutex = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #8
  %2 = and i16 %coverage_class, 255
  %3 = tail call i16 @llvm.umin.i16(i16 %2, i16 31)
  %conv19 = trunc i16 %3 to i8
  %coverage_class20 = getelementptr inbounds %struct.p54_common, ptr %1, i32 0, i32 51
  %4 = ptrtoint ptr %coverage_class20 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv19, ptr %coverage_class20, align 2
  %call = tail call i32 @p54_set_edcf(ptr noundef %1) #8
  tail call void @mutex_unlock(ptr noundef %conf_mutex) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @p54_flush(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %vif, i32 noundef %queues, i1 noundef zeroext %drop) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %arrayidx.i = getelementptr %struct.p54_common, ptr %1, i32 0, i32 20, i32 2
  %arrayidx.1.i = getelementptr %struct.p54_common, ptr %1, i32 0, i32 20, i32 3
  %arrayidx.2.i = getelementptr %struct.p54_common, ptr %1, i32 0, i32 20, i32 4
  %arrayidx.3.i = getelementptr %struct.p54_common, ptr %1, i32 0, i32 20, i32 5
  %arrayidx.4.i = getelementptr %struct.p54_common, ptr %1, i32 0, i32 20, i32 6
  %arrayidx.5.i = getelementptr %struct.p54_common, ptr %1, i32 0, i32 20, i32 7
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i, align 4
  %4 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.1.i, align 4
  %add.1.i24 = add i32 %3, %5
  %6 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.2.i, align 4
  %add.2.i25 = add i32 %7, %add.1.i24
  %8 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.3.i, align 4
  %add.3.i26 = add i32 %9, %add.2.i25
  %10 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.4.i, align 4
  %add.4.i27 = add i32 %11, %add.3.i26
  %12 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.5.i, align 4
  %add.5.i28 = sub i32 0, %add.4.i27
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %add.5.i28)
  %tobool.not29 = icmp eq i32 %13, %add.5.i28
  br i1 %tobool.not29, label %entry.if.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %i.030 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ 500, %entry.while.body_crit_edge ]
  %dec = add nsw i32 %i.030, -1
  tail call void @msleep(i32 noundef 20) #8
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i, align 4
  %16 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.1.i, align 4
  %add.1.i = add i32 %15, %17
  %18 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.2.i, align 4
  %add.2.i = add i32 %19, %add.1.i
  %20 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.3.i, align 4
  %add.3.i = add i32 %21, %add.2.i
  %22 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.4.i, align 4
  %add.4.i = add i32 %23, %add.3.i
  %24 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.5.i, align 4
  %add.5.i = sub i32 0, %add.4.i
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %add.5.i)
  %tobool.not = icmp eq i32 %25, %add.5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool2.not = icmp eq i32 %dec, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool2.not
  br i1 %or.cond, label %while.body.if.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %while.body.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @p54_set_edcf(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @p54_setup_mac(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_queue_delayed_work(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @p54_set_leds(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @p54_tx_cancel(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible_timeout(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @p54_scan(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @p54_fetch_statistics(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @p54_set_ps(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_beacon_get_tim(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @p54_set_groupfilter(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @p54_update_beacon_tim(ptr noundef, i16 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bitmap_find_free_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bitmap_release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @p54_upload_key(ptr noundef, i8 noundef zeroext, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @p54_sta_unlock(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !17, !19, !20, !22, !23, !25, !26, !27, !28, !30, !32, !33, !34, !35, !36, !37, !38, !40, !41, !42, !43, !45, !47, !49, !51, !52, !54, !56, !58, !59, !61, !62}
!llvm.module.flags = !{!64, !65, !66, !67, !68, !69, !70, !71}
!llvm.ident = !{!72}

!0 = !{ptr @__param_nohwcrypt, !1, !"__param_nohwcrypt", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/intersil/p54/main.c", i32 27, i32 1}
!2 = !{ptr @__UNIQUE_ID_nohwcrypttype348, !1, !"__UNIQUE_ID_nohwcrypttype348", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_nohwcrypt349, !4, !"__UNIQUE_ID_nohwcrypt349", i1 false, i1 false}
!4 = !{!"../drivers/net/wireless/intersil/p54/main.c", i32 28, i32 1}
!5 = !{ptr @__UNIQUE_ID_author350, !6, !"__UNIQUE_ID_author350", i1 false, i1 false}
!6 = !{!"../drivers/net/wireless/intersil/p54/main.c", i32 29, i32 1}
!7 = !{ptr @__UNIQUE_ID_description351, !8, !"__UNIQUE_ID_description351", i1 false, i1 false}
!8 = !{!"../drivers/net/wireless/intersil/p54/main.c", i32 30, i32 1}
!9 = !{ptr @__UNIQUE_ID_file352, !10, !"__UNIQUE_ID_file352", i1 false, i1 false}
!10 = !{!"../drivers/net/wireless/intersil/p54/main.c", i32 31, i32 1}
!11 = !{ptr @__UNIQUE_ID_license353, !10, !"__UNIQUE_ID_license353", i1 false, i1 false}
!12 = !{ptr @__UNIQUE_ID_alias354, !13, !"__UNIQUE_ID_alias354", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/intersil/p54/main.c", i32 32, i32 1}
!14 = !{ptr @p54_init_common.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/intersil/p54/main.c", i32 740, i32 2}
!16 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @p54_init_common.__key.1, !18, !"__key", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/intersil/p54/main.c", i32 782, i32 2}
!19 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @p54_init_common.__key.3, !21, !"__key", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/intersil/p54/main.c", i32 783, i32 2}
!22 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @p54_init_common.__key.5, !24, !"__key", i1 false, i1 false}
!24 = !{!"../drivers/net/wireless/intersil/p54/main.c", i32 787, i32 2}
!25 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @p54_init_common.__key.7, !24, !"__key", i1 false, i1 false}
!27 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @__ksymtab_p54_init_common, !29, !"__ksymtab_p54_init_common", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/intersil/p54/main.c", i32 794, i32 1}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/intersil/p54/main.c", i32 803, i32 3}
!32 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @p54_register_common._entry, !31, !"_entry", i1 false, i1 false}
!37 = !{ptr @p54_register_common._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/intersil/p54/main.c", i32 816, i32 2}
!40 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @p54_register_common._entry.14, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @p54_register_common._entry_ptr.17, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @__ksymtab_p54_register_common, !44, !"__ksymtab_p54_register_common", i1 false, i1 false}
!44 = !{!"../drivers/net/wireless/intersil/p54/main.c", i32 819, i32 1}
!45 = !{ptr @__ksymtab_p54_free_common, !46, !"__ksymtab_p54_free_common", i1 false, i1 false}
!46 = !{!"../drivers/net/wireless/intersil/p54/main.c", i32 843, i32 1}
!47 = !{ptr @__ksymtab_p54_unregister_common, !48, !"__ksymtab_p54_unregister_common", i1 false, i1 false}
!48 = !{!"../drivers/net/wireless/intersil/p54/main.c", i32 860, i32 1}
!49 = !{ptr @modparam_nohwcrypt, !50, !"modparam_nohwcrypt", i1 false, i1 false}
!50 = !{!"../drivers/net/wireless/intersil/p54/main.c", i32 26, i32 13}
!51 = !{ptr @__param_str_nohwcrypt, !1, !"__param_str_nohwcrypt", i1 false, i1 false}
!52 = !{ptr @p54_ops, !53, !"p54_ops", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/intersil/p54/main.c", i32 705, i32 35}
!54 = distinct !{null, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/intersil/p54/main.c", i32 690, i32 2}
!56 = !{ptr @skb_queue_head_init.__key, !57, !"__key", i1 false, i1 false}
!57 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!58 = !{ptr @.str.19, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @init_completion.__key, !60, !"__key", i1 false, i1 false}
!60 = !{!"../include/linux/completion.h", i32 87, i32 2}
!61 = !{ptr @.str.20, !60, !"<string literal>", i1 false, i1 false}
!62 = distinct !{null, !63, !"__already_done", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/intersil/p54/main.c", i32 436, i32 2}
!64 = !{i32 1, !"wchar_size", i32 2}
!65 = !{i32 1, !"min_enum_size", i32 4}
!66 = !{i32 8, !"branch-target-enforcement", i32 0}
!67 = !{i32 8, !"sign-return-address", i32 0}
!68 = !{i32 8, !"sign-return-address-all", i32 0}
!69 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!70 = !{i32 7, !"uwtable", i32 1}
!71 = !{i32 7, !"frame-pointer", i32 2}
!72 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!73 = !{!"branch_weights", i32 1, i32 2000}
!74 = !{!"branch_weights", i32 2000, i32 1}
!75 = !{i8 0, i8 2}
