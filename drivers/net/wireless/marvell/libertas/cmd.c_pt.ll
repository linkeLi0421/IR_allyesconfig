; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/marvell/libertas/cmd.c_pt.bc'
source_filename = "../drivers/net/wireless/marvell/libertas/cmd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+lbs_cmd_copyback\22, \22a\22\09"
module asm "\09.weak\09__crc_lbs_cmd_copyback\09\09\09\09"
module asm "\09.long\09__crc_lbs_cmd_copyback\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_lbs_cmd_copyback:\09\09\09\09\09"
module asm "\09.asciz \09\22lbs_cmd_copyback\22\09\09\09\09\09"
module asm "__kstrtabns_lbs_cmd_copyback:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+lbs_host_sleep_cfg\22, \22a\22\09"
module asm "\09.weak\09__crc_lbs_host_sleep_cfg\09\09\09\09"
module asm "\09.long\09__crc_lbs_host_sleep_cfg\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_lbs_host_sleep_cfg:\09\09\09\09\09"
module asm "\09.asciz \09\22lbs_host_sleep_cfg\22\09\09\09\09\09"
module asm "__kstrtabns_lbs_host_sleep_cfg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__lbs_cmd\22, \22a\22\09"
module asm "\09.weak\09__crc___lbs_cmd\09\09\09\09"
module asm "\09.long\09__crc___lbs_cmd\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___lbs_cmd:\09\09\09\09\09"
module asm "\09.asciz \09\22__lbs_cmd\22\09\09\09\09\09"
module asm "__kstrtabns___lbs_cmd:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.22 }
%union.anon.22 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.cmd_confirm_sleep = type { %struct.cmd_header, i16, i16, i16, i16, i16 }
%struct.cmd_header = type { i16, i16, i16, i16 }
%struct.cmd_ds_get_hw_spec = type <{ %struct.cmd_header, i16, i16, i16, i16, [6 x i8], i16, i16, i32, i32, i32, i32, i32 }>
%struct.lbs_private = type { ptr, i32, %struct.work_struct, i32, [32 x [6 x i8]], ptr, i8, ptr, [6 x i8], [3 x i8], i8, ptr, %struct.lbs_mesh_stats, i16, i8, ptr, ptr, [6 x ptr], ptr, [6 x ptr], ptr, [6 x ptr], i32, i32, i32, i16, i32, i8, i32, i32, i32, i32, i32, i32, %struct.wait_queue_head, %struct.timer_list, i32, i32, %struct.wait_queue_head, ptr, i8, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, [6 x i8], i8, i8, i16, ptr, ptr, %struct.list_head, %struct.list_head, %struct.timer_list, i32, i8, [2 x [2312 x i8]], [2 x i32], %struct.kfifo, ptr, %struct.wait_queue_head, ptr, i8, i8, [4 x [13 x i8]], [4 x i8], i32, i8, i8, i8, i32, [2312 x i8], i8, ptr, %struct.timer_list, %struct.mutex, %struct.spinlock, i16, i8, i8, i8, i16, i16, i16, %struct.delayed_work, i32, %struct.wait_queue_head, i8, i32, %struct.wait_queue_head, ptr, ptr, ptr, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lbs_mesh_stats = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.kfifo = type { %union.anon.124, [0 x i8] }
%union.anon.124 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.24 }
%union.anon.24 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.23 }
%union.anon.23 = type { %struct.raw_spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.cmd_ctrl_node = type { %struct.list_head, i32, ptr, i32, ptr, i16, %struct.wait_queue_head }
%struct.cmd_ds_host_sleep = type <{ %struct.cmd_header, i32, i8, i16, %struct.wol_config }>
%struct.wol_config = type { i8, i8, i8, i8, [16 x %struct.host_wol_rule] }
%struct.host_wol_rule = type { i8, i8, i16, i16, i16, i32, i32 }
%struct.cmd_ds_802_11_ps_mode = type { %struct.cmd_header, i16, i16, i16, i16, i16, i16 }
%struct.cmd_ds_802_11_sleep_params = type { %struct.cmd_header, i16, i16, i16, i16, i8, i8, i16 }
%struct.sleep_params = type { i16, i16, i16, i8, i8, i16 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.123, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.123 = type { ptr }
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
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.cmd_ds_802_11_snmp_mib = type { %struct.cmd_header, i16, i16, i16, [128 x i8] }
%struct.cmd_ds_802_11_rf_tx_power = type { %struct.cmd_header, i16, i16, i8, i8 }
%struct.cmd_ds_802_11_monitor_mode = type { %struct.cmd_header, i16, i16 }
%struct.cmd_ds_802_11_rf_channel = type { %struct.cmd_header, i16, i16, i16, i16, [32 x i8] }
%struct.cmd_ds_802_11_rssi = type { %struct.cmd_header, i16, i16, i16, i16 }
%struct.cmd_ds_802_11d_domain_info = type { %struct.cmd_header, i16, %struct.mrvl_ie_domain_param_set }
%struct.mrvl_ie_domain_param_set = type { %struct.mrvl_ie_header, [3 x i8], [83 x %struct.ieee80211_country_ie_triplet] }
%struct.mrvl_ie_header = type { i16, i16 }
%struct.ieee80211_country_ie_triplet = type { %union.anon.129 }
%union.anon.129 = type { %struct.anon.130 }
%struct.anon.130 = type { i8, i8, i8 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.120, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.anon.120 = type { i64, i64, i8 }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.cmd_ds_reg_access = type { %struct.cmd_header, i16, i16, %union.anon.132 }
%union.anon.132 = type { i32 }
%struct.cmd_ds_802_11_radio_control = type { %struct.cmd_header, i16, i16 }
%struct.cmd_ds_mac_control = type { %struct.cmd_header, i16, i16 }
%struct.cmd_ds_802_11_tpc_cfg = type <{ %struct.cmd_header, i16, i8, i8, i8, i8, i8 }>
%struct.cmd_ds_802_11_pa_cfg = type { %struct.cmd_header, i16, i8, i8, i8, i8 }

@__kstrtab_lbs_cmd_copyback = external dso_local constant [0 x i8], align 1
@__kstrtabns_lbs_cmd_copyback = external dso_local constant [0 x i8], align 1
@__ksymtab_lbs_cmd_copyback = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @lbs_cmd_copyback to i32), ptr @__kstrtab_lbs_cmd_copyback, ptr @__kstrtabns_lbs_cmd_copyback }, section "___ksymtab_gpl+lbs_cmd_copyback", align 4
@.str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%pM, fw %u.%u.%up%u, cap 0x%08x\0A\00", [63 x i8] zeroinitializer }, align 32
@lbs_debug = external dso_local local_unnamed_addr global i32, align 4
@lbs_update_hw_spec._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 122, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"\017libertas cmd: GET_HW_SPEC: hardware interface 0x%x, hardware spec 0x%04x\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"lbs_update_hw_spec\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/net/wireless/marvell/libertas/cmd.c\00", [52 x i8] zeroinitializer }, align 32
@lbs_update_hw_spec._entry_ptr = internal global ptr @lbs_update_hw_spec._entry, section ".printk_index", align 4
@lbs_region_code_to_index = external dso_local local_unnamed_addr global [6 x i16], align 2
@.str.4 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"unidentified region code; using the default (USA)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"HOST_SLEEP_CFG failed %d\0A\00", [38 x i8] zeroinitializer }, align 32
@__kstrtab_lbs_host_sleep_cfg = external dso_local constant [0 x i8], align 1
@__kstrtabns_lbs_host_sleep_cfg = external dso_local constant [0 x i8], align 1
@__ksymtab_lbs_host_sleep_cfg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @lbs_host_sleep_cfg to i32), ptr @__kstrtab_lbs_host_sleep_cfg, ptr @__kstrtabns_lbs_host_sleep_cfg }, section "___ksymtab_gpl+lbs_host_sleep_cfg", align 4
@lbs_set_ps_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 240, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\017libertas cmd: PS_MODE: action ENTER_PS\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"lbs_set_ps_mode\00", [16 x i8] zeroinitializer }, align 32
@lbs_set_ps_mode._entry_ptr = internal global ptr @lbs_set_ps_mode._entry, section ".printk_index", align 4
@lbs_set_ps_mode._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.3, i32 243, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017libertas cmd: PS_MODE: action EXIT_PS\0A\00", [55 x i8] zeroinitializer }, align 32
@lbs_set_ps_mode._entry_ptr.10 = internal global ptr @lbs_set_ps_mode._entry.8, section ".printk_index", align 4
@lbs_set_ps_mode._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.7, ptr @.str.3, i32 248, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\017libertas cmd: PS_MODE: unknown action 0x%X\0A\00", [50 x i8] zeroinitializer }, align 32
@lbs_set_ps_mode._entry_ptr.13 = internal global ptr @lbs_set_ps_mode._entry.11, section ".printk_index", align 4
@lbs_cmd_802_11_sleep_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.3, i32 288, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [92 x i8], [36 x i8] } { [92 x i8] c"\017libertas cmd: error 0x%x, offset 0x%x, stabletime 0x%x, calcontrol 0x%x extsleepclk 0x%x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"lbs_cmd_802_11_sleep_params\00", [36 x i8] zeroinitializer }, align 32
@lbs_cmd_802_11_sleep_params._entry_ptr = internal global ptr @lbs_cmd_802_11_sleep_params._entry, section ".printk_index", align 4
@lbs_set_deep_sleep._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.3, i32 322, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017libertas cmd: deep sleep: sleep\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"lbs_set_deep_sleep\00", [45 x i8] zeroinitializer }, align 32
@lbs_set_deep_sleep._entry_ptr = internal global ptr @lbs_set_deep_sleep._entry, section ".printk_index", align 4
@.str.18 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"deep sleep: already enabled\0A\00", [35 x i8] zeroinitializer }, align 32
@lbs_set_deep_sleep._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.17, ptr @.str.3, i32 334, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017libertas cmd: deep sleep: wakeup\0A\00", [60 x i8] zeroinitializer }, align 32
@lbs_set_deep_sleep._entry_ptr.21 = internal global ptr @lbs_set_deep_sleep._entry.19, section ".printk_index", align 4
@.str.22 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"deep sleep: wakeup failed\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Host sleep configuration failed: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"HOST_SLEEP_ACTIVATE failed: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"host_sleep_q: timer expired\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"host sleep: already enabled\0A\00", [35 x i8] zeroinitializer }, align 32
@lbs_set_snmp_mib._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.3, i32 441, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\017libertas cmd: SNMP_CMD: (set) unhandled OID 0x%x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"lbs_set_snmp_mib\00", [47 x i8] zeroinitializer }, align 32
@lbs_set_snmp_mib._entry_ptr = internal global ptr @lbs_set_snmp_mib._entry, section ".printk_index", align 4
@lbs_set_snmp_mib._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.3, i32 447, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\017libertas cmd: SNMP_CMD: (set) oid 0x%x, oid size 0x%x, value 0x%x\0A\00", [59 x i8] zeroinitializer }, align 32
@lbs_set_snmp_mib._entry_ptr.31 = internal global ptr @lbs_set_snmp_mib._entry.29, section ".printk_index", align 4
@lbs_get_snmp_mib._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.3, i32 487, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\017libertas cmd: SNMP_CMD: (get) unhandled OID 0x%x size %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"lbs_get_snmp_mib\00", [47 x i8] zeroinitializer }, align 32
@lbs_get_snmp_mib._entry_ptr = internal global ptr @lbs_get_snmp_mib._entry, section ".printk_index", align 4
@lbs_set_tx_power._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.3, i32 545, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017libertas cmd: SET_RF_TX_POWER: %d dBm\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"lbs_set_tx_power\00", [47 x i8] zeroinitializer }, align 32
@lbs_set_tx_power._entry_ptr = internal global ptr @lbs_set_tx_power._entry, section ".printk_index", align 4
@lbs_set_monitor_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.3, i32 572, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017libertas cmd: SET_MONITOR_MODE: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"lbs_set_monitor_mode\00", [43 x i8] zeroinitializer }, align 32
@lbs_set_monitor_mode._entry_ptr = internal global ptr @lbs_set_monitor_mode._entry, section ".printk_index", align 4
@lbs_set_channel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.3, i32 651, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\017libertas cmd: channel switch from %d to %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"lbs_set_channel\00", [16 x i8] zeroinitializer }, align 32
@lbs_set_channel._entry_ptr = internal global ptr @lbs_set_channel._entry, section ".printk_index", align 4
@lbs_set_11d_domain_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.3, i32 719, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\017libertas 11d: Setting country code '%c%c'\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"lbs_set_11d_domain_info\00", [40 x i8] zeroinitializer }, align 32
@lbs_set_11d_domain_info._entry_ptr = internal global ptr @lbs_set_11d_domain_info._entry, section ".printk_index", align 4
@lbs_set_11d_domain_info._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.41, ptr @.str.3, i32 766, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\017libertas 11d: 11D triplet (%d, %d, %d)\0A\00", [54 x i8] zeroinitializer }, align 32
@lbs_set_11d_domain_info._entry_ptr.44 = internal global ptr @lbs_set_11d_domain_info._entry.42, section ".printk_index", align 4
@lbs_set_11d_domain_info._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.41, ptr @.str.3, i32 779, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lbs_set_11d_domain_info._entry_ptr.46 = internal global ptr @lbs_set_11d_domain_info._entry.45, section ".printk_index", align 4
@lbs_set_11d_domain_info._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.41, ptr @.str.3, i32 788, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017libertas 11d: # triplets %d\0A\00", [33 x i8] zeroinitializer }, align 32
@lbs_set_11d_domain_info._entry_ptr.49 = internal global ptr @lbs_set_11d_domain_info._entry.47, section ".printk_index", align 4
@.str.50 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"802.11D domain param set\00", [39 x i8] zeroinitializer }, align 32
@lbs_set_radio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.3, i32 1071, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\017libertas cmd: RADIO_CONTROL: radio %s, preamble %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"lbs_set_radio\00", [18 x i8] zeroinitializer }, align 32
@lbs_set_radio._entry_ptr = internal global ptr @lbs_set_radio._entry, section ".printk_index", align 4
@.str.53 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ON\00", [29 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"OFF\00", [28 x i8] zeroinitializer }, align 32
@lbs_allocate_cmd_buffer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.3, i32 1123, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\017libertas host: ALLOC_CMD_BUF: tempcmd_array is NULL\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"lbs_allocate_cmd_buffer\00", [40 x i8] zeroinitializer }, align 32
@lbs_allocate_cmd_buffer._entry_ptr = internal global ptr @lbs_allocate_cmd_buffer._entry, section ".printk_index", align 4
@lbs_allocate_cmd_buffer._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.56, ptr @.str.3, i32 1133, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\017libertas host: ALLOC_CMD_BUF: ptempvirtualaddr is NULL\0A\00", [38 x i8] zeroinitializer }, align 32
@lbs_allocate_cmd_buffer._entry_ptr.59 = internal global ptr @lbs_allocate_cmd_buffer._entry.57, section ".printk_index", align 4
@lbs_allocate_cmd_buffer.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.60 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&cmdarray[i].cmdwait_q\00", [41 x i8] zeroinitializer }, align 32
@lbs_free_cmd_buffer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.3, i32 1163, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\017libertas host: FREE_CMD_BUF: cmd_array is NULL\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"lbs_free_cmd_buffer\00", [44 x i8] zeroinitializer }, align 32
@lbs_free_cmd_buffer._entry_ptr = internal global ptr @lbs_free_cmd_buffer._entry, section ".printk_index", align 4
@.str.63 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"EXEC_NEXT_CMD: already processing command!\0A\00", [52 x i8] zeroinitializer }, align 32
@lbs_execute_next_command._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.3, i32 1264, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\017libertas host: EXEC_NEXT_CMD: cannot send cmd 0x%04x in psstate %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"lbs_execute_next_command\00", [39 x i8] zeroinitializer }, align 32
@lbs_execute_next_command._entry_ptr = internal global ptr @lbs_execute_next_command._entry, section ".printk_index", align 4
@lbs_execute_next_command._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.65, ptr @.str.3, i32 1270, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\017libertas host: EXEC_NEXT_CMD: OK to send command 0x%04x in psstate %d\0A\00", [55 x i8] zeroinitializer }, align 32
@lbs_execute_next_command._entry_ptr.68 = internal global ptr @lbs_execute_next_command._entry.66, section ".printk_index", align 4
@lbs_execute_next_command._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.65, ptr @.str.3, i32 1309, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\017libertas host: EXEC_NEXT_CMD: PS cmd, action 0x%02x\0A\00", [41 x i8] zeroinitializer }, align 32
@lbs_execute_next_command._entry_ptr.71 = internal global ptr @lbs_execute_next_command._entry.69, section ".printk_index", align 4
@lbs_execute_next_command._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.65, ptr @.str.3, i32 1313, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\017libertas host: EXEC_NEXT_CMD: ignore ENTER_PS cmd\0A\00", [43 x i8] zeroinitializer }, align 32
@lbs_execute_next_command._entry_ptr.74 = internal global ptr @lbs_execute_next_command._entry.72, section ".printk_index", align 4
@lbs_execute_next_command._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.65, ptr @.str.3, i32 1323, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\017libertas host: EXEC_NEXT_CMD: ignore EXIT_PS cmd in sleep\0A\00", [35 x i8] zeroinitializer }, align 32
@lbs_execute_next_command._entry_ptr.77 = internal global ptr @lbs_execute_next_command._entry.75, section ".printk_index", align 4
@lbs_execute_next_command._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.65, ptr @.str.3, i32 1332, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\017libertas host: EXEC_NEXT_CMD: sending EXIT_PS\0A\00", [47 x i8] zeroinitializer }, align 32
@lbs_execute_next_command._entry_ptr.80 = internal global ptr @lbs_execute_next_command._entry.78, section ".printk_index", align 4
@lbs_execute_next_command._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.65, ptr @.str.3, i32 1339, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\017libertas host: EXEC_NEXT_CMD: sending command 0x%04x\0A\00", [40 x i8] zeroinitializer }, align 32
@lbs_execute_next_command._entry_ptr.83 = internal global ptr @lbs_execute_next_command._entry.81, section ".printk_index", align 4
@lbs_execute_next_command._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.65, ptr @.str.3, i32 1350, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\017libertas host: EXEC_NEXT_CMD: cmdpendingq empty, go back to PS_SLEEP\00", [57 x i8] zeroinitializer }, align 32
@lbs_execute_next_command._entry_ptr.86 = internal global ptr @lbs_execute_next_command._entry.84, section ".printk_index", align 4
@lbs_ps_confirm_sleep._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.88, ptr @.str.3, i32 1409, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017libertas host: dnld_sent was set\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"lbs_ps_confirm_sleep\00", [43 x i8] zeroinitializer }, align 32
@lbs_ps_confirm_sleep._entry_ptr = internal global ptr @lbs_ps_confirm_sleep._entry, section ".printk_index", align 4
@lbs_ps_confirm_sleep._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.88, ptr @.str.3, i32 1415, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017libertas host: cur_cmd was set\0A\00", [62 x i8] zeroinitializer }, align 32
@lbs_ps_confirm_sleep._entry_ptr.91 = internal global ptr @lbs_ps_confirm_sleep._entry.89, section ".printk_index", align 4
@lbs_ps_confirm_sleep._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.88, ptr @.str.3, i32 1421, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\017libertas host: pending events or command responses\0A\00", [42 x i8] zeroinitializer }, align 32
@lbs_ps_confirm_sleep._entry_ptr.94 = internal global ptr @lbs_ps_confirm_sleep._entry.92, section ".printk_index", align 4
@lbs_ps_confirm_sleep._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.88, ptr @.str.3, i32 1426, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\017libertas host: sending lbs_ps_confirm_sleep\0A\00", [49 x i8] zeroinitializer }, align 32
@lbs_ps_confirm_sleep._entry_ptr.97 = internal global ptr @lbs_ps_confirm_sleep._entry.95, section ".printk_index", align 4
@lbs_ps_confirm_sleep._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.88, ptr @.str.3, i32 1429, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\017libertas host: sleep confirm has been delayed\0A\00", [47 x i8] zeroinitializer }, align 32
@lbs_ps_confirm_sleep._entry_ptr.100 = internal global ptr @lbs_ps_confirm_sleep._entry.98, section ".printk_index", align 4
@__lbs_cmd_async._entry = internal constant %struct.pi_entry { ptr @.str.101, ptr @.str.102, ptr @.str.3, i32 1506, ptr null, ptr null }, align 1
@.str.101 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017libertas host: PREP_CMD: card removed\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"__lbs_cmd_async\00", [16 x i8] zeroinitializer }, align 32
@__lbs_cmd_async._entry_ptr = internal global ptr @__lbs_cmd_async._entry, section ".printk_index", align 4
@__lbs_cmd_async._entry.103 = internal constant %struct.pi_entry { ptr @.str.104, ptr @.str.102, ptr @.str.3, i32 1516, ptr null, ptr null }, align 1
@.str.104 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\017libertas cmd: command not allowed in deep sleep\0A\00", [45 x i8] zeroinitializer }, align 32
@__lbs_cmd_async._entry_ptr.105 = internal global ptr @__lbs_cmd_async._entry.103, section ".printk_index", align 4
@__lbs_cmd_async._entry.106 = internal constant %struct.pi_entry { ptr @.str.107, ptr @.str.102, ptr @.str.3, i32 1524, ptr null, ptr null }, align 1
@.str.107 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017libertas host: PREP_CMD: cmdnode is NULL\0A\00", [52 x i8] zeroinitializer }, align 32
@__lbs_cmd_async._entry_ptr.108 = internal global ptr @__lbs_cmd_async._entry.106, section ".printk_index", align 4
@__lbs_cmd_async._entry.109 = internal constant %struct.pi_entry { ptr @.str.110, ptr @.str.102, ptr @.str.3, i32 1543, ptr null, ptr null }, align 1
@.str.110 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017libertas host: PREP_CMD: command 0x%04x\0A\00", [53 x i8] zeroinitializer }, align 32
@__lbs_cmd_async._entry_ptr.111 = internal global ptr @__lbs_cmd_async._entry.109, section ".printk_index", align 4
@.str.112 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"PREP_CMD: command 0x%04x failed: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@__kstrtab___lbs_cmd = external dso_local constant [0 x i8], align 1
@__kstrtabns___lbs_cmd = external dso_local constant [0 x i8], align 1
@__ksymtab___lbs_cmd = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__lbs_cmd to i32), ptr @__kstrtab___lbs_cmd, ptr @__kstrtabns___lbs_cmd }, section "___ksymtab_gpl+__lbs_cmd", align 4
@.str.113 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ds_awake_q: timer expired\0A\00", [37 x i8] zeroinitializer }, align 32
@lbs_get_channel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.115, ptr @.str.3, i32 604, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\017libertas cmd: current radio channel is %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"lbs_get_channel\00", [16 x i8] zeroinitializer }, align 32
@lbs_get_channel._entry_ptr = internal global ptr @lbs_get_channel._entry, section ".printk_index", align 4
@lbs_deb_hex._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.117, ptr @.str.118, i32 96, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"lbs_deb_hex\00", [20 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/net/wireless/marvell/libertas/defs.h\00", [51 x i8] zeroinitializer }, align 32
@lbs_deb_hex._entry_ptr = internal global ptr @lbs_deb_hex._entry, section ".printk_index", align 4
@lbs_deb_hex._entry.119 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.117, ptr @.str.118, i32 97, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"libertas %s: \00", [18 x i8] zeroinitializer }, align 32
@lbs_deb_hex._entry_ptr.121 = internal global ptr @lbs_deb_hex._entry.119, section ".printk_index", align 4
@lbs_deb_hex._entry.122 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.117, ptr @.str.118, i32 99, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%02x \00", [26 x i8] zeroinitializer }, align 32
@lbs_deb_hex._entry_ptr.124 = internal global ptr @lbs_deb_hex._entry.122, section ".printk_index", align 4
@lbs_deb_hex._entry.125 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.117, ptr @.str.118, i32 102, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lbs_deb_hex._entry_ptr.126 = internal global ptr @lbs_deb_hex._entry.125, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@lbs_submit_command._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.128, ptr @.str.3, i32 957, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\017libertas cmd: DNLD_CMD: command 0x%04x, seq %d, size %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"lbs_submit_command\00", [45 x i8] zeroinitializer }, align 32
@lbs_submit_command._entry_ptr = internal global ptr @lbs_submit_command._entry, section ".printk_index", align 4
@.str.129 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DNLD_CMD\00", [23 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"DNLD_CMD: hw_host_to_card failed: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.131 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sleep confirm\00", [18 x i8] zeroinitializer }, align 32
@confirm_sleep = external dso_local global %struct.cmd_confirm_sleep, align 1
@.str.132 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"confirm_sleep failed\0A\00", [42 x i8] zeroinitializer }, align 32
@lbs_get_free_cmd_node._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.134, ptr @.str.3, i32 1211, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\017libertas host: GET_CMD_NODE: cmd_ctrl_node is not available\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"lbs_get_free_cmd_node\00", [42 x i8] zeroinitializer }, align 32
@lbs_get_free_cmd_node._entry_ptr = internal global ptr @lbs_get_free_cmd_node._entry, section ".printk_index", align 4
@lbs_queue_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.135, ptr @.str.136, ptr @.str.3, i32 896, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\017libertas host: QUEUE_CMD: cmdnode is NULL\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"lbs_queue_cmd\00", [18 x i8] zeroinitializer }, align 32
@lbs_queue_cmd._entry_ptr = internal global ptr @lbs_queue_cmd._entry, section ".printk_index", align 4
@lbs_queue_cmd._entry.137 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.138, ptr @.str.136, ptr @.str.3, i32 900, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\017libertas host: DNLD_CMD: cmd size is zero\0A\00", [51 x i8] zeroinitializer }, align 32
@lbs_queue_cmd._entry_ptr.139 = internal global ptr @lbs_queue_cmd._entry.137, section ".printk_index", align 4
@lbs_queue_cmd._entry.140 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.141, ptr @.str.136, ptr @.str.3, i32 928, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\017libertas host: QUEUE_CMD: inserted command 0x%04x into cmdpendingq\0A\00", [58 x i8] zeroinitializer }, align 32
@lbs_queue_cmd._entry_ptr.142 = internal global ptr @lbs_queue_cmd._entry.140, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 48, i64 49]
@__sancov_gen_cov_switch_values.143 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 5, i64 6, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.144 = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 2]
@__sancov_gen_cov_switch_values.145 = internal global [5 x i64] [i64 3, i64 16, i64 25, i64 26, i64 27]
@__sancov_gen_cov_switch_values.146 = internal global [5 x i64] [i64 3, i64 16, i64 25, i64 26, i64 27]
@__sancov_gen_cov_switch_values.147 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 2, i64 4]
@__sancov_gen_cov_switch_values.148 = internal global [4 x i64] [i64 2, i64 16, i64 7936, i64 17152]
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 114, i32 25 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 121, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 146, i32 8 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 213, i32 26 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 240, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 243, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 248, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 284, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 322, i32 4 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 330, i32 26 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 334, i32 4 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 341, i32 10 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 372, i32 10 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 384, i32 11 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 393, i32 9 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 397, i32 26 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 441, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 446, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 486, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 545, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 572, i32 2 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 650, i32 2 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 718, i32 2 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 764, i32 5 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 778, i32 4 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 788, i32 2 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 795, i32 27 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 1070, i32 2 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 1123, i32 3 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 1133, i32 4 }
@___asan_gen_.341 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 1140, i32 3 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 1163, i32 3 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 1242, i32 9 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 1261, i32 5 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 1268, i32 4 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 1307, i32 5 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 1312, i32 6 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 1322, i32 6 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 1331, i32 5 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 1338, i32 3 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 1349, i32 4 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 1409, i32 3 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 1415, i32 3 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 1421, i32 3 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 1426, i32 3 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 1429, i32 3 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 1506, i32 3 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 1516, i32 4 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 1524, i32 3 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 1543, i32 2 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 1588, i32 26 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 308, i32 26 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 604, i32 2 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.498, i32 96, i32 6 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.498, i32 97, i32 5 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.498, i32 99, i32 4 }
@___asan_gen_.498 = private unnamed_addr constant [48 x i8] c"../drivers/net/wireless/marvell/libertas/defs.h\00", align 1
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.498, i32 102, i32 3 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 956, i32 2 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 958, i32 27 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 963, i32 26 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 1366, i32 28 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 1372, i32 27 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 1211, i32 3 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 896, i32 3 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 900, i32 3 }
@___asan_gen_.545 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.548 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.549 = private constant [47 x i8] c"../drivers/net/wireless/marvell/libertas/cmd.c\00", align 1
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.549, i32 927, i32 2 }
@llvm.compiler.used = appending global [189 x ptr] [ptr @__ksymtab___lbs_cmd, ptr @__ksymtab_lbs_cmd_copyback, ptr @__ksymtab_lbs_host_sleep_cfg, ptr @__lbs_cmd_async._entry, ptr @__lbs_cmd_async._entry.103, ptr @__lbs_cmd_async._entry.106, ptr @__lbs_cmd_async._entry.109, ptr @__lbs_cmd_async._entry_ptr, ptr @__lbs_cmd_async._entry_ptr.105, ptr @__lbs_cmd_async._entry_ptr.108, ptr @__lbs_cmd_async._entry_ptr.111, ptr @lbs_allocate_cmd_buffer._entry, ptr @lbs_allocate_cmd_buffer._entry.57, ptr @lbs_allocate_cmd_buffer._entry_ptr, ptr @lbs_allocate_cmd_buffer._entry_ptr.59, ptr @lbs_cmd_802_11_sleep_params._entry, ptr @lbs_cmd_802_11_sleep_params._entry_ptr, ptr @lbs_deb_hex._entry, ptr @lbs_deb_hex._entry.119, ptr @lbs_deb_hex._entry.122, ptr @lbs_deb_hex._entry.125, ptr @lbs_deb_hex._entry_ptr, ptr @lbs_deb_hex._entry_ptr.121, ptr @lbs_deb_hex._entry_ptr.124, ptr @lbs_deb_hex._entry_ptr.126, ptr @lbs_execute_next_command._entry, ptr @lbs_execute_next_command._entry.66, ptr @lbs_execute_next_command._entry.69, ptr @lbs_execute_next_command._entry.72, ptr @lbs_execute_next_command._entry.75, ptr @lbs_execute_next_command._entry.78, ptr @lbs_execute_next_command._entry.81, ptr @lbs_execute_next_command._entry.84, ptr @lbs_execute_next_command._entry_ptr, ptr @lbs_execute_next_command._entry_ptr.68, ptr @lbs_execute_next_command._entry_ptr.71, ptr @lbs_execute_next_command._entry_ptr.74, ptr @lbs_execute_next_command._entry_ptr.77, ptr @lbs_execute_next_command._entry_ptr.80, ptr @lbs_execute_next_command._entry_ptr.83, ptr @lbs_execute_next_command._entry_ptr.86, ptr @lbs_free_cmd_buffer._entry, ptr @lbs_free_cmd_buffer._entry_ptr, ptr @lbs_get_channel._entry, ptr @lbs_get_channel._entry_ptr, ptr @lbs_get_free_cmd_node._entry, ptr @lbs_get_free_cmd_node._entry_ptr, ptr @lbs_get_snmp_mib._entry, ptr @lbs_get_snmp_mib._entry_ptr, ptr @lbs_ps_confirm_sleep._entry, ptr @lbs_ps_confirm_sleep._entry.89, ptr @lbs_ps_confirm_sleep._entry.92, ptr @lbs_ps_confirm_sleep._entry.95, ptr @lbs_ps_confirm_sleep._entry.98, ptr @lbs_ps_confirm_sleep._entry_ptr, ptr @lbs_ps_confirm_sleep._entry_ptr.100, ptr @lbs_ps_confirm_sleep._entry_ptr.91, ptr @lbs_ps_confirm_sleep._entry_ptr.94, ptr @lbs_ps_confirm_sleep._entry_ptr.97, ptr @lbs_queue_cmd._entry, ptr @lbs_queue_cmd._entry.137, ptr @lbs_queue_cmd._entry.140, ptr @lbs_queue_cmd._entry_ptr, ptr @lbs_queue_cmd._entry_ptr.139, ptr @lbs_queue_cmd._entry_ptr.142, ptr @lbs_set_11d_domain_info._entry, ptr @lbs_set_11d_domain_info._entry.42, ptr @lbs_set_11d_domain_info._entry.45, ptr @lbs_set_11d_domain_info._entry.47, ptr @lbs_set_11d_domain_info._entry_ptr, ptr @lbs_set_11d_domain_info._entry_ptr.44, ptr @lbs_set_11d_domain_info._entry_ptr.46, ptr @lbs_set_11d_domain_info._entry_ptr.49, ptr @lbs_set_channel._entry, ptr @lbs_set_channel._entry_ptr, ptr @lbs_set_deep_sleep._entry, ptr @lbs_set_deep_sleep._entry.19, ptr @lbs_set_deep_sleep._entry_ptr, ptr @lbs_set_deep_sleep._entry_ptr.21, ptr @lbs_set_monitor_mode._entry, ptr @lbs_set_monitor_mode._entry_ptr, ptr @lbs_set_ps_mode._entry, ptr @lbs_set_ps_mode._entry.11, ptr @lbs_set_ps_mode._entry.8, ptr @lbs_set_ps_mode._entry_ptr, ptr @lbs_set_ps_mode._entry_ptr.10, ptr @lbs_set_ps_mode._entry_ptr.13, ptr @lbs_set_radio._entry, ptr @lbs_set_radio._entry_ptr, ptr @lbs_set_snmp_mib._entry, ptr @lbs_set_snmp_mib._entry.29, ptr @lbs_set_snmp_mib._entry_ptr, ptr @lbs_set_snmp_mib._entry_ptr.31, ptr @lbs_set_tx_power._entry, ptr @lbs_set_tx_power._entry_ptr, ptr @lbs_submit_command._entry, ptr @lbs_submit_command._entry_ptr, ptr @lbs_update_hw_spec._entry, ptr @lbs_update_hw_spec._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.43, ptr @.str.48, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.58, ptr @lbs_allocate_cmd_buffer.__key, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.67, ptr @.str.70, ptr @.str.73, ptr @.str.76, ptr @.str.79, ptr @.str.82, ptr @.str.85, ptr @.str.87, ptr @.str.88, ptr @.str.90, ptr @.str.93, ptr @.str.96, ptr @.str.99, ptr @.str.101, ptr @.str.102, ptr @.str.104, ptr @.str.107, ptr @.str.110, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.120, ptr @.str.123, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.138, ptr @.str.141], section "llvm.metadata"
@0 = internal global [134 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_update_hw_spec._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_set_ps_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_set_ps_mode._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_set_ps_mode._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_cmd_802_11_sleep_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_set_deep_sleep._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_set_deep_sleep._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_set_snmp_mib._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_set_snmp_mib._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_get_snmp_mib._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_set_tx_power._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_set_monitor_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_set_channel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_set_11d_domain_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_set_11d_domain_info._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_set_11d_domain_info._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_set_11d_domain_info._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_set_radio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_allocate_cmd_buffer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_allocate_cmd_buffer._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_allocate_cmd_buffer.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_free_cmd_buffer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_execute_next_command._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_execute_next_command._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_execute_next_command._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_execute_next_command._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_execute_next_command._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_execute_next_command._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_execute_next_command._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_execute_next_command._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_ps_confirm_sleep._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_ps_confirm_sleep._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_ps_confirm_sleep._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_ps_confirm_sleep._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_ps_confirm_sleep._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_get_channel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_deb_hex._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_deb_hex._entry.119 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_deb_hex._entry.122 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_deb_hex._entry.125 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_submit_command._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_get_free_cmd_node._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_queue_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_queue_cmd._entry.137 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_queue_cmd._entry.140 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @lbs_cmd_copyback(ptr nocapture readnone %priv, i32 noundef %extra, ptr nocapture noundef readonly %resp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %extra to ptr
  %size = getelementptr inbounds %struct.cmd_header, ptr %0, i32 0, i32 1
  %1 = ptrtoint ptr %size to i32
  call void @__asan_loadN_noabort(i32 %1, i32 2)
  %2 = load i16, ptr %size, align 1
  %3 = tail call i16 @llvm.bswap.i16(i16 %2)
  %size1 = getelementptr inbounds %struct.cmd_header, ptr %resp, i32 0, i32 1
  %4 = ptrtoint ptr %size1 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %size1, align 1
  %6 = tail call i16 @llvm.bswap.i16(i16 %5)
  %7 = tail call i16 @llvm.umin.i16(i16 %3, i16 %6)
  %conv7 = zext i16 %7 to i32
  %8 = call ptr @memcpy(ptr %0, ptr %resp, i32 %conv7)
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lbs_update_hw_spec(ptr noundef %priv) local_unnamed_addr #3 align 64 {
entry:
  %cmd = alloca %struct.cmd_ds_get_hw_spec, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 46, ptr nonnull %cmd) #8
  %0 = call ptr @memset(ptr %cmd, i32 0, i32 46)
  %size = getelementptr inbounds %struct.cmd_header, ptr %cmd, i32 0, i32 1
  %permanentaddr = getelementptr inbounds %struct.cmd_ds_get_hw_spec, ptr %cmd, i32 0, i32 5
  %current_addr = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 56
  %1 = call ptr @memcpy(ptr %permanentaddr, ptr %current_addr, i32 6)
  %2 = ptrtoint ptr %size to i32
  call void @__asan_storeN_noabort(i32 %2, i32 2)
  store i16 11776, ptr %size, align 1
  %3 = ptrtoint ptr %cmd to i32
  %call = call i32 @__lbs_cmd(ptr noundef %priv, i16 noundef zeroext 3, ptr noundef nonnull %cmd, i32 noundef 46, ptr noundef nonnull @lbs_cmd_copyback, i32 noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %entry
  %fwcapinfo = getelementptr inbounds %struct.cmd_ds_get_hw_spec, ptr %cmd, i32 0, i32 12
  %4 = ptrtoint ptr %fwcapinfo to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %fwcapinfo, align 1
  %6 = call i32 @llvm.bswap.i32(i32 %5)
  %fwcapinfo7 = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 54
  %7 = ptrtoint ptr %fwcapinfo7 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %fwcapinfo7, align 4
  %fwrelease = getelementptr inbounds %struct.cmd_ds_get_hw_spec, ptr %cmd, i32 0, i32 8
  %8 = ptrtoint ptr %fwrelease to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %fwrelease, align 1
  %10 = call i32 @llvm.bswap.i32(i32 %9)
  %fwrelease8 = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 53
  %or = call i32 @llvm.fshl.i32(i32 %10, i32 %10, i32 8)
  %11 = ptrtoint ptr %fwrelease8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %or, ptr %fwrelease8, align 4
  %12 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %priv, align 4
  %shr15 = lshr i32 %or, 24
  %shr18 = lshr i32 %or, 16
  %and19 = and i32 %shr18, 255
  %shr21 = lshr i32 %or, 8
  %and22 = and i32 %shr21, 255
  %and24 = and i32 %or, 255
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %13, ptr noundef nonnull @.str, ptr noundef %permanentaddr, i32 noundef %shr15, i32 noundef %and19, i32 noundef %and22, i32 noundef %and24, i32 noundef %6) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %14 = load i32, ptr @lbs_debug, align 4
  %and26 = and i32 %14, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %cmp.not = icmp eq i32 %and26, 0
  br i1 %cmp.not, label %if.end.do.end36_crit_edge, label %do.end

if.end.do.end36_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end36

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %hwifversion = getelementptr inbounds %struct.cmd_ds_get_hw_spec, ptr %cmd, i32 0, i32 1
  %15 = ptrtoint ptr %hwifversion to i32
  call void @__asan_loadN_noabort(i32 %15, i32 2)
  %16 = load i16, ptr %hwifversion, align 1
  %conv31 = zext i16 %16 to i32
  %version = getelementptr inbounds %struct.cmd_ds_get_hw_spec, ptr %cmd, i32 0, i32 2
  %17 = ptrtoint ptr %version to i32
  call void @__asan_loadN_noabort(i32 %17, i32 2)
  %18 = load i16, ptr %version, align 1
  %conv32 = zext i16 %18 to i32
  %call33 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %conv31, i32 noundef %conv32) #11
  br label %do.end36

