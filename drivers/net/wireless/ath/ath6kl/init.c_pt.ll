; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/ath6kl/init.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/ath6kl/init.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+ath6kl_stop_txrx\22, \22a\22\09"
module asm "\09.weak\09__crc_ath6kl_stop_txrx\09\09\09\09"
module asm "\09.long\09__crc_ath6kl_stop_txrx\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ath6kl_stop_txrx:\09\09\09\09\09"
module asm "\09.asciz \09\22ath6kl_stop_txrx\22\09\09\09\09\09"
module asm "__kstrtabns_ath6kl_stop_txrx:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.ath6kl_hw = type { i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i32, i32, %struct.ath6kl_hw_fw, ptr, ptr }
%struct.ath6kl_hw_fw = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.fw_capa_str_map = type { i32, ptr }
%struct.sk_buff = type { %union.anon, %union.anon.107, %union.anon.108, [48 x i8], %union.anon.109, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.111, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.107 = type { ptr }
%union.anon.108 = type { i64 }
%union.anon.109 = type { %struct.anon.110 }
%struct.anon.110 = type { i32, ptr }
%union.anon.111 = type { %struct.anon.112 }
%struct.anon.112 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.113, i32, i32, i32, i16, i16, %union.anon.115, i32, %union.anon.116, %union.anon.117, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.113 = type { i32 }
%union.anon.115 = type { i32 }
%union.anon.116 = type { i32 }
%union.anon.117 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.ath6kl_vif = type { %struct.list_head, %struct.wireless_dev, ptr, ptr, %struct.spinlock, i8, i32, i32, [32 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, [6 x i8], [6 x i8], i16, i16, [4 x %struct.ath6kl_wep_key], [4 x %struct.ath6kl_key], ptr, [6 x %struct.ath6kl_htcap], %struct.timer_list, %struct.timer_list, ptr, i32, i32, i32, i32, i32, i8, i16, i16, i16, i32, i16, i8, %struct.target_stats, %struct.wmi_connect_cmd, i16, %struct.list_head }
%struct.wireless_dev = type { ptr, i32, %struct.list_head, ptr, i32, %struct.list_head, i8, %struct.mutex, i8, i8, i8, i8, [6 x i8], [32 x i8], i8, i8, i8, ptr, ptr, i32, i32, %struct.work_struct, [6 x i8], %struct.list_head, %struct.spinlock, ptr, %struct.cfg80211_chan_def, %struct.cfg80211_chan_def, i8, i8, i8, i32, i32, i32, i32, i8, i8, i32, i32, %struct.anon.104, ptr, %struct.list_head, %struct.spinlock, %struct.work_struct, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.7 }
%union.anon.7 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.anon.104 = type { %struct.cfg80211_ibss_params, %struct.cfg80211_connect_params, ptr, ptr, i32, [6 x i8], [6 x i8], [32 x i8], i8, i8, i8 }
%struct.cfg80211_ibss_params = type { ptr, ptr, %struct.cfg80211_chan_def, ptr, i8, i8, i16, i32, i8, i8, i8, i8, i8, [6 x i32], %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, ptr, i32 }
%struct.ieee80211_ht_cap = type <{ i16, i8, %struct.ieee80211_mcs_info, i16, i32, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.cfg80211_connect_params = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i32, %struct.cfg80211_crypto_settings, ptr, i8, i8, i32, i32, %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, %struct.ieee80211_vht_cap, %struct.ieee80211_vht_cap, i8, %struct.cfg80211_bss_selection, ptr, ptr, i32, ptr, i32, i16, ptr, i32, i8, %struct.ieee80211_edmg }
%struct.cfg80211_crypto_settings = type { i32, i32, i32, [5 x i32], i32, [2 x i32], i8, i16, i8, i8, i8, ptr, i32, ptr, ptr, i8, i32 }
%struct.ieee80211_vht_cap = type { i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.cfg80211_bss_selection = type { i32, %union.anon.105 }
%union.anon.105 = type { %struct.cfg80211_bss_select_adjust }
%struct.cfg80211_bss_select_adjust = type { i32, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
%struct.ath6kl_wep_key = type { i8, i8, [64 x i8] }
%struct.ath6kl_key = type { [32 x i8], i8, [8 x i8], i8, i32 }
%struct.ath6kl_htcap = type { i8, i8, i16 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.target_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, [4 x i64], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i32, i32 }
%struct.wmi_connect_cmd = type <{ i8, i8, i8, i8, i8, i8, i8, i8, [32 x i8], i16, [6 x i8], i32, i8 }>
%struct.list_head = type { ptr, ptr }
%struct.ath6kl = type <{ ptr, ptr, i32, i32, %struct.ath6kl_bmi, ptr, ptr, ptr, [9 x i32], i32, ptr, i32, ptr, %struct.list_head, %struct.spinlock, i8, [3 x i8], i32, i8, i8, [2 x i8], %struct.spinlock, %struct.semaphore, i8, [3 x i8], %struct.ath6kl_version, i32, i8, [15 x %struct.ath6kl_node_mapping], i8, i8, i8, i8, [3 x i8], ptr, i32, [4 x i32], [4 x i8], [4 x i8], i8, [9 x i8], [2 x i8], i32, %struct.ath6kl_htc_credit_info, i32, i32, i8, [3 x i8], [10 x %struct.ath6kl_sta], i8, [3 x i8], %struct.ath6kl_req_key, %struct.sk_buff_head, i32, i16, [2 x i8], %struct.spinlock, i8, %struct.wmi_ap_mode_stat, [3 x i8], %struct.list_head, i8, [3 x i8], i32, [6 x i8], [2 x i8], %struct.anon.131, %struct.ath6kl_hw, i16, i16, i16, [2 x i8], %struct.wait_queue_head, %struct.ath6kl_mbox_info, [198 x %struct.ath6kl_cookie], i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, i32, [1 x i32], ptr, ptr, i8, i8, [2 x i8], %struct.ath6kl_fw_recovery, %struct.anon.132 }>
%struct.ath6kl_bmi = type { i32, i8, ptr, i32, i32 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.ath6kl_version = type { i32, i32, i32 }
%struct.ath6kl_node_mapping = type { [6 x i8], i8, i8 }
%struct.ath6kl_htc_credit_info = type { i32, i32, %struct.list_head }
%struct.ath6kl_sta = type { i16, [6 x i8], i8, i8, i8, i8, [256 x i8], %struct.sk_buff_head, %struct.spinlock, %struct.list_head, i32, i8, %struct.sk_buff_head, ptr }
%struct.ath6kl_req_key = type { i8, i8, i32, [32 x i8], i8 }
%struct.sk_buff_head = type { %union.anon.51, i32, %struct.spinlock }
%union.anon.51 = type { %struct.anon.52 }
%struct.anon.52 = type { ptr, ptr }
%struct.wmi_ap_mode_stat = type { i32, [11 x %struct.wmi_per_sta_stat] }
%struct.wmi_per_sta_stat = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.131 = type { ptr, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.ath6kl_mbox_info = type { i32, i32, i32, i32, i32, i32 }
%struct.ath6kl_cookie = type { ptr, i32, %struct.htc_packet, ptr }
%struct.htc_packet = type { %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, %union.anon.128, ptr, ptr, ptr }
%union.anon.128 = type { %struct.htc_tx_packet_info }
%struct.htc_tx_packet_info = type { i16, i32, i8, i32 }
%struct.ath6kl_fw_recovery = type { %struct.work_struct, i32, i32, %struct.timer_list, i32, i8, i8, i8 }
%struct.anon.132 = type { %struct.sk_buff_head, %struct.completion, i8, i32, i32, i32, i32, %struct.anon.133, ptr, i32, i8, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.anon.133 = type { i32 }
%struct.firmware = type { i32, ptr, ptr }
%struct.ath6kl_fw_ie = type { i32, i32, [0 x i8] }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.103, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.possible_net_t = type { ptr }
%struct.anon.103 = type { i64, i64, i8 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.ath6kl_hif_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.htc_target = type { [9 x %struct.htc_endpoint], %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, ptr, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32], %struct.anon.130 }
%struct.htc_endpoint = type { i32, i16, %struct.list_head, %struct.list_head, %struct.htc_endpoint_credit_dist, %struct.htc_ep_callbacks, i32, i32, i32, i32, ptr, i8, i32, %struct.htc_endpoint_stats, i16, %struct.anon.129 }
%struct.htc_endpoint_credit_dist = type { %struct.list_head, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.htc_ep_callbacks = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.htc_endpoint_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.129 = type { i8, i8, %struct.list_head, i8 }
%struct.anon.130 = type { ptr, [256 x i8], i32, i8, [9 x %struct.htc_pipe_txcredit_alloc] }
%struct.htc_pipe_txcredit_alloc = type { i16, i8 }
%struct.ath6kl_device = type { %struct.spinlock, %struct.ath6kl_irq_proc_registers, %struct.ath6kl_irq_enable_reg, ptr, ptr }
%struct.ath6kl_irq_proc_registers = type { i8, i8, i8, i8, i8, i8, i8, i8, [2 x i32], [2 x i32] }
%struct.ath6kl_irq_enable_reg = type { i8, i8, i8, i8 }
%struct.ath6kl_htc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.htc_service_connect_req = type { i16, i16, %struct.htc_ep_callbacks, i32, i32, i32 }
%struct.host_app_area = type { i32 }
%struct.htc_service_connect_resp = type { i8, i8, i32, i32, i8 }

@.str = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"bmi_write_memory for uart debug failed\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"bmi_write_memory for htc version failed\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"bmi_read_memory for setting fwmode failed\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"bmi_write_memory for setting fwmode failed\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"firmware mode set\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"bmi_write_memory for hi_board_ext_data failed\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"bmi_write_memory for hi_end_ram_reserve_sz failed\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fw-5.bin\00", [23 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fw-4.bin\00", [23 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fw-3.bin\00", [23 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fw-2.bin\00", [23 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"using fw api %d\0A\00", [47 x i8] zeroinitializer }, align 32
@hw_list = internal constant { [7 x %struct.ath6kl_hw], [160 x i8] } { [7 x %struct.ath6kl_hw] [%struct.ath6kl_hw { i32 805307268, ptr @.str.64, i32 5761156, i32 5517696, i32 9718784, i32 5760256, i32 6912, i32 0, i32 26000000, i32 8, i32 0, i32 0, i8 0, i8 0, i32 0, i32 8, %struct.ath6kl_hw_fw { ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr null, ptr null }, ptr @.str.70, ptr @.str.71 }, %struct.ath6kl_hw { i32 805307778, ptr @.str.72, i32 5767028, i32 4660, i32 0, i32 5514032, i32 512, i32 0, i32 26000000, i32 8, i32 0, i32 5762932, i8 0, i8 0, i32 0, i32 8, %struct.ath6kl_hw_fw { ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.68, ptr @.str.69, ptr @.str.76, ptr @.str.77 }, ptr @.str.78, ptr @.str.79 }, %struct.ath6kl_hw { i32 805307939, ptr @.str.80, i32 5761156, i32 4660, i32 0, i32 4419584, i32 19456, i32 4405504, i32 26000000, i32 11, i32 0, i32 0, i8 0, i8 0, i32 0, i32 0, %struct.ath6kl_hw_fw { ptr @.str.81, ptr null, ptr @.str.82, ptr null, ptr null, ptr null, ptr null }, ptr @.str.83, ptr @.str.84 }, %struct.ath6kl_hw { i32 805306369, ptr @.str.85, i32 5761156, i32 4660, i32 0, i32 4419584, i32 11264, i32 4445184, i32 40000000, i32 11, i32 0, i32 0, i8 0, i8 0, i32 0, i32 0, %struct.ath6kl_hw_fw { ptr @.str.86, ptr null, ptr @.str.82, ptr null, ptr null, ptr null, ptr null }, ptr @.str.87, ptr @.str.88 }, %struct.ath6kl_hw { i32 805308392, ptr @.str.89, i32 4419276, i32 4660, i32 0, i32 4419584, i32 9216, i32 4414464, i32 40000000, i32 11, i32 0, i32 0, i8 0, i8 0, i32 0, i32 0, %struct.ath6kl_hw_fw { ptr @.str.90, ptr null, ptr @.str.82, ptr null, ptr null, ptr null, ptr null }, ptr @.str.91, ptr @.str.91 }, %struct.ath6kl_hw { i32 835192970, ptr @.str.92, i32 4421728, i32 4660, i32 0, i32 4419584, i32 7168, i32 4416512, i32 0, i32 11, i32 0, i32 0, i8 0, i8 0, i32 0, i32 0, %struct.ath6kl_hw_fw { ptr @.str.93, ptr null, ptr @.str.82, ptr @.str.76, ptr null, ptr @.str.76, ptr @.str.77 }, ptr @.str.94, ptr @.str.94 }, %struct.ath6kl_hw { i32 835193336, ptr @.str.95, i32 0, i32 4660, i32 0, i32 0, i32 7168, i32 4416512, i32 0, i32 11, i32 0, i32 0, i8 0, i8 0, i32 0, i32 0, %struct.ath6kl_hw_fw { ptr @.str.96, ptr null, ptr @.str.82, ptr @.str.76, ptr null, ptr @.str.76, ptr @.str.77 }, ptr @.str.97, ptr @.str.97 }], [160 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Unsupported hardware version: 0x%x\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"target_ver 0x%x target_type 0x%x dataset_patch 0x%x app_load_addr 0x%x\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"app_start_override_addr 0x%x board_ext_data_addr 0x%x reserved_ram_size 0x%x\00", [51 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"refclk_hz %d uarttx_pin %d\00", [37 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Failed to restart during fw error recovery\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"down_interruptible failed\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s: shut down htc\0A\00", [45 x i8] zeroinitializer }, align 32
@__func__.ath6kl_stop_txrx = private unnamed_addr constant [17 x i8] c"ath6kl_stop_txrx\00", align 1
@__kstrtab_ath6kl_stop_txrx = external dso_local constant [0 x i8], align 1
@__kstrtabns_ath6kl_stop_txrx = external dso_local constant [0 x i8], align 1
@__ksymtab_ath6kl_stop_txrx = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ath6kl_stop_txrx to i32), ptr @__kstrtab_ath6kl_stop_txrx, ptr @__kstrtabns_ath6kl_stop_txrx }, section "___ksymtab+ath6kl_stop_txrx", align 4
@.str.20 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"bmi_write_memory for IO block size failed\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"block size set: %d (target addr:0x%X)\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"bmi_write_memory for yield limit failed\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/net/wireless/ath/ath6kl/init.c\00", [57 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"Failed to get board file %s (%d), trying to find default board file.\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to get default board file %s: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"WARNING! No proper board file was not found, instead using a default board file.\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"Most likely your hardware won't work as specified. Install correct board file!\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"atheros,board-id\00", [47 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"atheros,ath6kl\00", [17 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"No \22%s\22 property on %pOFn node.\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s/bdata.%s.bin\00", [16 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to get DT board file %s: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"testmode %d\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"testmode 2 not supported\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s/%s\00", [26 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"testmode 1 not supported\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Failed to get testmode %d firmware file %s: %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed request firmware, rv: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Magic length is invalid, len: %zd  magic_len: %zd\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"QCA-ATH6KL\00", [21 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Magic is invalid, magic_len: %zd\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ie-id: %d  len: %zd (0x%zx)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"IE len is invalid, len: %zd  ie_len: %zd  ie-id: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"found fw version %s\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"found otp image ie (%zd B)\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"fw_otp cannot be allocated\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"found fw image ie (%zd B)\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"fw storage cannot be allocated, len: %zd\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"found patch image ie (%zd B)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"fw_patch storage cannot be allocated, len: %zd\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"found reserved ram size ie %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"found firmware capabilities ie (%zd B)\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"capabilities\00", [19 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.55 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"found patch address ie 0x%x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"found board address ie 0x%x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"found vif max ie %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Unknown fw ie: %u\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"no OTP file configured for this hw\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to get OTP file %s: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to get firmware file %s: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to get patch file %s: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to get testscript file %s: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ar6003 hw 2.0\00", [18 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ath6k/AR6003/hw2.0\00", [45 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"otp.bin.z77\00", [20 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"athwlan.bin.z77\00", [16 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"athtcmd_ram.bin\00", [16 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"data.patch.bin\00", [17 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ath6k/AR6003/hw2.0/bdata.bin\00", [35 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"ath6k/AR6003/hw2.0/bdata.SD31.bin\00", [62 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ar6003 hw 2.1.1\00", [16 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ath6k/AR6003/hw2.1.1\00", [43 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"otp.bin\00", [24 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"athwlan.bin\00", [20 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"utf.bin\00", [24 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nullTestFlow.bin\00", [47 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ath6k/AR6003/hw2.1.1/bdata.bin\00", [33 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"ath6k/AR6003/hw2.1.1/bdata.SD31.bin\00", [60 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ar6004 hw 1.0\00", [18 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ath6k/AR6004/hw1.0\00", [45 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fw.ram.bin\00", [21 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ath6k/AR6004/hw1.0/bdata.bin\00", [35 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"ath6k/AR6004/hw1.0/bdata.DB132.bin\00", [61 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ar6004 hw 1.1\00", [18 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ath6k/AR6004/hw1.1\00", [45 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ath6k/AR6004/hw1.1/bdata.bin\00", [35 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"ath6k/AR6004/hw1.1/bdata.DB132.bin\00", [61 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ar6004 hw 1.2\00", [18 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ath6k/AR6004/hw1.2\00", [45 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ath6k/AR6004/hw1.2/bdata.bin\00", [35 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ar6004 hw 1.3\00", [18 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ath6k/AR6004/hw1.3\00", [45 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ath6k/AR6004/hw1.3/bdata.bin\00", [35 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ar6004 hw 3.0\00", [18 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ath6k/AR6004/hw3.0\00", [45 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ath6k/AR6004/hw3.0/bdata.bin\00", [35 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hw start\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"htc wait target timed out, resetting device\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"htc wait target failed: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Endpoint service initialization failed: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"wmi is not ready or wait was interrupted: %ld\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"firmware booted\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s %s fw %s api %d%s\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c" testmode\00", [22 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"firmware supports: %s\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"abi version mismatch: host(0x%x), target(0x%x)\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s: wmi is ready\0A\00", [46 x i8] zeroinitializer }, align 32
@__func__.__ath6kl_init_hw_start = private unnamed_addr constant [23 x i8] c"__ath6kl_init_hw_start\00", align 1
@.str.109 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"unable to set the host app area\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hif power on\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"old options: %d, old sleep: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"temporary war to avoid sdio crc error\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Failed to get board file target address.\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Failed to get extended board file target address.\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"writing extended board data to 0x%x (%d B)\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to write extended board data: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Too small board file: %zu\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"writing board file to 0x%x (%d B)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Board file bmi write failed: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"writing otp to 0x%x (%zd B)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to upload OTP file: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to read hi_app_start: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"app_start_override_addr%s 0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c" (from hw)\00", [21 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"executing OTP at 0x%x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"writing firmware to 0x%x (%zd B)\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to write firmware: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"writing patch to 0x%x (%zd B)\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to write patch file: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"writing testscript to 0x%x (%zd B)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to write testscript file: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"WMI CONTROL\00", [20 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"WMI DATA BE\00", [20 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"WMI DATA BK\00", [20 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"WMI DATA VI\00", [20 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"WMI DATA VO\00", [20 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"failed to connect to %s service status:%d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"service id is not mapped %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sdio\00", [27 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"usb\00", [28 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"firmware capability buffer too small!\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s,\00", [28 x i8] zeroinitializer }, align 32
@fw_capa_map = internal constant { [19 x %struct.fw_capa_str_map], [40 x i8] } { [19 x %struct.fw_capa_str_map] [%struct.fw_capa_str_map { i32 0, ptr @.str.145 }, %struct.fw_capa_str_map { i32 1, ptr @.str.146 }, %struct.fw_capa_str_map { i32 2, ptr @.str.147 }, %struct.fw_capa_str_map { i32 3, ptr @.str.148 }, %struct.fw_capa_str_map { i32 4, ptr @.str.149 }, %struct.fw_capa_str_map { i32 5, ptr @.str.150 }, %struct.fw_capa_str_map { i32 6, ptr @.str.151 }, %struct.fw_capa_str_map { i32 7, ptr @.str.152 }, %struct.fw_capa_str_map { i32 8, ptr @.str.153 }, %struct.fw_capa_str_map { i32 9, ptr @.str.154 }, %struct.fw_capa_str_map { i32 10, ptr @.str.155 }, %struct.fw_capa_str_map { i32 11, ptr @.str.156 }, %struct.fw_capa_str_map { i32 12, ptr @.str.157 }, %struct.fw_capa_str_map { i32 13, ptr @.str.158 }, %struct.fw_capa_str_map { i32 14, ptr @.str.159 }, %struct.fw_capa_str_map { i32 15, ptr @.str.160 }, %struct.fw_capa_str_map { i32 16, ptr @.str.161 }, %struct.fw_capa_str_map { i32 17, ptr @.str.162 }, %struct.fw_capa_str_map { i32 18, ptr @.str.163 }], [40 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"host-p2p\00", [23 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sched-scan\00", [21 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sta-p2pdev-duplex\00", [46 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"inactivity-timeout\00", [45 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rsn-cap-override\00", [47 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"wow-mc-filter\00", [18 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bmiss-enhance\00", [18 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sscan-match-list\00", [47 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rssi-scan-thold\00", [16 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"custom-mac-addr\00", [16 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tx-err-notify\00", [18 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"regdomain\00", [22 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sched-scan-v2\00", [18 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"hb-poll\00", [24 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"64bit-rates\00", [20 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ap-inactivity-mins\00", [45 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"map-lp-endpoint\00", [16 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ratetable-mcs15\00", [16 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"no-ip-checksum\00", [17 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"unable to set the rx frame format: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"unable to set power save fail event policy: %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"unable to set barker preamble policy: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"unable to set keep alive interval: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"unable to set disconnect timeout: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"unable to set txop bursting: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"failed to request P2P capabilities (%d) - assuming P2P not supported\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"failed to enable Probe Request reporting (%d)\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hif power off\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hw stop\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to power off hif: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hif stop\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cold resetting the device\00", [38 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 835192970, i64 835193336]
@__sancov_gen_cov_switch_values.177 = internal global [11 x i64] [i64 9, i64 32, i64 0, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.178 = internal global [9 x i64] [i64 7, i64 32, i64 805306369, i64 805307268, i64 805307778, i64 805307939, i64 805308392, i64 835192970, i64 835193336]
@__sancov_gen_cov_switch_values.179 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 5]
@__sancov_gen_cov_switch_values.180 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967186]
@__sancov_gen_cov_switch_values.181 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 5]
@__sancov_gen_cov_switch_values.182 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 5]
@__sancov_gen_cov_switch_values.183 = internal global [4 x i64] [i64 2, i64 32, i64 835192970, i64 835193336]
@__sancov_gen_cov_switch_values.184 = internal global [4 x i64] [i64 2, i64 32, i64 835192970, i64 835193336]
@__sancov_gen_cov_switch_values.185 = internal global [7 x i64] [i64 5, i64 16, i64 256, i64 257, i64 258, i64 259, i64 260]
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 544, i32 14 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 590, i32 14 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 598, i32 14 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 610, i32 14 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 614, i32 29 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 632, i32 15 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 638, i32 15 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1164, i32 33 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1170, i32 33 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1176, i32 33 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1182, i32 33 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1195, i32 30 }
@___asan_gen_.222 = private unnamed_addr constant [8 x i8] c"hw_list\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 35, i32 31 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1589, i32 14 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1597, i32 6 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1601, i32 6 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1605, i32 6 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1881, i32 35 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1894, i32 14 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1933, i32 30 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 430, i32 14 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 434, i32 29 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 443, i32 15 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 747, i32 6 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 765, i32 14 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 773, i32 14 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 778, i32 14 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 779, i32 14 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 704, i32 37 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 710, i32 2 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 713, i32 16 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 718, i32 5 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 723, i32 15 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 820, i32 30 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 824, i32 16 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 828, i32 40 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 832, i32 16 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 844, i32 14 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 967, i32 14 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 978, i32 14 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 984, i32 19 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 985, i32 14 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1005, i32 31 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1009, i32 15 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1021, i32 8 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1025, i32 32 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1031, i32 16 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1039, i32 32 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1049, i32 16 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1058, i32 32 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1064, i32 16 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1076, i32 8 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1081, i32 8 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1095, i32 37 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1095, i32 53 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1107, i32 8 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1118, i32 8 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1133, i32 8 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1136, i32 32 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 794, i32 7 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 804, i32 14 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 869, i32 14 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 894, i32 14 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 922, i32 14 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 38, i32 14 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 51, i32 12 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 52, i32 12 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 53, i32 11 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 54, i32 13 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 55, i32 14 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 58, i32 16 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 59, i32 23 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 63, i32 14 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 74, i32 12 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 75, i32 12 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 76, i32 11 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 79, i32 12 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 80, i32 18 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 83, i32 16 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 84, i32 23 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 88, i32 14 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 99, i32 12 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 100, i32 11 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 103, i32 16 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 104, i32 23 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 108, i32 14 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 118, i32 12 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 122, i32 16 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 123, i32 23 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 127, i32 14 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 138, i32 12 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 141, i32 16 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 146, i32 14 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 157, i32 22 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 164, i32 29 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 169, i32 14 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 180, i32 12 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 187, i32 16 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1712, i32 30 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1745, i32 15 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1749, i32 14 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1755, i32 14 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1777, i32 14 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1783, i32 30 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1786, i32 15 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1791, i32 40 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1793, i32 15 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1797, i32 14 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1803, i32 29 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1808, i32 14 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 134, i32 29 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1476, i32 29 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1506, i32 14 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1221, i32 15 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1229, i32 14 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1259, i32 7 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1266, i32 15 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1278, i32 14 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1283, i32 30 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1290, i32 14 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1317, i32 30 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1323, i32 14 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1331, i32 14 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1340, i32 30 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1341, i32 16 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1345, i32 30 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1363, i32 30 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1369, i32 14 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1394, i32 30 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1399, i32 14 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1421, i32 30 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1427, i32 14 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 347, i32 42 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 377, i32 42 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 382, i32 42 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 387, i32 42 }
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 398, i32 42 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 293, i32 14 }
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 317, i32 14 }
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1615, i32 10 }
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1617, i32 10 }
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1676, i32 16 }
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1686, i32 47 }
@___asan_gen_.615 = private unnamed_addr constant [12 x i8] c"fw_capa_map\00", align 1
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1627, i32 3 }
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1628, i32 35 }
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1629, i32 37 }
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1630, i32 44 }
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1631, i32 45 }
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1632, i32 43 }
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1633, i32 47 }
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1634, i32 40 }
@___asan_gen_.641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1635, i32 48 }
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1636, i32 42 }
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1637, i32 42 }
@___asan_gen_.650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1638, i32 40 }
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1639, i32 36 }
@___asan_gen_.656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1640, i32 40 }
@___asan_gen_.659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1641, i32 42 }
@___asan_gen_.662 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1642, i32 38 }
@___asan_gen_.665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1643, i32 45 }
@___asan_gen_.668 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1644, i32 42 }
@___asan_gen_.671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1645, i32 42 }
@___asan_gen_.674 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1646, i32 41 }
@___asan_gen_.677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 464, i32 14 }
@___asan_gen_.680 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 472, i32 15 }
@___asan_gen_.683 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 482, i32 15 }
@___asan_gen_.686 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 491, i32 14 }
@___asan_gen_.689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 498, i32 14 }
@___asan_gen_.692 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 505, i32 15 }
@___asan_gen_.695 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 517, i32 8 }
@___asan_gen_.698 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 528, i32 8 }
@___asan_gen_.701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 141, i32 29 }
@___asan_gen_.704 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1843, i32 30 }
@___asan_gen_.707 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1853, i32 15 }
@___asan_gen_.709 = private unnamed_addr constant [45 x i8] c"../drivers/net/wireless/ath/ath6kl/hif-ops.h\00", align 1
@___asan_gen_.710 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 148, i32 29 }
@___asan_gen_.711 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.712 = private constant [42 x i8] c"../drivers/net/wireless/ath/ath6kl/init.c\00", align 1
@___asan_gen_.713 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.712, i32 1700, i32 30 }
@llvm.compiler.used = appending global [177 x ptr] [ptr @__ksymtab_ath6kl_stop_txrx, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @hw_list, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.142, ptr @.str.143, ptr @fw_capa_map, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176], section "llvm.metadata"
@0 = internal global [176 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_list to i32), i32 672, i32 832, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fw_capa_map to i32), i32 152, i32 192, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ath6kl_buf_alloc(i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add2 = add i32 %size, 388
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %add2, i32 noundef 2592) #9
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 260
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %2 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %3, i32 260
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret ptr %call.i.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @ath6kl_init_profile_info(ptr nocapture noundef writeonly %vif) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ssid_len = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 7
  %dot11_auth_mode = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 9
  %0 = call ptr @memset(ptr %ssid_len, i32 0, i32 36)
  %1 = ptrtoint ptr %dot11_auth_mode to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %dot11_auth_mode, align 4
  %auth_mode = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 10
  %2 = ptrtoint ptr %auth_mode to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %auth_mode, align 1
  %prwise_crypto = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 11
  %3 = ptrtoint ptr %prwise_crypto to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %prwise_crypto, align 2
  %prwise_crypto_len = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 12
  %4 = ptrtoint ptr %prwise_crypto_len to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %prwise_crypto_len, align 1
  %grp_crypto = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 13
  %5 = ptrtoint ptr %grp_crypto to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %grp_crypto, align 8
  %grp_crypto_len = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 14
  %6 = ptrtoint ptr %grp_crypto_len to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %grp_crypto_len, align 1
  %bssid = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 18
  %bss_ch = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 21
  %7 = call ptr @memset(ptr %bssid, i32 0, i32 12)
  %8 = call ptr @memset(ptr %bss_ch, i32 0, i32 266)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @ath6kl_init_control_info(ptr nocapture noundef writeonly %vif) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ssid_len.i = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 7
  %dot11_auth_mode.i = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 9
  %0 = call ptr @memset(ptr %ssid_len.i, i32 0, i32 36)
  %1 = ptrtoint ptr %dot11_auth_mode.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %dot11_auth_mode.i, align 4
  %auth_mode.i = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 10
  %2 = ptrtoint ptr %auth_mode.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %auth_mode.i, align 1
  %prwise_crypto.i = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 11
  %3 = ptrtoint ptr %prwise_crypto.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %prwise_crypto.i, align 2
  %prwise_crypto_len.i = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 12
  %4 = ptrtoint ptr %prwise_crypto_len.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %prwise_crypto_len.i, align 1
  %grp_crypto.i = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 13
  %5 = ptrtoint ptr %grp_crypto.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %grp_crypto.i, align 8
  %grp_crypto_len.i = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 14
  %6 = ptrtoint ptr %grp_crypto_len.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %grp_crypto_len.i, align 1
  %bssid.i = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 18
  %7 = call ptr @memset(ptr %bssid.i, i32 0, i32 12)
  %def_txkey_index = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 15
  %8 = ptrtoint ptr %def_txkey_index to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %def_txkey_index, align 2
  %ch_hint = getelementptr inbounds %struct.ath6kl_vif, ptr %vif, i32 0, i32 20
  %9 = call ptr @memset(ptr %ch_hint, i32 0, i32 268)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath6kl_configure_target(ptr noundef %ar) local_unnamed_addr #0 align 64 {
entry:
  %v = alloca i32, align 4
  %v61 = alloca i32, align 4
  %tmp70 = alloca i32, align 4
  %v95 = alloca i32, align 4
  %v115 = alloca i32, align 4
  %v124 = alloca i32, align 4
  %v138 = alloca i32, align 4
  %v152 = alloca i32, align 4
  %v166 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %conf_flags = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 68
  %0 = ptrtoint ptr %conf_flags to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %conf_flags, align 4
  %2 = lshr i16 %1, 4
  %.lobit = and i16 %2, 1
  %3 = zext i16 %.lobit to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v) #9
  %target_type.i = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 26
  %4 = ptrtoint ptr %target_type.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %target_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %5)
  %switch.selectcmp = icmp eq i32 %5, 5
  %switch.select = select i1 %switch.selectcmp, i32 4196372, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %switch.selectcmp286 = icmp eq i32 %5, 3
  %switch.select287 = select i1 %switch.selectcmp286, i32 5506580, i32 %switch.select
  %6 = shl nuw nsw i32 %3, 24
  %7 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %v, align 4
  %call2 = call i32 @ath6kl_bmi_write(ptr noundef %ar, i32 noundef %switch.select287, ptr noundef nonnull %v, i32 noundef 4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %for.cond.preheader, label %if.then

for.cond.preheader:                               ; preds = %entry
  %vif_max = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 17
  %8 = ptrtoint ptr %vif_max to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vif_max, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp317.not = icmp eq i32 %9, 0
  br i1 %cmp317.not, label %for.end.thread, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str) #9
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %fw_mode.0319 = phi i32 [ %phi.cast, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %i.0318 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %mul = shl i32 %i.0318, 1
  %shl = shl nuw i32 1, %mul
  %inc = add nuw i32 %i.0318, 1
  %shl.masked = and i32 %shl, 255
  %phi.cast = or i32 %shl.masked, %fw_mode.0319
  %exitcond.not = icmp eq i32 %inc, %9
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body
  %phi.bo = shl i32 %phi.cast, 12
  %fw_capabilities = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 87
  %10 = ptrtoint ptr %fw_capabilities to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %fw_capabilities, align 4
  %12 = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool9.not = icmp eq i32 %12, 0
  br i1 %tobool9.not, label %for.end.for.cond24.preheader_crit_edge, label %for.cond11.preheader

for.end.for.cond24.preheader_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond24.preheader

for.end.thread:                                   ; preds = %for.cond.preheader
  %fw_capabilities333 = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 87
  %13 = ptrtoint ptr %fw_capabilities333 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %fw_capabilities333, align 4
  %15 = and i32 %14, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool9.not334 = icmp eq i32 %15, 0
  br i1 %tobool9.not334, label %for.end.thread.for.cond24.preheader_crit_edge, label %for.end.thread.if.end59_crit_edge

for.end.thread.if.end59_crit_edge:                ; preds = %for.end.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

for.end.thread.for.cond24.preheader_crit_edge:    ; preds = %for.end.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond24.preheader

for.cond11.preheader:                             ; preds = %for.end
  br i1 %cmp317.not, label %for.cond11.preheader.if.end59_crit_edge, label %for.cond11.preheader.for.body15_crit_edge

for.cond11.preheader.for.body15_crit_edge:        ; preds = %for.cond11.preheader
  br label %for.body15

for.cond11.preheader.if.end59_crit_edge:          ; preds = %for.cond11.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

for.cond24.preheader:                             ; preds = %for.end.thread.for.cond24.preheader_crit_edge, %for.end.for.cond24.preheader_crit_edge
  %fw_mode.0.lcssa337 = phi i32 [ 0, %for.end.thread.for.cond24.preheader_crit_edge ], [ %phi.bo, %for.end.for.cond24.preheader_crit_edge ]
  %max_norm_iface = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 18
  %16 = ptrtoint ptr %max_norm_iface to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %max_norm_iface, align 4
  %conv25.le = zext i8 %17 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %conv25.le)
  %cmp41326 = icmp ugt i32 %9, %conv25.le
  br i1 %cmp41326, label %for.cond24.preheader.for.body43_crit_edge, label %for.cond24.preheader.for.end51_crit_edge