do.end36:                                         ; preds = %do.end, %if.end.do.end36_crit_edge
  %19 = ptrtoint ptr %fwrelease8 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %fwrelease8, align 4
  %shr38.mask = and i32 %20, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %shr38.mask)
  %cmp39 = icmp eq i32 %shr38.mask, 67108864
  %regioncode = getelementptr inbounds %struct.cmd_ds_get_hw_spec, ptr %cmd, i32 0, i32 6
  %21 = ptrtoint ptr %regioncode to i32
  call void @__asan_loadN_noabort(i32 %21, i32 2)
  %22 = load i16, ptr %regioncode, align 1
  %23 = and i16 %22, 255
  %24 = lshr i16 %22, 8
  %.sink = select i1 %cmp39, i16 %23, i16 %24
  %25 = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 55
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %.sink, ptr %25, align 4
  call void @__asan_load2_noabort(i32 ptrtoint (ptr @lbs_region_code_to_index to i32))
  %27 = load i16, ptr @lbs_region_code_to_index, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %.sink, i16 %27)
  %cmp58 = icmp eq i16 %.sink, %27
  br i1 %cmp58, label %do.end36.if.end67_crit_edge, label %for.cond

do.end36.if.end67_crit_edge:                      ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67

for.cond:                                         ; preds = %do.end36
  call void @__asan_load2_noabort(i32 ptrtoint (ptr getelementptr inbounds ([6 x i16], ptr @lbs_region_code_to_index, i32 0, i32 1) to i32))
  %28 = load i16, ptr getelementptr inbounds ([6 x i16], ptr @lbs_region_code_to_index, i32 0, i32 1), align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %.sink, i16 %28)
  %cmp58.1 = icmp eq i16 %.sink, %28
  br i1 %cmp58.1, label %for.cond.if.end67_crit_edge, label %for.cond.1

for.cond.if.end67_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67

for.cond.1:                                       ; preds = %for.cond
  call void @__asan_load2_noabort(i32 ptrtoint (ptr getelementptr inbounds ([6 x i16], ptr @lbs_region_code_to_index, i32 0, i32 2) to i32))
  %29 = load i16, ptr getelementptr inbounds ([6 x i16], ptr @lbs_region_code_to_index, i32 0, i32 2), align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %.sink, i16 %29)
  %cmp58.2 = icmp eq i16 %.sink, %29
  br i1 %cmp58.2, label %for.cond.1.if.end67_crit_edge, label %for.cond.2

for.cond.1.if.end67_crit_edge:                    ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67

for.cond.2:                                       ; preds = %for.cond.1
  call void @__asan_load2_noabort(i32 ptrtoint (ptr getelementptr inbounds ([6 x i16], ptr @lbs_region_code_to_index, i32 0, i32 3) to i32))
  %30 = load i16, ptr getelementptr inbounds ([6 x i16], ptr @lbs_region_code_to_index, i32 0, i32 3), align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %.sink, i16 %30)
  %cmp58.3 = icmp eq i16 %.sink, %30
  br i1 %cmp58.3, label %for.cond.2.if.end67_crit_edge, label %for.cond.3

for.cond.2.if.end67_crit_edge:                    ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67

for.cond.3:                                       ; preds = %for.cond.2
  call void @__asan_load2_noabort(i32 ptrtoint (ptr getelementptr inbounds ([6 x i16], ptr @lbs_region_code_to_index, i32 0, i32 4) to i32))
  %31 = load i16, ptr getelementptr inbounds ([6 x i16], ptr @lbs_region_code_to_index, i32 0, i32 4), align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %.sink, i16 %31)
  %cmp58.4 = icmp eq i16 %.sink, %31
  br i1 %cmp58.4, label %for.cond.3.if.end67_crit_edge, label %for.cond.4

for.cond.3.if.end67_crit_edge:                    ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67

for.cond.4:                                       ; preds = %for.cond.3
  call void @__asan_load2_noabort(i32 ptrtoint (ptr getelementptr inbounds ([6 x i16], ptr @lbs_region_code_to_index, i32 0, i32 5) to i32))
  %32 = load i16, ptr getelementptr inbounds ([6 x i16], ptr @lbs_region_code_to_index, i32 0, i32 5), align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %.sink, i16 %32)
  %cmp58.5 = icmp eq i16 %.sink, %32
  br i1 %cmp58.5, label %for.cond.4.if.end67_crit_edge, label %for.cond.5

for.cond.4.if.end67_crit_edge:                    ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67

for.cond.5:                                       ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %25 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 16, ptr %25, align 4
  %34 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %priv, align 4
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %35, ptr noundef nonnull @.str.4) #11
  br label %if.end67

if.end67:                                         ; preds = %for.cond.5, %for.cond.4.if.end67_crit_edge, %for.cond.3.if.end67_crit_edge, %for.cond.2.if.end67_crit_edge, %for.cond.1.if.end67_crit_edge, %for.cond.if.end67_crit_edge, %do.end36.if.end67_crit_edge
  %36 = ptrtoint ptr %current_addr to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %current_addr, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %37)
  %cmp71 = icmp eq i8 %37, -1
  br i1 %cmp71, label %if.then73, label %if.end67.if.end78_crit_edge

if.end67.if.end78_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end78

if.then73:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  %38 = call ptr @memcpy(ptr %current_addr, ptr %permanentaddr, i32 6)
  br label %if.end78

if.end78:                                         ; preds = %if.then73, %if.end67.if.end78_crit_edge
  %copied_hwaddr = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 57
  %39 = ptrtoint ptr %copied_hwaddr to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %copied_hwaddr, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool79.not = icmp eq i8 %40, 0
  br i1 %tobool79.not, label %if.then80, label %if.end78.out_crit_edge

if.end78.out_crit_edge:                           ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then80:                                        ; preds = %if.end78
  %41 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %priv, align 4
  call void @dev_addr_mod(ptr noundef %42, i32 noundef 0, ptr noundef %current_addr, i32 noundef 6) #8
  %mesh_dev = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 11
  %43 = ptrtoint ptr %mesh_dev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %mesh_dev, align 4
  %tobool84.not = icmp eq ptr %44, null
  br i1 %tobool84.not, label %if.then80.if.end89_crit_edge, label %if.then85

if.then80.if.end89_crit_edge:                     ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end89

if.then85:                                        ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #10
  call void @dev_addr_mod(ptr noundef nonnull %44, i32 noundef 0, ptr noundef %current_addr, i32 noundef 6) #8
  br label %if.end89

if.end89:                                         ; preds = %if.then85, %if.then80.if.end89_crit_edge
  %45 = ptrtoint ptr %copied_hwaddr to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 1, ptr %copied_hwaddr, align 4
  br label %out

out:                                              ; preds = %if.end89, %if.end78.out_crit_edge, %entry.out_crit_edge
  call void @llvm.lifetime.end.p0(i64 46, ptr nonnull %cmd) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__lbs_cmd(ptr noundef %priv, i16 noundef zeroext %command, ptr nocapture noundef readonly %in_cmd, i32 noundef %in_cmd_size, ptr noundef %callback, i32 noundef %callback_arg) #3 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__lbs_cmd_async(ptr noundef %priv, i16 noundef zeroext %command, ptr noundef %in_cmd, i32 noundef %in_cmd_size, ptr noundef %callback, i32 noundef %callback_arg)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %call to i32
  br label %done

do.body:                                          ; preds = %entry
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 1576) #8
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 1583) #8
  %cmdwaitqwoken = getelementptr inbounds %struct.cmd_ctrl_node, ptr %call, i32 0, i32 5
  %1 = ptrtoint ptr %cmdwaitqwoken to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %cmdwaitqwoken, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.not = icmp eq i16 %2, 0
  br i1 %tobool.not, label %if.end14, label %do.body.do.body24_crit_edge

do.body.do.body24_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body24

if.end14:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #8
  %3 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #8
  %cmdwait_q = getelementptr inbounds %struct.cmd_ctrl_node, ptr %call, i32 0, i32 6
  %call1556 = call i32 @prepare_to_wait_event(ptr noundef %cmdwait_q, ptr noundef nonnull %__wq_entry, i32 noundef 2) #8
  %4 = ptrtoint ptr %cmdwaitqwoken to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %cmdwaitqwoken, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool17.not57 = icmp eq i16 %5, 0
  br i1 %tobool17.not57, label %if.end14.cleanup_crit_edge, label %if.end14.for.end_crit_edge

if.end14.for.end_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  br label %cleanup

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.end14.cleanup_crit_edge
  call void @schedule() #8
  %call15 = call i32 @prepare_to_wait_event(ptr noundef %cmdwait_q, ptr noundef nonnull %__wq_entry, i32 noundef 2) #8
  %6 = ptrtoint ptr %cmdwaitqwoken to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %cmdwaitqwoken, align 4
  %tobool17.not = icmp eq i16 %7, 0
  br i1 %tobool17.not, label %cleanup.cleanup_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end14.for.end_crit_edge
  call void @finish_wait(ptr noundef %cmdwait_q, ptr noundef nonnull %__wq_entry) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #8
  br label %do.body24

do.body24:                                        ; preds = %for.end, %do.body.do.body24_crit_edge
  %driver_lock = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 87
  %call27 = call i32 @_raw_spin_lock_irqsave(ptr noundef %driver_lock) #8
  %result = getelementptr inbounds %struct.cmd_ctrl_node, ptr %call, i32 0, i32 1
  %8 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %result, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool32.not = icmp eq i32 %9, 0
  br i1 %tobool32.not, label %do.body24.if.end35_crit_edge, label %if.then33

do.body24.if.end35_crit_edge:                     ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

if.then33:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv, align 4
  %conv34 = zext i16 %command to i32
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %11, ptr noundef nonnull @.str.112, i32 noundef %conv34, i32 noundef %9) #11
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %do.body24.if.end35_crit_edge
  %tobool.not.i = icmp eq ptr %call, null
  br i1 %tobool.not.i, label %if.end35.__lbs_cleanup_and_insert_cmd.exit_crit_edge, label %if.end.i

if.end35.__lbs_cleanup_and_insert_cmd.exit_crit_edge: ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %__lbs_cleanup_and_insert_cmd.exit

if.end.i:                                         ; preds = %if.end35
  %callback.i = getelementptr inbounds %struct.cmd_ctrl_node, ptr %call, i32 0, i32 2
  %12 = ptrtoint ptr %callback.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %callback.i, align 4
  %callback_arg.i = getelementptr inbounds %struct.cmd_ctrl_node, ptr %call, i32 0, i32 3
  %13 = ptrtoint ptr %callback_arg.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %callback_arg.i, align 4
  %cmdbuf.i = getelementptr inbounds %struct.cmd_ctrl_node, ptr %call, i32 0, i32 4
  %14 = ptrtoint ptr %cmdbuf.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cmdbuf.i, align 4
  %16 = call ptr @memset(ptr %15, i32 0, i32 2048)
  %cmdfreeq.i = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 62
  %prev.i.i = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 62, i32 1
  %17 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call, ptr noundef %18, ptr noundef %cmdfreeq.i) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.__lbs_cleanup_and_insert_cmd.exit_crit_edge

if.end.i.__lbs_cleanup_and_insert_cmd.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__lbs_cleanup_and_insert_cmd.exit

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call, ptr %prev.i.i, align 4
  %20 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %cmdfreeq.i, ptr %call, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call, i32 0, i32 1
  %21 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev3.i.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %call, ptr %18, align 4
  br label %__lbs_cleanup_and_insert_cmd.exit

__lbs_cleanup_and_insert_cmd.exit:                ; preds = %if.end.i.i.i, %if.end.i.__lbs_cleanup_and_insert_cmd.exit_crit_edge, %if.end35.__lbs_cleanup_and_insert_cmd.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %driver_lock, i32 noundef %call27) #8
  br label %done

done:                                             ; preds = %__lbs_cleanup_and_insert_cmd.exit, %if.then
  %ret.0 = phi i32 [ %0, %if.then ], [ %9, %__lbs_cleanup_and_insert_cmd.exit ]
  ret i32 %ret.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lbs_host_sleep_cfg(ptr noundef %priv, i32 noundef %criteria, ptr noundef %p_wol_config) #3 align 64 {
entry:
  %cmd_config = alloca %struct.cmd_ds_host_sleep, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 275, ptr nonnull %cmd_config) #8
  %0 = call ptr @memset(ptr %cmd_config, i32 255, i32 275)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %criteria)
  %cmp = icmp eq i32 %criteria, -1
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %ehs_remove_supported = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 80
  %1 = ptrtoint ptr %ehs_remove_supported to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %ehs_remove_supported, align 2, !range !267
  %sext = sub nsw i8 0, %2
  %spec.select = sext i8 %sext to i32
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry.if.end_crit_edge
  %criteria.addr.0 = phi i32 [ %criteria, %entry.if.end_crit_edge ], [ %spec.select, %land.lhs.true ]
  %size = getelementptr inbounds %struct.cmd_header, ptr %cmd_config, i32 0, i32 1
  %3 = ptrtoint ptr %size to i32
  call void @__asan_storeN_noabort(i32 %3, i32 2)
  store i16 4865, ptr %size, align 1
  %4 = tail call i32 @llvm.bswap.i32(i32 %criteria.addr.0)
  %criteria1 = getelementptr inbounds %struct.cmd_ds_host_sleep, ptr %cmd_config, i32 0, i32 1
  %5 = ptrtoint ptr %criteria1 to i32
  call void @__asan_storeN_noabort(i32 %5, i32 4)
  store i32 %4, ptr %criteria1, align 1
  %wol_gpio = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 78
  %6 = ptrtoint ptr %wol_gpio to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %wol_gpio, align 4
  %gpio = getelementptr inbounds %struct.cmd_ds_host_sleep, ptr %cmd_config, i32 0, i32 2
  %8 = ptrtoint ptr %gpio to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %gpio, align 1
  %wol_gap = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 79
  %9 = ptrtoint ptr %wol_gap to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %wol_gap, align 1
  %conv = zext i8 %10 to i16
  %gap = getelementptr inbounds %struct.cmd_ds_host_sleep, ptr %cmd_config, i32 0, i32 3
  %11 = ptrtoint ptr %gap to i32
  call void @__asan_storeN_noabort(i32 %11, i32 2)
  store i16 %conv, ptr %gap, align 1
  %cmp2.not = icmp eq ptr %p_wol_config, null
  %wol_conf5 = getelementptr inbounds %struct.cmd_ds_host_sleep, ptr %cmd_config, i32 0, i32 4
  br i1 %cmp2.not, label %if.end6, label %if.end6.thread

if.end6:                                          ; preds = %if.end
  %12 = ptrtoint ptr %wol_conf5 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %wol_conf5, align 1
  %call = call i32 @__lbs_cmd(ptr noundef %priv, i16 noundef zeroext 67, ptr noundef nonnull %cmd_config, i32 noundef 275, ptr noundef nonnull @lbs_ret_host_sleep_cfg, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool11.not = icmp eq i32 %call, 0
  br i1 %tobool11.not, label %if.end6.if.end18_crit_edge, label %if.end6.if.else17_crit_edge

if.end6.if.else17_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else17

if.end6.if.end18_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.end6.thread:                                   ; preds = %if.end
  %13 = call ptr @memcpy(ptr %wol_conf5, ptr %p_wol_config, i32 260)
  %call29 = call i32 @__lbs_cmd(ptr noundef %priv, i16 noundef zeroext 67, ptr noundef nonnull %cmd_config, i32 noundef 275, ptr noundef nonnull @lbs_ret_host_sleep_cfg, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool11.not30 = icmp eq i32 %call29, 0
  br i1 %tobool11.not30, label %if.then14, label %if.end6.thread.if.else17_crit_edge

if.end6.thread.if.else17_crit_edge:               ; preds = %if.end6.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else17

if.then14:                                        ; preds = %if.end6.thread
  call void @__sanitizer_cov_trace_pc() #10
  %14 = call ptr @memcpy(ptr %p_wol_config, ptr %wol_conf5, i32 260)
  br label %if.end18

if.else17:                                        ; preds = %if.end6.thread.if.else17_crit_edge, %if.end6.if.else17_crit_edge
  %call32 = phi i32 [ %call29, %if.end6.thread.if.else17_crit_edge ], [ %call, %if.end6.if.else17_crit_edge ]
  %15 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %priv, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %16, ptr noundef nonnull @.str.5, i32 noundef %call32) #11
  br label %if.end18

if.end18:                                         ; preds = %if.else17, %if.then14, %if.end6.if.end18_crit_edge
  %call31 = phi i32 [ 0, %if.then14 ], [ %call32, %if.else17 ], [ 0, %if.end6.if.end18_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 275, ptr nonnull %cmd_config) #8
  ret i32 %call31
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lbs_ret_host_sleep_cfg(ptr noundef %priv, i32 noundef %dummy, ptr nocapture noundef readnone %resp) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %is_host_sleep_activated = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 37
  %0 = ptrtoint ptr %is_host_sleep_activated to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %is_host_sleep_activated, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  %is_host_sleep_configured3 = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 36
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %is_host_sleep_configured3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %is_host_sleep_configured3, align 4
  %psstate = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 26
  %3 = ptrtoint ptr %psstate to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %psstate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then1, label %if.then.if.end4_crit_edge

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then1:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %is_host_sleep_activated to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %is_host_sleep_activated, align 4
  %host_sleep_q = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 38
  tail call void @__wake_up(ptr noundef %host_sleep_q, i32 noundef 1, i32 noundef 1, ptr noundef null) #8
  br label %if.end4

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %is_host_sleep_configured3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %is_host_sleep_configured3, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.then1, %if.then.if.end4_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lbs_set_ps_mode(ptr noundef %priv, i16 noundef zeroext %cmd_action, i1 noundef zeroext %block) local_unnamed_addr #3 align 64 {
entry:
  %cmd = alloca %struct.cmd_ds_802_11_ps_mode, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %cmd) #8
  %0 = getelementptr inbounds %struct.cmd_header, ptr %cmd, i32 0, i32 1
  %1 = getelementptr inbounds %struct.cmd_ds_802_11_ps_mode, ptr %cmd, i32 0, i32 1
  %2 = getelementptr inbounds %struct.cmd_ds_802_11_ps_mode, ptr %cmd, i32 0, i32 3
  %3 = call ptr @memset(ptr %cmd, i32 0, i32 20)
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 5120, ptr %0, align 2
  %5 = tail call i16 @llvm.bswap.i16(i16 %cmd_action)
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %1, align 2
  %conv = zext i16 %cmd_action to i32
  %7 = zext i16 %cmd_action to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i16 %cmd_action, label %do.body26 [
    i16 48, label %do.body
    i16 49, label %do.body12
  ]

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %8 = load i32, ptr @lbs_debug, align 4
  %and = and i32 %8, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp2.not = icmp eq i32 %and, 0
  br i1 %cmp2.not, label %do.body.do.end7_crit_edge, label %do.end

do.body.do.end7_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #11
  br label %do.end7

do.end7:                                          ; preds = %do.end, %do.body.do.end7_crit_edge
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 256, ptr %2, align 2
  br label %if.end41

do.body12:                                        ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %10 = load i32, ptr @lbs_debug, align 4
  %and13 = and i32 %10, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %cmp14.not = icmp eq i32 %and13, 0
  br i1 %cmp14.not, label %do.body12.if.end41_crit_edge, label %do.end19

do.body12.if.end41_crit_edge:                     ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

do.end19:                                         ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #10
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #11
  br label %if.end41

do.body26:                                        ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %11 = load i32, ptr @lbs_debug, align 4
  %and27 = and i32 %11, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %cmp28.not = icmp eq i32 %and27, 0
  br i1 %cmp28.not, label %do.body26.out_crit_edge, label %do.end33

do.body26.out_crit_edge:                          ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

do.end33:                                         ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #10
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %conv) #11
  br label %out

if.end41:                                         ; preds = %do.end19, %do.body12.if.end41_crit_edge, %do.end7
  br i1 %block, label %if.then42, label %if.else51

if.then42:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %0, align 2
  %14 = tail call i16 @llvm.bswap.i16(i16 %13)
  %15 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 5120, ptr %0, align 2
  %conv49 = zext i16 %14 to i32
  %16 = ptrtoint ptr %cmd to i32
  %call50 = call i32 @__lbs_cmd(ptr noundef %priv, i16 noundef zeroext 33, ptr noundef nonnull %cmd, i32 noundef %conv49, ptr noundef nonnull @lbs_cmd_copyback, i32 noundef %16)
  br label %out