for.cond24.preheader.for.end51_crit_edge:         ; preds = %for.cond24.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end51

for.cond24.preheader.for.body43_crit_edge:        ; preds = %for.cond24.preheader
  br label %for.body43

for.body15:                                       ; preds = %for.body15.for.body15_crit_edge, %for.cond11.preheader.for.body15_crit_edge
  %fw_submode.0323 = phi i8 [ %conv20, %for.body15.for.body15_crit_edge ], [ 0, %for.cond11.preheader.for.body15_crit_edge ]
  %i.1322 = phi i32 [ %inc22, %for.body15.for.body15_crit_edge ], [ 0, %for.cond11.preheader.for.body15_crit_edge ]
  %mul16 = shl i32 %i.1322, 1
  %shl17 = shl nuw i32 1, %mul16
  %18 = trunc i32 %shl17 to i8
  %conv20 = or i8 %fw_submode.0323, %18
  %inc22 = add nuw i32 %i.1322, 1
  %exitcond330.not = icmp eq i32 %inc22, %9
  br i1 %exitcond330.not, label %for.body15.if.end59_crit_edge, label %for.body15.for.body15_crit_edge

for.body15.for.body15_crit_edge:                  ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body15

for.body15.if.end59_crit_edge:                    ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

for.body43:                                       ; preds = %for.body43.for.body43_crit_edge, %for.cond24.preheader.for.body43_crit_edge
  %fw_submode.2328 = phi i8 [ %conv48, %for.body43.for.body43_crit_edge ], [ 0, %for.cond24.preheader.for.body43_crit_edge ]
  %i.3327 = phi i32 [ %inc50, %for.body43.for.body43_crit_edge ], [ %conv25.le, %for.cond24.preheader.for.body43_crit_edge ]
  %mul44 = shl i32 %i.3327, 1
  %shl45 = shl nuw i32 1, %mul44
  %19 = trunc i32 %shl45 to i8
  %conv48 = or i8 %fw_submode.2328, %19
  %inc50 = add nuw i32 %i.3327, 1
  %exitcond331.not = icmp eq i32 %inc50, %9
  br i1 %exitcond331.not, label %for.body43.for.end51_crit_edge, label %for.body43.for.body43_crit_edge

for.body43.for.body43_crit_edge:                  ; preds = %for.body43
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body43

for.body43.for.end51_crit_edge:                   ; preds = %for.body43
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end51

for.end51:                                        ; preds = %for.body43.for.end51_crit_edge, %for.cond24.preheader.for.end51_crit_edge
  %fw_submode.2.lcssa = phi i8 [ 0, %for.cond24.preheader.for.end51_crit_edge ], [ %conv48, %for.body43.for.end51_crit_edge ]
  %p2p = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 90
  %20 = ptrtoint ptr %p2p to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %p2p, align 4, !range !375
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool52.not = icmp ne i8 %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp55 = icmp eq i32 %9, 1
  %or.cond = select i1 %tobool52.not, i1 %cmp55, i1 false
  %spec.select = select i1 %or.cond, i8 1, i8 %fw_submode.2.lcssa
  br label %if.end59

if.end59:                                         ; preds = %for.end51, %for.body15.if.end59_crit_edge, %for.cond11.preheader.if.end59_crit_edge, %for.end.thread.if.end59_crit_edge
  %fw_mode.0.lcssa335 = phi i32 [ %fw_mode.0.lcssa337, %for.end51 ], [ %phi.bo, %for.cond11.preheader.if.end59_crit_edge ], [ 0, %for.end.thread.if.end59_crit_edge ], [ %phi.bo, %for.body15.if.end59_crit_edge ]
  %fw_submode.3 = phi i8 [ %spec.select, %for.end51 ], [ 0, %for.cond11.preheader.if.end59_crit_edge ], [ 0, %for.end.thread.if.end59_crit_edge ], [ %conv20, %for.body15.if.end59_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v61) #9
  %22 = ptrtoint ptr %target_type.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %target_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %23)
  %switch.selectcmp288 = icmp eq i32 %23, 5
  %switch.select289 = select i1 %switch.selectcmp288, i32 4196352, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %23)
  %switch.selectcmp290 = icmp eq i32 %23, 3
  %switch.select291 = select i1 %switch.selectcmp290, i32 5506560, i32 %switch.select289
  %24 = ptrtoint ptr %v61 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 33554432, ptr %v61, align 4
  %call64 = call i32 @ath6kl_bmi_write(ptr noundef %ar, i32 noundef %switch.select291, ptr noundef nonnull %v61, i32 noundef 4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v61) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %cmp65.not = icmp eq i32 %call64, 0
  br i1 %cmp65.not, label %if.end68, label %if.then67

if.then67:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end68:                                         ; preds = %if.end59
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp70) #9
  %25 = ptrtoint ptr %tmp70 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1, ptr %tmp70, align 4, !annotation !376
  %26 = ptrtoint ptr %target_type.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %target_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %27)
  %switch.selectcmp292 = icmp eq i32 %27, 5
  %switch.select293 = select i1 %switch.selectcmp292, i32 4196368, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %27)
  %switch.selectcmp294 = icmp eq i32 %27, 3
  %switch.select295 = select i1 %switch.selectcmp294, i32 5506576, i32 %switch.select293
  %call74 = call i32 @ath6kl_bmi_read(ptr noundef %ar, i32 noundef %switch.select295, ptr noundef nonnull %tmp70, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.end82, label %if.then81

if.then81:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp70) #9
  call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.2) #9
  br label %cleanup

if.end82:                                         ; preds = %if.end68
  %28 = ptrtoint ptr %tmp70 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tmp70, align 4
  %30 = call i32 @llvm.bswap.i32(i32 %29)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp70) #9
  %31 = ptrtoint ptr %vif_max to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %vif_max, align 4
  %shl84 = shl i32 %32, 9
  %conv89 = zext i8 %fw_submode.3 to i32
  %shl90 = shl nuw nsw i32 %conv89, 20
  %or85 = or i32 %shl90, %fw_mode.0.lcssa335
  %or88 = or i32 %or85, %30
  %or91 = or i32 %or88, %shl84
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v95) #9
  %33 = ptrtoint ptr %target_type.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %target_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %34)
  %switch.selectcmp296 = icmp eq i32 %34, 5
  %switch.select297 = select i1 %switch.selectcmp296, i32 4196368, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %34)
  %switch.selectcmp298 = icmp eq i32 %34, 3
  %switch.select299 = select i1 %switch.selectcmp298, i32 5506576, i32 %switch.select297
  %35 = call i32 @llvm.bswap.i32(i32 %or91)
  %36 = ptrtoint ptr %v95 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %v95, align 4
  %call98 = call i32 @ath6kl_bmi_write(ptr noundef %ar, i32 noundef %switch.select299, ptr noundef nonnull %v95, i32 noundef 4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v95) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %cmp99.not = icmp eq i32 %call98, 0
  br i1 %cmp99.not, label %if.end102, label %if.then101

if.then101:                                       ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.3) #9
  br label %cleanup

if.end102:                                        ; preds = %if.end82
  call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 2048, ptr noundef nonnull @.str.4) #9
  %37 = ptrtoint ptr %target_type.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %target_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %38)
  %cmp103 = icmp eq i32 %38, 3
  br i1 %cmp103, label %if.then112.thread, label %lor.lhs.false

if.then112.thread:                                ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #11
  %board_ext_data_addr284 = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 67, i32 5
  %39 = ptrtoint ptr %board_ext_data_addr284 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %board_ext_data_addr284, align 4
  %reserved_ram_size285 = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 67, i32 6
  %41 = ptrtoint ptr %reserved_ram_size285 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %reserved_ram_size285, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v115) #9
  br label %ath6kl_get_hi_item_addr.exit261

lor.lhs.false:                                    ; preds = %if.end102
  %version = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 25
  %43 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %version, align 4
  %45 = zext i32 %44 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values)
  switch i32 %44, label %lor.lhs.false.if.end132_crit_edge [
    i32 835192970, label %lor.lhs.false.if.then112_crit_edge
    i32 835193336, label %lor.lhs.false.if.then112_crit_edge339
  ]

lor.lhs.false.if.then112_crit_edge339:            ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then112

lor.lhs.false.if.then112_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then112

lor.lhs.false.if.end132_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end132

if.then112:                                       ; preds = %lor.lhs.false.if.then112_crit_edge, %lor.lhs.false.if.then112_crit_edge339
  %board_ext_data_addr = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 67, i32 5
  %46 = ptrtoint ptr %board_ext_data_addr to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %board_ext_data_addr, align 4
  %reserved_ram_size = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 67, i32 6
  %48 = ptrtoint ptr %reserved_ram_size to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %reserved_ram_size, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v115) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %38)
  %cond = icmp eq i32 %38, 5
  %spec.select300 = select i1 %cond, i32 4196524, i32 0
  br label %ath6kl_get_hi_item_addr.exit261

ath6kl_get_hi_item_addr.exit261:                  ; preds = %if.then112, %if.then112.thread
  %50 = phi i32 [ %42, %if.then112.thread ], [ %49, %if.then112 ]
  %51 = phi i32 [ %40, %if.then112.thread ], [ %47, %if.then112 ]
  %addr.0.i260 = phi i32 [ 5506732, %if.then112.thread ], [ %spec.select300, %if.then112 ]
  %52 = call i32 @llvm.bswap.i32(i32 %51)
  %53 = ptrtoint ptr %v115 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %v115, align 4
  %call118 = call i32 @ath6kl_bmi_write(ptr noundef %ar, i32 noundef %addr.0.i260, ptr noundef nonnull %v115, i32 noundef 4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v115) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call118)
  %cmp119.not = icmp eq i32 %call118, 0
  br i1 %cmp119.not, label %if.end122, label %if.then121

if.then121:                                       ; preds = %ath6kl_get_hi_item_addr.exit261
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.5) #9
  br label %cleanup

if.end122:                                        ; preds = %ath6kl_get_hi_item_addr.exit261
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v124) #9
  %54 = ptrtoint ptr %target_type.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %target_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %55)
  %switch.selectcmp301 = icmp eq i32 %55, 5
  %switch.select302 = select i1 %switch.selectcmp301, i32 4196456, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %55)
  %switch.selectcmp303 = icmp eq i32 %55, 3
  %switch.select304 = select i1 %switch.selectcmp303, i32 5506664, i32 %switch.select302
  %56 = call i32 @llvm.bswap.i32(i32 %50)
  %57 = ptrtoint ptr %v124 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %v124, align 4
  %call127 = call i32 @ath6kl_bmi_write(ptr noundef %ar, i32 noundef %switch.select304, ptr noundef nonnull %v124, i32 noundef 4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v124) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call127)
  %cmp128.not = icmp eq i32 %call127, 0
  br i1 %cmp128.not, label %if.end122.if.end132_crit_edge, label %if.then130

if.end122.if.end132_crit_edge:                    ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end132

if.then130:                                       ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.6) #9
  br label %cleanup

if.end132:                                        ; preds = %if.end122.if.end132_crit_edge, %lor.lhs.false.if.end132_crit_edge
  %call133 = call fastcc i32 @ath6kl_set_htc_params(ptr noundef %ar)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call133)
  %tobool134.not = icmp eq i32 %call133, 0
  br i1 %tobool134.not, label %if.end136, label %if.end132.cleanup_crit_edge

if.end132.cleanup_crit_edge:                      ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end136:                                        ; preds = %if.end132
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v138) #9
  %58 = ptrtoint ptr %target_type.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %target_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %59)
  %switch.selectcmp305 = icmp eq i32 %59, 5
  %switch.select306 = select i1 %switch.selectcmp305, i32 4196480, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %59)
  %switch.selectcmp307 = icmp eq i32 %59, 3
  %switch.select308 = select i1 %switch.selectcmp307, i32 5506688, i32 %switch.select306
  %uarttx_pin = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 67, i32 9
  %60 = ptrtoint ptr %uarttx_pin to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %uarttx_pin, align 4
  %62 = call i32 @llvm.bswap.i32(i32 %61)
  %63 = ptrtoint ptr %v138 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %v138, align 4
  %call142 = call i32 @ath6kl_bmi_write(ptr noundef %ar, i32 noundef %switch.select308, ptr noundef nonnull %v138, i32 noundef 4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v138) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call142)
  %tobool143.not = icmp eq i32 %call142, 0
  br i1 %tobool143.not, label %if.end145, label %if.end136.cleanup_crit_edge

if.end136.cleanup_crit_edge:                      ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end145:                                        ; preds = %if.end136
  %64 = ptrtoint ptr %conf_flags to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %conf_flags, align 4
  %66 = and i16 %65, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %66)
  %tobool149.not = icmp eq i16 %66, 0
  br i1 %tobool149.not, label %if.end145.if.end160_crit_edge, label %if.then150

if.end145.if.end160_crit_edge:                    ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end160

if.then150:                                       ; preds = %if.end145
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v152) #9
  %67 = ptrtoint ptr %target_type.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %target_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %68)
  %switch.selectcmp309 = icmp eq i32 %68, 5
  %switch.select310 = select i1 %switch.selectcmp309, i32 4196448, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %68)
  %switch.selectcmp311 = icmp eq i32 %68, 3
  %switch.select312 = select i1 %switch.selectcmp311, i32 5506656, i32 %switch.select310
  %uarttx_rate = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 67, i32 10
  %69 = ptrtoint ptr %uarttx_rate to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %uarttx_rate, align 4
  %71 = call i32 @llvm.bswap.i32(i32 %70)
  %72 = ptrtoint ptr %v152 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %v152, align 4
  %call156 = call i32 @ath6kl_bmi_write(ptr noundef %ar, i32 noundef %switch.select312, ptr noundef nonnull %v152, i32 noundef 4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v152) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call156)
  %tobool157.not = icmp eq i32 %call156, 0
  br i1 %tobool157.not, label %if.then150.if.end160_crit_edge, label %if.then150.cleanup_crit_edge

if.then150.cleanup_crit_edge:                     ; preds = %if.then150
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then150.if.end160_crit_edge:                   ; preds = %if.then150
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end160

if.end160:                                        ; preds = %if.then150.if.end160_crit_edge, %if.end145.if.end160_crit_edge
  %refclk_hz = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 67, i32 8
  %73 = ptrtoint ptr %refclk_hz to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %refclk_hz, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %cmp162.not = icmp eq i32 %74, 0
  br i1 %cmp162.not, label %if.end160.if.end175_crit_edge, label %if.then164

if.end160.if.end175_crit_edge:                    ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end175

if.then164:                                       ; preds = %if.end160
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v166) #9
  %75 = ptrtoint ptr %target_type.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %target_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %76)
  %switch.selectcmp313 = icmp eq i32 %76, 5
  %switch.select314 = select i1 %switch.selectcmp313, i32 4196472, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %76)
  %switch.selectcmp315 = icmp eq i32 %76, 3
  %switch.select316 = select i1 %switch.selectcmp315, i32 5506680, i32 %switch.select314
  %77 = call i32 @llvm.bswap.i32(i32 %74)
  %78 = ptrtoint ptr %v166 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %v166, align 4
  %call171 = call i32 @ath6kl_bmi_write(ptr noundef %ar, i32 noundef %switch.select316, ptr noundef nonnull %v166, i32 noundef 4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v166) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call171)
  %tobool172.not = icmp eq i32 %call171, 0
  br i1 %tobool172.not, label %if.then164.if.end175_crit_edge, label %if.then164.cleanup_crit_edge

if.then164.cleanup_crit_edge:                     ; preds = %if.then164
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then164.if.end175_crit_edge:                   ; preds = %if.then164
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end175