if.else51:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = call ptr @__lbs_cmd_async(ptr noundef %priv, i16 noundef zeroext 33, ptr noundef nonnull %cmd, i32 noundef 20, ptr noundef nonnull @lbs_cmd_async_callback, i32 noundef 0) #8
  br label %out

out:                                              ; preds = %if.else51, %if.then42, %do.end33, %do.body26.out_crit_edge
  %ret.0 = phi i32 [ %call50, %if.then42 ], [ 0, %if.else51 ], [ -95, %do.end33 ], [ -95, %do.body26.out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %cmd) #8
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lbs_cmd_async(ptr noundef %priv, i16 noundef zeroext %command, ptr nocapture noundef readonly %in_cmd, i32 noundef %in_cmd_size) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__lbs_cmd_async(ptr noundef %priv, i16 noundef zeroext %command, ptr noundef %in_cmd, i32 noundef %in_cmd_size, ptr noundef nonnull @lbs_cmd_async_callback, i32 noundef 0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lbs_cmd_802_11_sleep_params(ptr noundef %priv, i16 noundef zeroext %cmd_action, ptr nocapture noundef %sp) local_unnamed_addr #3 align 64 {
entry:
  %cmd = alloca %struct.cmd_ds_802_11_sleep_params, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %cmd) #8
  %0 = getelementptr inbounds %struct.cmd_header, ptr %cmd, i32 0, i32 1
  %1 = getelementptr inbounds %struct.cmd_ds_802_11_sleep_params, ptr %cmd, i32 0, i32 1
  %2 = getelementptr inbounds %struct.cmd_ds_802_11_sleep_params, ptr %cmd, i32 0, i32 2
  %3 = getelementptr inbounds %struct.cmd_ds_802_11_sleep_params, ptr %cmd, i32 0, i32 3
  %4 = getelementptr inbounds %struct.cmd_ds_802_11_sleep_params, ptr %cmd, i32 0, i32 4
  %5 = getelementptr inbounds %struct.cmd_ds_802_11_sleep_params, ptr %cmd, i32 0, i32 5
  %6 = getelementptr inbounds %struct.cmd_ds_802_11_sleep_params, ptr %cmd, i32 0, i32 6
  %7 = getelementptr inbounds %struct.cmd_ds_802_11_sleep_params, ptr %cmd, i32 0, i32 7
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %cmd_action)
  %cmp = icmp eq i16 %cmd_action, 0
  %8 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 -1, ptr %cmd, align 8
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %9 = call ptr @memset(ptr %cmd, i32 0, i32 20)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %sp to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %sp, align 2
  %12 = tail call i16 @llvm.bswap.i16(i16 %11)
  %13 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %2, align 2
  %sp_offset = getelementptr inbounds %struct.sleep_params, ptr %sp, i32 0, i32 1
  %14 = ptrtoint ptr %sp_offset to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %sp_offset, align 2
  %16 = tail call i16 @llvm.bswap.i16(i16 %15)
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %3, align 4
  %sp_stabletime = getelementptr inbounds %struct.sleep_params, ptr %sp, i32 0, i32 2
  %18 = ptrtoint ptr %sp_stabletime to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %sp_stabletime, align 2
  %20 = tail call i16 @llvm.bswap.i16(i16 %19)
  %21 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %4, align 2
  %sp_calcontrol = getelementptr inbounds %struct.sleep_params, ptr %sp, i32 0, i32 3
  %22 = ptrtoint ptr %sp_calcontrol to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %sp_calcontrol, align 2
  %24 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %5, align 8
  %sp_extsleepclk = getelementptr inbounds %struct.sleep_params, ptr %sp, i32 0, i32 4
  %25 = ptrtoint ptr %sp_extsleepclk to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %sp_extsleepclk, align 1
  %27 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %6, align 1
  %sp_reserved = getelementptr inbounds %struct.sleep_params, ptr %sp, i32 0, i32 5
  %28 = ptrtoint ptr %sp_reserved to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %sp_reserved, align 2
  %30 = tail call i16 @llvm.bswap.i16(i16 %29)
  %31 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %7, align 2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %32 = tail call i16 @llvm.bswap.i16(i16 %cmd_action)
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %1, align 8
  %34 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 5120, ptr %0, align 2
  %35 = ptrtoint ptr %cmd to i32
  %call = call i32 @__lbs_cmd(ptr noundef %priv, i16 noundef zeroext 102, ptr noundef nonnull %cmd, i32 noundef 20, ptr noundef nonnull @lbs_cmd_copyback, i32 noundef %35)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body, label %if.end.if.end40_crit_edge

if.end.if.end40_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

do.body:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %36 = load i32, ptr @lbs_debug, align 4
  %and = and i32 %36, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp9.not = icmp eq i32 %and, 0
  br i1 %cmp9.not, label %do.body.do.end27_crit_edge, label %do.end

do.body.do.end27_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end27

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %2, align 2
  %39 = call i16 @llvm.bswap.i16(i16 %38)
  %conv15 = zext i16 %39 to i32
  %40 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %3, align 4
  %42 = call i16 @llvm.bswap.i16(i16 %41)
  %conv17 = zext i16 %42 to i32
  %43 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %4, align 2
  %45 = call i16 @llvm.bswap.i16(i16 %44)
  %conv19 = zext i16 %45 to i32
  %46 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %5, align 8
  %conv21 = zext i8 %47 to i32
  %48 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %6, align 1
  %conv23 = zext i8 %49 to i32
  %call24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %conv15, i32 noundef %conv17, i32 noundef %conv19, i32 noundef %conv21, i32 noundef %conv23) #11
  br label %do.end27

do.end27:                                         ; preds = %do.end, %do.body.do.end27_crit_edge
  %50 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %2, align 2
  %52 = call i16 @llvm.bswap.i16(i16 %51)
  %53 = ptrtoint ptr %sp to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %52, ptr %sp, align 2
  %54 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %3, align 4
  %56 = call i16 @llvm.bswap.i16(i16 %55)
  %sp_offset31 = getelementptr inbounds %struct.sleep_params, ptr %sp, i32 0, i32 1
  %57 = ptrtoint ptr %sp_offset31 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %56, ptr %sp_offset31, align 2
  %58 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %4, align 2
  %60 = call i16 @llvm.bswap.i16(i16 %59)
  %sp_stabletime33 = getelementptr inbounds %struct.sleep_params, ptr %sp, i32 0, i32 2
  %61 = ptrtoint ptr %sp_stabletime33 to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %60, ptr %sp_stabletime33, align 2
  %62 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %5, align 8
  %sp_calcontrol35 = getelementptr inbounds %struct.sleep_params, ptr %sp, i32 0, i32 3
  %64 = ptrtoint ptr %sp_calcontrol35 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %63, ptr %sp_calcontrol35, align 2
  %65 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %6, align 1
  %sp_extsleepclk37 = getelementptr inbounds %struct.sleep_params, ptr %sp, i32 0, i32 4
  %67 = ptrtoint ptr %sp_extsleepclk37 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %66, ptr %sp_extsleepclk37, align 1
  %68 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %7, align 2
  %70 = call i16 @llvm.bswap.i16(i16 %69)
  %sp_reserved39 = getelementptr inbounds %struct.sleep_params, ptr %sp, i32 0, i32 5
  %71 = ptrtoint ptr %sp_reserved39 to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %70, ptr %sp_reserved39, align 2
  br label %if.end40

if.end40:                                         ; preds = %do.end27, %if.end.if.end40_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %cmd) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lbs_set_deep_sleep(ptr noundef %priv, i32 noundef %deep_sleep) local_unnamed_addr #3 align 64 {
entry:
  %__wq_entry.i = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %deep_sleep)
  %tobool.not = icmp eq i32 %deep_sleep, 0
  %is_deep_sleep31 = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 28
  %0 = ptrtoint ptr %is_deep_sleep31 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %is_deep_sleep31, align 4
  br i1 %tobool.not, label %if.else30, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %if.else, label %do.body

do.body:                                          ; preds = %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %2 = load i32, ptr @lbs_debug, align 4
  %and = and i32 %2, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp2.not = icmp eq i32 %and, 0
  br i1 %cmp2.not, label %do.body.do.body7_crit_edge, label %do.end

do.body.do.body7_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body7

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #11
  br label %do.body7

do.body7:                                         ; preds = %do.end, %do.body.do.body7_crit_edge
  %enter_deep_sleep = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 50
  %3 = ptrtoint ptr %enter_deep_sleep to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %enter_deep_sleep, align 4
  %tobool8.not = icmp eq ptr %4, null
  br i1 %tobool8.not, label %do.body13, label %do.end21, !prof !268

do.body13:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/marvell/libertas/cmd.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 323, 0\0A.popsection", ""() #8, !srcloc !269
  unreachable

do.end21:                                         ; preds = %do.body7
  %call23 = tail call i32 %4(ptr noundef %priv) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.then25, label %do.end21.if.end77_crit_edge

do.end21.if.end77_crit_edge:                      ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end77

if.then25:                                        ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %priv, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 103
  %7 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %8, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #8
  %9 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %priv, align 4
  tail call void @netif_carrier_off(ptr noundef %10) #8
  br label %if.end77

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %priv, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %12, ptr noundef nonnull @.str.18) #11
  br label %if.end77

if.else30:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool32.not = icmp eq i32 %1, 0
  br i1 %tobool32.not, label %if.else30.if.end77_crit_edge, label %do.body34

if.else30.if.end77_crit_edge:                     ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end77

do.body34:                                        ; preds = %if.else30
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %13 = load i32, ptr @lbs_debug, align 4
  %and35 = and i32 %13, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %cmp36.not = icmp eq i32 %and35, 0
  br i1 %cmp36.not, label %do.body34.do.body46_crit_edge, label %do.end40

do.body34.do.body46_crit_edge:                    ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body46

do.end40:                                         ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #10
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #11
  br label %do.body46

do.body46:                                        ; preds = %do.end40, %do.body34.do.body46_crit_edge
  %exit_deep_sleep = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 51
  %14 = ptrtoint ptr %exit_deep_sleep to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %exit_deep_sleep, align 4
  %tobool47.not = icmp eq ptr %15, null
  br i1 %tobool47.not, label %do.body57, label %do.end65, !prof !268

do.body57:                                        ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/marvell/libertas/cmd.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 335, 0\0A.popsection", ""() #8, !srcloc !270
  unreachable

do.end65:                                         ; preds = %do.body46
  %call67 = tail call i32 %15(ptr noundef %priv) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.then69, label %do.end65.if.end77_crit_edge

do.end65.if.end77_crit_edge:                      ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end77

if.then69:                                        ; preds = %do.end65
  %16 = ptrtoint ptr %is_deep_sleep31 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %is_deep_sleep31, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i, label %if.then69.if.end77_crit_edge, label %if.then.i

if.then69.if.end77_crit_edge:                     ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end77

if.then.i:                                        ; preds = %if.then69
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 307) #8
  %18 = ptrtoint ptr %is_deep_sleep31 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %is_deep_sleep31, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool5.not.i = icmp eq i32 %19, 0
  br i1 %tobool5.not.i, label %if.then.i.if.end77_crit_edge, label %if.then13.i

if.then.i.if.end77_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end77

if.then13.i:                                      ; preds = %if.then.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i) #8
  %20 = call ptr @memset(ptr %__wq_entry.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i, i32 noundef 0) #8
  %ds_awake_q.i = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 34
  %call76.i = call i32 @prepare_to_wait_event(ptr noundef %ds_awake_q.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 1) #8
  %21 = ptrtoint ptr %is_deep_sleep31 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %is_deep_sleep31, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool17.not77.i = icmp eq i32 %22, 0
  br i1 %tobool17.not77.i, label %if.end41.thread.i, label %if.then13.i.if.end34.i_crit_edge

if.then13.i.if.end34.i_crit_edge:                 ; preds = %if.then13.i
  br label %if.end34.i

if.end41.thread.i:                                ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @finish_wait(ptr noundef %ds_awake_q.i, ptr noundef nonnull %__wq_entry.i) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #8
  br label %if.end77

if.end34.i:                                       ; preds = %cleanup.i.if.end34.i_crit_edge, %if.then13.i.if.end34.i_crit_edge
  %__ret14.179.i = phi i32 [ %__ret14.1.i, %cleanup.i.if.end34.i_crit_edge ], [ 1000, %if.then13.i.if.end34.i_crit_edge ]
  %call78.i = phi i32 [ %call.i, %cleanup.i.if.end34.i_crit_edge ], [ %call76.i, %if.then13.i.if.end34.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78.i)
  %tobool35.not.i = icmp eq i32 %call78.i, 0
  br i1 %tobool35.not.i, label %cleanup.i, label %if.end41.thread71.i

if.end41.thread71.i:                              ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #8
  br label %if.end77

cleanup.i:                                        ; preds = %if.end34.i
  %call38.i = call i32 @schedule_timeout(i32 noundef %__ret14.179.i) #8
  %call.i = call i32 @prepare_to_wait_event(ptr noundef %ds_awake_q.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 1) #8
  %23 = ptrtoint ptr %is_deep_sleep31 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %is_deep_sleep31, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool17.not.i = icmp eq i32 %24, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38.i)
  %tobool22.not.i = icmp eq i32 %call38.i, 0
  %25 = select i1 %tobool17.not.i, i1 %tobool22.not.i, i1 false
  %__ret14.1.i = select i1 %25, i32 1, i32 %call38.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret14.1.i)
  %tobool28.not.i = icmp eq i32 %__ret14.1.i, 0
  %26 = select i1 %tobool17.not.i, i1 true, i1 %tobool28.not.i
  br i1 %26, label %if.end41.i, label %cleanup.i.if.end34.i_crit_edge

cleanup.i.if.end34.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34.i

if.end41.i:                                       ; preds = %cleanup.i
  call void @finish_wait(ptr noundef %ds_awake_q.i, ptr noundef nonnull %__wq_entry.i) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #8
  br i1 %tobool28.not.i, label %if.then72, label %if.end41.i.if.end77_crit_edge

if.end41.i.if.end77_crit_edge:                    ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end77

if.then72:                                        ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %priv, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %28, ptr noundef nonnull @.str.113) #11
  %29 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %priv, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %30, ptr noundef nonnull @.str.22) #11
  br label %if.end77

if.end77:                                         ; preds = %if.then72, %if.end41.i.if.end77_crit_edge, %if.end41.thread71.i, %if.end41.thread.i, %if.then.i.if.end77_crit_edge, %if.then69.if.end77_crit_edge, %do.end65.if.end77_crit_edge, %if.else30.if.end77_crit_edge, %if.else, %if.then25, %do.end21.if.end77_crit_edge
  %ret.0 = phi i32 [ %call23, %do.end21.if.end77_crit_edge ], [ 0, %if.then25 ], [ 0, %if.else ], [ %call67, %do.end65.if.end77_crit_edge ], [ -1, %if.then72 ], [ 0, %if.else30.if.end77_crit_edge ], [ 0, %if.end41.i.if.end77_crit_edge ], [ 0, %if.then69.if.end77_crit_edge ], [ 0, %if.end41.thread71.i ], [ 0, %if.then.i.if.end77_crit_edge ], [ 0, %if.end41.thread.i ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lbs_set_host_sleep(ptr noundef %priv, i32 noundef %host_sleep) local_unnamed_addr #3 align 64 {
entry:
  %cmd_config.i98 = alloca %struct.cmd_ds_host_sleep, align 1
  %cmd_config.i = alloca %struct.cmd_ds_host_sleep, align 1
  %cmd = alloca %struct.cmd_header, align 8
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cmd) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %host_sleep)
  %tobool.not = icmp eq i32 %host_sleep, 0
  %is_host_sleep_activated61 = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 37
  %0 = ptrtoint ptr %is_host_sleep_activated61 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %is_host_sleep_activated61, align 4
  br i1 %tobool.not, label %if.else60, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %if.else, label %if.then1

if.then1:                                         ; preds = %if.then
  %2 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %cmd, align 8
  %wol_criteria = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 77
  %3 = ptrtoint ptr %wol_criteria to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %wol_criteria, align 4
  call void @llvm.lifetime.start.p0(i64 275, ptr nonnull %cmd_config.i) #8
  %5 = call ptr @memset(ptr %cmd_config.i, i32 255, i32 275)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %cmp.i = icmp eq i32 %4, -1
  br i1 %cmp.i, label %land.lhs.true.i, label %if.then1.if.end.i_crit_edge

if.then1.if.end.i_crit_edge:                      ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #10
  %ehs_remove_supported.i = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 80
  %6 = ptrtoint ptr %ehs_remove_supported.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ehs_remove_supported.i, align 2, !range !267
  %sext.i = sub nsw i8 0, %7
  %spec.select.i = sext i8 %sext.i to i32
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i, %if.then1.if.end.i_crit_edge
  %criteria.addr.0.i = phi i32 [ %4, %if.then1.if.end.i_crit_edge ], [ %spec.select.i, %land.lhs.true.i ]
  %size.i = getelementptr inbounds %struct.cmd_header, ptr %cmd_config.i, i32 0, i32 1
  %8 = ptrtoint ptr %size.i to i32
  call void @__asan_storeN_noabort(i32 %8, i32 2)
  store i16 4865, ptr %size.i, align 1
  %9 = tail call i32 @llvm.bswap.i32(i32 %criteria.addr.0.i) #8
  %criteria1.i = getelementptr inbounds %struct.cmd_ds_host_sleep, ptr %cmd_config.i, i32 0, i32 1
  %10 = ptrtoint ptr %criteria1.i to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 %9, ptr %criteria1.i, align 1
  %wol_gpio.i = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 78
  %11 = ptrtoint ptr %wol_gpio.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %wol_gpio.i, align 4
  %gpio.i = getelementptr inbounds %struct.cmd_ds_host_sleep, ptr %cmd_config.i, i32 0, i32 2
  %13 = ptrtoint ptr %gpio.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %gpio.i, align 1
  %wol_gap.i = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 79
  %14 = ptrtoint ptr %wol_gap.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %wol_gap.i, align 1
  %conv.i = zext i8 %15 to i16
  %gap.i = getelementptr inbounds %struct.cmd_ds_host_sleep, ptr %cmd_config.i, i32 0, i32 3
  %16 = ptrtoint ptr %gap.i to i32
  call void @__asan_storeN_noabort(i32 %16, i32 2)
  store i16 %conv.i, ptr %gap.i, align 1
  %wol_conf5.i = getelementptr inbounds %struct.cmd_ds_host_sleep, ptr %cmd_config.i, i32 0, i32 4
  %17 = ptrtoint ptr %wol_conf5.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %wol_conf5.i, align 1
  %call.i = call i32 @__lbs_cmd(ptr noundef %priv, i16 noundef zeroext 67, ptr noundef nonnull %cmd_config.i, i32 noundef 275, ptr noundef nonnull @lbs_ret_host_sleep_cfg, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool11.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool11.not.i, label %if.end, label %if.then3

if.then3:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %priv, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %19, ptr noundef nonnull @.str.5, i32 noundef %call.i) #11
  call void @llvm.lifetime.end.p0(i64 275, ptr nonnull %cmd_config.i) #8
  %20 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %priv, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %21, ptr noundef nonnull @.str.23, i32 noundef %call.i) #11
  br label %cleanup67

if.end:                                           ; preds = %if.end.i
  call void @llvm.lifetime.end.p0(i64 275, ptr nonnull %cmd_config.i) #8
  %psstate = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 26
  %22 = ptrtoint ptr %psstate to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %psstate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp4 = icmp eq i32 %23, 0
  br i1 %cmp4, label %if.then5, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then5:                                         ; preds = %if.end
  %call6 = call i32 @__lbs_cmd(ptr noundef %priv, i16 noundef zeroext 69, ptr noundef nonnull %cmd, i32 noundef 8, ptr noundef nonnull @lbs_ret_host_sleep_activate, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then5.if.end11_crit_edge, label %if.then8

if.then5.if.end11_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then8:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %priv, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %25, ptr noundef nonnull @.str.24, i32 noundef %call6) #11
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.then5.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %ret.0 = phi i32 [ %call6, %if.then8 ], [ 0, %if.then5.if.end11_crit_edge ], [ 0, %if.end.if.end11_crit_edge ]
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 391) #8
  %26 = ptrtoint ptr %is_host_sleep_activated61 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %is_host_sleep_activated61, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool16.not = icmp eq i32 %27, 0
  br i1 %tobool16.not, label %if.then24, label %if.end11.cleanup67_crit_edge

if.end11.cleanup67_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup67

if.then24:                                        ; preds = %if.end11
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #8
  %28 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #8
  %host_sleep_q = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 38
  %call26134 = call i32 @prepare_to_wait_event(ptr noundef %host_sleep_q, ptr noundef nonnull %__wq_entry, i32 noundef 1) #8
  %29 = ptrtoint ptr %is_host_sleep_activated61 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %is_host_sleep_activated61, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool29.not135.not = icmp eq i32 %30, 0
  br i1 %tobool29.not135.not, label %if.then24.if.end45_crit_edge, label %if.end52.thread

if.then24.if.end45_crit_edge:                     ; preds = %if.then24
  br label %if.end45

if.end52.thread:                                  ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  call void @finish_wait(ptr noundef %host_sleep_q, ptr noundef nonnull %__wq_entry) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #8
  br label %cleanup67

if.end45:                                         ; preds = %cleanup.if.end45_crit_edge, %if.then24.if.end45_crit_edge
  %__ret25.1138 = phi i32 [ %__ret25.1, %cleanup.if.end45_crit_edge ], [ 1000, %if.then24.if.end45_crit_edge ]
  %call26137 = phi i32 [ %call26, %cleanup.if.end45_crit_edge ], [ %call26134, %if.then24.if.end45_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26137)
  %tobool46.not = icmp eq i32 %call26137, 0
  br i1 %tobool46.not, label %cleanup, label %if.end52.thread129

if.end52.thread129:                               ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #8
  br label %cleanup67

cleanup:                                          ; preds = %if.end45
  %call49 = call i32 @schedule_timeout(i32 noundef %__ret25.1138) #8
  %call26 = call i32 @prepare_to_wait_event(ptr noundef %host_sleep_q, ptr noundef nonnull %__wq_entry, i32 noundef 1) #8
  %31 = ptrtoint ptr %is_host_sleep_activated61 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %is_host_sleep_activated61, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool29.not = icmp eq i32 %32, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool33.not = icmp eq i32 %call49, 0
  %spec.store.select70 = select i1 %tobool33.not, i32 1, i32 %call49
  %__ret25.1 = select i1 %tobool29.not, i32 %call49, i32 %spec.store.select70
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret25.1)
  %tobool39.not = icmp eq i32 %__ret25.1, 0
  %not.tobool29.not = xor i1 %tobool29.not, true
  %33 = select i1 %not.tobool29.not, i1 true, i1 %tobool39.not
  br i1 %33, label %if.end52, label %cleanup.if.end45_crit_edge

cleanup.if.end45_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

if.end52:                                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret25.1)
  %phi.cmp = icmp eq i32 %__ret25.1, 0
  call void @finish_wait(ptr noundef %host_sleep_q, ptr noundef nonnull %__wq_entry) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #8
  br i1 %phi.cmp, label %if.then55, label %if.end52.cleanup67_crit_edge

if.end52.cleanup67_crit_edge:                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup67

if.then55:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %priv, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %35, ptr noundef nonnull @.str.25) #11
  br label %cleanup67

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %priv, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %37, ptr noundef nonnull @.str.26) #11
  br label %cleanup67

if.else60:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool62.not = icmp eq i32 %1, 0
  br i1 %tobool62.not, label %if.else60.cleanup67_crit_edge, label %if.then63

if.else60.cleanup67_crit_edge:                    ; preds = %if.else60
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup67

if.then63:                                        ; preds = %if.else60
  call void @llvm.lifetime.start.p0(i64 275, ptr nonnull %cmd_config.i98) #8
  %38 = call ptr @memset(ptr %cmd_config.i98, i32 255, i32 275)
  %ehs_remove_supported.i99 = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 80
  %39 = ptrtoint ptr %ehs_remove_supported.i99 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %ehs_remove_supported.i99, align 2, !range !267
  %sext.i100 = sub nsw i8 0, %40
  %spec.select.i101 = sext i8 %sext.i100 to i32
  %size.i104 = getelementptr inbounds %struct.cmd_header, ptr %cmd_config.i98, i32 0, i32 1
  %41 = ptrtoint ptr %size.i104 to i32
  call void @__asan_storeN_noabort(i32 %41, i32 2)
  store i16 4865, ptr %size.i104, align 1
  %42 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i101) #8
  %criteria1.i105 = getelementptr inbounds %struct.cmd_ds_host_sleep, ptr %cmd_config.i98, i32 0, i32 1
  %43 = ptrtoint ptr %criteria1.i105 to i32
  call void @__asan_storeN_noabort(i32 %43, i32 4)
  store i32 %42, ptr %criteria1.i105, align 1
  %wol_gpio.i106 = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 78
  %44 = ptrtoint ptr %wol_gpio.i106 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %wol_gpio.i106, align 4
  %gpio.i107 = getelementptr inbounds %struct.cmd_ds_host_sleep, ptr %cmd_config.i98, i32 0, i32 2
  %46 = ptrtoint ptr %gpio.i107 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %45, ptr %gpio.i107, align 1
  %wol_gap.i108 = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 79
  %47 = ptrtoint ptr %wol_gap.i108 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %wol_gap.i108, align 1
  %conv.i109 = zext i8 %48 to i16
  %gap.i110 = getelementptr inbounds %struct.cmd_ds_host_sleep, ptr %cmd_config.i98, i32 0, i32 3
  %49 = ptrtoint ptr %gap.i110 to i32
  call void @__asan_storeN_noabort(i32 %49, i32 2)
  store i16 %conv.i109, ptr %gap.i110, align 1
  %wol_conf5.i111 = getelementptr inbounds %struct.cmd_ds_host_sleep, ptr %cmd_config.i98, i32 0, i32 4
  %50 = ptrtoint ptr %wol_conf5.i111 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %wol_conf5.i111, align 1
  %call.i113 = call i32 @__lbs_cmd(ptr noundef %priv, i16 noundef zeroext 67, ptr noundef nonnull %cmd_config.i98, i32 noundef 275, ptr noundef nonnull @lbs_ret_host_sleep_cfg, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i113)
  %tobool11.not.i114 = icmp eq i32 %call.i113, 0
  br i1 %tobool11.not.i114, label %if.then63.lbs_host_sleep_cfg.exit117_crit_edge, label %if.else17.i115

if.then63.lbs_host_sleep_cfg.exit117_crit_edge:   ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #10
  br label %lbs_host_sleep_cfg.exit117

if.else17.i115:                                   ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #10
  %51 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %priv, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %52, ptr noundef nonnull @.str.5, i32 noundef %call.i113) #11
  br label %lbs_host_sleep_cfg.exit117

lbs_host_sleep_cfg.exit117:                       ; preds = %if.else17.i115, %if.then63.lbs_host_sleep_cfg.exit117_crit_edge
  call void @llvm.lifetime.end.p0(i64 275, ptr nonnull %cmd_config.i98) #8
  br label %cleanup67

cleanup67:                                        ; preds = %lbs_host_sleep_cfg.exit117, %if.else60.cleanup67_crit_edge, %if.else, %if.then55, %if.end52.cleanup67_crit_edge, %if.end52.thread129, %if.end52.thread, %if.end11.cleanup67_crit_edge, %if.then3
  %retval.0 = phi i32 [ %call.i, %if.then3 ], [ %ret.0, %if.end52.cleanup67_crit_edge ], [ -1, %if.then55 ], [ 0, %if.else ], [ %call.i113, %lbs_host_sleep_cfg.exit117 ], [ 0, %if.else60.cleanup67_crit_edge ], [ %ret.0, %if.end52.thread129 ], [ %ret.0, %if.end11.cleanup67_crit_edge ], [ %ret.0, %if.end52.thread ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cmd) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lbs_ret_host_sleep_activate(ptr noundef %priv, i32 noundef %dummy, ptr nocapture noundef readnone %cmd) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %is_host_sleep_activated = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 37
  %0 = ptrtoint ptr %is_host_sleep_activated to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %is_host_sleep_activated, align 4
  %host_sleep_q = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 38
  tail call void @__wake_up(ptr noundef %host_sleep_q, i32 noundef 1, i32 noundef 1, ptr noundef null) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lbs_set_snmp_mib(ptr noundef %priv, i32 noundef %oid, i16 noundef zeroext %val) local_unnamed_addr #3 align 64 {
entry:
  %cmd = alloca %struct.cmd_ds_802_11_snmp_mib, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 142, ptr nonnull %cmd) #8
  %0 = call ptr @memset(ptr %cmd, i32 0, i32 142)
  %size = getelementptr inbounds %struct.cmd_header, ptr %cmd, i32 0, i32 1
  %1 = ptrtoint ptr %size to i32
  call void @__asan_storeN_noabort(i32 %1, i32 2)
  store i16 -29184, ptr %size, align 1
  %action = getelementptr inbounds %struct.cmd_ds_802_11_snmp_mib, ptr %cmd, i32 0, i32 1
  %2 = ptrtoint ptr %action to i32
  call void @__asan_storeN_noabort(i32 %2, i32 2)
  store i16 256, ptr %action, align 1
  %conv = trunc i32 %oid to i16
  %3 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %oid1 = getelementptr inbounds %struct.cmd_ds_802_11_snmp_mib, ptr %cmd, i32 0, i32 2
  %4 = ptrtoint ptr %oid1 to i32
  call void @__asan_storeN_noabort(i32 %4, i32 2)
  store i16 %3, ptr %oid1, align 1
  %5 = zext i32 %oid to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.143)
  switch i32 %oid, label %do.body [
    i32 0, label %sw.bb
    i32 9, label %entry.sw.bb3_crit_edge
    i32 8, label %entry.sw.bb3_crit_edge40
    i32 5, label %entry.sw.bb3_crit_edge41
    i32 6, label %entry.sw.bb3_crit_edge42
    i32 7, label %entry.sw.bb3_crit_edge43
  ]

entry.sw.bb3_crit_edge43:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb3

entry.sw.bb3_crit_edge42:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb3

entry.sw.bb3_crit_edge41:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb3

entry.sw.bb3_crit_edge40:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb3