if.end175:                                        ; preds = %if.then164.if.end175_crit_edge, %if.end160.if.end175_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end175, %if.then164.cleanup_crit_edge, %if.then150.cleanup_crit_edge, %if.end136.cleanup_crit_edge, %if.end132.cleanup_crit_edge, %if.then130, %if.then121, %if.then101, %if.then81, %if.then67, %if.then
  %retval.0 = phi i32 [ -5, %if.then ], [ -5, %if.then67 ], [ -5, %if.then81 ], [ -5, %if.then101 ], [ -5, %if.then121 ], [ -5, %if.then130 ], [ 0, %if.end175 ], [ -5, %if.end132.cleanup_crit_edge ], [ %call142, %if.end136.cleanup_crit_edge ], [ %call156, %if.then150.cleanup_crit_edge ], [ %call171, %if.then164.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath6kl_bmi_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath6kl_err(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath6kl_bmi_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath6kl_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ath6kl_set_htc_params(ptr noundef %ar) unnamed_addr #0 align 64 {
entry:
  %v = alloca i32, align 4
  %v9 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %block_size = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 73, i32 3
  %0 = ptrtoint ptr %block_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %block_size, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v) #9
  %target_type.i = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 26
  %2 = ptrtoint ptr %target_type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %target_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %3)
  %switch.selectcmp = icmp eq i32 %3, 5
  %switch.select = select i1 %switch.selectcmp, i32 4196460, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %switch.selectcmp11 = icmp eq i32 %3, 3
  %switch.select12 = select i1 %switch.selectcmp11, i32 5506668, i32 %switch.select
  %4 = tail call i32 @llvm.bswap.i32(i32 %1)
  %5 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %v, align 4
  %call1 = call i32 @ath6kl_bmi_write(ptr noundef %ar, i32 noundef %switch.select12, ptr noundef nonnull %v, i32 noundef 4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %entry.out.sink.split_crit_edge

entry.out.sink.split_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.sink.split

if.end4:                                          ; preds = %entry
  %6 = ptrtoint ptr %target_type.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %target_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %7)
  %switch.selectcmp13 = icmp eq i32 %7, 5
  %switch.select14 = select i1 %switch.selectcmp13, i32 4196460, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %switch.selectcmp15 = icmp eq i32 %7, 3
  %switch.select16 = select i1 %switch.selectcmp15, i32 5506668, i32 %switch.select14
  call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 2048, ptr noundef nonnull @.str.21, i32 noundef %1, i32 noundef %switch.select16) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v9) #9
  %8 = ptrtoint ptr %target_type.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %target_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %9)
  %switch.selectcmp17 = icmp eq i32 %9, 5
  %switch.select18 = select i1 %switch.selectcmp17, i32 4196468, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %9)
  %switch.selectcmp19 = icmp eq i32 %9, 3
  %switch.select20 = select i1 %switch.selectcmp19, i32 5506676, i32 %switch.select18
  %10 = ptrtoint ptr %v9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1660944384, ptr %v9, align 4
  %call12 = call i32 @ath6kl_bmi_write(ptr noundef %ar, i32 noundef %switch.select20, ptr noundef nonnull %v9, i32 noundef 4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v9) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end4.out_crit_edge, label %if.end4.out.sink.split_crit_edge

if.end4.out.sink.split_crit_edge:                 ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.sink.split

if.end4.out_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

out.sink.split:                                   ; preds = %if.end4.out.sink.split_crit_edge, %entry.out.sink.split_crit_edge
  %.str.22.sink = phi ptr [ @.str.20, %entry.out.sink.split_crit_edge ], [ @.str.22, %if.end4.out.sink.split_crit_edge ]
  %status.0.ph = phi i32 [ %call1, %entry.out.sink.split_crit_edge ], [ %call12, %if.end4.out.sink.split_crit_edge ]
  call void (ptr, ...) @ath6kl_err(ptr noundef nonnull %.str.22.sink) #9
  br label %out

out:                                              ; preds = %out.sink.split, %if.end4.out_crit_edge
  %status.0 = phi i32 [ 0, %if.end4.out_crit_edge ], [ %status.0.ph, %out.sink.split ]
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath6kl_init_fetch_firmwares(ptr noundef %ar) local_unnamed_addr #0 align 64 {
entry:
  %fw_entry.i.i56.i = alloca ptr, align 4
  %filename.i57.i = alloca [100 x i8], align 1
  %fw_entry.i.i38.i = alloca ptr, align 4
  %filename.i39.i = alloca [100 x i8], align 1
  %fw_entry.i.i23.i = alloca ptr, align 4
  %filename.i24.i = alloca [100 x i8], align 1
  %fw_entry.i.i.i61 = alloca ptr, align 4
  %filename.i.i = alloca [100 x i8], align 1
  %fw_entry.i.i50 = alloca ptr, align 4
  %filename.i = alloca [100 x i8], align 1
  %fw_entry.i66.i = alloca ptr, align 4
  %fw_entry.i.i.i = alloca ptr, align 4
  %board_filename.i.i = alloca [64 x i8], align 1
  %fw_entry.i.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %fw_board.i = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 76
  %0 = ptrtoint ptr %fw_board.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fw_board.i, align 4
  %cmp.not.i = icmp eq ptr %1, null
  br i1 %cmp.not.i, label %if.end.i, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i:                                         ; preds = %entry
  %fw_board1.i = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 67, i32 17
  %2 = ptrtoint ptr %fw_board1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fw_board1.i, align 4
  %cmp2.i = icmp eq ptr %3, null
  br i1 %cmp2.i, label %do.end.i, label %if.end25.i, !prof !377

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 747, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

if.end25.i:                                       ; preds = %if.end.i
  %fw_board_len.i = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 77
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw_entry.i.i) #9
  %4 = ptrtoint ptr %fw_entry.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw_entry.i.i, align 4, !annotation !376
  %5 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ar, align 4
  %call.i.i = call i32 @request_firmware(ptr noundef nonnull %fw_entry.i.i, ptr noundef nonnull %3, ptr noundef %6) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end25.i.if.end31.i_crit_edge

if.end25.i.if.end31.i_crit_edge:                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31.i

if.end.i.i:                                       ; preds = %if.end25.i
  %7 = ptrtoint ptr %fw_entry.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fw_entry.i.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  %11 = ptrtoint ptr %fw_board_len.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %fw_board_len.i, align 4
  %data.i.i = getelementptr inbounds %struct.firmware, ptr %8, i32 0, i32 1
  %12 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data.i.i, align 4
  %14 = load i32, ptr %8, align 4
  %call2.i.i = call ptr @kmemdup(ptr noundef %13, i32 noundef %14, i32 noundef 3264) #9
  %15 = ptrtoint ptr %fw_board.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call2.i.i, ptr %fw_board.i, align 4
  %cmp.i.i = icmp eq ptr %call2.i.i, null
  %16 = ptrtoint ptr %fw_entry.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fw_entry.i.i, align 4
  call void @release_firmware(ptr noundef %17) #9
  br i1 %cmp.i.i, label %if.end.i.i.if.end31.i_crit_edge, label %ath6kl_get_fw.exit.i

if.end.i.i.if.end31.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31.i

ath6kl_get_fw.exit.i:                             ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw_entry.i.i) #9
  br label %if.end

if.end31.i:                                       ; preds = %if.end.i.i.if.end31.i_crit_edge, %if.end25.i.if.end31.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ %call.i.i, %if.end25.i.if.end31.i_crit_edge ], [ -12, %if.end.i.i.if.end31.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw_entry.i.i) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %board_filename.i.i) #9
  %18 = call ptr @memset(ptr %board_filename.i.i, i32 255, i32 64)
  %call.i61.i = call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.29) #9
  %tobool.not28.i.i = icmp eq ptr %call.i61.i, null
  br i1 %tobool.not28.i.i, label %if.end31.i.if.end34.i_crit_edge, label %for.body.lr.ph.i.i

if.end31.i.if.end34.i_crit_edge:                  ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34.i

for.body.lr.ph.i.i:                               ; preds = %if.end31.i
  %fw.i.i = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 67, i32 16
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %node.029.i.i = phi ptr [ %call.i61.i, %for.body.lr.ph.i.i ], [ %call9.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %call1.i.i = call ptr @of_get_property(ptr noundef nonnull %node.029.i.i, ptr noundef nonnull @.str.28, ptr noundef null) #9
  %cmp.i62.i = icmp eq ptr %call1.i.i, null
  br i1 %cmp.i62.i, label %if.then.i.i, label %if.end.i64.i

if.then.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ...) @ath6kl_warn(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.28, ptr noundef nonnull %node.029.i.i) #9
  br label %for.inc.i.i

if.end.i64.i:                                     ; preds = %for.body.i.i
  %19 = ptrtoint ptr %fw.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %fw.i.i, align 4
  %call2.i63.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %board_filename.i.i, i32 noundef 64, ptr noundef nonnull @.str.31, ptr noundef %20, ptr noundef nonnull %call1.i.i) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw_entry.i.i.i) #9
  %21 = ptrtoint ptr %fw_entry.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw_entry.i.i.i, align 4, !annotation !376
  %22 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ar, align 4
  %call.i.i.i = call i32 @request_firmware(ptr noundef nonnull %fw_entry.i.i.i, ptr noundef nonnull %board_filename.i.i, ptr noundef %23) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.end.i64.i.if.then6.i.i_crit_edge

if.end.i64.i.if.then6.i.i_crit_edge:              ; preds = %if.end.i64.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then6.i.i

if.end.i.i.i:                                     ; preds = %if.end.i64.i
  %24 = ptrtoint ptr %fw_entry.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %fw_entry.i.i.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  %28 = ptrtoint ptr %fw_board_len.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %fw_board_len.i, align 4
  %data.i.i.i = getelementptr inbounds %struct.firmware, ptr %25, i32 0, i32 1
  %29 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data.i.i.i, align 4
  %31 = load i32, ptr %25, align 4
  %call2.i.i.i = call ptr @kmemdup(ptr noundef %30, i32 noundef %31, i32 noundef 3264) #9
  %32 = ptrtoint ptr %fw_board.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call2.i.i.i, ptr %fw_board.i, align 4
  %cmp.i.i.i = icmp eq ptr %call2.i.i.i, null
  %33 = ptrtoint ptr %fw_entry.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %fw_entry.i.i.i, align 4
  call void @release_firmware(ptr noundef %34) #9
  br i1 %cmp.i.i.i, label %if.end.i.i.i.if.then6.i.i_crit_edge, label %check_device_tree.exit.i

if.end.i.i.i.if.then6.i.i_crit_edge:              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then6.i.i

if.then6.i.i:                                     ; preds = %if.end.i.i.i.if.then6.i.i_crit_edge, %if.end.i64.i.if.then6.i.i_crit_edge
  %retval.0.i.ph.i.i = phi i32 [ %call.i.i.i, %if.end.i64.i.if.then6.i.i_crit_edge ], [ -12, %if.end.i.i.i.if.then6.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw_entry.i.i.i) #9
  call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.32, ptr noundef nonnull %board_filename.i.i, i32 noundef %retval.0.i.ph.i.i) #9
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then6.i.i, %if.then.i.i
  %call9.i.i = call ptr @of_find_compatible_node(ptr noundef nonnull %node.029.i.i, ptr noundef null, ptr noundef nonnull @.str.29) #9
  %tobool.not.i65.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not.i65.i, label %for.inc.i.i.if.end34.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.inc.i.i.if.end34.i_crit_edge:                 ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34.i

check_device_tree.exit.i:                         ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw_entry.i.i.i) #9
  call void @of_node_put(ptr noundef nonnull %node.029.i.i) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %board_filename.i.i) #9
  br label %if.end

if.end34.i:                                       ; preds = %for.inc.i.i.if.end34.i_crit_edge, %if.end31.i.if.end34.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %board_filename.i.i) #9
  call void (ptr, ...) @ath6kl_warn(ptr noundef nonnull @.str.24, ptr noundef nonnull %3, i32 noundef %retval.0.i.ph.i) #9
  %fw_default_board.i = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 67, i32 18
  %35 = ptrtoint ptr %fw_default_board.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %fw_default_board.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw_entry.i66.i) #9
  %37 = ptrtoint ptr %fw_entry.i66.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw_entry.i66.i, align 4, !annotation !376
  %38 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ar, align 4
  %call.i67.i = call i32 @request_firmware(ptr noundef nonnull %fw_entry.i66.i, ptr noundef %36, ptr noundef %39) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i67.i)
  %tobool.not.i68.i = icmp eq i32 %call.i67.i, 0
  br i1 %tobool.not.i68.i, label %if.end.i73.i, label %if.end34.i.if.then40.i_crit_edge

if.end34.i.if.then40.i_crit_edge:                 ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then40.i

if.end.i73.i:                                     ; preds = %if.end34.i
  %40 = ptrtoint ptr %fw_entry.i66.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %fw_entry.i66.i, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %41, align 4
  %44 = ptrtoint ptr %fw_board_len.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %fw_board_len.i, align 4
  %data.i69.i = getelementptr inbounds %struct.firmware, ptr %41, i32 0, i32 1
  %45 = ptrtoint ptr %data.i69.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %data.i69.i, align 4
  %47 = load i32, ptr %41, align 4
  %call2.i70.i = call ptr @kmemdup(ptr noundef %46, i32 noundef %47, i32 noundef 3264) #9
  %48 = ptrtoint ptr %fw_board.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call2.i70.i, ptr %fw_board.i, align 4
  %cmp.i71.i = icmp eq ptr %call2.i70.i, null
  %49 = ptrtoint ptr %fw_entry.i66.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %fw_entry.i66.i, align 4
  call void @release_firmware(ptr noundef %50) #9
  br i1 %cmp.i71.i, label %if.end.i73.i.if.then40.i_crit_edge, label %if.end41.i

if.end.i73.i.if.then40.i_crit_edge:               ; preds = %if.end.i73.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then40.i

if.then40.i:                                      ; preds = %if.end.i73.i.if.then40.i_crit_edge, %if.end34.i.if.then40.i_crit_edge
  %retval.0.i74.ph.i = phi i32 [ %call.i67.i, %if.end34.i.if.then40.i_crit_edge ], [ -12, %if.end.i73.i.if.then40.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw_entry.i66.i) #9
  call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.25, ptr noundef %36, i32 noundef %retval.0.i74.ph.i) #9
  br label %cleanup

if.end41.i:                                       ; preds = %if.end.i73.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw_entry.i66.i) #9
  call void (ptr, ...) @ath6kl_warn(ptr noundef nonnull @.str.26) #9
  call void (ptr, ...) @ath6kl_warn(ptr noundef nonnull @.str.27) #9
  br label %if.end

if.end:                                           ; preds = %if.end41.i, %check_device_tree.exit.i, %ath6kl_get_fw.exit.i, %entry.if.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %filename.i) #9
  %51 = call ptr @memset(ptr %filename.i, i32 255, i32 100)
  %testmode.i = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 3
  %52 = ptrtoint ptr %testmode.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %testmode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp.i = icmp eq i32 %53, 0
  br i1 %cmp.i, label %if.end.if.end4_crit_edge, label %if.end.i51

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.end.i51:                                       ; preds = %if.end
  call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 262144, ptr noundef nonnull @.str.33, i32 noundef %53) #9
  %54 = ptrtoint ptr %testmode.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %testmode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %55)
  %cmp3.i = icmp eq i32 %55, 2
  br i1 %cmp3.i, label %if.then4.i, label %if.else.i

if.then4.i:                                       ; preds = %if.end.i51
  %utf.i = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 67, i32 16, i32 5
  %56 = ptrtoint ptr %utf.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %utf.i, align 4
  %cmp5.i = icmp eq ptr %57, null
  br i1 %cmp5.i, label %if.then6.i, label %if.then4.i.if.end26.i_crit_edge

if.then4.i.if.end26.i_crit_edge:                  ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26.i

if.then6.i:                                       ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ...) @ath6kl_warn(ptr noundef nonnull @.str.34) #9
  br label %ath6kl_fetch_testmode_file.exit.thread

if.else.i:                                        ; preds = %if.end.i51
  %tcmd.i = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 67, i32 16, i32 3
  %58 = ptrtoint ptr %tcmd.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %tcmd.i, align 4
  %cmp15.i = icmp eq ptr %59, null
  br i1 %cmp15.i, label %if.then16.i, label %if.else.i.if.end26.i_crit_edge

if.else.i.if.end26.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26.i

if.then16.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ...) @ath6kl_warn(ptr noundef nonnull @.str.36) #9
  br label %ath6kl_fetch_testmode_file.exit.thread

if.end26.i:                                       ; preds = %if.else.i.if.end26.i_crit_edge, %if.then4.i.if.end26.i_crit_edge
  %.sink55.i = phi ptr [ %57, %if.then4.i.if.end26.i_crit_edge ], [ %59, %if.else.i.if.end26.i_crit_edge ]
  %fw14.i = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 67, i32 16
  %60 = ptrtoint ptr %fw14.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %fw14.i, align 4
  %call25.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %filename.i, i32 noundef 100, ptr noundef nonnull @.str.35, ptr noundef %61, ptr noundef nonnull %.sink55.i) #9
  %flag.i = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 75
  call void @_set_bit(i32 noundef 3, ptr noundef %flag.i) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw_entry.i.i50) #9
  %62 = ptrtoint ptr %fw_entry.i.i50 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw_entry.i.i50, align 4, !annotation !376
  %63 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ar, align 4
  %call.i.i52 = call i32 @request_firmware(ptr noundef nonnull %fw_entry.i.i50, ptr noundef nonnull %filename.i, ptr noundef %64) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i52)
  %tobool.not.i.i53 = icmp eq i32 %call.i.i52, 0
  br i1 %tobool.not.i.i53, label %if.end.i.i57, label %if.end26.i.if.then30.i_crit_edge

if.end26.i.if.then30.i_crit_edge:                 ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then30.i

if.end.i.i57:                                     ; preds = %if.end26.i
  %fw_len.i = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 81
  %fw28.i = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 80
  %65 = ptrtoint ptr %fw_entry.i.i50 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %fw_entry.i.i50, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %66, align 4
  %69 = ptrtoint ptr %fw_len.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %fw_len.i, align 4
  %data.i.i54 = getelementptr inbounds %struct.firmware, ptr %66, i32 0, i32 1
  %70 = ptrtoint ptr %data.i.i54 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %data.i.i54, align 4
  %72 = load i32, ptr %66, align 4
  %call2.i.i55 = call ptr @kmemdup(ptr noundef %71, i32 noundef %72, i32 noundef 3264) #9
  %73 = ptrtoint ptr %fw28.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %call2.i.i55, ptr %fw28.i, align 4
  %cmp.i.i56 = icmp eq ptr %call2.i.i55, null
  %74 = ptrtoint ptr %fw_entry.i.i50 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %fw_entry.i.i50, align 4
  call void @release_firmware(ptr noundef %75) #9
  br i1 %cmp.i.i56, label %if.end.i.i57.if.then30.i_crit_edge, label %ath6kl_get_fw.exit.i58

if.end.i.i57.if.then30.i_crit_edge:               ; preds = %if.end.i.i57
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then30.i

ath6kl_get_fw.exit.i58:                           ; preds = %if.end.i.i57
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw_entry.i.i50) #9
  br label %if.end4

if.then30.i:                                      ; preds = %if.end.i.i57.if.then30.i_crit_edge, %if.end26.i.if.then30.i_crit_edge
  %retval.0.i.ph.i59 = phi i32 [ %call.i.i52, %if.end26.i.if.then30.i_crit_edge ], [ -12, %if.end.i.i57.if.then30.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw_entry.i.i50) #9
  %76 = ptrtoint ptr %testmode.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %testmode.i, align 4
  call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.37, i32 noundef %77, ptr noundef nonnull %filename.i, i32 noundef %retval.0.i.ph.i59) #9
  br label %ath6kl_fetch_testmode_file.exit.thread

ath6kl_fetch_testmode_file.exit.thread:           ; preds = %if.then30.i, %if.then16.i, %if.then6.i
  %retval.0.i60.ph = phi i32 [ -95, %if.then16.i ], [ %retval.0.i.ph.i59, %if.then30.i ], [ -95, %if.then6.i ]
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %filename.i) #9
  br label %cleanup

if.end4:                                          ; preds = %ath6kl_get_fw.exit.i58, %if.end.if.end4_crit_edge
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %filename.i) #9
  %call5 = call fastcc i32 @ath6kl_fetch_fw_apin(ptr noundef %ar, ptr noundef nonnull @.str.7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp eq i32 %call5, 0
  br i1 %cmp, label %if.end4.out_crit_edge, label %if.end7

if.end4.out_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end7:                                          ; preds = %if.end4
  %call8 = call fastcc i32 @ath6kl_fetch_fw_apin(ptr noundef %ar, ptr noundef nonnull @.str.8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp eq i32 %call8, 0
  br i1 %cmp9, label %if.end7.out_crit_edge, label %if.end12

if.end7.out_crit_edge:                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end12:                                         ; preds = %if.end7
  %call13 = call fastcc i32 @ath6kl_fetch_fw_apin(ptr noundef %ar, ptr noundef nonnull @.str.9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp eq i32 %call13, 0
  br i1 %cmp14, label %if.end12.out_crit_edge, label %if.end17

if.end12.out_crit_edge:                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end17:                                         ; preds = %if.end12
  %call18 = call fastcc i32 @ath6kl_fetch_fw_apin(ptr noundef %ar, ptr noundef nonnull @.str.10)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp eq i32 %call18, 0
  br i1 %cmp19, label %if.end17.out_crit_edge, label %if.end22

if.end17.out_crit_edge:                           ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end22:                                         ; preds = %if.end17
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %filename.i.i) #9
  %78 = call ptr @memset(ptr %filename.i.i, i32 255, i32 100)
  %fw_otp.i.i = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 78
  %79 = ptrtoint ptr %fw_otp.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %fw_otp.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %80, null
  br i1 %cmp.not.i.i, label %if.end.i.i62, label %if.end22.if.end.i72_crit_edge

if.end22.if.end.i72_crit_edge:                    ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i72

if.end.i.i62:                                     ; preds = %if.end22
  %otp.i.i = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 67, i32 16, i32 1
  %81 = ptrtoint ptr %otp.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %otp.i.i, align 4
  %cmp1.i.i = icmp eq ptr %82, null
  br i1 %cmp1.i.i, label %if.then2.i.i, label %if.end3.i.i

if.then2.i.i:                                     ; preds = %if.end.i.i62
  call void @__sanitizer_cov_trace_pc() #11
  call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 262144, ptr noundef nonnull @.str.59) #9
  br label %if.end.i72

if.end3.i.i:                                      ; preds = %if.end.i.i62
  %fw.i.i63 = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 67, i32 16
  %83 = ptrtoint ptr %fw.i.i63 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %fw.i.i63, align 4
  %call.i.i64 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %filename.i.i, i32 noundef 100, ptr noundef nonnull @.str.35, ptr noundef %84, ptr noundef nonnull %82) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw_entry.i.i.i61) #9
  %85 = ptrtoint ptr %fw_entry.i.i.i61 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw_entry.i.i.i61, align 4, !annotation !376
  %86 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %ar, align 4
  %call.i.i.i65 = call i32 @request_firmware(ptr noundef nonnull %fw_entry.i.i.i61, ptr noundef nonnull %filename.i.i, ptr noundef %87) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i65)
  %tobool.not.i.i.i66 = icmp eq i32 %call.i.i.i65, 0
  br i1 %tobool.not.i.i.i66, label %if.end.i.i.i70, label %if.end3.i.i.ath6kl_fetch_otp_file.exit.i_crit_edge

if.end3.i.i.ath6kl_fetch_otp_file.exit.i_crit_edge: ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath6kl_fetch_otp_file.exit.i

if.end.i.i.i70:                                   ; preds = %if.end3.i.i
  %fw_otp_len.i.i = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 79
  %88 = ptrtoint ptr %fw_entry.i.i.i61 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %fw_entry.i.i.i61, align 4
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %89, align 4
  %92 = ptrtoint ptr %fw_otp_len.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %fw_otp_len.i.i, align 4
  %data.i.i.i67 = getelementptr inbounds %struct.firmware, ptr %89, i32 0, i32 1
  %93 = ptrtoint ptr %data.i.i.i67 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %data.i.i.i67, align 4
  %95 = load i32, ptr %89, align 4
  %call2.i.i.i68 = call ptr @kmemdup(ptr noundef %94, i32 noundef %95, i32 noundef 3264) #9
  %96 = ptrtoint ptr %fw_otp.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %call2.i.i.i68, ptr %fw_otp.i.i, align 4
  %cmp.i.i.i69 = icmp eq ptr %call2.i.i.i68, null
  %97 = ptrtoint ptr %fw_entry.i.i.i61 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %fw_entry.i.i.i61, align 4
  call void @release_firmware(ptr noundef %98) #9
  br i1 %cmp.i.i.i69, label %if.end.i.i.i70.ath6kl_fetch_otp_file.exit.i_crit_edge, label %ath6kl_get_fw.exit.i.i

if.end.i.i.i70.ath6kl_fetch_otp_file.exit.i_crit_edge: ; preds = %if.end.i.i.i70
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath6kl_fetch_otp_file.exit.i

ath6kl_get_fw.exit.i.i:                           ; preds = %if.end.i.i.i70
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw_entry.i.i.i61) #9
  br label %if.end.i72

ath6kl_fetch_otp_file.exit.i:                     ; preds = %if.end.i.i.i70.ath6kl_fetch_otp_file.exit.i_crit_edge, %if.end3.i.i.ath6kl_fetch_otp_file.exit.i_crit_edge
  %retval.0.i.ph.i.i71 = phi i32 [ %call.i.i.i65, %if.end3.i.i.ath6kl_fetch_otp_file.exit.i_crit_edge ], [ -12, %if.end.i.i.i70.ath6kl_fetch_otp_file.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw_entry.i.i.i61) #9
  call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.60, ptr noundef nonnull %filename.i.i, i32 noundef %retval.0.i.ph.i.i71) #9
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %filename.i.i) #9
  br label %cleanup

if.end.i72:                                       ; preds = %ath6kl_get_fw.exit.i.i, %if.then2.i.i, %if.end22.if.end.i72_crit_edge
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %filename.i.i) #9
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %filename.i24.i) #9
  %99 = call ptr @memset(ptr %filename.i24.i, i32 255, i32 100)
  %fw.i25.i = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 80
  %100 = ptrtoint ptr %fw.i25.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %fw.i25.i, align 4
  %cmp.not.i26.i = icmp eq ptr %101, null
  br i1 %cmp.not.i26.i, label %if.end.i27.i, label %if.end.i72.if.end4.i_crit_edge

if.end.i72.if.end4.i_crit_edge:                   ; preds = %if.end.i72
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.i

if.end.i27.i:                                     ; preds = %if.end.i72
  %fw2.i.i = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 67, i32 16, i32 2
  %102 = ptrtoint ptr %fw2.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %fw2.i.i, align 4
  %cmp3.i.i = icmp eq ptr %103, null
  br i1 %cmp3.i.i, label %do.end.i.i, label %if.end26.i.i, !prof !377

do.end.i.i:                                       ; preds = %if.end.i27.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 861, i32 noundef 9, ptr noundef null) #9
  br label %ath6kl_fetch_fw_file.exit.i

if.end26.i.i:                                     ; preds = %if.end.i27.i
  %fw1.i.i = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 67, i32 16
  %104 = ptrtoint ptr %fw1.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %fw1.i.i, align 4
  %call.i28.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %filename.i24.i, i32 noundef 100, ptr noundef nonnull @.str.35, ptr noundef %105, ptr noundef nonnull %103) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw_entry.i.i23.i) #9
  %106 = ptrtoint ptr %fw_entry.i.i23.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw_entry.i.i23.i, align 4, !annotation !376
  %107 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %ar, align 4
  %call.i.i29.i = call i32 @request_firmware(ptr noundef nonnull %fw_entry.i.i23.i, ptr noundef nonnull %filename.i24.i, ptr noundef %108) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i29.i)
  %tobool.not.i.i30.i = icmp eq i32 %call.i.i29.i, 0
  br i1 %tobool.not.i.i30.i, label %if.end.i.i34.i, label %if.end26.i.i.if.then36.i.i_crit_edge

if.end26.i.i.if.then36.i.i_crit_edge:             ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then36.i.i

if.end.i.i34.i:                                   ; preds = %if.end26.i.i
  %fw_len.i.i = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 81
  %109 = ptrtoint ptr %fw_entry.i.i23.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %fw_entry.i.i23.i, align 4
  %111 = ptrtoint ptr %110 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %110, align 4
  %113 = ptrtoint ptr %fw_len.i.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %112, ptr %fw_len.i.i, align 4
  %data.i.i31.i = getelementptr inbounds %struct.firmware, ptr %110, i32 0, i32 1
  %114 = ptrtoint ptr %data.i.i31.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %data.i.i31.i, align 4
  %116 = load i32, ptr %110, align 4
  %call2.i.i32.i = call ptr @kmemdup(ptr noundef %115, i32 noundef %116, i32 noundef 3264) #9
  %117 = ptrtoint ptr %fw.i25.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %call2.i.i32.i, ptr %fw.i25.i, align 4
  %cmp.i.i33.i = icmp eq ptr %call2.i.i32.i, null
  %118 = ptrtoint ptr %fw_entry.i.i23.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %fw_entry.i.i23.i, align 4
  call void @release_firmware(ptr noundef %119) #9
  br i1 %cmp.i.i33.i, label %if.end.i.i34.i.if.then36.i.i_crit_edge, label %ath6kl_get_fw.exit.i35.i

if.end.i.i34.i.if.then36.i.i_crit_edge:           ; preds = %if.end.i.i34.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then36.i.i

ath6kl_get_fw.exit.i35.i:                         ; preds = %if.end.i.i34.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw_entry.i.i23.i) #9
  br label %if.end4.i

if.then36.i.i:                                    ; preds = %if.end.i.i34.i.if.then36.i.i_crit_edge, %if.end26.i.i.if.then36.i.i_crit_edge
  %retval.0.i.ph.i36.i = phi i32 [ %call.i.i29.i, %if.end26.i.i.if.then36.i.i_crit_edge ], [ -12, %if.end.i.i34.i.if.then36.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw_entry.i.i23.i) #9
  call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.61, ptr noundef nonnull %filename.i24.i, i32 noundef %retval.0.i.ph.i36.i) #9
  br label %ath6kl_fetch_fw_file.exit.i

ath6kl_fetch_fw_file.exit.i:                      ; preds = %if.then36.i.i, %do.end.i.i
  %retval.0.i37.i = phi i32 [ -22, %do.end.i.i ], [ %retval.0.i.ph.i36.i, %if.then36.i.i ]
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %filename.i24.i) #9
  br label %cleanup

if.end4.i:                                        ; preds = %ath6kl_get_fw.exit.i35.i, %if.end.i72.if.end4.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %filename.i24.i) #9
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %filename.i39.i) #9
  %120 = call ptr @memset(ptr %filename.i39.i, i32 255, i32 100)
  %fw_patch.i.i = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 82
  %121 = ptrtoint ptr %fw_patch.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %fw_patch.i.i, align 4
  %cmp.not.i40.i = icmp eq ptr %122, null
  br i1 %cmp.not.i40.i, label %if.end.i42.i, label %if.end4.i.if.end8.i_crit_edge

if.end4.i.if.end8.i_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

if.end.i42.i:                                     ; preds = %if.end4.i
  %patch.i.i = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 67, i32 16, i32 4
  %123 = ptrtoint ptr %patch.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %patch.i.i, align 4
  %cmp1.i41.i = icmp eq ptr %124, null
  br i1 %cmp1.i41.i, label %if.end.i42.i.if.end8.i_crit_edge, label %if.end3.i47.i

if.end.i42.i.if.end8.i_crit_edge:                 ; preds = %if.end.i42.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

if.end3.i47.i:                                    ; preds = %if.end.i42.i
  %fw.i43.i = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 67, i32 16
  %125 = ptrtoint ptr %fw.i43.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %fw.i43.i, align 4
  %call.i44.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %filename.i39.i, i32 noundef 100, ptr noundef nonnull @.str.35, ptr noundef %126, ptr noundef nonnull %124) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw_entry.i.i38.i) #9
  %127 = ptrtoint ptr %fw_entry.i.i38.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw_entry.i.i38.i, align 4, !annotation !376
  %128 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %ar, align 4
  %call.i.i45.i = call i32 @request_firmware(ptr noundef nonnull %fw_entry.i.i38.i, ptr noundef nonnull %filename.i39.i, ptr noundef %129) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i45.i)
  %tobool.not.i.i46.i = icmp eq i32 %call.i.i45.i, 0
  br i1 %tobool.not.i.i46.i, label %if.end.i.i51.i, label %if.end3.i47.i.ath6kl_fetch_patch_file.exit.i_crit_edge

if.end3.i47.i.ath6kl_fetch_patch_file.exit.i_crit_edge: ; preds = %if.end3.i47.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath6kl_fetch_patch_file.exit.i

if.end.i.i51.i:                                   ; preds = %if.end3.i47.i
  %fw_patch_len.i.i = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 83
  %130 = ptrtoint ptr %fw_entry.i.i38.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %fw_entry.i.i38.i, align 4
  %132 = ptrtoint ptr %131 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %131, align 4
  %134 = ptrtoint ptr %fw_patch_len.i.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %133, ptr %fw_patch_len.i.i, align 4
  %data.i.i48.i = getelementptr inbounds %struct.firmware, ptr %131, i32 0, i32 1
  %135 = ptrtoint ptr %data.i.i48.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %data.i.i48.i, align 4
  %137 = load i32, ptr %131, align 4
  %call2.i.i49.i = call ptr @kmemdup(ptr noundef %136, i32 noundef %137, i32 noundef 3264) #9
  %138 = ptrtoint ptr %fw_patch.i.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %call2.i.i49.i, ptr %fw_patch.i.i, align 4
  %cmp.i.i50.i = icmp eq ptr %call2.i.i49.i, null
  %139 = ptrtoint ptr %fw_entry.i.i38.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %fw_entry.i.i38.i, align 4
  call void @release_firmware(ptr noundef %140) #9
  br i1 %cmp.i.i50.i, label %if.end.i.i51.i.ath6kl_fetch_patch_file.exit.i_crit_edge, label %ath6kl_get_fw.exit.i52.i

if.end.i.i51.i.ath6kl_fetch_patch_file.exit.i_crit_edge: ; preds = %if.end.i.i51.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath6kl_fetch_patch_file.exit.i

ath6kl_get_fw.exit.i52.i:                         ; preds = %if.end.i.i51.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw_entry.i.i38.i) #9
  br label %if.end8.i

ath6kl_fetch_patch_file.exit.i:                   ; preds = %if.end.i.i51.i.ath6kl_fetch_patch_file.exit.i_crit_edge, %if.end3.i47.i.ath6kl_fetch_patch_file.exit.i_crit_edge
  %retval.0.i.ph.i53.i = phi i32 [ %call.i.i45.i, %if.end3.i47.i.ath6kl_fetch_patch_file.exit.i_crit_edge ], [ -12, %if.end.i.i51.i.ath6kl_fetch_patch_file.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw_entry.i.i38.i) #9
  call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.62, ptr noundef nonnull %filename.i39.i, i32 noundef %retval.0.i.ph.i53.i) #9
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %filename.i39.i) #9
  br label %cleanup

if.end8.i:                                        ; preds = %ath6kl_get_fw.exit.i52.i, %if.end.i42.i.if.end8.i_crit_edge, %if.end4.i.if.end8.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %filename.i39.i) #9
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %filename.i57.i) #9
  %141 = call ptr @memset(ptr %filename.i57.i, i32 255, i32 100)
  %142 = ptrtoint ptr %testmode.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %testmode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %143)
  %cmp.not.i58.i = icmp eq i32 %143, 2
  br i1 %cmp.not.i58.i, label %if.end.i59.i, label %if.end8.i.if.end26_crit_edge

if.end8.i.if.end26_crit_edge:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.end.i59.i:                                     ; preds = %if.end8.i
  %fw_testscript.i.i = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 84
  %144 = ptrtoint ptr %fw_testscript.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %fw_testscript.i.i, align 4
  %cmp1.not.i.i = icmp eq ptr %145, null
  br i1 %cmp1.not.i.i, label %if.end3.i60.i, label %if.end.i59.i.if.end26_crit_edge

if.end.i59.i.if.end26_crit_edge:                  ; preds = %if.end.i59.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.end3.i60.i:                                    ; preds = %if.end.i59.i
  %testscript.i.i = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 67, i32 16, i32 6
  %146 = ptrtoint ptr %testscript.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %testscript.i.i, align 4
  %cmp4.i.i = icmp eq ptr %147, null
  br i1 %cmp4.i.i, label %if.end3.i60.i.if.end26_crit_edge, label %if.end6.i.i

if.end3.i60.i.if.end26_crit_edge:                 ; preds = %if.end3.i60.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.end6.i.i:                                      ; preds = %if.end3.i60.i
  %fw.i61.i = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 67, i32 16
  %148 = ptrtoint ptr %fw.i61.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %fw.i61.i, align 4
  %call.i62.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %filename.i57.i, i32 noundef 100, ptr noundef nonnull @.str.35, ptr noundef %149, ptr noundef nonnull %147) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw_entry.i.i56.i) #9
  %150 = ptrtoint ptr %fw_entry.i.i56.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw_entry.i.i56.i, align 4, !annotation !376
  %151 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %ar, align 4
  %call.i.i63.i = call i32 @request_firmware(ptr noundef nonnull %fw_entry.i.i56.i, ptr noundef nonnull %filename.i57.i, ptr noundef %152) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i63.i)
  %tobool.not.i.i64.i = icmp eq i32 %call.i.i63.i, 0
  br i1 %tobool.not.i.i64.i, label %if.end.i.i68.i, label %if.end6.i.i.ath6kl_fetch_fw_api1.exit_crit_edge

if.end6.i.i.ath6kl_fetch_fw_api1.exit_crit_edge:  ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath6kl_fetch_fw_api1.exit

if.end.i.i68.i:                                   ; preds = %if.end6.i.i
  %fw_testscript_len.i.i = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 85
  %153 = ptrtoint ptr %fw_entry.i.i56.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %fw_entry.i.i56.i, align 4
  %155 = ptrtoint ptr %154 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %154, align 4
  %157 = ptrtoint ptr %fw_testscript_len.i.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %156, ptr %fw_testscript_len.i.i, align 4
  %data.i.i65.i = getelementptr inbounds %struct.firmware, ptr %154, i32 0, i32 1
  %158 = ptrtoint ptr %data.i.i65.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %data.i.i65.i, align 4
  %160 = load i32, ptr %154, align 4
  %call2.i.i66.i = call ptr @kmemdup(ptr noundef %159, i32 noundef %160, i32 noundef 3264) #9
  %161 = ptrtoint ptr %fw_testscript.i.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr %call2.i.i66.i, ptr %fw_testscript.i.i, align 4
  %cmp.i.i67.i = icmp eq ptr %call2.i.i66.i, null
  %162 = ptrtoint ptr %fw_entry.i.i56.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %fw_entry.i.i56.i, align 4
  call void @release_firmware(ptr noundef %163) #9
  br i1 %cmp.i.i67.i, label %if.end.i.i68.i.ath6kl_fetch_fw_api1.exit_crit_edge, label %ath6kl_get_fw.exit.i69.i

if.end.i.i68.i.ath6kl_fetch_fw_api1.exit_crit_edge: ; preds = %if.end.i.i68.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath6kl_fetch_fw_api1.exit

ath6kl_get_fw.exit.i69.i:                         ; preds = %if.end.i.i68.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw_entry.i.i56.i) #9
  br label %if.end26

ath6kl_fetch_fw_api1.exit:                        ; preds = %if.end.i.i68.i.ath6kl_fetch_fw_api1.exit_crit_edge, %if.end6.i.i.ath6kl_fetch_fw_api1.exit_crit_edge
  %retval.0.i.ph.i70.i = phi i32 [ %call.i.i63.i, %if.end6.i.i.ath6kl_fetch_fw_api1.exit_crit_edge ], [ -12, %if.end.i.i68.i.ath6kl_fetch_fw_api1.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw_entry.i.i56.i) #9
  call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.63, ptr noundef nonnull %filename.i57.i, i32 noundef %retval.0.i.ph.i70.i) #9
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %filename.i57.i) #9
  br label %cleanup

if.end26:                                         ; preds = %ath6kl_get_fw.exit.i69.i, %if.end3.i60.i.if.end26_crit_edge, %if.end.i59.i.if.end26_crit_edge, %if.end8.i.if.end26_crit_edge
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %filename.i57.i) #9
  br label %out

out:                                              ; preds = %if.end26, %if.end17.out_crit_edge, %if.end12.out_crit_edge, %if.end7.out_crit_edge, %if.end4.out_crit_edge
  %.sink = phi i32 [ 1, %if.end26 ], [ 5, %if.end4.out_crit_edge ], [ 4, %if.end7.out_crit_edge ], [ 3, %if.end12.out_crit_edge ], [ 2, %if.end17.out_crit_edge ]
  %fw_api27 = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 86
  %164 = ptrtoint ptr %fw_api27 to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %.sink, ptr %fw_api27, align 4
  call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 262144, ptr noundef nonnull @.str.11, i32 noundef %.sink) #9
  br label %cleanup

cleanup:                                          ; preds = %out, %ath6kl_fetch_fw_api1.exit, %ath6kl_fetch_patch_file.exit.i, %ath6kl_fetch_fw_file.exit.i, %ath6kl_fetch_otp_file.exit.i, %ath6kl_fetch_testmode_file.exit.thread, %if.then40.i, %do.end.i
  %retval.0 = phi i32 [ 0, %out ], [ %retval.0.i.ph.i70.i, %ath6kl_fetch_fw_api1.exit ], [ -22, %do.end.i ], [ %retval.0.i74.ph.i, %if.then40.i ], [ %retval.0.i60.ph, %ath6kl_fetch_testmode_file.exit.thread ], [ %retval.0.i.ph.i53.i, %ath6kl_fetch_patch_file.exit.i ], [ %retval.0.i37.i, %ath6kl_fetch_fw_file.exit.i ], [ %retval.0.i.ph.i.i71, %ath6kl_fetch_otp_file.exit.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ath6kl_fetch_fw_apin(ptr noundef %ar, ptr noundef %name) unnamed_addr #0 align 64 {
entry:
  %fw = alloca ptr, align 4
  %filename = alloca [100 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw) #9
  %0 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw, align 4, !annotation !376
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %filename) #9
  %1 = call ptr @memset(ptr %filename, i32 255, i32 100)
  %fw1 = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 67, i32 16
  %2 = ptrtoint ptr %fw1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fw1, align 4
  %call = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %filename, i32 noundef 100, ptr noundef nonnull @.str.35, ptr noundef %3, ptr noundef %name)
  %4 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ar, align 4
  %call3 = call i32 @request_firmware(ptr noundef nonnull %fw, ptr noundef nonnull %filename, ptr noundef %5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.38, i32 noundef %call3) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fw, align 4
  %data4 = getelementptr inbounds %struct.firmware, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %data4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data4, align 4
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %11)
  %cmp = icmp ult i32 %11, 11
  br i1 %cmp, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.39, i32 noundef %11, i32 noundef 11) #9
  br label %out

if.end6:                                          ; preds = %if.end
  %bcmp = call i32 @bcmp(ptr noundef dereferenceable(11) %9, ptr noundef nonnull dereferenceable(11) @.str.40, i32 11) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp8.not = icmp eq i32 %bcmp, 0
  br i1 %cmp8.not, label %if.end10, label %if.then9

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.41, i32 noundef 11) #9
  br label %out

if.end10:                                         ; preds = %if.end6
  %sub = add i32 %11, -11
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub)
  %cmp11228 = icmp ugt i32 %sub, 8
  br i1 %cmp11228, label %while.body.lr.ph, label %if.end10.out_crit_edge

if.end10.out_crit_edge:                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

while.body.lr.ph:                                 ; preds = %if.end10
  %add.ptr = getelementptr i8, ptr %9, i32 11
  %vif_max = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 17
  %p2p = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 90
  %max_norm_iface = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 18
  %board_addr = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 67, i32 7
  %dataset_patch_addr = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 67, i32 2
  %fw_capabilities = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 87
  %reserved_ram_size = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 67, i32 6
  %fw_patch = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 82
  %fw_patch_len = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 83
  %fw33 = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 80
  %fw_len = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 81
  %fw_otp = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 78
  %fw_otp_len = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 79
  %wiphy = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %sw.epilog.while.body_crit_edge, %while.body.lr.ph
  %data.0230 = phi ptr [ %add.ptr, %while.body.lr.ph ], [ %add.ptr107, %sw.epilog.while.body_crit_edge ]
  %len.0229 = phi i32 [ %sub, %while.body.lr.ph ], [ %sub106, %sw.epilog.while.body_crit_edge ]
  %12 = ptrtoint ptr %data.0230 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %data.0230, align 4
  %14 = call i32 @llvm.bswap.i32(i32 %13) #9
  %len13 = getelementptr inbounds %struct.ath6kl_fw_ie, ptr %data.0230, i32 0, i32 1
  %15 = ptrtoint ptr %len13 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len13, align 4
  %17 = call i32 @llvm.bswap.i32(i32 %16) #9
  %sub15 = add i32 %len.0229, -8
  %add.ptr16 = getelementptr i8, ptr %data.0230, i32 8
  call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 262144, ptr noundef nonnull @.str.42, i32 noundef %14, i32 noundef %17, i32 noundef %17) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %sub15, i32 %17)
  %cmp17 = icmp ult i32 %sub15, %17
  br i1 %cmp17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.43, i32 noundef %sub15, i32 noundef %17, i32 noundef %14) #9
  br label %out

if.end19:                                         ; preds = %while.body
  %18 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.177)
  switch i32 %14, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %sw.bb26
    i32 3, label %sw.bb32
    i32 4, label %sw.bb44
    i32 5, label %sw.bb50
    i32 6, label %sw.bb55
    i32 7, label %sw.bb66
    i32 8, label %sw.bb75
    i32 9, label %sw.bb84
  ]

sw.bb:                                            ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %wiphy, align 4
  %fw_version = getelementptr inbounds %struct.wiphy, ptr %20, i32 0, i32 38
  %add = add i32 %17, 1
  %21 = call i32 @llvm.umin.i32(i32 %add, i32 32)
  %call22 = call i32 @strlcpy(ptr noundef %fw_version, ptr noundef %add.ptr16, i32 noundef %21) #9
  %22 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %wiphy, align 4
  %fw_version24 = getelementptr inbounds %struct.wiphy, ptr %23, i32 0, i32 38
  call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 262144, ptr noundef nonnull @.str.44, ptr noundef %fw_version24) #9
  br label %sw.epilog

sw.bb26:                                          ; preds = %if.end19
  call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 262144, ptr noundef nonnull @.str.45, i32 noundef %17) #9
  %call27 = call ptr @kmemdup(ptr noundef %add.ptr16, i32 noundef %17, i32 noundef 3264) #9
  %24 = ptrtoint ptr %fw_otp to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call27, ptr %fw_otp, align 4
  %cmp29 = icmp eq ptr %call27, null
  br i1 %cmp29, label %if.then30, label %if.end31

if.then30:                                        ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.46) #9
  br label %out

if.end31:                                         ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %fw_otp_len to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %17, ptr %fw_otp_len, align 4
  br label %sw.epilog

sw.bb32:                                          ; preds = %if.end19
  call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 262144, ptr noundef nonnull @.str.47, i32 noundef %17) #9
  %26 = ptrtoint ptr %fw33 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %fw33, align 4
  %cmp34.not = icmp eq ptr %27, null
  br i1 %cmp34.not, label %if.end36, label %sw.bb32.sw.epilog_crit_edge

sw.bb32.sw.epilog_crit_edge:                      ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end36:                                         ; preds = %sw.bb32
  %call37 = call noalias ptr @vmalloc(i32 noundef %17) #13
  %28 = ptrtoint ptr %fw33 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call37, ptr %fw33, align 4
  %cmp40 = icmp eq ptr %call37, null
  br i1 %cmp40, label %if.then41, label %if.end42

if.then41:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.48, i32 noundef %17) #9
  br label %out

if.end42:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  %29 = call ptr @memcpy(ptr %call37, ptr %add.ptr16, i32 %17)
  %30 = ptrtoint ptr %fw_len to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %17, ptr %fw_len, align 4
  br label %sw.epilog

sw.bb44:                                          ; preds = %if.end19
  call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 262144, ptr noundef nonnull @.str.49, i32 noundef %17) #9
  %call45 = call ptr @kmemdup(ptr noundef %add.ptr16, i32 noundef %17, i32 noundef 3264) #9
  %31 = ptrtoint ptr %fw_patch to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call45, ptr %fw_patch, align 4
  %cmp47 = icmp eq ptr %call45, null
  br i1 %cmp47, label %if.then48, label %if.end49

if.then48:                                        ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.50, i32 noundef %17) #9
  br label %out

if.end49:                                         ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %fw_patch_len to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %17, ptr %fw_patch_len, align 4
  br label %sw.epilog

sw.bb50:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  %33 = ptrtoint ptr %add.ptr16 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %add.ptr16, align 4
  %35 = call i32 @llvm.bswap.i32(i32 %34) #9
  %36 = ptrtoint ptr %reserved_ram_size to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %reserved_ram_size, align 4
  call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 262144, ptr noundef nonnull @.str.51, i32 noundef %35) #9
  br label %sw.epilog

sw.bb55:                                          ; preds = %if.end19
  call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 262144, ptr noundef nonnull @.str.52, i32 noundef %17) #9
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %sw.bb55
  %i.0226 = phi i32 [ 0, %sw.bb55 ], [ %inc, %for.inc.for.body_crit_edge ]
  %div215 = lshr i32 %i.0226, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %div215, i32 %17)
  %cmp57 = icmp eq i32 %div215, %17
  br i1 %cmp57, label %for.body.for.end_crit_edge, label %if.end59

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end59:                                         ; preds = %for.body
  %arrayidx = getelementptr i8, ptr %add.ptr16, i32 %div215
  %37 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %38 to i32
  %rem214 = and i32 %i.0226, 7
  %shl = shl nuw nsw i32 1, %rem214
  %and = and i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool60.not = icmp eq i32 %and, 0
  br i1 %tobool60.not, label %if.end59.for.inc_crit_edge, label %if.then61

if.end59.for.inc_crit_edge:                       ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then61:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  %shl.i = shl nuw i32 1, %i.0226
  %div2.i = lshr i32 %i.0226, 5
  %add.ptr.i = getelementptr i32, ptr %fw_capabilities, i32 %div2.i
  %39 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %add.ptr.i, align 4
  %or.i = or i32 %40, %shl.i
  store i32 %or.i, ptr %add.ptr.i, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then61, %if.end59.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0226, 1
  %exitcond.not = icmp eq i32 %inc, 19
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge
  call void @ath6kl_dbg_dump(i32 noundef 262144, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, ptr noundef %fw_capabilities, i32 noundef 4) #9
  br label %sw.epilog

sw.bb66:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %16)
  %cmp67.not = icmp eq i32 %16, 67108864
  br i1 %cmp67.not, label %if.end70, label %sw.bb66.sw.epilog_crit_edge

sw.bb66.sw.epilog_crit_edge:                      ; preds = %sw.bb66
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end70:                                         ; preds = %sw.bb66
  call void @__sanitizer_cov_trace_pc() #11
  %41 = ptrtoint ptr %add.ptr16 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %add.ptr16, align 4
  %43 = call i32 @llvm.bswap.i32(i32 %42) #9
  %44 = ptrtoint ptr %dataset_patch_addr to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %dataset_patch_addr, align 4
  call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 262144, ptr noundef nonnull @.str.55, i32 noundef %43) #9
  br label %sw.epilog

sw.bb75:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %16)
  %cmp76.not = icmp eq i32 %16, 67108864
  br i1 %cmp76.not, label %if.end79, label %sw.bb75.sw.epilog_crit_edge

sw.bb75.sw.epilog_crit_edge:                      ; preds = %sw.bb75
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end79:                                         ; preds = %sw.bb75
  call void @__sanitizer_cov_trace_pc() #11
  %45 = ptrtoint ptr %add.ptr16 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %add.ptr16, align 4
  %47 = call i32 @llvm.bswap.i32(i32 %46) #9
  %48 = ptrtoint ptr %board_addr to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %board_addr, align 4
  call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 262144, ptr noundef nonnull @.str.56, i32 noundef %47) #9
  br label %sw.epilog

sw.bb84:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %16)
  %cmp85.not = icmp eq i32 %16, 67108864
  br i1 %cmp85.not, label %if.end88, label %sw.bb84.sw.epilog_crit_edge

sw.bb84.sw.epilog_crit_edge:                      ; preds = %sw.bb84
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end88:                                         ; preds = %sw.bb84
  %49 = ptrtoint ptr %add.ptr16 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %add.ptr16, align 4
  %51 = call i32 @llvm.bswap.i32(i32 %50) #9
  %52 = call i32 @llvm.umin.i32(i32 %51, i32 3)
  %53 = ptrtoint ptr %vif_max to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %vif_max, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %52)
  %cmp98 = icmp ugt i32 %52, 1
  br i1 %cmp98, label %land.lhs.true, label %if.end88.if.end102_crit_edge

if.end88.if.end102_crit_edge:                     ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end102