entry.sw.bb3_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb3

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %bufsize = getelementptr inbounds %struct.cmd_ds_802_11_snmp_mib, ptr %cmd, i32 0, i32 3
  %6 = ptrtoint ptr %bufsize to i32
  call void @__asan_storeN_noabort(i32 %6, i32 2)
  store i16 256, ptr %bufsize, align 1
  %conv2 = trunc i16 %val to i8
  %value = getelementptr inbounds %struct.cmd_ds_802_11_snmp_mib, ptr %cmd, i32 0, i32 4
  %7 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv2, ptr %value, align 1
  br label %do.body10

sw.bb3:                                           ; preds = %entry.sw.bb3_crit_edge, %entry.sw.bb3_crit_edge40, %entry.sw.bb3_crit_edge41, %entry.sw.bb3_crit_edge42, %entry.sw.bb3_crit_edge43
  %bufsize4 = getelementptr inbounds %struct.cmd_ds_802_11_snmp_mib, ptr %cmd, i32 0, i32 3
  %8 = ptrtoint ptr %bufsize4 to i32
  call void @__asan_storeN_noabort(i32 %8, i32 2)
  store i16 512, ptr %bufsize4, align 1
  %9 = tail call i16 @llvm.bswap.i16(i16 %val)
  %value5 = getelementptr inbounds %struct.cmd_ds_802_11_snmp_mib, ptr %cmd, i32 0, i32 4
  %10 = ptrtoint ptr %value5 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 2)
  store i16 %9, ptr %value5, align 1
  br label %do.body10

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %11 = load i32, ptr @lbs_debug, align 4
  %and = and i32 %11, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %do.body.out_crit_edge, label %do.end

do.body.out_crit_edge:                            ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, i32 noundef %oid) #11
  br label %out

do.body10:                                        ; preds = %sw.bb3, %sw.bb
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %12 = load i32, ptr @lbs_debug, align 4
  %and11 = and i32 %12, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %cmp12.not = icmp eq i32 %and11, 0
  br i1 %cmp12.not, label %do.body10.do.end27_crit_edge, label %do.end17

do.body10.do.end27_crit_edge:                     ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end27

do.end17:                                         ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #10
  %bufsize21 = getelementptr inbounds %struct.cmd_ds_802_11_snmp_mib, ptr %cmd, i32 0, i32 3
  %13 = ptrtoint ptr %bufsize21 to i32
  call void @__asan_loadN_noabort(i32 %13, i32 2)
  %14 = load i16, ptr %bufsize21, align 1
  %15 = tail call i16 @llvm.bswap.i16(i16 %14)
  %conv22 = zext i16 %15 to i32
  %conv23 = zext i16 %val to i32
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, i32 noundef %oid, i32 noundef %conv22, i32 noundef %conv23) #11
  br label %do.end27

do.end27:                                         ; preds = %do.end17, %do.body10.do.end27_crit_edge
  %16 = ptrtoint ptr %size to i32
  call void @__asan_loadN_noabort(i32 %16, i32 2)
  %17 = load i16, ptr %size, align 1
  %18 = tail call i16 @llvm.bswap.i16(i16 %17)
  %19 = ptrtoint ptr %size to i32
  call void @__asan_storeN_noabort(i32 %19, i32 2)
  store i16 -29184, ptr %size, align 1
  %conv34 = zext i16 %18 to i32
  %20 = ptrtoint ptr %cmd to i32
  %call35 = call i32 @__lbs_cmd(ptr noundef %priv, i16 noundef zeroext 22, ptr noundef nonnull %cmd, i32 noundef %conv34, ptr noundef nonnull @lbs_cmd_copyback, i32 noundef %20)
  br label %out

out:                                              ; preds = %do.end27, %do.end, %do.body.out_crit_edge
  %ret.0 = phi i32 [ %call35, %do.end27 ], [ -22, %do.end ], [ -22, %do.body.out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 142, ptr nonnull %cmd) #8
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lbs_get_snmp_mib(ptr noundef %priv, i32 noundef %oid, ptr nocapture noundef writeonly %out_val) local_unnamed_addr #3 align 64 {
entry:
  %cmd = alloca %struct.cmd_ds_802_11_snmp_mib, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 142, ptr nonnull %cmd) #8
  %0 = call ptr @memset(ptr %cmd, i32 0, i32 142)
  %size = getelementptr inbounds %struct.cmd_header, ptr %cmd, i32 0, i32 1
  %conv = trunc i32 %oid to i16
  %1 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %oid1 = getelementptr inbounds %struct.cmd_ds_802_11_snmp_mib, ptr %cmd, i32 0, i32 2
  %2 = ptrtoint ptr %oid1 to i32
  call void @__asan_storeN_noabort(i32 %2, i32 2)
  store i16 %1, ptr %oid1, align 1
  %3 = ptrtoint ptr %size to i32
  call void @__asan_storeN_noabort(i32 %3, i32 2)
  store i16 -29184, ptr %size, align 1
  %4 = ptrtoint ptr %cmd to i32
  %call = call i32 @__lbs_cmd(ptr noundef %priv, i16 noundef zeroext 22, ptr noundef nonnull %cmd, i32 noundef 142, ptr noundef nonnull @lbs_cmd_copyback, i32 noundef %4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %entry
  %bufsize = getelementptr inbounds %struct.cmd_ds_802_11_snmp_mib, ptr %cmd, i32 0, i32 3
  %5 = ptrtoint ptr %bufsize to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %6 = load i16, ptr %bufsize, align 1
  %7 = call i16 @llvm.bswap.i16(i16 %6)
  %conv8 = zext i16 %7 to i32
  %8 = zext i16 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.144)
  switch i16 %7, label %do.body [
    i16 1, label %sw.bb
    i16 2, label %sw.bb10
  ]

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %value = getelementptr inbounds %struct.cmd_ds_802_11_snmp_mib, ptr %cmd, i32 0, i32 4
  %9 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %value, align 1
  %conv9 = zext i8 %10 to i16
  %11 = ptrtoint ptr %out_val to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv9, ptr %out_val, align 2
  br label %out

sw.bb10:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %value11 = getelementptr inbounds %struct.cmd_ds_802_11_snmp_mib, ptr %cmd, i32 0, i32 4
  %12 = ptrtoint ptr %value11 to i32
  call void @__asan_loadN_noabort(i32 %12, i32 2)
  %13 = load i16, ptr %value11, align 1
  %14 = call i16 @llvm.bswap.i16(i16 %13)
  %15 = ptrtoint ptr %out_val to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %out_val, align 2
  br label %out

do.body:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %16 = load i32, ptr @lbs_debug, align 4
  %and = and i32 %16, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %do.body.out_crit_edge, label %do.end

do.body.out_crit_edge:                            ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %call18 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, i32 noundef %oid, i32 noundef %conv8) #11
  br label %out

out:                                              ; preds = %do.end, %do.body.out_crit_edge, %sw.bb10, %sw.bb, %entry.out_crit_edge
  call void @llvm.lifetime.end.p0(i64 142, ptr nonnull %cmd) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lbs_get_tx_power(ptr noundef %priv, ptr nocapture noundef writeonly %curlevel, ptr noundef writeonly %minlevel, ptr noundef writeonly %maxlevel) local_unnamed_addr #3 align 64 {
entry:
  %cmd = alloca %struct.cmd_ds_802_11_rf_tx_power, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %cmd) #8
  %0 = getelementptr inbounds %struct.cmd_header, ptr %cmd, i32 0, i32 1
  %1 = getelementptr inbounds %struct.cmd_ds_802_11_rf_tx_power, ptr %cmd, i32 0, i32 3
  %2 = getelementptr inbounds %struct.cmd_ds_802_11_rf_tx_power, ptr %cmd, i32 0, i32 4
  %3 = call ptr @memset(ptr %cmd, i32 0, i32 14)
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 3584, ptr %0, align 2
  %5 = ptrtoint ptr %cmd to i32
  %call = call i32 @__lbs_cmd(ptr noundef %priv, i16 noundef zeroext 30, ptr noundef nonnull %cmd, i32 noundef 14, ptr noundef nonnull @lbs_cmd_copyback, i32 noundef %5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.if.end16_crit_edge

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then:                                          ; preds = %entry
  %6 = getelementptr inbounds %struct.cmd_ds_802_11_rf_tx_power, ptr %cmd, i32 0, i32 2
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %6, align 2
  %9 = call i16 @llvm.bswap.i16(i16 %8)
  %10 = ptrtoint ptr %curlevel to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %curlevel, align 2
  %tobool.not = icmp eq ptr %minlevel, null
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %if.then8

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %2, align 1
  %conv10 = sext i8 %12 to i16
  %13 = ptrtoint ptr %minlevel to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv10, ptr %minlevel, align 2
  br label %if.end

if.end:                                           ; preds = %if.then8, %if.then.if.end_crit_edge
  %tobool11.not = icmp eq ptr %maxlevel, null
  br i1 %tobool11.not, label %if.end.if.end16_crit_edge, label %if.then12

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %1, align 2
  %conv14 = sext i8 %15 to i16
  %16 = ptrtoint ptr %maxlevel to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv14, ptr %maxlevel, align 2
  br label %if.end16

if.end16:                                         ; preds = %if.then12, %if.end.if.end16_crit_edge, %entry.if.end16_crit_edge
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %cmd) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lbs_set_tx_power(ptr noundef %priv, i16 noundef signext %dbm) local_unnamed_addr #3 align 64 {
entry:
  %cmd = alloca %struct.cmd_ds_802_11_rf_tx_power, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %cmd) #8
  %0 = getelementptr inbounds %struct.cmd_header, ptr %cmd, i32 0, i32 1
  %1 = getelementptr inbounds %struct.cmd_ds_802_11_rf_tx_power, ptr %cmd, i32 0, i32 1
  %2 = getelementptr inbounds %struct.cmd_ds_802_11_rf_tx_power, ptr %cmd, i32 0, i32 2
  %3 = call ptr @memset(ptr %cmd, i32 0, i32 14)
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 3584, ptr %0, align 2
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 256, ptr %1, align 2
  %6 = tail call i16 @llvm.bswap.i16(i16 %dbm)
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %2, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %8 = load i32, ptr @lbs_debug, align 4
  %and = and i32 %8, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv = sext i16 %dbm to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, i32 noundef %conv) #11
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %0, align 2
  %11 = tail call i16 @llvm.bswap.i16(i16 %10)
  %12 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 3584, ptr %0, align 2
  %conv10 = zext i16 %11 to i32
  %13 = ptrtoint ptr %cmd to i32
  %call11 = call i32 @__lbs_cmd(ptr noundef %priv, i16 noundef zeroext 30, ptr noundef nonnull %cmd, i32 noundef %conv10, ptr noundef nonnull @lbs_cmd_copyback, i32 noundef %13)
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %cmd) #8
  ret i32 %call11
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lbs_set_monitor_mode(ptr noundef %priv, i32 noundef %enable) local_unnamed_addr #3 align 64 {
entry:
  %cmd = alloca %struct.cmd_ds_802_11_monitor_mode, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cmd) #8
  %0 = getelementptr inbounds %struct.cmd_header, ptr %cmd, i32 0, i32 1
  %1 = getelementptr inbounds %struct.cmd_ds_802_11_monitor_mode, ptr %cmd, i32 0, i32 1
  %2 = call ptr @memset(ptr %cmd, i32 0, i32 12)
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 3072, ptr %0, align 2
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 256, ptr %1, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %if.then

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %5 = getelementptr inbounds %struct.cmd_ds_802_11_monitor_mode, ptr %cmd, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 256, ptr %5, align 2
  br label %do.body

do.body:                                          ; preds = %if.then, %entry.do.body_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %7 = load i32, ptr @lbs_debug, align 4
  %and = and i32 %7, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %do.body.do.end5_crit_edge, label %do.end

do.body.do.end5_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end5

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, i32 noundef %enable) #11
  br label %do.end5

do.end5:                                          ; preds = %do.end, %do.body.do.end5_crit_edge
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %0, align 2
  %10 = tail call i16 @llvm.bswap.i16(i16 %9)
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 3072, ptr %0, align 2
  %conv = zext i16 %10 to i32
  %12 = ptrtoint ptr %cmd to i32
  %call12 = call i32 @__lbs_cmd(ptr noundef %priv, i16 noundef zeroext 152, ptr noundef nonnull %cmd, i32 noundef %conv, ptr noundef nonnull @lbs_cmd_copyback, i32 noundef %12)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp eq i32 %call12, 0
  br i1 %cmp13, label %if.then15, label %do.end5.if.end18_crit_edge

do.end5.if.end18_crit_edge:                       ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.then15:                                        ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #10
  %conv17 = select i1 %tobool.not, i16 1, i16 803
  %13 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %priv, align 4
  %type = getelementptr inbounds %struct.net_device, ptr %14, i32 0, i32 32
  %15 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv17, ptr %type, align 16
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %do.end5.if.end18_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmd) #8
  ret i32 %call12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lbs_update_channel(ptr noundef %priv) local_unnamed_addr #3 align 64 {
entry:
  %cmd.i = alloca %struct.cmd_ds_802_11_rf_channel, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %cmd.i) #8
  %0 = call ptr @memset(ptr %cmd.i, i32 0, i32 48)
  %size.i = getelementptr inbounds %struct.cmd_header, ptr %cmd.i, i32 0, i32 1
  %1 = ptrtoint ptr %size.i to i32
  call void @__asan_storeN_noabort(i32 %1, i32 2)
  store i16 12288, ptr %size.i, align 1
  %2 = ptrtoint ptr %cmd.i to i32
  %call.i = call i32 @__lbs_cmd(ptr noundef %priv, i16 noundef zeroext 29, ptr noundef nonnull %cmd.i, i32 noundef 48, ptr noundef nonnull @lbs_cmd_copyback, i32 noundef %2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.lbs_get_channel.exit_crit_edge

entry.lbs_get_channel.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %lbs_get_channel.exit

if.end.i:                                         ; preds = %entry
  %channel.i = getelementptr inbounds %struct.cmd_ds_802_11_rf_channel, ptr %cmd.i, i32 0, i32 2
  %3 = ptrtoint ptr %channel.i to i32
  call void @__asan_loadN_noabort(i32 %3, i32 2)
  %4 = load i16, ptr %channel.i, align 1
  %5 = call i16 @llvm.bswap.i16(i16 %4) #8
  %conv6.i = zext i16 %5 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %6 = load i32, ptr @lbs_debug, align 4
  %and.i = and i32 %6, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.not.i = icmp eq i32 %and.i, 0
  br i1 %cmp.not.i, label %if.end.i.lbs_get_channel.exit_crit_edge, label %do.end.i

if.end.i.lbs_get_channel.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lbs_get_channel.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.114, i32 noundef %conv6.i) #11
  br label %lbs_get_channel.exit

lbs_get_channel.exit:                             ; preds = %do.end.i, %if.end.i.lbs_get_channel.exit_crit_edge, %entry.lbs_get_channel.exit_crit_edge
  %ret.0.i = phi i32 [ %call.i, %entry.lbs_get_channel.exit_crit_edge ], [ %conv6.i, %do.end.i ], [ %conv6.i, %if.end.i.lbs_get_channel.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cmd.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %cmp = icmp sgt i32 %ret.0.i, 0
  br i1 %cmp, label %if.then, label %lbs_get_channel.exit.if.end_crit_edge

lbs_get_channel.exit.if.end_crit_edge:            ; preds = %lbs_get_channel.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %lbs_get_channel.exit
  call void @__sanitizer_cov_trace_pc() #10
  %conv = trunc i32 %ret.0.i to i8
  %channel = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 91
  %7 = ptrtoint ptr %channel to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv, ptr %channel, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lbs_get_channel.exit.if.end_crit_edge
  %ret.0 = phi i32 [ 0, %if.then ], [ %ret.0.i, %lbs_get_channel.exit.if.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lbs_set_channel(ptr noundef %priv, i8 noundef zeroext %channel) local_unnamed_addr #3 align 64 {
entry:
  %cmd = alloca %struct.cmd_ds_802_11_rf_channel, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %cmd) #8
  %channel1 = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 91
  %0 = ptrtoint ptr %channel1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %channel1, align 4
  %2 = call ptr @memset(ptr %cmd, i32 0, i32 48)
  %size = getelementptr inbounds %struct.cmd_header, ptr %cmd, i32 0, i32 1
  %action = getelementptr inbounds %struct.cmd_ds_802_11_rf_channel, ptr %cmd, i32 0, i32 1
  %3 = ptrtoint ptr %action to i32
  call void @__asan_storeN_noabort(i32 %3, i32 2)
  store i16 256, ptr %action, align 1
  %conv = zext i8 %channel to i16
  %4 = shl nuw i16 %conv, 8
  %channel2 = getelementptr inbounds %struct.cmd_ds_802_11_rf_channel, ptr %cmd, i32 0, i32 2
  %5 = ptrtoint ptr %channel2 to i32
  call void @__asan_storeN_noabort(i32 %5, i32 2)
  store i16 %4, ptr %channel2, align 1
  %6 = ptrtoint ptr %size to i32
  call void @__asan_storeN_noabort(i32 %6, i32 2)
  store i16 12288, ptr %size, align 1
  %7 = ptrtoint ptr %cmd to i32
  %call = call i32 @__lbs_cmd(ptr noundef %priv, i16 noundef zeroext 29, ptr noundef nonnull %cmd, i32 noundef 48, ptr noundef nonnull @lbs_cmd_copyback, i32 noundef %7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %channel2 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %9 = load i16, ptr %channel2, align 1
  %10 = lshr i16 %9, 8
  %conv10 = trunc i16 %10 to i8
  %11 = ptrtoint ptr %channel1 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv10, ptr %channel1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %12 = load i32, ptr @lbs_debug, align 4
  %and = and i32 %12, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %if.end.out_crit_edge, label %do.end

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %conv16 = zext i8 %1 to i32
  %conv18 = zext i16 %10 to i32
  %call19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %conv16, i32 noundef %conv18) #11
  br label %out

out:                                              ; preds = %do.end, %if.end.out_crit_edge, %entry.out_crit_edge
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cmd) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lbs_get_rssi(ptr noundef %priv, ptr noundef writeonly %rssi, ptr noundef writeonly %nf) local_unnamed_addr #3 align 64 {
entry:
  %cmd = alloca %struct.cmd_ds_802_11_rssi, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cmd) #8
  %0 = getelementptr inbounds %struct.cmd_header, ptr %cmd, i32 0, i32 1
  %1 = getelementptr inbounds %struct.cmd_ds_802_11_rssi, ptr %cmd, i32 0, i32 1
  %2 = getelementptr inbounds %struct.cmd_ds_802_11_rssi, ptr %cmd, i32 0, i32 2
  %cmp = icmp eq ptr %rssi, null
  br i1 %cmp, label %do.body2, label %do.body8, !prof !268

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/marvell/libertas/cmd.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 671, 0\0A.popsection", ""() #8, !srcloc !271
  unreachable

do.body8:                                         ; preds = %entry
  %cmp9 = icmp eq ptr %nf, null
  br i1 %cmp9, label %do.body17, label %do.end25, !prof !268

do.body17:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/marvell/libertas/cmd.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 672, 0\0A.popsection", ""() #8, !srcloc !272
  unreachable

do.end25:                                         ; preds = %do.body8
  %3 = call ptr @memset(ptr %cmd, i32 0, i32 16)
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 2048, ptr %1, align 2
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 4096, ptr %0, align 2
  %6 = ptrtoint ptr %cmd to i32
  %call = call i32 @__lbs_cmd(ptr noundef %priv, i16 noundef zeroext 31, ptr noundef nonnull %cmd, i32 noundef 16, ptr noundef nonnull @lbs_cmd_copyback, i32 noundef %6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp31 = icmp eq i32 %call, 0
  br i1 %cmp31, label %if.then33, label %do.end25.if.end43_crit_edge

do.end25.if.end43_crit_edge:                      ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

if.then33:                                        ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %2, align 2
  %9 = lshr i16 %8, 8
  %conv35 = trunc i16 %9 to i8
  %sub = sub i8 0, %conv35
  %10 = ptrtoint ptr %nf to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %sub, ptr %nf, align 1
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %1, align 2
  %13 = lshr i16 %12, 8
  %conv38 = trunc i16 %13 to i8
  %add = sub i8 %conv38, %conv35
  %14 = ptrtoint ptr %rssi to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %add, ptr %rssi, align 1
  br label %if.end43

if.end43:                                         ; preds = %if.then33, %do.end25.if.end43_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cmd) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lbs_set_11d_domain_info(ptr noundef %priv) local_unnamed_addr #3 align 64 {
entry:
  %cmd = alloca %struct.cmd_ds_802_11d_domain_info, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %wdev = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 5
  %0 = ptrtoint ptr %wdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wdev, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %bands2 = getelementptr inbounds %struct.wiphy, ptr %3, i32 0, i32 53
  call void @llvm.lifetime.start.p0(i64 266, ptr nonnull %cmd) #8
  %domain3 = getelementptr inbounds %struct.cmd_ds_802_11d_domain_info, ptr %cmd, i32 0, i32 2
  %country_code = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 9
  %4 = ptrtoint ptr %country_code to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %country_code, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %entry
  %6 = call ptr @memset(ptr %cmd, i32 0, i32 266)
  %action = getelementptr inbounds %struct.cmd_ds_802_11d_domain_info, ptr %cmd, i32 0, i32 1
  %7 = ptrtoint ptr %action to i32
  call void @__asan_storeN_noabort(i32 %7, i32 2)
  store i16 256, ptr %action, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %8 = load i32, ptr @lbs_debug, align 4
  %and = and i32 %8, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %if.end.do.end13_crit_edge, label %do.end

if.end.do.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end13

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i8 %5 to i32
  %arrayidx9 = getelementptr %struct.lbs_private, ptr %priv, i32 0, i32 9, i32 1
  %9 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx9, align 1
  %conv10 = zext i8 %10 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i32 noundef %conv, i32 noundef %conv10) #11
  br label %do.end13

do.end13:                                         ; preds = %do.end, %if.end.do.end13_crit_edge
  %11 = ptrtoint ptr %domain3 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 2)
  store i16 1792, ptr %domain3, align 1
  %12 = ptrtoint ptr %country_code to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %country_code, align 2
  %country_code16 = getelementptr inbounds %struct.cmd_ds_802_11d_domain_info, ptr %cmd, i32 0, i32 2, i32 1
  %14 = ptrtoint ptr %country_code16 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %country_code16, align 1
  %arrayidx19 = getelementptr %struct.lbs_private, ptr %priv, i32 0, i32 9, i32 1
  %15 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx19, align 1
  %arrayidx21 = getelementptr inbounds %struct.cmd_ds_802_11d_domain_info, ptr %cmd, i32 0, i32 2, i32 1, i32 1
  %17 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %arrayidx21, align 1
  %arrayidx23 = getelementptr inbounds %struct.cmd_ds_802_11d_domain_info, ptr %cmd, i32 0, i32 2, i32 1, i32 2
  %18 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 32, ptr %arrayidx23, align 1
  br label %for.body

for.body:                                         ; preds = %for.inc116.for.body_crit_edge, %do.end13
  %band.0230 = phi i32 [ 0, %do.end13 ], [ %inc117, %for.inc116.for.body_crit_edge ]
  %num_triplet.0229 = phi i8 [ 0, %do.end13 ], [ %num_triplet.3, %for.inc116.for.body_crit_edge ]
  %flag.0228 = phi i8 [ 0, %do.end13 ], [ %flag.3, %for.inc116.for.body_crit_edge ]
  %max_pwr.0227 = phi i8 [ 0, %do.end13 ], [ %max_pwr.3, %for.inc116.for.body_crit_edge ]
  %next_chan.0226 = phi i8 [ 0, %do.end13 ], [ %next_chan.3, %for.inc116.for.body_crit_edge ]
  %first_channel.0225 = phi i8 [ 0, %do.end13 ], [ %first_channel.3, %for.inc116.for.body_crit_edge ]
  %num_parsed_chan.0224 = phi i8 [ 0, %do.end13 ], [ %num_parsed_chan.3, %for.inc116.for.body_crit_edge ]
  %arrayidx29 = getelementptr ptr, ptr %bands2, i32 %band.0230
  %19 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx29, align 4
  %tobool30.not = icmp eq ptr %20, null
  br i1 %tobool30.not, label %for.body.for.inc116_crit_edge, label %for.cond33.preheader

for.body.for.inc116_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc116

for.cond33.preheader:                             ; preds = %for.body
  %21 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx29, align 4
  %n_channels203 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %n_channels203 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %n_channels203, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp36204 = icmp sgt i32 %24, 0
  br i1 %cmp36204, label %for.cond33.preheader.land.rhs38_crit_edge, label %for.cond33.preheader.for.end_crit_edge

for.cond33.preheader.for.end_crit_edge:           ; preds = %for.cond33.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.cond33.preheader.land.rhs38_crit_edge:        ; preds = %for.cond33.preheader
  br label %land.rhs38

land.rhs38:                                       ; preds = %for.inc.land.rhs38_crit_edge, %for.cond33.preheader.land.rhs38_crit_edge
  %25 = phi ptr [ %41, %for.inc.land.rhs38_crit_edge ], [ %22, %for.cond33.preheader.land.rhs38_crit_edge ]
  %conv34212 = phi i32 [ %conv34, %for.inc.land.rhs38_crit_edge ], [ 0, %for.cond33.preheader.land.rhs38_crit_edge ]
  %num_triplet.1211 = phi i8 [ %num_triplet.2, %for.inc.land.rhs38_crit_edge ], [ %num_triplet.0229, %for.cond33.preheader.land.rhs38_crit_edge ]
  %flag.1210 = phi i8 [ %flag.2, %for.inc.land.rhs38_crit_edge ], [ %flag.0228, %for.cond33.preheader.land.rhs38_crit_edge ]
  %i.0209 = phi i8 [ %inc89, %for.inc.land.rhs38_crit_edge ], [ 0, %for.cond33.preheader.land.rhs38_crit_edge ]
  %max_pwr.1208 = phi i8 [ %max_pwr.2, %for.inc.land.rhs38_crit_edge ], [ %max_pwr.0227, %for.cond33.preheader.land.rhs38_crit_edge ]
  %next_chan.1207 = phi i8 [ %next_chan.2, %for.inc.land.rhs38_crit_edge ], [ %next_chan.0226, %for.cond33.preheader.land.rhs38_crit_edge ]
  %first_channel.1206 = phi i8 [ %first_channel.2, %for.inc.land.rhs38_crit_edge ], [ %first_channel.0225, %for.cond33.preheader.land.rhs38_crit_edge ]
  %num_parsed_chan.1205 = phi i8 [ %num_parsed_chan.2, %for.inc.land.rhs38_crit_edge ], [ %num_parsed_chan.0224, %for.cond33.preheader.land.rhs38_crit_edge ]
  %conv39 = zext i8 %num_triplet.1211 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 83, i8 %num_triplet.1211)
  %cmp40 = icmp ult i8 %num_triplet.1211, 83
  br i1 %cmp40, label %for.body43, label %land.rhs38.for.end_crit_edge

land.rhs38.for.end_crit_edge:                     ; preds = %land.rhs38
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body43:                                       ; preds = %land.rhs38
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %flags = getelementptr %struct.ieee80211_channel, ptr %27, i32 %conv34212, i32 4
  %28 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flags, align 4
  %and46 = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %if.end49, label %for.body43.for.inc_crit_edge

for.body43.for.inc_crit_edge:                     ; preds = %for.body43
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end49:                                         ; preds = %for.body43
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %flag.1210)
  %tobool50.not = icmp eq i8 %flag.1210, 0
  %hw_value = getelementptr %struct.ieee80211_channel, ptr %27, i32 %conv34212, i32 3
  %30 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %hw_value, align 2
  br i1 %tobool50.not, label %if.then51, label %if.end55

if.then51:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  %conv53 = trunc i16 %31 to i8
  %max_power = getelementptr %struct.ieee80211_channel, ptr %27, i32 %conv34212, i32 6
  %32 = ptrtoint ptr %max_power to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %max_power, align 4
  %conv54 = trunc i32 %33 to i8
  br label %for.inc

if.end55:                                         ; preds = %if.end49
  %conv57 = zext i16 %31 to i32
  %conv58 = zext i8 %next_chan.1207 to i32
  %add = add nuw nsw i32 %conv58, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv57)
  %cmp59 = icmp eq i32 %add, %conv57
  br i1 %cmp59, label %land.lhs.true, label %if.end55.do.body67_crit_edge

if.end55.do.body67_crit_edge:                     ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body67

land.lhs.true:                                    ; preds = %if.end55
  %max_power61 = getelementptr %struct.ieee80211_channel, ptr %27, i32 %conv34212, i32 6
  %34 = ptrtoint ptr %max_power61 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %max_power61, align 4
  %conv62 = zext i8 %max_pwr.1208 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %conv62)
  %cmp63 = icmp eq i32 %35, %conv62
  br i1 %cmp63, label %if.then65, label %land.lhs.true.do.body67_crit_edge

land.lhs.true.do.body67_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body67

if.then65:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %inc = add i8 %next_chan.1207, 1
  %inc66 = add i8 %num_parsed_chan.1205, 1
  br label %for.inc

do.body67:                                        ; preds = %land.lhs.true.do.body67_crit_edge, %if.end55.do.body67_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %36 = load i32, ptr @lbs_debug, align 4
  %and68 = and i32 %36, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %cmp69.not = icmp eq i32 %and68, 0
  br i1 %cmp69.not, label %do.body67.do.end82_crit_edge, label %do.end74

do.body67.do.end82_crit_edge:                     ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end82

do.end74:                                         ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #10
  %conv76 = zext i8 %first_channel.1206 to i32
  %conv77 = zext i8 %num_parsed_chan.1205 to i32
  %conv78 = zext i8 %max_pwr.1208 to i32
  %call79 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, i32 noundef %conv76, i32 noundef %conv77, i32 noundef %conv78) #11
  br label %do.end82

do.end82:                                         ; preds = %do.end74, %do.body67.do.end82_crit_edge
  %arrayidx84 = getelementptr %struct.cmd_ds_802_11d_domain_info, ptr %cmd, i32 0, i32 2, i32 2, i32 %conv39
  %37 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %first_channel.1206, ptr %arrayidx84, align 1
  %num_channels = getelementptr inbounds %struct.anon.130, ptr %arrayidx84, i32 0, i32 1
  %38 = ptrtoint ptr %num_channels to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %num_parsed_chan.1205, ptr %num_channels, align 1
  %max_power86 = getelementptr inbounds %struct.anon.130, ptr %arrayidx84, i32 0, i32 2
  %39 = ptrtoint ptr %max_power86 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %max_pwr.1208, ptr %max_power86, align 1
  %inc87 = add nuw nsw i8 %num_triplet.1211, 1
  br label %for.inc