land.lhs.true:                                    ; preds = %if.end88
  %54 = ptrtoint ptr %p2p to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %p2p, align 4, !range !375
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool100.not = icmp eq i8 %55, 0
  br i1 %tobool100.not, label %if.then101, label %land.lhs.true.if.end102_crit_edge

land.lhs.true.if.end102_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end102

if.then101:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %56 = ptrtoint ptr %max_norm_iface to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 2, ptr %max_norm_iface, align 4
  br label %if.end102

if.end102:                                        ; preds = %if.then101, %land.lhs.true.if.end102_crit_edge, %if.end88.if.end102_crit_edge
  call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 262144, ptr noundef nonnull @.str.57, i32 noundef %52) #9
  br label %sw.epilog

sw.default:                                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  %57 = ptrtoint ptr %data.0230 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %data.0230, align 4
  %59 = call i32 @llvm.bswap.i32(i32 %58) #9
  call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 262144, ptr noundef nonnull @.str.58, i32 noundef %59) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end102, %sw.bb84.sw.epilog_crit_edge, %if.end79, %sw.bb75.sw.epilog_crit_edge, %if.end70, %sw.bb66.sw.epilog_crit_edge, %for.end, %sw.bb50, %if.end49, %if.end42, %sw.bb32.sw.epilog_crit_edge, %if.end31, %sw.bb
  %sub106 = sub i32 %sub15, %17
  %add.ptr107 = getelementptr i8, ptr %add.ptr16, i32 %17
  %cmp11 = icmp ugt i32 %sub106, 8
  br i1 %cmp11, label %sw.epilog.while.body_crit_edge, label %sw.epilog.out_crit_edge

sw.epilog.out_crit_edge:                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

sw.epilog.while.body_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

out:                                              ; preds = %sw.epilog.out_crit_edge, %if.then48, %if.then41, %if.then30, %if.then18, %if.end10.out_crit_edge, %if.then9, %if.then5
  %ret.0 = phi i32 [ -22, %if.then5 ], [ -22, %if.then9 ], [ -22, %if.then18 ], [ -12, %if.then48 ], [ -12, %if.then41 ], [ -12, %if.then30 ], [ 0, %if.end10.out_crit_edge ], [ 0, %sw.epilog.out_crit_edge ]
  %60 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %61) #9
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then
  %retval.0 = phi i32 [ %call3, %if.then ], [ %ret.0, %out ]
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %filename) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath6kl_init_hw_params(ptr nocapture noundef %ar) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %version = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 25
  %0 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %version, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.178)
  switch i32 %1, label %if.then3 [
    i32 805307268, label %entry.if.end6_crit_edge
    i32 805307778, label %if.end6.fold.split
    i32 805307939, label %if.end6.fold.split41
    i32 805306369, label %if.end6.fold.split42
    i32 805308392, label %if.end6.fold.split43
    i32 835192970, label %if.end6.fold.split44
    i32 835193336, label %if.end6.fold.split45
  ]

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %version, align 4
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.12, i32 noundef %4) #9
  br label %cleanup

if.end6.fold.split:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.end6.fold.split41:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.end6.fold.split42:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.end6.fold.split43:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.end6.fold.split44:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.end6.fold.split45:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.end6:                                          ; preds = %if.end6.fold.split45, %if.end6.fold.split44, %if.end6.fold.split43, %if.end6.fold.split42, %if.end6.fold.split41, %if.end6.fold.split, %entry.if.end6_crit_edge
  %arrayidx.lcssa = phi ptr [ @hw_list, %entry.if.end6_crit_edge ], [ getelementptr inbounds ([7 x %struct.ath6kl_hw], ptr @hw_list, i32 0, i32 1), %if.end6.fold.split ], [ getelementptr inbounds ([7 x %struct.ath6kl_hw], ptr @hw_list, i32 0, i32 2), %if.end6.fold.split41 ], [ getelementptr inbounds ([7 x %struct.ath6kl_hw], ptr @hw_list, i32 0, i32 3), %if.end6.fold.split42 ], [ getelementptr inbounds ([7 x %struct.ath6kl_hw], ptr @hw_list, i32 0, i32 4), %if.end6.fold.split43 ], [ getelementptr inbounds ([7 x %struct.ath6kl_hw], ptr @hw_list, i32 0, i32 5), %if.end6.fold.split44 ], [ getelementptr inbounds ([7 x %struct.ath6kl_hw], ptr @hw_list, i32 0, i32 6), %if.end6.fold.split45 ]
  %hw7 = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 67
  %5 = call ptr @memcpy(ptr %hw7, ptr %arrayidx.lcssa, i32 96)
  %6 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %version, align 4
  %target_type = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 26
  %8 = ptrtoint ptr %target_type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %target_type, align 4
  %dataset_patch_addr = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 67, i32 2
  %10 = ptrtoint ptr %dataset_patch_addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dataset_patch_addr, align 4
  %app_load_addr = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 67, i32 3
  %12 = ptrtoint ptr %app_load_addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %app_load_addr, align 4
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 262144, ptr noundef nonnull @.str.13, i32 noundef %7, i32 noundef %9, i32 noundef %11, i32 noundef %13) #9
  %app_start_override_addr = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 67, i32 4
  %14 = ptrtoint ptr %app_start_override_addr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %app_start_override_addr, align 4
  %board_ext_data_addr = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 67, i32 5
  %16 = ptrtoint ptr %board_ext_data_addr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %board_ext_data_addr, align 4
  %reserved_ram_size = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 67, i32 6
  %18 = ptrtoint ptr %reserved_ram_size to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %reserved_ram_size, align 4
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 262144, ptr noundef nonnull @.str.14, i32 noundef %15, i32 noundef %17, i32 noundef %19) #9
  %refclk_hz = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 67, i32 8
  %20 = ptrtoint ptr %refclk_hz to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %refclk_hz, align 4
  %uarttx_pin = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 67, i32 9
  %22 = ptrtoint ptr %uarttx_pin to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %uarttx_pin, align 4
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 262144, ptr noundef nonnull @.str.15, i32 noundef %21, i32 noundef %23) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then3
  %retval.0 = phi i32 [ -22, %if.then3 ], [ 0, %if.end6 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath6kl_init_hw_start(ptr noundef %ar) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__ath6kl_init_hw_start(ptr noundef %ar)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %state = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 2
  %0 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %state, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__ath6kl_init_hw_start(ptr noundef %ar) unnamed_addr #0 align 64 {
entry:
  %param.i = alloca i32, align 4
  %buf = alloca [200 x i8], align 1
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %buf) #9
  %0 = call ptr @memset(ptr %buf, i32 255, i32 200)
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 262144, ptr noundef nonnull @.str.98) #9
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 64, ptr noundef nonnull @.str.110) #9
  %hif_ops.i = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 5
  %1 = ptrtoint ptr %hif_ops.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hif_ops.i, align 4
  %power_on.i = getelementptr inbounds %struct.ath6kl_hif_ops, ptr %2, i32 0, i32 15
  %3 = ptrtoint ptr %power_on.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %power_on.i, align 4
  %call.i = tail call i32 %4(ptr noundef %ar) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup107_crit_edge

entry.cleanup107_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup107

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @ath6kl_configure_target(ptr noundef %ar)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.err_power_off_crit_edge

if.end.err_power_off_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_power_off

if.end4:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %param.i) #9
  %5 = ptrtoint ptr %param.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %param.i, align 4, !annotation !376
  %target_type.i = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 26
  %6 = ptrtoint ptr %target_type.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %target_type.i, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.179)
  switch i32 %7, label %if.end4.ath6kl_init_upload.exit.thread_crit_edge [
    i32 3, label %if.end4.if.end.i_crit_edge
    i32 5, label %if.end4.if.end.i_crit_edge222
  ]

if.end4.if.end.i_crit_edge222:                    ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.end4.if.end.i_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.end4.ath6kl_init_upload.exit.thread_crit_edge: ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath6kl_init_upload.exit.thread

if.end.i:                                         ; preds = %if.end4.if.end.i_crit_edge, %if.end4.if.end.i_crit_edge222
  %call.i169 = call i32 @ath6kl_bmi_reg_read(ptr noundef %ar, i32 noundef 98496, ptr noundef nonnull %param.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i169)
  %tobool.not.i = icmp eq i32 %call.i169, 0
  br i1 %tobool.not.i, label %if.end4.i, label %if.end.i.ath6kl_init_upload.exit.thread_crit_edge

if.end.i.ath6kl_init_upload.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath6kl_init_upload.exit.thread

if.end4.i:                                        ; preds = %if.end.i
  %9 = ptrtoint ptr %param.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %param.i, align 4
  %or.i = or i32 %10, 8
  store i32 %or.i, ptr %param.i, align 4
  %call5.i = call i32 @ath6kl_bmi_reg_write(ptr noundef %ar, i32 noundef 98496, i32 noundef %or.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %if.end4.i.ath6kl_init_upload.exit.thread_crit_edge

if.end4.i.ath6kl_init_upload.exit.thread_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath6kl_init_upload.exit.thread

if.end8.i:                                        ; preds = %if.end4.i
  %call9.i = call i32 @ath6kl_bmi_reg_read(ptr noundef %ar, i32 noundef 16580, ptr noundef nonnull %param.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.end12.i, label %if.end8.i.ath6kl_init_upload.exit.thread_crit_edge

if.end8.i.ath6kl_init_upload.exit.thread_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath6kl_init_upload.exit.thread

if.end12.i:                                       ; preds = %if.end8.i
  %11 = ptrtoint ptr %param.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %param.i, align 4
  %or13.i = or i32 %12, 1
  store i32 %or13.i, ptr %param.i, align 4
  %call14.i = call i32 @ath6kl_bmi_reg_write(ptr noundef %ar, i32 noundef 16580, i32 noundef %or13.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %if.end17.i, label %if.end12.i.ath6kl_init_upload.exit.thread_crit_edge

if.end12.i.ath6kl_init_upload.exit.thread_crit_edge: ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath6kl_init_upload.exit.thread

if.end17.i:                                       ; preds = %if.end12.i
  call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 2048, ptr noundef nonnull @.str.111, i32 noundef %10, i32 noundef %12) #9
  %13 = ptrtoint ptr %target_type.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %target_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %14)
  %cmp19.not.i = icmp eq i32 %14, 5
  br i1 %cmp19.not.i, label %if.end17.i.if.end29.i_crit_edge, label %if.then20.i

if.end17.i.if.end29.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29.i

if.then20.i:                                      ; preds = %if.end17.i
  %call21.i = call i32 @ath6kl_bmi_reg_write(ptr noundef %ar, i32 noundef 115332, i32 noundef -116375551) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %tobool22.not.i = icmp eq i32 %call21.i, 0
  br i1 %tobool22.not.i, label %if.end24.i, label %if.then20.i.ath6kl_init_upload.exit.thread_crit_edge

if.then20.i.ath6kl_init_upload.exit.thread_crit_edge: ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath6kl_init_upload.exit.thread

if.end24.i:                                       ; preds = %if.then20.i
  %15 = ptrtoint ptr %param.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %param.i, align 4
  %call25.i = call i32 @ath6kl_bmi_reg_write(ptr noundef %ar, i32 noundef 16416, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool26.not.i = icmp eq i32 %call25.i, 0
  br i1 %tobool26.not.i, label %if.end24.i.if.end29.i_crit_edge, label %if.end24.i.ath6kl_init_upload.exit.thread_crit_edge

if.end24.i.ath6kl_init_upload.exit.thread_crit_edge: ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath6kl_init_upload.exit.thread

if.end24.i.if.end29.i_crit_edge:                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.end24.i.if.end29.i_crit_edge, %if.end17.i.if.end29.i_crit_edge
  %16 = ptrtoint ptr %param.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1048576, ptr %param.i, align 4
  %call30.i = call i32 @ath6kl_bmi_reg_write(ptr noundef %ar, i32 noundef 16608, i32 noundef 1048576) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %tobool31.not.i = icmp eq i32 %call30.i, 0
  br i1 %tobool31.not.i, label %if.end33.i, label %if.end29.i.ath6kl_init_upload.exit.thread_crit_edge

if.end29.i.ath6kl_init_upload.exit.thread_crit_edge: ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath6kl_init_upload.exit.thread

if.end33.i:                                       ; preds = %if.end29.i
  %flags.i = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 67, i32 15
  %17 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %18, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool34.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool34.not.i, label %if.end33.i.if.end56.i_crit_edge, label %if.then35.i

if.end33.i.if.end56.i_crit_edge:                  ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56.i

if.then35.i:                                      ; preds = %if.end33.i
  call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.112) #9
  %19 = ptrtoint ptr %param.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 40, ptr %param.i, align 4
  %call36.i = call i32 @ath6kl_bmi_reg_write(ptr noundef %ar, i32 noundef 81996, i32 noundef 40) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i)
  %tobool37.not.i = icmp eq i32 %call36.i, 0
  br i1 %tobool37.not.i, label %if.end39.i, label %if.then35.i.ath6kl_init_upload.exit.thread_crit_edge

if.then35.i.ath6kl_init_upload.exit.thread_crit_edge: ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath6kl_init_upload.exit.thread

if.end39.i:                                       ; preds = %if.then35.i
  %20 = ptrtoint ptr %param.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 32, ptr %param.i, align 4
  %call40.i = call i32 @ath6kl_bmi_reg_write(ptr noundef %ar, i32 noundef 82000, i32 noundef 32) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.i)
  %tobool41.not.i = icmp eq i32 %call40.i, 0
  br i1 %tobool41.not.i, label %if.end43.i, label %if.end39.i.ath6kl_init_upload.exit.thread_crit_edge

if.end39.i.ath6kl_init_upload.exit.thread_crit_edge: ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath6kl_init_upload.exit.thread

if.end43.i:                                       ; preds = %if.end39.i
  %21 = ptrtoint ptr %param.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %param.i, align 4
  %call44.i = call i32 @ath6kl_bmi_reg_write(ptr noundef %ar, i32 noundef 82004, i32 noundef %22) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.i)
  %tobool45.not.i = icmp eq i32 %call44.i, 0
  br i1 %tobool45.not.i, label %if.end47.i, label %if.end43.i.ath6kl_init_upload.exit.thread_crit_edge

if.end43.i.ath6kl_init_upload.exit.thread_crit_edge: ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath6kl_init_upload.exit.thread

if.end47.i:                                       ; preds = %if.end43.i
  %23 = ptrtoint ptr %param.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %param.i, align 4
  %call48.i = call i32 @ath6kl_bmi_reg_write(ptr noundef %ar, i32 noundef 82008, i32 noundef %24) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.i)
  %tobool49.not.i = icmp eq i32 %call48.i, 0
  br i1 %tobool49.not.i, label %if.end51.i, label %if.end47.i.ath6kl_init_upload.exit.thread_crit_edge

if.end47.i.ath6kl_init_upload.exit.thread_crit_edge: ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath6kl_init_upload.exit.thread

if.end51.i:                                       ; preds = %if.end47.i
  %25 = ptrtoint ptr %param.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %param.i, align 4
  %call52.i = call i32 @ath6kl_bmi_reg_write(ptr noundef %ar, i32 noundef 82012, i32 noundef %26) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52.i)
  %tobool53.not.i = icmp eq i32 %call52.i, 0
  br i1 %tobool53.not.i, label %if.end51.i.if.end56.i_crit_edge, label %if.end51.i.ath6kl_init_upload.exit.thread_crit_edge

if.end51.i.ath6kl_init_upload.exit.thread_crit_edge: ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath6kl_init_upload.exit.thread

if.end51.i.if.end56.i_crit_edge:                  ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56.i

if.end56.i:                                       ; preds = %if.end51.i.if.end56.i_crit_edge, %if.end33.i.if.end56.i_crit_edge
  %call57.i = call fastcc i32 @ath6kl_upload_board_file(ptr noundef %ar) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57.i)
  %tobool58.not.i = icmp eq i32 %call57.i, 0
  br i1 %tobool58.not.i, label %if.end60.i, label %if.end56.i.ath6kl_init_upload.exit.thread_crit_edge

if.end56.i.ath6kl_init_upload.exit.thread_crit_edge: ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath6kl_init_upload.exit.thread

if.end60.i:                                       ; preds = %if.end56.i
  %call61.i = call fastcc i32 @ath6kl_upload_otp(ptr noundef %ar) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61.i)
  %tobool62.not.i = icmp eq i32 %call61.i, 0
  br i1 %tobool62.not.i, label %if.end64.i, label %if.end60.i.ath6kl_init_upload.exit.thread_crit_edge

if.end60.i.ath6kl_init_upload.exit.thread_crit_edge: ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath6kl_init_upload.exit.thread

if.end64.i:                                       ; preds = %if.end60.i
  %call65.i = call fastcc i32 @ath6kl_upload_firmware(ptr noundef %ar) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65.i)
  %tobool66.not.i = icmp eq i32 %call65.i, 0
  br i1 %tobool66.not.i, label %if.end68.i, label %if.end64.i.ath6kl_init_upload.exit.thread_crit_edge

if.end64.i.ath6kl_init_upload.exit.thread_crit_edge: ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath6kl_init_upload.exit.thread

if.end68.i:                                       ; preds = %if.end64.i
  %call69.i = call fastcc i32 @ath6kl_upload_patch(ptr noundef %ar) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69.i)
  %tobool70.not.i = icmp eq i32 %call69.i, 0
  br i1 %tobool70.not.i, label %if.end72.i, label %if.end68.i.ath6kl_init_upload.exit.thread_crit_edge

if.end68.i.ath6kl_init_upload.exit.thread_crit_edge: ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath6kl_init_upload.exit.thread

if.end72.i:                                       ; preds = %if.end68.i
  %call73.i = call fastcc i32 @ath6kl_upload_testscript(ptr noundef %ar) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73.i)
  %tobool74.not.i = icmp eq i32 %call73.i, 0
  br i1 %tobool74.not.i, label %if.end76.i, label %if.end72.i.ath6kl_init_upload.exit.thread_crit_edge

if.end72.i.ath6kl_init_upload.exit.thread_crit_edge: ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath6kl_init_upload.exit.thread

if.end76.i:                                       ; preds = %if.end72.i
  %call77.i = call i32 @ath6kl_bmi_reg_write(ptr noundef %ar, i32 noundef 16580, i32 noundef %12) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77.i)
  %tobool78.not.i = icmp eq i32 %call77.i, 0
  br i1 %tobool78.not.i, label %ath6kl_init_upload.exit, label %if.end76.i.ath6kl_init_upload.exit.thread_crit_edge

if.end76.i.ath6kl_init_upload.exit.thread_crit_edge: ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath6kl_init_upload.exit.thread

ath6kl_init_upload.exit.thread:                   ; preds = %if.end76.i.ath6kl_init_upload.exit.thread_crit_edge, %if.end72.i.ath6kl_init_upload.exit.thread_crit_edge, %if.end68.i.ath6kl_init_upload.exit.thread_crit_edge, %if.end64.i.ath6kl_init_upload.exit.thread_crit_edge, %if.end60.i.ath6kl_init_upload.exit.thread_crit_edge, %if.end56.i.ath6kl_init_upload.exit.thread_crit_edge, %if.end51.i.ath6kl_init_upload.exit.thread_crit_edge, %if.end47.i.ath6kl_init_upload.exit.thread_crit_edge, %if.end43.i.ath6kl_init_upload.exit.thread_crit_edge, %if.end39.i.ath6kl_init_upload.exit.thread_crit_edge, %if.then35.i.ath6kl_init_upload.exit.thread_crit_edge, %if.end29.i.ath6kl_init_upload.exit.thread_crit_edge, %if.end24.i.ath6kl_init_upload.exit.thread_crit_edge, %if.then20.i.ath6kl_init_upload.exit.thread_crit_edge, %if.end12.i.ath6kl_init_upload.exit.thread_crit_edge, %if.end8.i.ath6kl_init_upload.exit.thread_crit_edge, %if.end4.i.ath6kl_init_upload.exit.thread_crit_edge, %if.end.i.ath6kl_init_upload.exit.thread_crit_edge, %if.end4.ath6kl_init_upload.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call77.i, %if.end76.i.ath6kl_init_upload.exit.thread_crit_edge ], [ %call73.i, %if.end72.i.ath6kl_init_upload.exit.thread_crit_edge ], [ %call69.i, %if.end68.i.ath6kl_init_upload.exit.thread_crit_edge ], [ %call65.i, %if.end64.i.ath6kl_init_upload.exit.thread_crit_edge ], [ %call61.i, %if.end60.i.ath6kl_init_upload.exit.thread_crit_edge ], [ %call57.i, %if.end56.i.ath6kl_init_upload.exit.thread_crit_edge ], [ %call52.i, %if.end51.i.ath6kl_init_upload.exit.thread_crit_edge ], [ %call48.i, %if.end47.i.ath6kl_init_upload.exit.thread_crit_edge ], [ %call44.i, %if.end43.i.ath6kl_init_upload.exit.thread_crit_edge ], [ %call40.i, %if.end39.i.ath6kl_init_upload.exit.thread_crit_edge ], [ %call36.i, %if.then35.i.ath6kl_init_upload.exit.thread_crit_edge ], [ %call30.i, %if.end29.i.ath6kl_init_upload.exit.thread_crit_edge ], [ %call25.i, %if.end24.i.ath6kl_init_upload.exit.thread_crit_edge ], [ %call21.i, %if.then20.i.ath6kl_init_upload.exit.thread_crit_edge ], [ %call14.i, %if.end12.i.ath6kl_init_upload.exit.thread_crit_edge ], [ %call9.i, %if.end8.i.ath6kl_init_upload.exit.thread_crit_edge ], [ %call5.i, %if.end4.i.ath6kl_init_upload.exit.thread_crit_edge ], [ %call.i169, %if.end.i.ath6kl_init_upload.exit.thread_crit_edge ], [ -22, %if.end4.ath6kl_init_upload.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %param.i) #9
  br label %err_power_off

ath6kl_init_upload.exit:                          ; preds = %if.end76.i
  %or81.i = or i32 %10, 32
  %27 = ptrtoint ptr %param.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or81.i, ptr %param.i, align 4
  %call82.i = call i32 @ath6kl_bmi_reg_write(ptr noundef %ar, i32 noundef 98496, i32 noundef %or81.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %param.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82.i)
  %tobool6.not = icmp eq i32 %call82.i, 0
  br i1 %tobool6.not, label %if.end8, label %ath6kl_init_upload.exit.err_power_off_crit_edge

ath6kl_init_upload.exit.err_power_off_crit_edge:  ; preds = %ath6kl_init_upload.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_power_off

if.end8:                                          ; preds = %ath6kl_init_upload.exit
  %call9 = call i32 @ath6kl_bmi_done(ptr noundef %ar) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.err_power_off_crit_edge

if.end8.err_power_off_crit_edge:                  ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_power_off

if.end12:                                         ; preds = %if.end8
  %htc_target = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 10
  %28 = ptrtoint ptr %htc_target to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %htc_target, align 4
  %dev.i = getelementptr inbounds %struct.htc_target, ptr %29, i32 0, i32 10
  %30 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev.i, align 4
  %ar.i = getelementptr inbounds %struct.ath6kl_device, ptr %31, i32 0, i32 4
  %32 = ptrtoint ptr %ar.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ar.i, align 4
  %htc_ops.i = getelementptr inbounds %struct.ath6kl, ptr %33, i32 0, i32 6
  %34 = ptrtoint ptr %htc_ops.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %htc_ops.i, align 4
  %wait_target.i = getelementptr inbounds %struct.ath6kl_htc_ops, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %wait_target.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %wait_target.i, align 4
  %call.i170 = call i32 %37(ptr noundef %29) #9
  %38 = zext i32 %call.i170 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.180)
  switch i32 %call.i170, label %if.then17 [
    i32 -110, label %if.then14
    i32 0, label %if.end19
  ]

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ...) @ath6kl_warn(ptr noundef nonnull @.str.99) #9
  call fastcc void @ath6kl_init_hw_reset(ptr noundef %ar)
  br label %err_power_off

if.then17:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.100, i32 noundef %call.i170) #9
  br label %err_power_off

if.end19:                                         ; preds = %if.end12
  %call20 = call fastcc i32 @ath6kl_init_service_ep(ptr noundef %ar)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.then22

if.then22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.101, i32 noundef %call20) #9
  br label %err_cleanup_scatter

if.end23:                                         ; preds = %if.end19
  %39 = ptrtoint ptr %htc_target to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %htc_target, align 4
  %credit_state_info = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 43
  %dev.i171 = getelementptr inbounds %struct.htc_target, ptr %40, i32 0, i32 10
  %41 = ptrtoint ptr %dev.i171 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev.i171, align 4
  %ar.i172 = getelementptr inbounds %struct.ath6kl_device, ptr %42, i32 0, i32 4
  %43 = ptrtoint ptr %ar.i172 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ar.i172, align 4
  %htc_ops.i173 = getelementptr inbounds %struct.ath6kl, ptr %44, i32 0, i32 6
  %45 = ptrtoint ptr %htc_ops.i173 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %htc_ops.i173, align 4
  %credit_setup.i = getelementptr inbounds %struct.ath6kl_htc_ops, ptr %46, i32 0, i32 12
  %47 = ptrtoint ptr %credit_setup.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %credit_setup.i, align 4
  %call.i174 = call i32 %48(ptr noundef %40, ptr noundef %credit_state_info) #9
  %49 = ptrtoint ptr %htc_target to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %htc_target, align 4
  %dev.i175 = getelementptr inbounds %struct.htc_target, ptr %50, i32 0, i32 10
  %51 = ptrtoint ptr %dev.i175 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev.i175, align 4
  %ar.i176 = getelementptr inbounds %struct.ath6kl_device, ptr %52, i32 0, i32 4
  %53 = ptrtoint ptr %ar.i176 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ar.i176, align 4
  %htc_ops.i177 = getelementptr inbounds %struct.ath6kl, ptr %54, i32 0, i32 6
  %55 = ptrtoint ptr %htc_ops.i177 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %htc_ops.i177, align 4
  %start.i = getelementptr inbounds %struct.ath6kl_htc_ops, ptr %56, i32 0, i32 2
  %57 = ptrtoint ptr %start.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %start.i, align 4
  %call.i178 = call i32 %58(ptr noundef %50) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i178)
  %tobool28.not = icmp eq i32 %call.i178, 0
  br i1 %tobool28.not, label %if.end30, label %if.then29