for.inc:                                          ; preds = %do.end82, %if.then65, %if.then51, %for.body43.for.inc_crit_edge
  %num_parsed_chan.2 = phi i8 [ %num_parsed_chan.1205, %for.body43.for.inc_crit_edge ], [ %inc66, %if.then65 ], [ %num_parsed_chan.1205, %do.end82 ], [ 1, %if.then51 ]
  %first_channel.2 = phi i8 [ %first_channel.1206, %for.body43.for.inc_crit_edge ], [ %first_channel.1206, %if.then65 ], [ %first_channel.1206, %do.end82 ], [ %conv53, %if.then51 ]
  %next_chan.2 = phi i8 [ %next_chan.1207, %for.body43.for.inc_crit_edge ], [ %inc, %if.then65 ], [ %next_chan.1207, %do.end82 ], [ %conv53, %if.then51 ]
  %max_pwr.2 = phi i8 [ %max_pwr.1208, %for.body43.for.inc_crit_edge ], [ %max_pwr.1208, %if.then65 ], [ %max_pwr.1208, %do.end82 ], [ %conv54, %if.then51 ]
  %flag.2 = phi i8 [ %flag.1210, %for.body43.for.inc_crit_edge ], [ 1, %if.then65 ], [ 0, %do.end82 ], [ 1, %if.then51 ]
  %num_triplet.2 = phi i8 [ %num_triplet.1211, %for.body43.for.inc_crit_edge ], [ %num_triplet.1211, %if.then65 ], [ %inc87, %do.end82 ], [ %num_triplet.1211, %if.then51 ]
  %inc89 = add i8 %i.0209, 1
  %conv34 = zext i8 %inc89 to i32
  %40 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx29, align 4
  %n_channels = getelementptr inbounds %struct.ieee80211_supported_band, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %n_channels, align 4
  %cmp36 = icmp sgt i32 %43, %conv34
  br i1 %cmp36, label %for.inc.land.rhs38_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.land.rhs38_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs38

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %land.rhs38.for.end_crit_edge, %for.cond33.preheader.for.end_crit_edge
  %num_parsed_chan.1.lcssa = phi i8 [ %num_parsed_chan.0224, %for.cond33.preheader.for.end_crit_edge ], [ %num_parsed_chan.2, %for.inc.for.end_crit_edge ], [ %num_parsed_chan.1205, %land.rhs38.for.end_crit_edge ]
  %first_channel.1.lcssa = phi i8 [ %first_channel.0225, %for.cond33.preheader.for.end_crit_edge ], [ %first_channel.2, %for.inc.for.end_crit_edge ], [ %first_channel.1206, %land.rhs38.for.end_crit_edge ]
  %next_chan.1.lcssa = phi i8 [ %next_chan.0226, %for.cond33.preheader.for.end_crit_edge ], [ %next_chan.2, %for.inc.for.end_crit_edge ], [ %next_chan.1207, %land.rhs38.for.end_crit_edge ]
  %max_pwr.1.lcssa = phi i8 [ %max_pwr.0227, %for.cond33.preheader.for.end_crit_edge ], [ %max_pwr.2, %for.inc.for.end_crit_edge ], [ %max_pwr.1208, %land.rhs38.for.end_crit_edge ]
  %flag.1.lcssa = phi i8 [ %flag.0228, %for.cond33.preheader.for.end_crit_edge ], [ %flag.2, %for.inc.for.end_crit_edge ], [ %flag.1210, %land.rhs38.for.end_crit_edge ]
  %num_triplet.1.lcssa = phi i8 [ %num_triplet.0229, %for.cond33.preheader.for.end_crit_edge ], [ %num_triplet.2, %for.inc.for.end_crit_edge ], [ %num_triplet.1211, %land.rhs38.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %flag.1.lcssa)
  %tobool90.not = icmp eq i8 %flag.1.lcssa, 0
  br i1 %tobool90.not, label %for.end.for.inc116_crit_edge, label %do.body92

for.end.for.inc116_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc116

do.body92:                                        ; preds = %for.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %44 = load i32, ptr @lbs_debug, align 4
  %and93 = and i32 %44, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and93)
  %cmp94.not = icmp eq i32 %and93, 0
  br i1 %cmp94.not, label %do.body92.do.end107_crit_edge, label %do.end99

do.body92.do.end107_crit_edge:                    ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end107

do.end99:                                         ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #10
  %conv101 = zext i8 %first_channel.1.lcssa to i32
  %conv102 = zext i8 %num_parsed_chan.1.lcssa to i32
  %conv103 = zext i8 %max_pwr.1.lcssa to i32
  %call104 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, i32 noundef %conv101, i32 noundef %conv102, i32 noundef %conv103) #11
  br label %do.end107

do.end107:                                        ; preds = %do.end99, %do.body92.do.end107_crit_edge
  %idxprom109 = zext i8 %num_triplet.1.lcssa to i32
  %arrayidx110 = getelementptr %struct.cmd_ds_802_11d_domain_info, ptr %cmd, i32 0, i32 2, i32 2, i32 %idxprom109
  %45 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %first_channel.1.lcssa, ptr %arrayidx110, align 1
  %num_channels112 = getelementptr inbounds %struct.anon.130, ptr %arrayidx110, i32 0, i32 1
  %46 = ptrtoint ptr %num_channels112 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %num_parsed_chan.1.lcssa, ptr %num_channels112, align 1
  %max_power113 = getelementptr inbounds %struct.anon.130, ptr %arrayidx110, i32 0, i32 2
  %47 = ptrtoint ptr %max_power113 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %max_pwr.1.lcssa, ptr %max_power113, align 1
  %inc114 = add i8 %num_triplet.1.lcssa, 1
  br label %for.inc116

for.inc116:                                       ; preds = %do.end107, %for.end.for.inc116_crit_edge, %for.body.for.inc116_crit_edge
  %num_parsed_chan.3 = phi i8 [ %num_parsed_chan.1.lcssa, %do.end107 ], [ %num_parsed_chan.1.lcssa, %for.end.for.inc116_crit_edge ], [ %num_parsed_chan.0224, %for.body.for.inc116_crit_edge ]
  %first_channel.3 = phi i8 [ %first_channel.1.lcssa, %do.end107 ], [ %first_channel.1.lcssa, %for.end.for.inc116_crit_edge ], [ %first_channel.0225, %for.body.for.inc116_crit_edge ]
  %next_chan.3 = phi i8 [ %next_chan.1.lcssa, %do.end107 ], [ %next_chan.1.lcssa, %for.end.for.inc116_crit_edge ], [ %next_chan.0226, %for.body.for.inc116_crit_edge ]
  %max_pwr.3 = phi i8 [ %max_pwr.1.lcssa, %do.end107 ], [ %max_pwr.1.lcssa, %for.end.for.inc116_crit_edge ], [ %max_pwr.0227, %for.body.for.inc116_crit_edge ]
  %flag.3 = phi i8 [ 1, %do.end107 ], [ 0, %for.end.for.inc116_crit_edge ], [ %flag.0228, %for.body.for.inc116_crit_edge ]
  %num_triplet.3 = phi i8 [ %inc114, %do.end107 ], [ %num_triplet.1.lcssa, %for.end.for.inc116_crit_edge ], [ %num_triplet.0229, %for.body.for.inc116_crit_edge ]
  %inc117 = add nuw nsw i32 %band.0230, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %band.0230)
  %cmp24 = icmp ult i32 %band.0230, 5
  call void @__sanitizer_cov_trace_const_cmp1(i8 83, i8 %num_triplet.3)
  %cmp27 = icmp ult i8 %num_triplet.3, 83
  %or.cond = select i1 %cmp24, i1 %cmp27, i1 false
  br i1 %or.cond, label %for.inc116.for.body_crit_edge, label %do.body119

for.inc116.for.body_crit_edge:                    ; preds = %for.inc116
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

do.body119:                                       ; preds = %for.inc116
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %48 = load i32, ptr @lbs_debug, align 4
  %and120 = and i32 %48, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and120)
  %cmp121.not = icmp eq i32 %and120, 0
  %.pre = zext i8 %num_triplet.3 to i32
  br i1 %cmp121.not, label %do.body119.do.end132_crit_edge, label %do.end126

do.body119.do.end132_crit_edge:                   ; preds = %do.body119
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end132

do.end126:                                        ; preds = %do.body119
  call void @__sanitizer_cov_trace_pc() #10
  %call129 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, i32 noundef %.pre) #11
  br label %do.end132

do.end132:                                        ; preds = %do.end126, %do.body119.do.end132_crit_edge
  %mul = mul nuw nsw i32 %.pre, 3
  %49 = trunc i32 %mul to i16
  %conv135 = add nuw nsw i16 %49, 3
  %50 = tail call i16 @llvm.bswap.i16(i16 %conv135)
  %len = getelementptr inbounds %struct.cmd_ds_802_11d_domain_info, ptr %cmd, i32 0, i32 2, i32 0, i32 1
  %51 = ptrtoint ptr %len to i32
  call void @__asan_storeN_noabort(i32 %51, i32 2)
  store i16 %50, ptr %len, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %52 = load i32, ptr @lbs_debug, align 4
  %53 = and i32 %52, 2098176
  call void @__sanitizer_cov_trace_const_cmp4(i32 2098176, i32 %53)
  %.not = icmp eq i32 %53, 2098176
  br i1 %.not, label %do.end18.i.peel, label %do.end132.lbs_deb_hex.exit_crit_edge

do.end132.lbs_deb_hex.exit_crit_edge:             ; preds = %do.end132
  call void @__sanitizer_cov_trace_pc() #10
  br label %lbs_deb_hex.exit

do.end18.i.peel:                                  ; preds = %do.end132
  %54 = add nuw nsw i32 %mul, 16
  %uglygep = getelementptr i8, ptr %cmd, i32 %54
  %call14.i.peel = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.120, ptr noundef nonnull @.str.50) #11
  %55 = ptrtoint ptr %country_code16 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %country_code16, align 1
  %conv.i.peel = zext i8 %56 to i32
  %call20.i.peel = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.123, i32 noundef %conv.i.peel) #11
  %exitcond.peel = icmp eq ptr %country_code16, %uglygep
  br i1 %exitcond.peel, label %do.end18.i.peel.do.end23.i_crit_edge, label %for.body.i.peel.next

do.end18.i.peel.do.end23.i_crit_edge:             ; preds = %do.end18.i.peel
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end23.i

for.body.i.peel.next:                             ; preds = %do.end18.i.peel
  %incdec.ptr.i.peel = getelementptr inbounds %struct.cmd_ds_802_11d_domain_info, ptr %cmd, i32 0, i32 2, i32 1, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %do.end18.i.for.body.i_crit_edge, %for.body.i.peel.next
  %buf.addr.035.i = phi ptr [ %incdec.ptr.i, %do.end18.i.for.body.i_crit_edge ], [ %incdec.ptr.i.peel, %for.body.i.peel.next ]
  %i.033.i = phi i32 [ %inc.i, %do.end18.i.for.body.i_crit_edge ], [ 2, %for.body.i.peel.next ]
  %and5.i = and i32 %i.033.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and5.i)
  %cmp6.i = icmp eq i32 %and5.i, 1
  br i1 %cmp6.i, label %do.end12.i, label %for.body.i.do.end18.i_crit_edge

for.body.i.do.end18.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end18.i

do.end12.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.116) #11
  %call14.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.120, ptr noundef nonnull @.str.50) #11
  br label %do.end18.i

do.end18.i:                                       ; preds = %do.end12.i, %for.body.i.do.end18.i_crit_edge
  %57 = ptrtoint ptr %buf.addr.035.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %buf.addr.035.i, align 1
  %conv.i = zext i8 %58 to i32
  %call20.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.123, i32 noundef %conv.i) #11
  %incdec.ptr.i = getelementptr i8, ptr %buf.addr.035.i, i32 1
  %inc.i = add nuw nsw i32 %i.033.i, 1
  %exitcond = icmp eq ptr %buf.addr.035.i, %uglygep
  br i1 %exitcond, label %do.end18.i.do.end23.i_crit_edge, label %do.end18.i.for.body.i_crit_edge, !llvm.loop !273

do.end18.i.for.body.i_crit_edge:                  ; preds = %do.end18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

do.end18.i.do.end23.i_crit_edge:                  ; preds = %do.end18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end23.i

do.end23.i:                                       ; preds = %do.end18.i.do.end23.i_crit_edge, %do.end18.i.peel.do.end23.i_crit_edge
  %call25.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.116) #11
  br label %lbs_deb_hex.exit

lbs_deb_hex.exit:                                 ; preds = %do.end23.i, %do.end132.lbs_deb_hex.exit_crit_edge
  %conv143 = add nuw nsw i32 %mul, 17
  %size = getelementptr inbounds %struct.cmd_header, ptr %cmd, i32 0, i32 1
  %59 = ptrtoint ptr %size to i32
  call void @__asan_storeN_noabort(i32 %59, i32 2)
  store i16 2561, ptr %size, align 1
  %60 = ptrtoint ptr %cmd to i32
  %call151 = call i32 @__lbs_cmd(ptr noundef %priv, i16 noundef zeroext 91, ptr noundef nonnull %cmd, i32 noundef %conv143, ptr noundef nonnull @lbs_cmd_copyback, i32 noundef %60)
  br label %out

out:                                              ; preds = %lbs_deb_hex.exit, %entry.out_crit_edge
  %ret.0 = phi i32 [ %call151, %lbs_deb_hex.exit ], [ 0, %entry.out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 266, ptr nonnull %cmd) #8
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lbs_get_reg(ptr noundef %priv, i16 noundef zeroext %reg, i16 noundef zeroext %offset, ptr noundef writeonly %value) local_unnamed_addr #3 align 64 {
entry:
  %cmd = alloca %struct.cmd_ds_reg_access, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cmd) #8
  %0 = getelementptr inbounds %struct.cmd_header, ptr %cmd, i32 0, i32 1
  %1 = getelementptr inbounds %struct.cmd_ds_reg_access, ptr %cmd, i32 0, i32 3
  %cmp = icmp eq ptr %value, null
  br i1 %cmp, label %do.body2, label %do.end7, !prof !268

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/marvell/libertas/cmd.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 827, 0\0A.popsection", ""() #8, !srcloc !275
  unreachable

do.end7:                                          ; preds = %entry
  %2 = getelementptr inbounds %struct.cmd_ds_reg_access, ptr %cmd, i32 0, i32 2
  %3 = call ptr @memset(ptr %cmd, i32 0, i32 16)
  %4 = tail call i16 @llvm.bswap.i16(i16 %offset)
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %2, align 2
  %reg.off = add i16 %reg, -25
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %reg.off)
  %switch = icmp ult i16 %reg.off, 3
  br i1 %switch, label %if.end19, label %do.end7.out_crit_edge

do.end7.out_crit_edge:                            ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end19:                                         ; preds = %do.end7
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 4096, ptr %0, align 2
  %7 = ptrtoint ptr %cmd to i32
  %call = call i32 @__lbs_cmd(ptr noundef %priv, i16 noundef zeroext %reg, ptr noundef nonnull %cmd, i32 noundef 16, ptr noundef nonnull @lbs_cmd_copyback, i32 noundef %7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool26.not = icmp eq i32 %call, 0
  br i1 %tobool26.not, label %if.then27, label %if.end19.out_crit_edge

if.end19.out_crit_edge:                           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then27:                                        ; preds = %if.end19
  %8 = zext i16 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.145)
  switch i16 %reg, label %if.then27.out_crit_edge [
    i16 26, label %if.then27.if.then34_crit_edge
    i16 27, label %if.then27.if.then34_crit_edge54
    i16 25, label %if.then40
  ]

if.then27.if.then34_crit_edge54:                  ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then34

if.then27.if.then34_crit_edge:                    ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then34

if.then27.out_crit_edge:                          ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then34:                                        ; preds = %if.then27.if.then34_crit_edge, %if.then27.if.then34_crit_edge54
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %1, align 2
  %conv36 = zext i8 %10 to i32
  br label %out.sink.split

if.then40:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %1, align 2
  %13 = call i32 @llvm.bswap.i32(i32 %12)
  br label %out.sink.split

out.sink.split:                                   ; preds = %if.then40, %if.then34
  %.sink = phi i32 [ %13, %if.then40 ], [ %conv36, %if.then34 ]
  %14 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %.sink, ptr %value, align 4
  br label %out

out:                                              ; preds = %out.sink.split, %if.then27.out_crit_edge, %if.end19.out_crit_edge, %do.end7.out_crit_edge
  %ret.0 = phi i32 [ %call, %if.end19.out_crit_edge ], [ -22, %do.end7.out_crit_edge ], [ 0, %if.then27.out_crit_edge ], [ 0, %out.sink.split ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cmd) #8
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lbs_set_reg(ptr noundef %priv, i16 noundef zeroext %reg, i16 noundef zeroext %offset, i32 noundef %value) local_unnamed_addr #3 align 64 {
entry:
  %cmd = alloca %struct.cmd_ds_reg_access, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cmd) #8
  %0 = getelementptr inbounds %struct.cmd_header, ptr %cmd, i32 0, i32 1
  %1 = getelementptr inbounds %struct.cmd_ds_reg_access, ptr %cmd, i32 0, i32 1
  %2 = getelementptr inbounds %struct.cmd_ds_reg_access, ptr %cmd, i32 0, i32 2
  %3 = getelementptr inbounds %struct.cmd_ds_reg_access, ptr %cmd, i32 0, i32 3
  %4 = call ptr @memset(ptr %cmd, i32 0, i32 16)
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 256, ptr %1, align 2
  %6 = tail call i16 @llvm.bswap.i16(i16 %offset)
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %2, align 2
  %8 = zext i16 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.146)
  switch i16 %reg, label %entry.out_crit_edge [
    i16 26, label %entry.if.then_crit_edge
    i16 27, label %entry.if.then_crit_edge25
    i16 25, label %if.then11
  ]

entry.if.then_crit_edge25:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge25
  %conv6 = trunc i32 %value to i8
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv6, ptr %3, align 2
  br label %if.end14

if.then11:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %10 = tail call i32 @llvm.bswap.i32(i32 %value)
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store i32 %10, ptr %3, align 2
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.then
  %12 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 4096, ptr %0, align 2
  %13 = ptrtoint ptr %cmd to i32
  %call = call i32 @__lbs_cmd(ptr noundef %priv, i16 noundef zeroext %reg, ptr noundef nonnull %cmd, i32 noundef 16, ptr noundef nonnull @lbs_cmd_copyback, i32 noundef %13)
  br label %out

out:                                              ; preds = %if.end14, %entry.out_crit_edge
  %ret.0 = phi i32 [ %call, %if.end14 ], [ -22, %entry.out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cmd) #8
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__lbs_complete_command(ptr noundef %priv, ptr noundef %cmd, i32 noundef %result) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %cmd) #8
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del_init.exit_crit_edge

entry.list_del_init.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %cmd, i32 0, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cmd, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %entry.list_del_init.exit_crit_edge
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %cmd, ptr %cmd, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %cmd, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %cmd, ptr %prev.i3.i, align 4
  %result1 = getelementptr inbounds %struct.cmd_ctrl_node, ptr %cmd, i32 0, i32 1
  %8 = ptrtoint ptr %result1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %result, ptr %result1, align 4
  %cmdwaitqwoken = getelementptr inbounds %struct.cmd_ctrl_node, ptr %cmd, i32 0, i32 5
  %9 = ptrtoint ptr %cmdwaitqwoken to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 1, ptr %cmdwaitqwoken, align 4
  %cmdwait_q = getelementptr inbounds %struct.cmd_ctrl_node, ptr %cmd, i32 0, i32 6
  tail call void @__wake_up(ptr noundef %cmdwait_q, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  %callback = getelementptr inbounds %struct.cmd_ctrl_node, ptr %cmd, i32 0, i32 2
  %10 = ptrtoint ptr %callback to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %callback, align 4
  %tobool.not = icmp ne ptr %11, null
  %cmp = icmp ne ptr %11, @lbs_cmd_async_callback
  %or.cond.not = and i1 %tobool.not, %cmp
  %tobool.not.i = icmp eq ptr %cmd, null
  %or.cond12 = or i1 %tobool.not.i, %or.cond.not
  br i1 %or.cond12, label %list_del_init.exit.if.end_crit_edge, label %if.end.i

list_del_init.exit.if.end_crit_edge:              ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i:                                         ; preds = %list_del_init.exit
  %12 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %callback, align 4
  %callback_arg.i = getelementptr inbounds %struct.cmd_ctrl_node, ptr %cmd, i32 0, i32 3
  %13 = ptrtoint ptr %callback_arg.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %callback_arg.i, align 4
  %cmdbuf.i = getelementptr inbounds %struct.cmd_ctrl_node, ptr %cmd, i32 0, i32 4
  %14 = ptrtoint ptr %cmdbuf.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cmdbuf.i, align 4
  %16 = call ptr @memset(ptr %15, i32 0, i32 2048)
  %cmdfreeq.i = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 62
  %prev.i.i11 = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 62, i32 1
  %17 = ptrtoint ptr %prev.i.i11 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i11, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %cmd, ptr noundef %18, ptr noundef %cmdfreeq.i) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %prev.i.i11 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %cmd, ptr %prev.i.i11, align 4
  %20 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %cmdfreeq.i, ptr %cmd, align 4
  %21 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev.i3.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %cmd, ptr %18, align 4
  br label %if.end

if.end:                                           ; preds = %if.end.i.i.i, %if.end.i.if.end_crit_edge, %list_del_init.exit.if.end_crit_edge
  %cur_cmd = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 61
  %23 = ptrtoint ptr %cur_cmd to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %cur_cmd, align 4
  %waitq = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 71
  tail call void @__wake_up(ptr noundef %waitq, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @lbs_cmd_async_callback(ptr nocapture noundef readnone %priv, i32 noundef %extra, ptr nocapture noundef readnone %resp) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lbs_complete_command(ptr noundef %priv, ptr noundef %cmd, i32 noundef %result) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_lock = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 87
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %driver_lock) #8
  tail call void @__lbs_complete_command(ptr noundef %priv, ptr noundef %cmd, i32 noundef %result)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %driver_lock, i32 noundef %call2) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lbs_set_radio(ptr noundef %priv, i8 noundef zeroext %preamble, i8 noundef zeroext %radio_on) local_unnamed_addr #3 align 64 {
entry:
  %cmd = alloca %struct.cmd_ds_802_11_radio_control, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cmd) #8
  %0 = getelementptr inbounds %struct.cmd_header, ptr %cmd, i32 0, i32 1
  %1 = getelementptr inbounds %struct.cmd_ds_802_11_radio_control, ptr %cmd, i32 0, i32 1
  %2 = getelementptr inbounds %struct.cmd_ds_802_11_radio_control, ptr %cmd, i32 0, i32 2
  %3 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 -1, ptr %cmd, align 8
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 3072, ptr %0, align 2
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 256, ptr %1, align 8
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %2, align 2
  %fwrelease = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 53
  %7 = ptrtoint ptr %fwrelease to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %fwrelease, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 150994944, i32 %8)
  %cmp = icmp ult i32 %8, 150994944
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %9 = zext i8 %preamble to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.147)
  switch i8 %preamble, label %if.then.out_crit_edge [
    i8 2, label %if.then.sw.bb_crit_edge
    i8 4, label %if.then.sw.bb_crit_edge38
    i8 0, label %if.then.sw.bb_crit_edge39
  ]

if.then.sw.bb_crit_edge39:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.then.sw.bb_crit_edge38:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.then.sw.bb_crit_edge:                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.then.out_crit_edge:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

sw.bb:                                            ; preds = %if.then.sw.bb_crit_edge, %if.then.sw.bb_crit_edge38, %if.then.sw.bb_crit_edge39
  %conv1 = zext i8 %preamble to i16
  %10 = shl nuw nsw i16 %conv1, 8
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %2, align 2
  br label %if.end

if.end:                                           ; preds = %sw.bb, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %radio_on)
  %tobool.not = icmp eq i8 %radio_on, 0
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %2, align 2
  br i1 %tobool.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %14 = or i16 %13, 256
  %15 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %2, align 2
  br label %do.body

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %16 = and i16 %13, -257
  %17 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %2, align 2
  %txpower_cur = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 92
  %18 = ptrtoint ptr %txpower_cur to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 0, ptr %txpower_cur, align 2
  br label %do.body

do.body:                                          ; preds = %if.else, %if.then3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %19 = load i32, ptr @lbs_debug, align 4
  %and11 = and i32 %19, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %cmp12.not = icmp eq i32 %and11, 0
  br i1 %cmp12.not, label %do.body.do.end21_crit_edge, label %do.end

do.body.do.end21_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end21

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %cond = select i1 %tobool.not, ptr @.str.54, ptr @.str.53
  %conv18 = zext i8 %preamble to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef nonnull %cond, i32 noundef %conv18) #11
  br label %do.end21

do.end21:                                         ; preds = %do.end, %do.body.do.end21_crit_edge
  %radio_on22 = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 89
  %20 = ptrtoint ptr %radio_on22 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %radio_on, ptr %radio_on22, align 2
  %21 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %0, align 2
  %23 = tail call i16 @llvm.bswap.i16(i16 %22)
  %24 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 3072, ptr %0, align 2
  %conv29 = zext i16 %23 to i32
  %25 = ptrtoint ptr %cmd to i32
  %call30 = call i32 @__lbs_cmd(ptr noundef %priv, i16 noundef zeroext 28, ptr noundef nonnull %cmd, i32 noundef %conv29, ptr noundef nonnull @lbs_cmd_copyback, i32 noundef %25)
  br label %out

out:                                              ; preds = %do.end21, %if.then.out_crit_edge
  %ret.0 = phi i32 [ -22, %if.then.out_crit_edge ], [ %call30, %do.end21 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmd) #8
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lbs_set_mac_control(ptr noundef %priv) local_unnamed_addr #3 align 64 {
entry:
  %cmd = alloca %struct.cmd_ds_mac_control, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cmd) #8
  %0 = getelementptr inbounds %struct.cmd_header, ptr %cmd, i32 0, i32 1
  %1 = getelementptr inbounds %struct.cmd_ds_mac_control, ptr %cmd, i32 0, i32 1
  %2 = getelementptr inbounds %struct.cmd_ds_mac_control, ptr %cmd, i32 0, i32 2
  %3 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 -1, ptr %cmd, align 8
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 3072, ptr %0, align 2
  %mac_control = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 88
  %5 = ptrtoint ptr %mac_control to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %mac_control, align 4
  %7 = tail call i16 @llvm.bswap.i16(i16 %6)
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %1, align 8
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %2, align 2
  %call.i = call ptr @__lbs_cmd_async(ptr noundef %priv, i16 noundef zeroext 40, ptr noundef nonnull %cmd, i32 noundef 12, ptr noundef nonnull @lbs_cmd_async_callback, i32 noundef 0) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmd) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lbs_set_mac_control_sync(ptr noundef %priv) local_unnamed_addr #3 align 64 {
entry:
  %cmd = alloca %struct.cmd_ds_mac_control, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cmd) #8
  %0 = getelementptr inbounds %struct.cmd_header, ptr %cmd, i32 0, i32 1
  %1 = getelementptr inbounds %struct.cmd_ds_mac_control, ptr %cmd, i32 0, i32 1
  %2 = getelementptr inbounds %struct.cmd_ds_mac_control, ptr %cmd, i32 0, i32 2
  %3 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 -1, ptr %cmd, align 8
  %mac_control = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 88
  %4 = ptrtoint ptr %mac_control to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %mac_control, align 4
  %6 = tail call i16 @llvm.bswap.i16(i16 %5)
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %1, align 8
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %2, align 2
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 3072, ptr %0, align 2
  %10 = ptrtoint ptr %cmd to i32
  %call = call i32 @__lbs_cmd(ptr noundef %priv, i16 noundef zeroext 40, ptr noundef nonnull %cmd, i32 noundef 12, ptr noundef nonnull @lbs_cmd_copyback, i32 noundef %10)
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmd) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lbs_allocate_cmd_buffer(ptr noundef %priv) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 800) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %do.body, label %if.end6

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %1 = load i32, ptr @lbs_debug, align 4
  %and = and i32 %1, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %do.body.done_crit_edge, label %do.body.done.sink.split_crit_edge

do.body.done.sink.split_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %done.sink.split

do.body.done_crit_edge:                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %done

if.end6:                                          ; preds = %entry
  %cmd_array = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 60
  %2 = ptrtoint ptr %cmd_array to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i, ptr %cmd_array, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i49 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 2048) #12
  %cmdbuf = getelementptr %struct.cmd_ctrl_node, ptr %call7.i.i, i32 0, i32 4
  %4 = ptrtoint ptr %cmdbuf to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i.i49, ptr %cmdbuf, align 4
  %tobool11.not = icmp eq ptr %call7.i.i49, null
  br i1 %tobool11.not, label %if.end6.do.body13_crit_edge, label %for.cond

if.end6.do.body13_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body13

for.cond:                                         ; preds = %if.end6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i49.1 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 2048) #12
  %cmdbuf.1 = getelementptr %struct.cmd_ctrl_node, ptr %call7.i.i, i32 1, i32 4
  %6 = ptrtoint ptr %cmdbuf.1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i.i49.1, ptr %cmdbuf.1, align 4
  %tobool11.not.1 = icmp eq ptr %call7.i.i49.1, null
  br i1 %tobool11.not.1, label %for.cond.do.body13_crit_edge, label %for.cond.1

for.cond.do.body13_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body13

for.cond.1:                                       ; preds = %for.cond
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i49.2 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 2048) #12
  %cmdbuf.2 = getelementptr %struct.cmd_ctrl_node, ptr %call7.i.i, i32 2, i32 4
  %8 = ptrtoint ptr %cmdbuf.2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7.i.i49.2, ptr %cmdbuf.2, align 4
  %tobool11.not.2 = icmp eq ptr %call7.i.i49.2, null
  br i1 %tobool11.not.2, label %for.cond.1.do.body13_crit_edge, label %for.cond.2

for.cond.1.do.body13_crit_edge:                   ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body13