if.then29:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  call void @ath6kl_cookie_cleanup(ptr noundef %ar) #9
  br label %err_cleanup_scatter

if.end30:                                         ; preds = %if.end23
  call void @__might_sleep(ptr noundef nonnull @.str.23, i32 noundef 1774) #9
  %flag = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 75
  %59 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %flag, align 4
  %61 = and i32 %60, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool35.not = icmp eq i32 %61, 0
  br i1 %tobool35.not, label %if.then43, label %if.end30.if.end77_crit_edge

if.end30.if.end77_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end77

if.then43:                                        ; preds = %if.end30
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #9
  %62 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #9
  %event_wq = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 72
  %call45199 = call i32 @prepare_to_wait_event(ptr noundef %event_wq, ptr noundef nonnull %__wq_entry, i32 noundef 1) #9
  %63 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %flag, align 4
  %65 = and i32 %64, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool49.not200.not = icmp eq i32 %65, 0
  br i1 %tobool49.not200.not, label %if.then43.if.end65_crit_edge, label %if.then43.for.end_crit_edge

if.then43.for.end_crit_edge:                      ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.then43.if.end65_crit_edge:                     ; preds = %if.then43
  br label %if.end65

if.end65:                                         ; preds = %cleanup.if.end65_crit_edge, %if.then43.if.end65_crit_edge
  %__ret44.1203 = phi i32 [ %__ret44.1, %cleanup.if.end65_crit_edge ], [ 200, %if.then43.if.end65_crit_edge ]
  %call45202 = phi i32 [ %call45, %cleanup.if.end65_crit_edge ], [ %call45199, %if.then43.if.end65_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45202)
  %tobool66.not = icmp eq i32 %call45202, 0
  br i1 %tobool66.not, label %cleanup, label %if.end65.if.end72_crit_edge

if.end65.if.end72_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end72

cleanup:                                          ; preds = %if.end65
  %call69 = call i32 @schedule_timeout(i32 noundef %__ret44.1203) #9
  %call45 = call i32 @prepare_to_wait_event(ptr noundef %event_wq, ptr noundef nonnull %__wq_entry, i32 noundef 1) #9
  %66 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %flag, align 4
  %68 = and i32 %67, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool49.not = icmp eq i32 %68, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool53.not = icmp eq i32 %call69, 0
  %spec.store.select111 = select i1 %tobool53.not, i32 1, i32 %call69
  %__ret44.1 = select i1 %tobool49.not, i32 %call69, i32 %spec.store.select111
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret44.1)
  %tobool59.not = icmp eq i32 %__ret44.1, 0
  %not.tobool49.not = xor i1 %tobool49.not, true
  %69 = select i1 %not.tobool49.not, i1 true, i1 %tobool59.not
  br i1 %69, label %cleanup.for.end_crit_edge, label %cleanup.if.end65_crit_edge

cleanup.if.end65_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end65

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then43.for.end_crit_edge
  %__ret44.1.lcssa = phi i32 [ 200, %if.then43.for.end_crit_edge ], [ %__ret44.1, %cleanup.for.end_crit_edge ]
  call void @finish_wait(ptr noundef %event_wq, ptr noundef nonnull %__wq_entry) #9
  br label %if.end72

if.end72:                                         ; preds = %for.end, %if.end65.if.end72_crit_edge
  %__ret44.2189 = phi i32 [ %__ret44.1.lcssa, %for.end ], [ %call45202, %if.end65.if.end72_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %__ret44.2189)
  %cmp74 = icmp slt i32 %__ret44.2189, 1
  br i1 %cmp74, label %if.then75, label %if.end72.if.end77_crit_edge

if.end72.if.end77_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end77

if.then75:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #11
  call void @_clear_bit(i32 noundef 1, ptr noundef %flag) #9
  call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.102, i32 noundef %__ret44.2189) #9
  br label %err_htc_stop

if.end77:                                         ; preds = %if.end72.if.end77_crit_edge, %if.end30.if.end77_crit_edge
  call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 262144, ptr noundef nonnull @.str.103) #9
  %call79 = call i32 @_test_and_clear_bit(i32 noundef 7, ptr noundef %flag) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %if.end77.if.end88_crit_edge, label %if.then81

if.end77.if.end88_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end88

if.then81:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 67, i32 1
  %70 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %name, align 4
  %hif_type = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 11
  %72 = ptrtoint ptr %hif_type to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %hif_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %73)
  %switch.selectcmp.i = icmp eq i32 %73, 1
  %switch.select.i = select i1 %switch.selectcmp.i, ptr @.str.140, ptr null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %switch.selectcmp2.i = icmp eq i32 %73, 0
  %switch.select3.i = select i1 %switch.selectcmp2.i, ptr @.str.139, ptr %switch.select.i
  %wiphy = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 1
  %74 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %wiphy, align 4
  %fw_version = getelementptr inbounds %struct.wiphy, ptr %75, i32 0, i32 38
  %fw_api = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 86
  %76 = ptrtoint ptr %fw_api to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %fw_api, align 4
  %78 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile i32, ptr %flag, align 4
  %80 = and i32 %79, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool85.not = icmp eq i32 %80, 0
  %cond = select i1 %tobool85.not, ptr @.str.54, ptr @.str.105
  call void (ptr, ...) @ath6kl_info(ptr noundef nonnull @.str.104, ptr noundef %71, ptr noundef %switch.select3.i, ptr noundef %fw_version, i32 noundef %77, ptr noundef nonnull %cond) #9
  call fastcc void @ath6kl_init_get_fwcaps(ptr noundef %ar, ptr noundef nonnull %buf)
  call void (ptr, ...) @ath6kl_info(ptr noundef nonnull @.str.106, ptr noundef nonnull %buf) #9
  br label %if.end88

if.end88:                                         ; preds = %if.then81, %if.end77.if.end88_crit_edge
  %abi_ver = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 25, i32 2
  %81 = ptrtoint ptr %abi_ver to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %abi_ver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %82)
  %cmp89.not = icmp eq i32 %82, 1
  br i1 %cmp89.not, label %if.end93, label %if.then90

if.then90:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.107, i32 noundef 1, i32 noundef %82) #9
  br label %err_htc_stop

if.end93:                                         ; preds = %if.end88
  call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 2048, ptr noundef nonnull @.str.108, ptr noundef nonnull @__func__.__ath6kl_init_hw_start) #9
  %call94 = call fastcc i32 @ath6kl_set_host_app_area(ptr noundef %ar)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %cmp95.not = icmp eq i32 %call94, 0
  br i1 %cmp95.not, label %if.end93.if.end97_crit_edge, label %if.then96

if.end93.if.end97_crit_edge:                      ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end97

if.then96:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.109) #9
  br label %if.end97

if.end97:                                         ; preds = %if.then96, %if.end93.if.end97_crit_edge
  %vif_max = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 17
  %83 = ptrtoint ptr %vif_max to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %vif_max, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %cmp99205.not = icmp eq i32 %84, 0
  br i1 %cmp99205.not, label %if.end97.cleanup107_crit_edge, label %if.end97.for.body_crit_edge

if.end97.for.body_crit_edge:                      ; preds = %if.end97
  br label %for.body

if.end97.cleanup107_crit_edge:                    ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup107

for.cond98:                                       ; preds = %for.body
  %inc = add nuw i32 %i.0206, 1
  %85 = ptrtoint ptr %vif_max to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %vif_max, align 4
  %cmp99 = icmp ult i32 %inc, %86
  br i1 %cmp99, label %for.cond98.for.body_crit_edge, label %for.cond98.cleanup107_crit_edge

for.cond98.cleanup107_crit_edge:                  ; preds = %for.cond98
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup107

for.cond98.for.body_crit_edge:                    ; preds = %for.cond98
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body:                                         ; preds = %for.cond98.for.body_crit_edge, %if.end97.for.body_crit_edge
  %i.0206 = phi i32 [ %inc, %for.cond98.for.body_crit_edge ], [ 0, %if.end97.for.body_crit_edge ]
  %call100 = call fastcc i32 @ath6kl_target_config_wlan_params(ptr noundef %ar, i32 noundef %i.0206)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %tobool101.not = icmp eq i32 %call100, 0
  br i1 %tobool101.not, label %for.cond98, label %for.body.err_htc_stop_crit_edge

for.body.err_htc_stop_crit_edge:                  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_htc_stop

err_htc_stop:                                     ; preds = %for.body.err_htc_stop_crit_edge, %if.then90, %if.then75
  %ret.0 = phi i32 [ -5, %if.then75 ], [ -5, %if.then90 ], [ %call100, %for.body.err_htc_stop_crit_edge ]
  %87 = ptrtoint ptr %htc_target to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %htc_target, align 4
  %dev.i179 = getelementptr inbounds %struct.htc_target, ptr %88, i32 0, i32 10
  %89 = ptrtoint ptr %dev.i179 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %dev.i179, align 4
  %ar.i180 = getelementptr inbounds %struct.ath6kl_device, ptr %90, i32 0, i32 4
  %91 = ptrtoint ptr %ar.i180 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %ar.i180, align 4
  %htc_ops.i181 = getelementptr inbounds %struct.ath6kl, ptr %92, i32 0, i32 6
  %93 = ptrtoint ptr %htc_ops.i181 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %htc_ops.i181, align 4
  %stop.i = getelementptr inbounds %struct.ath6kl_htc_ops, ptr %94, i32 0, i32 5
  %95 = ptrtoint ptr %stop.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %stop.i, align 4
  call void %96(ptr noundef %88) #9
  br label %err_cleanup_scatter

err_cleanup_scatter:                              ; preds = %err_htc_stop, %if.then29, %if.then22
  %ret.1 = phi i32 [ %call20, %if.then22 ], [ %call.i178, %if.then29 ], [ %ret.0, %err_htc_stop ]
  %97 = ptrtoint ptr %hif_ops.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %hif_ops.i, align 4
  %cleanup_scatter.i = getelementptr inbounds %struct.ath6kl_hif_ops, ptr %98, i32 0, i32 8
  %99 = ptrtoint ptr %cleanup_scatter.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %cleanup_scatter.i, align 4
  call void %100(ptr noundef %ar) #9
  br label %err_power_off

err_power_off:                                    ; preds = %err_cleanup_scatter, %if.then17, %if.then14, %if.end8.err_power_off_crit_edge, %ath6kl_init_upload.exit.err_power_off_crit_edge, %ath6kl_init_upload.exit.thread, %if.end.err_power_off_crit_edge
  %ret.2 = phi i32 [ %call1, %if.end.err_power_off_crit_edge ], [ %call82.i, %ath6kl_init_upload.exit.err_power_off_crit_edge ], [ %call9, %if.end8.err_power_off_crit_edge ], [ -110, %if.then14 ], [ %call.i170, %if.then17 ], [ %ret.1, %err_cleanup_scatter ], [ %retval.0.i.ph, %ath6kl_init_upload.exit.thread ]
  call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 64, ptr noundef nonnull @.str.172) #9
  %101 = ptrtoint ptr %hif_ops.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %hif_ops.i, align 4
  %power_off.i = getelementptr inbounds %struct.ath6kl_hif_ops, ptr %102, i32 0, i32 16
  %103 = ptrtoint ptr %power_off.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %power_off.i, align 4
  %call.i184 = call i32 %104(ptr noundef %ar) #9
  br label %cleanup107

cleanup107:                                       ; preds = %err_power_off, %for.cond98.cleanup107_crit_edge, %if.end97.cleanup107_crit_edge, %entry.cleanup107_crit_edge
  %retval.0 = phi i32 [ %ret.2, %err_power_off ], [ %call.i, %entry.cleanup107_crit_edge ], [ 0, %if.end97.cleanup107_crit_edge ], [ 0, %for.cond98.cleanup107_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %buf) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath6kl_init_hw_stop(ptr noundef %ar) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @__ath6kl_init_hw_stop(ptr noundef %ar)
  %state = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 2
  %0 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %state, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__ath6kl_init_hw_stop(ptr noundef %ar) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 262144, ptr noundef nonnull @.str.173) #9
  %htc_target = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 10
  %0 = ptrtoint ptr %htc_target to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %htc_target, align 4
  %dev.i = getelementptr inbounds %struct.htc_target, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %ar.i = getelementptr inbounds %struct.ath6kl_device, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %ar.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ar.i, align 4
  %htc_ops.i = getelementptr inbounds %struct.ath6kl, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %htc_ops.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %htc_ops.i, align 4
  %stop.i = getelementptr inbounds %struct.ath6kl_htc_ops, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %stop.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stop.i, align 4
  tail call void %9(ptr noundef %1) #9
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 64, ptr noundef nonnull @.str.175) #9
  %hif_ops.i = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 5
  %10 = ptrtoint ptr %hif_ops.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hif_ops.i, align 4
  %stop.i1 = getelementptr inbounds %struct.ath6kl_hif_ops, ptr %11, i32 0, i32 17
  %12 = ptrtoint ptr %stop.i1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stop.i1, align 4
  tail call void %13(ptr noundef %ar) #9
  tail call void @ath6kl_bmi_reset(ptr noundef %ar) #9
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 64, ptr noundef nonnull @.str.172) #9
  %14 = ptrtoint ptr %hif_ops.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hif_ops.i, align 4
  %power_off.i = getelementptr inbounds %struct.ath6kl_hif_ops, ptr %15, i32 0, i32 16
  %16 = ptrtoint ptr %power_off.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %power_off.i, align 4
  %call.i = tail call i32 %17(ptr noundef %ar) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @ath6kl_warn(ptr noundef nonnull @.str.174, i32 noundef %call.i) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath6kl_init_hw_restart(ptr noundef %ar) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %flag = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 75
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %flag) #9
  tail call void @ath6kl_cfg80211_stop_all(ptr noundef %ar) #9
  tail call fastcc void @__ath6kl_init_hw_stop(ptr noundef %ar)
  %call1 = tail call fastcc i32 @__ath6kl_init_hw_start(ptr noundef %ar)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %entry.if.end4_crit_edge, label %if.then3

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.then3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 8388608, ptr noundef nonnull @.str.17) #9
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %entry.if.end4_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath6kl_cfg80211_stop_all(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath6kl_stop_txrx(ptr noundef %ar) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %flag = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 75
  tail call void @_set_bit(i32 noundef 4, ptr noundef %flag) #9
  %sem = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 22
  %call = tail call i32 @down_interruptible(ptr noundef %sem) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.body.preheader, label %if.then

for.body.preheader:                               ; preds = %entry
  %aggr_conn = getelementptr %struct.ath6kl, ptr %ar, i32 0, i32 48, i32 0, i32 13
  %0 = ptrtoint ptr %aggr_conn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aggr_conn, align 4
  tail call void @aggr_reset_state(ptr noundef %1) #9
  %aggr_conn.1 = getelementptr %struct.ath6kl, ptr %ar, i32 0, i32 48, i32 1, i32 13
  %2 = ptrtoint ptr %aggr_conn.1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %aggr_conn.1, align 4
  tail call void @aggr_reset_state(ptr noundef %3) #9
  %aggr_conn.2 = getelementptr %struct.ath6kl, ptr %ar, i32 0, i32 48, i32 2, i32 13
  %4 = ptrtoint ptr %aggr_conn.2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %aggr_conn.2, align 4
  tail call void @aggr_reset_state(ptr noundef %5) #9
  %aggr_conn.3 = getelementptr %struct.ath6kl, ptr %ar, i32 0, i32 48, i32 3, i32 13
  %6 = ptrtoint ptr %aggr_conn.3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %aggr_conn.3, align 4
  tail call void @aggr_reset_state(ptr noundef %7) #9
  %aggr_conn.4 = getelementptr %struct.ath6kl, ptr %ar, i32 0, i32 48, i32 4, i32 13
  %8 = ptrtoint ptr %aggr_conn.4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %aggr_conn.4, align 4
  tail call void @aggr_reset_state(ptr noundef %9) #9
  %aggr_conn.5 = getelementptr %struct.ath6kl, ptr %ar, i32 0, i32 48, i32 5, i32 13
  %10 = ptrtoint ptr %aggr_conn.5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %aggr_conn.5, align 4
  tail call void @aggr_reset_state(ptr noundef %11) #9
  %aggr_conn.6 = getelementptr %struct.ath6kl, ptr %ar, i32 0, i32 48, i32 6, i32 13
  %12 = ptrtoint ptr %aggr_conn.6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %aggr_conn.6, align 4
  tail call void @aggr_reset_state(ptr noundef %13) #9
  %aggr_conn.7 = getelementptr %struct.ath6kl, ptr %ar, i32 0, i32 48, i32 7, i32 13
  %14 = ptrtoint ptr %aggr_conn.7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %aggr_conn.7, align 4
  tail call void @aggr_reset_state(ptr noundef %15) #9
  %aggr_conn.8 = getelementptr %struct.ath6kl, ptr %ar, i32 0, i32 48, i32 8, i32 13
  %16 = ptrtoint ptr %aggr_conn.8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %aggr_conn.8, align 4
  tail call void @aggr_reset_state(ptr noundef %17) #9
  %aggr_conn.9 = getelementptr %struct.ath6kl, ptr %ar, i32 0, i32 48, i32 9, i32 13
  %18 = ptrtoint ptr %aggr_conn.9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %aggr_conn.9, align 4
  tail call void @aggr_reset_state(ptr noundef %19) #9
  %list_lock = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 14
  tail call void @_raw_spin_lock_bh(ptr noundef %list_lock) #9
  %vif_list = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 13
  %20 = ptrtoint ptr %vif_list to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %vif_list, align 4
  %cmp8.not68 = icmp eq ptr %21, %vif_list
  br i1 %cmp8.not68, label %for.body.preheader.for.end23_crit_edge, label %for.body9.lr.ph

for.body.preheader.for.end23_crit_edge:           ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end23

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.18) #9
  br label %cleanup

for.body9.lr.ph:                                  ; preds = %for.body.preheader
  %wiphy = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 1
  br label %for.body9

for.body9:                                        ; preds = %list_del.exit.for.body9_crit_edge, %for.body9.lr.ph
  %vif.069 = phi ptr [ %21, %for.body9.lr.ph ], [ %tmp_vif.0, %list_del.exit.for.body9_crit_edge ]
  %22 = ptrtoint ptr %vif.069 to i32
  call void @__asan_load4_noabort(i32 %22)
  %tmp_vif.0 = load ptr, ptr %vif.069, align 8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %vif.069) #9
  br i1 %call.i.i, label %if.end.i.i, label %for.body9.list_del.exit_crit_edge

for.body9.list_del.exit_crit_edge:                ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %vif.069, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev.i.i, align 4
  %25 = ptrtoint ptr %vif.069 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %vif.069, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %prev1.i.i.i, align 4
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %26, ptr %24, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body9.list_del.exit_crit_edge
  %29 = ptrtoint ptr %vif.069 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr inttoptr (i32 256 to ptr), ptr %vif.069, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %vif.069, i32 0, i32 1
  %30 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %list_lock) #9
  %31 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %flag, align 4
  %33 = and i32 %32, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool14 = icmp ne i32 %33, 0
  tail call void @ath6kl_cfg80211_vif_stop(ptr noundef %vif.069, i1 noundef zeroext %tobool14) #9
  tail call void @rtnl_lock() #9
  %34 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %wiphy, align 4
  tail call void @mutex_lock_nested(ptr noundef %35, i32 noundef 0) #9
  tail call void @ath6kl_cfg80211_vif_cleanup(ptr noundef %vif.069) #9
  %36 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %wiphy, align 4
  tail call void @mutex_unlock(ptr noundef %37) #9
  tail call void @rtnl_unlock() #9
  tail call void @_raw_spin_lock_bh(ptr noundef %list_lock) #9
  %cmp8.not = icmp eq ptr %tmp_vif.0, %vif_list
  br i1 %cmp8.not, label %list_del.exit.for.end23_crit_edge, label %list_del.exit.for.body9_crit_edge

list_del.exit.for.body9_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body9

list_del.exit.for.end23_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end23

for.end23:                                        ; preds = %list_del.exit.for.end23_crit_edge, %for.body.preheader.for.end23_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %list_lock) #9
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %flag) #9
  %enable = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 93, i32 7
  %38 = ptrtoint ptr %enable to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %enable, align 2, !range !375
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool26.not = icmp eq i8 %39, 0
  br i1 %tobool26.not, label %for.end23.if.end30_crit_edge, label %if.then27

for.end23.if.end30_crit_edge:                     ; preds = %for.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

if.then27:                                        ; preds = %for.end23
  call void @__sanitizer_cov_trace_pc() #11
  %hb_timer = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 93, i32 3
  %call29 = tail call i32 @del_timer_sync(ptr noundef %hb_timer) #9
  br label %if.end30

if.end30:                                         ; preds = %if.then27, %for.end23.if.end30_crit_edge
  %wmi = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 7
  %40 = ptrtoint ptr %wmi to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %wmi, align 4
  tail call void @ath6kl_wmi_shutdown(ptr noundef %41) #9
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flag) #9
  %htc_target = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 10
  %42 = ptrtoint ptr %htc_target to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %htc_target, align 4
  %tobool32.not = icmp eq ptr %43, null
  br i1 %tobool32.not, label %if.end30.if.end35_crit_edge, label %if.then33

if.end30.if.end35_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

if.then33:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 2048, ptr noundef nonnull @.str.19, ptr noundef nonnull @__func__.ath6kl_stop_txrx) #9
  %44 = ptrtoint ptr %htc_target to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %htc_target, align 4
  %dev.i = getelementptr inbounds %struct.htc_target, ptr %45, i32 0, i32 10
  %46 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev.i, align 4
  %ar.i = getelementptr inbounds %struct.ath6kl_device, ptr %47, i32 0, i32 4
  %48 = ptrtoint ptr %ar.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ar.i, align 4
  %htc_ops.i = getelementptr inbounds %struct.ath6kl, ptr %49, i32 0, i32 6
  %50 = ptrtoint ptr %htc_ops.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %htc_ops.i, align 4
  %stop.i = getelementptr inbounds %struct.ath6kl_htc_ops, ptr %51, i32 0, i32 5
  %52 = ptrtoint ptr %stop.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %stop.i, align 4
  tail call void %53(ptr noundef %45) #9
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %if.end30.if.end35_crit_edge
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 262144, ptr noundef nonnull @.str.176) #9
  %call.i = tail call i32 @ath6kl_diag_write32(ptr noundef %ar, i32 noundef 16384, i32 noundef 65536) #9
  tail call void @up(ptr noundef %sem) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_interruptible(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @aggr_reset_state(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath6kl_cfg80211_vif_stop(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath6kl_cfg80211_vif_cleanup(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath6kl_wmi_shutdown(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath6kl_init_hw_reset(ptr noundef %ar) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 262144, ptr noundef nonnull @.str.176) #9
  %call = tail call i32 @ath6kl_diag_write32(ptr noundef %ar, i32 noundef 16384, i32 noundef 65536) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @up(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath6kl_warn(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath6kl_dbg_dump(i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath6kl_bmi_done(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ath6kl_init_service_ep(ptr noundef %ar) unnamed_addr #0 align 64 {
entry:
  %connect = alloca %struct.htc_service_connect_req, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %connect) #9
  %0 = call ptr @memset(ptr %connect, i32 0, i32 48)
  %tx_comp_multi = getelementptr inbounds %struct.htc_service_connect_req, ptr %connect, i32 0, i32 2, i32 5
  %1 = ptrtoint ptr %tx_comp_multi to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @ath6kl_tx_complete, ptr %tx_comp_multi, align 4
  %rx = getelementptr inbounds %struct.htc_service_connect_req, ptr %connect, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %rx to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @ath6kl_rx, ptr %rx, align 4
  %rx_refill = getelementptr inbounds %struct.htc_service_connect_req, ptr %connect, i32 0, i32 2, i32 2
  %3 = ptrtoint ptr %rx_refill to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @ath6kl_rx_refill, ptr %rx_refill, align 4
  %tx_full = getelementptr inbounds %struct.htc_service_connect_req, ptr %connect, i32 0, i32 2, i32 3
  %4 = ptrtoint ptr %tx_full to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @ath6kl_tx_queue_full, ptr %tx_full, align 4
  %max_txq_depth = getelementptr inbounds %struct.htc_service_connect_req, ptr %connect, i32 0, i32 3
  %5 = ptrtoint ptr %max_txq_depth to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 45, ptr %max_txq_depth, align 4
  %rx_refill_thresh = getelementptr inbounds %struct.htc_service_connect_req, ptr %connect, i32 0, i32 2, i32 7
  %6 = ptrtoint ptr %rx_refill_thresh to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 4, ptr %rx_refill_thresh, align 4
  %7 = ptrtoint ptr %connect to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 256, ptr %connect, align 4
  %call = call fastcc i32 @ath6kl_connectservice(ptr noundef %ar, ptr noundef nonnull %connect, ptr noundef nonnull @.str.132)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool9.not = icmp eq i32 %call, 0
  br i1 %tobool9.not, label %if.end11, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end11:                                         ; preds = %entry
  %flags = getelementptr inbounds %struct.htc_service_connect_req, ptr %connect, i32 0, i32 4
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 4
  %or = or i32 %9, 1
  store i32 %or, ptr %flags, align 4
  %max_rxmsg_sz = getelementptr inbounds %struct.htc_service_connect_req, ptr %connect, i32 0, i32 5
  %10 = ptrtoint ptr %max_rxmsg_sz to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1528, ptr %max_rxmsg_sz, align 4
  %rx_alloc_thresh = getelementptr inbounds %struct.htc_service_connect_req, ptr %connect, i32 0, i32 2, i32 6
  %11 = ptrtoint ptr %rx_alloc_thresh to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1664, ptr %rx_alloc_thresh, align 4
  %rx_allocthresh = getelementptr inbounds %struct.htc_service_connect_req, ptr %connect, i32 0, i32 2, i32 4
  %12 = ptrtoint ptr %rx_allocthresh to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @ath6kl_alloc_amsdu_rxbuf, ptr %rx_allocthresh, align 4
  %conn_flags = getelementptr inbounds %struct.htc_service_connect_req, ptr %connect, i32 0, i32 1
  %13 = ptrtoint ptr %conn_flags to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %conn_flags, align 2
  %15 = and i16 %14, -8
  %16 = or i16 %15, 5
  store i16 %16, ptr %conn_flags, align 2
  %17 = ptrtoint ptr %connect to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 257, ptr %connect, align 4
  %call24 = call fastcc i32 @ath6kl_connectservice(ptr noundef %ar, ptr noundef nonnull %connect, ptr noundef nonnull @.str.133)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end27:                                         ; preds = %if.end11
  %18 = ptrtoint ptr %connect to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 258, ptr %connect, align 4
  %call29 = call fastcc i32 @ath6kl_connectservice(ptr noundef %ar, ptr noundef nonnull %connect, ptr noundef nonnull @.str.134)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end32, label %if.end27.cleanup_crit_edge

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end32:                                         ; preds = %if.end27
  %19 = ptrtoint ptr %connect to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 259, ptr %connect, align 4
  %call34 = call fastcc i32 @ath6kl_connectservice(ptr noundef %ar, ptr noundef nonnull %connect, ptr noundef nonnull @.str.135)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end37, label %if.end32.cleanup_crit_edge

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end37:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %connect to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 260, ptr %connect, align 4
  %call39 = call fastcc i32 @ath6kl_connectservice(ptr noundef %ar, ptr noundef nonnull %connect, ptr noundef nonnull @.str.136)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  %. = select i1 %tobool40.not, i32 0, i32 -5
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %if.end32.cleanup_crit_edge, %if.end27.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %entry.cleanup_crit_edge ], [ -5, %if.end11.cleanup_crit_edge ], [ -5, %if.end27.cleanup_crit_edge ], [ -5, %if.end32.cleanup_crit_edge ], [ %., %if.end37 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %connect) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath6kl_cookie_cleanup(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath6kl_info(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath6kl_init_get_fwcaps(ptr nocapture noundef readonly %ar, ptr noundef %buf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %fw_capabilities = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 87
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.05 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %len.04 = phi i32 [ 0, %entry ], [ %len.1, %for.inc.for.body_crit_edge ]
  %sub = sub i32 200, %len.04
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub)
  %cmp2 = icmp ult i32 %sub, 4
  br i1 %cmp2, label %if.then3, label %if.end6

if.then3:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @ath6kl_warn(ptr noundef nonnull @.str.142) #9
  %add.ptr4 = getelementptr i8, ptr %buf, i32 196
  %0 = ptrtoint ptr %add.ptr4 to i32
  call void @__asan_storeN_noabort(i32 %0, i32 4)
  store i32 774778368, ptr %add.ptr4, align 1
  br label %cleanup

if.end6:                                          ; preds = %for.body
  %div2 = lshr i32 %i.05, 3
  %arrayidx = getelementptr i8, ptr %fw_capabilities, i32 %div2
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %rem1 = and i32 %i.05, 7
  %shl = shl nuw nsw i32 1, %rem1
  %and = and i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end6.for.inc_crit_edge, label %ath6kl_init_get_fw_capa_name.exit

if.end6.for.inc_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

ath6kl_init_get_fw_capa_name.exit:                ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr8 = getelementptr i8, ptr %buf, i32 %len.04
  %name.i = getelementptr [19 x %struct.fw_capa_str_map], ptr @fw_capa_map, i32 0, i32 %i.05, i32 1
  %3 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %name.i, align 4
  %call11 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr8, i32 noundef %sub, ptr noundef nonnull @.str.143, ptr noundef %4) #9
  %add12 = add i32 %call11, %len.04
  br label %for.inc

for.inc:                                          ; preds = %ath6kl_init_get_fw_capa_name.exit, %if.end6.for.inc_crit_edge
  %len.1 = phi i32 [ %add12, %ath6kl_init_get_fw_capa_name.exit ], [ %len.04, %if.end6.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.05, 1
  %exitcond.not = icmp eq i32 %inc, 19
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.1)
  %cmp14.not = icmp eq i32 %len.1, 0
  %dec = add i32 %len.1, -1
  %spec.select = select i1 %cmp14.not, i32 0, i32 %dec
  %arrayidx18 = getelementptr i8, ptr %buf, i32 %spec.select
  %5 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %arrayidx18, align 1
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ath6kl_set_host_app_area(ptr noundef %ar) unnamed_addr #0 align 64 {
entry:
  %data = alloca i32, align 4
  %host_app_area = alloca %struct.host_app_area, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #9
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %data, align 4, !annotation !376
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %host_app_area) #9
  %target_type.i = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 26
  %1 = ptrtoint ptr %target_type.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %target_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %2)
  %switch.selectcmp = icmp eq i32 %2, 5
  %switch.select = select i1 %switch.selectcmp, i32 4196352, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %2)
  %switch.selectcmp42 = icmp eq i32 %2, 3
  %switch.select43 = select i1 %switch.selectcmp42, i32 1312256, i32 %switch.select
  %call7 = call i32 @ath6kl_diag_read32(ptr noundef %ar, i32 noundef %switch.select43, ptr noundef nonnull %data) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %target_type.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %target_type.i, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.181)
  switch i32 %4, label %if.end.cond.end19_crit_edge [
    i32 3, label %cond.true10
    i32 5, label %cond.true15
  ]

if.end.cond.end19_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end19

cond.true10:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data, align 4
  %and11 = and i32 %7, 2097151
  br label %cond.end19

cond.true15:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %data, align 4
  br label %cond.end19

cond.end19:                                       ; preds = %cond.true15, %cond.true10, %if.end.cond.end19_crit_edge
  %cond20 = phi i32 [ %and11, %cond.true10 ], [ %9, %cond.true15 ], [ 0, %if.end.cond.end19_crit_edge ]
  %10 = ptrtoint ptr %host_app_area to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 33554432, ptr %host_app_area, align 4
  %call21 = call i32 @ath6kl_diag_write(ptr noundef %ar, i32 noundef %cond20, ptr noundef nonnull %host_app_area, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  %. = select i1 %tobool22.not, i32 0, i32 -5
  br label %cleanup

cleanup:                                          ; preds = %cond.end19, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %entry.cleanup_crit_edge ], [ %., %cond.end19 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %host_app_area) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ath6kl_target_config_wlan_params(ptr nocapture noundef %ar, i32 noundef %idx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %wmi = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 7
  %0 = ptrtoint ptr %wmi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wmi, align 4
  %conv = trunc i32 %idx to i8
  %rx_meta_ver = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 61
  %2 = ptrtoint ptr %rx_meta_ver to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %rx_meta_ver, align 4
  %call = tail call i32 @ath6kl_wmi_set_rx_frame_format_cmd(ptr noundef %1, i8 noundef zeroext %conv, i8 noundef zeroext %3, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.164, i32 noundef %call) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %conf_flags = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 68
  %4 = ptrtoint ptr %conf_flags to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %conf_flags, align 4
  %6 = and i16 %5, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool2.not = icmp eq i16 %6, 0
  br i1 %tobool2.not, label %if.end.if.end10_crit_edge, label %if.then3

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then3:                                         ; preds = %if.end
  %7 = ptrtoint ptr %wmi to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %wmi, align 4
  %call6 = tail call i32 @ath6kl_wmi_pmparams_cmd(ptr noundef %8, i8 noundef zeroext %conv, i16 noundef zeroext 0, i16 noundef zeroext 1, i16 noundef zeroext 0, i16 noundef zeroext 0, i16 noundef zeroext 1, i16 noundef zeroext 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then3.if.end10_crit_edge, label %if.then8

if.then3.if.end10_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then8:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.165, i32 noundef %call6) #9
  br label %cleanup

if.end10:                                         ; preds = %if.then3.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %9 = ptrtoint ptr %conf_flags to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %conf_flags, align 4
  %11 = and i16 %10, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool14.not = icmp eq i16 %11, 0
  br i1 %tobool14.not, label %if.then15, label %if.end10.if.end22_crit_edge

if.end10.if.end22_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.then15:                                        ; preds = %if.end10
  %12 = ptrtoint ptr %wmi to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %wmi, align 4
  %call18 = tail call i32 @ath6kl_wmi_set_lpreamble_cmd(ptr noundef %13, i8 noundef zeroext %conv, i8 noundef zeroext 0, i8 noundef zeroext 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.then15.if.end22_crit_edge, label %if.then20

if.then15.if.end22_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.then20:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.166, i32 noundef %call18) #9
  br label %cleanup

if.end22:                                         ; preds = %if.then15.if.end22_crit_edge, %if.end10.if.end22_crit_edge
  %14 = ptrtoint ptr %wmi to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %wmi, align 4
  %call25 = tail call i32 @ath6kl_wmi_set_keepalive_cmd(ptr noundef %15, i8 noundef zeroext %conv, i8 noundef zeroext 60) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %if.then27

if.then27:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.167, i32 noundef %call25) #9
  br label %cleanup

if.end28:                                         ; preds = %if.end22
  %16 = ptrtoint ptr %wmi to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %wmi, align 4
  %call31 = tail call i32 @ath6kl_wmi_disctimeout_cmd(ptr noundef %17, i8 noundef zeroext %conv, i8 noundef zeroext 10) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end34, label %if.then33

if.then33:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.168, i32 noundef %call31) #9
  br label %cleanup

if.end34:                                         ; preds = %if.end28
  %18 = ptrtoint ptr %conf_flags to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %conf_flags, align 4
  %20 = and i16 %19, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %tobool38.not = icmp eq i16 %20, 0
  br i1 %tobool38.not, label %if.then39, label %if.end34.if.end46_crit_edge

if.end34.if.end46_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46

if.then39:                                        ; preds = %if.end34
  %21 = ptrtoint ptr %wmi to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %wmi, align 4
  %call42 = tail call i32 @ath6kl_wmi_set_wmm_txop(ptr noundef %22, i8 noundef zeroext %conv, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.then39.if.end46_crit_edge, label %if.then44

if.then39.if.end46_crit_edge:                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46

if.then44:                                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.169, i32 noundef %call42) #9
  br label %cleanup

if.end46:                                         ; preds = %if.then39.if.end46_crit_edge, %if.end34.if.end46_crit_edge
  %p2p = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 90
  %23 = ptrtoint ptr %p2p to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %p2p, align 4, !range !375
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool47.not = icmp eq i8 %24, 0
  br i1 %tobool47.not, label %if.end46.cleanup_crit_edge, label %land.lhs.true

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end46
  %vif_max = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 17
  %25 = ptrtoint ptr %vif_max to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %vif_max, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %26)
  %cmp = icmp ne i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %idx)
  %tobool50.not = icmp eq i32 %idx, 0
  %or.cond = and i1 %tobool50.not, %cmp
  br i1 %or.cond, label %land.lhs.true.if.end59_crit_edge, label %if.then51

land.lhs.true.if.end59_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

if.then51:                                        ; preds = %land.lhs.true
  %27 = ptrtoint ptr %wmi to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %wmi, align 4
  %call54 = tail call i32 @ath6kl_wmi_info_req_cmd(ptr noundef %28, i8 noundef zeroext %conv, i32 noundef 3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.then51.if.end59_crit_edge, label %if.then56

if.then51.if.end59_crit_edge:                     ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

if.then56:                                        ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 2048, ptr noundef nonnull @.str.170, i32 noundef %call54) #9
  %29 = ptrtoint ptr %p2p to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %p2p, align 4
  br label %cleanup

if.end59:                                         ; preds = %if.then51.if.end59_crit_edge, %land.lhs.true.if.end59_crit_edge
  %30 = ptrtoint ptr %p2p to i32
  call void @__asan_load1_noabort(i32 %30)
  %.pr = load i8, ptr %p2p, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool61.not = icmp eq i8 %.pr, 0
  br i1 %tobool61.not, label %if.end59.cleanup_crit_edge, label %land.lhs.true63

if.end59.cleanup_crit_edge:                       ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true63:                                  ; preds = %if.end59
  %31 = ptrtoint ptr %vif_max to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %vif_max, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %32)
  %cmp65 = icmp ne i32 %32, 1
  %or.cond124 = and i1 %tobool50.not, %cmp65
  br i1 %or.cond124, label %land.lhs.true63.cleanup_crit_edge, label %if.then69

land.lhs.true63.cleanup_crit_edge:                ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then69:                                        ; preds = %land.lhs.true63
  %33 = ptrtoint ptr %wmi to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %wmi, align 4
  %call72 = tail call i32 @ath6kl_wmi_probe_report_req_cmd(ptr noundef %34, i8 noundef zeroext %conv, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %if.then69.cleanup_crit_edge, label %if.then74

if.then69.cleanup_crit_edge:                      ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then74:                                        ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 2048, ptr noundef nonnull @.str.171, i32 noundef %call72) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then74, %if.then69.cleanup_crit_edge, %land.lhs.true63.cleanup_crit_edge, %if.end59.cleanup_crit_edge, %if.then56, %if.end46.cleanup_crit_edge, %if.then44, %if.then33, %if.then27, %if.then20, %if.then8, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call6, %if.then8 ], [ %call25, %if.then27 ], [ %call31, %if.then33 ], [ %call42, %if.then44 ], [ %call18, %if.then20 ], [ %call72, %if.then74 ], [ 0, %if.then69.cleanup_crit_edge ], [ 0, %if.end59.cleanup_crit_edge ], [ 0, %land.lhs.true63.cleanup_crit_edge ], [ 0, %if.end46.cleanup_crit_edge ], [ %call54, %if.then56 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath6kl_bmi_reg_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath6kl_bmi_reg_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ath6kl_upload_board_file(ptr noundef %ar) unnamed_addr #0 align 64 {
entry:
  %v = alloca i32, align 4
  %tmp29 = alloca i32, align 4
  %tmp44 = alloca i32, align 4
  %v108 = alloca i32, align 4
  %v134 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %fw_board = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 76
  %0 = ptrtoint ptr %fw_board to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fw_board, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %do.end, label %if.end21, !prof !377

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 1206, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

if.end21:                                         ; preds = %entry
  %board_addr = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 67, i32 7
  %2 = ptrtoint ptr %board_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %board_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp22.not = icmp eq i32 %3, 0
  br i1 %cmp22.not, label %if.else, label %if.then23

if.then23:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v) #9
  %target_type.i = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 26
  %4 = ptrtoint ptr %target_type.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %target_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %5)
  %switch.selectcmp = icmp eq i32 %5, 5
  %switch.select = select i1 %switch.selectcmp, i32 4196436, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %switch.selectcmp219 = icmp eq i32 %5, 3
  %switch.select220 = select i1 %switch.selectcmp219, i32 5506644, i32 %switch.select
  %6 = tail call i32 @llvm.bswap.i32(i32 %3)
  %7 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %v, align 4
  %call27 = call i32 @ath6kl_bmi_write(ptr noundef %ar, i32 noundef %switch.select220, ptr noundef nonnull %v, i32 noundef 4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v) #9
  br label %if.end41

if.else:                                          ; preds = %if.end21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp29) #9
  %8 = ptrtoint ptr %tmp29 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %tmp29, align 4, !annotation !376
  %target_type.i196 = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 26
  %9 = ptrtoint ptr %target_type.i196 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %target_type.i196, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %10)
  %switch.selectcmp221 = icmp eq i32 %10, 5
  %switch.select222 = select i1 %switch.selectcmp221, i32 4196436, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %10)
  %switch.selectcmp223 = icmp eq i32 %10, 3
  %switch.select224 = select i1 %switch.selectcmp223, i32 5506644, i32 %switch.select222
  %call33 = call i32 @ath6kl_bmi_read(ptr noundef %ar, i32 noundef %switch.select224, ptr noundef nonnull %tmp29, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end36.thread, label %if.then39

if.end36.thread:                                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %tmp29 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tmp29, align 4
  %13 = call i32 @llvm.bswap.i32(i32 %12)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp29) #9
  br label %if.end41

if.then39:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp29) #9
  call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.113) #9
  br label %cleanup

if.end41:                                         ; preds = %if.end36.thread, %if.then23
  %board_address.1 = phi i32 [ %3, %if.then23 ], [ %13, %if.end36.thread ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp44) #9
  %14 = ptrtoint ptr %tmp44 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %tmp44, align 4, !annotation !376
  %target_type.i201 = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 26
  %15 = ptrtoint ptr %target_type.i201 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %target_type.i201, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %16)
  %switch.selectcmp225 = icmp eq i32 %16, 5
  %switch.select226 = select i1 %switch.selectcmp225, i32 4196524, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %16)
  %switch.selectcmp227 = icmp eq i32 %16, 3
  %switch.select228 = select i1 %switch.selectcmp227, i32 5506732, i32 %switch.select226
  %call49 = call i32 @ath6kl_bmi_read(ptr noundef %ar, i32 noundef %switch.select228, ptr noundef nonnull %tmp44, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end56, label %if.then55

if.then55:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp44) #9
  call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.114) #9
  br label %cleanup

if.end56:                                         ; preds = %if.end41
  %17 = ptrtoint ptr %tmp44 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tmp44, align 4
  %19 = call i32 @llvm.bswap.i32(i32 %18)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp44) #9
  %20 = ptrtoint ptr %target_type.i201 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %target_type.i201, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %21)
  %cmp57 = icmp eq i32 %21, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp59 = icmp eq i32 %18, 0
  %or.cond = select i1 %cmp57, i1 %cmp59, i1 false
  br i1 %or.cond, label %if.then61, label %if.end62

if.then61:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.113) #9
  br label %cleanup

if.end62:                                         ; preds = %if.end56
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.182)
  switch i32 %21, label %do.end81 [
    i32 3, label %sw.bb
    i32 5, label %if.end62.sw.epilog_crit_edge
  ]

if.end62.sw.epilog_crit_edge:                     ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #11
  %fw_board_len = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 77
  %23 = ptrtoint ptr %fw_board_len to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %fw_board_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1792, i32 %24)
  %cmp64 = icmp ugt i32 %24, 1792
  %spec.store.select = select i1 %cmp64, i32 1024, i32 768
  br label %sw.epilog

do.end81:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 1251, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb, %if.end62.sw.epilog_crit_edge
  %board_ext_data_size.0 = phi i32 [ %spec.store.select, %sw.bb ], [ 0, %if.end62.sw.epilog_crit_edge ]
  %board_data_size.0 = phi i32 [ 1024, %sw.bb ], [ 6144, %if.end62.sw.epilog_crit_edge ]
  br i1 %cmp59, label %sw.epilog.if.end112_crit_edge, label %land.lhs.true96

sw.epilog.if.end112_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end112

land.lhs.true96:                                  ; preds = %sw.epilog
  %fw_board_len97 = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 77
  %25 = ptrtoint ptr %fw_board_len97 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %fw_board_len97, align 4
  %add98 = add nuw nsw i32 %board_data_size.0, %board_ext_data_size.0
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %add98)
  %cmp99 = icmp eq i32 %26, %add98
  br i1 %cmp99, label %if.then101, label %land.lhs.true96.if.end112_crit_edge

land.lhs.true96.if.end112_crit_edge:              ; preds = %land.lhs.true96
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end112

if.then101:                                       ; preds = %land.lhs.true96
  call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 262144, ptr noundef nonnull @.str.115, i32 noundef %19, i32 noundef %board_ext_data_size.0) #9
  %27 = ptrtoint ptr %fw_board to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %fw_board, align 4
  %add.ptr = getelementptr i8, ptr %28, i32 %board_data_size.0
  %call103 = call i32 @ath6kl_bmi_write(ptr noundef %ar, i32 noundef %19, ptr noundef %add.ptr, i32 noundef %board_ext_data_size.0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103)
  %tobool104.not = icmp eq i32 %call103, 0
  br i1 %tobool104.not, label %if.end106, label %if.then105

if.then105:                                       ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.116, i32 noundef %call103) #9
  br label %cleanup

if.end106:                                        ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #11
  %shl = shl nuw nsw i32 %board_ext_data_size.0, 16
  %or = or i32 %shl, 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v108) #9
  %29 = ptrtoint ptr %target_type.i201 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %target_type.i201, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %30)
  %switch.selectcmp229 = icmp eq i32 %30, 5
  %switch.select230 = select i1 %switch.selectcmp229, i32 4196528, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %30)
  %switch.selectcmp231 = icmp eq i32 %30, 3
  %switch.select232 = select i1 %switch.selectcmp231, i32 5506736, i32 %switch.select230
  %31 = call i32 @llvm.bswap.i32(i32 %or)
  %32 = ptrtoint ptr %v108 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %v108, align 4
  %call111 = call i32 @ath6kl_bmi_write(ptr noundef %ar, i32 noundef %switch.select232, ptr noundef nonnull %v108, i32 noundef 4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v108) #9
  br label %if.end112

if.end112:                                        ; preds = %if.end106, %land.lhs.true96.if.end112_crit_edge, %sw.epilog.if.end112_crit_edge
  %fw_board_len113 = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 77
  %33 = ptrtoint ptr %fw_board_len113 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %fw_board_len113, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %board_data_size.0)
  %cmp114 = icmp ult i32 %34, %board_data_size.0
  br i1 %cmp114, label %if.then116, label %if.end118

if.then116:                                       ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.117, i32 noundef %34) #9
  br label %cleanup

if.end118:                                        ; preds = %if.end112
  call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 262144, ptr noundef nonnull @.str.118, i32 noundef %board_address.1, i32 noundef %board_data_size.0) #9
  %35 = ptrtoint ptr %fw_board to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %fw_board, align 4
  %call120 = call i32 @ath6kl_bmi_write(ptr noundef %ar, i32 noundef %board_address.1, ptr noundef %36, i32 noundef %board_data_size.0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call120)
  %tobool121.not = icmp eq i32 %call120, 0
  br i1 %tobool121.not, label %if.end123, label %if.then122

if.then122:                                       ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.119, i32 noundef %call120) #9
  br label %cleanup

if.end123:                                        ; preds = %if.end118
  %version = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 25
  %37 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %version, align 4
  %39 = zext i32 %38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.183)
  switch i32 %38, label %if.else131 [
    i32 835192970, label %if.end123.if.end132_crit_edge
    i32 835193336, label %if.end123.if.end132_crit_edge237
  ]

if.end123.if.end132_crit_edge237:                 ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end132

if.end123.if.end132_crit_edge:                    ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end132

if.else131:                                       ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end132

if.end132:                                        ; preds = %if.else131, %if.end123.if.end132_crit_edge, %if.end123.if.end132_crit_edge237
  %param.0 = phi i32 [ 1, %if.else131 ], [ %board_data_size.0, %if.end123.if.end132_crit_edge ], [ %board_data_size.0, %if.end123.if.end132_crit_edge237 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v134) #9
  %40 = ptrtoint ptr %target_type.i201 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %target_type.i201, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %41)
  %switch.selectcmp233 = icmp eq i32 %41, 5
  %switch.select234 = select i1 %switch.selectcmp233, i32 4196440, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %41)
  %switch.selectcmp235 = icmp eq i32 %41, 3
  %switch.select236 = select i1 %switch.selectcmp235, i32 5506648, i32 %switch.select234
  %42 = call i32 @llvm.bswap.i32(i32 %param.0)
  %43 = ptrtoint ptr %v134 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %v134, align 4
  %call137 = call i32 @ath6kl_bmi_write(ptr noundef %ar, i32 noundef %switch.select236, ptr noundef nonnull %v134, i32 noundef 4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v134) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end132, %if.then122, %if.then116, %if.then105, %do.end81, %if.then61, %if.then55, %if.then39, %do.end
  %retval.0 = phi i32 [ -2, %do.end ], [ %call49, %if.then55 ], [ -22, %if.then61 ], [ -22, %do.end81 ], [ %call103, %if.then105 ], [ -22, %if.then116 ], [ %call120, %if.then122 ], [ 0, %if.end132 ], [ %call33, %if.then39 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ath6kl_upload_otp(ptr noundef %ar) unnamed_addr #0 align 64 {
entry:
  %param = alloca i32, align 4
  %tmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %param) #9
  %fw_otp = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 78
  %0 = ptrtoint ptr %fw_otp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fw_otp, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %app_load_addr = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 67, i32 3
  %2 = ptrtoint ptr %app_load_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %app_load_addr, align 4
  %fw_otp_len = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 79
  %4 = ptrtoint ptr %fw_otp_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fw_otp_len, align 4
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 262144, ptr noundef nonnull @.str.120, i32 noundef %3, i32 noundef %5) #9
  %6 = ptrtoint ptr %fw_otp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fw_otp, align 4
  %8 = ptrtoint ptr %fw_otp_len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fw_otp_len, align 4
  %call = tail call i32 @ath6kl_bmi_fast_download(ptr noundef %ar, i32 noundef %3, ptr noundef %7, i32 noundef %9) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.121, i32 noundef %call) #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #9
  %10 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %tmp, align 4, !annotation !376
  %target_type.i = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 26
  %11 = ptrtoint ptr %target_type.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %target_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %12)
  %switch.selectcmp = icmp eq i32 %12, 5
  %switch.select = select i1 %switch.selectcmp, i32 4196380, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %12)
  %switch.selectcmp57 = icmp eq i32 %12, 3
  %switch.select58 = select i1 %switch.selectcmp57, i32 5506588, i32 %switch.select
  %call8 = call i32 @ath6kl_bmi_read(ptr noundef %ar, i32 noundef %switch.select58, ptr noundef nonnull %tmp, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end15, label %if.then14

if.then14:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #9
  call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.122, i32 noundef %call8) #9
  br label %cleanup

if.end15:                                         ; preds = %if.end4
  %13 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tmp, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #9
  %app_start_override_addr = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 67, i32 4
  %15 = ptrtoint ptr %app_start_override_addr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %app_start_override_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp17 = icmp eq i32 %16, 0
  br i1 %cmp17, label %if.then19, label %if.end15.if.end22_crit_edge