for.cond.2:                                       ; preds = %for.cond.1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i49.3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 2048) #12
  %cmdbuf.3 = getelementptr %struct.cmd_ctrl_node, ptr %call7.i.i, i32 3, i32 4
  %10 = ptrtoint ptr %cmdbuf.3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7.i.i49.3, ptr %cmdbuf.3, align 4
  %tobool11.not.3 = icmp eq ptr %call7.i.i49.3, null
  br i1 %tobool11.not.3, label %for.cond.2.do.body13_crit_edge, label %for.cond.3

for.cond.2.do.body13_crit_edge:                   ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body13

for.cond.3:                                       ; preds = %for.cond.2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i49.4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 2048) #12
  %cmdbuf.4 = getelementptr %struct.cmd_ctrl_node, ptr %call7.i.i, i32 4, i32 4
  %12 = ptrtoint ptr %cmdbuf.4 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call7.i.i49.4, ptr %cmdbuf.4, align 4
  %tobool11.not.4 = icmp eq ptr %call7.i.i49.4, null
  br i1 %tobool11.not.4, label %for.cond.3.do.body13_crit_edge, label %for.cond.4

for.cond.3.do.body13_crit_edge:                   ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body13

for.cond.4:                                       ; preds = %for.cond.3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %13 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i49.5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 2048) #12
  %cmdbuf.5 = getelementptr %struct.cmd_ctrl_node, ptr %call7.i.i, i32 5, i32 4
  %14 = ptrtoint ptr %cmdbuf.5 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call7.i.i49.5, ptr %cmdbuf.5, align 4
  %tobool11.not.5 = icmp eq ptr %call7.i.i49.5, null
  br i1 %tobool11.not.5, label %for.cond.4.do.body13_crit_edge, label %for.cond.5

for.cond.4.do.body13_crit_edge:                   ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body13

for.cond.5:                                       ; preds = %for.cond.4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %15 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i49.6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3520, i32 noundef 2048) #12
  %cmdbuf.6 = getelementptr %struct.cmd_ctrl_node, ptr %call7.i.i, i32 6, i32 4
  %16 = ptrtoint ptr %cmdbuf.6 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call7.i.i49.6, ptr %cmdbuf.6, align 4
  %tobool11.not.6 = icmp eq ptr %call7.i.i49.6, null
  br i1 %tobool11.not.6, label %for.cond.5.do.body13_crit_edge, label %for.cond.6

for.cond.5.do.body13_crit_edge:                   ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body13

for.cond.6:                                       ; preds = %for.cond.5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %17 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i49.7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef 3520, i32 noundef 2048) #12
  %cmdbuf.7 = getelementptr %struct.cmd_ctrl_node, ptr %call7.i.i, i32 7, i32 4
  %18 = ptrtoint ptr %cmdbuf.7 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call7.i.i49.7, ptr %cmdbuf.7, align 4
  %tobool11.not.7 = icmp eq ptr %call7.i.i49.7, null
  br i1 %tobool11.not.7, label %for.cond.6.do.body13_crit_edge, label %for.cond.7

for.cond.6.do.body13_crit_edge:                   ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body13

for.cond.7:                                       ; preds = %for.cond.6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %19 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i49.8 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %19, i32 noundef 3520, i32 noundef 2048) #12
  %cmdbuf.8 = getelementptr %struct.cmd_ctrl_node, ptr %call7.i.i, i32 8, i32 4
  %20 = ptrtoint ptr %cmdbuf.8 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call7.i.i49.8, ptr %cmdbuf.8, align 4
  %tobool11.not.8 = icmp eq ptr %call7.i.i49.8, null
  br i1 %tobool11.not.8, label %for.cond.7.do.body13_crit_edge, label %for.cond.8

for.cond.7.do.body13_crit_edge:                   ; preds = %for.cond.7
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body13

for.cond.8:                                       ; preds = %for.cond.7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %21 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i49.9 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %21, i32 noundef 3520, i32 noundef 2048) #12
  %cmdbuf.9 = getelementptr %struct.cmd_ctrl_node, ptr %call7.i.i, i32 9, i32 4
  %22 = ptrtoint ptr %cmdbuf.9 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call7.i.i49.9, ptr %cmdbuf.9, align 4
  %tobool11.not.9 = icmp eq ptr %call7.i.i49.9, null
  br i1 %tobool11.not.9, label %for.cond.8.do.body13_crit_edge, label %for.cond.9

for.cond.8.do.body13_crit_edge:                   ; preds = %for.cond.8
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body13

for.cond.9:                                       ; preds = %for.cond.8
  %driver_lock.i = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 87
  %cmdfreeq.i.i = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 62
  %prev.i.i.i = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 62, i32 1
  br label %do.body29

do.body13:                                        ; preds = %for.cond.8.do.body13_crit_edge, %for.cond.7.do.body13_crit_edge, %for.cond.6.do.body13_crit_edge, %for.cond.5.do.body13_crit_edge, %for.cond.4.do.body13_crit_edge, %for.cond.3.do.body13_crit_edge, %for.cond.2.do.body13_crit_edge, %for.cond.1.do.body13_crit_edge, %for.cond.do.body13_crit_edge, %if.end6.do.body13_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %23 = load i32, ptr @lbs_debug, align 4
  %and14 = and i32 %23, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %cmp15.not = icmp eq i32 %and14, 0
  br i1 %cmp15.not, label %do.body13.done_crit_edge, label %do.body13.done.sink.split_crit_edge

do.body13.done.sink.split_crit_edge:              ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #10
  br label %done.sink.split

do.body13.done_crit_edge:                         ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #10
  br label %done

do.body29:                                        ; preds = %lbs_cleanup_and_insert_cmd.exit.do.body29_crit_edge, %for.cond.9
  %i.151 = phi i32 [ 0, %for.cond.9 ], [ %inc35, %lbs_cleanup_and_insert_cmd.exit.do.body29_crit_edge ]
  %arrayidx30 = getelementptr %struct.cmd_ctrl_node, ptr %call7.i.i, i32 %i.151
  %cmdwait_q = getelementptr %struct.cmd_ctrl_node, ptr %call7.i.i, i32 %i.151, i32 6
  tail call void @__init_waitqueue_head(ptr noundef %cmdwait_q, ptr noundef nonnull @.str.60, ptr noundef nonnull @lbs_allocate_cmd_buffer.__key) #8
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %driver_lock.i) #8
  %tobool.not.i.i = icmp eq ptr %arrayidx30, null
  br i1 %tobool.not.i.i, label %do.body29.lbs_cleanup_and_insert_cmd.exit_crit_edge, label %if.end.i.i

do.body29.lbs_cleanup_and_insert_cmd.exit_crit_edge: ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #10
  br label %lbs_cleanup_and_insert_cmd.exit

if.end.i.i:                                       ; preds = %do.body29
  %callback.i.i = getelementptr %struct.cmd_ctrl_node, ptr %call7.i.i, i32 %i.151, i32 2
  %24 = ptrtoint ptr %callback.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %callback.i.i, align 4
  %callback_arg.i.i = getelementptr %struct.cmd_ctrl_node, ptr %call7.i.i, i32 %i.151, i32 3
  %25 = ptrtoint ptr %callback_arg.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %callback_arg.i.i, align 8
  %cmdbuf.i.i = getelementptr %struct.cmd_ctrl_node, ptr %call7.i.i, i32 %i.151, i32 4
  %26 = ptrtoint ptr %cmdbuf.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cmdbuf.i.i, align 4
  %28 = call ptr @memset(ptr %27, i32 0, i32 2048)
  %29 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %arrayidx30, ptr noundef %30, ptr noundef %cmdfreeq.i.i) #8
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end.i.i.lbs_cleanup_and_insert_cmd.exit_crit_edge

if.end.i.i.lbs_cleanup_and_insert_cmd.exit_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lbs_cleanup_and_insert_cmd.exit

if.end.i.i.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %arrayidx30, ptr %prev.i.i.i, align 4
  %32 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %cmdfreeq.i.i, ptr %arrayidx30, align 8
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %arrayidx30, i32 0, i32 1
  %33 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %30, ptr %prev3.i.i.i.i, align 4
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %arrayidx30, ptr %30, align 4
  br label %lbs_cleanup_and_insert_cmd.exit

lbs_cleanup_and_insert_cmd.exit:                  ; preds = %if.end.i.i.i.i, %if.end.i.i.lbs_cleanup_and_insert_cmd.exit_crit_edge, %do.body29.lbs_cleanup_and_insert_cmd.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %driver_lock.i, i32 noundef %call2.i) #8
  %inc35 = add nuw nsw i32 %i.151, 1
  %exitcond.not = icmp eq i32 %inc35, 10
  br i1 %exitcond.not, label %lbs_cleanup_and_insert_cmd.exit.done_crit_edge, label %lbs_cleanup_and_insert_cmd.exit.do.body29_crit_edge

lbs_cleanup_and_insert_cmd.exit.do.body29_crit_edge: ; preds = %lbs_cleanup_and_insert_cmd.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body29

lbs_cleanup_and_insert_cmd.exit.done_crit_edge:   ; preds = %lbs_cleanup_and_insert_cmd.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %done

done.sink.split:                                  ; preds = %do.body13.done.sink.split_crit_edge, %do.body.done.sink.split_crit_edge
  %.str.58.sink = phi ptr [ @.str.55, %do.body.done.sink.split_crit_edge ], [ @.str.58, %do.body13.done.sink.split_crit_edge ]
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.58.sink) #11
  br label %done

done:                                             ; preds = %done.sink.split, %lbs_cleanup_and_insert_cmd.exit.done_crit_edge, %do.body13.done_crit_edge, %do.body.done_crit_edge
  %ret.0 = phi i32 [ -1, %do.body.done_crit_edge ], [ -1, %do.body13.done_crit_edge ], [ -1, %done.sink.split ], [ 0, %lbs_cleanup_and_insert_cmd.exit.done_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lbs_free_cmd_buffer(ptr nocapture noundef %priv) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd_array = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 60
  %0 = ptrtoint ptr %cmd_array to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cmd_array, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %do.body, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %cmdbuf = getelementptr %struct.cmd_ctrl_node, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %cmdbuf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cmdbuf, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %for.body.preheader.for.inc_crit_edge, label %if.then9

for.body.preheader.for.inc_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %4 = load i32, ptr @lbs_debug, align 4
  %and = and i32 %4, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp1.not = icmp eq i32 %and, 0
  br i1 %cmp1.not, label %do.body.done_crit_edge, label %do.end

do.body.done_crit_edge:                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %done

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61) #11
  br label %done

if.then9:                                         ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %3) #8
  %5 = ptrtoint ptr %cmdbuf to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %cmdbuf, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then9, %for.body.preheader.for.inc_crit_edge
  %cmdbuf.1 = getelementptr %struct.cmd_ctrl_node, ptr %1, i32 1, i32 4
  %6 = ptrtoint ptr %cmdbuf.1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cmdbuf.1, align 4
  %tobool.not.1 = icmp eq ptr %7, null
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then9.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1

if.then9.1:                                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %7) #8
  %8 = ptrtoint ptr %cmdbuf.1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %cmdbuf.1, align 4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then9.1, %for.inc.for.inc.1_crit_edge
  %cmdbuf.2 = getelementptr %struct.cmd_ctrl_node, ptr %1, i32 2, i32 4
  %9 = ptrtoint ptr %cmdbuf.2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cmdbuf.2, align 4
  %tobool.not.2 = icmp eq ptr %10, null
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then9.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2

if.then9.2:                                       ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %10) #8
  %11 = ptrtoint ptr %cmdbuf.2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %cmdbuf.2, align 4
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then9.2, %for.inc.1.for.inc.2_crit_edge
  %cmdbuf.3 = getelementptr %struct.cmd_ctrl_node, ptr %1, i32 3, i32 4
  %12 = ptrtoint ptr %cmdbuf.3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cmdbuf.3, align 4
  %tobool.not.3 = icmp eq ptr %13, null
  br i1 %tobool.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then9.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.3

if.then9.3:                                       ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %13) #8
  %14 = ptrtoint ptr %cmdbuf.3 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %cmdbuf.3, align 4
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then9.3, %for.inc.2.for.inc.3_crit_edge
  %cmdbuf.4 = getelementptr %struct.cmd_ctrl_node, ptr %1, i32 4, i32 4
  %15 = ptrtoint ptr %cmdbuf.4 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cmdbuf.4, align 4
  %tobool.not.4 = icmp eq ptr %16, null
  br i1 %tobool.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.then9.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.4

if.then9.4:                                       ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %16) #8
  %17 = ptrtoint ptr %cmdbuf.4 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %cmdbuf.4, align 4
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then9.4, %for.inc.3.for.inc.4_crit_edge
  %cmdbuf.5 = getelementptr %struct.cmd_ctrl_node, ptr %1, i32 5, i32 4
  %18 = ptrtoint ptr %cmdbuf.5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cmdbuf.5, align 4
  %tobool.not.5 = icmp eq ptr %19, null
  br i1 %tobool.not.5, label %for.inc.4.for.inc.5_crit_edge, label %if.then9.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.5

if.then9.5:                                       ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %19) #8
  %20 = ptrtoint ptr %cmdbuf.5 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %cmdbuf.5, align 4
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then9.5, %for.inc.4.for.inc.5_crit_edge
  %cmdbuf.6 = getelementptr %struct.cmd_ctrl_node, ptr %1, i32 6, i32 4
  %21 = ptrtoint ptr %cmdbuf.6 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cmdbuf.6, align 4
  %tobool.not.6 = icmp eq ptr %22, null
  br i1 %tobool.not.6, label %for.inc.5.for.inc.6_crit_edge, label %if.then9.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.6

if.then9.6:                                       ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %22) #8
  %23 = ptrtoint ptr %cmdbuf.6 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %cmdbuf.6, align 4
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.then9.6, %for.inc.5.for.inc.6_crit_edge
  %cmdbuf.7 = getelementptr %struct.cmd_ctrl_node, ptr %1, i32 7, i32 4
  %24 = ptrtoint ptr %cmdbuf.7 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cmdbuf.7, align 4
  %tobool.not.7 = icmp eq ptr %25, null
  br i1 %tobool.not.7, label %for.inc.6.for.inc.7_crit_edge, label %if.then9.7

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.7

if.then9.7:                                       ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %25) #8
  %26 = ptrtoint ptr %cmdbuf.7 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %cmdbuf.7, align 4
  br label %for.inc.7

for.inc.7:                                        ; preds = %if.then9.7, %for.inc.6.for.inc.7_crit_edge
  %cmdbuf.8 = getelementptr %struct.cmd_ctrl_node, ptr %1, i32 8, i32 4
  %27 = ptrtoint ptr %cmdbuf.8 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cmdbuf.8, align 4
  %tobool.not.8 = icmp eq ptr %28, null
  br i1 %tobool.not.8, label %for.inc.7.for.inc.8_crit_edge, label %if.then9.8

for.inc.7.for.inc.8_crit_edge:                    ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.8

if.then9.8:                                       ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %28) #8
  %29 = ptrtoint ptr %cmdbuf.8 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %cmdbuf.8, align 4
  br label %for.inc.8

for.inc.8:                                        ; preds = %if.then9.8, %for.inc.7.for.inc.8_crit_edge
  %cmdbuf.9 = getelementptr %struct.cmd_ctrl_node, ptr %1, i32 9, i32 4
  %30 = ptrtoint ptr %cmdbuf.9 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cmdbuf.9, align 4
  %tobool.not.9 = icmp eq ptr %31, null
  br i1 %tobool.not.9, label %for.inc.8.for.inc.9_crit_edge, label %if.then9.9

for.inc.8.for.inc.9_crit_edge:                    ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.9

if.then9.9:                                       ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %31) #8
  %32 = ptrtoint ptr %cmdbuf.9 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %cmdbuf.9, align 4
  br label %for.inc.9

for.inc.9:                                        ; preds = %if.then9.9, %for.inc.8.for.inc.9_crit_edge
  %33 = ptrtoint ptr %cmd_array to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cmd_array, align 4
  %tobool16.not = icmp eq ptr %34, null
  br i1 %tobool16.not, label %for.inc.9.done_crit_edge, label %if.then17

for.inc.9.done_crit_edge:                         ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #10
  br label %done

if.then17:                                        ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %34) #8
  %35 = ptrtoint ptr %cmd_array to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %cmd_array, align 4
  br label %done

done:                                             ; preds = %if.then17, %for.inc.9.done_crit_edge, %do.end, %do.body.done_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lbs_execute_next_command(ptr noundef %priv) local_unnamed_addr #3 align 64 {
entry:
  %cmd.i263 = alloca %struct.cmd_ds_802_11_ps_mode, align 2
  %cmd.i = alloca %struct.cmd_ds_802_11_ps_mode, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_lock = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 87
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %driver_lock) #8
  %cur_cmd = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 61
  %0 = ptrtoint ptr %cur_cmd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cur_cmd, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  tail call void (ptr, ptr, ...) @netdev_alert(ptr noundef %3, ptr noundef nonnull @.str.63) #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %driver_lock, i32 noundef %call2) #8
  br label %cleanup206

if.end:                                           ; preds = %entry
  %cmdpendingq = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 63
  %4 = ptrtoint ptr %cmdpendingq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %cmdpendingq, align 4
  %cmp.i.not = icmp eq ptr %5, %cmdpendingq
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %driver_lock, i32 noundef %call2) #8
  %tobool13.not = icmp eq ptr %5, null
  %or.cond = or i1 %cmp.i.not, %tobool13.not
  br i1 %or.cond, label %if.else179, label %if.then14

if.then14:                                        ; preds = %if.end
  %cmdbuf = getelementptr inbounds %struct.cmd_ctrl_node, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %cmdbuf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cmdbuf, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %9 = load i16, ptr %7, align 1
  %10 = tail call i16 @llvm.bswap.i16(i16 %9)
  %11 = zext i16 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.148)
  switch i16 %9, label %if.else [
    i16 17152, label %if.then14.if.then17_crit_edge
    i16 7936, label %if.then14.if.then17_crit_edge275
  ]

if.then14.if.then17_crit_edge275:                 ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then17

if.then14.if.then17_crit_edge:                    ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then17

if.then17:                                        ; preds = %if.then14.if.then17_crit_edge, %if.then14.if.then17_crit_edge275
  %psstate = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 26
  %12 = ptrtoint ptr %psstate to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %psstate, align 4
  %14 = and i32 %13, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %switch = icmp eq i32 %14, 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %15 = load i32, ptr @lbs_debug, align 4
  %and = and i32 %15, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp25.not = icmp eq i32 %and, 0
  br i1 %switch, label %do.body24, label %do.body40

do.body24:                                        ; preds = %if.then17
  br i1 %cmp25.not, label %do.body24.cleanup206_crit_edge, label %do.end30

do.body24.cleanup206_crit_edge:                   ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup206

do.end30:                                         ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #10
  %conv33 = zext i16 %10 to i32
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, i32 noundef %conv33, i32 noundef %13) #11
  br label %cleanup206

do.body40:                                        ; preds = %if.then17
  br i1 %cmp25.not, label %do.body40.do.body150_crit_edge, label %do.end47

do.body40.do.body150_crit_edge:                   ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body150

do.end47:                                         ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #10
  %conv50 = zext i16 %10 to i32
  %call52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, i32 noundef %conv50, i32 noundef %13) #11
  br label %do.body150

if.else:                                          ; preds = %if.then14
  %psstate56 = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 26
  %16 = ptrtoint ptr %psstate56 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %psstate56, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp57.not = icmp eq i32 %17, 0
  br i1 %cmp57.not, label %if.else.do.body150_crit_edge, label %if.then59

if.else.do.body150_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body150

if.then59:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp2(i16 8448, i16 %9)
  %cmp62.not = icmp eq i16 %9, 8448
  br i1 %cmp62.not, label %if.else76, label %if.then64

if.then64:                                        ; preds = %if.then59
  %18 = and i32 %17, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %18)
  %switch253 = icmp eq i32 %18, 2
  br i1 %switch253, label %if.then72, label %if.else73

if.then72:                                        ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #10
  %needtowakeup = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 27
  %19 = ptrtoint ptr %needtowakeup to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %needtowakeup, align 4
  br label %cleanup206

if.else73:                                        ; preds = %if.then64
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %cmd.i) #8
  %20 = getelementptr inbounds %struct.cmd_header, ptr %cmd.i, i32 0, i32 1
  %21 = getelementptr inbounds %struct.cmd_ds_802_11_ps_mode, ptr %cmd.i, i32 0, i32 1
  %22 = call ptr @memset(ptr %cmd.i, i32 0, i32 20)
  %23 = ptrtoint ptr %20 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 5120, ptr %20, align 2
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 12544, ptr %21, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %25 = load i32, ptr @lbs_debug, align 4
  %and13.i = and i32 %25, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %cmp14.not.i = icmp eq i32 %and13.i, 0
  br i1 %cmp14.not.i, label %if.else73.lbs_set_ps_mode.exit_crit_edge, label %do.end19.i

if.else73.lbs_set_ps_mode.exit_crit_edge:         ; preds = %if.else73
  call void @__sanitizer_cov_trace_pc() #10
  br label %lbs_set_ps_mode.exit

do.end19.i:                                       ; preds = %if.else73
  call void @__sanitizer_cov_trace_pc() #10
  %call21.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #11
  br label %lbs_set_ps_mode.exit

lbs_set_ps_mode.exit:                             ; preds = %do.end19.i, %if.else73.lbs_set_ps_mode.exit_crit_edge
  %call.i.i = call ptr @__lbs_cmd_async(ptr noundef %priv, i16 noundef zeroext 33, ptr noundef nonnull %cmd.i, i32 noundef 20, ptr noundef nonnull @lbs_cmd_async_callback, i32 noundef 0) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %cmd.i) #8
  br label %cleanup206

if.else76:                                        ; preds = %if.then59
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %26 = load i32, ptr @lbs_debug, align 4
  %and78 = and i32 %26, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78)
  %cmp79.not = icmp eq i32 %and78, 0
  br i1 %cmp79.not, label %if.else76.do.end90_crit_edge, label %do.end84

if.else76.do.end90_crit_edge:                     ; preds = %if.else76
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end90

do.end84:                                         ; preds = %if.else76
  call void @__sanitizer_cov_trace_pc() #10
  %action = getelementptr inbounds %struct.cmd_ds_802_11_ps_mode, ptr %7, i32 0, i32 1
  %27 = ptrtoint ptr %action to i32
  call void @__asan_loadN_noabort(i32 %27, i32 2)
  %28 = load i16, ptr %action, align 1
  %conv86 = zext i16 %28 to i32
  %call87 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, i32 noundef %conv86) #11
  br label %do.end90

do.end90:                                         ; preds = %do.end84, %if.else76.do.end90_crit_edge
  %action91 = getelementptr inbounds %struct.cmd_ds_802_11_ps_mode, ptr %7, i32 0, i32 1
  %29 = ptrtoint ptr %action91 to i32
  call void @__asan_loadN_noabort(i32 %29, i32 2)
  %30 = load i16, ptr %action91, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 12544, i16 %30)
  %cmp93.not = icmp eq i16 %30, 12544
  br i1 %cmp93.not, label %if.end109, label %do.body96

do.body96:                                        ; preds = %do.end90
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %31 = load i32, ptr @lbs_debug, align 4
  %and97 = and i32 %31, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and97)
  %cmp98.not = icmp eq i32 %and97, 0
  br i1 %cmp98.not, label %do.body96.do.end108_crit_edge, label %do.end103

do.body96.do.end108_crit_edge:                    ; preds = %do.body96
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end108

do.end103:                                        ; preds = %do.body96
  call void @__sanitizer_cov_trace_pc() #10
  %call105 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73) #11
  br label %do.end108

do.end108:                                        ; preds = %do.end103, %do.body96.do.end108_crit_edge
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %driver_lock) #8
  tail call void @__lbs_complete_command(ptr noundef %priv, ptr noundef nonnull %5, i32 noundef 0) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %driver_lock, i32 noundef %call2.i) #8
  br label %cleanup206

if.end109:                                        ; preds = %do.end90
  %32 = ptrtoint ptr %psstate56 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %psstate56, align 4
  %34 = and i32 %33, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %34)
  %switch255 = icmp eq i32 %34, 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %35 = load i32, ptr @lbs_debug, align 4
  %and119 = and i32 %35, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and119)
  %cmp120.not = icmp eq i32 %and119, 0
  br i1 %switch255, label %do.body118, label %do.body133

do.body118:                                       ; preds = %if.end109
  br i1 %cmp120.not, label %do.body118.do.end130_crit_edge, label %do.end125

do.body118.do.end130_crit_edge:                   ; preds = %do.body118
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end130

do.end125:                                        ; preds = %do.body118
  call void @__sanitizer_cov_trace_pc() #10
  %call127 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76) #11
  br label %do.end130

do.end130:                                        ; preds = %do.end125, %do.body118.do.end130_crit_edge
  tail call void @lbs_complete_command(ptr noundef %priv, ptr noundef nonnull %5, i32 noundef 0)
  %needtowakeup131 = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 27
  %36 = ptrtoint ptr %needtowakeup131 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %needtowakeup131, align 4
  br label %cleanup206

do.body133:                                       ; preds = %if.end109
  br i1 %cmp120.not, label %do.body133.do.body150_crit_edge, label %do.end140

do.body133.do.body150_crit_edge:                  ; preds = %do.body133
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body150

do.end140:                                        ; preds = %do.body133
  call void @__sanitizer_cov_trace_pc() #10
  %call142 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79) #11
  br label %do.body150

do.body150:                                       ; preds = %do.end140, %do.body133.do.body150_crit_edge, %if.else.do.body150_crit_edge, %do.end47, %do.body40.do.body150_crit_edge
  %call158 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %driver_lock) #8
  %call.i.i256 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %5) #8
  br i1 %call.i.i256, label %if.end.i.i, label %do.body150.list_del_init.exit_crit_edge

do.body150.list_del_init.exit_crit_edge:          ; preds = %do.body150
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %do.body150
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %37 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %prev.i.i, align 4
  %39 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %5, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %38, ptr %prev1.i.i.i, align 4
  %42 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %40, ptr %38, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %do.body150.list_del_init.exit_crit_edge
  %43 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %5, ptr %5, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %44 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %5, ptr %prev.i3.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %driver_lock, i32 noundef %call158) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %45 = load i32, ptr @lbs_debug, align 4
  %and165 = and i32 %45, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and165)
  %cmp166.not = icmp eq i32 %and165, 0
  br i1 %cmp166.not, label %list_del_init.exit.do.end178_crit_edge, label %do.end171

list_del_init.exit.do.end178_crit_edge:           ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end178

do.end171:                                        ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  %46 = ptrtoint ptr %7 to i32
  call void @__asan_loadN_noabort(i32 %46, i32 2)
  %47 = load i16, ptr %7, align 1
  %48 = tail call i16 @llvm.bswap.i16(i16 %47)
  %conv174 = zext i16 %48 to i32
  %call175 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, i32 noundef %conv174) #11
  br label %do.end178

do.end178:                                        ; preds = %do.end171, %list_del_init.exit.do.end178_crit_edge
  %49 = ptrtoint ptr %cmdbuf to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %cmdbuf, align 4
  %call2.i258 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %driver_lock) #8
  %seqnum.i = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 59
  %51 = ptrtoint ptr %seqnum.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %seqnum.i, align 2
  %inc.i = add i16 %52, 1
  store i16 %inc.i, ptr %seqnum.i, align 2
  %53 = tail call i16 @llvm.bswap.i16(i16 %inc.i) #8
  %seqnum6.i = getelementptr inbounds %struct.cmd_header, ptr %50, i32 0, i32 2
  %54 = ptrtoint ptr %seqnum6.i to i32
  call void @__asan_storeN_noabort(i32 %54, i32 2)
  store i16 %53, ptr %seqnum6.i, align 1
  %55 = ptrtoint ptr %cur_cmd to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %5, ptr %cur_cmd, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %driver_lock, i32 noundef %call2.i258) #8
  %size.i = getelementptr inbounds %struct.cmd_header, ptr %50, i32 0, i32 1
  %56 = ptrtoint ptr %size.i to i32
  call void @__asan_loadN_noabort(i32 %56, i32 2)
  %57 = load i16, ptr %size.i, align 1
  %58 = tail call i16 @llvm.bswap.i16(i16 %57) #8
  %59 = ptrtoint ptr %50 to i32
  call void @__asan_loadN_noabort(i32 %59, i32 2)
  %60 = load i16, ptr %50, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %60)
  %switch.selectcmp.case1.i259 = icmp eq i16 %60, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 20480, i16 %60)
  %switch.selectcmp.case2.i260 = icmp eq i16 %60, 20480
  %switch.selectcmp.i261 = or i1 %switch.selectcmp.case1.i259, %switch.selectcmp.case2.i260
  %61 = select i1 %switch.selectcmp.i261, i32 500, i32 300
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %62 = load i32, ptr @lbs_debug, align 4
  %and.i = and i32 %62, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp16.not.i = icmp eq i32 %and.i, 0
  br i1 %cmp16.not.i, label %entry.do.end30_crit_edge.i, label %do.end21.i

entry.do.end30_crit_edge.i:                       ; preds = %do.end178
  call void @__sanitizer_cov_trace_pc() #10
  %.pre.i = zext i16 %58 to i32
  br label %do.end30.i

do.end21.i:                                       ; preds = %do.end178
  call void @__sanitizer_cov_trace_pc() #10
  %63 = tail call i16 @llvm.bswap.i16(i16 %60) #8
  %conv9.i = zext i16 %63 to i32
  %64 = ptrtoint ptr %seqnum6.i to i32
  call void @__asan_loadN_noabort(i32 %64, i32 2)
  %65 = load i16, ptr %seqnum6.i, align 1
  %66 = tail call i16 @llvm.bswap.i16(i16 %65) #8
  %conv25.i = zext i16 %66 to i32
  %conv26.i = zext i16 %58 to i32
  %call27.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.127, i32 noundef %conv9.i, i32 noundef %conv25.i, i32 noundef %conv26.i) #11
  br label %do.end30.i

do.end30.i:                                       ; preds = %do.end21.i, %entry.do.end30_crit_edge.i
  %conv32.pre-phi.i = phi i32 [ %.pre.i, %entry.do.end30_crit_edge.i ], [ %conv26.i, %do.end21.i ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %57)
  %tobool.not.i.i = icmp eq i16 %57, 0
  br i1 %tobool.not.i.i, label %do.end30.i.lbs_deb_hex.exit.i_crit_edge, label %land.lhs.true.i.i