if.end15.if.end22_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.then19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  %17 = call i32 @llvm.bswap.i32(i32 %14)
  %18 = ptrtoint ptr %app_start_override_addr to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %app_start_override_addr, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %if.end15.if.end22_crit_edge
  %from_hw.0.off0 = phi ptr [ @.str.124, %if.then19 ], [ @.str.54, %if.end15.if.end22_crit_edge ]
  %19 = ptrtoint ptr %app_start_override_addr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %app_start_override_addr, align 4
  call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 262144, ptr noundef nonnull @.str.123, ptr noundef nonnull %from_hw.0.off0, i32 noundef %20) #9
  %21 = ptrtoint ptr %app_start_override_addr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %app_start_override_addr, align 4
  call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 262144, ptr noundef nonnull @.str.125, i32 noundef %22) #9
  %23 = ptrtoint ptr %param to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %param, align 4
  %24 = ptrtoint ptr %app_start_override_addr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %app_start_override_addr, align 4
  %call31 = call i32 @ath6kl_bmi_execute(ptr noundef %ar, i32 noundef %25, ptr noundef nonnull %param) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.then14, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then3 ], [ %call8, %if.then14 ], [ 0, %if.end22 ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %param) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ath6kl_upload_firmware(ptr noundef %ar) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %fw = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 80
  %0 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fw, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %do.end, label %if.end21, !prof !377

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 1358, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

if.end21:                                         ; preds = %entry
  %app_load_addr = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 67, i32 3
  %2 = ptrtoint ptr %app_load_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %app_load_addr, align 4
  %fw_len = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 81
  %4 = ptrtoint ptr %fw_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fw_len, align 4
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 262144, ptr noundef nonnull @.str.126, i32 noundef %3, i32 noundef %5) #9
  %6 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fw, align 4
  %8 = ptrtoint ptr %fw_len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fw_len, align 4
  %call = tail call i32 @ath6kl_bmi_fast_download(ptr noundef %ar, i32 noundef %3, ptr noundef %7, i32 noundef %9) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool24.not = icmp eq i32 %call, 0
  br i1 %tobool24.not, label %if.end26, label %if.then25

if.then25:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.127, i32 noundef %call) #9
  br label %cleanup

if.end26:                                         ; preds = %if.end21
  %target_type = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 26
  %10 = ptrtoint ptr %target_type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %target_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %11)
  %cmp27.not = icmp eq i32 %11, 5
  br i1 %cmp27.not, label %if.end26.cleanup_crit_edge, label %if.then28

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then28:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  %app_start_override_addr = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 67, i32 4
  %12 = ptrtoint ptr %app_start_override_addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %app_start_override_addr, align 4
  %call30 = tail call i32 @ath6kl_bmi_set_app_start(ptr noundef %ar, i32 noundef %13) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then28, %if.end26.cleanup_crit_edge, %if.then25, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ %call, %if.then25 ], [ 0, %if.then28 ], [ 0, %if.end26.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ath6kl_upload_patch(ptr noundef %ar) unnamed_addr #0 align 64 {
entry:
  %v = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %fw_patch = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 82
  %0 = ptrtoint ptr %fw_patch to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fw_patch, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %dataset_patch_addr = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 67, i32 2
  %2 = ptrtoint ptr %dataset_patch_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dataset_patch_addr, align 4
  %fw_patch_len = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 83
  %4 = ptrtoint ptr %fw_patch_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fw_patch_len, align 4
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 262144, ptr noundef nonnull @.str.128, i32 noundef %3, i32 noundef %5) #9
  %6 = ptrtoint ptr %fw_patch to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fw_patch, align 4
  %8 = ptrtoint ptr %fw_patch_len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fw_patch_len, align 4
  %call = tail call i32 @ath6kl_bmi_write(ptr noundef %ar, i32 noundef %3, ptr noundef %7, i32 noundef %9) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.129, i32 noundef %call) #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v) #9
  %target_type.i = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 26
  %10 = ptrtoint ptr %target_type.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %target_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %11)
  %switch.selectcmp = icmp eq i32 %11, 5
  %switch.select = select i1 %switch.selectcmp, i32 4196376, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %11)
  %switch.selectcmp19 = icmp eq i32 %11, 3
  %switch.select20 = select i1 %switch.selectcmp19, i32 5506584, i32 %switch.select
  %12 = tail call i32 @llvm.bswap.i32(i32 %3)
  %13 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %v, align 4
  %call6 = call i32 @ath6kl_bmi_write(ptr noundef %ar, i32 noundef %switch.select20, ptr noundef nonnull %v, i32 noundef 4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then3 ], [ 0, %if.end4 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ath6kl_upload_testscript(ptr noundef %ar) unnamed_addr #0 align 64 {
entry:
  %v = alloca i32, align 4
  %v16 = alloca i32, align 4
  %v22 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %testmode = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 3
  %0 = ptrtoint ptr %testmode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %testmode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.not = icmp eq i32 %1, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %fw_testscript = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 84
  %2 = ptrtoint ptr %fw_testscript to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fw_testscript, align 4
  %cmp1 = icmp eq ptr %3, null
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %testscript_addr = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 67, i32 11
  %4 = ptrtoint ptr %testscript_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %testscript_addr, align 4
  %fw_testscript_len = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 85
  %6 = ptrtoint ptr %fw_testscript_len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fw_testscript_len, align 4
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 262144, ptr noundef nonnull @.str.130, i32 noundef %5, i32 noundef %7) #9
  %8 = ptrtoint ptr %fw_testscript to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fw_testscript, align 4
  %10 = ptrtoint ptr %fw_testscript_len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fw_testscript_len, align 4
  %call = tail call i32 @ath6kl_bmi_write(ptr noundef %ar, i32 noundef %5, ptr noundef %9, i32 noundef %11) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.131, i32 noundef %call) #9
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v) #9
  %target_type.i = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 26
  %12 = ptrtoint ptr %target_type.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %target_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %13)
  %switch.selectcmp = icmp eq i32 %13, 5
  %switch.select = select i1 %switch.selectcmp, i32 4196576, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %13)
  %switch.selectcmp55 = icmp eq i32 %13, 3
  %switch.select56 = select i1 %switch.selectcmp55, i32 5506784, i32 %switch.select
  %14 = tail call i32 @llvm.bswap.i32(i32 %5)
  %15 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %v, align 4
  %call9 = call i32 @ath6kl_bmi_write(ptr noundef %ar, i32 noundef %switch.select56, ptr noundef nonnull %v, i32 noundef 4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v) #9
  %version = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 25
  %16 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %version, align 4
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.184)
  switch i32 %17, label %if.then14 [
    i32 835192970, label %if.end7.if.end20_crit_edge
    i32 835193336, label %if.end7.if.end20_crit_edge65
  ]

if.end7.if.end20_crit_edge65:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.end7.if.end20_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.then14:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v16) #9
  %19 = ptrtoint ptr %target_type.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %target_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %20)
  %switch.selectcmp57 = icmp eq i32 %20, 5
  %switch.select58 = select i1 %switch.selectcmp57, i32 4196456, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %20)
  %switch.selectcmp59 = icmp eq i32 %20, 3
  %switch.select60 = select i1 %switch.selectcmp59, i32 5506664, i32 %switch.select58
  %21 = ptrtoint ptr %v16 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1048576, ptr %v16, align 4
  %call19 = call i32 @ath6kl_bmi_write(ptr noundef %ar, i32 noundef %switch.select60, ptr noundef nonnull %v16, i32 noundef 4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v16) #9
  br label %if.end20

if.end20:                                         ; preds = %if.then14, %if.end7.if.end20_crit_edge, %if.end7.if.end20_crit_edge65
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v22) #9
  %22 = ptrtoint ptr %target_type.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %target_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %23)
  %switch.selectcmp61 = icmp eq i32 %23, 5
  %switch.select62 = select i1 %switch.selectcmp61, i32 4196572, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %23)
  %switch.selectcmp63 = icmp eq i32 %23, 3
  %switch.select64 = select i1 %switch.selectcmp63, i32 5506780, i32 %switch.select62
  %24 = ptrtoint ptr %v22 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 16777216, ptr %v22, align 4
  %call25 = call i32 @ath6kl_bmi_write(ptr noundef %ar, i32 noundef %switch.select64, ptr noundef nonnull %v22, i32 noundef 4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v22) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.then6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then6 ], [ 0, %if.end20 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath6kl_bmi_fast_download(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath6kl_bmi_execute(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath6kl_bmi_set_app_start(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath6kl_tx_complete(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath6kl_rx(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath6kl_rx_refill(ptr noundef, i32 noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath6kl_tx_queue_full(ptr noundef, ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ath6kl_connectservice(ptr noundef %ar, ptr noundef %con_req, ptr noundef %desc) unnamed_addr #0 align 64 {
entry:
  %response = alloca %struct.htc_service_connect_resp, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %response) #9
  %0 = call ptr @memset(ptr %response, i32 0, i32 16)
  %htc_target = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 10
  %1 = ptrtoint ptr %htc_target to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %htc_target, align 4
  %dev.i = getelementptr inbounds %struct.htc_target, ptr %2, i32 0, i32 10
  %3 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev.i, align 4
  %ar.i = getelementptr inbounds %struct.ath6kl_device, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %ar.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ar.i, align 4
  %htc_ops.i = getelementptr inbounds %struct.ath6kl, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %htc_ops.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %htc_ops.i, align 4
  %conn_service.i = getelementptr inbounds %struct.ath6kl_htc_ops, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %conn_service.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %conn_service.i, align 4
  %call.i = call i32 %10(ptr noundef %2, ptr noundef %con_req, ptr noundef nonnull %response) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.137, ptr noundef %desc, i32 noundef %call.i) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = ptrtoint ptr %con_req to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %con_req, align 4
  %13 = zext i16 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.185)
  switch i16 %12, label %sw.default [
    i16 256, label %sw.bb
    i16 257, label %sw.bb6
    i16 258, label %sw.bb8
    i16 259, label %sw.bb10
    i16 260, label %sw.bb12
  ]

sw.bb:                                            ; preds = %if.end
  %flag = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 75
  %14 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %flag, align 4
  %and1.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not, label %sw.bb.if.end4_crit_edge, label %if.then3

sw.bb.if.end4_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.then3:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %wmi = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 7
  %16 = ptrtoint ptr %wmi to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %wmi, align 4
  %endpoint = getelementptr inbounds %struct.htc_service_connect_resp, ptr %response, i32 0, i32 2
  %18 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %endpoint, align 4
  call void @ath6kl_wmi_set_control_ep(ptr noundef %17, i32 noundef %19) #9
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %sw.bb.if.end4_crit_edge
  %endpoint5 = getelementptr inbounds %struct.htc_service_connect_resp, ptr %response, i32 0, i32 2
  %20 = ptrtoint ptr %endpoint5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %endpoint5, align 4
  %ctrl_ep = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 42
  %22 = ptrtoint ptr %ctrl_ep to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %ctrl_ep, align 4
  br label %cleanup

sw.bb6:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %endpoint7 = getelementptr inbounds %struct.htc_service_connect_resp, ptr %response, i32 0, i32 2
  %23 = ptrtoint ptr %endpoint7 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %endpoint7, align 4
  %arrayidx.i = getelementptr %struct.ath6kl, ptr %ar, i32 0, i32 36, i32 0
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx.i, align 4
  %arrayidx1.i = getelementptr %struct.ath6kl, ptr %ar, i32 0, i32 40, i32 %24
  %26 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %arrayidx1.i, align 1
  br label %cleanup

sw.bb8:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %endpoint9 = getelementptr inbounds %struct.htc_service_connect_resp, ptr %response, i32 0, i32 2
  %27 = ptrtoint ptr %endpoint9 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %endpoint9, align 4
  %arrayidx.i28 = getelementptr %struct.ath6kl, ptr %ar, i32 0, i32 36, i32 1
  %29 = ptrtoint ptr %arrayidx.i28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %arrayidx.i28, align 4
  %arrayidx1.i29 = getelementptr %struct.ath6kl, ptr %ar, i32 0, i32 40, i32 %28
  %30 = ptrtoint ptr %arrayidx1.i29 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %arrayidx1.i29, align 1
  br label %cleanup

sw.bb10:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %endpoint11 = getelementptr inbounds %struct.htc_service_connect_resp, ptr %response, i32 0, i32 2
  %31 = ptrtoint ptr %endpoint11 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %endpoint11, align 4
  %arrayidx.i30 = getelementptr %struct.ath6kl, ptr %ar, i32 0, i32 36, i32 2
  %33 = ptrtoint ptr %arrayidx.i30 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %arrayidx.i30, align 4
  %arrayidx1.i31 = getelementptr %struct.ath6kl, ptr %ar, i32 0, i32 40, i32 %32
  %34 = ptrtoint ptr %arrayidx1.i31 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 2, ptr %arrayidx1.i31, align 1
  br label %cleanup

sw.bb12:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %endpoint13 = getelementptr inbounds %struct.htc_service_connect_resp, ptr %response, i32 0, i32 2
  %35 = ptrtoint ptr %endpoint13 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %endpoint13, align 4
  %arrayidx.i32 = getelementptr %struct.ath6kl, ptr %ar, i32 0, i32 36, i32 3
  %37 = ptrtoint ptr %arrayidx.i32 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %arrayidx.i32, align 4
  %arrayidx1.i33 = getelementptr %struct.ath6kl, ptr %ar, i32 0, i32 40, i32 %36
  %38 = ptrtoint ptr %arrayidx1.i33 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 3, ptr %arrayidx1.i33, align 1
  br label %cleanup

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %conv = zext i16 %12 to i32
  call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.138, i32 noundef %conv) #9
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb12, %sw.bb10, %sw.bb8, %sw.bb6, %if.end4, %if.then
  %retval.0 = phi i32 [ %call.i, %if.then ], [ -22, %sw.default ], [ 0, %sw.bb12 ], [ 0, %sw.bb10 ], [ 0, %sw.bb8 ], [ 0, %sw.bb6 ], [ 0, %if.end4 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %response) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ath6kl_alloc_amsdu_rxbuf(ptr noundef, i32 noundef, i32 noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath6kl_wmi_set_control_ep(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath6kl_diag_read32(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath6kl_diag_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath6kl_wmi_set_rx_frame_format_cmd(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath6kl_wmi_pmparams_cmd(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath6kl_wmi_set_lpreamble_cmd(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath6kl_wmi_set_keepalive_cmd(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath6kl_wmi_disctimeout_cmd(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath6kl_wmi_set_wmm_txop(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath6kl_wmi_info_req_cmd(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath6kl_wmi_probe_report_req_cmd(ptr noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath6kl_bmi_reset(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath6kl_diag_write32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 176)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 176)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind readonly willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nobuiltin }
attributes #13 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !292, !294, !296, !298, !300, !302, !304, !306, !308, !310, !312, !314, !316, !318, !320, !322, !324, !326, !328, !330, !332, !334, !336, !338, !340, !342, !344, !346, !348, !350, !352, !354, !356, !358, !360, !362, !364}
!llvm.module.flags = !{!366, !367, !368, !369, !370, !371, !372, !373}
!llvm.ident = !{!374}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 544, i32 14}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 590, i32 14}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 598, i32 14}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 610, i32 14}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 614, i32 29}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 632, i32 15}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 638, i32 15}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 1164, i32 33}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 1170, i32 33}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 1176, i32 33}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 1182, i32 33}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 1195, i32 30}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 1589, i32 14}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 1597, i32 6}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 1601, i32 6}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 1605, i32 6}
!32 = distinct !{null, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 1876, i32 35}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 1881, i32 35}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 1894, i32 14}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 1933, i32 30}
!40 = !{ptr @__func__.ath6kl_stop_txrx, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 1933, i32 53}
!42 = !{ptr @__ksymtab_ath6kl_stop_txrx, !43, !"__ksymtab_ath6kl_stop_txrx", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 1945, i32 1}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 430, i32 14}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 434, i32 29}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 443, i32 15}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 747, i32 6}
!52 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 765, i32 14}
!54 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 773, i32 14}
!56 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 778, i32 14}
!58 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 779, i32 14}
!60 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 704, i32 37}
!62 = distinct !{null, !63, !"board_id_prop", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 704, i32 21}
!64 = !{ptr @.str.29, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 710, i32 2}
!66 = !{ptr @.str.30, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 713, i32 16}
!68 = !{ptr @.str.31, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 718, i32 5}
!70 = !{ptr @.str.32, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 723, i32 15}
!72 = !{ptr @.str.33, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 820, i32 30}
!74 = !{ptr @.str.34, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 824, i32 16}
!76 = !{ptr @.str.35, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 828, i32 40}
!78 = !{ptr @.str.36, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 832, i32 16}
!80 = !{ptr @.str.37, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 844, i32 14}
!82 = !{ptr @.str.38, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 967, i32 14}
!84 = !{ptr @.str.39, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 978, i32 14}
!86 = !{ptr @.str.40, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 984, i32 19}
!88 = !{ptr @.str.41, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 985, i32 14}
!90 = !{ptr @.str.42, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 1005, i32 31}
!92 = !{ptr @.str.43, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 1009, i32 15}
!94 = !{ptr @.str.44, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 1021, i32 8}
!96 = !{ptr @.str.45, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 1025, i32 32}
!98 = !{ptr @.str.46, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 1031, i32 16}
!100 = !{ptr @.str.47, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 1039, i32 32}
!102 = !{ptr @.str.48, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 1049, i32 16}
!104 = !{ptr @.str.49, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 1058, i32 32}
!106 = !{ptr @.str.50, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 1064, i32 16}
!108 = !{ptr @.str.51, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 1076, i32 8}
!110 = !{ptr @.str.52, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 1081, i32 8}
!112 = !{ptr @.str.53, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 1095, i32 37}
!114 = !{ptr @.str.54, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 1095, i32 53}
!116 = !{ptr @.str.55, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 1107, i32 8}
!118 = !{ptr @.str.56, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 1118, i32 8}
!120 = !{ptr @.str.57, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 1133, i32 8}
!122 = !{ptr @.str.58, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 1136, i32 32}
!124 = !{ptr @.str.59, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 794, i32 7}
!126 = !{ptr @.str.60, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 804, i32 14}
!128 = !{ptr @.str.61, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 869, i32 14}
!130 = !{ptr @.str.62, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 894, i32 14}
!132 = !{ptr @.str.63, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 922, i32 14}
!134 = !{ptr @.str.64, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 38, i32 14}
!136 = !{ptr @.str.65, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 51, i32 12}
!138 = !{ptr @.str.66, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 52, i32 12}
!140 = !{ptr @.str.67, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 53, i32 11}
!142 = !{ptr @.str.68, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 54, i32 13}
!144 = !{ptr @.str.69, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 55, i32 14}
!146 = !{ptr @.str.70, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 58, i32 16}
!148 = !{ptr @.str.71, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 59, i32 23}
!150 = !{ptr @.str.72, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 63, i32 14}
!152 = !{ptr @.str.73, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 74, i32 12}
!154 = !{ptr @.str.74, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 75, i32 12}
!156 = !{ptr @.str.75, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 76, i32 11}
!158 = !{ptr @.str.76, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 79, i32 12}
!160 = !{ptr @.str.77, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 80, i32 18}
!162 = !{ptr @.str.78, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 83, i32 16}
!164 = !{ptr @.str.79, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 84, i32 23}
!166 = !{ptr @.str.80, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 88, i32 14}
!168 = !{ptr @.str.81, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 99, i32 12}
!170 = !{ptr @.str.82, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 100, i32 11}
!172 = !{ptr @.str.83, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 103, i32 16}
!174 = !{ptr @.str.84, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 104, i32 23}
!176 = !{ptr @.str.85, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 108, i32 14}
!178 = !{ptr @.str.86, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 118, i32 12}
!180 = !{ptr @.str.87, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 122, i32 16}
!182 = !{ptr @.str.88, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 123, i32 23}
!184 = !{ptr @.str.89, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 127, i32 14}
!186 = !{ptr @.str.90, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 138, i32 12}
!188 = !{ptr @.str.91, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 141, i32 16}
!190 = !{ptr @.str.92, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 146, i32 14}
!192 = !{ptr @.str.93, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 157, i32 22}
!194 = !{ptr @.str.94, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 164, i32 29}
!196 = !{ptr @.str.95, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 169, i32 14}
!198 = !{ptr @.str.96, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 180, i32 12}
!200 = !{ptr @.str.97, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 187, i32 16}
!202 = !{ptr @hw_list, !203, !"hw_list", i1 false, i1 false}
!203 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 35, i32 31}
!204 = !{ptr @.str.98, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 1712, i32 30}
!206 = !{ptr @.str.99, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 1745, i32 15}
!208 = !{ptr @.str.100, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 1749, i32 14}
!210 = !{ptr @.str.101, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 1755, i32 14}
!212 = !{ptr @.str.102, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 1777, i32 14}
!214 = !{ptr @.str.103, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 1783, i32 30}
!216 = !{ptr @.str.104, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 1786, i32 15}
!218 = !{ptr @.str.105, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 1791, i32 40}
!220 = !{ptr @.str.106, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 1793, i32 15}
!222 = !{ptr @.str.107, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 1797, i32 14}
!224 = !{ptr @.str.108, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 1803, i32 29}
!226 = !{ptr @__func__.__ath6kl_init_hw_start, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 1803, i32 51}
!228 = !{ptr @.str.109, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 1808, i32 14}
!230 = !{ptr @.str.110, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/net/wireless/ath/ath6kl/hif-ops.h", i32 134, i32 29}
!232 = !{ptr @.str.111, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 1476, i32 29}
!234 = !{ptr @.str.112, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 1506, i32 14}
!236 = !{ptr @.str.113, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 1221, i32 15}
!238 = !{ptr @.str.114, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 1229, i32 14}
!240 = !{ptr @.str.115, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 1259, i32 7}
!242 = !{ptr @.str.116, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 1266, i32 15}
!244 = !{ptr @.str.117, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 1278, i32 14}
!246 = !{ptr @.str.118, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 1283, i32 30}
!248 = !{ptr @.str.119, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 1290, i32 14}
!250 = !{ptr @.str.120, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 1317, i32 30}
!252 = !{ptr @.str.121, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 1323, i32 14}
!254 = !{ptr @.str.122, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 1331, i32 14}
!256 = !{ptr @.str.123, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 1340, i32 30}
!258 = !{ptr @.str.124, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 1341, i32 16}
!260 = !{ptr @.str.125, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 1345, i32 30}
!262 = !{ptr @.str.126, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 1363, i32 30}
!264 = !{ptr @.str.127, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 1369, i32 14}
!266 = !{ptr @.str.128, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 1394, i32 30}
!268 = !{ptr @.str.129, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 1399, i32 14}
!270 = !{ptr @.str.130, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 1421, i32 30}
!272 = !{ptr @.str.131, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 1427, i32 14}
!274 = !{ptr @.str.132, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 347, i32 42}
!276 = !{ptr @.str.133, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 377, i32 42}
!278 = !{ptr @.str.134, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 382, i32 42}
!280 = !{ptr @.str.135, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 387, i32 42}
!282 = !{ptr @.str.136, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 398, i32 42}
!284 = !{ptr @.str.137, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 293, i32 14}
!286 = !{ptr @.str.138, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 317, i32 14}
!288 = !{ptr @.str.139, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 1615, i32 10}
!290 = !{ptr @.str.140, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 1617, i32 10}
!292 = distinct !{null, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 1666, i32 16}
!294 = !{ptr @.str.142, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 1676, i32 16}
!296 = !{ptr @.str.143, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 1686, i32 47}
!298 = distinct !{null, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 1658, i32 9}
!300 = !{ptr @.str.145, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 1628, i32 35}
!302 = !{ptr @.str.146, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 1629, i32 37}
!304 = !{ptr @.str.147, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 1630, i32 44}
!306 = !{ptr @.str.148, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 1631, i32 45}
!308 = !{ptr @.str.149, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 1632, i32 43}
!310 = !{ptr @.str.150, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 1633, i32 47}
!312 = !{ptr @.str.151, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 1634, i32 40}
!314 = !{ptr @.str.152, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 1635, i32 48}
!316 = !{ptr @.str.153, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 1636, i32 42}
!318 = !{ptr @.str.154, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 1637, i32 42}
!320 = !{ptr @.str.155, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 1638, i32 40}
!322 = !{ptr @.str.156, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 1639, i32 36}
!324 = !{ptr @.str.157, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 1640, i32 40}
!326 = !{ptr @.str.158, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 1641, i32 42}
!328 = !{ptr @.str.159, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 1642, i32 38}
!330 = !{ptr @.str.160, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 1643, i32 45}
!332 = !{ptr @.str.161, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 1644, i32 42}
!334 = !{ptr @.str.162, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 1645, i32 42}
!336 = !{ptr @.str.163, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 1646, i32 41}
!338 = !{ptr @fw_capa_map, !339, !"fw_capa_map", i1 false, i1 false}
!339 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 1627, i32 3}
!340 = !{ptr @.str.164, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 464, i32 14}
!342 = !{ptr @.str.165, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 472, i32 15}
!344 = !{ptr @.str.166, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 482, i32 15}
!346 = !{ptr @.str.167, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 491, i32 14}
!348 = !{ptr @.str.168, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 498, i32 14}
!350 = !{ptr @.str.169, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 505, i32 15}
!352 = !{ptr @.str.170, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 517, i32 8}
!354 = !{ptr @.str.171, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 528, i32 8}
!356 = !{ptr @.str.172, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../drivers/net/wireless/ath/ath6kl/hif-ops.h", i32 141, i32 29}
!358 = !{ptr @.str.173, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 1843, i32 30}
!360 = !{ptr @.str.174, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 1853, i32 15}
!362 = !{ptr @.str.175, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../drivers/net/wireless/ath/ath6kl/hif-ops.h", i32 148, i32 29}
!364 = !{ptr @.str.176, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../drivers/net/wireless/ath/ath6kl/init.c", i32 1700, i32 30}
!366 = !{i32 1, !"wchar_size", i32 2}
!367 = !{i32 1, !"min_enum_size", i32 4}
!368 = !{i32 8, !"branch-target-enforcement", i32 0}
!369 = !{i32 8, !"sign-return-address", i32 0}
!370 = !{i32 8, !"sign-return-address-all", i32 0}
!371 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!372 = !{i32 7, !"uwtable", i32 1}
!373 = !{i32 7, !"frame-pointer", i32 2}
!374 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!375 = !{i8 0, i8 2}
!376 = !{!"auto-init"}
!377 = !{!"branch_weights", i32 1, i32 2000}