do.end30.i.lbs_deb_hex.exit.i_crit_edge:          ; preds = %do.end30.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lbs_deb_hex.exit.i

land.lhs.true.i.i:                                ; preds = %do.end30.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %67 = load i32, ptr @lbs_debug, align 4
  %68 = and i32 %67, 2113536
  call void @__sanitizer_cov_trace_const_cmp4(i32 2113536, i32 %68)
  %.not.i = icmp eq i32 %68, 2113536
  br i1 %.not.i, label %do.end18.i.peel.i, label %land.lhs.true.i.i.lbs_deb_hex.exit.i_crit_edge

land.lhs.true.i.i.lbs_deb_hex.exit.i_crit_edge:   ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lbs_deb_hex.exit.i

do.end18.i.peel.i:                                ; preds = %land.lhs.true.i.i
  %69 = ptrtoint ptr %cmdbuf to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %cmdbuf, align 4
  %71 = tail call i32 @llvm.smax.i32(i32 %conv32.pre-phi.i, i32 1) #8
  %call14.i.peel.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.120, ptr noundef nonnull @.str.129) #11
  %72 = ptrtoint ptr %70 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %70, align 1
  %conv.i.peel.i = zext i8 %73 to i32
  %call20.i.peel.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.123, i32 noundef %conv.i.peel.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %conv32.pre-phi.i)
  %exitcond.peel.i = icmp ult i32 %conv32.pre-phi.i, 2
  br i1 %exitcond.peel.i, label %do.end18.i.peel.i.do.end23.i.i_crit_edge, label %do.end18.i.peel.i.for.body.i.i_crit_edge

do.end18.i.peel.i.for.body.i.i_crit_edge:         ; preds = %do.end18.i.peel.i
  br label %for.body.i.i

do.end18.i.peel.i.do.end23.i.i_crit_edge:         ; preds = %do.end18.i.peel.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end23.i.i

for.body.i.i:                                     ; preds = %do.end18.i.i.for.body.i.i_crit_edge, %do.end18.i.peel.i.for.body.i.i_crit_edge
  %buf.addr.035.i.pn.i = phi ptr [ %buf.addr.035.i.i, %do.end18.i.i.for.body.i.i_crit_edge ], [ %70, %do.end18.i.peel.i.for.body.i.i_crit_edge ]
  %i.033.i.i = phi i32 [ %inc.i.i, %do.end18.i.i.for.body.i.i_crit_edge ], [ 2, %do.end18.i.peel.i.for.body.i.i_crit_edge ]
  %buf.addr.035.i.i = getelementptr i8, ptr %buf.addr.035.i.pn.i, i32 1
  %and5.i.i = and i32 %i.033.i.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and5.i.i)
  %cmp6.i.i = icmp eq i32 %and5.i.i, 1
  br i1 %cmp6.i.i, label %do.end12.i.i, label %for.body.i.i.do.end18.i.i_crit_edge

for.body.i.i.do.end18.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end18.i.i

do.end12.i.i:                                     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i262 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.116) #11
  %call14.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.120, ptr noundef nonnull @.str.129) #11
  br label %do.end18.i.i

do.end18.i.i:                                     ; preds = %do.end12.i.i, %for.body.i.i.do.end18.i.i_crit_edge
  %74 = ptrtoint ptr %buf.addr.035.i.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %buf.addr.035.i.i, align 1
  %conv.i.i = zext i8 %75 to i32
  %call20.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.123, i32 noundef %conv.i.i) #11
  %inc.i.i = add nuw nsw i32 %i.033.i.i, 1
  %exitcond.i = icmp eq i32 %i.033.i.i, %71
  br i1 %exitcond.i, label %do.end18.i.i.do.end23.i.i_crit_edge, label %do.end18.i.i.for.body.i.i_crit_edge, !llvm.loop !276

do.end18.i.i.for.body.i.i_crit_edge:              ; preds = %do.end18.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

do.end18.i.i.do.end23.i.i_crit_edge:              ; preds = %do.end18.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end23.i.i

do.end23.i.i:                                     ; preds = %do.end18.i.i.do.end23.i.i_crit_edge, %do.end18.i.peel.i.do.end23.i.i_crit_edge
  %call25.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.116) #11
  br label %lbs_deb_hex.exit.i

lbs_deb_hex.exit.i:                               ; preds = %do.end23.i.i, %land.lhs.true.i.i.lbs_deb_hex.exit.i_crit_edge, %do.end30.i.lbs_deb_hex.exit.i_crit_edge
  %hw_host_to_card.i = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 46
  %76 = ptrtoint ptr %hw_host_to_card.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %hw_host_to_card.i, align 4
  %call33.i = tail call i32 %77(ptr noundef %priv, i8 noundef zeroext 1, ptr noundef %50, i16 noundef zeroext %58) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i)
  %tobool.not.i = icmp eq i32 %call33.i, 0
  br i1 %tobool.not.i, label %lbs_deb_hex.exit.i.if.end35.i_crit_edge, label %if.then34.i

lbs_deb_hex.exit.i.if.end35.i_crit_edge:          ; preds = %lbs_deb_hex.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35.i

if.then34.i:                                      ; preds = %lbs_deb_hex.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %78 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %priv, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %79, ptr noundef nonnull @.str.130, i32 noundef %call33.i) #11
  %dnld_sent.i = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 58
  %80 = ptrtoint ptr %dnld_sent.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 0, ptr %dnld_sent.i, align 1
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %driver_lock) #8
  tail call void @__lbs_complete_command(ptr noundef %priv, ptr noundef nonnull %5, i32 noundef %call33.i) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %driver_lock, i32 noundef %call2.i.i) #8
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.then34.i, %lbs_deb_hex.exit.i.if.end35.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 15872, i16 %60)
  %cmp37.i = icmp eq i16 %60, 15872
  br i1 %cmp37.i, label %if.then39.i, label %if.else.i

if.then39.i:                                      ; preds = %if.end35.i
  %is_auto_deep_sleep_enabled.i = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 30
  %81 = ptrtoint ptr %is_auto_deep_sleep_enabled.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %is_auto_deep_sleep_enabled.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool40.not.i = icmp eq i32 %82, 0
  br i1 %tobool40.not.i, label %if.then39.i.if.end43.i_crit_edge, label %if.then41.i

if.then39.i.if.end43.i_crit_edge:                 ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43.i

if.then41.i:                                      ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #10
  %wakeup_dev_required.i = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 31
  %83 = ptrtoint ptr %wakeup_dev_required.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 1, ptr %wakeup_dev_required.i, align 4
  %dnld_sent42.i = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 58
  %84 = ptrtoint ptr %dnld_sent42.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 0, ptr %dnld_sent42.i, align 1
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.then41.i, %if.then39.i.if.end43.i_crit_edge
  %is_deep_sleep.i = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 28
  %85 = ptrtoint ptr %is_deep_sleep.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 1, ptr %is_deep_sleep.i, align 4
  %call2.i77.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %driver_lock) #8
  tail call void @__lbs_complete_command(ptr noundef %priv, ptr noundef nonnull %5, i32 noundef 0) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %driver_lock, i32 noundef %call2.i77.i) #8
  br label %cleanup206

if.else.i:                                        ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #10
  %command_timer.i = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 64
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %86 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %86, %61
  %call44.i = tail call i32 @mod_timer(ptr noundef %command_timer.i, i32 noundef %add.i) #8
  br label %cleanup206

if.else179:                                       ; preds = %if.end
  %psmode = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 25
  %87 = ptrtoint ptr %psmode to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %psmode, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %88)
  %cmp181.not = icmp eq i16 %88, 0
  br i1 %cmp181.not, label %if.else179.cleanup206_crit_edge, label %land.lhs.true

if.else179.cleanup206_crit_edge:                  ; preds = %if.else179
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup206

land.lhs.true:                                    ; preds = %if.else179
  %psstate183 = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 26
  %89 = ptrtoint ptr %psstate183 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %psstate183, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %cmp184 = icmp eq i32 %90, 0
  br i1 %cmp184, label %land.lhs.true186, label %land.lhs.true.cleanup206_crit_edge

land.lhs.true.cleanup206_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup206

land.lhs.true186:                                 ; preds = %land.lhs.true
  %connect_status = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 1
  %91 = ptrtoint ptr %connect_status to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %connect_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %cmp187 = icmp eq i32 %92, 0
  br i1 %cmp187, label %do.body190, label %land.lhs.true186.cleanup206_crit_edge

land.lhs.true186.cleanup206_crit_edge:            ; preds = %land.lhs.true186
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup206

do.body190:                                       ; preds = %land.lhs.true186
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %93 = load i32, ptr @lbs_debug, align 4
  %and191 = and i32 %93, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and191)
  %cmp192.not = icmp eq i32 %and191, 0
  br i1 %cmp192.not, label %do.body190.do.end202_crit_edge, label %do.end197

do.body190.do.end202_crit_edge:                   ; preds = %do.body190
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end202

do.end197:                                        ; preds = %do.body190
  call void @__sanitizer_cov_trace_pc() #10
  %call199 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85) #11
  br label %do.end202

do.end202:                                        ; preds = %do.end197, %do.body190.do.end202_crit_edge
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %cmd.i263) #8
  %94 = getelementptr inbounds %struct.cmd_header, ptr %cmd.i263, i32 0, i32 1
  %95 = getelementptr inbounds %struct.cmd_ds_802_11_ps_mode, ptr %cmd.i263, i32 0, i32 1
  %96 = getelementptr inbounds %struct.cmd_ds_802_11_ps_mode, ptr %cmd.i263, i32 0, i32 3
  %97 = call ptr @memset(ptr %cmd.i263, i32 0, i32 20)
  %98 = ptrtoint ptr %94 to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 5120, ptr %94, align 2
  %99 = ptrtoint ptr %95 to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 12288, ptr %95, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %100 = load i32, ptr @lbs_debug, align 4
  %and.i264 = and i32 %100, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i264)
  %cmp2.not.i = icmp eq i32 %and.i264, 0
  br i1 %cmp2.not.i, label %do.end202.lbs_set_ps_mode.exit266_crit_edge, label %do.end.i

do.end202.lbs_set_ps_mode.exit266_crit_edge:      ; preds = %do.end202
  call void @__sanitizer_cov_trace_pc() #10
  br label %lbs_set_ps_mode.exit266

do.end.i:                                         ; preds = %do.end202
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #11
  br label %lbs_set_ps_mode.exit266

lbs_set_ps_mode.exit266:                          ; preds = %do.end.i, %do.end202.lbs_set_ps_mode.exit266_crit_edge
  %101 = ptrtoint ptr %96 to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 256, ptr %96, align 2
  %call.i.i265 = call ptr @__lbs_cmd_async(ptr noundef %priv, i16 noundef zeroext 33, ptr noundef nonnull %cmd.i263, i32 noundef 20, ptr noundef nonnull @lbs_cmd_async_callback, i32 noundef 0) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %cmd.i263) #8
  br label %cleanup206

cleanup206:                                       ; preds = %lbs_set_ps_mode.exit266, %land.lhs.true186.cleanup206_crit_edge, %land.lhs.true.cleanup206_crit_edge, %if.else179.cleanup206_crit_edge, %if.else.i, %if.end43.i, %do.end130, %do.end108, %lbs_set_ps_mode.exit, %if.then72, %do.end30, %do.body24.cleanup206_crit_edge, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ -1, %do.end30 ], [ -1, %do.body24.cleanup206_crit_edge ], [ 0, %lbs_set_ps_mode.exit ], [ 0, %if.then72 ], [ 0, %if.else179.cleanup206_crit_edge ], [ 0, %land.lhs.true.cleanup206_crit_edge ], [ 0, %land.lhs.true186.cleanup206_crit_edge ], [ 0, %lbs_set_ps_mode.exit266 ], [ 0, %do.end130 ], [ 0, %do.end108 ], [ 0, %if.end43.i ], [ 0, %if.else.i ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_alert(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lbs_ps_confirm_sleep(ptr noundef %priv) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_lock = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 87
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %driver_lock) #8
  %dnld_sent = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 58
  %0 = ptrtoint ptr %dnld_sent to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dnld_sent, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end16_crit_edge, label %if.then

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %2 = load i32, ptr @lbs_debug, align 4
  %and = and i32 %2, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp6.not = icmp eq i32 %and, 0
  br i1 %cmp6.not, label %if.then.if.end16_crit_edge, label %do.end11

if.then.if.end16_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

do.end11:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87) #11
  br label %if.end16

if.end16:                                         ; preds = %do.end11, %if.then.if.end16_crit_edge, %entry.if.end16_crit_edge
  %allowed.0 = phi i32 [ 0, %do.end11 ], [ 0, %if.then.if.end16_crit_edge ], [ 1, %entry.if.end16_crit_edge ]
  %cur_cmd = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 61
  %3 = ptrtoint ptr %cur_cmd to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cur_cmd, align 4
  %tobool17.not = icmp eq ptr %4, null
  br i1 %tobool17.not, label %if.end16.if.end32_crit_edge, label %if.then18

if.end16.if.end32_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

if.then18:                                        ; preds = %if.end16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %5 = load i32, ptr @lbs_debug, align 4
  %and20 = and i32 %5, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %cmp21.not = icmp eq i32 %and20, 0
  br i1 %cmp21.not, label %if.then18.if.end32_crit_edge, label %do.end26

if.then18.if.end32_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

do.end26:                                         ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90) #11
  br label %if.end32

if.end32:                                         ; preds = %do.end26, %if.then18.if.end32_crit_edge, %if.end16.if.end32_crit_edge
  %allowed.1 = phi i32 [ 0, %do.end26 ], [ 0, %if.then18.if.end32_crit_edge ], [ %allowed.0, %if.end16.if.end32_crit_edge ]
  %event_fifo = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 69
  %6 = ptrtoint ptr %event_fifo to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %event_fifo, align 4
  %out = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 69, i32 0, i32 0, i32 1
  %8 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %out, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %tobool34.not = icmp eq i32 %7, %9
  br i1 %tobool34.not, label %lor.lhs.false, label %if.end32.if.then36_crit_edge

if.end32.if.then36_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then36

lor.lhs.false:                                    ; preds = %if.end32
  %resp_idx = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 66
  %10 = ptrtoint ptr %resp_idx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %resp_idx, align 4
  %idxprom = zext i8 %11 to i32
  %arrayidx = getelementptr %struct.lbs_private, ptr %priv, i32 0, i32 68, i32 %idxprom
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool35.not = icmp eq i32 %13, 0
  br i1 %tobool35.not, label %if.end50, label %lor.lhs.false.if.then36_crit_edge

lor.lhs.false.if.then36_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then36

if.then36:                                        ; preds = %lor.lhs.false.if.then36_crit_edge, %if.end32.if.then36_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %14 = load i32, ptr @lbs_debug, align 4
  %and38 = and i32 %14, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %cmp39.not = icmp eq i32 %and38, 0
  br i1 %cmp39.not, label %if.then36.if.end50.thread_crit_edge, label %do.end44

if.then36.if.end50.thread_crit_edge:              ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50.thread

do.end44:                                         ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #10
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93) #11
  br label %if.end50.thread

if.end50.thread:                                  ; preds = %do.end44, %if.then36.if.end50.thread_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %driver_lock, i32 noundef %call2) #8
  br label %do.body67

if.end50:                                         ; preds = %lor.lhs.false
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %driver_lock, i32 noundef %call2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %allowed.1)
  %tobool52.not = icmp eq i32 %allowed.1, 0
  br i1 %tobool52.not, label %if.end50.do.body67_crit_edge, label %do.body54

if.end50.do.body67_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body67

do.body54:                                        ; preds = %if.end50
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %15 = load i32, ptr @lbs_debug, align 4
  %and55 = and i32 %15, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %cmp56.not = icmp eq i32 %and55, 0
  br i1 %cmp56.not, label %do.body54.do.end66_crit_edge, label %do.end61

do.body54.do.end66_crit_edge:                     ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end66

do.end61:                                         ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #10
  %call63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96) #11
  br label %do.end66

do.end66:                                         ; preds = %do.end61, %do.body54.do.end66_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %16 = load i32, ptr @lbs_debug, align 4
  %17 = and i32 %16, 2105344
  call void @__sanitizer_cov_trace_const_cmp4(i32 2105344, i32 %17)
  %.not.i = icmp eq i32 %17, 2105344
  br i1 %.not.i, label %do.end18.i.peel.i, label %do.end66.lbs_deb_hex.exit.i_crit_edge

do.end66.lbs_deb_hex.exit.i_crit_edge:            ; preds = %do.end66
  call void @__sanitizer_cov_trace_pc() #10
  br label %lbs_deb_hex.exit.i

do.end18.i.peel.i:                                ; preds = %do.end66
  %call14.i.peel.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.120, ptr noundef nonnull @.str.131) #11
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @confirm_sleep to i32))
  %18 = load i8, ptr @confirm_sleep, align 1
  %conv.i.peel.i = zext i8 %18 to i32
  %call20.i.peel.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.123, i32 noundef %conv.i.peel.i) #11
  br i1 icmp eq (ptr getelementptr (i8, ptr @confirm_sleep, i32 17), ptr @confirm_sleep), label %do.end18.i.peel.i.do.end23.i.i_crit_edge, label %do.end18.i.peel.i.for.body.i.i_crit_edge

do.end18.i.peel.i.for.body.i.i_crit_edge:         ; preds = %do.end18.i.peel.i
  br label %for.body.i.i

do.end18.i.peel.i.do.end23.i.i_crit_edge:         ; preds = %do.end18.i.peel.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end23.i.i

for.body.i.i:                                     ; preds = %do.end18.i.i.for.body.i.i_crit_edge, %do.end18.i.peel.i.for.body.i.i_crit_edge
  %buf.addr.035.i.i = phi ptr [ %incdec.ptr.i.i, %do.end18.i.i.for.body.i.i_crit_edge ], [ getelementptr inbounds (i8, ptr @confirm_sleep, i32 1), %do.end18.i.peel.i.for.body.i.i_crit_edge ]
  %i.033.i.i = phi i32 [ %inc.i.i, %do.end18.i.i.for.body.i.i_crit_edge ], [ 2, %do.end18.i.peel.i.for.body.i.i_crit_edge ]
  %and5.i.i = and i32 %i.033.i.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and5.i.i)
  %cmp6.i.i = icmp eq i32 %and5.i.i, 1
  br i1 %cmp6.i.i, label %do.end12.i.i, label %for.body.i.i.do.end18.i.i_crit_edge

for.body.i.i.do.end18.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end18.i.i

do.end12.i.i:                                     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.116) #11
  %call14.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.120, ptr noundef nonnull @.str.131) #11
  br label %do.end18.i.i

do.end18.i.i:                                     ; preds = %do.end12.i.i, %for.body.i.i.do.end18.i.i_crit_edge
  %19 = ptrtoint ptr %buf.addr.035.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %buf.addr.035.i.i, align 1
  %conv.i.i = zext i8 %20 to i32
  %call20.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.123, i32 noundef %conv.i.i) #11
  %incdec.ptr.i.i = getelementptr i8, ptr %buf.addr.035.i.i, i32 1
  %inc.i.i = add nuw nsw i32 %i.033.i.i, 1
  %exitcond.i = icmp eq ptr %buf.addr.035.i.i, getelementptr (i8, ptr @confirm_sleep, i32 17)
  br i1 %exitcond.i, label %do.end18.i.i.do.end23.i.i_crit_edge, label %do.end18.i.i.for.body.i.i_crit_edge, !llvm.loop !277

do.end18.i.i.for.body.i.i_crit_edge:              ; preds = %do.end18.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

do.end18.i.i.do.end23.i.i_crit_edge:              ; preds = %do.end18.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end23.i.i

do.end23.i.i:                                     ; preds = %do.end18.i.i.do.end23.i.i_crit_edge, %do.end18.i.peel.i.do.end23.i.i_crit_edge
  %call25.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.116) #11
  br label %lbs_deb_hex.exit.i

lbs_deb_hex.exit.i:                               ; preds = %do.end23.i.i, %do.end66.lbs_deb_hex.exit.i_crit_edge
  %hw_host_to_card.i = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 46
  %21 = ptrtoint ptr %hw_host_to_card.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hw_host_to_card.i, align 4
  %call.i = tail call i32 %22(ptr noundef %priv, i8 noundef zeroext 1, ptr noundef nonnull @confirm_sleep, i16 noundef zeroext 18) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %do.body1.i, label %if.then.i

if.then.i:                                        ; preds = %lbs_deb_hex.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %priv, align 4
  tail call void (ptr, ptr, ...) @netdev_alert(ptr noundef %24, ptr noundef nonnull @.str.132) #11
  br label %if.end80

do.body1.i:                                       ; preds = %lbs_deb_hex.exit.i
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %driver_lock) #8
  %25 = ptrtoint ptr %dnld_sent to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %dnld_sent, align 1
  %is_host_sleep_configured.i = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 36
  %26 = ptrtoint ptr %is_host_sleep_configured.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %is_host_sleep_configured.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool6.not.i = icmp eq i32 %27, 0
  br i1 %tobool6.not.i, label %do.body1.i.if.end8.i_crit_edge, label %if.then7.i

do.body1.i.if.end8.i_crit_edge:                   ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i

if.then7.i:                                       ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #10
  %is_host_sleep_activated.i = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 37
  %28 = ptrtoint ptr %is_host_sleep_activated.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %is_host_sleep_activated.i, align 4
  %host_sleep_q.i = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 38
  tail call void @__wake_up(ptr noundef %host_sleep_q.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #8
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then7.i, %do.body1.i.if.end8.i_crit_edge
  %29 = ptrtoint ptr %event_fifo to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %event_fifo, align 4
  %31 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %out, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %32)
  %tobool10.not.i = icmp eq i32 %30, %32
  br i1 %tobool10.not.i, label %land.lhs.true.i, label %if.end8.i.if.end13.i_crit_edge

if.end8.i.if.end13.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13.i

land.lhs.true.i:                                  ; preds = %if.end8.i
  %33 = ptrtoint ptr %resp_idx to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %resp_idx, align 4
  %idxprom.i = zext i8 %34 to i32
  %arrayidx.i = getelementptr %struct.lbs_private, ptr %priv, i32 0, i32 68, i32 %idxprom.i
  %35 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool11.not.i = icmp eq i32 %36, 0
  br i1 %tobool11.not.i, label %if.then12.i, label %land.lhs.true.i.if.end13.i_crit_edge

land.lhs.true.i.if.end13.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13.i

if.then12.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %psstate.i = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 26
  %37 = ptrtoint ptr %psstate.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 3, ptr %psstate.i, align 4
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then12.i, %land.lhs.true.i.if.end13.i_crit_edge, %if.end8.i.if.end13.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %driver_lock, i32 noundef %call3.i) #8
  br label %if.end80

do.body67:                                        ; preds = %if.end50.do.body67_crit_edge, %if.end50.thread
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %38 = load i32, ptr @lbs_debug, align 4
  %and68 = and i32 %38, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %cmp69.not = icmp eq i32 %and68, 0
  br i1 %cmp69.not, label %do.body67.if.end80_crit_edge, label %do.end74

do.body67.if.end80_crit_edge:                     ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end80

do.end74:                                         ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #10
  %call76 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.99) #11
  br label %if.end80

if.end80:                                         ; preds = %do.end74, %do.body67.if.end80_crit_edge, %if.end13.i, %if.then.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lbs_set_tpc_cfg(ptr noundef %priv, i32 noundef %enable, i8 noundef signext %p0, i8 noundef signext %p1, i8 noundef signext %p2, i32 noundef %usesnr) local_unnamed_addr #3 align 64 {
entry:
  %cmd = alloca %struct.cmd_ds_802_11_tpc_cfg, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 15, ptr nonnull %cmd) #8
  %0 = getelementptr inbounds %struct.cmd_header, ptr %cmd, i32 0, i32 1
  %1 = getelementptr inbounds %struct.cmd_ds_802_11_tpc_cfg, ptr %cmd, i32 0, i32 1
  %2 = getelementptr inbounds %struct.cmd_ds_802_11_tpc_cfg, ptr %cmd, i32 0, i32 2
  %3 = getelementptr inbounds %struct.cmd_ds_802_11_tpc_cfg, ptr %cmd, i32 0, i32 3
  %4 = getelementptr inbounds %struct.cmd_ds_802_11_tpc_cfg, ptr %cmd, i32 0, i32 4
  %5 = getelementptr inbounds %struct.cmd_ds_802_11_tpc_cfg, ptr %cmd, i32 0, i32 5
  %6 = getelementptr inbounds %struct.cmd_ds_802_11_tpc_cfg, ptr %cmd, i32 0, i32 6
  %7 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 0, ptr %cmd, align 8
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 256, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool = icmp ne i32 %enable, 0
  %conv = zext i1 %tobool to i8
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv, ptr %2, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %usesnr)
  %tobool3 = icmp ne i32 %usesnr, 0
  %conv8 = zext i1 %tobool3 to i8
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv8, ptr %6, align 2
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %p0, ptr %3, align 1
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %p1, ptr %4, align 4
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %p2, ptr %5, align 1
  %14 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 3840, ptr %0, align 2
  %15 = ptrtoint ptr %cmd to i32
  %call = call i32 @__lbs_cmd(ptr noundef %priv, i16 noundef zeroext 114, ptr noundef nonnull %cmd, i32 noundef 15, ptr noundef nonnull @lbs_cmd_copyback, i32 noundef %15)
  call void @llvm.lifetime.end.p0(i64 15, ptr nonnull %cmd) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lbs_set_power_adapt_cfg(ptr noundef %priv, i32 noundef %enable, i8 noundef signext %p0, i8 noundef signext %p1, i8 noundef signext %p2) local_unnamed_addr #3 align 64 {
entry:
  %cmd = alloca %struct.cmd_ds_802_11_pa_cfg, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %cmd) #8
  %0 = getelementptr inbounds %struct.cmd_header, ptr %cmd, i32 0, i32 1
  %1 = getelementptr inbounds %struct.cmd_ds_802_11_pa_cfg, ptr %cmd, i32 0, i32 1
  %2 = getelementptr inbounds %struct.cmd_ds_802_11_pa_cfg, ptr %cmd, i32 0, i32 2
  %3 = getelementptr inbounds %struct.cmd_ds_802_11_pa_cfg, ptr %cmd, i32 0, i32 3
  %4 = getelementptr inbounds %struct.cmd_ds_802_11_pa_cfg, ptr %cmd, i32 0, i32 4
  %5 = getelementptr inbounds %struct.cmd_ds_802_11_pa_cfg, ptr %cmd, i32 0, i32 5
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 0, ptr %cmd, align 8
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 256, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool = icmp ne i32 %enable, 0
  %conv = zext i1 %tobool to i8
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv, ptr %2, align 2
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %p0, ptr %3, align 1
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %p1, ptr %4, align 4
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %p2, ptr %5, align 1
  %12 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 3584, ptr %0, align 2
  %13 = ptrtoint ptr %cmd to i32
  %call = call i32 @__lbs_cmd(ptr noundef %priv, i16 noundef zeroext 115, ptr noundef nonnull %cmd, i32 noundef 14, ptr noundef nonnull @lbs_cmd_copyback, i32 noundef %13)
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %cmd) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @__lbs_cmd_async(ptr noundef %priv, i16 noundef zeroext %command, ptr nocapture noundef readonly %in_cmd, i32 noundef %in_cmd_size, ptr noundef %callback, i32 noundef %callback_arg) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %surpriseremoved = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 43
  %0 = ptrtoint ptr %surpriseremoved to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %surpriseremoved, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end6, label %do.body

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %2 = load i32, ptr @lbs_debug, align 4
  %and = and i32 %2, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %do.body.done_crit_edge, label %do.end

do.body.done_crit_edge:                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %done

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101) #11
  br label %done

if.end6:                                          ; preds = %entry
  %is_auto_deep_sleep_enabled = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 30
  %3 = ptrtoint ptr %is_auto_deep_sleep_enabled to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %is_auto_deep_sleep_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool7.not = icmp eq i32 %4, 0
  br i1 %tobool7.not, label %if.then8, label %if.end6.if.end25_crit_edge

if.end6.if.end25_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.then8:                                         ; preds = %if.end6
  %is_deep_sleep = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 28
  %5 = ptrtoint ptr %is_deep_sleep to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %is_deep_sleep, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool9.not = icmp eq i32 %6, 0
  br i1 %tobool9.not, label %if.then8.if.end25_crit_edge, label %do.body11

if.then8.if.end25_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

do.body11:                                        ; preds = %if.then8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %7 = load i32, ptr @lbs_debug, align 4
  %and12 = and i32 %7, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %cmp13.not = icmp eq i32 %and12, 0
  br i1 %cmp13.not, label %do.body11.done_crit_edge, label %do.end17

do.body11.done_crit_edge:                         ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #10
  br label %done

do.end17:                                         ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #10
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104) #11
  br label %done

if.end25:                                         ; preds = %if.then8.if.end25_crit_edge, %if.end6.if.end25_crit_edge
  %tobool.not.i = icmp eq ptr %priv, null
  br i1 %tobool.not.i, label %if.end25.do.body29_crit_edge, label %do.body1.i

if.end25.do.body29_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body29

do.body1.i:                                       ; preds = %if.end25
  %driver_lock.i = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 87
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %driver_lock.i) #8
  %cmdfreeq.i = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 62
  %8 = ptrtoint ptr %cmdfreeq.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %cmdfreeq.i, align 4
  %cmp.i.not.i = icmp eq ptr %9, %cmdfreeq.i
  br i1 %cmp.i.not.i, label %do.body10.i, label %if.then7.i

if.then7.i:                                       ; preds = %do.body1.i
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %9) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then7.i.lbs_get_free_cmd_node.exit_crit_edge

if.then7.i.lbs_get_free_cmd_node.exit_crit_edge:  ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lbs_get_free_cmd_node.exit

if.end.i.i.i:                                     ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i.i, align 4
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %9, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %lbs_get_free_cmd_node.exit

do.body10.i:                                      ; preds = %do.body1.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %16 = load i32, ptr @lbs_debug, align 4
  %and.i = and i32 %16, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp11.not.i = icmp eq i32 %and.i, 0
  br i1 %cmp11.not.i, label %do.body10.i.lbs_get_free_cmd_node.exit.thread90_crit_edge, label %do.end16.i

do.body10.i.lbs_get_free_cmd_node.exit.thread90_crit_edge: ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lbs_get_free_cmd_node.exit.thread90

do.end16.i:                                       ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #10
  %call18.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.133) #11
  br label %lbs_get_free_cmd_node.exit.thread90

lbs_get_free_cmd_node.exit.thread90:              ; preds = %do.end16.i, %do.body10.i.lbs_get_free_cmd_node.exit.thread90_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %driver_lock.i, i32 noundef %call2.i) #8
  br label %do.body29

lbs_get_free_cmd_node.exit:                       ; preds = %if.end.i.i.i, %if.then7.i.lbs_get_free_cmd_node.exit_crit_edge
  %17 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %9, ptr %9, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %9, ptr %prev.i3.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %driver_lock.i, i32 noundef %call2.i) #8
  %cmp27 = icmp eq ptr %9, null
  br i1 %cmp27, label %lbs_get_free_cmd_node.exit.do.body29_crit_edge, label %if.end42

lbs_get_free_cmd_node.exit.do.body29_crit_edge:   ; preds = %lbs_get_free_cmd_node.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body29

do.body29:                                        ; preds = %lbs_get_free_cmd_node.exit.do.body29_crit_edge, %lbs_get_free_cmd_node.exit.thread90, %if.end25.do.body29_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %19 = load i32, ptr @lbs_debug, align 4
  %and30 = and i32 %19, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %cmp31.not = icmp eq i32 %and30, 0
  br i1 %cmp31.not, label %do.body29.do.end40_crit_edge, label %do.end35

do.body29.do.end40_crit_edge:                     ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end40

do.end35:                                         ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #10
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107) #11
  br label %do.end40

do.end40:                                         ; preds = %do.end35, %do.body29.do.end40_crit_edge
  %waitq = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 71
  tail call void @__wake_up(ptr noundef %waitq, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  br label %done

if.end42:                                         ; preds = %lbs_get_free_cmd_node.exit
  %callback43 = getelementptr inbounds %struct.cmd_ctrl_node, ptr %9, i32 0, i32 2
  %20 = ptrtoint ptr %callback43 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %callback, ptr %callback43, align 4
  %callback_arg44 = getelementptr inbounds %struct.cmd_ctrl_node, ptr %9, i32 0, i32 3
  %21 = ptrtoint ptr %callback_arg44 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %callback_arg, ptr %callback_arg44, align 4
  %cmdbuf = getelementptr inbounds %struct.cmd_ctrl_node, ptr %9, i32 0, i32 4
  %22 = ptrtoint ptr %cmdbuf to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cmdbuf, align 4
  %24 = call ptr @memcpy(ptr %23, ptr %in_cmd, i32 %in_cmd_size)
  %25 = tail call i16 @llvm.bswap.i16(i16 %command)
  %26 = ptrtoint ptr %cmdbuf to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cmdbuf, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_storeN_noabort(i32 %28, i32 2)
  store i16 %25, ptr %27, align 1
  %conv = trunc i32 %in_cmd_size to i16
  %29 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %30 = ptrtoint ptr %cmdbuf to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cmdbuf, align 4
  %size = getelementptr inbounds %struct.cmd_header, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %size to i32
  call void @__asan_storeN_noabort(i32 %32, i32 2)
  store i16 %29, ptr %size, align 1
  %33 = load ptr, ptr %cmdbuf, align 4
  %result = getelementptr inbounds %struct.cmd_header, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %result to i32
  call void @__asan_storeN_noabort(i32 %34, i32 2)
  store i16 0, ptr %result, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %35 = load i32, ptr @lbs_debug, align 4
  %and50 = and i32 %35, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %cmp51.not = icmp eq i32 %and50, 0
  br i1 %cmp51.not, label %if.end42.if.end5.i_crit_edge, label %do.end56

if.end42.if.end5.i_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5.i

do.end56:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  %conv58 = zext i16 %command to i32
  %call59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.110, i32 noundef %conv58) #11
  br label %if.end5.i

if.end5.i:                                        ; preds = %do.end56, %if.end42.if.end5.i_crit_edge
  %cmdwaitqwoken = getelementptr inbounds %struct.cmd_ctrl_node, ptr %9, i32 0, i32 5
  %36 = ptrtoint ptr %cmdwaitqwoken to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 0, ptr %cmdwaitqwoken, align 4
  %37 = ptrtoint ptr %cmdbuf to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %cmdbuf, align 4
  %size.i = getelementptr inbounds %struct.cmd_header, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %size.i to i32
  call void @__asan_loadN_noabort(i32 %39, i32 2)
  %40 = load i16, ptr %size.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %40)
  %tobool6.not.i = icmp eq i16 %40, 0
  br i1 %tobool6.not.i, label %do.body8.i, label %if.end20.i

do.body8.i:                                       ; preds = %if.end5.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %41 = load i32, ptr @lbs_debug, align 4
  %and9.i = and i32 %41, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %cmp10.not.i = icmp eq i32 %and9.i, 0
  br i1 %cmp10.not.i, label %do.body8.i.lbs_queue_cmd.exit_crit_edge, label %do.end14.i

do.body8.i.lbs_queue_cmd.exit_crit_edge:          ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lbs_queue_cmd.exit

do.end14.i:                                       ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #10
  %call16.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.138) #11
  br label %lbs_queue_cmd.exit

if.end20.i:                                       ; preds = %if.end5.i
  %result.i = getelementptr inbounds %struct.cmd_ctrl_node, ptr %9, i32 0, i32 1
  %42 = ptrtoint ptr %result.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %result.i, align 4
  %43 = ptrtoint ptr %38 to i32
  call void @__asan_loadN_noabort(i32 %43, i32 2)
  %44 = load i16, ptr %38, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 8448, i16 %44)
  %cmp22.i = icmp eq i16 %44, 8448
  br i1 %cmp22.i, label %if.then24.i, label %if.end20.i.if.end35.i_crit_edge

if.end20.i.if.end35.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35.i

if.then24.i:                                      ; preds = %if.end20.i
  %action.i = getelementptr inbounds %struct.cmd_ds_802_11_ps_mode, ptr %38, i32 0, i32 1
  %45 = ptrtoint ptr %action.i to i32
  call void @__asan_loadN_noabort(i32 %45, i32 2)
  %46 = load i16, ptr %action.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 12544, i16 %46)
  %cmp27.i = icmp eq i16 %46, 12544
  br i1 %cmp27.i, label %if.then29.i, label %if.then24.i.if.end35.i_crit_edge

if.then24.i.if.end35.i_crit_edge:                 ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35.i

if.then29.i:                                      ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #10
  %psstate.i = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 26
  %47 = ptrtoint ptr %psstate.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %psstate.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp30.not.i = icmp ne i32 %48, 0
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.then29.i, %if.then24.i.if.end35.i_crit_edge, %if.end20.i.if.end35.i_crit_edge
  %addtail.1.i = phi i1 [ false, %if.end20.i.if.end35.i_crit_edge ], [ false, %if.then24.i.if.end35.i_crit_edge ], [ %cmp30.not.i, %if.then29.i ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 17408, i16 %44)
  %cmp39.i = icmp eq i16 %44, 17408
  %call49.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %driver_lock.i) #8
  %tobool54.not.i = select i1 %cmp39.i, i1 true, i1 %addtail.1.i
  %cmdpendingq57.i = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 63
  br i1 %tobool54.not.i, label %if.else.i, label %if.then55.i

if.then55.i:                                      ; preds = %if.end35.i
  %prev.i.i = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 63, i32 1
  %49 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i84 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %9, ptr noundef %50, ptr noundef %cmdpendingq57.i) #8
  br i1 %call.i.i.i84, label %if.then55.i.if.end58.sink.split.i_crit_edge, label %if.then55.i.if.end58.i_crit_edge

if.then55.i.if.end58.i_crit_edge:                 ; preds = %if.then55.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58.i

if.then55.i.if.end58.sink.split.i_crit_edge:      ; preds = %if.then55.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58.sink.split.i

if.else.i:                                        ; preds = %if.end35.i
  %51 = ptrtoint ptr %cmdpendingq57.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %cmdpendingq57.i, align 4
  %call.i.i90.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %9, ptr noundef %cmdpendingq57.i, ptr noundef %52) #8
  br i1 %call.i.i90.i, label %if.end.i.i92.i, label %if.else.i.if.end58.i_crit_edge

if.else.i.if.end58.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58.i

if.end.i.i92.i:                                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %52, i32 0, i32 1
  br label %if.end58.sink.split.i

if.end58.sink.split.i:                            ; preds = %if.end.i.i92.i, %if.then55.i.if.end58.sink.split.i_crit_edge
  %prev1.i.i.sink.i = phi ptr [ %prev1.i.i.i, %if.end.i.i92.i ], [ %prev.i.i, %if.then55.i.if.end58.sink.split.i_crit_edge ]
  %.sink.i = phi ptr [ %52, %if.end.i.i92.i ], [ %cmdpendingq57.i, %if.then55.i.if.end58.sink.split.i_crit_edge ]
  %cmdpendingq57.sink94.i = phi ptr [ %cmdpendingq57.i, %if.end.i.i92.i ], [ %50, %if.then55.i.if.end58.sink.split.i_crit_edge ]
  %53 = ptrtoint ptr %prev1.i.i.sink.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %9, ptr %prev1.i.i.sink.i, align 4
  %54 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %.sink.i, ptr %9, align 4
  %55 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %cmdpendingq57.sink94.i, ptr %prev.i3.i.i, align 4
  %56 = ptrtoint ptr %cmdpendingq57.sink94.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %9, ptr %cmdpendingq57.sink94.i, align 4
  br label %if.end58.i

if.end58.i:                                       ; preds = %if.end58.sink.split.i, %if.else.i.if.end58.i_crit_edge, %if.then55.i.if.end58.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %driver_lock.i, i32 noundef %call49.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %57 = load i32, ptr @lbs_debug, align 4
  %and61.i = and i32 %57, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61.i)
  %cmp62.not.i = icmp eq i32 %and61.i, 0
  br i1 %cmp62.not.i, label %if.end58.i.lbs_queue_cmd.exit_crit_edge, label %do.end67.i

if.end58.i.lbs_queue_cmd.exit_crit_edge:          ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lbs_queue_cmd.exit

do.end67.i:                                       ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #10
  %58 = ptrtoint ptr %cmdbuf to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %cmdbuf, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_loadN_noabort(i32 %60, i32 2)
  %61 = load i16, ptr %59, align 1
  %62 = tail call i16 @llvm.bswap.i16(i16 %61) #8
  %conv71.i = zext i16 %62 to i32
  %call72.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.141, i32 noundef %conv71.i) #11
  br label %lbs_queue_cmd.exit

lbs_queue_cmd.exit:                               ; preds = %do.end67.i, %if.end58.i.lbs_queue_cmd.exit_crit_edge, %do.end14.i, %do.body8.i.lbs_queue_cmd.exit_crit_edge
  %waitq63 = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 71
  tail call void @__wake_up(ptr noundef %waitq63, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  br label %done

done:                                             ; preds = %lbs_queue_cmd.exit, %do.end40, %do.end17, %do.body11.done_crit_edge, %do.end, %do.body.done_crit_edge
  %cmdnode.0 = phi ptr [ inttoptr (i32 -105 to ptr), %do.end40 ], [ %9, %lbs_queue_cmd.exit ], [ inttoptr (i32 -2 to ptr), %do.end ], [ inttoptr (i32 -2 to ptr), %do.body.done_crit_edge ], [ inttoptr (i32 -16 to ptr), %do.end17 ], [ inttoptr (i32 -16 to ptr), %do.body11.done_crit_edge ]
  ret ptr %cmdnode.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 134)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 134)
  ret void
}

attributes #0 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !14, !16, !18, !19, !20, !21, !23, !24, !25, !27, !28, !29, !31, !32, !33, !34, !36, !37, !38, !39, !41, !43, !44, !45, !47, !49, !51, !53, !55, !57, !58, !59, !60, !62, !63, !64, !66, !67, !68, !69, !71, !72, !73, !74, !76, !77, !78, !79, !81, !82, !83, !84, !86, !87, !88, !89, !91, !92, !93, !95, !96, !98, !99, !100, !102, !104, !105, !106, !107, !108, !109, !111, !112, !113, !114, !116, !117, !118, !120, !121, !123, !124, !125, !126, !128, !130, !131, !132, !133, !135, !136, !137, !139, !140, !141, !143, !144, !145, !147, !148, !149, !151, !152, !153, !155, !156, !157, !159, !160, !161, !163, !164, !165, !166, !168, !169, !170, !172, !173, !174, !176, !177, !178, !180, !181, !182, !184, !185, !186, !187, !189, !190, !191, !193, !194, !195, !197, !198, !199, !201, !203, !205, !207, !208, !209, !210, !212, !213, !214, !215, !216, !218, !219, !220, !222, !223, !224, !226, !227, !229, !230, !231, !232, !234, !236, !238, !240, !242, !243, !244, !245, !247, !248, !249, !250, !252, !253, !254, !256, !257}
!llvm.module.flags = !{!258, !259, !260, !261, !262, !263, !264, !265}
!llvm.ident = !{!266}

!0 = !{ptr @__ksymtab_lbs_cmd_copyback, !1, !"__ksymtab_lbs_cmd_copyback", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/marvell/libertas/cmd.c", i32 41, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/marvell/libertas/cmd.c", i32 114, i32 25}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/marvell/libertas/cmd.c", i32 121, i32 2}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @lbs_update_hw_spec._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @lbs_update_hw_spec._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/marvell/libertas/cmd.c", i32 146, i32 8}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/marvell/libertas/cmd.c", i32 213, i32 26}
!14 = !{ptr @__ksymtab_lbs_host_sleep_cfg, !15, !"__ksymtab_lbs_host_sleep_cfg", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/marvell/libertas/cmd.c", i32 218, i32 1}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/marvell/libertas/cmd.c", i32 240, i32 3}
!18 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @lbs_set_ps_mode._entry, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @lbs_set_ps_mode._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/marvell/libertas/cmd.c", i32 243, i32 3}
!23 = !{ptr @lbs_set_ps_mode._entry.8, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @lbs_set_ps_mode._entry_ptr.10, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/marvell/libertas/cmd.c", i32 248, i32 3}
!27 = !{ptr @lbs_set_ps_mode._entry.11, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @lbs_set_ps_mode._entry_ptr.13, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/wireless/marvell/libertas/cmd.c", i32 284, i32 3}
!31 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @lbs_cmd_802_11_sleep_params._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @lbs_cmd_802_11_sleep_params._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/marvell/libertas/cmd.c", i32 322, i32 4}
!36 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @lbs_set_deep_sleep._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @lbs_set_deep_sleep._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/wireless/marvell/libertas/cmd.c", i32 330, i32 26}
!41 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/wireless/marvell/libertas/cmd.c", i32 334, i32 4}
!43 = !{ptr @lbs_set_deep_sleep._entry.19, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @lbs_set_deep_sleep._entry_ptr.21, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/wireless/marvell/libertas/cmd.c", i32 341, i32 10}
!47 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/wireless/marvell/libertas/cmd.c", i32 372, i32 10}
!49 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/wireless/marvell/libertas/cmd.c", i32 384, i32 11}
!51 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/wireless/marvell/libertas/cmd.c", i32 393, i32 9}
!53 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/wireless/marvell/libertas/cmd.c", i32 397, i32 26}
!55 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/wireless/marvell/libertas/cmd.c", i32 441, i32 3}
!57 = !{ptr @.str.28, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @lbs_set_snmp_mib._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @lbs_set_snmp_mib._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/marvell/libertas/cmd.c", i32 446, i32 2}
!62 = !{ptr @lbs_set_snmp_mib._entry.29, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @lbs_set_snmp_mib._entry_ptr.31, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.32, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/marvell/libertas/cmd.c", i32 486, i32 3}
!66 = !{ptr @.str.33, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @lbs_get_snmp_mib._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @lbs_get_snmp_mib._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.34, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/wireless/marvell/libertas/cmd.c", i32 545, i32 2}
!71 = !{ptr @.str.35, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @lbs_set_tx_power._entry, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @lbs_set_tx_power._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.36, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/wireless/marvell/libertas/cmd.c", i32 572, i32 2}
!76 = !{ptr @.str.37, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @lbs_set_monitor_mode._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @lbs_set_monitor_mode._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.38, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/wireless/marvell/libertas/cmd.c", i32 650, i32 2}
!81 = !{ptr @.str.39, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @lbs_set_channel._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @lbs_set_channel._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.40, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/wireless/marvell/libertas/cmd.c", i32 718, i32 2}
!86 = !{ptr @.str.41, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @lbs_set_11d_domain_info._entry, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @lbs_set_11d_domain_info._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.43, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/wireless/marvell/libertas/cmd.c", i32 764, i32 5}
!91 = !{ptr @lbs_set_11d_domain_info._entry.42, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @lbs_set_11d_domain_info._entry_ptr.44, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @lbs_set_11d_domain_info._entry.45, !94, !"_entry", i1 false, i1 false}
!94 = !{!"../drivers/net/wireless/marvell/libertas/cmd.c", i32 778, i32 4}
!95 = !{ptr @lbs_set_11d_domain_info._entry_ptr.46, !94, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.48, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/wireless/marvell/libertas/cmd.c", i32 788, i32 2}
!98 = !{ptr @lbs_set_11d_domain_info._entry.47, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @lbs_set_11d_domain_info._entry_ptr.49, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.50, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/wireless/marvell/libertas/cmd.c", i32 795, i32 27}
!102 = !{ptr @.str.51, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/wireless/marvell/libertas/cmd.c", i32 1070, i32 2}
!104 = !{ptr @.str.52, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @lbs_set_radio._entry, !103, !"_entry", i1 false, i1 false}
!106 = !{ptr @lbs_set_radio._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.53, !103, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @.str.54, !103, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @.str.55, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/wireless/marvell/libertas/cmd.c", i32 1123, i32 3}
!111 = !{ptr @.str.56, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @lbs_allocate_cmd_buffer._entry, !110, !"_entry", i1 false, i1 false}
!113 = !{ptr @lbs_allocate_cmd_buffer._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.58, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/wireless/marvell/libertas/cmd.c", i32 1133, i32 4}
!116 = !{ptr @lbs_allocate_cmd_buffer._entry.57, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @lbs_allocate_cmd_buffer._entry_ptr.59, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @lbs_allocate_cmd_buffer.__key, !119, !"__key", i1 false, i1 false}
!119 = !{!"../drivers/net/wireless/marvell/libertas/cmd.c", i32 1140, i32 3}
!120 = !{ptr @.str.60, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @.str.61, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/wireless/marvell/libertas/cmd.c", i32 1163, i32 3}
!123 = !{ptr @.str.62, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @lbs_free_cmd_buffer._entry, !122, !"_entry", i1 false, i1 false}
!125 = !{ptr @lbs_free_cmd_buffer._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.63, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/wireless/marvell/libertas/cmd.c", i32 1242, i32 9}
!128 = !{ptr @.str.64, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/wireless/marvell/libertas/cmd.c", i32 1261, i32 5}
!130 = !{ptr @.str.65, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @lbs_execute_next_command._entry, !129, !"_entry", i1 false, i1 false}
!132 = !{ptr @lbs_execute_next_command._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.67, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/net/wireless/marvell/libertas/cmd.c", i32 1268, i32 4}
!135 = !{ptr @lbs_execute_next_command._entry.66, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @lbs_execute_next_command._entry_ptr.68, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.70, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/net/wireless/marvell/libertas/cmd.c", i32 1307, i32 5}
!139 = !{ptr @lbs_execute_next_command._entry.69, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @lbs_execute_next_command._entry_ptr.71, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.73, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/net/wireless/marvell/libertas/cmd.c", i32 1312, i32 6}
!143 = !{ptr @lbs_execute_next_command._entry.72, !142, !"_entry", i1 false, i1 false}
!144 = !{ptr @lbs_execute_next_command._entry_ptr.74, !142, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.76, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/net/wireless/marvell/libertas/cmd.c", i32 1322, i32 6}
!147 = !{ptr @lbs_execute_next_command._entry.75, !146, !"_entry", i1 false, i1 false}
!148 = !{ptr @lbs_execute_next_command._entry_ptr.77, !146, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.79, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/net/wireless/marvell/libertas/cmd.c", i32 1331, i32 5}
!151 = !{ptr @lbs_execute_next_command._entry.78, !150, !"_entry", i1 false, i1 false}
!152 = !{ptr @lbs_execute_next_command._entry_ptr.80, !150, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.82, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/net/wireless/marvell/libertas/cmd.c", i32 1338, i32 3}
!155 = !{ptr @lbs_execute_next_command._entry.81, !154, !"_entry", i1 false, i1 false}
!156 = !{ptr @lbs_execute_next_command._entry_ptr.83, !154, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.85, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/net/wireless/marvell/libertas/cmd.c", i32 1349, i32 4}
!159 = !{ptr @lbs_execute_next_command._entry.84, !158, !"_entry", i1 false, i1 false}
!160 = !{ptr @lbs_execute_next_command._entry_ptr.86, !158, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.87, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/net/wireless/marvell/libertas/cmd.c", i32 1409, i32 3}
!163 = !{ptr @.str.88, !162, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @lbs_ps_confirm_sleep._entry, !162, !"_entry", i1 false, i1 false}
!165 = !{ptr @lbs_ps_confirm_sleep._entry_ptr, !162, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.90, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/net/wireless/marvell/libertas/cmd.c", i32 1415, i32 3}
!168 = !{ptr @lbs_ps_confirm_sleep._entry.89, !167, !"_entry", i1 false, i1 false}
!169 = !{ptr @lbs_ps_confirm_sleep._entry_ptr.91, !167, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.93, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/net/wireless/marvell/libertas/cmd.c", i32 1421, i32 3}
!172 = !{ptr @lbs_ps_confirm_sleep._entry.92, !171, !"_entry", i1 false, i1 false}
!173 = !{ptr @lbs_ps_confirm_sleep._entry_ptr.94, !171, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.96, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/net/wireless/marvell/libertas/cmd.c", i32 1426, i32 3}
!176 = !{ptr @lbs_ps_confirm_sleep._entry.95, !175, !"_entry", i1 false, i1 false}
!177 = !{ptr @lbs_ps_confirm_sleep._entry_ptr.97, !175, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.99, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/net/wireless/marvell/libertas/cmd.c", i32 1429, i32 3}
!180 = !{ptr @lbs_ps_confirm_sleep._entry.98, !179, !"_entry", i1 false, i1 false}
!181 = !{ptr @lbs_ps_confirm_sleep._entry_ptr.100, !179, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.101, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/net/wireless/marvell/libertas/cmd.c", i32 1506, i32 3}
!184 = !{ptr @.str.102, !183, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @__lbs_cmd_async._entry, !183, !"_entry", i1 false, i1 false}
!186 = !{ptr @__lbs_cmd_async._entry_ptr, !183, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @.str.104, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/net/wireless/marvell/libertas/cmd.c", i32 1516, i32 4}
!189 = !{ptr @__lbs_cmd_async._entry.103, !188, !"_entry", i1 false, i1 false}
!190 = !{ptr @__lbs_cmd_async._entry_ptr.105, !188, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @.str.107, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/net/wireless/marvell/libertas/cmd.c", i32 1524, i32 3}
!193 = !{ptr @__lbs_cmd_async._entry.106, !192, !"_entry", i1 false, i1 false}
!194 = !{ptr @__lbs_cmd_async._entry_ptr.108, !192, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @.str.110, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/net/wireless/marvell/libertas/cmd.c", i32 1543, i32 2}
!197 = !{ptr @__lbs_cmd_async._entry.109, !196, !"_entry", i1 false, i1 false}
!198 = !{ptr @__lbs_cmd_async._entry_ptr.111, !196, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @.str.112, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/net/wireless/marvell/libertas/cmd.c", i32 1588, i32 26}
!201 = !{ptr @__ksymtab___lbs_cmd, !202, !"__ksymtab___lbs_cmd", i1 false, i1 false}
!202 = !{!"../drivers/net/wireless/marvell/libertas/cmd.c", i32 1597, i32 1}
!203 = !{ptr @.str.113, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/net/wireless/marvell/libertas/cmd.c", i32 308, i32 26}
!205 = !{ptr @.str.114, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/net/wireless/marvell/libertas/cmd.c", i32 604, i32 2}
!207 = !{ptr @.str.115, !206, !"<string literal>", i1 false, i1 false}
!208 = !{ptr @lbs_get_channel._entry, !206, !"_entry", i1 false, i1 false}
!209 = !{ptr @lbs_get_channel._entry_ptr, !206, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @.str.116, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/net/wireless/marvell/libertas/defs.h", i32 96, i32 6}
!212 = !{ptr @.str.117, !211, !"<string literal>", i1 false, i1 false}
!213 = !{ptr @.str.118, !211, !"<string literal>", i1 false, i1 false}
!214 = !{ptr @lbs_deb_hex._entry, !211, !"_entry", i1 false, i1 false}
!215 = !{ptr @lbs_deb_hex._entry_ptr, !211, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @.str.120, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/net/wireless/marvell/libertas/defs.h", i32 97, i32 5}
!218 = !{ptr @lbs_deb_hex._entry.119, !217, !"_entry", i1 false, i1 false}
!219 = !{ptr @lbs_deb_hex._entry_ptr.121, !217, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @.str.123, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/net/wireless/marvell/libertas/defs.h", i32 99, i32 4}
!222 = !{ptr @lbs_deb_hex._entry.122, !221, !"_entry", i1 false, i1 false}
!223 = !{ptr @lbs_deb_hex._entry_ptr.124, !221, !"_entry_ptr", i1 false, i1 false}
!224 = !{ptr @lbs_deb_hex._entry.125, !225, !"_entry", i1 false, i1 false}
!225 = !{!"../drivers/net/wireless/marvell/libertas/defs.h", i32 102, i32 3}
!226 = !{ptr @lbs_deb_hex._entry_ptr.126, !225, !"_entry_ptr", i1 false, i1 false}
!227 = !{ptr @.str.127, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/net/wireless/marvell/libertas/cmd.c", i32 956, i32 2}
!229 = !{ptr @.str.128, !228, !"<string literal>", i1 false, i1 false}
!230 = !{ptr @lbs_submit_command._entry, !228, !"_entry", i1 false, i1 false}
!231 = !{ptr @lbs_submit_command._entry_ptr, !228, !"_entry_ptr", i1 false, i1 false}
!232 = !{ptr @.str.129, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/net/wireless/marvell/libertas/cmd.c", i32 958, i32 27}
!234 = !{ptr @.str.130, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/net/wireless/marvell/libertas/cmd.c", i32 963, i32 26}
!236 = !{ptr @.str.131, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/net/wireless/marvell/libertas/cmd.c", i32 1366, i32 28}
!238 = !{ptr @.str.132, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/net/wireless/marvell/libertas/cmd.c", i32 1372, i32 27}
!240 = !{ptr @.str.133, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/net/wireless/marvell/libertas/cmd.c", i32 1211, i32 3}
!242 = !{ptr @.str.134, !241, !"<string literal>", i1 false, i1 false}
!243 = !{ptr @lbs_get_free_cmd_node._entry, !241, !"_entry", i1 false, i1 false}
!244 = !{ptr @lbs_get_free_cmd_node._entry_ptr, !241, !"_entry_ptr", i1 false, i1 false}
!245 = !{ptr @.str.135, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/net/wireless/marvell/libertas/cmd.c", i32 896, i32 3}
!247 = !{ptr @.str.136, !246, !"<string literal>", i1 false, i1 false}
!248 = !{ptr @lbs_queue_cmd._entry, !246, !"_entry", i1 false, i1 false}
!249 = !{ptr @lbs_queue_cmd._entry_ptr, !246, !"_entry_ptr", i1 false, i1 false}
!250 = !{ptr @.str.138, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/net/wireless/marvell/libertas/cmd.c", i32 900, i32 3}
!252 = !{ptr @lbs_queue_cmd._entry.137, !251, !"_entry", i1 false, i1 false}
!253 = !{ptr @lbs_queue_cmd._entry_ptr.139, !251, !"_entry_ptr", i1 false, i1 false}
!254 = !{ptr @.str.141, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/net/wireless/marvell/libertas/cmd.c", i32 927, i32 2}
!256 = !{ptr @lbs_queue_cmd._entry.140, !255, !"_entry", i1 false, i1 false}
!257 = !{ptr @lbs_queue_cmd._entry_ptr.142, !255, !"_entry_ptr", i1 false, i1 false}
!258 = !{i32 1, !"wchar_size", i32 2}
!259 = !{i32 1, !"min_enum_size", i32 4}
!260 = !{i32 8, !"branch-target-enforcement", i32 0}
!261 = !{i32 8, !"sign-return-address", i32 0}
!262 = !{i32 8, !"sign-return-address-all", i32 0}
!263 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!264 = !{i32 7, !"uwtable", i32 1}
!265 = !{i32 7, !"frame-pointer", i32 2}
!266 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!267 = !{i8 0, i8 2}
!268 = !{!"branch_weights", i32 1, i32 2000}
!269 = !{i64 2157161589, i64 2157162097, i64 2157161626, i64 2157161682, i64 2157161716, i64 2157161740, i64 2157161781, i64 2157161802, i64 2157161830, i64 2157161864}
!270 = !{i64 2157165056, i64 2157165564, i64 2157165093, i64 2157165149, i64 2157165183, i64 2157165207, i64 2157165248, i64 2157165269, i64 2157165297, i64 2157165331}
!271 = !{i64 2157190594, i64 2157191102, i64 2157190631, i64 2157190687, i64 2157190721, i64 2157190745, i64 2157190786, i64 2157190807, i64 2157190835, i64 2157190869}
!272 = !{i64 2157192268, i64 2157192776, i64 2157192305, i64 2157192361, i64 2157192395, i64 2157192419, i64 2157192460, i64 2157192481, i64 2157192509, i64 2157192543}
!273 = distinct !{!273, !274}
!274 = !{!"llvm.loop.peeled.count", i32 1}
!275 = !{i64 2157204974, i64 2157205482, i64 2157205011, i64 2157205067, i64 2157205101, i64 2157205125, i64 2157205166, i64 2157205187, i64 2157205215, i64 2157205249}
!276 = distinct !{!276, !274}
!277 = distinct !{!277, !274}
