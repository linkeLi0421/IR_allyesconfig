; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/intersil/hostap/hostap_ap.c_pt.bc'
source_filename = "../drivers/net/wireless/intersil/hostap/hostap_ap.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+hostap_init_data\22, \22a\22\09"
module asm "\09.weak\09__crc_hostap_init_data\09\09\09\09"
module asm "\09.long\09__crc_hostap_init_data\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hostap_init_data:\09\09\09\09\09"
module asm "\09.asciz \09\22hostap_init_data\22\09\09\09\09\09"
module asm "__kstrtabns_hostap_init_data:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+hostap_init_ap_proc\22, \22a\22\09"
module asm "\09.weak\09__crc_hostap_init_ap_proc\09\09\09\09"
module asm "\09.long\09__crc_hostap_init_ap_proc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hostap_init_ap_proc:\09\09\09\09\09"
module asm "\09.asciz \09\22hostap_init_ap_proc\22\09\09\09\09\09"
module asm "__kstrtabns_hostap_init_ap_proc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+hostap_free_data\22, \22a\22\09"
module asm "\09.weak\09__crc_hostap_free_data\09\09\09\09"
module asm "\09.long\09__crc_hostap_free_data\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hostap_free_data:\09\09\09\09\09"
module asm "\09.asciz \09\22hostap_free_data\22\09\09\09\09\09"
module asm "__kstrtabns_hostap_free_data:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+hostap_check_sta_fw_version\22, \22a\22\09"
module asm "\09.weak\09__crc_hostap_check_sta_fw_version\09\09\09\09"
module asm "\09.long\09__crc_hostap_check_sta_fw_version\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hostap_check_sta_fw_version:\09\09\09\09\09"
module asm "\09.asciz \09\22hostap_check_sta_fw_version\22\09\09\09\09\09"
module asm "__kstrtabns_hostap_check_sta_fw_version:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+hostap_handle_sta_tx_exc\22, \22a\22\09"
module asm "\09.weak\09__crc_hostap_handle_sta_tx_exc\09\09\09\09"
module asm "\09.long\09__crc_hostap_handle_sta_tx_exc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hostap_handle_sta_tx_exc:\09\09\09\09\09"
module asm "\09.asciz \09\22hostap_handle_sta_tx_exc\22\09\09\09\09\09"
module asm "__kstrtabns_hostap_handle_sta_tx_exc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.97 }
%union.anon.97 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ap_data = type { i32, ptr, i32, i32, i32, i32, i32, %struct.spinlock, i32, %struct.list_head, [256 x ptr], ptr, i32, i32, i32, %struct.mac_restrictions, i32, %struct.work_struct, ptr, %struct.work_struct, ptr, i16, [128 x ptr], i16, i16, i16, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.mac_restrictions = type { i32, i32, %struct.list_head, %struct.spinlock }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.local_info = type { ptr, i32, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.mutex, i16, %struct.spinlock, i32, [8 x i16], [8 x i16], i32, i32, i32, ptr, [33 x i8], [33 x i8], i32, i16, i16, %struct.comm_tallies_sums, ptr, i32, i32, [6 x i8], i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, i32, %struct.work_struct, i32, %struct.work_struct, %struct.work_struct, %struct.list_head, %struct.spinlock, i32, i32, i32, i16, i32, %struct.iw_statistics, i32, i32, i32, i32, i32, ptr, %struct.net_device_stats, [6 x i8], ptr, %struct.net_device_stats, %struct.lib80211_crypt_info, i32, i32, i32, i32, i32, i32, [4 x %struct.prism2_frag_entry], i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, %struct.tasklet_struct, %struct.tasklet_struct, %struct.sk_buff_head, ptr, %struct.tasklet_struct, %struct.sk_buff_head, %struct.tasklet_struct, %struct.sk_buff_head, i32, i32, ptr, i32, i32, %struct.work_struct, i32, i32, i32, [6 x i8], %struct.wait_queue_head, %struct.timer_list, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, i32, i32, %struct.work_struct, i32, %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.comm_tallies_sums = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.iw_statistics = type { i16, %struct.iw_quality, %struct.iw_discarded, %struct.iw_missed }
%struct.iw_quality = type { i8, i8, i8, i8 }
%struct.iw_discarded = type { i32, i32, i32, i32, i32 }
%struct.iw_missed = type { i32 }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.lib80211_crypt_info = type { ptr, ptr, [4 x ptr], i32, %struct.list_head, %struct.timer_list, i32 }
%struct.prism2_frag_entry = type { i32, i32, i32, ptr, [6 x i8], [6 x i8] }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.121, i32 }
%union.anon.121 = type { ptr }
%struct.sk_buff_head = type { %union.anon.64, i32, %struct.spinlock }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.103, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.120, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.103 = type { %struct.list_head, %struct.list_head }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.120 = type { ptr }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.ieee80211_hdr = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, [6 x i8] }
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
%struct.mac_entry = type { %struct.list_head, [6 x i8] }
%union.iwreq_data = type { %struct.iw_point, [8 x i8] }
%struct.iw_point = type { ptr, i16, i16 }
%struct.sta_info = type { %struct.list_head, ptr, %struct.atomic_t, ptr, [6 x i8], i16, i32, i16, i16, [32 x i8], i32, i32, i32, i32, i32, i32, i32, i32, %struct.sk_buff_head, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i32], [4 x i32], i32, i32, ptr, i32, ptr, %union.anon.122, %struct.timer_list, i32 }
%union.anon.122 = type { %struct.anon.124 }
%struct.anon.124 = type { i32, [33 x i8], i32, i32 }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.lib80211_crypt_data = type { %struct.list_head, ptr, ptr, %struct.atomic_t }
%struct.lib80211_crypto_ops = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.add_sta_proc_data = type { [6 x i8], ptr }
%struct.wds_oper_data = type { i32, [6 x i8], ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.99, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.100, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.101, ptr, %struct.address_space, %struct.list_head, %union.anon.102, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.99 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.100 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.101 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.102 = type { ptr }
%struct.prism2_helper_functions = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.iw_event = type { i16, i16, %union.iwreq_data }
%struct.prism2_hostapd_param = type { i32, [6 x i8], %union.anon.126 }
%union.anon.126 = type { %struct.anon.129 }
%struct.anon.129 = type { [16 x i8], i32, i32, i8, [8 x i8], i16, [0 x i8] }
%struct.hostap_interface = type { %struct.list_head, ptr, ptr, %struct.net_device_stats, %struct.iw_spy_data, %struct.iw_public_data, i32, %union.anon.125 }
%struct.iw_spy_data = type { i32, [8 x [6 x i8]], [8 x %struct.iw_quality], %struct.iw_quality, %struct.iw_quality, [8 x i8] }
%struct.iw_public_data = type { ptr, ptr }
%union.anon.125 = type { %struct.hostap_interface_wds }
%struct.hostap_interface_wds = type { [6 x i8] }
%struct.hostap_tx_data = type { ptr, i32, ptr, ptr }
%struct.hostap_80211_rx_status = type { i32, i8, i8, i16 }

@__param_str_other_ap_policy = internal constant [23 x i8] c"hostap.other_ap_policy\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_other_ap_policy = internal constant %struct.kparam_array { i32 8, i32 4, ptr null, ptr @param_ops_int, ptr @other_ap_policy }, align 4
@__param_other_ap_policy = internal constant %struct.kernel_param { ptr @__param_str_other_ap_policy, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.97 { ptr @__param_arr_other_ap_policy } }, section "__param", align 4
@__UNIQUE_ID_other_ap_policytype339 = internal constant [45 x i8] c"hostap.parmtype=other_ap_policy:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_other_ap_policy340 = internal constant [68 x i8] c"hostap.parm=other_ap_policy:Other AP beacon monitoring policy (0-3)\00", section ".modinfo", align 1
@__param_str_ap_max_inactivity = internal constant [25 x i8] c"hostap.ap_max_inactivity\00", align 1
@__param_arr_ap_max_inactivity = internal constant %struct.kparam_array { i32 8, i32 4, ptr null, ptr @param_ops_int, ptr @ap_max_inactivity }, align 4
@__param_ap_max_inactivity = internal constant %struct.kernel_param { ptr @__param_str_ap_max_inactivity, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.97 { ptr @__param_arr_ap_max_inactivity } }, section "__param", align 4
@__UNIQUE_ID_ap_max_inactivitytype341 = internal constant [47 x i8] c"hostap.parmtype=ap_max_inactivity:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_ap_max_inactivity342 = internal constant [77 x i8] c"hostap.parm=ap_max_inactivity:AP timeout (in seconds) for station inactivity\00", section ".modinfo", align 1
@__param_str_ap_bridge_packets = internal constant [25 x i8] c"hostap.ap_bridge_packets\00", align 1
@__param_arr_ap_bridge_packets = internal constant %struct.kparam_array { i32 8, i32 4, ptr null, ptr @param_ops_int, ptr @ap_bridge_packets }, align 4
@__param_ap_bridge_packets = internal constant %struct.kernel_param { ptr @__param_str_ap_bridge_packets, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.97 { ptr @__param_arr_ap_bridge_packets } }, section "__param", align 4
@__UNIQUE_ID_ap_bridge_packetstype343 = internal constant [47 x i8] c"hostap.parmtype=ap_bridge_packets:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_ap_bridge_packets344 = internal constant [71 x i8] c"hostap.parm=ap_bridge_packets:Bridge packets directly between stations\00", section ".modinfo", align 1
@__param_str_autom_ap_wds = internal constant [20 x i8] c"hostap.autom_ap_wds\00", align 1
@__param_arr_autom_ap_wds = internal constant %struct.kparam_array { i32 8, i32 4, ptr null, ptr @param_ops_int, ptr @autom_ap_wds }, align 4
@__param_autom_ap_wds = internal constant %struct.kernel_param { ptr @__param_str_autom_ap_wds, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.97 { ptr @__param_arr_autom_ap_wds } }, section "__param", align 4
@__UNIQUE_ID_autom_ap_wdstype345 = internal constant [42 x i8] c"hostap.parmtype=autom_ap_wds:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_autom_ap_wds346 = internal constant [72 x i8] c"hostap.parm=autom_ap_wds:Add WDS connections to other APs automatically\00", section ".modinfo", align 1
@hostap_deauth_all_stas._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 299, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017%s: Deauthenticate all stations\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"hostap_deauth_all_stas\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/net/wireless/intersil/hostap/hostap_ap.c\00", [47 x i8] zeroinitializer }, align 32
@hostap_deauth_all_stas._entry_ptr = internal global ptr @hostap_deauth_all_stas._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@hostap_check_sta_fw_version._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 590, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\017Using data::nullfunc ACK workaround - firmware upgrade recommended\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"hostap_check_sta_fw_version\00", [36 x i8] zeroinitializer }, align 32
@hostap_check_sta_fw_version._entry_ptr = internal global ptr @hostap_check_sta_fw_version._entry, section ".printk_index", align 4
@hostap_check_sta_fw_version._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.4, ptr @.str.2, i32 598, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [95 x i8], [33 x i8] } { [95 x i8] c"\014%s: Warning: secondary station firmware version 1.4.2 does not seem to work in Host AP mode\0A\00", [33 x i8] zeroinitializer }, align 32
@hostap_check_sta_fw_version._entry_ptr.7 = internal global ptr @hostap_check_sta_fw_version._entry.5, section ".printk_index", align 4
@hostap_init_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 797, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\014hostap_init_data: ap == NULL\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hostap_init_data\00", [47 x i8] zeroinitializer }, align 32
@hostap_init_data._entry_ptr = internal global ptr @hostap_init_data._entry, section ".printk_index", align 4
@other_ap_policy = internal global { [8 x i32], [32 x i8] } { [8 x i32] [i32 0, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i8] zeroinitializer }, align 32
@ap_bridge_packets = internal global { [8 x i32], [32 x i8] } { [8 x i32] [i32 1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i8] zeroinitializer }, align 32
@ap_max_inactivity = internal global { [8 x i32], [32 x i8] } { [8 x i32] [i32 300, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i8] zeroinitializer }, align 32
@autom_ap_wds = internal global { [8 x i32], [32 x i8] } { [8 x i32] [i32 0, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i8] zeroinitializer }, align 32
@hostap_init_data.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&ap->sta_table_lock\00", [44 x i8] zeroinitializer }, align 32
@hostap_init_data.__key.11 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"(work_completion)(&local->ap->add_sta_proc_queue)\00", [46 x i8] zeroinitializer }, align 32
@hostap_init_data._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.9, ptr @.str.2, i32 819, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\014%s: failed to register TX callback for AP\0A\00", [51 x i8] zeroinitializer }, align 32
@hostap_init_data._entry_ptr.15 = internal global ptr @hostap_init_data._entry.13, section ".printk_index", align 4
@hostap_init_data.__key.16 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"(work_completion)(&local->ap->wds_oper_queue)\00", [50 x i8] zeroinitializer }, align 32
@hostap_init_data._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.9, ptr @.str.2, i32 832, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@hostap_init_data._entry_ptr.19 = internal global ptr @hostap_init_data._entry.18, section ".printk_index", align 4
@hostap_init_data.__key.20 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"&ap->mac_restrictions.lock\00", [37 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ap_debug\00", [23 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ap_control\00", [21 x i8] zeroinitializer }, align 32
@ap_control_proc_seqops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @ap_control_proc_start, ptr @ap_control_proc_stop, ptr @ap_control_proc_next, ptr @ap_control_proc_show }, [16 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ap\00", [29 x i8] zeroinitializer }, align 32
@prism2_ap_proc_seqops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @prism2_ap_proc_start, ptr @prism2_ap_proc_stop, ptr @prism2_ap_proc_next, ptr @prism2_ap_proc_show }, [16 x i8] zeroinitializer }, align 32
@hostap_free_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.2, i32 869, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"\017hostap_free_data: ap has not yet been initialized - skip resource freeing\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hostap_free_data\00", [47 x i8] zeroinitializer }, align 32
@hostap_free_data._entry_ptr = internal global ptr @hostap_free_data._entry, section ".printk_index", align 4
@freq_list = internal constant { [14 x i32], [40 x i8] } { [14 x i32] [i32 2412, i32 2417, i32 2422, i32 2427, i32 2432, i32 2437, i32 2442, i32 2447, i32 2452, i32 2457, i32 2462, i32 2467, i32 2472, i32 2484], [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"beacon_interval=%d\00", [45 x i8] zeroinitializer }, align 32
@prism2_hostapd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.2, i32 2630, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\014prism2_hostapd: unknown cmd=%d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"prism2_hostapd\00", [17 x i8] zeroinitializer }, align 32
@prism2_hostapd._entry_ptr = internal global ptr @prism2_hostapd._entry, section ".printk_index", align 4
@hostap_handle_sta_tx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.2, i32 2764, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\017%s: No more space in STA (%pM)'sPS mode buffer\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hostap_handle_sta_tx\00", [43 x i8] zeroinitializer }, align 32
@hostap_handle_sta_tx._entry_ptr = internal global ptr @hostap_handle_sta_tx._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@hostap_handle_sta_tx_exc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.2, i32 2838, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\017%s: Could not find STA %pM for this TX error (@%lu)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"hostap_handle_sta_tx_exc\00", [39 x i8] zeroinitializer }, align 32
@hostap_handle_sta_tx_exc._entry_ptr = internal global ptr @hostap_handle_sta_tx_exc._entry, section ".printk_index", align 4
@hostap_handle_sta_tx_exc._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.33, ptr @.str.2, i32 2867, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017%s: STA %pM TX rate lowered to %d\0A\00", [59 x i8] zeroinitializer }, align 32
@hostap_handle_sta_tx_exc._entry_ptr.36 = internal global ptr @hostap_handle_sta_tx_exc._entry.34, section ".printk_index", align 4
@hostap_handle_sta_rx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.2, i32 2965, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"\017%s: dropped received packet from non-associated STA %pM (type=0x%02x, subtype=0x%02x)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hostap_handle_sta_rx\00", [43 x i8] zeroinitializer }, align 32
@hostap_handle_sta_rx._entry_ptr = internal global ptr @hostap_handle_sta_rx._entry, section ".printk_index", align 4
@hostap_handle_sta_rx._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.38, ptr @.str.2, i32 2978, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\017Odd.. FromDS packet received with own BSSID\0A\00", [49 x i8] zeroinitializer }, align 32
@hostap_handle_sta_rx._entry_ptr.41 = internal global ptr @hostap_handle_sta_rx._entry.39, section ".printk_index", align 4
@hostap_handle_sta_rx._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.38, ptr @.str.2, i32 2999, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"\017%s: rejected received nullfunc frame without ToDS from not associated STA %pM\0A\00", [47 x i8] zeroinitializer }, align 32
@hostap_handle_sta_rx._entry_ptr.44 = internal global ptr @hostap_handle_sta_rx._entry.42, section ".printk_index", align 4
@hostap_handle_sta_rx._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.38, ptr @.str.2, i32 3018, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [88 x i8], [40 x i8] } { [88 x i8] c"\017%s: dropped received packet from %pM with no ToDS flag (type=0x%02x, subtype=0x%02x)\0A\00", [40 x i8] zeroinitializer }, align 32
@hostap_handle_sta_rx._entry_ptr.47 = internal global ptr @hostap_handle_sta_rx._entry.45, section ".printk_index", align 4
@__kstrtab_hostap_init_data = external dso_local constant [0 x i8], align 1
@__kstrtabns_hostap_init_data = external dso_local constant [0 x i8], align 1
@__ksymtab_hostap_init_data = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hostap_init_data to i32), ptr @__kstrtab_hostap_init_data, ptr @__kstrtabns_hostap_init_data }, section "___ksymtab+hostap_init_data", align 4
@__kstrtab_hostap_init_ap_proc = external dso_local constant [0 x i8], align 1
@__kstrtabns_hostap_init_ap_proc = external dso_local constant [0 x i8], align 1
@__ksymtab_hostap_init_ap_proc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hostap_init_ap_proc to i32), ptr @__kstrtab_hostap_init_ap_proc, ptr @__kstrtabns_hostap_init_ap_proc }, section "___ksymtab+hostap_init_ap_proc", align 4
@__kstrtab_hostap_free_data = external dso_local constant [0 x i8], align 1
@__kstrtabns_hostap_free_data = external dso_local constant [0 x i8], align 1
@__ksymtab_hostap_free_data = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hostap_free_data to i32), ptr @__kstrtab_hostap_free_data, ptr @__kstrtabns_hostap_free_data }, section "___ksymtab+hostap_free_data", align 4
@__kstrtab_hostap_check_sta_fw_version = external dso_local constant [0 x i8], align 1
@__kstrtabns_hostap_check_sta_fw_version = external dso_local constant [0 x i8], align 1
@__ksymtab_hostap_check_sta_fw_version = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hostap_check_sta_fw_version to i32), ptr @__kstrtab_hostap_check_sta_fw_version, ptr @__kstrtabns_hostap_check_sta_fw_version }, section "___ksymtab+hostap_check_sta_fw_version", align 4
@__kstrtab_hostap_handle_sta_tx_exc = external dso_local constant [0 x i8], align 1
@__kstrtabns_hostap_handle_sta_tx_exc = external dso_local constant [0 x i8], align 1
@__ksymtab_hostap_handle_sta_tx_exc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hostap_handle_sta_tx_exc to i32), ptr @__kstrtab_hostap_handle_sta_tx_exc, ptr @__kstrtabns_hostap_handle_sta_tx_exc }, section "___ksymtab+hostap_handle_sta_tx_exc", align 4
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ap_sta_hash_del._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.2, i32 109, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"AP: could not remove STA %pM from hash table\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ap_sta_hash_del\00", [16 x i8] zeroinitializer }, align 32
@ap_sta_hash_del._entry_ptr = internal global ptr @ap_sta_hash_del._entry, section ".printk_index", align 4
@.str.50 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%pM\00", [28 x i8] zeroinitializer }, align 32
@hostap_ap_tx_cb_auth._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.2, i32 651, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\017%s: hostap_ap_tx_cb_auth received invalid frame\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hostap_ap_tx_cb_auth\00", [43 x i8] zeroinitializer }, align 32
@hostap_ap_tx_cb_auth._entry_ptr = internal global ptr @hostap_ap_tx_cb_auth._entry, section ".printk_index", align 4
@.str.53 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"frame was not ACKed\00", [44 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"STA not found\00", [18 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"STA authenticated\00", [46 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"authentication failed\00", [42 x i8] zeroinitializer }, align 32
@hostap_ap_tx_cb_auth._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.52, ptr @.str.2, i32 693, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\017%s: %pM auth_cb - alg=%d trans#=%d status=%d - %s\0A\00", [43 x i8] zeroinitializer }, align 32
@hostap_ap_tx_cb_auth._entry_ptr.59 = internal global ptr @hostap_ap_tx_cb_auth._entry.57, section ".printk_index", align 4
@hostap_ap_tx_cb_assoc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.2, i32 720, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\017%s: hostap_ap_tx_cb_assoc received invalid frame\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"hostap_ap_tx_cb_assoc\00", [42 x i8] zeroinitializer }, align 32
@hostap_ap_tx_cb_assoc._entry_ptr = internal global ptr @hostap_ap_tx_cb_assoc._entry, section ".printk_index", align 4
@.str.62 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"STA associated\00", [17 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"association failed\00", [45 x i8] zeroinitializer }, align 32
@hostap_ap_tx_cb_assoc._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.61, ptr @.str.2, i32 758, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017%s: %pM assoc_cb - %s\0A\00", [39 x i8] zeroinitializer }, align 32
@hostap_ap_tx_cb_assoc._entry_ptr.66 = internal global ptr @hostap_ap_tx_cb_assoc._entry.64, section ".printk_index", align 4
@hostap_ap_tx_cb_poll._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.2, i32 783, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\017%s: STA %pM did not ACK activity poll frame\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hostap_ap_tx_cb_poll\00", [43 x i8] zeroinitializer }, align 32
@hostap_ap_tx_cb_poll._entry_ptr = internal global ptr @hostap_ap_tx_cb_poll._entry, section ".printk_index", align 4
@.str.69 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"BridgedUnicastFrames=%u\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"BridgedMulticastFrames=%u\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"max_inactivity=%u\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bridge_packets=%u\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nullfunc_ack=%u\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"autom_ap_wds=%u\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"auth_algs=%u\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tx_drop_nonassoc=%u\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"open\00", [27 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"allow\00", [26 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"deny\00", [27 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"MAC policy: %s\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"MAC entries: %u\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"MAC list:\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%pM\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"# BSSID CHAN SIGNAL NOISE RATE SSID FLAGS\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%pM %d %d %d %d '\00", [46 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"<%02x>\00", [25 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" [ESS]\00", [25 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" [IBSS]\00", [24 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" [WEP]\00", [25 x i8] zeroinitializer }, align 32
@prism2_send_mgmt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.92, ptr @.str.2, i32 942, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\017%s: prism2_send_mgmt - device is not UP - cannot send frame\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"prism2_send_mgmt\00", [47 x i8] zeroinitializer }, align 32
@prism2_send_mgmt._entry_ptr = internal global ptr @prism2_send_mgmt._entry, section ".printk_index", align 4
@prism2_send_mgmt._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.92, ptr @.str.2, i32 949, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\017%s: prism2_send_mgmt failed to allocate skb\0A\00", [49 x i8] zeroinitializer }, align 32
@prism2_send_mgmt._entry_ptr.95 = internal global ptr @prism2_send_mgmt._entry.93, section ".printk_index", align 4
@.str.96 = internal constant { [104 x i8], [56 x i8] } { [104 x i8] c"%s=%pM\0Ausers=%d\0Aaid=%d\0Aflags=0x%04x%s%s%s%s%s%s%s\0Acapability=0x%02x\0Alisten_interval=%d\0Asupported_rates=\00", [56 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"AP\00", [29 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"STA\00", [28 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" AUTH\00", [26 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.101 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" ASSOC\00", [25 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" PS\00", [28 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" TIM\00", [27 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" PERM\00", [26 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c" AUTHORIZED\00", [20 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" POLL\00", [26 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%d%sMbps \00", [22 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c".5\00", [29 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [289 x i8], [95 x i8] } { [289 x i8] c"\0Ajiffies=%lu\0Alast_auth=%lu\0Alast_assoc=%lu\0Alast_rx=%lu\0Alast_tx=%lu\0Arx_packets=%lu\0Atx_packets=%lu\0Arx_bytes=%lu\0Atx_bytes=%lu\0Abuffer_count=%d\0Alast_rx: silence=%d dBm signal=%d dBm rate=%d%s Mbps\0Atx_rate=%d\0Atx[1M]=%d\0Atx[2M]=%d\0Atx[5.5M]=%d\0Atx[11M]=%d\0Arx[1M]=%d\0Arx[2M]=%d\0Arx[5.5M]=%d\0Arx[11M]=%d\0A\00", [95 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"channel=%d\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ssid=\00", [26 x i8] zeroinitializer }, align 32
@handle_wds_oper_queue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.113, ptr @.str.2, i32 1968, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\017%s: %s automatic WDS connection to AP %pM\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"handle_wds_oper_queue\00", [42 x i8] zeroinitializer }, align 32
@handle_wds_oper_queue._entry_ptr = internal global ptr @handle_wds_oper_queue._entry, section ".printk_index", align 4
@.str.114 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"adding\00", [25 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"removing\00", [23 x i8] zeroinitializer }, align 32
@handle_ap_item._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.117, ptr @.str.2, i32 2155, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017handle_ap_item - data frame\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"handle_ap_item\00", [17 x i8] zeroinitializer }, align 32
@handle_ap_item._entry_ptr = internal global ptr @handle_ap_item._entry, section ".printk_index", align 4
@handle_ap_item._entry.118 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.117, ptr @.str.2, i32 2167, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017   not ToDS frame (fc=0x%04x)\0A\00", [63 x i8] zeroinitializer }, align 32
@handle_ap_item._entry_ptr.120 = internal global ptr @handle_ap_item._entry.118, section ".printk_index", align 4
@handle_ap_item._entry.121 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.117, ptr @.str.2, i32 2173, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\017handle_ap_item - addr1(BSSID)=%pM not own MAC\0A\00", [47 x i8] zeroinitializer }, align 32
@handle_ap_item._entry_ptr.123 = internal global ptr @handle_ap_item._entry.121, section ".printk_index", align 4
@handle_ap_item._entry.124 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.117, ptr @.str.2, i32 2198, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\017Unknown frame in AP queue: type=0x%02x subtype=0x%02x\0A\00", [39 x i8] zeroinitializer }, align 32
@handle_ap_item._entry_ptr.126 = internal global ptr @handle_ap_item._entry.124, section ".printk_index", align 4
@handle_ap_item._entry.127 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.117, ptr @.str.2, i32 2204, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017handle_ap_item - not a management frame?\0A\00", [52 x i8] zeroinitializer }, align 32
@handle_ap_item._entry_ptr.129 = internal global ptr @handle_ap_item._entry.127, section ".printk_index", align 4
@handle_ap_item._entry.130 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.117, ptr @.str.2, i32 2210, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\017handle_ap_item - addr1(DA)=%pM not own MAC\0A\00", [50 x i8] zeroinitializer }, align 32
@handle_ap_item._entry_ptr.132 = internal global ptr @handle_ap_item._entry.130, section ".printk_index", align 4
@handle_ap_item._entry.133 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @.str.117, ptr @.str.2, i32 2216, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\017handle_ap_item - addr3(BSSID)=%pM not own MAC\0A\00", [47 x i8] zeroinitializer }, align 32
@handle_ap_item._entry_ptr.135 = internal global ptr @handle_ap_item._entry.133, section ".printk_index", align 4
@handle_ap_item._entry.136 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.117, ptr @.str.2, i32 2225, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017==> ASSOC RESP (ignored)\0A\00", [36 x i8] zeroinitializer }, align 32
@handle_ap_item._entry_ptr.138 = internal global ptr @handle_ap_item._entry.136, section ".printk_index", align 4
@handle_ap_item._entry.139 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.117, ptr @.str.2, i32 2231, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017==> REASSOC RESP (ignored)\0A\00", [34 x i8] zeroinitializer }, align 32
@handle_ap_item._entry_ptr.141 = internal global ptr @handle_ap_item._entry.139, section ".printk_index", align 4
@handle_ap_item._entry.142 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.143, ptr @.str.117, ptr @.str.2, i32 2234, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\017==> ATIM (ignored)\0A\00", [42 x i8] zeroinitializer }, align 32
@handle_ap_item._entry_ptr.144 = internal global ptr @handle_ap_item._entry.142, section ".printk_index", align 4
@handle_ap_item._entry.145 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.146, ptr @.str.117, ptr @.str.2, i32 2247, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017Unknown mgmt frame subtype 0x%02x\0A\00", [59 x i8] zeroinitializer }, align 32
@handle_ap_item._entry_ptr.147 = internal global ptr @handle_ap_item._entry.145, section ".printk_index", align 4
@ap_handle_dropped_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.148, ptr @.str.149, ptr @.str.2, i32 1820, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017ap_handle_dropped_data: STA is now okay?\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ap_handle_dropped_data\00", [41 x i8] zeroinitializer }, align 32
@ap_handle_dropped_data._entry_ptr = internal global ptr @ap_handle_dropped_data._entry, section ".printk_index", align 4
@ap_handle_data_nullfunc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.150, ptr @.str.151, ptr @.str.2, i32 1799, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017Sending control::ACK for data::nullfunc\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ap_handle_data_nullfunc\00", [40 x i8] zeroinitializer }, align 32
@ap_handle_data_nullfunc._entry_ptr = internal global ptr @ap_handle_data_nullfunc._entry, section ".printk_index", align 4
@handle_beacon._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.153, ptr @.str.2, i32 2000, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\017handle_beacon - too short payload (len=%d)\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"handle_beacon\00", [18 x i8] zeroinitializer }, align 32
@handle_beacon._entry_ptr = internal global ptr @handle_beacon._entry, section ".printk_index", align 4
@handle_beacon._entry.154 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.155, ptr @.str.153, ptr @.str.2, i32 2030, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\017SSID: overflow\0A\00", [46 x i8] zeroinitializer }, align 32
@handle_beacon._entry_ptr.156 = internal global ptr @handle_beacon._entry.154, section ".printk_index", align 4
@handle_beacon._entry.157 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.153, ptr @.str.2, i32 2054, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017 - SUPP_RATES len error\0A\00", [37 x i8] zeroinitializer }, align 32
@handle_beacon._entry_ptr.159 = internal global ptr @handle_beacon._entry.157, section ".printk_index", align 4
@handle_beacon._entry.160 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.161, ptr @.str.153, ptr @.str.2, i32 2071, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017 - DS_PARAMS len error\0A\00", [38 x i8] zeroinitializer }, align 32
@handle_beacon._entry_ptr.162 = internal global ptr @handle_beacon._entry.160, section ".printk_index", align 4
@handle_beacon._entry.163 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.164, ptr @.str.153, ptr @.str.2, i32 2094, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016prism2: kmalloc failed for AP data structure\0A\00", [48 x i8] zeroinitializer }, align 32
@handle_beacon._entry_ptr.165 = internal global ptr @handle_beacon._entry.163, section ".printk_index", align 4
@handle_pspoll._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.166, ptr @.str.167, ptr @.str.2, i32 1879, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\017handle_pspoll - addr1(BSSID)=%pM not own MAC\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"handle_pspoll\00", [18 x i8] zeroinitializer }, align 32
@handle_pspoll._entry_ptr = internal global ptr @handle_pspoll._entry, section ".printk_index", align 4
@handle_pspoll._entry.168 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.169, ptr @.str.167, ptr @.str.2, i32 1885, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017   PSPOLL and AID[15:14] not set\0A\00", [60 x i8] zeroinitializer }, align 32
@handle_pspoll._entry_ptr.170 = internal global ptr @handle_pspoll._entry.168, section ".printk_index", align 4
@handle_pspoll._entry.171 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.172, ptr @.str.167, ptr @.str.2, i32 1890, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017   invalid aid=%d\0A\00", [43 x i8] zeroinitializer }, align 32
@handle_pspoll._entry_ptr.173 = internal global ptr @handle_pspoll._entry.171, section ".printk_index", align 4
@handle_pspoll._entry.174 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.175, ptr @.str.167, ptr @.str.2, i32 1902, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\017   STA not found\0A\00", [44 x i8] zeroinitializer }, align 32
@handle_pspoll._entry_ptr.176 = internal global ptr @handle_pspoll._entry.174, section ".printk_index", align 4
@handle_pspoll._entry.177 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.178, ptr @.str.167, ptr @.str.2, i32 1907, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\017   received aid=%i does not match with assoc.aid=%d\0A\00", [41 x i8] zeroinitializer }, align 32
@handle_pspoll._entry_ptr.179 = internal global ptr @handle_pspoll._entry.177, section ".printk_index", align 4
@handle_assoc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.180, ptr @.str.181, ptr @.str.2, i32 1515, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\017%s: handle_assoc - too short payload (len=%d, reassoc=%d) from %pM\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"handle_assoc\00", [19 x i8] zeroinitializer }, align 32
@handle_assoc._entry_ptr = internal global ptr @handle_assoc._entry, section ".printk_index", align 4
@handle_assoc._entry.186 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.187, ptr @.str.181, ptr @.str.2, i32 1594, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\017%s: assoc from %pM with extra data (%d bytes) [\00", [46 x i8] zeroinitializer }, align 32
@handle_assoc._entry_ptr.188 = internal global ptr @handle_assoc._entry.186, section ".printk_index", align 4
@handle_assoc._entry.189 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.181, ptr @.str.2, i32 1596, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@handle_assoc._entry_ptr.190 = internal global ptr @handle_assoc._entry.189, section ".printk_index", align 4
@handle_assoc._entry.191 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.192, ptr @.str.181, ptr @.str.2, i32 1599, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"]\0A\00", [29 x i8] zeroinitializer }, align 32
@handle_assoc._entry_ptr.193 = internal global ptr @handle_assoc._entry.191, section ".printk_index", align 4
@handle_disassoc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.198, ptr @.str.199, ptr @.str.2, i32 1761, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"handle_disassoc - too short payload (len=%d)\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"handle_disassoc\00", [16 x i8] zeroinitializer }, align 32
@handle_disassoc._entry_ptr = internal global ptr @handle_disassoc._entry, section ".printk_index", align 4
@handle_disassoc._entry.200 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.201, ptr @.str.199, ptr @.str.2, i32 1770, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\017%s: disassociation: %pM len=%d, reason_code=%d\0A\00", [46 x i8] zeroinitializer }, align 32
@handle_disassoc._entry_ptr.202 = internal global ptr @handle_disassoc._entry.200, section ".printk_index", align 4
@handle_disassoc._entry.203 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.204, ptr @.str.199, ptr @.str.2, i32 1783, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"%s: disassociation from %pM, reason_code=%d, but STA not authenticated\0A\00", [56 x i8] zeroinitializer }, align 32
@handle_disassoc._entry_ptr.205 = internal global ptr @handle_disassoc._entry.203, section ".printk_index", align 4
@handle_authen._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.206, ptr @.str.207, ptr @.str.2, i32 1305, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\017%s: handle_authen - too short payload (len=%d) from %pM\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"handle_authen\00", [18 x i8] zeroinitializer }, align 32
@handle_authen._entry_ptr = internal global ptr @handle_authen._entry, section ".printk_index", align 4
@.str.208 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"authentication denied\00", [42 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"unsupported algorithm\00", [42 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"invalid challenge len\00", [42 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"challenge underflow\00", [44 x i8] zeroinitializer }, align 32
@handle_authen._entry.212 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.213, ptr @.str.207, ptr @.str.2, i32 1371, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\017%s: no beacons received for a while, assuming AP %pM is now STA\0A\00", [61 x i8] zeroinitializer }, align 32
@handle_authen._entry_ptr.214 = internal global ptr @handle_authen._entry.212, section ".printk_index", align 4
@.str.215 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"AP trying to authenticate?\00", [37 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"unknown authentication transaction number\00", [54 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"new STA\00", [24 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"no more room for new STAs\00", [38 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ap_add_sta failed\00", [46 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"authOK\00", [25 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"challenge response incorrect\00", [35 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"challenge OK - authOK\00", [42 x i8] zeroinitializer }, align 32
@handle_authen._entry.223 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.224, ptr @.str.207, ptr @.str.2, i32 1490, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\017%s: %pM auth (alg=%d trans#=%d stat=%d len=%d fc=%04x) ==> %d (%s)\0A\00", [58 x i8] zeroinitializer }, align 32
@handle_authen._entry_ptr.225 = internal global ptr @handle_authen._entry.223, section ".printk_index", align 4
@ap_auth_make_challenge._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.226, ptr @.str.227, ptr @.str.2, i32 1254, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017AP: kmalloc failed for challenge\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ap_auth_make_challenge\00", [41 x i8] zeroinitializer }, align 32
@ap_auth_make_challenge._entry_ptr = internal global ptr @ap_auth_make_challenge._entry, section ".printk_index", align 4
@.str.228 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"WEP\00", [28 x i8] zeroinitializer }, align 32
@ap_crypt_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.229, ptr @.str.230, ptr @.str.2, i32 1228, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\014AP could not initialize WEP: load module lib80211_crypt_wep.ko\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ap_crypt_init\00", [18 x i8] zeroinitializer }, align 32
@ap_crypt_init._entry_ptr = internal global ptr @ap_crypt_init._entry, section ".printk_index", align 4
@handle_deauth._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.231, ptr @.str.232, ptr @.str.2, i32 1719, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"handle_deauth - too short payload (len=%d)\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"handle_deauth\00", [18 x i8] zeroinitializer }, align 32
@handle_deauth._entry_ptr = internal global ptr @handle_deauth._entry, section ".printk_index", align 4
@handle_deauth._entry.233 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.234, ptr @.str.232, ptr @.str.2, i32 1728, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\017%s: deauthentication: %pM len=%d, reason_code=%d\0A\00", [44 x i8] zeroinitializer }, align 32
@handle_deauth._entry_ptr.235 = internal global ptr @handle_deauth._entry.233, section ".printk_index", align 4
@handle_deauth._entry.236 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.237, ptr @.str.232, ptr @.str.2, i32 1741, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.237 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"%s: deauthentication from %pM, reason_code=%d, but STA not authenticated\0A\00", [54 x i8] zeroinitializer }, align 32
@handle_deauth._entry_ptr.238 = internal global ptr @handle_deauth._entry.236, section ".printk_index", align 4
@ap_update_sta_tx_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.239, ptr @.str.240, ptr @.str.2, i32 2671, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.239 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017%s: STA %pM TX rate raised to %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.240 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ap_update_sta_tx_rate\00", [42 x i8] zeroinitializer }, align 32
@ap_update_sta_tx_rate._entry_ptr = internal global ptr @ap_update_sta_tx_rate._entry, section ".printk_index", align 4
@schedule_packet_send._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.241, ptr @.str.242, ptr @.str.2, i32 2301, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.241 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\017%s: schedule_packet_send: skb alloc failed\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.242 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"schedule_packet_send\00", [43 x i8] zeroinitializer }, align 32
@schedule_packet_send._entry_ptr = internal global ptr @schedule_packet_send._entry, section ".printk_index", align 4
@ap_add_sta._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.243, ptr @.str.244, ptr @.str.2, i32 1103, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.243 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\017AP: kmalloc failed\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.244 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ap_add_sta\00", [21 x i8] zeroinitializer }, align 32
@ap_add_sta._entry_ptr = internal global ptr @ap_add_sta._entry, section ".printk_index", align 4
@ap_add_sta._entry.245 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.246, ptr @.str.244, ptr @.str.2, i32 1130, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.246 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017Failed to add STA proc data\0A\00", [33 x i8] zeroinitializer }, align 32
@ap_add_sta._entry_ptr.247 = internal global ptr @ap_add_sta._entry.245, section ".printk_index", align 4
@ap_add_sta.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.248 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"(&sta->timer)\00", [18 x i8] zeroinitializer }, align 32
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.249 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@ap_handle_timer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.250, ptr @.str.251, ptr @.str.2, i32 184, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.250 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017ap_handle_timer() called with NULL data\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.251 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ap_handle_timer\00", [16 x i8] zeroinitializer }, align 32
@ap_handle_timer._entry_ptr = internal global ptr @ap_handle_timer._entry, section ".printk_index", align 4
@ap_handle_timer._entry.252 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.253, ptr @.str.251, ptr @.str.2, i32 239, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.253 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\017%s: removing automatic WDS connection to AP %pM\0A\00", [45 x i8] zeroinitializer }, align 32
@ap_handle_timer._entry_ptr.254 = internal global ptr @ap_handle_timer._entry.252, section ".printk_index", align 4
@ap_handle_timer._entry.255 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.256, ptr @.str.251, ptr @.str.2, i32 259, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.256 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\017%s: sending %s info to STA %pM(last=%lu, jiffies=%lu)\0A\00", [39 x i8] zeroinitializer }, align 32
@ap_handle_timer._entry_ptr.257 = internal global ptr @ap_handle_timer._entry.255, section ".printk_index", align 4
@.str.258 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"deauthentication\00", [47 x i8] zeroinitializer }, align 32
@.str.259 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"disassociation\00", [17 x i8] zeroinitializer }, align 32
@ap_handle_timer._entry.260 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.261, ptr @.str.251, ptr @.str.2, i32 274, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.261 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\017%s: STA %pM would have been removed, but it has 'perm' flag\0A\00", [33 x i8] zeroinitializer }, align 32
@ap_handle_timer._entry_ptr.262 = internal global ptr @ap_handle_timer._entry.260, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@switch.table.ap_control_proc_show = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.77, ptr @.str.78, ptr @.str.79], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 12, i64 1024, i64 2048]
@__sancov_gen_cov_switch_values.263 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.264 = internal global [4 x i64] [i64 2, i64 16, i64 4096, i64 12288]
@__sancov_gen_cov_switch_values.265 = internal global [4 x i64] [i64 2, i64 8, i64 128, i64 164]
@__sancov_gen_cov_switch_values.266 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 9, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.267 = internal global [4 x i64] [i64 2, i64 16, i64 256, i64 768]
@__sancov_gen_cov_switch_values.268 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 1]
@__sancov_gen_cov_switch_values.269 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 3, i64 4, i64 8, i64 15]
@__sancov_gen_cov_switch_values.270 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.271 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4]
@__sancov_gen_cov_switch_values.272 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4]
@__sancov_gen_cov_switch_values.273 = internal global [6 x i64] [i64 4, i64 16, i64 10, i64 20, i64 55, i64 110]
@__sancov_gen_cov_switch_values.274 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.275 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 299, i32 2 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 589, i32 3 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 596, i32 3 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 797, i32 3 }
@___asan_gen_.312 = private unnamed_addr constant [16 x i8] c"other_ap_policy\00", align 1
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 34, i32 12 }
@___asan_gen_.315 = private unnamed_addr constant [18 x i8] c"ap_bridge_packets\00", align 1
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 45, i32 12 }
@___asan_gen_.318 = private unnamed_addr constant [18 x i8] c"ap_max_inactivity\00", align 1
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 39, i32 12 }
@___asan_gen_.321 = private unnamed_addr constant [13 x i8] c"autom_ap_wds\00", align 1
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 50, i32 12 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 809, i32 2 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 813, i32 2 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 818, i32 3 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 821, i32 2 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 831, i32 3 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 834, i32 2 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 851, i32 26 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 855, i32 2 }
@___asan_gen_.363 = private unnamed_addr constant [23 x i8] c"ap_control_proc_seqops\00", align 1
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 372, i32 36 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 857, i32 2 }
@___asan_gen_.369 = private unnamed_addr constant [22 x i8] c"prism2_ap_proc_seqops\00", align 1
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 574, i32 36 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 868, i32 3 }
@___asan_gen_.381 = private unnamed_addr constant [10 x i8] c"freq_list\00", align 1
@___asan_gen_.382 = private unnamed_addr constant [49 x i8] c"../drivers/net/wireless/intersil/hostap/hostap.h\00", align 1
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.382, i32 11, i32 34 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 2463, i32 17 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 2629, i32 3 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 2762, i32 3 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 2836, i32 3 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 2865, i32 4 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 2961, i32 5 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 2977, i32 5 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 2997, i32 4 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 3015, i32 4 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 108, i32 3 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 119, i32 17 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 650, i32 3 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 662, i32 9 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 673, i32 9 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 680, i32 9 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 684, i32 9 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 690, i32 3 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 719, i32 3 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 747, i32 9 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 751, i32 9 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 757, i32 3 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 781, i32 3 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 74, i32 16 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 75, i32 16 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 76, i32 16 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 77, i32 16 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 78, i32 16 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 79, i32 16 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 80, i32 16 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 81, i32 16 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 330, i32 17 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 333, i32 17 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 336, i32 17 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 339, i32 17 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 342, i32 17 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 343, i32 17 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 344, i32 15 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 349, i32 16 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 525, i32 17 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 532, i32 16 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 541, i32 18 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 546, i32 15 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 548, i32 15 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 550, i32 15 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 941, i32 3 }
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 948, i32 3 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 1003, i32 6 }
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 1006, i32 16 }
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 1006, i32 23 }
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 1009, i32 35 }
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 1009, i32 45 }
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 1010, i32 36 }
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 1011, i32 33 }
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 1012, i32 34 }
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 1013, i32 35 }
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 1014, i32 41 }
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 1015, i32 43 }
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 1020, i32 18 }
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 1022, i32 38 }
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 1024, i32 6 }
@___asan_gen_.641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 1047, i32 18 }
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 1048, i32 15 }
@___asan_gen_.659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 1964, i32 3 }
@___asan_gen_.668 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 2155, i32 3 }
@___asan_gen_.674 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 2166, i32 4 }
@___asan_gen_.680 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 2172, i32 4 }
@___asan_gen_.686 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 2197, i32 3 }
@___asan_gen_.692 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 2204, i32 3 }
@___asan_gen_.698 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 2209, i32 3 }
@___asan_gen_.704 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 2215, i32 3 }
@___asan_gen_.710 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 2225, i32 3 }
@___asan_gen_.716 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 2231, i32 3 }
@___asan_gen_.722 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 2234, i32 3 }
@___asan_gen_.728 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 2246, i32 3 }
@___asan_gen_.737 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 1820, i32 3 }
@___asan_gen_.746 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 1799, i32 2 }
@___asan_gen_.755 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 1999, i32 3 }
@___asan_gen_.761 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 2030, i32 5 }
@___asan_gen_.767 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 2054, i32 5 }
@___asan_gen_.773 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 2071, i32 5 }
@___asan_gen_.779 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 2093, i32 4 }
@___asan_gen_.788 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 1877, i32 3 }
@___asan_gen_.794 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 1885, i32 3 }
@___asan_gen_.800 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 1890, i32 3 }
@___asan_gen_.806 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 1902, i32 3 }
@___asan_gen_.812 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 1906, i32 3 }
@___asan_gen_.821 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 1513, i32 3 }
@___asan_gen_.827 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 1592, i32 4 }
@___asan_gen_.830 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 1596, i32 5 }
@___asan_gen_.836 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 1599, i32 4 }
@___asan_gen_.845 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 1761, i32 3 }
@___asan_gen_.851 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 1768, i32 2 }
@___asan_gen_.857 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 1781, i32 3 }
@___asan_gen_.866 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 1304, i32 3 }
@___asan_gen_.869 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 1334, i32 9 }
@___asan_gen_.872 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 1344, i32 9 }
@___asan_gen_.875 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 1353, i32 11 }
@___asan_gen_.878 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 1358, i32 11 }
@___asan_gen_.884 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 1369, i32 4 }
@___asan_gen_.887 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 1376, i32 10 }
@___asan_gen_.890 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 1388, i32 9 }
@___asan_gen_.893 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 1394, i32 9 }
@___asan_gen_.896 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 1398, i32 10 }
@___asan_gen_.899 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 1405, i32 10 }
@___asan_gen_.902 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 1413, i32 9 }
@___asan_gen_.905 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 1438, i32 11 }
@___asan_gen_.908 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 1443, i32 10 }
@___asan_gen_.914 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 1486, i32 3 }
@___asan_gen_.923 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 1254, i32 3 }
@___asan_gen_.926 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 1210, i32 38 }
@___asan_gen_.935 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 1227, i32 3 }
@___asan_gen_.944 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 1719, i32 3 }
@___asan_gen_.950 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 1726, i32 2 }
@___asan_gen_.956 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 1739, i32 3 }
@___asan_gen_.965 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 2670, i32 4 }
@___asan_gen_.974 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 2300, i32 3 }
@___asan_gen_.983 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 1103, i32 3 }
@___asan_gen_.989 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 1130, i32 4 }
@___asan_gen_.995 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 1134, i32 2 }
@___asan_gen_.996 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.1000 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.1001 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1000, i32 1984, i32 2 }
@___asan_gen_.1010 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 184, i32 3 }
@___asan_gen_.1016 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 237, i32 4 }
@___asan_gen_.1028 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 255, i32 3 }
@___asan_gen_.1029 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1032 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1033 = private constant [52 x i8] c"../drivers/net/wireless/intersil/hostap/hostap_ap.c\00", align 1
@___asan_gen_.1034 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1033, i32 271, i32 4 }
@___asan_gen_.1035 = private unnamed_addr constant [34 x i8] c"switch.table.ap_control_proc_show\00", align 1
@llvm.compiler.used = appending global [341 x ptr] [ptr @__UNIQUE_ID_ap_bridge_packets344, ptr @__UNIQUE_ID_ap_bridge_packetstype343, ptr @__UNIQUE_ID_ap_max_inactivity342, ptr @__UNIQUE_ID_ap_max_inactivitytype341, ptr @__UNIQUE_ID_autom_ap_wds346, ptr @__UNIQUE_ID_autom_ap_wdstype345, ptr @__UNIQUE_ID_other_ap_policy340, ptr @__UNIQUE_ID_other_ap_policytype339, ptr @__ksymtab_hostap_check_sta_fw_version, ptr @__ksymtab_hostap_free_data, ptr @__ksymtab_hostap_handle_sta_tx_exc, ptr @__ksymtab_hostap_init_ap_proc, ptr @__ksymtab_hostap_init_data, ptr @__param_ap_bridge_packets, ptr @__param_ap_max_inactivity, ptr @__param_autom_ap_wds, ptr @__param_other_ap_policy, ptr @ap_add_sta._entry, ptr @ap_add_sta._entry.245, ptr @ap_add_sta._entry_ptr, ptr @ap_add_sta._entry_ptr.247, ptr @ap_auth_make_challenge._entry, ptr @ap_auth_make_challenge._entry_ptr, ptr @ap_crypt_init._entry, ptr @ap_crypt_init._entry_ptr, ptr @ap_handle_data_nullfunc._entry, ptr @ap_handle_data_nullfunc._entry_ptr, ptr @ap_handle_dropped_data._entry, ptr @ap_handle_dropped_data._entry_ptr, ptr @ap_handle_timer._entry, ptr @ap_handle_timer._entry.252, ptr @ap_handle_timer._entry.255, ptr @ap_handle_timer._entry.260, ptr @ap_handle_timer._entry_ptr, ptr @ap_handle_timer._entry_ptr.254, ptr @ap_handle_timer._entry_ptr.257, ptr @ap_handle_timer._entry_ptr.262, ptr @ap_sta_hash_del._entry, ptr @ap_sta_hash_del._entry_ptr, ptr @ap_update_sta_tx_rate._entry, ptr @ap_update_sta_tx_rate._entry_ptr, ptr @handle_ap_item._entry, ptr @handle_ap_item._entry.118, ptr @handle_ap_item._entry.121, ptr @handle_ap_item._entry.124, ptr @handle_ap_item._entry.127, ptr @handle_ap_item._entry.130, ptr @handle_ap_item._entry.133, ptr @handle_ap_item._entry.136, ptr @handle_ap_item._entry.139, ptr @handle_ap_item._entry.142, ptr @handle_ap_item._entry.145, ptr @handle_ap_item._entry_ptr, ptr @handle_ap_item._entry_ptr.120, ptr @handle_ap_item._entry_ptr.123, ptr @handle_ap_item._entry_ptr.126, ptr @handle_ap_item._entry_ptr.129, ptr @handle_ap_item._entry_ptr.132, ptr @handle_ap_item._entry_ptr.135, ptr @handle_ap_item._entry_ptr.138, ptr @handle_ap_item._entry_ptr.141, ptr @handle_ap_item._entry_ptr.144, ptr @handle_ap_item._entry_ptr.147, ptr @handle_assoc._entry, ptr @handle_assoc._entry.186, ptr @handle_assoc._entry.189, ptr @handle_assoc._entry.191, ptr @handle_assoc._entry_ptr, ptr @handle_assoc._entry_ptr.188, ptr @handle_assoc._entry_ptr.190, ptr @handle_assoc._entry_ptr.193, ptr @handle_authen._entry, ptr @handle_authen._entry.212, ptr @handle_authen._entry.223, ptr @handle_authen._entry_ptr, ptr @handle_authen._entry_ptr.214, ptr @handle_authen._entry_ptr.225, ptr @handle_beacon._entry, ptr @handle_beacon._entry.154, ptr @handle_beacon._entry.157, ptr @handle_beacon._entry.160, ptr @handle_beacon._entry.163, ptr @handle_beacon._entry_ptr, ptr @handle_beacon._entry_ptr.156, ptr @handle_beacon._entry_ptr.159, ptr @handle_beacon._entry_ptr.162, ptr @handle_beacon._entry_ptr.165, ptr @handle_deauth._entry, ptr @handle_deauth._entry.233, ptr @handle_deauth._entry.236, ptr @handle_deauth._entry_ptr, ptr @handle_deauth._entry_ptr.235, ptr @handle_deauth._entry_ptr.238, ptr @handle_disassoc._entry, ptr @handle_disassoc._entry.200, ptr @handle_disassoc._entry.203, ptr @handle_disassoc._entry_ptr, ptr @handle_disassoc._entry_ptr.202, ptr @handle_disassoc._entry_ptr.205, ptr @handle_pspoll._entry, ptr @handle_pspoll._entry.168, ptr @handle_pspoll._entry.171, ptr @handle_pspoll._entry.174, ptr @handle_pspoll._entry.177, ptr @handle_pspoll._entry_ptr, ptr @handle_pspoll._entry_ptr.170, ptr @handle_pspoll._entry_ptr.173, ptr @handle_pspoll._entry_ptr.176, ptr @handle_pspoll._entry_ptr.179, ptr @handle_wds_oper_queue._entry, ptr @handle_wds_oper_queue._entry_ptr, ptr @hostap_ap_tx_cb_assoc._entry, ptr @hostap_ap_tx_cb_assoc._entry.64, ptr @hostap_ap_tx_cb_assoc._entry_ptr, ptr @hostap_ap_tx_cb_assoc._entry_ptr.66, ptr @hostap_ap_tx_cb_auth._entry, ptr @hostap_ap_tx_cb_auth._entry.57, ptr @hostap_ap_tx_cb_auth._entry_ptr, ptr @hostap_ap_tx_cb_auth._entry_ptr.59, ptr @hostap_ap_tx_cb_poll._entry, ptr @hostap_ap_tx_cb_poll._entry_ptr, ptr @hostap_check_sta_fw_version._entry, ptr @hostap_check_sta_fw_version._entry.5, ptr @hostap_check_sta_fw_version._entry_ptr, ptr @hostap_check_sta_fw_version._entry_ptr.7, ptr @hostap_deauth_all_stas._entry, ptr @hostap_deauth_all_stas._entry_ptr, ptr @hostap_free_data._entry, ptr @hostap_free_data._entry_ptr, ptr @hostap_handle_sta_rx._entry, ptr @hostap_handle_sta_rx._entry.39, ptr @hostap_handle_sta_rx._entry.42, ptr @hostap_handle_sta_rx._entry.45, ptr @hostap_handle_sta_rx._entry_ptr, ptr @hostap_handle_sta_rx._entry_ptr.41, ptr @hostap_handle_sta_rx._entry_ptr.44, ptr @hostap_handle_sta_rx._entry_ptr.47, ptr @hostap_handle_sta_tx._entry, ptr @hostap_handle_sta_tx._entry_ptr, ptr @hostap_handle_sta_tx_exc._entry, ptr @hostap_handle_sta_tx_exc._entry.34, ptr @hostap_handle_sta_tx_exc._entry_ptr, ptr @hostap_handle_sta_tx_exc._entry_ptr.36, ptr @hostap_init_data._entry, ptr @hostap_init_data._entry.13, ptr @hostap_init_data._entry.18, ptr @hostap_init_data._entry_ptr, ptr @hostap_init_data._entry_ptr.15, ptr @hostap_init_data._entry_ptr.19, ptr @prism2_hostapd._entry, ptr @prism2_hostapd._entry_ptr, ptr @prism2_send_mgmt._entry, ptr @prism2_send_mgmt._entry.93, ptr @prism2_send_mgmt._entry_ptr, ptr @prism2_send_mgmt._entry_ptr.95, ptr @schedule_packet_send._entry, ptr @schedule_packet_send._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @other_ap_policy, ptr @ap_bridge_packets, ptr @ap_max_inactivity, ptr @autom_ap_wds, ptr @hostap_init_data.__key, ptr @.str.10, ptr @hostap_init_data.__key.11, ptr @.str.12, ptr @.str.14, ptr @hostap_init_data.__key.16, ptr @.str.17, ptr @hostap_init_data.__key.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @ap_control_proc_seqops, ptr @.str.24, ptr @prism2_ap_proc_seqops, ptr @.str.25, ptr @.str.26, ptr @freq_list, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.43, ptr @.str.46, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.58, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.65, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.94, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.119, ptr @.str.122, ptr @.str.125, ptr @.str.128, ptr @.str.131, ptr @.str.134, ptr @.str.137, ptr @.str.140, ptr @.str.143, ptr @.str.146, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.155, ptr @.str.158, ptr @.str.161, ptr @.str.164, ptr @.str.166, ptr @.str.167, ptr @.str.169, ptr @.str.172, ptr @.str.175, ptr @.str.178, ptr @.str.180, ptr @.str.181, ptr @.str.187, ptr @.str.192, ptr @.str.198, ptr @.str.199, ptr @.str.201, ptr @.str.204, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.213, ptr @.str.215, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @.str.220, ptr @.str.221, ptr @.str.222, ptr @.str.224, ptr @.str.226, ptr @.str.227, ptr @.str.228, ptr @.str.229, ptr @.str.230, ptr @.str.231, ptr @.str.232, ptr @.str.234, ptr @.str.237, ptr @.str.239, ptr @.str.240, ptr @.str.241, ptr @.str.242, ptr @.str.243, ptr @.str.244, ptr @.str.246, ptr @ap_add_sta.__key, ptr @.str.248, ptr @skb_queue_head_init.__key, ptr @.str.249, ptr @.str.250, ptr @.str.251, ptr @.str.253, ptr @.str.256, ptr @.str.258, ptr @.str.259, ptr @.str.261, ptr @switch.table.ap_control_proc_show], section "llvm.metadata"
@0 = internal global [254 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hostap_deauth_all_stas._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hostap_check_sta_fw_version._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hostap_check_sta_fw_version._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 95, i32 128, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hostap_init_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @other_ap_policy to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ap_bridge_packets to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ap_max_inactivity to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @autom_ap_wds to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hostap_init_data.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hostap_init_data.__key.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hostap_init_data._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hostap_init_data.__key.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hostap_init_data._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hostap_init_data.__key.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ap_control_proc_seqops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prism2_ap_proc_seqops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hostap_free_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @freq_list to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prism2_hostapd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hostap_handle_sta_tx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hostap_handle_sta_tx_exc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hostap_handle_sta_tx_exc._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hostap_handle_sta_rx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hostap_handle_sta_rx._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hostap_handle_sta_rx._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hostap_handle_sta_rx._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ap_sta_hash_del._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hostap_ap_tx_cb_auth._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hostap_ap_tx_cb_auth._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hostap_ap_tx_cb_assoc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hostap_ap_tx_cb_assoc._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hostap_ap_tx_cb_poll._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prism2_send_mgmt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prism2_send_mgmt._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 289, i32 384, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_wds_oper_queue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_ap_item._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_ap_item._entry.118 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_ap_item._entry.121 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_ap_item._entry.124 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_ap_item._entry.127 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_ap_item._entry.130 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_ap_item._entry.133 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_ap_item._entry.136 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_ap_item._entry.139 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_ap_item._entry.142 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_ap_item._entry.145 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ap_handle_dropped_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ap_handle_data_nullfunc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_beacon._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_beacon._entry.154 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_beacon._entry.157 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_beacon._entry.160 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_beacon._entry.163 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_pspoll._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_pspoll._entry.168 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_pspoll._entry.171 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_pspoll._entry.174 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_pspoll._entry.177 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_assoc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_assoc._entry.186 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_assoc._entry.189 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_assoc._entry.191 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_disassoc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_disassoc._entry.200 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_disassoc._entry.203 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_authen._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_authen._entry.212 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_authen._entry.223 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ap_auth_make_challenge._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ap_crypt_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_deauth._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_deauth._entry.233 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_deauth._entry.236 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ap_update_sta_tx_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @schedule_packet_send._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ap_add_sta._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.243 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ap_add_sta._entry.245 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.246 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ap_add_sta.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.248 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.249 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ap_handle_timer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.250 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.251 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ap_handle_timer._entry.252 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.253 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ap_handle_timer._entry.255 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.256 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.258 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.259 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ap_handle_timer._entry.260 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.261 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ap_control_proc_show to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1035 to i32), i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hostap_deauth_all_stas(ptr noundef %dev, ptr nocapture noundef readonly %ap, i32 noundef %resend) local_unnamed_addr #0 align 64 {
entry:
  %addr = alloca [6 x i8], align 1
  %resp = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr) #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %resp) #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %dev) #15
  %0 = call ptr @memset(ptr %addr, i32 255, i32 6)
  %1 = ptrtoint ptr %resp to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 512, ptr %resp, align 2
  %num_sta = getelementptr inbounds %struct.ap_data, ptr %ap, i32 0, i32 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %resend)
  %tobool.not = icmp eq i32 %resend, 0
  call fastcc void @prism2_send_mgmt(ptr noundef %dev, i16 noundef zeroext 192, ptr noundef nonnull %resp, i32 noundef 2, ptr noundef nonnull %addr, i16 noundef zeroext 0)
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %num_sta to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_sta, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp6 = icmp slt i32 %3, 1
  br i1 %cmp6, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.while.body_crit_edge

lor.lhs.false.while.body_crit_edge:               ; preds = %lor.lhs.false
  br label %while.body

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

while.body:                                       ; preds = %while.body.while.body_crit_edge, %lor.lhs.false.while.body_crit_edge
  %__ms.012 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ 50, %lor.lhs.false.while.body_crit_edge ]
  %dec = add nsw i32 %__ms.012, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %4(i32 noundef 214748000) #12
  %tobool7.not = icmp eq i32 %dec, 0
  br i1 %tobool7.not, label %lor.lhs.false.1, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

lor.lhs.false.1:                                  ; preds = %while.body
  call fastcc void @prism2_send_mgmt(ptr noundef %dev, i16 noundef zeroext 192, ptr noundef nonnull %resp, i32 noundef 2, ptr noundef nonnull %addr, i16 noundef zeroext 0)
  %5 = ptrtoint ptr %num_sta to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_sta, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp6.1 = icmp slt i32 %6, 1
  br i1 %cmp6.1, label %lor.lhs.false.1.cleanup_crit_edge, label %lor.lhs.false.1.while.body.1_crit_edge

lor.lhs.false.1.while.body.1_crit_edge:           ; preds = %lor.lhs.false.1
  br label %while.body.1

lor.lhs.false.1.cleanup_crit_edge:                ; preds = %lor.lhs.false.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

while.body.1:                                     ; preds = %while.body.1.while.body.1_crit_edge, %lor.lhs.false.1.while.body.1_crit_edge
  %__ms.012.1 = phi i32 [ %dec.1, %while.body.1.while.body.1_crit_edge ], [ 50, %lor.lhs.false.1.while.body.1_crit_edge ]
  %dec.1 = add nsw i32 %__ms.012.1, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %7(i32 noundef 214748000) #12
  %tobool7.not.1 = icmp eq i32 %dec.1, 0
  br i1 %tobool7.not.1, label %lor.lhs.false.2, label %while.body.1.while.body.1_crit_edge

while.body.1.while.body.1_crit_edge:              ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.1

lor.lhs.false.2:                                  ; preds = %while.body.1
  call fastcc void @prism2_send_mgmt(ptr noundef %dev, i16 noundef zeroext 192, ptr noundef nonnull %resp, i32 noundef 2, ptr noundef nonnull %addr, i16 noundef zeroext 0)
  %8 = ptrtoint ptr %num_sta to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_sta, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp6.2 = icmp slt i32 %9, 1
  br i1 %cmp6.2, label %lor.lhs.false.2.cleanup_crit_edge, label %lor.lhs.false.2.while.body.2_crit_edge

lor.lhs.false.2.while.body.2_crit_edge:           ; preds = %lor.lhs.false.2
  br label %while.body.2

lor.lhs.false.2.cleanup_crit_edge:                ; preds = %lor.lhs.false.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

while.body.2:                                     ; preds = %while.body.2.while.body.2_crit_edge, %lor.lhs.false.2.while.body.2_crit_edge
  %__ms.012.2 = phi i32 [ %dec.2, %while.body.2.while.body.2_crit_edge ], [ 50, %lor.lhs.false.2.while.body.2_crit_edge ]
  %dec.2 = add nsw i32 %__ms.012.2, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %10(i32 noundef 214748000) #12
  %tobool7.not.2 = icmp eq i32 %dec.2, 0
  br i1 %tobool7.not.2, label %lor.lhs.false.3, label %while.body.2.while.body.2_crit_edge

while.body.2.while.body.2_crit_edge:              ; preds = %while.body.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.2

lor.lhs.false.3:                                  ; preds = %while.body.2
  call fastcc void @prism2_send_mgmt(ptr noundef %dev, i16 noundef zeroext 192, ptr noundef nonnull %resp, i32 noundef 2, ptr noundef nonnull %addr, i16 noundef zeroext 0)
  %11 = ptrtoint ptr %num_sta to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_sta, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp6.3 = icmp slt i32 %12, 1
  br i1 %cmp6.3, label %lor.lhs.false.3.cleanup_crit_edge, label %lor.lhs.false.3.while.body.3_crit_edge

lor.lhs.false.3.while.body.3_crit_edge:           ; preds = %lor.lhs.false.3
  br label %while.body.3

lor.lhs.false.3.cleanup_crit_edge:                ; preds = %lor.lhs.false.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

while.body.3:                                     ; preds = %while.body.3.while.body.3_crit_edge, %lor.lhs.false.3.while.body.3_crit_edge
  %__ms.012.3 = phi i32 [ %dec.3, %while.body.3.while.body.3_crit_edge ], [ 50, %lor.lhs.false.3.while.body.3_crit_edge ]
  %dec.3 = add nsw i32 %__ms.012.3, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %13(i32 noundef 214748000) #12
  %tobool7.not.3 = icmp eq i32 %dec.3, 0
  br i1 %tobool7.not.3, label %lor.lhs.false.4, label %while.body.3.while.body.3_crit_edge

while.body.3.while.body.3_crit_edge:              ; preds = %while.body.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.3

lor.lhs.false.4:                                  ; preds = %while.body.3
  call fastcc void @prism2_send_mgmt(ptr noundef %dev, i16 noundef zeroext 192, ptr noundef nonnull %resp, i32 noundef 2, ptr noundef nonnull %addr, i16 noundef zeroext 0)
  %14 = ptrtoint ptr %num_sta to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_sta, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp6.4 = icmp slt i32 %15, 1
  br i1 %cmp6.4, label %lor.lhs.false.4.cleanup_crit_edge, label %lor.lhs.false.4.while.body.4_crit_edge

lor.lhs.false.4.while.body.4_crit_edge:           ; preds = %lor.lhs.false.4
  br label %while.body.4

lor.lhs.false.4.cleanup_crit_edge:                ; preds = %lor.lhs.false.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

while.body.4:                                     ; preds = %while.body.4.while.body.4_crit_edge, %lor.lhs.false.4.while.body.4_crit_edge
  %__ms.012.4 = phi i32 [ %dec.4, %while.body.4.while.body.4_crit_edge ], [ 50, %lor.lhs.false.4.while.body.4_crit_edge ]
  %dec.4 = add nsw i32 %__ms.012.4, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %16(i32 noundef 214748000) #12
  %tobool7.not.4 = icmp eq i32 %dec.4, 0
  br i1 %tobool7.not.4, label %while.body.4.cleanup_crit_edge, label %while.body.4.while.body.4_crit_edge

while.body.4.while.body.4_crit_edge:              ; preds = %while.body.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.4

while.body.4.cleanup_crit_edge:                   ; preds = %while.body.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %while.body.4.cleanup_crit_edge, %lor.lhs.false.4.cleanup_crit_edge, %lor.lhs.false.3.cleanup_crit_edge, %lor.lhs.false.2.cleanup_crit_edge, %lor.lhs.false.1.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %resp) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr) #12
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @prism2_send_mgmt(ptr nocapture noundef readonly %dev, i16 noundef zeroext %type_subtype, ptr noundef readonly %body, i32 noundef %body_len, ptr nocapture noundef readonly %addr, i16 noundef zeroext %tx_cb_idx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %local1 = getelementptr i8, ptr %dev, i32 2316
  %0 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local1, align 4
  %dev2 = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev2, align 4
  %add.ptr.i94 = getelementptr i8, ptr %3, i32 2304
  %flags = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 8
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.91, ptr noundef %3) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %add = add i32 %body_len, 30
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %add, i32 noundef 2592) #12
  %cmp = icmp eq ptr %call.i.i, null
  br i1 %cmp, label %do.end13, label %if.end20

do.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94, ptr noundef %3) #15
  br label %cleanup

if.end20:                                         ; preds = %if.end
  %6 = tail call i16 @llvm.bswap.i16(i16 %type_subtype)
  %call21 = tail call i32 @hostap_80211_get_hdrlen(i16 noundef zeroext %6) #12
  %call.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %call21) #12
  %7 = call ptr @memset(ptr %call.i, i32 0, i32 %call21)
  %tobool23.not = icmp eq ptr %body, null
  br i1 %tobool23.not, label %if.end20.if.end26_crit_edge, label %if.then24

if.end20.if.end26_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26

if.then24:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  %call.i95 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %body_len) #12
  %8 = call ptr @memcpy(ptr %call.i95, ptr %body, i32 %body_len)
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %if.end20.if.end26_crit_edge
  %addr1 = getelementptr inbounds %struct.ieee80211_hdr, ptr %call.i, i32 0, i32 2
  %9 = call ptr @memcpy(ptr %addr1, ptr %addr, i32 6)
  %10 = ptrtoint ptr %call.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %call.i, align 2
  %12 = trunc i16 %11 to i12
  %trunc = and i12 %12, -1024
  %13 = zext i12 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i12 %trunc, label %if.else41 [
    i12 -2048, label %if.then29
    i12 1024, label %if.then36
  ]

if.then29:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  %14 = or i16 %type_subtype, 512
  %addr2 = getelementptr inbounds %struct.ieee80211_hdr, ptr %call.i, i32 0, i32 3
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 86
  %15 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev_addr, align 64
  %17 = call ptr @memcpy(ptr %addr2, ptr %16, i32 6)
  %addr3 = getelementptr inbounds %struct.ieee80211_hdr, ptr %call.i, i32 0, i32 4
  %18 = load ptr, ptr %dev_addr, align 64
  %19 = call ptr @memcpy(ptr %addr3, ptr %18, i32 6)
  %.pre = tail call i16 @llvm.bswap.i16(i16 %14)
  br label %if.end49

if.then36:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  %addr237 = getelementptr inbounds %struct.ieee80211_hdr, ptr %call.i, i32 0, i32 3
  %20 = call ptr @memset(ptr %addr237, i32 0, i32 12)
  br label %if.end49

if.else41:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  %addr242 = getelementptr inbounds %struct.ieee80211_hdr, ptr %call.i, i32 0, i32 3
  %dev_addr44 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 86
  %21 = ptrtoint ptr %dev_addr44 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev_addr44, align 64
  %23 = call ptr @memcpy(ptr %addr242, ptr %22, i32 6)
  %addr345 = getelementptr inbounds %struct.ieee80211_hdr, ptr %call.i, i32 0, i32 4
  %24 = load ptr, ptr %dev_addr44, align 64
  %25 = call ptr @memcpy(ptr %addr345, ptr %24, i32 6)
  br label %if.end49

if.end49:                                         ; preds = %if.else41, %if.then36, %if.then29
  %.pre-phi = phi i16 [ %6, %if.then36 ], [ %6, %if.else41 ], [ %.pre, %if.then29 ]
  %26 = ptrtoint ptr %call.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %.pre-phi, ptr %call.i, align 2
  %cb = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3
  %27 = call ptr @memset(ptr %cb, i32 0, i32 24)
  %magic = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 4
  %28 = ptrtoint ptr %magic to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -259377502, ptr %magic, align 4
  %iface52 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 12
  %29 = ptrtoint ptr %iface52 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %add.ptr.i94, ptr %iface52, align 4
  %tx_cb_idx53 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 10
  %30 = ptrtoint ptr %tx_cb_idx53 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %tx_cb_idx, ptr %tx_cb_idx53, align 2
  %31 = getelementptr inbounds %struct.anon.44, ptr %call.i.i, i32 0, i32 2
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %3, ptr %31, align 8
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %33 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 18
  %35 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %34 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %36 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 21
  %37 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %conv.i, ptr %mac_header.i, align 2
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 20
  %38 = ptrtoint ptr %network_header.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %conv.i, ptr %network_header.i, align 4
  %call54 = tail call i32 @dev_queue_xmit(ptr noundef nonnull %call.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end49, %do.end13, %do.end
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ap_control_add_mac(ptr noundef %mac_restrictions, ptr nocapture noundef readonly %mac) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 16) #16
  %cmp = icmp eq ptr %call7.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %addr = getelementptr inbounds %struct.mac_entry, ptr %call7.i, i32 0, i32 1
  %1 = call ptr @memcpy(ptr %addr, ptr %mac, i32 6)
  %lock = getelementptr inbounds %struct.mac_restrictions, ptr %mac_restrictions, i32 0, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #12
  %mac_list = getelementptr inbounds %struct.mac_restrictions, ptr %mac_restrictions, i32 0, i32 2
  %prev.i = getelementptr inbounds %struct.mac_restrictions, ptr %mac_restrictions, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i, ptr noundef %3, ptr noundef %mac_list) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_add_tail.exit_crit_edge

if.end.list_add_tail.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i, ptr %prev.i, align 4
  %5 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %mac_list, ptr %call7.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i, i32 0, i32 1
  %6 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev3.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %call7.i, ptr %3, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end.list_add_tail.exit_crit_edge
  %entries = getelementptr inbounds %struct.mac_restrictions, ptr %mac_restrictions, i32 0, i32 1
  %8 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %entries, align 4
  %inc = add i32 %9, 1
  store i32 %inc, ptr %entries, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #12
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %list_add_tail.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ap_control_del_mac(ptr noundef %mac_restrictions, ptr nocapture noundef readonly %mac) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.mac_restrictions, ptr %mac_restrictions, i32 0, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #12
  %mac_list = getelementptr inbounds %struct.mac_restrictions, ptr %mac_restrictions, i32 0, i32 2
  %add.ptr1.i = getelementptr i8, ptr %mac, i32 4
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %ptr.0.in = phi ptr [ %mac_list, %entry ], [ %ptr.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %ptr.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %ptr.0 = load ptr, ptr %ptr.0.in, align 4
  %cmp.not = icmp eq ptr %ptr.0, %mac_list
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %addr = getelementptr inbounds %struct.mac_entry, ptr %ptr.0, i32 0, i32 1
  %1 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %addr, align 4
  %3 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mac, align 4
  %xor.i = xor i32 %4, %2
  %add.ptr.i = getelementptr %struct.mac_entry, ptr %ptr.0, i32 0, i32 1, i32 4
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %add.ptr.i, align 2
  %7 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %add.ptr1.i, align 2
  %xor37.i = xor i16 %8, %6
  %xor3.i = zext i16 %xor37.i to i32
  %or.i = or i32 %xor.i, %xor3.i
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %if.then, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond

if.then:                                          ; preds = %for.body
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %ptr.0) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del.exit_crit_edge

if.then.list_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %ptr.0, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i, align 4
  %11 = ptrtoint ptr %ptr.0 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ptr.0, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then.list_del.exit_crit_edge
  %15 = ptrtoint ptr %ptr.0 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 256 to ptr), ptr %ptr.0, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %ptr.0, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %ptr.0) #12
  %entries = getelementptr inbounds %struct.mac_restrictions, ptr %mac_restrictions, i32 0, i32 1
  %17 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %entries, align 4
  %dec = add i32 %18, -1
  store i32 %dec, ptr %entries, align 4
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit, %for.cond.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %list_del.exit ], [ -1, %for.cond.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ap_control_flush_macs(ptr noundef %mac_restrictions) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %entries = getelementptr inbounds %struct.mac_restrictions, ptr %mac_restrictions, i32 0, i32 1
  %0 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %entries, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.mac_restrictions, ptr %mac_restrictions, i32 0, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #12
  %mac_list = getelementptr inbounds %struct.mac_restrictions, ptr %mac_restrictions, i32 0, i32 2
  %2 = ptrtoint ptr %mac_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mac_list, align 4
  %cmp4.not19 = icmp eq ptr %3, %mac_list
  br i1 %cmp4.not19, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %if.end.for.body_crit_edge
  %ptr.020 = phi ptr [ %n.0, %list_del.exit.for.body_crit_edge ], [ %3, %if.end.for.body_crit_edge ]
  %4 = ptrtoint ptr %ptr.020 to i32
  call void @__asan_load4_noabort(i32 %4)
  %n.0 = load ptr, ptr %ptr.020, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %ptr.020) #12
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %ptr.020, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %ptr.020 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ptr.020, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %11 = ptrtoint ptr %ptr.020 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %ptr.020, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %ptr.020, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %ptr.020) #12
  %cmp4.not = icmp eq ptr %n.0, %mac_list
  br i1 %cmp4.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %if.end.for.end_crit_edge
  %13 = ptrtoint ptr %entries to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %entries, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #12
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ap_control_kick_mac(ptr noundef %ap, ptr noundef %dev, ptr nocapture noundef readonly %mac) local_unnamed_addr #0 align 64 {
entry:
  %wrqu.i = alloca %union.iwreq_data, align 4
  %resp = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %resp) #12
  %sta_table_lock = getelementptr inbounds %struct.ap_data, ptr %ap, i32 0, i32 7
  tail call void @_raw_spin_lock_bh(ptr noundef %sta_table_lock) #12
  %arrayidx.i = getelementptr i8, ptr %mac, i32 5
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx.i, align 1
  %idxprom.i = zext i8 %1 to i32
  %arrayidx1.i = getelementptr %struct.ap_data, ptr %ap, i32 0, i32 10, i32 %idxprom.i
  %2 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %s.06.i = load ptr, ptr %arrayidx1.i, align 4
  %cmp.not7.i = icmp eq ptr %s.06.i, null
  br i1 %cmp.not7.i, label %entry.if.then3.critedge_crit_edge, label %land.rhs.lr.ph.i

entry.if.then3.critedge_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then3.critedge

land.rhs.lr.ph.i:                                 ; preds = %entry
  %3 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mac, align 4
  %add.ptr1.i.i = getelementptr i8, ptr %mac, i32 4
  %5 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %add.ptr1.i.i, align 2
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %while.body.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %s.08.i = phi ptr [ %s.06.i, %land.rhs.lr.ph.i ], [ %s.0.i, %while.body.i.land.rhs.i_crit_edge ]
  %addr.i = getelementptr inbounds %struct.sta_info, ptr %s.08.i, i32 0, i32 4
  %7 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %addr.i, align 4
  %xor.i.i = xor i32 %8, %4
  %add.ptr.i.i = getelementptr %struct.sta_info, ptr %s.08.i, i32 0, i32 4, i32 4
  %9 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %add.ptr.i.i, align 2
  %xor37.i.i = xor i16 %10, %6
  %xor3.i.i = zext i16 %xor37.i.i to i32
  %or.i.i = or i32 %xor.i.i, %xor3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i, label %if.then, label %while.body.i

while.body.i:                                     ; preds = %land.rhs.i
  %hnext.i = getelementptr inbounds %struct.sta_info, ptr %s.08.i, i32 0, i32 1
  %11 = ptrtoint ptr %hnext.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %s.0.i = load ptr, ptr %hnext.i, align 4
  %cmp.not.i = icmp eq ptr %s.0.i, null
  br i1 %cmp.not.i, label %while.body.i.if.then3.critedge_crit_edge, label %while.body.i.land.rhs.i_crit_edge

while.body.i.land.rhs.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i

while.body.i.if.then3.critedge_crit_edge:         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then3.critedge

if.then:                                          ; preds = %land.rhs.i
  %arrayidx.i25 = getelementptr %struct.sta_info, ptr %s.08.i, i32 0, i32 4, i32 5
  %12 = ptrtoint ptr %arrayidx.i25 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.i25, align 1
  %idxprom.i26 = zext i8 %13 to i32
  %arrayidx1.i27 = getelementptr %struct.ap_data, ptr %ap, i32 0, i32 10, i32 %idxprom.i26
  %14 = ptrtoint ptr %arrayidx1.i27 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx1.i27, align 4
  %cmp.i = icmp eq ptr %15, null
  br i1 %cmp.i, label %if.then.ap_sta_hash_del.exit_crit_edge, label %if.end.i

if.then.ap_sta_hash_del.exit_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %ap_sta_hash_del.exit

if.end.i:                                         ; preds = %if.then
  %add.ptr.i.i.le = getelementptr %struct.sta_info, ptr %s.08.i, i32 0, i32 4, i32 4
  %addr2.i = getelementptr inbounds %struct.sta_info, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %addr2.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %addr2.i, align 4
  %18 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %addr.i, align 4
  %xor.i.i28 = xor i32 %19, %17
  %add.ptr.i.i29 = getelementptr %struct.sta_info, ptr %15, i32 0, i32 4, i32 4
  %20 = ptrtoint ptr %add.ptr.i.i29 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %add.ptr.i.i29, align 2
  %22 = ptrtoint ptr %add.ptr.i.i.le to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %add.ptr.i.i.le, align 2
  %xor37.i.i31 = xor i16 %23, %21
  %xor3.i.i32 = zext i16 %xor37.i.i31 to i32
  %or.i.i33 = or i32 %xor.i.i28, %xor3.i.i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i33)
  %cmp.i.i34 = icmp eq i32 %or.i.i33, 0
  br i1 %cmp.i.i34, label %if.then5.i, label %if.end.i.while.cond.i_crit_edge

if.end.i.while.cond.i_crit_edge:                  ; preds = %if.end.i
  br label %while.cond.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %hnext.i35 = getelementptr inbounds %struct.sta_info, ptr %15, i32 0, i32 1
  %24 = ptrtoint ptr %hnext.i35 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hnext.i35, align 4
  %26 = ptrtoint ptr %arrayidx1.i27 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %arrayidx1.i27, align 4
  br label %ap_sta_hash_del.exit

while.cond.i:                                     ; preds = %land.rhs.i37.while.cond.i_crit_edge, %if.end.i.while.cond.i_crit_edge
  %s.0.i36 = phi ptr [ %28, %land.rhs.i37.while.cond.i_crit_edge ], [ %15, %if.end.i.while.cond.i_crit_edge ]
  %hnext12.i = getelementptr inbounds %struct.sta_info, ptr %s.0.i36, i32 0, i32 1
  %27 = ptrtoint ptr %hnext12.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hnext12.i, align 4
  %cmp13.not.i = icmp eq ptr %28, null
  br i1 %cmp13.not.i, label %do.end.i, label %land.rhs.i37

land.rhs.i37:                                     ; preds = %while.cond.i
  %addr15.i = getelementptr inbounds %struct.sta_info, ptr %28, i32 0, i32 4
  %29 = ptrtoint ptr %addr15.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %addr15.i, align 4
  %xor.i46.i = xor i32 %30, %19
  %add.ptr.i47.i = getelementptr %struct.sta_info, ptr %28, i32 0, i32 4, i32 4
  %31 = ptrtoint ptr %add.ptr.i47.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %add.ptr.i47.i, align 2
  %xor37.i49.i = xor i16 %32, %23
  %xor3.i50.i = zext i16 %xor37.i49.i to i32
  %or.i51.i = or i32 %xor.i46.i, %xor3.i50.i
  %cmp.i52.i = icmp eq i32 %or.i51.i, 0
  br i1 %cmp.i52.i, label %if.then23.i, label %land.rhs.i37.while.cond.i_crit_edge

land.rhs.i37.while.cond.i_crit_edge:              ; preds = %land.rhs.i37
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i

if.then23.i:                                      ; preds = %land.rhs.i37
  call void @__sanitizer_cov_trace_pc() #14
  %hnext12.i.le = getelementptr inbounds %struct.sta_info, ptr %s.0.i36, i32 0, i32 1
  %hnext25.i = getelementptr inbounds %struct.sta_info, ptr %28, i32 0, i32 1
  %33 = ptrtoint ptr %hnext25.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hnext25.i, align 4
  %35 = ptrtoint ptr %hnext12.i.le to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %34, ptr %hnext12.i.le, align 4
  br label %ap_sta_hash_del.exit

do.end.i:                                         ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  %call29.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef %addr.i) #15
  br label %ap_sta_hash_del.exit

ap_sta_hash_del.exit:                             ; preds = %do.end.i, %if.then23.i, %if.then5.i, %if.then.ap_sta_hash_del.exit_crit_edge
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %s.08.i) #12
  br i1 %call.i.i, label %if.end.i.i, label %ap_sta_hash_del.exit.list_del.exit_crit_edge

ap_sta_hash_del.exit.list_del.exit_crit_edge:     ; preds = %ap_sta_hash_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %ap_sta_hash_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %s.08.i, i32 0, i32 1
  %36 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %prev.i.i, align 4
  %38 = ptrtoint ptr %s.08.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %s.08.i, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %37, ptr %prev1.i.i.i, align 4
  %41 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %39, ptr %37, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %ap_sta_hash_del.exit.list_del.exit_crit_edge
  %42 = ptrtoint ptr %s.08.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr inttoptr (i32 256 to ptr), ptr %s.08.i, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %s.08.i, i32 0, i32 1
  %43 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %sta_table_lock) #12
  %44 = ptrtoint ptr %resp to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 512, ptr %resp, align 2
  call fastcc void @prism2_send_mgmt(ptr noundef %dev, i16 noundef zeroext 192, ptr noundef nonnull %resp, i32 noundef 2, ptr noundef %addr.i, i16 noundef zeroext 0)
  %flags = getelementptr inbounds %struct.sta_info, ptr %s.08.i, i32 0, i32 6
  %45 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %flags, align 4
  %and = and i32 %46, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %list_del.exit.if.end9_crit_edge, label %land.lhs.true

list_del.exit.if.end9_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.then3.critedge:                                ; preds = %while.body.i.if.then3.critedge_crit_edge, %entry.if.then3.critedge_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %sta_table_lock) #12
  br label %cleanup

land.lhs.true:                                    ; preds = %list_del.exit
  %ap6 = getelementptr inbounds %struct.sta_info, ptr %s.08.i, i32 0, i32 32
  %47 = ptrtoint ptr %ap6 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %ap6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool7.not = icmp eq i32 %48, 0
  br i1 %tobool7.not, label %if.then8, label %land.lhs.true.if.end9_crit_edge

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %wrqu.i) #12
  %49 = getelementptr inbounds i8, ptr %wrqu.i, i32 8
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_storeN_noabort(i32 %50, i32 8)
  store i64 0, ptr %49, align 4
  %sa_data.i = getelementptr inbounds %struct.sockaddr, ptr %wrqu.i, i32 0, i32 1
  %51 = call ptr @memcpy(ptr %sa_data.i, ptr %addr.i, i32 6)
  %52 = ptrtoint ptr %wrqu.i to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 1, ptr %wrqu.i, align 4
  call void @wireless_send_event(ptr noundef %dev, i32 noundef 35844, ptr noundef nonnull %wrqu.i, ptr noundef null) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %wrqu.i) #12
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %land.lhs.true.if.end9_crit_edge, %list_del.exit.if.end9_crit_edge
  call fastcc void @ap_free_sta(ptr noundef %ap, ptr noundef nonnull %s.08.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then3.critedge
  %retval.0 = phi i32 [ 0, %if.end9 ], [ -22, %if.then3.critedge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %resp) #12
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ap_get_sta(ptr nocapture noundef readonly %ap, ptr nocapture noundef readonly %sta) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr i8, ptr %sta, i32 5
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %idxprom = zext i8 %1 to i32
  %arrayidx1 = getelementptr %struct.ap_data, ptr %ap, i32 0, i32 10, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %s.06 = load ptr, ptr %arrayidx1, align 4
  %cmp.not7 = icmp eq ptr %s.06, null
  br i1 %cmp.not7, label %entry.while.end_crit_edge, label %land.rhs.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

land.rhs.lr.ph:                                   ; preds = %entry
  %3 = ptrtoint ptr %sta to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sta, align 4
  %add.ptr1.i = getelementptr i8, ptr %sta, i32 4
  %5 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %add.ptr1.i, align 2
  br label %land.rhs

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %land.rhs.lr.ph
  %s.08 = phi ptr [ %s.06, %land.rhs.lr.ph ], [ %s.0, %while.body.land.rhs_crit_edge ]
  %addr = getelementptr inbounds %struct.sta_info, ptr %s.08, i32 0, i32 4
  %7 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %addr, align 4
  %xor.i = xor i32 %4, %8
  %add.ptr.i = getelementptr %struct.sta_info, ptr %s.08, i32 0, i32 4, i32 4
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %add.ptr.i, align 2
  %xor37.i = xor i16 %6, %10
  %xor3.i = zext i16 %xor37.i to i32
  %or.i = or i32 %xor.i, %xor3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %land.rhs.while.end_crit_edge, label %while.body

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %hnext = getelementptr inbounds %struct.sta_info, ptr %s.08, i32 0, i32 1
  %11 = ptrtoint ptr %hnext to i32
  call void @__asan_load4_noabort(i32 %11)
  %s.0 = load ptr, ptr %hnext, align 4
  %cmp.not = icmp eq ptr %s.0, null
  br i1 %cmp.not, label %while.body.while.end_crit_edge, label %while.body.land.rhs_crit_edge

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %land.rhs.while.end_crit_edge, %entry.while.end_crit_edge
  %s.0.lcssa = phi ptr [ null, %entry.while.end_crit_edge ], [ null, %while.body.while.end_crit_edge ], [ %s.08, %land.rhs.while.end_crit_edge ]
  ret ptr %s.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ap_free_sta(ptr nocapture noundef %ap, ptr noundef %sta) unnamed_addr #0 align 64 {
entry:
  %wrqu.i = alloca %union.iwreq_data, align 4
  %name = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ap1 = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 32
  %0 = ptrtoint ptr %ap1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ap1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %local = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 33
  %2 = ptrtoint ptr %local to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %local, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.local_info, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %wrqu.i) #12
  %6 = getelementptr inbounds i8, ptr %wrqu.i, i32 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 8)
  store i64 0, ptr %6, align 4
  %sa_data.i = getelementptr inbounds %struct.sockaddr, ptr %wrqu.i, i32 0, i32 1
  %addr.i = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 4
  %8 = call ptr @memcpy(ptr %sa_data.i, ptr %addr.i, i32 6)
  %9 = ptrtoint ptr %wrqu.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 1, ptr %wrqu.i, align 4
  call void @wireless_send_event(ptr noundef %5, i32 noundef 35844, ptr noundef nonnull %wrqu.i, ptr noundef null) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %wrqu.i) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %proc = getelementptr inbounds %struct.ap_data, ptr %ap, i32 0, i32 11
  %10 = ptrtoint ptr %proc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %proc, align 4
  %cmp.not = icmp eq ptr %11, null
  br i1 %cmp.not, label %if.end.if.end8_crit_edge, label %if.then4

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %name) #12
  %addr = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 4
  %12 = call ptr @memset(ptr %name, i32 255, i32 20)
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %name, ptr noundef nonnull @.str.50, ptr noundef %addr)
  %13 = ptrtoint ptr %proc to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %proc, align 4
  call void @remove_proc_entry(ptr noundef nonnull %name, ptr noundef %14) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %name) #12
  br label %if.end8

if.end8:                                          ; preds = %if.then4, %if.end.if.end8_crit_edge
  %crypt = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 31
  %15 = ptrtoint ptr %crypt to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %crypt, align 4
  %tobool9.not = icmp eq ptr %16, null
  br i1 %tobool9.not, label %if.end8.if.end15_crit_edge, label %if.then10

if.end8.if.end15_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  %ops = getelementptr inbounds %struct.lib80211_crypt_data, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ops, align 4
  %deinit = getelementptr inbounds %struct.lib80211_crypto_ops, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %deinit to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %deinit, align 4
  %priv = getelementptr inbounds %struct.lib80211_crypt_data, ptr %16, i32 0, i32 2
  %21 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %priv, align 4
  call void %20(ptr noundef %22) #12
  %23 = ptrtoint ptr %crypt to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %crypt, align 4
  call void @kfree(ptr noundef %24) #12
  %25 = ptrtoint ptr %crypt to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %crypt, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then10, %if.end8.if.end15_crit_edge
  %tx_buf = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 18
  call void @skb_queue_purge(ptr noundef %tx_buf) #12
  %num_sta = getelementptr inbounds %struct.ap_data, ptr %ap, i32 0, i32 8
  %26 = ptrtoint ptr %num_sta to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %num_sta, align 4
  %dec = add i32 %27, -1
  store i32 %dec, ptr %num_sta, align 4
  %aid = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 5
  %28 = ptrtoint ptr %aid to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %aid, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %cmp16.not = icmp eq i16 %29, 0
  br i1 %cmp16.not, label %if.end15.if.end21_crit_edge, label %if.then18

if.end15.if.end21_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  %conv = zext i16 %29 to i32
  %sub = add nsw i32 %conv, -1
  %arrayidx = getelementptr %struct.ap_data, ptr %ap, i32 0, i32 22, i32 %sub
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %arrayidx, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %if.end15.if.end21_crit_edge
  %31 = ptrtoint ptr %ap1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ap1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool23.not = icmp eq i32 %32, 0
  br i1 %tobool23.not, label %if.then24, label %if.end21.if.end25_crit_edge

if.end21.if.end25_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

if.then24:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  %u = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 34
  %33 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %u, align 4
  call void @kfree(ptr noundef %34) #12
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.end21.if.end25_crit_edge
  %timer = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 35
  %call26 = call i32 @del_timer_sync(ptr noundef %timer) #12
  call void @kfree(ptr noundef %sta) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ap_control_kickall(ptr noundef %ap) local_unnamed_addr #0 align 64 {
entry:
  %wrqu.i = alloca %union.iwreq_data, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %sta_table_lock = getelementptr inbounds %struct.ap_data, ptr %ap, i32 0, i32 7
  tail call void @_raw_spin_lock_bh(ptr noundef %sta_table_lock) #12
  %sta_list = getelementptr inbounds %struct.ap_data, ptr %ap, i32 0, i32 9
  %0 = ptrtoint ptr %sta_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sta_list, align 4
  %cmp.not29 = icmp eq ptr %1, %sta_list
  br i1 %cmp.not29, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %2 = getelementptr inbounds i8, ptr %wrqu.i, i32 8
  %sa_data.i = getelementptr inbounds %struct.sockaddr, ptr %wrqu.i, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %ptr.030 = phi ptr [ %1, %for.body.lr.ph ], [ %n.033, %if.end.for.body_crit_edge ]
  %3 = ptrtoint ptr %ptr.030 to i32
  call void @__asan_load4_noabort(i32 %3)
  %n.033 = load ptr, ptr %ptr.030, align 4
  %addr.i = getelementptr inbounds %struct.sta_info, ptr %ptr.030, i32 0, i32 4
  %arrayidx.i = getelementptr %struct.sta_info, ptr %ptr.030, i32 0, i32 4, i32 5
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i, align 1
  %idxprom.i = zext i8 %5 to i32
  %arrayidx1.i = getelementptr %struct.ap_data, ptr %ap, i32 0, i32 10, i32 %idxprom.i
  %6 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx1.i, align 4
  %cmp.i = icmp eq ptr %7, null
  br i1 %cmp.i, label %for.body.ap_sta_hash_del.exit_crit_edge, label %if.end.i

for.body.ap_sta_hash_del.exit_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %ap_sta_hash_del.exit

if.end.i:                                         ; preds = %for.body
  %addr2.i = getelementptr inbounds %struct.sta_info, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %addr2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %addr2.i, align 4
  %10 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %addr.i, align 4
  %xor.i.i = xor i32 %11, %9
  %add.ptr.i.i = getelementptr %struct.sta_info, ptr %7, i32 0, i32 4, i32 4
  %12 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %add.ptr.i.i, align 2
  %add.ptr1.i.i = getelementptr %struct.sta_info, ptr %ptr.030, i32 0, i32 4, i32 4
  %14 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %add.ptr1.i.i, align 2
  %xor37.i.i = xor i16 %15, %13
  %xor3.i.i = zext i16 %xor37.i.i to i32
  %or.i.i = or i32 %xor.i.i, %xor3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i, label %if.then5.i, label %if.end.i.while.cond.i_crit_edge

if.end.i.while.cond.i_crit_edge:                  ; preds = %if.end.i
  br label %while.cond.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %hnext.i = getelementptr inbounds %struct.sta_info, ptr %7, i32 0, i32 1
  %16 = ptrtoint ptr %hnext.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hnext.i, align 4
  %18 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %arrayidx1.i, align 4
  br label %ap_sta_hash_del.exit

while.cond.i:                                     ; preds = %land.rhs.i.while.cond.i_crit_edge, %if.end.i.while.cond.i_crit_edge
  %s.0.i = phi ptr [ %20, %land.rhs.i.while.cond.i_crit_edge ], [ %7, %if.end.i.while.cond.i_crit_edge ]
  %hnext12.i = getelementptr inbounds %struct.sta_info, ptr %s.0.i, i32 0, i32 1
  %19 = ptrtoint ptr %hnext12.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hnext12.i, align 4
  %cmp13.not.i = icmp eq ptr %20, null
  br i1 %cmp13.not.i, label %do.end.i, label %land.rhs.i

land.rhs.i:                                       ; preds = %while.cond.i
  %addr15.i = getelementptr inbounds %struct.sta_info, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %addr15.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %addr15.i, align 4
  %xor.i46.i = xor i32 %22, %11
  %add.ptr.i47.i = getelementptr %struct.sta_info, ptr %20, i32 0, i32 4, i32 4
  %23 = ptrtoint ptr %add.ptr.i47.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %add.ptr.i47.i, align 2
  %xor37.i49.i = xor i16 %24, %15
  %xor3.i50.i = zext i16 %xor37.i49.i to i32
  %or.i51.i = or i32 %xor.i46.i, %xor3.i50.i
  %cmp.i52.i = icmp eq i32 %or.i51.i, 0
  br i1 %cmp.i52.i, label %if.then23.i, label %land.rhs.i.while.cond.i_crit_edge

land.rhs.i.while.cond.i_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i

if.then23.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  %hnext12.i.le = getelementptr inbounds %struct.sta_info, ptr %s.0.i, i32 0, i32 1
  %hnext25.i = getelementptr inbounds %struct.sta_info, ptr %20, i32 0, i32 1
  %25 = ptrtoint ptr %hnext25.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hnext25.i, align 4
  %27 = ptrtoint ptr %hnext12.i.le to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %hnext12.i.le, align 4
  br label %ap_sta_hash_del.exit

do.end.i:                                         ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  %call29.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef %addr.i) #15
  br label %ap_sta_hash_del.exit

ap_sta_hash_del.exit:                             ; preds = %do.end.i, %if.then23.i, %if.then5.i, %for.body.ap_sta_hash_del.exit_crit_edge
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %ptr.030) #12
  br i1 %call.i.i, label %if.end.i.i, label %ap_sta_hash_del.exit.list_del.exit_crit_edge

ap_sta_hash_del.exit.list_del.exit_crit_edge:     ; preds = %ap_sta_hash_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %ap_sta_hash_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %ptr.030, i32 0, i32 1
  %28 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %prev.i.i, align 4
  %30 = ptrtoint ptr %ptr.030 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ptr.030, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %29, ptr %prev1.i.i.i, align 4
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %31, ptr %29, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %ap_sta_hash_del.exit.list_del.exit_crit_edge
  %34 = ptrtoint ptr %ptr.030 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr inttoptr (i32 256 to ptr), ptr %ptr.030, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %ptr.030, i32 0, i32 1
  %35 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %flags = getelementptr inbounds %struct.sta_info, ptr %ptr.030, i32 0, i32 6
  %36 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %flags, align 4
  %and = and i32 %37, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %list_del.exit.if.end_crit_edge, label %land.lhs.true

list_del.exit.if.end_crit_edge:                   ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %list_del.exit
  %ap3 = getelementptr inbounds %struct.sta_info, ptr %ptr.030, i32 0, i32 32
  %38 = ptrtoint ptr %ap3 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ap3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool4.not = icmp eq i32 %39, 0
  br i1 %tobool4.not, label %land.lhs.true5, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true5:                                   ; preds = %land.lhs.true
  %local = getelementptr inbounds %struct.sta_info, ptr %ptr.030, i32 0, i32 33
  %40 = ptrtoint ptr %local to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %local, align 4
  %tobool6.not = icmp eq ptr %41, null
  br i1 %tobool6.not, label %land.lhs.true5.if.end_crit_edge, label %if.then

land.lhs.true5.if.end_crit_edge:                  ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.local_info, ptr %41, i32 0, i32 5
  %42 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %wrqu.i) #12
  %44 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %44, i32 8)
  store i64 0, ptr %2, align 4
  %45 = call ptr @memcpy(ptr %sa_data.i, ptr %addr.i, i32 6)
  %46 = ptrtoint ptr %wrqu.i to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 1, ptr %wrqu.i, align 4
  call void @wireless_send_event(ptr noundef %43, i32 noundef 35844, ptr noundef nonnull %wrqu.i, ptr noundef null) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %wrqu.i) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true5.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %list_del.exit.if.end_crit_edge
  call fastcc void @ap_free_sta(ptr noundef %ap, ptr noundef %ptr.030)
  %cmp.not = icmp eq ptr %n.033, %sta_list
  br i1 %cmp.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %sta_table_lock) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hostap_check_sta_fw_version(ptr noundef %ap, i32 noundef %sta_fw_ver) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ap, null
  br i1 %tobool.not, label %entry.if.end12_crit_edge, label %if.end

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %sta_fw_ver)
  %cmp = icmp eq i32 %sta_fw_ver, 2048
  br i1 %cmp, label %if.end5.thread, label %if.end5

if.end5.thread:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #15
  %nullfunc_ack = getelementptr inbounds %struct.ap_data, ptr %ap, i32 0, i32 6
  %0 = ptrtoint ptr %nullfunc_ack to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %nullfunc_ack, align 4
  br label %if.end12

if.end5:                                          ; preds = %if.end
  %nullfunc_ack4 = getelementptr inbounds %struct.ap_data, ptr %ap, i32 0, i32 6
  %1 = ptrtoint ptr %nullfunc_ack4 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %nullfunc_ack4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 66562, i32 %sta_fw_ver)
  %cmp6 = icmp eq i32 %sta_fw_ver, 66562
  br i1 %cmp6, label %do.end9, label %if.end5.if.end12_crit_edge

if.end5.if.end12_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

do.end9:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  %local = getelementptr inbounds %struct.ap_data, ptr %ap, i32 0, i32 1
  %2 = ptrtoint ptr %local to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %local, align 4
  %dev = getelementptr inbounds %struct.local_info, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %5) #15
  br label %if.end12

if.end12:                                         ; preds = %do.end9, %if.end5.if.end12_crit_edge, %if.end5.thread, %entry.if.end12_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hostap_init_data(ptr noundef %local) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ap1 = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 22
  %0 = ptrtoint ptr %ap1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ap1, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = call ptr @memset(ptr %1, i32 0, i32 1816)
  %local2 = getelementptr inbounds %struct.ap_data, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %local2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %local, ptr %local2, align 4
  %card_idx = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 1
  %4 = ptrtoint ptr %card_idx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %card_idx, align 4
  %arrayidx = getelementptr [8 x i32], ptr @other_ap_policy, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp3 = icmp slt i32 %7, 0
  %spec.select = select i1 %cmp3, i32 0, i32 %5
  %arrayidx5 = getelementptr [8 x i32], ptr @other_ap_policy, i32 0, i32 %spec.select
  %8 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx5, align 4
  %ap_policy = getelementptr inbounds %struct.ap_data, ptr %1, i32 0, i32 12
  %10 = ptrtoint ptr %ap_policy to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %ap_policy, align 4
  %11 = ptrtoint ptr %card_idx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %card_idx, align 4
  %arrayidx7 = getelementptr [8 x i32], ptr @ap_bridge_packets, i32 0, i32 %12
  %13 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp8 = icmp slt i32 %14, 0
  %cond13 = select i1 %cmp8, i32 0, i32 %12
  %arrayidx14 = getelementptr [8 x i32], ptr @ap_bridge_packets, i32 0, i32 %cond13
  %15 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx14, align 4
  %bridge_packets = getelementptr inbounds %struct.ap_data, ptr %1, i32 0, i32 2
  %17 = ptrtoint ptr %bridge_packets to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %bridge_packets, align 4
  %18 = ptrtoint ptr %card_idx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %card_idx, align 4
  %arrayidx16 = getelementptr [8 x i32], ptr @ap_max_inactivity, i32 0, i32 %19
  %20 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp17 = icmp slt i32 %21, 0
  %cond22 = select i1 %cmp17, i32 0, i32 %19
  %arrayidx23 = getelementptr [8 x i32], ptr @ap_max_inactivity, i32 0, i32 %cond22
  %22 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx23, align 4
  %mul = mul i32 %23, 100
  %max_inactivity = getelementptr inbounds %struct.ap_data, ptr %1, i32 0, i32 13
  %24 = ptrtoint ptr %max_inactivity to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %mul, ptr %max_inactivity, align 4
  %25 = ptrtoint ptr %card_idx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %card_idx, align 4
  %arrayidx25 = getelementptr [8 x i32], ptr @autom_ap_wds, i32 0, i32 %26
  %27 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp26 = icmp slt i32 %28, 0
  %cond31 = select i1 %cmp26, i32 0, i32 %26
  %arrayidx32 = getelementptr [8 x i32], ptr @autom_ap_wds, i32 0, i32 %cond31
  %29 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx32, align 4
  %autom_ap_wds = getelementptr inbounds %struct.ap_data, ptr %1, i32 0, i32 14
  %31 = ptrtoint ptr %autom_ap_wds to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %autom_ap_wds, align 4
  %sta_table_lock = getelementptr inbounds %struct.ap_data, ptr %1, i32 0, i32 7
  tail call void @__raw_spin_lock_init(ptr noundef %sta_table_lock, ptr noundef nonnull @.str.10, ptr noundef nonnull @hostap_init_data.__key, i16 noundef signext 3) #12
  %sta_list = getelementptr inbounds %struct.ap_data, ptr %1, i32 0, i32 9
  %32 = ptrtoint ptr %sta_list to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %sta_list, ptr %sta_list, align 4
  %prev.i = getelementptr inbounds %struct.ap_data, ptr %1, i32 0, i32 9, i32 1
  %33 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %sta_list, ptr %prev.i, align 4
  %34 = ptrtoint ptr %ap1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ap1, align 4
  %add_sta_proc_queue = getelementptr inbounds %struct.ap_data, ptr %35, i32 0, i32 17
  tail call void @__init_work(ptr noundef %add_sta_proc_queue, i32 noundef 0) #12
  %36 = ptrtoint ptr %ap1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ap1, align 4
  %add_sta_proc_queue40 = getelementptr inbounds %struct.ap_data, ptr %37, i32 0, i32 17
  %38 = ptrtoint ptr %add_sta_proc_queue40 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -64, ptr %add_sta_proc_queue40, align 4
  %39 = load ptr, ptr %ap1, align 4
  %lockdep_map = getelementptr inbounds %struct.ap_data, ptr %39, i32 0, i32 17, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.12, ptr noundef nonnull @hostap_init_data.__key.11, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %40 = ptrtoint ptr %ap1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ap1, align 4
  %entry45 = getelementptr inbounds %struct.ap_data, ptr %41, i32 0, i32 17, i32 1
  %42 = ptrtoint ptr %entry45 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %entry45, ptr %entry45, align 4
  %prev.i158 = getelementptr inbounds %struct.ap_data, ptr %41, i32 0, i32 17, i32 1, i32 1
  %43 = ptrtoint ptr %prev.i158 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %entry45, ptr %prev.i158, align 4
  %44 = load ptr, ptr %ap1, align 4
  %func = getelementptr inbounds %struct.ap_data, ptr %44, i32 0, i32 17, i32 2
  %45 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @handle_add_proc_queue, ptr %func, align 4
  %call50 = tail call zeroext i16 @hostap_tx_callback_register(ptr noundef %local, ptr noundef nonnull @hostap_ap_tx_cb, ptr noundef nonnull %1) #12
  %tx_callback_idx = getelementptr inbounds %struct.ap_data, ptr %1, i32 0, i32 21
  %46 = ptrtoint ptr %tx_callback_idx to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %call50, ptr %tx_callback_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call50)
  %cmp52 = icmp eq i16 %call50, 0
  br i1 %cmp52, label %do.end57, label %if.end.do.body61_crit_edge

if.end.do.body61_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body61

do.end57:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 5
  %47 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev, align 4
  %call59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %48) #15
  br label %do.body61

do.body61:                                        ; preds = %do.end57, %if.end.do.body61_crit_edge
  %49 = ptrtoint ptr %ap1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ap1, align 4
  %wds_oper_queue = getelementptr inbounds %struct.ap_data, ptr %50, i32 0, i32 19
  tail call void @__init_work(ptr noundef %wds_oper_queue, i32 noundef 0) #12
  %51 = ptrtoint ptr %ap1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ap1, align 4
  %wds_oper_queue64 = getelementptr inbounds %struct.ap_data, ptr %52, i32 0, i32 19
  %53 = ptrtoint ptr %wds_oper_queue64 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 -64, ptr %wds_oper_queue64, align 4
  %54 = load ptr, ptr %ap1, align 4
  %lockdep_map70 = getelementptr inbounds %struct.ap_data, ptr %54, i32 0, i32 19, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map70, ptr noundef nonnull @.str.17, ptr noundef nonnull @hostap_init_data.__key.16, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %55 = ptrtoint ptr %ap1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ap1, align 4
  %entry73 = getelementptr inbounds %struct.ap_data, ptr %56, i32 0, i32 19, i32 1
  %57 = ptrtoint ptr %entry73 to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile ptr %entry73, ptr %entry73, align 4
  %prev.i159 = getelementptr inbounds %struct.ap_data, ptr %56, i32 0, i32 19, i32 1, i32 1
  %58 = ptrtoint ptr %prev.i159 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %entry73, ptr %prev.i159, align 4
  %59 = load ptr, ptr %ap1, align 4
  %func76 = getelementptr inbounds %struct.ap_data, ptr %59, i32 0, i32 19, i32 2
  %60 = ptrtoint ptr %func76 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @handle_wds_oper_queue, ptr %func76, align 4
  %call79 = tail call zeroext i16 @hostap_tx_callback_register(ptr noundef %local, ptr noundef nonnull @hostap_ap_tx_cb_auth, ptr noundef nonnull %1) #12
  %tx_callback_auth = getelementptr inbounds %struct.ap_data, ptr %1, i32 0, i32 23
  %61 = ptrtoint ptr %tx_callback_auth to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %call79, ptr %tx_callback_auth, align 4
  %call80 = tail call zeroext i16 @hostap_tx_callback_register(ptr noundef %local, ptr noundef nonnull @hostap_ap_tx_cb_assoc, ptr noundef nonnull %1) #12
  %tx_callback_assoc = getelementptr inbounds %struct.ap_data, ptr %1, i32 0, i32 24
  %62 = ptrtoint ptr %tx_callback_assoc to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %call80, ptr %tx_callback_assoc, align 2
  %call81 = tail call zeroext i16 @hostap_tx_callback_register(ptr noundef %local, ptr noundef nonnull @hostap_ap_tx_cb_poll, ptr noundef nonnull %1) #12
  %tx_callback_poll = getelementptr inbounds %struct.ap_data, ptr %1, i32 0, i32 25
  %63 = ptrtoint ptr %tx_callback_poll to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %call81, ptr %tx_callback_poll, align 4
  %64 = ptrtoint ptr %tx_callback_auth to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %tx_callback_auth, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %65)
  %cmp84 = icmp eq i16 %65, 0
  br i1 %cmp84, label %do.body61.do.end98_crit_edge, label %lor.lhs.false

do.body61.do.end98_crit_edge:                     ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end98

lor.lhs.false:                                    ; preds = %do.body61
  %66 = ptrtoint ptr %tx_callback_assoc to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %tx_callback_assoc, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %67)
  %cmp88 = icmp eq i16 %67, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call81)
  %cmp93 = icmp eq i16 %call81, 0
  %or.cond = select i1 %cmp88, i1 true, i1 %cmp93
  br i1 %or.cond, label %lor.lhs.false.do.end98_crit_edge, label %lor.lhs.false.do.body105_crit_edge

lor.lhs.false.do.body105_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body105

lor.lhs.false.do.end98_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end98

do.end98:                                         ; preds = %lor.lhs.false.do.end98_crit_edge, %do.body61.do.end98_crit_edge
  %dev100 = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 5
  %68 = ptrtoint ptr %dev100 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev100, align 4
  %call103 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %69) #15
  br label %do.body105

do.body105:                                       ; preds = %do.end98, %lor.lhs.false.do.body105_crit_edge
  %lock = getelementptr inbounds %struct.ap_data, ptr %1, i32 0, i32 15, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.21, ptr noundef nonnull @hostap_init_data.__key.20, i16 noundef signext 3) #12
  %mac_list = getelementptr inbounds %struct.ap_data, ptr %1, i32 0, i32 15, i32 2
  %70 = ptrtoint ptr %mac_list to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile ptr %mac_list, ptr %mac_list, align 4
  %prev.i160 = getelementptr inbounds %struct.ap_data, ptr %1, i32 0, i32 15, i32 2, i32 1
  %71 = ptrtoint ptr %prev.i160 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %mac_list, ptr %prev.i160, align 4
  %72 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 1, ptr %1, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body105, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @handle_add_proc_queue(ptr noundef %work) #0 align 64 {
entry:
  %name = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -1188
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %name) #12
  %add_sta_proc_entries = getelementptr i8, ptr %work, i32 44
  %0 = call ptr @memset(ptr %name, i32 255, i32 20)
  %1 = ptrtoint ptr %add_sta_proc_entries to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add_sta_proc_entries, align 4
  store ptr null, ptr %add_sta_proc_entries, align 4
  %tobool.not34 = icmp eq ptr %2, null
  br i1 %tobool.not34, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %sta_table_lock = getelementptr i8, ptr %work, i32 -1160
  %proc = getelementptr i8, ptr %work, i32 -80
  br label %while.body

while.body:                                       ; preds = %if.end15.while.body_crit_edge, %while.body.lr.ph
  %entry1.035 = phi ptr [ %2, %while.body.lr.ph ], [ %21, %if.end15.while.body_crit_edge ]
  call void @_raw_spin_lock_bh(ptr noundef %sta_table_lock) #12
  %arrayidx.i = getelementptr i8, ptr %entry1.035, i32 5
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx.i, align 1
  %idxprom.i = zext i8 %4 to i32
  %arrayidx1.i = getelementptr %struct.ap_data, ptr %add.ptr, i32 0, i32 10, i32 %idxprom.i
  %5 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %s.06.i = load ptr, ptr %arrayidx1.i, align 4
  %cmp.not7.i = icmp eq ptr %s.06.i, null
  br i1 %cmp.not7.i, label %while.body.if.end15.critedge_crit_edge, label %land.rhs.lr.ph.i

while.body.if.end15.critedge_crit_edge:           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.critedge

land.rhs.lr.ph.i:                                 ; preds = %while.body
  %6 = ptrtoint ptr %entry1.035 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %entry1.035, align 4
  %add.ptr1.i.i = getelementptr i8, ptr %entry1.035, i32 4
  %8 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %add.ptr1.i.i, align 2
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %while.body.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %s.08.i = phi ptr [ %s.06.i, %land.rhs.lr.ph.i ], [ %s.0.i, %while.body.i.land.rhs.i_crit_edge ]
  %addr.i = getelementptr inbounds %struct.sta_info, ptr %s.08.i, i32 0, i32 4
  %10 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %addr.i, align 4
  %xor.i.i = xor i32 %11, %7
  %add.ptr.i.i = getelementptr %struct.sta_info, ptr %s.08.i, i32 0, i32 4, i32 4
  %12 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %add.ptr.i.i, align 2
  %xor37.i.i = xor i16 %13, %9
  %xor3.i.i = zext i16 %xor37.i.i to i32
  %or.i.i = or i32 %xor.i.i, %xor3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i, label %if.then, label %while.body.i

while.body.i:                                     ; preds = %land.rhs.i
  %hnext.i = getelementptr inbounds %struct.sta_info, ptr %s.08.i, i32 0, i32 1
  %14 = ptrtoint ptr %hnext.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %s.0.i = load ptr, ptr %hnext.i, align 4
  %cmp.not.i = icmp eq ptr %s.0.i, null
  br i1 %cmp.not.i, label %while.body.i.if.end15.critedge_crit_edge, label %while.body.i.land.rhs.i_crit_edge

while.body.i.land.rhs.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i

while.body.i.if.end15.critedge_crit_edge:         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.critedge

if.then:                                          ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  %users = getelementptr inbounds %struct.sta_info, ptr %s.08.i, i32 0, i32 2
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %users, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr %users, i32 1, i32 3, i32 1) #12
  %15 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users, ptr %users, i32 1, ptr elementtype(i32) %users) #12, !srcloc !531
  call void @_raw_spin_unlock_bh(ptr noundef %sta_table_lock) #12
  %call10 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %name, ptr noundef nonnull @.str.50, ptr noundef %addr.i)
  %16 = ptrtoint ptr %proc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %proc, align 4
  %call12 = call ptr @proc_create_single_data(ptr noundef nonnull %name, i16 noundef zeroext 0, ptr noundef %17, ptr noundef nonnull @prism2_sta_proc_show, ptr noundef nonnull %s.08.i) #12
  %proc13 = getelementptr inbounds %struct.sta_info, ptr %s.08.i, i32 0, i32 3
  %18 = ptrtoint ptr %proc13 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call12, ptr %proc13, align 4
  %call.i.i30 = call zeroext i1 @__kasan_check_write(ptr noundef %users, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr %users, i32 1, i32 3, i32 1) #12
  %19 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users, ptr %users, i32 1, ptr elementtype(i32) %users) #12, !srcloc !532
  br label %if.end15

if.end15.critedge:                                ; preds = %while.body.i.if.end15.critedge_crit_edge, %while.body.if.end15.critedge_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %sta_table_lock) #12
  br label %if.end15

if.end15:                                         ; preds = %if.end15.critedge, %if.then
  %next = getelementptr inbounds %struct.add_sta_proc_data, ptr %entry1.035, i32 0, i32 1
  %20 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %next, align 4
  call void @kfree(ptr noundef nonnull %entry1.035) #12
  %tobool.not = icmp eq ptr %21, null
  br i1 %tobool.not, label %if.end15.while.end_crit_edge, label %if.end15.while.body_crit_edge

if.end15.while.body_crit_edge:                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

if.end15.while.end_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %if.end15.while.end_crit_edge, %entry.while.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %name) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @hostap_tx_callback_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hostap_ap_tx_cb(ptr noundef %skb, i32 noundef %ok, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %local = getelementptr inbounds %struct.ap_data, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %local to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local, align 4
  %hostapd = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 68
  %2 = ptrtoint ptr %hostapd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hostapd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %apdev = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 70
  %4 = ptrtoint ptr %apdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %apdev, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void @consume_skb(ptr noundef %skb) #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  %data3 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %6 = ptrtoint ptr %data3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data3, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %7, align 2
  %10 = and i16 %9, -769
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ok)
  %tobool5.not = icmp eq i32 %ok, 0
  %conv7 = select i1 %tobool5.not, i16 256, i16 512
  %or = or i16 %10, %conv7
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %or, ptr %7, align 2
  %12 = ptrtoint ptr %local to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %local, align 4
  %apdev12 = getelementptr inbounds %struct.local_info, ptr %13, i32 0, i32 70
  %14 = ptrtoint ptr %apdev12 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %apdev12, align 4
  %16 = getelementptr inbounds %struct.anon.44, ptr %skb, i32 0, i32 2
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %15, ptr %16, align 8
  %18 = load i16, ptr %7, align 2
  %call = tail call i32 @hostap_80211_get_hdrlen(i16 noundef zeroext %18) #12
  %call14 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef %call) #12
  %pkt_type = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %19 = ptrtoint ptr %pkt_type to i32
  call void @__asan_load2_noabort(i32 %19)
  %bf.load = load i16, ptr %pkt_type, align 8
  %bf.clear = and i16 %bf.load, 8191
  %bf.set = or i16 %bf.clear, 24576
  store i16 %bf.set, ptr %pkt_type, align 8
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %20 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 4, ptr %protocol, align 8
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %21 = call ptr @memset(ptr %cb, i32 0, i32 48)
  %call15 = tail call i32 @netif_rx(ptr noundef %skb) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @handle_wds_oper_queue(ptr nocapture noundef readonly %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %local1 = getelementptr i8, ptr %work, i32 -1232
  %0 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local1, align 4
  %lock = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 11
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #12
  %ap3 = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %ap3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ap3, align 4
  %wds_oper_entries = getelementptr inbounds %struct.ap_data, ptr %3, i32 0, i32 20
  %4 = ptrtoint ptr %wds_oper_entries to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wds_oper_entries, align 4
  store ptr null, ptr %wds_oper_entries, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #12
  %tobool.not38 = icmp eq ptr %5, null
  br i1 %tobool.not38, label %entry.while.end_crit_edge, label %do.end.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

do.end.lr.ph:                                     ; preds = %entry
  %dev = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 5
  br label %do.end

do.end:                                           ; preds = %if.end23.do.end_crit_edge, %do.end.lr.ph
  %entry2.039 = phi ptr [ %5, %do.end.lr.ph ], [ %14, %if.end23.do.end_crit_edge ]
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %8 = ptrtoint ptr %entry2.039 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %entry2.039, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp eq i32 %9, 0
  %cond = select i1 %cmp, ptr @.str.114, ptr @.str.115
  %addr = getelementptr inbounds %struct.wds_oper_data, ptr %entry2.039, i32 0, i32 1
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.112, ptr noundef %7, ptr noundef nonnull %cond, ptr noundef %addr) #15
  %10 = ptrtoint ptr %entry2.039 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %entry2.039, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.263)
  switch i32 %11, label %do.end.if.end23_crit_edge [
    i32 0, label %if.then
    i32 1, label %if.then19
  ]

do.end.if.end23_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

if.then:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %call16 = tail call i32 @prism2_wds_add(ptr noundef %1, ptr noundef %addr, i32 noundef 0) #12
  br label %if.end23

if.then19:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %call22 = tail call i32 @prism2_wds_del(ptr noundef %1, ptr noundef %addr, i32 noundef 0, i32 noundef 1) #12
  br label %if.end23

if.end23:                                         ; preds = %if.then19, %if.then, %do.end.if.end23_crit_edge
  %next = getelementptr inbounds %struct.wds_oper_data, ptr %entry2.039, i32 0, i32 2
  %13 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %next, align 4
  tail call void @kfree(ptr noundef nonnull %entry2.039) #12
  %tobool.not = icmp eq ptr %14, null
  br i1 %tobool.not, label %if.end23.while.end_crit_edge, label %if.end23.do.end_crit_edge

if.end23.do.end_crit_edge:                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.end23.while.end_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %if.end23.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hostap_ap_tx_cb_auth(ptr noundef %skb, i32 noundef %ok, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %local = getelementptr inbounds %struct.ap_data, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %local to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local, align 4
  %dev1 = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %hostapd = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 68
  %4 = ptrtoint ptr %hostapd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hostapd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %data3 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %6 = ptrtoint ptr %data3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data3, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %7, align 2
  %10 = and i16 %9, -1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 -20480, i16 %10)
  %cmp.i = icmp eq i16 %10, -20480
  br i1 %cmp.i, label %lor.lhs.false, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

lor.lhs.false:                                    ; preds = %if.end
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %11 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %12)
  %cmp = icmp ult i32 %12, 30
  br i1 %cmp, label %lor.lhs.false.do.end_crit_edge, label %if.end6

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %if.end.do.end_crit_edge
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef %3) #15
  br label %cleanup

if.end6:                                          ; preds = %lor.lhs.false
  %add.ptr = getelementptr i8, ptr %7, i32 24
  %incdec.ptr = getelementptr i8, ptr %7, i32 26
  %13 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %add.ptr, align 2
  %15 = tail call i16 @llvm.bswap.i16(i16 %14)
  %incdec.ptr8 = getelementptr i8, ptr %7, i32 28
  %16 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %incdec.ptr, align 2
  %18 = tail call i16 @llvm.bswap.i16(i16 %17)
  %19 = ptrtoint ptr %incdec.ptr8 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %incdec.ptr8, align 2
  %21 = tail call i16 @llvm.bswap.i16(i16 %20)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ok)
  %tobool10.not = icmp eq i32 %ok, 0
  br i1 %tobool10.not, label %if.end6.do.end55_crit_edge, label %if.end12

if.end6.do.end55_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end55

if.end12:                                         ; preds = %if.end6
  %sta_table_lock = getelementptr inbounds %struct.ap_data, ptr %data, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %sta_table_lock) #12
  %arrayidx.i = getelementptr %struct.ieee80211_hdr, ptr %7, i32 0, i32 2, i32 5
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.i, align 1
  %idxprom.i = zext i8 %23 to i32
  %arrayidx1.i = getelementptr %struct.ap_data, ptr %data, i32 0, i32 10, i32 %idxprom.i
  %24 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %s.06.i = load ptr, ptr %arrayidx1.i, align 4
  %cmp.not7.i = icmp eq ptr %s.06.i, null
  br i1 %cmp.not7.i, label %if.end12.if.then20.critedge_crit_edge, label %land.rhs.lr.ph.i

if.end12.if.then20.critedge_crit_edge:            ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then20.critedge

land.rhs.lr.ph.i:                                 ; preds = %if.end12
  %addr1 = getelementptr inbounds %struct.ieee80211_hdr, ptr %7, i32 0, i32 2
  %25 = ptrtoint ptr %addr1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %addr1, align 4
  %add.ptr1.i.i = getelementptr %struct.ieee80211_hdr, ptr %7, i32 0, i32 2, i32 4
  %27 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %add.ptr1.i.i, align 2
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %while.body.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %s.08.i = phi ptr [ %s.06.i, %land.rhs.lr.ph.i ], [ %s.0.i, %while.body.i.land.rhs.i_crit_edge ]
  %addr.i = getelementptr inbounds %struct.sta_info, ptr %s.08.i, i32 0, i32 4
  %29 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %addr.i, align 4
  %xor.i.i = xor i32 %30, %26
  %add.ptr.i.i = getelementptr %struct.sta_info, ptr %s.08.i, i32 0, i32 4, i32 4
  %31 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %add.ptr.i.i, align 2
  %xor37.i.i = xor i16 %32, %28
  %xor3.i.i = zext i16 %xor37.i.i to i32
  %or.i.i = or i32 %xor.i.i, %xor3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i, label %if.then16, label %while.body.i

while.body.i:                                     ; preds = %land.rhs.i
  %hnext.i = getelementptr inbounds %struct.sta_info, ptr %s.08.i, i32 0, i32 1
  %33 = ptrtoint ptr %hnext.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %s.0.i = load ptr, ptr %hnext.i, align 4
  %cmp.not.i = icmp eq ptr %s.0.i, null
  br i1 %cmp.not.i, label %while.body.i.if.then20.critedge_crit_edge, label %while.body.i.land.rhs.i_crit_edge

while.body.i.land.rhs.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i

while.body.i.if.then20.critedge_crit_edge:        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then20.critedge

if.then16:                                        ; preds = %land.rhs.i
  %users = getelementptr inbounds %struct.sta_info, ptr %s.08.i, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %users, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %users, i32 1, i32 3, i32 1) #12
  %34 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users, ptr %users, i32 1, ptr elementtype(i32) %users) #12, !srcloc !531
  tail call void @_raw_spin_unlock(ptr noundef %sta_table_lock) #12
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %cond = icmp eq i16 %20, 0
  br i1 %cond, label %land.lhs.true, label %if.then16.if.end49_crit_edge

if.then16.if.end49_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49

if.then20.critedge:                               ; preds = %while.body.i.if.then20.critedge_crit_edge, %if.end12.if.then20.critedge_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %sta_table_lock) #12
  br label %do.end55

land.lhs.true:                                    ; preds = %if.then16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %cmp25 = icmp eq i16 %14, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %17)
  %cmp29 = icmp eq i16 %17, 512
  %or.cond = select i1 %cmp25, i1 %cmp29, i1 false
  br i1 %or.cond, label %land.lhs.true.if.then39_crit_edge, label %lor.lhs.false31

land.lhs.true.if.then39_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then39

lor.lhs.false31:                                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %14)
  %cmp33 = icmp eq i16 %14, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %17)
  %cmp37 = icmp eq i16 %17, 1024
  %or.cond103 = select i1 %cmp33, i1 %cmp37, i1 false
  br i1 %or.cond103, label %lor.lhs.false31.if.then39_crit_edge, label %lor.lhs.false31.if.end49_crit_edge

lor.lhs.false31.if.end49_crit_edge:               ; preds = %lor.lhs.false31
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49

lor.lhs.false31.if.then39_crit_edge:              ; preds = %lor.lhs.false31
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then39

if.then39:                                        ; preds = %lor.lhs.false31.if.then39_crit_edge, %land.lhs.true.if.then39_crit_edge
  %flags = getelementptr inbounds %struct.sta_info, ptr %s.08.i, i32 0, i32 6
  %35 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %flags, align 4
  %or = or i32 %36, 1
  store i32 %or, ptr %flags, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %37 = load volatile i32, ptr @jiffies, align 128
  %last_auth = getelementptr inbounds %struct.sta_info, ptr %s.08.i, i32 0, i32 10
  %38 = ptrtoint ptr %last_auth to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %last_auth, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.then39, %lor.lhs.false31.if.end49_crit_edge, %if.then16.if.end49_crit_edge
  %tobool50.not.ph = phi i1 [ false, %if.then16.if.end49_crit_edge ], [ true, %lor.lhs.false31.if.end49_crit_edge ], [ false, %if.then39 ]
  %txt.0.ph = phi ptr [ @.str.56, %if.then16.if.end49_crit_edge ], [ null, %lor.lhs.false31.if.end49_crit_edge ], [ @.str.55, %if.then39 ]
  %call.i.i104 = tail call zeroext i1 @__kasan_check_write(ptr noundef %users, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %users, i32 1, i32 3, i32 1) #12
  %39 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users, ptr %users, i32 1, ptr elementtype(i32) %users) #12, !srcloc !532
  br i1 %tobool50.not.ph, label %if.end49.cleanup_crit_edge, label %if.end49.do.end55_crit_edge

if.end49.do.end55_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end55

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end55:                                         ; preds = %if.end49.do.end55_crit_edge, %if.then20.critedge, %if.end6.do.end55_crit_edge
  %txt.0116119 = phi ptr [ %txt.0.ph, %if.end49.do.end55_crit_edge ], [ @.str.53, %if.end6.do.end55_crit_edge ], [ @.str.54, %if.then20.critedge ]
  %addr159 = getelementptr inbounds %struct.ieee80211_hdr, ptr %7, i32 0, i32 2
  %conv61 = zext i16 %15 to i32
  %conv62 = zext i16 %18 to i32
  %conv63 = zext i16 %21 to i32
  %call64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef %3, ptr noundef %addr159, i32 noundef %conv61, i32 noundef %conv62, i32 noundef %conv63, ptr noundef %txt.0116119) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end55, %if.end49.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  tail call void @consume_skb(ptr noundef %skb) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hostap_ap_tx_cb_assoc(ptr noundef %skb, i32 noundef %ok, ptr noundef %data) #0 align 64 {
entry:
  %wrqu.i = alloca %union.iwreq_data, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %local = getelementptr inbounds %struct.ap_data, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %local to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local, align 4
  %dev1 = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %hostapd = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 68
  %4 = ptrtoint ptr %hostapd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hostapd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @consume_skb(ptr noundef %skb) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %data3 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %6 = ptrtoint ptr %data3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data3, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %7, align 2
  %10 = and i16 %9, -1024
  %11 = zext i16 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.264)
  switch i16 %10, label %if.end.do.end_crit_edge [
    i16 4096, label %if.end.lor.lhs.false_crit_edge
    i16 12288, label %if.end.lor.lhs.false_crit_edge86
  ]

if.end.lor.lhs.false_crit_edge86:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false

if.end.lor.lhs.false_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

lor.lhs.false:                                    ; preds = %if.end.lor.lhs.false_crit_edge, %if.end.lor.lhs.false_crit_edge86
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %12 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %13)
  %cmp = icmp ult i32 %13, 28
  br i1 %cmp, label %lor.lhs.false.do.end_crit_edge, label %if.end8

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %if.end.do.end_crit_edge
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef %3) #15
  tail call void @consume_skb(ptr noundef %skb) #12
  br label %cleanup

if.end8:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ok)
  %tobool9.not = icmp eq i32 %ok, 0
  br i1 %tobool9.not, label %if.end8.do.end40_crit_edge, label %if.end11

if.end8.do.end40_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end40

if.end11:                                         ; preds = %if.end8
  %sta_table_lock = getelementptr inbounds %struct.ap_data, ptr %data, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %sta_table_lock) #12
  %addr1 = getelementptr inbounds %struct.ieee80211_hdr, ptr %7, i32 0, i32 2
  %call13 = tail call fastcc ptr @ap_get_sta(ptr noundef %data, ptr noundef %addr1)
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.then19.critedge, label %if.then15

if.then15:                                        ; preds = %if.end11
  %users = getelementptr inbounds %struct.sta_info, ptr %call13, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %users, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %users, i32 1, i32 3, i32 1) #12
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users, ptr %users, i32 1, ptr elementtype(i32) %users) #12, !srcloc !531
  tail call void @_raw_spin_unlock(ptr noundef %sta_table_lock) #12
  %15 = ptrtoint ptr %data3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data3, align 4
  %incdec.ptr = getelementptr i8, ptr %16, i32 26
  %17 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %incdec.ptr, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %cmp23 = icmp eq i16 %18, 0
  br i1 %cmp23, label %if.then25, label %if.then15.if.then32_crit_edge

if.then15.if.then32_crit_edge:                    ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then32

if.then19.critedge:                               ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock(ptr noundef %sta_table_lock) #12
  br label %do.end40

if.then25:                                        ; preds = %if.then15
  %flags = getelementptr inbounds %struct.sta_info, ptr %call13, i32 0, i32 6
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags, align 4
  %and = and i32 %20, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool26.not = icmp eq i32 %and, 0
  br i1 %tobool26.not, label %if.then27, label %if.then25.if.end28_crit_edge

if.then25.if.end28_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

if.then27:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %wrqu.i) #12
  %21 = getelementptr inbounds i8, ptr %wrqu.i, i32 8
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_storeN_noabort(i32 %22, i32 8)
  store i64 0, ptr %21, align 4
  %sa_data.i = getelementptr inbounds %struct.sockaddr, ptr %wrqu.i, i32 0, i32 1
  %addr.i = getelementptr inbounds %struct.sta_info, ptr %call13, i32 0, i32 4
  %23 = call ptr @memcpy(ptr %sa_data.i, ptr %addr.i, i32 6)
  %24 = ptrtoint ptr %wrqu.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 1, ptr %wrqu.i, align 4
  call void @wireless_send_event(ptr noundef %3, i32 noundef 35843, ptr noundef nonnull %wrqu.i, ptr noundef null) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %wrqu.i) #12
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.then25.if.end28_crit_edge
  %25 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flags, align 4
  %or = or i32 %26, 2
  store i32 %or, ptr %flags, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %27 = load volatile i32, ptr @jiffies, align 128
  %last_assoc = getelementptr inbounds %struct.sta_info, ptr %call13, i32 0, i32 11
  %28 = ptrtoint ptr %last_assoc to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %last_assoc, align 4
  br label %if.then32

if.then32:                                        ; preds = %if.end28, %if.then15.if.then32_crit_edge
  %txt.0 = phi ptr [ @.str.62, %if.end28 ], [ @.str.63, %if.then15.if.then32_crit_edge ]
  %call.i.i80 = call zeroext i1 @__kasan_check_write(ptr noundef %users, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr %users, i32 1, i32 3, i32 1) #12
  %29 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users, ptr %users, i32 1, ptr elementtype(i32) %users) #12, !srcloc !532
  br label %do.end40

do.end40:                                         ; preds = %if.then32, %if.then19.critedge, %if.end8.do.end40_crit_edge
  %txt.085 = phi ptr [ %txt.0, %if.then32 ], [ @.str.53, %if.end8.do.end40_crit_edge ], [ @.str.54, %if.then19.critedge ]
  %addr144 = getelementptr inbounds %struct.ieee80211_hdr, ptr %7, i32 0, i32 2
  %call46 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, ptr noundef %3, ptr noundef %addr144, ptr noundef nonnull %txt.085) #15
  call void @consume_skb(ptr noundef %skb) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end40, %do.end, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hostap_ap_tx_cb_poll(ptr noundef %skb, i32 noundef %ok, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %1)
  %cmp = icmp ult i32 %1, 24
  br i1 %cmp, label %entry.fail_crit_edge, label %if.end

entry.fail_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail

if.end:                                           ; preds = %entry
  %data1 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %2 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ok)
  %tobool.not = icmp eq i32 %ok, 0
  br i1 %tobool.not, label %do.end, label %if.then2

if.then2:                                         ; preds = %if.end
  %sta_table_lock = getelementptr inbounds %struct.ap_data, ptr %data, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %sta_table_lock) #12
  %arrayidx.i = getelementptr %struct.ieee80211_hdr, ptr %3, i32 0, i32 2, i32 5
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i, align 1
  %idxprom.i = zext i8 %5 to i32
  %arrayidx1.i = getelementptr %struct.ap_data, ptr %data, i32 0, i32 10, i32 %idxprom.i
  %6 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %s.06.i = load ptr, ptr %arrayidx1.i, align 4
  %cmp.not7.i = icmp eq ptr %s.06.i, null
  br i1 %cmp.not7.i, label %if.then2.if.end5_crit_edge, label %land.rhs.lr.ph.i

if.then2.if.end5_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

land.rhs.lr.ph.i:                                 ; preds = %if.then2
  %addr1 = getelementptr inbounds %struct.ieee80211_hdr, ptr %3, i32 0, i32 2
  %7 = ptrtoint ptr %addr1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %addr1, align 4
  %add.ptr1.i.i = getelementptr %struct.ieee80211_hdr, ptr %3, i32 0, i32 2, i32 4
  %9 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %add.ptr1.i.i, align 2
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %while.body.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %s.08.i = phi ptr [ %s.06.i, %land.rhs.lr.ph.i ], [ %s.0.i, %while.body.i.land.rhs.i_crit_edge ]
  %addr.i = getelementptr inbounds %struct.sta_info, ptr %s.08.i, i32 0, i32 4
  %11 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %addr.i, align 4
  %xor.i.i = xor i32 %12, %8
  %add.ptr.i.i = getelementptr %struct.sta_info, ptr %s.08.i, i32 0, i32 4, i32 4
  %13 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %add.ptr.i.i, align 2
  %xor37.i.i = xor i16 %14, %10
  %xor3.i.i = zext i16 %xor37.i.i to i32
  %or.i.i = or i32 %xor.i.i, %xor3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i, label %if.then4, label %while.body.i

while.body.i:                                     ; preds = %land.rhs.i
  %hnext.i = getelementptr inbounds %struct.sta_info, ptr %s.08.i, i32 0, i32 1
  %15 = ptrtoint ptr %hnext.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %s.0.i = load ptr, ptr %hnext.i, align 4
  %cmp.not.i = icmp eq ptr %s.0.i, null
  br i1 %cmp.not.i, label %while.body.i.if.end5_crit_edge, label %while.body.i.land.rhs.i_crit_edge

while.body.i.land.rhs.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i

while.body.i.if.end5_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.then4:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  %flags = getelementptr inbounds %struct.sta_info, ptr %s.08.i, i32 0, i32 6
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags, align 4
  %and = and i32 %17, -65
  store i32 %and, ptr %flags, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %while.body.i.if.end5_crit_edge, %if.then2.if.end5_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %sta_table_lock) #12
  br label %fail

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %local = getelementptr inbounds %struct.ap_data, ptr %data, i32 0, i32 1
  %18 = ptrtoint ptr %local to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %local, align 4
  %dev = getelementptr inbounds %struct.local_info, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 4
  %addr19 = getelementptr inbounds %struct.ieee80211_hdr, ptr %3, i32 0, i32 2
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, ptr noundef %21, ptr noundef %addr19) #15
  br label %fail

fail:                                             ; preds = %do.end, %if.end5, %entry.fail_crit_edge
  tail call void @consume_skb(ptr noundef %skb) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hostap_init_ap_proc(ptr nocapture noundef readonly %local) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ap1 = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 22
  %0 = ptrtoint ptr %ap1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ap1, align 4
  %proc = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 29
  %2 = ptrtoint ptr %proc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %proc, align 4
  %proc2 = getelementptr inbounds %struct.ap_data, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %proc2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %proc2, align 4
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call ptr @proc_create_single_data(ptr noundef nonnull @.str.22, i16 noundef zeroext 0, ptr noundef nonnull %3, ptr noundef nonnull @ap_debug_proc_show, ptr noundef %1) #12
  %5 = ptrtoint ptr %proc2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %proc2, align 4
  %call6 = tail call ptr @proc_create_seq_private(ptr noundef nonnull @.str.23, i16 noundef zeroext 0, ptr noundef %6, ptr noundef nonnull @ap_control_proc_seqops, i32 noundef 0, ptr noundef %1) #12
  %7 = ptrtoint ptr %proc2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %proc2, align 4
  %call8 = tail call ptr @proc_create_seq_private(ptr noundef nonnull @.str.24, i16 noundef zeroext 0, ptr noundef %8, ptr noundef nonnull @prism2_ap_proc_seqops, i32 noundef 0, ptr noundef %1) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_single_data(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ap_debug_proc_show(ptr noundef %m, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %file = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 10
  %0 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %file, align 4
  %f_inode.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_inode.i, align 8
  %i_private.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 54
  %4 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_private.i, align 4
  %bridged_unicast = getelementptr inbounds %struct.ap_data, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %bridged_unicast to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bridged_unicast, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.69, i32 noundef %7) #12
  %bridged_multicast = getelementptr inbounds %struct.ap_data, ptr %5, i32 0, i32 4
  %8 = ptrtoint ptr %bridged_multicast to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bridged_multicast, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.70, i32 noundef %9) #12
  %max_inactivity = getelementptr inbounds %struct.ap_data, ptr %5, i32 0, i32 13
  %10 = ptrtoint ptr %max_inactivity to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max_inactivity, align 4
  %div = udiv i32 %11, 100
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.71, i32 noundef %div) #12
  %bridge_packets = getelementptr inbounds %struct.ap_data, ptr %5, i32 0, i32 2
  %12 = ptrtoint ptr %bridge_packets to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bridge_packets, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.72, i32 noundef %13) #12
  %nullfunc_ack = getelementptr inbounds %struct.ap_data, ptr %5, i32 0, i32 6
  %14 = ptrtoint ptr %nullfunc_ack to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nullfunc_ack, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.73, i32 noundef %15) #12
  %autom_ap_wds = getelementptr inbounds %struct.ap_data, ptr %5, i32 0, i32 14
  %16 = ptrtoint ptr %autom_ap_wds to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %autom_ap_wds, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.74, i32 noundef %17) #12
  %local = getelementptr inbounds %struct.ap_data, ptr %5, i32 0, i32 1
  %18 = ptrtoint ptr %local to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %local, align 4
  %auth_algs = getelementptr inbounds %struct.local_info, ptr %19, i32 0, i32 89
  %20 = ptrtoint ptr %auth_algs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %auth_algs, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.75, i32 noundef %21) #12
  %tx_drop_nonassoc = getelementptr inbounds %struct.ap_data, ptr %5, i32 0, i32 5
  %22 = ptrtoint ptr %tx_drop_nonassoc to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tx_drop_nonassoc, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.76, i32 noundef %23) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_seq_private(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hostap_free_data(ptr noundef %ap) #0 align 64 {
entry:
  %wrqu.i = alloca %union.iwreq_data, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %ap, null
  br i1 %cmp, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %0 = ptrtoint ptr %ap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %lor.lhs.false.do.end_crit_edge, label %if.end

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #15
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %add_sta_proc_queue = getelementptr inbounds %struct.ap_data, ptr %ap, i32 0, i32 17
  %call1 = tail call zeroext i1 @flush_work(ptr noundef %add_sta_proc_queue) #12
  %wds_oper_queue = getelementptr inbounds %struct.ap_data, ptr %ap, i32 0, i32 19
  %call2 = tail call zeroext i1 @flush_work(ptr noundef %wds_oper_queue) #12
  %crypt = getelementptr inbounds %struct.ap_data, ptr %ap, i32 0, i32 26
  %2 = ptrtoint ptr %crypt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %crypt, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %if.end.if.end6_crit_edge, label %if.then4

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %deinit = getelementptr inbounds %struct.lib80211_crypto_ops, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %deinit to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %deinit, align 4
  %crypt_priv = getelementptr inbounds %struct.ap_data, ptr %ap, i32 0, i32 27
  %6 = ptrtoint ptr %crypt_priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %crypt_priv, align 4
  tail call void %5(ptr noundef %7) #12
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  %crypt_priv7 = getelementptr inbounds %struct.ap_data, ptr %ap, i32 0, i32 27
  %8 = ptrtoint ptr %crypt_priv7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %crypt_priv7, align 4
  %9 = ptrtoint ptr %crypt to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %crypt, align 4
  %sta_list = getelementptr inbounds %struct.ap_data, ptr %ap, i32 0, i32 9
  %10 = ptrtoint ptr %sta_list to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sta_list, align 4
  %cmp16.not83 = icmp eq ptr %11, %sta_list
  br i1 %cmp16.not83, label %if.end6.for.end_crit_edge, label %for.body.lr.ph

if.end6.for.end_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end6
  %12 = getelementptr inbounds i8, ptr %wrqu.i, i32 8
  %sa_data.i = getelementptr inbounds %struct.sockaddr, ptr %wrqu.i, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %if.end25.for.body_crit_edge, %for.body.lr.ph
  %sta.084 = phi ptr [ %11, %for.body.lr.ph ], [ %n.087, %if.end25.for.body_crit_edge ]
  %13 = ptrtoint ptr %sta.084 to i32
  call void @__asan_load4_noabort(i32 %13)
  %n.087 = load ptr, ptr %sta.084, align 4
  %addr.i = getelementptr inbounds %struct.sta_info, ptr %sta.084, i32 0, i32 4
  %arrayidx.i = getelementptr %struct.sta_info, ptr %sta.084, i32 0, i32 4, i32 5
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.i, align 1
  %idxprom.i = zext i8 %15 to i32
  %arrayidx1.i = getelementptr %struct.ap_data, ptr %ap, i32 0, i32 10, i32 %idxprom.i
  %16 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx1.i, align 4
  %cmp.i = icmp eq ptr %17, null
  br i1 %cmp.i, label %for.body.ap_sta_hash_del.exit_crit_edge, label %if.end.i

for.body.ap_sta_hash_del.exit_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %ap_sta_hash_del.exit

if.end.i:                                         ; preds = %for.body
  %addr2.i = getelementptr inbounds %struct.sta_info, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %addr2.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %addr2.i, align 4
  %20 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %addr.i, align 4
  %xor.i.i = xor i32 %21, %19
  %add.ptr.i.i = getelementptr %struct.sta_info, ptr %17, i32 0, i32 4, i32 4
  %22 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %add.ptr.i.i, align 2
  %add.ptr1.i.i = getelementptr %struct.sta_info, ptr %sta.084, i32 0, i32 4, i32 4
  %24 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %add.ptr1.i.i, align 2
  %xor37.i.i = xor i16 %25, %23
  %xor3.i.i = zext i16 %xor37.i.i to i32
  %or.i.i = or i32 %xor.i.i, %xor3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i, label %if.then5.i, label %if.end.i.while.cond.i_crit_edge

if.end.i.while.cond.i_crit_edge:                  ; preds = %if.end.i
  br label %while.cond.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %hnext.i = getelementptr inbounds %struct.sta_info, ptr %17, i32 0, i32 1
  %26 = ptrtoint ptr %hnext.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hnext.i, align 4
  %28 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %27, ptr %arrayidx1.i, align 4
  br label %ap_sta_hash_del.exit

while.cond.i:                                     ; preds = %land.rhs.i.while.cond.i_crit_edge, %if.end.i.while.cond.i_crit_edge
  %s.0.i = phi ptr [ %30, %land.rhs.i.while.cond.i_crit_edge ], [ %17, %if.end.i.while.cond.i_crit_edge ]
  %hnext12.i = getelementptr inbounds %struct.sta_info, ptr %s.0.i, i32 0, i32 1
  %29 = ptrtoint ptr %hnext12.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hnext12.i, align 4
  %cmp13.not.i = icmp eq ptr %30, null
  br i1 %cmp13.not.i, label %do.end.i, label %land.rhs.i

land.rhs.i:                                       ; preds = %while.cond.i
  %addr15.i = getelementptr inbounds %struct.sta_info, ptr %30, i32 0, i32 4
  %31 = ptrtoint ptr %addr15.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %addr15.i, align 4
  %xor.i46.i = xor i32 %32, %21
  %add.ptr.i47.i = getelementptr %struct.sta_info, ptr %30, i32 0, i32 4, i32 4
  %33 = ptrtoint ptr %add.ptr.i47.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %add.ptr.i47.i, align 2
  %xor37.i49.i = xor i16 %34, %25
  %xor3.i50.i = zext i16 %xor37.i49.i to i32
  %or.i51.i = or i32 %xor.i46.i, %xor3.i50.i
  %cmp.i52.i = icmp eq i32 %or.i51.i, 0
  br i1 %cmp.i52.i, label %if.then23.i, label %land.rhs.i.while.cond.i_crit_edge

land.rhs.i.while.cond.i_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i

if.then23.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  %hnext12.i.le = getelementptr inbounds %struct.sta_info, ptr %s.0.i, i32 0, i32 1
  %hnext25.i = getelementptr inbounds %struct.sta_info, ptr %30, i32 0, i32 1
  %35 = ptrtoint ptr %hnext25.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %hnext25.i, align 4
  %37 = ptrtoint ptr %hnext12.i.le to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %36, ptr %hnext12.i.le, align 4
  br label %ap_sta_hash_del.exit

do.end.i:                                         ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  %call29.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef %addr.i) #15
  br label %ap_sta_hash_del.exit

ap_sta_hash_del.exit:                             ; preds = %do.end.i, %if.then23.i, %if.then5.i, %for.body.ap_sta_hash_del.exit_crit_edge
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %sta.084) #12
  br i1 %call.i.i, label %if.end.i.i, label %ap_sta_hash_del.exit.list_del.exit_crit_edge

ap_sta_hash_del.exit.list_del.exit_crit_edge:     ; preds = %ap_sta_hash_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %ap_sta_hash_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %sta.084, i32 0, i32 1
  %38 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %prev.i.i, align 4
  %40 = ptrtoint ptr %sta.084 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %sta.084, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %39, ptr %prev1.i.i.i, align 4
  %43 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %41, ptr %39, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %ap_sta_hash_del.exit.list_del.exit_crit_edge
  %44 = ptrtoint ptr %sta.084 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr inttoptr (i32 256 to ptr), ptr %sta.084, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %sta.084, i32 0, i32 1
  %45 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %flags = getelementptr inbounds %struct.sta_info, ptr %sta.084, i32 0, i32 6
  %46 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %flags, align 4
  %and = and i32 %47, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool18.not = icmp eq i32 %and, 0
  br i1 %tobool18.not, label %list_del.exit.if.end25_crit_edge, label %land.lhs.true

list_del.exit.if.end25_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

land.lhs.true:                                    ; preds = %list_del.exit
  %ap19 = getelementptr inbounds %struct.sta_info, ptr %sta.084, i32 0, i32 32
  %48 = ptrtoint ptr %ap19 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %ap19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool20.not = icmp eq i32 %49, 0
  br i1 %tobool20.not, label %land.lhs.true21, label %land.lhs.true.if.end25_crit_edge

land.lhs.true.if.end25_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

land.lhs.true21:                                  ; preds = %land.lhs.true
  %local = getelementptr inbounds %struct.sta_info, ptr %sta.084, i32 0, i32 33
  %50 = ptrtoint ptr %local to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %local, align 4
  %tobool22.not = icmp eq ptr %51, null
  br i1 %tobool22.not, label %land.lhs.true21.if.end25_crit_edge, label %if.then23

land.lhs.true21.if.end25_crit_edge:               ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

if.then23:                                        ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.local_info, ptr %51, i32 0, i32 5
  %52 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %wrqu.i) #12
  %54 = ptrtoint ptr %12 to i32
  call void @__asan_storeN_noabort(i32 %54, i32 8)
  store i64 0, ptr %12, align 4
  %55 = call ptr @memcpy(ptr %sa_data.i, ptr %addr.i, i32 6)
  %56 = ptrtoint ptr %wrqu.i to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 1, ptr %wrqu.i, align 4
  call void @wireless_send_event(ptr noundef %53, i32 noundef 35844, ptr noundef nonnull %wrqu.i, ptr noundef null) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %wrqu.i) #12
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %land.lhs.true21.if.end25_crit_edge, %land.lhs.true.if.end25_crit_edge, %list_del.exit.if.end25_crit_edge
  call fastcc void @ap_free_sta(ptr noundef nonnull %ap, ptr noundef %sta.084)
  %cmp16.not = icmp eq ptr %n.087, %sta_list
  br i1 %cmp16.not, label %if.end25.for.end_crit_edge, label %if.end25.for.body_crit_edge

if.end25.for.body_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

if.end25.for.end_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %if.end25.for.end_crit_edge, %if.end6.for.end_crit_edge
  %proc = getelementptr inbounds %struct.ap_data, ptr %ap, i32 0, i32 11
  %57 = ptrtoint ptr %proc to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %proc, align 4
  %cmp31.not = icmp eq ptr %58, null
  br i1 %cmp31.not, label %for.end.if.end40_crit_edge, label %if.end34

for.end.if.end40_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40

if.end34:                                         ; preds = %for.end
  call void @remove_proc_entry(ptr noundef nonnull @.str.22, ptr noundef nonnull %58) #12
  %59 = ptrtoint ptr %proc to i32
  call void @__asan_load4_noabort(i32 %59)
  %.pr = load ptr, ptr %proc, align 4
  %cmp36.not = icmp eq ptr %.pr, null
  br i1 %cmp36.not, label %if.end34.if.end40_crit_edge, label %if.then37

if.end34.if.end40_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40

if.then37:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #14
  call void @remove_proc_entry(ptr noundef nonnull @.str.24, ptr noundef nonnull %.pr) #12
  %60 = ptrtoint ptr %proc to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %proc, align 4
  call void @remove_proc_entry(ptr noundef nonnull @.str.23, ptr noundef %61) #12
  br label %if.end40

if.end40:                                         ; preds = %if.then37, %if.end34.if.end40_crit_edge, %for.end.if.end40_crit_edge
  %entries.i = getelementptr inbounds %struct.ap_data, ptr %ap, i32 0, i32 15, i32 1
  %62 = ptrtoint ptr %entries.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %entries.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp.i76 = icmp eq i32 %63, 0
  br i1 %cmp.i76, label %if.end40.ap_control_flush_macs.exit_crit_edge, label %if.end.i77

if.end40.ap_control_flush_macs.exit_crit_edge:    ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  br label %ap_control_flush_macs.exit

if.end.i77:                                       ; preds = %if.end40
  %lock.i = getelementptr inbounds %struct.ap_data, ptr %ap, i32 0, i32 15, i32 3
  call void @_raw_spin_lock_bh(ptr noundef %lock.i) #12
  %mac_list.i = getelementptr inbounds %struct.ap_data, ptr %ap, i32 0, i32 15, i32 2
  %64 = ptrtoint ptr %mac_list.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %mac_list.i, align 4
  %cmp4.not19.i = icmp eq ptr %65, %mac_list.i
  br i1 %cmp4.not19.i, label %if.end.i77.for.end.i_crit_edge, label %if.end.i77.for.body.i_crit_edge

if.end.i77.for.body.i_crit_edge:                  ; preds = %if.end.i77
  br label %for.body.i

if.end.i77.for.end.i_crit_edge:                   ; preds = %if.end.i77
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %if.end.i77.for.body.i_crit_edge
  %ptr.020.i = phi ptr [ %n.0.i, %list_del.exit.i.for.body.i_crit_edge ], [ %65, %if.end.i77.for.body.i_crit_edge ]
  %66 = ptrtoint ptr %ptr.020.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %n.0.i = load ptr, ptr %ptr.020.i, align 4
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %ptr.020.i) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %ptr.020.i, i32 0, i32 1
  %67 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %prev.i.i.i, align 4
  %69 = ptrtoint ptr %ptr.020.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %ptr.020.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %70, i32 0, i32 1
  %71 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %68, ptr %prev1.i.i.i.i, align 4
  %72 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %72)
  store volatile ptr %70, ptr %68, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %73 = ptrtoint ptr %ptr.020.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr inttoptr (i32 256 to ptr), ptr %ptr.020.i, align 4
  %prev.i.i78 = getelementptr inbounds %struct.list_head, ptr %ptr.020.i, i32 0, i32 1
  %74 = ptrtoint ptr %prev.i.i78 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i78, align 4
  call void @kfree(ptr noundef %ptr.020.i) #12
  %cmp4.not.i = icmp eq ptr %n.0.i, %mac_list.i
  br i1 %cmp4.not.i, label %list_del.exit.i.for.end.i_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

list_del.exit.i.for.end.i_crit_edge:              ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.end.i:                                        ; preds = %list_del.exit.i.for.end.i_crit_edge, %if.end.i77.for.end.i_crit_edge
  %75 = ptrtoint ptr %entries.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %entries.i, align 4
  call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #12
  br label %ap_control_flush_macs.exit

ap_control_flush_macs.exit:                       ; preds = %for.end.i, %if.end40.ap_control_flush_macs.exit_crit_edge
  %76 = ptrtoint ptr %ap to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %ap, align 4
  br label %cleanup

cleanup:                                          ; preds = %ap_control_flush_macs.exit, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_proc_entry(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hostap_rx(ptr nocapture noundef %dev, ptr noundef %skb, ptr nocapture readnone %rx_stats) local_unnamed_addr #0 align 64 {
entry:
  %key.i.i = alloca [13 x i8], align 1
  %wrqu.i.i145.i = alloca %union.iwreq_data, align 4
  %body.i.i = alloca [136 x i8], align 2
  %wrqu.i.i49.i = alloca %union.iwreq_data, align 4
  %wrqu.i.i.i = alloca %union.iwreq_data, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %local1 = getelementptr i8, ptr %dev, i32 2316
  %0 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local1, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %3)
  %cmp = icmp ult i32 %3, 16
  br i1 %cmp, label %entry.drop_crit_edge, label %if.end

entry.drop_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %drop

if.end:                                           ; preds = %entry
  %stats = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36
  %4 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %stats, align 8
  %inc = add i32 %5, 1
  store i32 %inc, ptr %stats, align 8
  %ap = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 22
  %6 = ptrtoint ptr %ap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ap, align 4
  %ap_policy = getelementptr inbounds %struct.ap_data, ptr %7, i32 0, i32 12
  %8 = ptrtoint ptr %ap_policy to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ap_policy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp2 = icmp eq i32 %9, 0
  br i1 %cmp2, label %land.lhs.true, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

land.lhs.true:                                    ; preds = %if.end
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %11, align 2
  %14 = and i16 %13, -1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %14)
  %cmp.i = icmp eq i16 %14, -32768
  br i1 %cmp.i, label %land.lhs.true.drop_crit_edge, label %land.lhs.true.if.end5_crit_edge

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

land.lhs.true.drop_crit_edge:                     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %drop

if.end5:                                          ; preds = %land.lhs.true.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %15 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 22, ptr %protocol, align 8
  %dev1.i = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 5
  %16 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev1.i, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %18 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %19, align 2
  %22 = tail call i16 @llvm.bswap.i16(i16 %21) #12
  %conv.i = zext i16 %22 to i32
  %and.i = and i16 %22, 12
  %and4.i = and i16 %22, 240
  %hostapd.i = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 68
  %23 = ptrtoint ptr %hostapd.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %hostapd.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i = icmp eq i32 %24, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %and.i)
  %cmp.i14 = icmp eq i16 %and.i, 8
  %or.cond.i = select i1 %tobool.not.i, i1 %cmp.i14, i1 false
  br i1 %or.cond.i, label %do.end.i, label %if.end52.i

do.end.i:                                         ; preds = %if.end5
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.116) #15
  %25 = and i32 %conv.i, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %25)
  %26 = icmp eq i32 %25, 256
  br i1 %26, label %if.end31.i, label %if.then17.i

if.then17.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %and4.i)
  %cmp19.i = icmp eq i16 %and4.i, 64
  br i1 %cmp19.i, label %if.then21.i, label %do.end25.i

if.then21.i:                                      ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @ap_handle_dropped_data(ptr noundef %1, ptr noundef %19) #12
  br label %handle_ap_item.exit

do.end25.i:                                       ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #14
  %call28.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.119, i32 noundef %conv.i) #15
  br label %handle_ap_item.exit

if.end31.i:                                       ; preds = %do.end.i
  %addr1.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %19, i32 0, i32 2
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %17, i32 0, i32 86
  %27 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev_addr.i, align 64
  %29 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %addr1.i, align 4
  %31 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %28, align 4
  %xor.i.i = xor i32 %32, %30
  %add.ptr.i.i = getelementptr %struct.ieee80211_hdr, ptr %19, i32 0, i32 2, i32 4
  %33 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %add.ptr.i.i, align 2
  %add.ptr1.i.i = getelementptr i8, ptr %28, i32 4
  %35 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %add.ptr1.i.i, align 2
  %xor37.i.i = xor i16 %36, %34
  %xor3.i.i = zext i16 %xor37.i.i to i32
  %or.i.i = or i32 %xor.i.i, %xor3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i, label %if.end44.i, label %do.end37.i

do.end37.i:                                       ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #14
  %call41.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.122, ptr noundef %addr1.i) #15
  br label %handle_ap_item.exit

if.end44.i:                                       ; preds = %if.end31.i
  %37 = ptrtoint ptr %ap to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ap, align 4
  %nullfunc_ack.i = getelementptr inbounds %struct.ap_data, ptr %38, i32 0, i32 6
  %39 = ptrtoint ptr %nullfunc_ack.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %nullfunc_ack.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool45.not.i = icmp ne i32 %40, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %and4.i)
  %cmp48.i = icmp eq i16 %and4.i, 64
  %or.cond2.i = select i1 %tobool45.not.i, i1 %cmp48.i, i1 false
  br i1 %or.cond2.i, label %if.then50.i, label %if.else.i

if.then50.i:                                      ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #14
  %41 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev1.i, align 4
  %call.i28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.150) #15
  %addr2.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %19, i32 0, i32 3
  tail call fastcc void @prism2_send_mgmt(ptr noundef %42, i16 noundef zeroext 212, ptr noundef null, i32 noundef 0, ptr noundef %addr2.i, i16 noundef zeroext 0) #12
  br label %handle_ap_item.exit

if.else.i:                                        ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @ap_handle_dropped_data(ptr noundef %1, ptr noundef %19) #12
  br label %handle_ap_item.exit

if.end52.i:                                       ; preds = %if.end5
  %conv53.i = zext i16 %and.i to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and.i)
  %cmp54.i = icmp eq i16 %and.i, 0
  %43 = trunc i16 %22 to i8
  %trunc.i = and i8 %43, -4
  %44 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.265)
  switch i8 %trunc.i, label %if.end70.i [
    i8 -128, label %if.then60.i
    i8 -92, label %if.then69.i
  ]

if.then60.i:                                      ; preds = %if.end52.i
  %45 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %len, align 4
  %sub.i.i = add i32 %46, -24
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %sub.i.i)
  %cmp.i5.i = icmp slt i32 %sub.i.i, 12
  br i1 %cmp.i5.i, label %do.end.i.i, label %if.end.i.i

do.end.i.i:                                       ; preds = %if.then60.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.152, i32 noundef %sub.i.i) #15
  br label %handle_ap_item.exit

if.end.i.i:                                       ; preds = %if.then60.i
  %add.ptr3.i.i = getelementptr i8, ptr %19, i32 32
  %47 = ptrtoint ptr %add.ptr3.i.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %add.ptr3.i.i, align 2
  %49 = tail call i16 @llvm.bswap.i16(i16 %48) #12
  %incdec.ptr.i.i = getelementptr i8, ptr %19, i32 34
  %50 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %incdec.ptr.i.i, align 2
  %52 = tail call i16 @llvm.bswap.i16(i16 %51) #12
  %incdec.ptr6.i.i = getelementptr i8, ptr %19, i32 36
  %sub7.i.i = add i32 %46, -36
  %53 = ptrtoint ptr %ap to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ap, align 4
  %ap_policy.i.i = getelementptr inbounds %struct.ap_data, ptr %54, i32 0, i32 12
  %55 = ptrtoint ptr %ap_policy.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %ap_policy.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %56)
  %cmp8.not.i.i = icmp eq i32 %56, 3
  %57 = and i16 %52, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %57)
  %tobool.not.i.i = icmp eq i16 %57, 0
  %or.cond.i.i = select i1 %cmp8.not.i.i, i1 true, i1 %tobool.not.i.i
  br i1 %or.cond.i.i, label %if.end10.i.i, label %if.end.i.i.handle_ap_item.exit_crit_edge

if.end.i.i.handle_ap_item.exit_crit_edge:         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %handle_ap_item.exit

if.end10.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub7.i.i)
  %cmp11.i.i = icmp ugt i32 %sub7.i.i, 1
  br i1 %cmp11.i.i, label %if.then13.i.i, label %if.end10.i.i.if.end114.i.i_crit_edge

if.end10.i.i.if.end114.i.i_crit_edge:             ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end114.i.i

if.then13.i.i:                                    ; preds = %if.end10.i.i
  %58 = ptrtoint ptr %incdec.ptr6.i.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %incdec.ptr6.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %cmp15.i.i = icmp eq i8 %59, 0
  br i1 %cmp15.i.i, label %if.then17.i.i, label %if.then13.i.i.if.end54.i.i_crit_edge

if.then13.i.i.if.end54.i.i_crit_edge:             ; preds = %if.then13.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end54.i.i

if.then17.i.i:                                    ; preds = %if.then13.i.i
  %incdec.ptr18.i.i = getelementptr i8, ptr %19, i32 37
  %60 = ptrtoint ptr %incdec.ptr18.i.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %incdec.ptr18.i.i, align 1
  %conv19.i.i = zext i8 %61 to i32
  %incdec.ptr20.i.i = getelementptr i8, ptr %19, i32 38
  %dec21.i.i = add i32 %46, -38
  call void @__sanitizer_cov_trace_cmp4(i32 %dec21.i.i, i32 %conv19.i.i)
  %cmp22.i.i = icmp ult i32 %dec21.i.i, %conv19.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %61)
  %cmp24.i.i = icmp ugt i8 %61, 32
  %or.cond1.i.i = or i1 %cmp24.i.i, %cmp22.i.i
  br i1 %or.cond1.i.i, label %do.end30.i.i, label %if.end35.i.i

do.end30.i.i:                                     ; preds = %if.then17.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call32.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.155) #15
  br label %handle_ap_item.exit

if.end35.i.i:                                     ; preds = %if.then17.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %56)
  %cmp38.i.i = icmp eq i32 %56, 1
  br i1 %cmp38.i.i, label %land.lhs.true40.i.i, label %if.end35.i.i.if.end51.i.i_crit_edge

if.end35.i.i.if.end51.i.i_crit_edge:              ; preds = %if.end35.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end51.i.i

land.lhs.true40.i.i:                              ; preds = %if.end35.i.i
  %essid.i.i = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 23
  %call41.i.i = tail call i32 @strlen(ptr noundef %essid.i.i) #17
  call void @__sanitizer_cov_trace_cmp4(i32 %call41.i.i, i32 %conv19.i.i)
  %cmp42.not.i.i = icmp eq i32 %call41.i.i, %conv19.i.i
  br i1 %cmp42.not.i.i, label %lor.lhs.false44.i.i, label %land.lhs.true40.i.i.handle_ap_item.exit_crit_edge

land.lhs.true40.i.i.handle_ap_item.exit_crit_edge: ; preds = %land.lhs.true40.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %handle_ap_item.exit

lor.lhs.false44.i.i:                              ; preds = %land.lhs.true40.i.i
  %bcmp.i.i = tail call i32 @bcmp(ptr %essid.i.i, ptr %incdec.ptr20.i.i, i32 %conv19.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %cmp48.not.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %cmp48.not.i.i, label %lor.lhs.false44.i.i.if.end51.i.i_crit_edge, label %lor.lhs.false44.i.i.handle_ap_item.exit_crit_edge

lor.lhs.false44.i.i.handle_ap_item.exit_crit_edge: ; preds = %lor.lhs.false44.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %handle_ap_item.exit

lor.lhs.false44.i.i.if.end51.i.i_crit_edge:       ; preds = %lor.lhs.false44.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end51.i.i

if.end51.i.i:                                     ; preds = %lor.lhs.false44.i.i.if.end51.i.i_crit_edge, %if.end35.i.i.if.end51.i.i_crit_edge
  %add.ptr52.i.i = getelementptr i8, ptr %incdec.ptr20.i.i, i32 %conv19.i.i
  %sub53.i.i = sub nsw i32 %dec21.i.i, %conv19.i.i
  %62 = ptrtoint ptr %add.ptr52.i.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %.pr.i.i = load i8, ptr %add.ptr52.i.i, align 1
  br label %if.end54.i.i

if.end54.i.i:                                     ; preds = %if.end51.i.i, %if.then13.i.i.if.end54.i.i_crit_edge
  %63 = phi i8 [ %.pr.i.i, %if.end51.i.i ], [ %59, %if.then13.i.i.if.end54.i.i_crit_edge ]
  %ssid.0.i.i = phi ptr [ %incdec.ptr20.i.i, %if.end51.i.i ], [ null, %if.then13.i.i.if.end54.i.i_crit_edge ]
  %ssid_len.0.i.i = phi i32 [ %conv19.i.i, %if.end51.i.i ], [ 0, %if.then13.i.i.if.end54.i.i_crit_edge ]
  %u.0.i.i = phi ptr [ %add.ptr52.i.i, %if.end51.i.i ], [ %incdec.ptr6.i.i, %if.then13.i.i.if.end54.i.i_crit_edge ]
  %left.0.i.i = phi i32 [ %sub53.i.i, %if.end51.i.i ], [ %sub7.i.i, %if.then13.i.i.if.end54.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %63)
  %cmp56.i.i = icmp eq i8 %63, 1
  br i1 %cmp56.i.i, label %if.then58.i.i, label %if.end54.i.i.if.end84.i.i_crit_edge

if.end54.i.i.if.end84.i.i_crit_edge:              ; preds = %if.end54.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end84.i.i

if.then58.i.i:                                    ; preds = %if.end54.i.i
  %incdec.ptr59.i.i = getelementptr i8, ptr %u.0.i.i, i32 1
  %64 = ptrtoint ptr %incdec.ptr59.i.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %incdec.ptr59.i.i, align 1
  %conv61.i.i = zext i8 %65 to i32
  %dec63.i.i = add nsw i32 %left.0.i.i, -2
  call void @__sanitizer_cov_trace_cmp4(i32 %dec63.i.i, i32 %conv61.i.i)
  %cmp64.i.i = icmp ult i32 %dec63.i.i, %conv61.i.i
  %66 = add i8 %65, -9
  call void @__sanitizer_cov_trace_const_cmp1(i8 -8, i8 %66)
  %67 = icmp ult i8 %66, -8
  %68 = or i1 %67, %cmp64.i.i
  br i1 %68, label %do.end76.i.i, label %if.end81.i.i

do.end76.i.i:                                     ; preds = %if.then58.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call78.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.158) #15
  br label %handle_ap_item.exit

if.end81.i.i:                                     ; preds = %if.then58.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %incdec.ptr62.i.i = getelementptr i8, ptr %u.0.i.i, i32 2
  %add.ptr82.i.i = getelementptr i8, ptr %incdec.ptr62.i.i, i32 %conv61.i.i
  %sub83.i.i = sub nsw i32 %dec63.i.i, %conv61.i.i
  br label %if.end84.i.i

if.end84.i.i:                                     ; preds = %if.end81.i.i, %if.end54.i.i.if.end84.i.i_crit_edge
  %supp_rates.0.i.i = phi ptr [ %incdec.ptr62.i.i, %if.end81.i.i ], [ null, %if.end54.i.i.if.end84.i.i_crit_edge ]
  %supp_rates_len.0.i.i = phi i32 [ %conv61.i.i, %if.end81.i.i ], [ 0, %if.end54.i.i.if.end84.i.i_crit_edge ]
  %u.1.i.i = phi ptr [ %add.ptr82.i.i, %if.end81.i.i ], [ %u.0.i.i, %if.end54.i.i.if.end84.i.i_crit_edge ]
  %left.1.i.i = phi i32 [ %sub83.i.i, %if.end81.i.i ], [ %left.0.i.i, %if.end54.i.i.if.end84.i.i_crit_edge ]
  %69 = ptrtoint ptr %u.1.i.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %u.1.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %70)
  %cmp86.i.i = icmp eq i8 %70, 3
  br i1 %cmp86.i.i, label %if.then88.i.i, label %if.end84.i.i.if.end114.i.i_crit_edge

if.end84.i.i.if.end114.i.i_crit_edge:             ; preds = %if.end84.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end114.i.i

if.then88.i.i:                                    ; preds = %if.end84.i.i
  %incdec.ptr89.i.i = getelementptr i8, ptr %u.1.i.i, i32 1
  %71 = ptrtoint ptr %incdec.ptr89.i.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %incdec.ptr89.i.i, align 1
  %conv91.i.i = zext i8 %72 to i32
  %dec93.i.i = add nsw i32 %left.1.i.i, -2
  call void @__sanitizer_cov_trace_cmp4(i32 %dec93.i.i, i32 %conv91.i.i)
  %cmp94.i.i = icmp uge i32 %dec93.i.i, %conv91.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %72)
  %cmp97.not.i.i = icmp eq i8 %72, 1
  %or.cond4.i.i = and i1 %cmp97.not.i.i, %cmp94.i.i
  br i1 %or.cond4.i.i, label %if.end108.i.i, label %do.end103.i.i

do.end103.i.i:                                    ; preds = %if.then88.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call105.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.161) #15
  br label %handle_ap_item.exit

if.end108.i.i:                                    ; preds = %if.then88.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %incdec.ptr92.i.i = getelementptr i8, ptr %u.1.i.i, i32 2
  %73 = ptrtoint ptr %incdec.ptr92.i.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %incdec.ptr92.i.i, align 1
  %conv109.i.i = zext i8 %74 to i32
  br label %if.end114.i.i

if.end114.i.i:                                    ; preds = %if.end108.i.i, %if.end84.i.i.if.end114.i.i_crit_edge, %if.end10.i.i.if.end114.i.i_crit_edge
  %ssid.2.i.i = phi ptr [ null, %if.end10.i.i.if.end114.i.i_crit_edge ], [ %ssid.0.i.i, %if.end108.i.i ], [ %ssid.0.i.i, %if.end84.i.i.if.end114.i.i_crit_edge ]
  %supp_rates.2.i.i = phi ptr [ null, %if.end10.i.i.if.end114.i.i_crit_edge ], [ %supp_rates.0.i.i, %if.end108.i.i ], [ %supp_rates.0.i.i, %if.end84.i.i.if.end114.i.i_crit_edge ]
  %ssid_len.2.i.i = phi i32 [ 0, %if.end10.i.i.if.end114.i.i_crit_edge ], [ %ssid_len.0.i.i, %if.end108.i.i ], [ %ssid_len.0.i.i, %if.end84.i.i.if.end114.i.i_crit_edge ]
  %supp_rates_len.2.i.i = phi i32 [ 0, %if.end10.i.i.if.end114.i.i_crit_edge ], [ %supp_rates_len.0.i.i, %if.end108.i.i ], [ %supp_rates_len.0.i.i, %if.end84.i.i.if.end114.i.i_crit_edge ]
  %channel.2.i.i = phi i32 [ -1, %if.end10.i.i.if.end114.i.i_crit_edge ], [ %conv109.i.i, %if.end108.i.i ], [ -1, %if.end84.i.i.if.end114.i.i_crit_edge ]
  %sta_table_lock.i.i = getelementptr inbounds %struct.ap_data, ptr %54, i32 0, i32 7
  tail call void @_raw_spin_lock_bh(ptr noundef %sta_table_lock.i.i) #12
  %75 = ptrtoint ptr %ap to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %ap, align 4
  %addr2.i.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %19, i32 0, i32 3
  %arrayidx.i.i.i = getelementptr %struct.ieee80211_hdr, ptr %19, i32 0, i32 3, i32 5
  %77 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx.i.i.i, align 1
  %idxprom.i.i.i = zext i8 %78 to i32
  %arrayidx1.i.i.i = getelementptr %struct.ap_data, ptr %76, i32 0, i32 10, i32 %idxprom.i.i.i
  %79 = ptrtoint ptr %arrayidx1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %s.06.i.i.i = load ptr, ptr %arrayidx1.i.i.i, align 4
  %cmp.not7.i.i.i = icmp eq ptr %s.06.i.i.i, null
  br i1 %cmp.not7.i.i.i, label %if.end114.i.i.if.then127.i.i_crit_edge, label %land.rhs.lr.ph.i.i.i

if.end114.i.i.if.then127.i.i_crit_edge:           ; preds = %if.end114.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then127.i.i

land.rhs.lr.ph.i.i.i:                             ; preds = %if.end114.i.i
  %80 = ptrtoint ptr %addr2.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %addr2.i.i, align 4
  %add.ptr1.i.i.i.i = getelementptr %struct.ieee80211_hdr, ptr %19, i32 0, i32 3, i32 4
  %82 = ptrtoint ptr %add.ptr1.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %add.ptr1.i.i.i.i, align 2
  br label %land.rhs.i.i.i

land.rhs.i.i.i:                                   ; preds = %while.body.i.i.i.land.rhs.i.i.i_crit_edge, %land.rhs.lr.ph.i.i.i
  %s.08.i.i.i = phi ptr [ %s.06.i.i.i, %land.rhs.lr.ph.i.i.i ], [ %s.0.i.i.i, %while.body.i.i.i.land.rhs.i.i.i_crit_edge ]
  %addr.i.i.i = getelementptr inbounds %struct.sta_info, ptr %s.08.i.i.i, i32 0, i32 4
  %84 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %addr.i.i.i, align 4
  %xor.i.i.i.i = xor i32 %85, %81
  %add.ptr.i.i.i.i = getelementptr %struct.sta_info, ptr %s.08.i.i.i, i32 0, i32 4, i32 4
  %86 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %add.ptr.i.i.i.i, align 2
  %xor37.i.i.i.i = xor i16 %87, %83
  %xor3.i.i.i.i = zext i16 %xor37.i.i.i.i to i32
  %or.i.i.i.i = or i32 %xor.i.i.i.i, %xor3.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %or.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %if.end122.i.i, label %while.body.i.i.i

while.body.i.i.i:                                 ; preds = %land.rhs.i.i.i
  %hnext.i.i.i = getelementptr inbounds %struct.sta_info, ptr %s.08.i.i.i, i32 0, i32 1
  %88 = ptrtoint ptr %hnext.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %s.0.i.i.i = load ptr, ptr %hnext.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %s.0.i.i.i, null
  br i1 %cmp.not.i.i.i, label %while.body.i.i.i.if.then127.i.i_crit_edge, label %while.body.i.i.i.land.rhs.i.i.i_crit_edge

while.body.i.i.i.land.rhs.i.i.i_crit_edge:        ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i.i.i

while.body.i.i.i.if.then127.i.i_crit_edge:        ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then127.i.i

if.end122.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %users.i.i = getelementptr inbounds %struct.sta_info, ptr %s.08.i.i.i, i32 0, i32 2
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %users.i.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %users.i.i, i32 1, i32 3, i32 1) #12
  %89 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i.i, ptr %users.i.i, i32 1, ptr elementtype(i32) %users.i.i) #12, !srcloc !531
  %90 = ptrtoint ptr %ap to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %ap, align 4
  %sta_table_lock124.i.i = getelementptr inbounds %struct.ap_data, ptr %91, i32 0, i32 7
  tail call void @_raw_spin_unlock_bh(ptr noundef %sta_table_lock124.i.i) #12
  br label %if.end146.i.i

if.then127.i.i:                                   ; preds = %while.body.i.i.i.if.then127.i.i_crit_edge, %if.end114.i.i.if.then127.i.i_crit_edge
  %sta_table_lock12419.i.i = getelementptr inbounds %struct.ap_data, ptr %76, i32 0, i32 7
  tail call void @_raw_spin_unlock_bh(ptr noundef %sta_table_lock12419.i.i) #12
  %92 = ptrtoint ptr %ap to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %ap, align 4
  %call131.i.i = tail call fastcc ptr @ap_add_sta(ptr noundef %93, ptr noundef %addr2.i.i) #12
  %cmp132.i.i = icmp eq ptr %call131.i.i, null
  br i1 %cmp132.i.i, label %do.end137.i.i, label %if.end140.i.i

do.end137.i.i:                                    ; preds = %if.then127.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call139.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.164) #15
  br label %handle_ap_item.exit

if.end140.i.i:                                    ; preds = %if.then127.i.i
  %94 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %dev1.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %wrqu.i.i.i) #12
  %96 = getelementptr inbounds i8, ptr %wrqu.i.i.i, i32 8
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_storeN_noabort(i32 %97, i32 8)
  store i64 0, ptr %96, align 4
  %sa_data.i.i.i = getelementptr inbounds %struct.sockaddr, ptr %wrqu.i.i.i, i32 0, i32 1
  %addr.i6.i.i = getelementptr inbounds %struct.sta_info, ptr %call131.i.i, i32 0, i32 4
  %98 = call ptr @memcpy(ptr %sa_data.i.i.i, ptr %addr.i6.i.i, i32 6)
  %99 = ptrtoint ptr %wrqu.i.i.i to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 1, ptr %wrqu.i.i.i, align 4
  call void @wireless_send_event(ptr noundef %95, i32 noundef 35843, ptr noundef nonnull %wrqu.i.i.i, ptr noundef null) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %wrqu.i.i.i) #12
  %flags.i.i = getelementptr inbounds %struct.sta_info, ptr %call131.i.i, i32 0, i32 6
  %100 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 3, ptr %flags.i.i, align 4
  %101 = ptrtoint ptr %ap to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %ap, align 4
  %autom_ap_wds.i.i = getelementptr inbounds %struct.ap_data, ptr %102, i32 0, i32 14
  %103 = ptrtoint ptr %autom_ap_wds.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %autom_ap_wds.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %tobool142.not.i.i = icmp eq i32 %104, 0
  br i1 %tobool142.not.i.i, label %if.end140.i.i.if.end146.i.i_crit_edge, label %if.then143.i.i

if.end140.i.i.if.end146.i.i_crit_edge:            ; preds = %if.end140.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end146.i.i

if.then143.i.i:                                   ; preds = %if.end140.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %105 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %105, i32 noundef 2592, i32 noundef 16) #16
  %tobool.not.i.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.then143.i.i.if.end146.i.i_crit_edge, label %if.end.i.i.i

if.then143.i.i.if.end146.i.i_crit_edge:           ; preds = %if.then143.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end146.i.i

if.end.i.i.i:                                     ; preds = %if.then143.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %addr2.i.i.i = getelementptr inbounds %struct.wds_oper_data, ptr %call7.i.i.i.i, i32 0, i32 1
  %106 = call ptr @memcpy(ptr %addr2.i.i.i, ptr %addr.i6.i.i, i32 6)
  %107 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 0, ptr %call7.i.i.i.i, align 8
  %lock.i.i.i = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 11
  call void @_raw_spin_lock_bh(ptr noundef %lock.i.i.i) #12
  %108 = ptrtoint ptr %ap to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %ap, align 4
  %wds_oper_entries.i.i.i = getelementptr inbounds %struct.ap_data, ptr %109, i32 0, i32 20
  %110 = ptrtoint ptr %wds_oper_entries.i.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %wds_oper_entries.i.i.i, align 4
  %next.i.i.i = getelementptr inbounds %struct.wds_oper_data, ptr %call7.i.i.i.i, i32 0, i32 2
  %112 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %111, ptr %next.i.i.i, align 4
  store ptr %call7.i.i.i.i, ptr %wds_oper_entries.i.i.i, align 4
  call void @_raw_spin_unlock_bh(ptr noundef %lock.i.i.i) #12
  %113 = ptrtoint ptr %ap to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %ap, align 4
  %wds_oper_queue.i.i.i = getelementptr inbounds %struct.ap_data, ptr %114, i32 0, i32 19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %115 = load ptr, ptr @system_wq, align 4
  %call.i.i.i.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %115, ptr noundef %wds_oper_queue.i.i.i) #12
  br label %if.end146.i.i

if.end146.i.i:                                    ; preds = %if.end.i.i.i, %if.then143.i.i.if.end146.i.i_crit_edge, %if.end140.i.i.if.end146.i.i_crit_edge, %if.end122.i.i
  %cmp119.not1620.i.i = phi i1 [ true, %if.end140.i.i.if.end146.i.i_crit_edge ], [ false, %if.end122.i.i ], [ true, %if.then143.i.i.if.end146.i.i_crit_edge ], [ true, %if.end.i.i.i ]
  %sta.0.i.i = phi ptr [ %call131.i.i, %if.end140.i.i.if.end146.i.i_crit_edge ], [ %s.08.i.i.i, %if.end122.i.i ], [ %call131.i.i, %if.then143.i.i.if.end146.i.i_crit_edge ], [ %call131.i.i, %if.end.i.i.i ]
  %ap147.i.i = getelementptr inbounds %struct.sta_info, ptr %sta.0.i.i, i32 0, i32 32
  %116 = ptrtoint ptr %ap147.i.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 1, ptr %ap147.i.i, align 4
  %tobool148.not.i.i = icmp eq ptr %ssid.2.i.i, null
  %u157.i.i = getelementptr inbounds %struct.sta_info, ptr %sta.0.i.i, i32 0, i32 34
  br i1 %tobool148.not.i.i, label %if.else.i.i, label %if.then149.i.i

if.then149.i.i:                                   ; preds = %if.end146.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %117 = ptrtoint ptr %u157.i.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %ssid_len.2.i.i, ptr %u157.i.i, align 4
  %ssid153.i.i = getelementptr inbounds %struct.sta_info, ptr %sta.0.i.i, i32 0, i32 34, i32 0, i32 1
  %118 = call ptr @memcpy(ptr %ssid153.i.i, ptr %ssid.2.i.i, i32 %ssid_len.2.i.i)
  %arrayidx.i.i = getelementptr %struct.sta_info, ptr %sta.0.i.i, i32 0, i32 34, i32 0, i32 1, i32 %ssid_len.2.i.i
  %119 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 0, ptr %arrayidx.i.i, align 1
  br label %if.end162.i.i

if.else.i.i:                                      ; preds = %if.end146.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %120 = ptrtoint ptr %u157.i.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 0, ptr %u157.i.i, align 4
  %ssid160.i.i = getelementptr inbounds %struct.sta_info, ptr %sta.0.i.i, i32 0, i32 34, i32 0, i32 1
  %121 = ptrtoint ptr %ssid160.i.i to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 0, ptr %ssid160.i.i, align 4
  br label %if.end162.i.i

if.end162.i.i:                                    ; preds = %if.else.i.i, %if.then149.i.i
  %channel164.i.i = getelementptr inbounds %struct.sta_info, ptr %sta.0.i.i, i32 0, i32 34, i32 0, i32 2
  %122 = ptrtoint ptr %channel164.i.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %channel.2.i.i, ptr %channel164.i.i, align 4
  %rx_packets.i.i = getelementptr inbounds %struct.sta_info, ptr %sta.0.i.i, i32 0, i32 14
  %123 = ptrtoint ptr %rx_packets.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %rx_packets.i.i, align 4
  %inc.i.i = add i32 %124, 1
  store i32 %inc.i.i, ptr %rx_packets.i.i, align 4
  %rx_bytes.i.i = getelementptr inbounds %struct.sta_info, ptr %sta.0.i.i, i32 0, i32 16
  %125 = ptrtoint ptr %rx_bytes.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %rx_bytes.i.i, align 4
  %add.i.i = add i32 %126, %sub.i.i
  store i32 %add.i.i, ptr %rx_bytes.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %127 = load volatile i32, ptr @jiffies, align 128
  %last_rx.i.i = getelementptr inbounds %struct.sta_info, ptr %sta.0.i.i, i32 0, i32 12
  %128 = ptrtoint ptr %last_rx.i.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %127, ptr %last_rx.i.i, align 4
  %last_beacon.i.i = getelementptr inbounds %struct.sta_info, ptr %sta.0.i.i, i32 0, i32 34, i32 0, i32 3
  %129 = ptrtoint ptr %last_beacon.i.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %127, ptr %last_beacon.i.i, align 4
  %capability166.i.i = getelementptr inbounds %struct.sta_info, ptr %sta.0.i.i, i32 0, i32 7
  %130 = ptrtoint ptr %capability166.i.i to i32
  call void @__asan_store2_noabort(i32 %130)
  store i16 %52, ptr %capability166.i.i, align 4
  %listen_interval.i.i = getelementptr inbounds %struct.sta_info, ptr %sta.0.i.i, i32 0, i32 8
  %131 = ptrtoint ptr %listen_interval.i.i to i32
  call void @__asan_store2_noabort(i32 %131)
  store i16 %49, ptr %listen_interval.i.i, align 2
  %users167.i.i = getelementptr inbounds %struct.sta_info, ptr %sta.0.i.i, i32 0, i32 2
  %call.i.i5.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %users167.i.i, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr %users167.i.i, i32 1, i32 3, i32 1) #12
  %132 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users167.i.i, ptr %users167.i.i, i32 1, ptr elementtype(i32) %users167.i.i) #12, !srcloc !532
  br i1 %cmp119.not1620.i.i, label %if.then169.i.i, label %if.end162.i.i.handle_ap_item.exit_crit_edge

if.end162.i.i.handle_ap_item.exit_crit_edge:      ; preds = %if.end162.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %handle_ap_item.exit

if.then169.i.i:                                   ; preds = %if.end162.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %supported_rates.i.i = getelementptr inbounds %struct.sta_info, ptr %sta.0.i.i, i32 0, i32 9
  %133 = call ptr @memset(ptr %supported_rates.i.i, i32 0, i32 32)
  %134 = call ptr @memcpy(ptr %supported_rates.i.i, ptr %supp_rates.2.i.i, i32 %supp_rates_len.2.i.i)
  call fastcc void @prism2_check_tx_rates(ptr noundef nonnull %sta.0.i.i) #12
  br label %handle_ap_item.exit

if.then69.i:                                      ; preds = %if.end52.i
  %addr1.i.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %19, i32 0, i32 2
  %dev_addr.i.i = getelementptr inbounds %struct.net_device, ptr %17, i32 0, i32 86
  %135 = ptrtoint ptr %dev_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %dev_addr.i.i, align 64
  %137 = ptrtoint ptr %addr1.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %addr1.i.i, align 4
  %139 = ptrtoint ptr %136 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %136, align 4
  %xor.i.i.i = xor i32 %140, %138
  %add.ptr.i.i.i = getelementptr %struct.ieee80211_hdr, ptr %19, i32 0, i32 2, i32 4
  %141 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %141)
  %142 = load i16, ptr %add.ptr.i.i.i, align 2
  %add.ptr1.i.i.i = getelementptr i8, ptr %136, i32 4
  %143 = ptrtoint ptr %add.ptr1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %143)
  %144 = load i16, ptr %add.ptr1.i.i.i, align 2
  %xor37.i.i.i = xor i16 %144, %142
  %xor3.i.i.i = zext i16 %xor37.i.i.i to i32
  %or.i.i.i = or i32 %xor.i.i.i, %xor3.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i)
  %cmp.i.i.i = icmp eq i32 %or.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end.i6.i, label %do.end5.i.i

do.end5.i.i:                                      ; preds = %if.then69.i
  call void @__sanitizer_cov_trace_pc() #14
  %call8.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.166, ptr noundef %addr1.i.i) #15
  br label %handle_ap_item.exit

if.end.i6.i:                                      ; preds = %if.then69.i
  %duration_id.i.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %19, i32 0, i32 1
  %145 = ptrtoint ptr %duration_id.i.i to i32
  call void @__asan_load2_noabort(i32 %145)
  %146 = load i16, ptr %duration_id.i.i, align 2
  %147 = tail call i16 @llvm.bswap.i16(i16 %146) #12
  call void @__sanitizer_cov_trace_const_cmp2(i16 -16385, i16 %147)
  %cmp.not.i.i = icmp ugt i16 %147, -16385
  br i1 %cmp.not.i.i, label %if.end21.i.i, label %do.end16.i.i

do.end16.i.i:                                     ; preds = %if.end.i6.i
  call void @__sanitizer_cov_trace_pc() #14
  %call18.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.169) #15
  br label %handle_ap_item.exit

if.end21.i.i:                                     ; preds = %if.end.i6.i
  %and23.i.i = and i16 %147, 16383
  %conv25.i.i = zext i16 %and23.i.i to i32
  %148 = add nsw i16 %and23.i.i, -129
  call void @__sanitizer_cov_trace_const_cmp2(i16 -128, i16 %148)
  %149 = icmp ult i16 %148, -128
  br i1 %149, label %do.end35.i.i, label %do.end44.i.i

do.end35.i.i:                                     ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call38.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.172, i32 noundef %conv25.i.i) #15
  br label %handle_ap_item.exit

do.end44.i.i:                                     ; preds = %if.end21.i.i
  %150 = ptrtoint ptr %ap to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %ap, align 4
  %sta_table_lock.i8.i = getelementptr inbounds %struct.ap_data, ptr %151, i32 0, i32 7
  tail call void @_raw_spin_lock_bh(ptr noundef %sta_table_lock.i8.i) #12
  %152 = ptrtoint ptr %ap to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %ap, align 4
  %arrayidx.i.i9.i = getelementptr %struct.ieee80211_hdr, ptr %19, i32 0, i32 3, i32 5
  %154 = ptrtoint ptr %arrayidx.i.i9.i to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %arrayidx.i.i9.i, align 1
  %idxprom.i.i10.i = zext i8 %155 to i32
  %arrayidx1.i.i11.i = getelementptr %struct.ap_data, ptr %153, i32 0, i32 10, i32 %idxprom.i.i10.i
  %156 = ptrtoint ptr %arrayidx1.i.i11.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %s.06.i.i12.i = load ptr, ptr %arrayidx1.i.i11.i, align 4
  %cmp.not7.i.i13.i = icmp eq ptr %s.06.i.i12.i, null
  br i1 %cmp.not7.i.i13.i, label %do.end44.i.i.do.end58.i.i_crit_edge, label %land.rhs.lr.ph.i.i16.i

do.end44.i.i.do.end58.i.i_crit_edge:              ; preds = %do.end44.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end58.i.i

land.rhs.lr.ph.i.i16.i:                           ; preds = %do.end44.i.i
  %addr2.i14.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %19, i32 0, i32 3
  %157 = ptrtoint ptr %addr2.i14.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %addr2.i14.i, align 4
  %add.ptr1.i.i.i15.i = getelementptr %struct.ieee80211_hdr, ptr %19, i32 0, i32 3, i32 4
  %159 = ptrtoint ptr %add.ptr1.i.i.i15.i to i32
  call void @__asan_load2_noabort(i32 %159)
  %160 = load i16, ptr %add.ptr1.i.i.i15.i, align 2
  br label %land.rhs.i.i25.i

land.rhs.i.i25.i:                                 ; preds = %while.body.i.i29.i.land.rhs.i.i25.i_crit_edge, %land.rhs.lr.ph.i.i16.i
  %s.08.i.i17.i = phi ptr [ %s.06.i.i12.i, %land.rhs.lr.ph.i.i16.i ], [ %s.0.i.i27.i, %while.body.i.i29.i.land.rhs.i.i25.i_crit_edge ]
  %addr.i.i18.i = getelementptr inbounds %struct.sta_info, ptr %s.08.i.i17.i, i32 0, i32 4
  %161 = ptrtoint ptr %addr.i.i18.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %addr.i.i18.i, align 4
  %xor.i.i.i19.i = xor i32 %162, %158
  %add.ptr.i.i.i20.i = getelementptr %struct.sta_info, ptr %s.08.i.i17.i, i32 0, i32 4, i32 4
  %163 = ptrtoint ptr %add.ptr.i.i.i20.i to i32
  call void @__asan_load2_noabort(i32 %163)
  %164 = load i16, ptr %add.ptr.i.i.i20.i, align 2
  %xor37.i.i.i21.i = xor i16 %164, %160
  %xor3.i.i.i22.i = zext i16 %xor37.i.i.i21.i to i32
  %or.i.i.i23.i = or i32 %xor.i.i.i19.i, %xor3.i.i.i22.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i23.i)
  %cmp.i.i.i24.i = icmp eq i32 %or.i.i.i23.i, 0
  br i1 %cmp.i.i.i24.i, label %if.end63.i.i, label %while.body.i.i29.i

while.body.i.i29.i:                               ; preds = %land.rhs.i.i25.i
  %hnext.i.i26.i = getelementptr inbounds %struct.sta_info, ptr %s.08.i.i17.i, i32 0, i32 1
  %165 = ptrtoint ptr %hnext.i.i26.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %s.0.i.i27.i = load ptr, ptr %hnext.i.i26.i, align 4
  %cmp.not.i.i28.i = icmp eq ptr %s.0.i.i27.i, null
  br i1 %cmp.not.i.i28.i, label %while.body.i.i29.i.do.end58.i.i_crit_edge, label %while.body.i.i29.i.land.rhs.i.i25.i_crit_edge

while.body.i.i29.i.land.rhs.i.i25.i_crit_edge:    ; preds = %while.body.i.i29.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i.i25.i

while.body.i.i29.i.do.end58.i.i_crit_edge:        ; preds = %while.body.i.i29.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end58.i.i

do.end58.i.i:                                     ; preds = %while.body.i.i29.i.do.end58.i.i_crit_edge, %do.end44.i.i.do.end58.i.i_crit_edge
  %sta_table_lock5113.i.i = getelementptr inbounds %struct.ap_data, ptr %153, i32 0, i32 7
  tail call void @_raw_spin_unlock_bh(ptr noundef %sta_table_lock5113.i.i) #12
  %call60.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.175) #15
  br label %handle_ap_item.exit

if.end63.i.i:                                     ; preds = %land.rhs.i.i25.i
  %users.i30.i = getelementptr inbounds %struct.sta_info, ptr %s.08.i.i17.i, i32 0, i32 2
  %call.i.i.i31.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %users.i30.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %users.i30.i, i32 1, i32 3, i32 1) #12
  %166 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i30.i, ptr %users.i30.i, i32 1, ptr elementtype(i32) %users.i30.i) #12, !srcloc !531
  %167 = ptrtoint ptr %ap to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %ap, align 4
  %sta_table_lock51.i.i = getelementptr inbounds %struct.ap_data, ptr %168, i32 0, i32 7
  tail call void @_raw_spin_unlock_bh(ptr noundef %sta_table_lock51.i.i) #12
  %aid64.i.i = getelementptr inbounds %struct.sta_info, ptr %s.08.i.i17.i, i32 0, i32 5
  %169 = ptrtoint ptr %aid64.i.i to i32
  call void @__asan_load2_noabort(i32 %169)
  %170 = load i16, ptr %aid64.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %170, i16 %and23.i.i)
  %cmp67.not.i.i = icmp eq i16 %170, %and23.i.i
  br i1 %cmp67.not.i.i, label %while.cond.preheader.i.i, label %do.end73.i.i

while.cond.preheader.i.i:                         ; preds = %if.end63.i.i
  %tx_buf.i.i = getelementptr inbounds %struct.sta_info, ptr %s.08.i.i17.i, i32 0, i32 18
  %flags.i.i.i = getelementptr inbounds %struct.sta_info, ptr %s.08.i.i17.i, i32 0, i32 6
  br label %while.cond.i.i

do.end73.i.i:                                     ; preds = %if.end63.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv65.i.i = zext i16 %170 to i32
  %call78.i32.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.178, i32 noundef %conv25.i.i, i32 noundef %conv65.i.i) #15
  br label %handle_ap_item.exit

while.cond.i.i:                                   ; preds = %pspoll_send_buffered.exit.i.i.while.cond.i.i_crit_edge, %while.cond.preheader.i.i
  %call82.i.i = tail call ptr @skb_dequeue(ptr noundef %tx_buf.i.i) #12
  %cmp83.not.i.i = icmp eq ptr %call82.i.i, null
  br i1 %cmp83.not.i.i, label %while.cond.i.i.while.end.i.i_crit_edge, label %do.end87.i.i

while.cond.i.i.while.end.i.i_crit_edge:           ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i.i

do.end87.i.i:                                     ; preds = %while.cond.i.i
  %171 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %flags.i.i.i, align 4
  %and.i.i.i = and i32 %172, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i33.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i33.i, label %do.end87.i.i.pspoll_send_buffered.exit.i.i_crit_edge, label %if.end.i.i34.i

do.end87.i.i.pspoll_send_buffered.exit.i.i_crit_edge: ; preds = %do.end87.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pspoll_send_buffered.exit.i.i

if.end.i.i34.i:                                   ; preds = %do.end87.i.i
  %flags1.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call82.i.i, i32 0, i32 3, i32 9
  %173 = ptrtoint ptr %flags1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %flags1.i.i.i, align 1
  %175 = or i8 %174, 2
  store i8 %175, ptr %flags1.i.i.i, align 1
  %176 = ptrtoint ptr %tx_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %tx_buf.i.i, align 4
  %cmp.i.not.i.i.i = icmp eq ptr %177, %tx_buf.i.i
  br i1 %cmp.i.not.i.i.i, label %if.end.i.i34.i.pspoll_send_buffered.exit.i.i_crit_edge, label %if.then5.i.i.i

if.end.i.i34.i.pspoll_send_buffered.exit.i.i_crit_edge: ; preds = %if.end.i.i34.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pspoll_send_buffered.exit.i.i

if.then5.i.i.i:                                   ; preds = %if.end.i.i34.i
  call void @__sanitizer_cov_trace_pc() #14
  %178 = or i8 %174, 6
  %179 = ptrtoint ptr %flags1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %179)
  store i8 %178, ptr %flags1.i.i.i, align 1
  br label %pspoll_send_buffered.exit.i.i

pspoll_send_buffered.exit.i.i:                    ; preds = %if.then5.i.i.i, %if.end.i.i34.i.pspoll_send_buffered.exit.i.i_crit_edge, %do.end87.i.i.pspoll_send_buffered.exit.i.i_crit_edge
  %call11.i.i.i = tail call i32 @dev_queue_xmit(ptr noundef nonnull %call82.i.i) #12
  %180 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %flags.i.i.i, align 4
  %and88.i.i = and i32 %181, 4
  %tobool89.not.i.i = icmp eq i32 %and88.i.i, 0
  br i1 %tobool89.not.i.i, label %pspoll_send_buffered.exit.i.i.while.cond.i.i_crit_edge, label %pspoll_send_buffered.exit.i.i.while.end.i.i_crit_edge

pspoll_send_buffered.exit.i.i.while.end.i.i_crit_edge: ; preds = %pspoll_send_buffered.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i.i

pspoll_send_buffered.exit.i.i.while.cond.i.i_crit_edge: ; preds = %pspoll_send_buffered.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i.i

while.end.i.i:                                    ; preds = %pspoll_send_buffered.exit.i.i.while.end.i.i_crit_edge, %while.cond.i.i.while.end.i.i_crit_edge
  %182 = ptrtoint ptr %tx_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %tx_buf.i.i, align 4
  %cmp.i2.not.i.i = icmp eq ptr %183, %tx_buf.i.i
  br i1 %cmp.i2.not.i.i, label %if.then95.i.i, label %while.end.i.i.if.end107.i.i_crit_edge

while.end.i.i.if.end107.i.i_crit_edge:            ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end107.i.i

if.then95.i.i:                                    ; preds = %while.end.i.i
  %func.i.i.i = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 92
  %184 = ptrtoint ptr %func.i.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %func.i.i.i, align 4
  %set_tim.i.i.i = getelementptr inbounds %struct.prism2_helper_functions, ptr %185, i32 0, i32 15
  %186 = ptrtoint ptr %set_tim.i.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %set_tim.i.i.i, align 4
  %tobool.not.i3.i.i = icmp eq ptr %187, null
  br i1 %tobool.not.i3.i.i, label %if.then95.i.i.hostap_set_tim.exit.i.i_crit_edge, label %if.then.i.i.i

if.then95.i.i.hostap_set_tim.exit.i.i_crit_edge:  ; preds = %if.then95.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %hostap_set_tim.exit.i.i

if.then.i.i.i:                                    ; preds = %if.then95.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %188 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %dev1.i, align 4
  %call.i.i.i = tail call i32 %187(ptr noundef %189, i32 noundef %conv25.i.i, i32 noundef 0) #12
  br label %hostap_set_tim.exit.i.i

hostap_set_tim.exit.i.i:                          ; preds = %if.then.i.i.i, %if.then95.i.i.hostap_set_tim.exit.i.i_crit_edge
  %190 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %flags.i.i.i, align 4
  %and106.i.i = and i32 %191, -9
  store i32 %and106.i.i, ptr %flags.i.i.i, align 4
  br label %if.end107.i.i

if.end107.i.i:                                    ; preds = %hostap_set_tim.exit.i.i, %while.end.i.i.if.end107.i.i_crit_edge
  %call.i.i1.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %users.i30.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %users.i30.i, i32 1, i32 3, i32 1) #12
  %192 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i30.i, ptr %users.i30.i, i32 1, ptr elementtype(i32) %users.i30.i) #12, !srcloc !532
  br label %handle_ap_item.exit

if.end70.i:                                       ; preds = %if.end52.i
  br i1 %tobool.not.i, label %if.end84.i, label %do.end77.i

do.end77.i:                                       ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv80.i = zext i16 %and4.i to i32
  %call81.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.125, i32 noundef %conv53.i, i32 noundef %conv80.i) #15
  br label %handle_ap_item.exit

if.end84.i:                                       ; preds = %if.end70.i
  br i1 %cmp54.i, label %if.end97.i, label %do.end92.i

do.end92.i:                                       ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_pc() #14
  %call94.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.128) #15
  br label %handle_ap_item.exit

if.end97.i:                                       ; preds = %if.end84.i
  %addr198.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %19, i32 0, i32 2
  %dev_addr100.i = getelementptr inbounds %struct.net_device, ptr %17, i32 0, i32 86
  %193 = ptrtoint ptr %dev_addr100.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %dev_addr100.i, align 64
  %195 = ptrtoint ptr %addr198.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %addr198.i, align 4
  %197 = ptrtoint ptr %194 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %194, align 4
  %xor.i35.i = xor i32 %198, %196
  %add.ptr.i36.i = getelementptr %struct.ieee80211_hdr, ptr %19, i32 0, i32 2, i32 4
  %199 = ptrtoint ptr %add.ptr.i36.i to i32
  call void @__asan_load2_noabort(i32 %199)
  %200 = load i16, ptr %add.ptr.i36.i, align 2
  %add.ptr1.i37.i = getelementptr i8, ptr %194, i32 4
  %201 = ptrtoint ptr %add.ptr1.i37.i to i32
  call void @__asan_load2_noabort(i32 %201)
  %202 = load i16, ptr %add.ptr1.i37.i, align 2
  %xor37.i38.i = xor i16 %202, %200
  %xor3.i39.i = zext i16 %xor37.i38.i to i32
  %or.i40.i = or i32 %xor.i35.i, %xor3.i39.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i40.i)
  %cmp.i41.i = icmp eq i32 %or.i40.i, 0
  br i1 %cmp.i41.i, label %if.end113.i, label %do.end106.i

do.end106.i:                                      ; preds = %if.end97.i
  call void @__sanitizer_cov_trace_pc() #14
  %call110.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.131, ptr noundef %addr198.i) #15
  br label %handle_ap_item.exit

if.end113.i:                                      ; preds = %if.end97.i
  %addr3.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %19, i32 0, i32 4
  %203 = ptrtoint ptr %addr3.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %addr3.i, align 4
  %xor.i42.i = xor i32 %204, %198
  %add.ptr.i43.i = getelementptr %struct.ieee80211_hdr, ptr %19, i32 0, i32 4, i32 4
  %205 = ptrtoint ptr %add.ptr.i43.i to i32
  call void @__asan_load2_noabort(i32 %205)
  %206 = load i16, ptr %add.ptr.i43.i, align 2
  %xor37.i45.i = xor i16 %206, %202
  %xor3.i46.i = zext i16 %xor37.i45.i to i32
  %or.i47.i = or i32 %xor.i42.i, %xor3.i46.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i47.i)
  %cmp.i48.i = icmp eq i32 %or.i47.i, 0
  br i1 %cmp.i48.i, label %if.end128.i, label %do.end121.i

do.end121.i:                                      ; preds = %if.end113.i
  call void @__sanitizer_cov_trace_pc() #14
  %call125.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.134, ptr noundef %addr3.i) #15
  br label %handle_ap_item.exit

if.end128.i:                                      ; preds = %if.end113.i
  %207 = lshr exact i16 %and4.i, 4
  %208 = zext i16 %207 to i32
  %209 = zext i32 %208 to i64
  call void @__sanitizer_cov_trace_switch(i64 %209, ptr @__sancov_gen_cov_switch_values.266)
  switch i32 %208, label %do.end164.i [
    i32 0, label %sw.bb.i
    i32 1, label %do.end134.i
    i32 2, label %sw.bb139.i
    i32 3, label %do.end144.i
    i32 9, label %do.end153.i
    i32 10, label %sw.bb158.i
    i32 11, label %sw.bb159.i
    i32 12, label %sw.bb160.i
  ]

sw.bb.i:                                          ; preds = %if.end128.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @handle_assoc(ptr noundef %1, ptr noundef %skb, i32 noundef 0) #12
  br label %handle_ap_item.exit

do.end134.i:                                      ; preds = %if.end128.i
  call void @__sanitizer_cov_trace_pc() #14
  %call136.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.137) #15
  br label %handle_ap_item.exit

sw.bb139.i:                                       ; preds = %if.end128.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @handle_assoc(ptr noundef %1, ptr noundef %skb, i32 noundef 1) #12
  br label %handle_ap_item.exit

do.end144.i:                                      ; preds = %if.end128.i
  call void @__sanitizer_cov_trace_pc() #14
  %call146.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.140) #15
  br label %handle_ap_item.exit

do.end153.i:                                      ; preds = %if.end128.i
  call void @__sanitizer_cov_trace_pc() #14
  %call155.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.143) #15
  br label %handle_ap_item.exit

sw.bb158.i:                                       ; preds = %if.end128.i
  %210 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %len, align 4
  %sub.i51.i = add i32 %211, -24
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub.i51.i)
  %cmp.i52.i = icmp slt i32 %sub.i51.i, 2
  br i1 %cmp.i52.i, label %do.end.i54.i, label %if.end.i65.i

do.end.i54.i:                                     ; preds = %sw.bb158.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i53.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.198, i32 noundef %sub.i51.i) #15
  br label %handle_ap_item.exit

if.end.i65.i:                                     ; preds = %sw.bb158.i
  %add.ptr.i56.i = getelementptr i8, ptr %19, i32 24
  %212 = ptrtoint ptr %add.ptr.i56.i to i32
  call void @__asan_load2_noabort(i32 %212)
  %213 = load i16, ptr %add.ptr.i56.i, align 2
  %214 = tail call i16 @llvm.bswap.i16(i16 %213) #12
  %addr2.i57.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %19, i32 0, i32 3
  %conv.i.i = zext i16 %214 to i32
  %call10.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.201, ptr noundef %17, ptr noundef %addr2.i57.i, i32 noundef %sub.i51.i, i32 noundef %conv.i.i) #15
  %215 = ptrtoint ptr %ap to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %ap, align 4
  %sta_table_lock.i59.i = getelementptr inbounds %struct.ap_data, ptr %216, i32 0, i32 7
  tail call void @_raw_spin_lock_bh(ptr noundef %sta_table_lock.i59.i) #12
  %217 = ptrtoint ptr %ap to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %ap, align 4
  %arrayidx.i.i60.i = getelementptr %struct.ieee80211_hdr, ptr %19, i32 0, i32 3, i32 5
  %219 = ptrtoint ptr %arrayidx.i.i60.i to i32
  call void @__asan_load1_noabort(i32 %219)
  %220 = load i8, ptr %arrayidx.i.i60.i, align 1
  %idxprom.i.i61.i = zext i8 %220 to i32
  %arrayidx1.i.i62.i = getelementptr %struct.ap_data, ptr %218, i32 0, i32 10, i32 %idxprom.i.i61.i
  %221 = ptrtoint ptr %arrayidx1.i.i62.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %s.06.i.i63.i = load ptr, ptr %arrayidx1.i.i62.i, align 4
  %cmp.not7.i.i64.i = icmp eq ptr %s.06.i.i63.i, null
  br i1 %cmp.not7.i.i64.i, label %if.end.i65.i.do.end35.i84.i_crit_edge, label %land.rhs.lr.ph.i.i67.i

if.end.i65.i.do.end35.i84.i_crit_edge:            ; preds = %if.end.i65.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end35.i84.i

land.rhs.lr.ph.i.i67.i:                           ; preds = %if.end.i65.i
  %222 = ptrtoint ptr %addr2.i57.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %addr2.i57.i, align 4
  %add.ptr1.i.i.i66.i = getelementptr %struct.ieee80211_hdr, ptr %19, i32 0, i32 3, i32 4
  %224 = ptrtoint ptr %add.ptr1.i.i.i66.i to i32
  call void @__asan_load2_noabort(i32 %224)
  %225 = load i16, ptr %add.ptr1.i.i.i66.i, align 2
  br label %land.rhs.i.i76.i

land.rhs.i.i76.i:                                 ; preds = %while.body.i.i80.i.land.rhs.i.i76.i_crit_edge, %land.rhs.lr.ph.i.i67.i
  %s.08.i.i68.i = phi ptr [ %s.06.i.i63.i, %land.rhs.lr.ph.i.i67.i ], [ %s.0.i.i78.i, %while.body.i.i80.i.land.rhs.i.i76.i_crit_edge ]
  %addr.i.i69.i = getelementptr inbounds %struct.sta_info, ptr %s.08.i.i68.i, i32 0, i32 4
  %226 = ptrtoint ptr %addr.i.i69.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %addr.i.i69.i, align 4
  %xor.i.i.i70.i = xor i32 %227, %223
  %add.ptr.i.i.i71.i = getelementptr %struct.sta_info, ptr %s.08.i.i68.i, i32 0, i32 4, i32 4
  %228 = ptrtoint ptr %add.ptr.i.i.i71.i to i32
  call void @__asan_load2_noabort(i32 %228)
  %229 = load i16, ptr %add.ptr.i.i.i71.i, align 2
  %xor37.i.i.i72.i = xor i16 %229, %225
  %xor3.i.i.i73.i = zext i16 %xor37.i.i.i72.i to i32
  %or.i.i.i74.i = or i32 %xor.i.i.i70.i, %xor3.i.i.i73.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i74.i)
  %cmp.i.i.i75.i = icmp eq i32 %or.i.i.i74.i, 0
  br i1 %cmp.i.i.i75.i, label %if.then19.i.i, label %while.body.i.i80.i

while.body.i.i80.i:                               ; preds = %land.rhs.i.i76.i
  %hnext.i.i77.i = getelementptr inbounds %struct.sta_info, ptr %s.08.i.i68.i, i32 0, i32 1
  %230 = ptrtoint ptr %hnext.i.i77.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %s.0.i.i78.i = load ptr, ptr %hnext.i.i77.i, align 4
  %cmp.not.i.i79.i = icmp eq ptr %s.0.i.i78.i, null
  br i1 %cmp.not.i.i79.i, label %while.body.i.i80.i.do.end35.i84.i_crit_edge, label %while.body.i.i80.i.land.rhs.i.i76.i_crit_edge

while.body.i.i80.i.land.rhs.i.i76.i_crit_edge:    ; preds = %while.body.i.i80.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i.i76.i

while.body.i.i80.i.do.end35.i84.i_crit_edge:      ; preds = %while.body.i.i80.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end35.i84.i

if.then19.i.i:                                    ; preds = %land.rhs.i.i76.i
  %flags.i81.i = getelementptr inbounds %struct.sta_info, ptr %s.08.i.i68.i, i32 0, i32 6
  %231 = ptrtoint ptr %flags.i81.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %flags.i81.i, align 4
  %and.i.i = and i32 %232, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i82.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i82.i, label %if.then19.i.i.if.end27.i.i_crit_edge, label %land.lhs.true.i.i

if.then19.i.i.if.end27.i.i_crit_edge:             ; preds = %if.then19.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27.i.i

land.lhs.true.i.i:                                ; preds = %if.then19.i.i
  %ap20.i.i = getelementptr inbounds %struct.sta_info, ptr %s.08.i.i68.i, i32 0, i32 32
  %233 = ptrtoint ptr %ap20.i.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %ap20.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %234)
  %tobool21.not.i.i = icmp eq i32 %234, 0
  br i1 %tobool21.not.i.i, label %if.then22.i.i, label %land.lhs.true.i.i.if.end27.i.i_crit_edge

land.lhs.true.i.i.if.end27.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27.i.i

if.then22.i.i:                                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %235 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %dev1.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %wrqu.i.i49.i) #12
  %237 = getelementptr inbounds i8, ptr %wrqu.i.i49.i, i32 8
  %238 = ptrtoint ptr %237 to i32
  call void @__asan_storeN_noabort(i32 %238, i32 8)
  store i64 0, ptr %237, align 4
  %sa_data.i.i83.i = getelementptr inbounds %struct.sockaddr, ptr %wrqu.i.i49.i, i32 0, i32 1
  %239 = call ptr @memcpy(ptr %sa_data.i.i83.i, ptr %addr.i.i69.i, i32 6)
  %240 = ptrtoint ptr %wrqu.i.i49.i to i32
  call void @__asan_store2_noabort(i32 %240)
  store i16 1, ptr %wrqu.i.i49.i, align 4
  call void @wireless_send_event(ptr noundef %236, i32 noundef 35844, ptr noundef nonnull %wrqu.i.i49.i, ptr noundef null) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %wrqu.i.i49.i) #12
  br label %if.end27.i.i

if.end27.i.i:                                     ; preds = %if.then22.i.i, %land.lhs.true.i.i.if.end27.i.i_crit_edge, %if.then19.i.i.if.end27.i.i_crit_edge
  %241 = ptrtoint ptr %flags.i81.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %flags.i81.i, align 4
  %and26.i.i = and i32 %242, -3
  store i32 %and26.i.i, ptr %flags.i81.i, align 4
  %243 = ptrtoint ptr %ap to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %ap, align 4
  %sta_table_lock29.i.i = getelementptr inbounds %struct.ap_data, ptr %244, i32 0, i32 7
  call void @_raw_spin_unlock_bh(ptr noundef %sta_table_lock29.i.i) #12
  br label %handle_ap_item.exit

do.end35.i84.i:                                   ; preds = %while.body.i.i80.i.do.end35.i84.i_crit_edge, %if.end.i65.i.do.end35.i84.i_crit_edge
  %sta_table_lock296.i.i = getelementptr inbounds %struct.ap_data, ptr %218, i32 0, i32 7
  tail call void @_raw_spin_unlock_bh(ptr noundef %sta_table_lock296.i.i) #12
  %call42.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.204, ptr noundef %17, ptr noundef %addr2.i57.i, i32 noundef %conv.i.i) #15
  br label %handle_ap_item.exit

sw.bb159.i:                                       ; preds = %if.end128.i
  %245 = ptrtoint ptr %ap to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %ap, align 4
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %body.i.i) #12
  %247 = call ptr @memset(ptr %body.i.i, i32 255, i32 136)
  %248 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %len, align 4
  %sub.i88.i = add i32 %249, -24
  %250 = ptrtoint ptr %19 to i32
  call void @__asan_load2_noabort(i32 %250)
  %251 = load i16, ptr %19, align 2
  %call.i89.i = tail call i32 @hostap_80211_get_hdrlen(i16 noundef zeroext %251) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %sub.i88.i)
  %cmp.i90.i = icmp slt i32 %sub.i88.i, 6
  br i1 %cmp.i90.i, label %do.end.i92.i, label %if.end.i99.i

do.end.i92.i:                                     ; preds = %sw.bb159.i
  call void @__sanitizer_cov_trace_pc() #14
  %addr2.i91.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %19, i32 0, i32 3
  %call6.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.206, ptr noundef %17, i32 noundef %sub.i88.i, ptr noundef %addr2.i91.i) #15
  br label %handle_authen.exit.i

if.end.i99.i:                                     ; preds = %sw.bb159.i
  %252 = ptrtoint ptr %ap to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %ap, align 4
  %sta_table_lock.i93.i = getelementptr inbounds %struct.ap_data, ptr %253, i32 0, i32 7
  tail call void @_raw_spin_lock_bh(ptr noundef %sta_table_lock.i93.i) #12
  %254 = ptrtoint ptr %ap to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %ap, align 4
  %addr211.i.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %19, i32 0, i32 3
  %arrayidx.i.i94.i = getelementptr %struct.ieee80211_hdr, ptr %19, i32 0, i32 3, i32 5
  %256 = ptrtoint ptr %arrayidx.i.i94.i to i32
  call void @__asan_load1_noabort(i32 %256)
  %257 = load i8, ptr %arrayidx.i.i94.i, align 1
  %idxprom.i.i95.i = zext i8 %257 to i32
  %arrayidx1.i.i96.i = getelementptr %struct.ap_data, ptr %255, i32 0, i32 10, i32 %idxprom.i.i95.i
  %258 = ptrtoint ptr %arrayidx1.i.i96.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %s.06.i.i97.i = load ptr, ptr %arrayidx1.i.i96.i, align 4
  %cmp.not7.i.i98.i = icmp eq ptr %s.06.i.i97.i, null
  br i1 %cmp.not7.i.i98.i, label %if.end.i99.i.if.else.critedge.i.i_crit_edge, label %land.rhs.lr.ph.i.i101.i

if.end.i99.i.if.else.critedge.i.i_crit_edge:      ; preds = %if.end.i99.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.critedge.i.i

land.rhs.lr.ph.i.i101.i:                          ; preds = %if.end.i99.i
  %259 = ptrtoint ptr %addr211.i.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %addr211.i.i, align 4
  %add.ptr1.i.i.i100.i = getelementptr %struct.ieee80211_hdr, ptr %19, i32 0, i32 3, i32 4
  %261 = ptrtoint ptr %add.ptr1.i.i.i100.i to i32
  call void @__asan_load2_noabort(i32 %261)
  %262 = load i16, ptr %add.ptr1.i.i.i100.i, align 2
  br label %land.rhs.i.i110.i

land.rhs.i.i110.i:                                ; preds = %while.body.i.i114.i.land.rhs.i.i110.i_crit_edge, %land.rhs.lr.ph.i.i101.i
  %s.08.i.i102.i = phi ptr [ %s.06.i.i97.i, %land.rhs.lr.ph.i.i101.i ], [ %s.0.i.i112.i, %while.body.i.i114.i.land.rhs.i.i110.i_crit_edge ]
  %addr.i.i103.i = getelementptr inbounds %struct.sta_info, ptr %s.08.i.i102.i, i32 0, i32 4
  %263 = ptrtoint ptr %addr.i.i103.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %addr.i.i103.i, align 4
  %xor.i.i.i104.i = xor i32 %264, %260
  %add.ptr.i.i.i105.i = getelementptr %struct.sta_info, ptr %s.08.i.i102.i, i32 0, i32 4, i32 4
  %265 = ptrtoint ptr %add.ptr.i.i.i105.i to i32
  call void @__asan_load2_noabort(i32 %265)
  %266 = load i16, ptr %add.ptr.i.i.i105.i, align 2
  %xor37.i.i.i106.i = xor i16 %266, %262
  %xor3.i.i.i107.i = zext i16 %xor37.i.i.i106.i to i32
  %or.i.i.i108.i = or i32 %xor.i.i.i104.i, %xor3.i.i.i107.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i108.i)
  %cmp.i.i.i109.i = icmp eq i32 %or.i.i.i108.i, 0
  br i1 %cmp.i.i.i109.i, label %if.then14.i.i, label %while.body.i.i114.i

while.body.i.i114.i:                              ; preds = %land.rhs.i.i110.i
  %hnext.i.i111.i = getelementptr inbounds %struct.sta_info, ptr %s.08.i.i102.i, i32 0, i32 1
  %267 = ptrtoint ptr %hnext.i.i111.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %s.0.i.i112.i = load ptr, ptr %hnext.i.i111.i, align 4
  %cmp.not.i.i113.i = icmp eq ptr %s.0.i.i112.i, null
  br i1 %cmp.not.i.i113.i, label %while.body.i.i114.i.if.else.critedge.i.i_crit_edge, label %while.body.i.i114.i.land.rhs.i.i110.i_crit_edge

while.body.i.i114.i.land.rhs.i.i110.i_crit_edge:  ; preds = %while.body.i.i114.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i.i110.i

while.body.i.i114.i.if.else.critedge.i.i_crit_edge: ; preds = %while.body.i.i114.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.critedge.i.i

if.then14.i.i:                                    ; preds = %land.rhs.i.i110.i
  %users.i115.i = getelementptr inbounds %struct.sta_info, ptr %s.08.i.i102.i, i32 0, i32 2
  %call.i.i.i116.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %users.i115.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %users.i115.i, i32 1, i32 3, i32 1) #12
  %268 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i115.i, ptr %users.i115.i, i32 1, ptr elementtype(i32) %users.i115.i) #12, !srcloc !531
  %269 = ptrtoint ptr %ap to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %ap, align 4
  %sta_table_lock17.c.i.i = getelementptr inbounds %struct.ap_data, ptr %270, i32 0, i32 7
  tail call void @_raw_spin_unlock_bh(ptr noundef %sta_table_lock17.c.i.i) #12
  %crypt19.i.i = getelementptr inbounds %struct.sta_info, ptr %s.08.i.i102.i, i32 0, i32 31
  %271 = ptrtoint ptr %crypt19.i.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %crypt19.i.i, align 4
  %tobool20.not.i.i = icmp eq ptr %272, null
  br i1 %tobool20.not.i.i, label %if.then14.i.i.if.else.i118.i_crit_edge, label %if.then14.i.i.if.end31.i.i_crit_edge

if.then14.i.i.if.end31.i.i_crit_edge:             ; preds = %if.then14.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31.i.i

if.then14.i.i.if.else.i118.i_crit_edge:           ; preds = %if.then14.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i118.i

if.else.critedge.i.i:                             ; preds = %while.body.i.i114.i.if.else.critedge.i.i_crit_edge, %if.end.i99.i.if.else.critedge.i.i_crit_edge
  %sta_table_lock17.c2.i.i = getelementptr inbounds %struct.ap_data, ptr %255, i32 0, i32 7
  tail call void @_raw_spin_unlock_bh(ptr noundef %sta_table_lock17.c2.i.i) #12
  br label %if.else.i118.i

if.else.i118.i:                                   ; preds = %if.else.critedge.i.i, %if.then14.i.i.if.else.i118.i_crit_edge
  %tobool.not28.i.i = phi i1 [ true, %if.else.critedge.i.i ], [ false, %if.then14.i.i.if.else.i118.i_crit_edge ]
  %s.0.lcssa.i24.i.i = phi ptr [ null, %if.else.critedge.i.i ], [ %s.08.i.i102.i, %if.then14.i.i.if.else.i118.i_crit_edge ]
  %273 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %len, align 4
  %add.i117.i = add i32 %call.i89.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %274, i32 %add.i117.i)
  %cmp24.not.i.i = icmp ult i32 %274, %add.i117.i
  br i1 %cmp24.not.i.i, label %if.else.i118.i.if.end28.i.i_crit_edge, label %if.then25.i.i

if.else.i118.i.if.end28.i.i_crit_edge:            ; preds = %if.else.i118.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28.i.i

if.then25.i.i:                                    ; preds = %if.else.i118.i
  call void @__sanitizer_cov_trace_pc() #14
  %275 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %data.i, align 4
  %arrayidx.i119.i = getelementptr i8, ptr %276, i32 %add.i117.i
  %277 = ptrtoint ptr %arrayidx.i119.i to i32
  call void @__asan_load1_noabort(i32 %277)
  %278 = load i8, ptr %arrayidx.i119.i, align 1
  %279 = lshr i8 %278, 6
  %280 = zext i8 %279 to i32
  br label %if.end28.i.i

if.end28.i.i:                                     ; preds = %if.then25.i.i, %if.else.i118.i.if.end28.i.i_crit_edge
  %idx.0.i.i = phi i32 [ %280, %if.then25.i.i ], [ 0, %if.else.i118.i.if.end28.i.i_crit_edge ]
  %arrayidx30.i.i = getelementptr %struct.local_info, ptr %1, i32 0, i32 75, i32 2, i32 %idx.0.i.i
  %281 = ptrtoint ptr %arrayidx30.i.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %arrayidx30.i.i, align 4
  br label %if.end31.i.i

if.end31.i.i:                                     ; preds = %if.end28.i.i, %if.then14.i.i.if.end31.i.i_crit_edge
  %tobool.not27.i.i = phi i1 [ %tobool.not28.i.i, %if.end28.i.i ], [ false, %if.then14.i.i.if.end31.i.i_crit_edge ]
  %s.0.lcssa.i23.i.i = phi ptr [ %s.0.lcssa.i24.i.i, %if.end28.i.i ], [ %s.08.i.i102.i, %if.then14.i.i.if.end31.i.i_crit_edge ]
  %crypt.0.i.i = phi ptr [ %282, %if.end28.i.i ], [ %272, %if.then14.i.i.if.end31.i.i_crit_edge ]
  %283 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %data.i, align 4
  %add.ptr.i120.i = getelementptr i8, ptr %284, i32 24
  %285 = ptrtoint ptr %add.ptr.i120.i to i32
  call void @__asan_load2_noabort(i32 %285)
  %286 = load i16, ptr %add.ptr.i120.i, align 2
  %287 = tail call i16 @llvm.bswap.i16(i16 %286) #12
  %incdec.ptr.i121.i = getelementptr i8, ptr %284, i32 26
  %288 = ptrtoint ptr %incdec.ptr.i121.i to i32
  call void @__asan_load2_noabort(i32 %288)
  %289 = load i16, ptr %incdec.ptr.i121.i, align 2
  %290 = tail call i16 @llvm.bswap.i16(i16 %289) #12
  %incdec.ptr33.i.i = getelementptr i8, ptr %284, i32 28
  %291 = ptrtoint ptr %incdec.ptr33.i.i to i32
  call void @__asan_load2_noabort(i32 %291)
  %292 = load i16, ptr %incdec.ptr33.i.i, align 2
  %293 = tail call i16 @llvm.bswap.i16(i16 %292) #12
  %incdec.ptr34.i.i = getelementptr i8, ptr %284, i32 30
  %294 = ptrtoint ptr %dev_addr100.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %dev_addr100.i, align 64
  %296 = ptrtoint ptr %295 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %295, align 4
  %298 = ptrtoint ptr %addr211.i.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load i32, ptr %addr211.i.i, align 4
  %xor.i.i123.i = xor i32 %299, %297
  %add.ptr.i.i124.i = getelementptr i8, ptr %295, i32 4
  %300 = ptrtoint ptr %add.ptr.i.i124.i to i32
  call void @__asan_load2_noabort(i32 %300)
  %301 = load i16, ptr %add.ptr.i.i124.i, align 2
  %add.ptr1.i.i125.i = getelementptr %struct.ieee80211_hdr, ptr %19, i32 0, i32 3, i32 4
  %302 = ptrtoint ptr %add.ptr1.i.i125.i to i32
  call void @__asan_load2_noabort(i32 %302)
  %303 = load i16, ptr %add.ptr1.i.i125.i, align 2
  %xor37.i.i126.i = xor i16 %303, %301
  %xor3.i.i127.i = zext i16 %xor37.i.i126.i to i32
  %or.i.i128.i = or i32 %xor.i.i123.i, %xor3.i.i127.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i128.i)
  %cmp.i.i129.i = icmp eq i32 %or.i.i128.i, 0
  br i1 %cmp.i.i129.i, label %if.end31.i.i.fail.i.i_crit_edge, label %lor.lhs.false.i.i

if.end31.i.i.fail.i.i_crit_edge:                  ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail.i.i

lor.lhs.false.i.i:                                ; preds = %if.end31.i.i
  %mac_restrictions.i.i = getelementptr inbounds %struct.ap_data, ptr %246, i32 0, i32 15
  %304 = ptrtoint ptr %mac_restrictions.i.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %mac_restrictions.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %305)
  %cmp.i11.i.i = icmp eq i32 %305, 0
  br i1 %cmp.i11.i.i, label %lor.lhs.false.i.i.if.end44.i.i_crit_edge, label %if.end.i.i131.i

lor.lhs.false.i.i.if.end44.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44.i.i

if.end.i.i131.i:                                  ; preds = %lor.lhs.false.i.i
  %lock.i.i130.i = getelementptr inbounds %struct.ap_data, ptr %246, i32 0, i32 15, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i.i130.i) #12
  %mac_list.i.i.i = getelementptr inbounds %struct.ap_data, ptr %246, i32 0, i32 15, i32 2
  br label %for.cond.i.i.i

for.cond.i.i.i:                                   ; preds = %for.body.i.i.i.for.cond.i.i.i_crit_edge, %if.end.i.i131.i
  %entry1.0.in.i.i.i = phi ptr [ %mac_list.i.i.i, %if.end.i.i131.i ], [ %entry1.0.i.i.i, %for.body.i.i.i.for.cond.i.i.i_crit_edge ]
  %306 = ptrtoint ptr %entry1.0.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %entry1.0.i.i.i = load ptr, ptr %entry1.0.in.i.i.i, align 4
  %cmp3.not.i.i.i = icmp eq ptr %entry1.0.i.i.i, %mac_list.i.i.i
  br i1 %cmp3.not.i.i.i, label %for.cond.i.i.i.ap_control_mac_deny.exit.i.i_crit_edge, label %for.body.i.i.i

for.cond.i.i.i.ap_control_mac_deny.exit.i.i_crit_edge: ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ap_control_mac_deny.exit.i.i

for.body.i.i.i:                                   ; preds = %for.cond.i.i.i
  %addr.i13.i.i = getelementptr inbounds %struct.mac_entry, ptr %entry1.0.i.i.i, i32 0, i32 1
  %307 = ptrtoint ptr %addr.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load i32, ptr %addr.i13.i.i, align 4
  %309 = ptrtoint ptr %addr211.i.i to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load i32, ptr %addr211.i.i, align 4
  %xor.i.i14.i.i = xor i32 %310, %308
  %add.ptr.i.i15.i.i = getelementptr %struct.mac_entry, ptr %entry1.0.i.i.i, i32 0, i32 1, i32 4
  %311 = ptrtoint ptr %add.ptr.i.i15.i.i to i32
  call void @__asan_load2_noabort(i32 %311)
  %312 = load i16, ptr %add.ptr.i.i15.i.i, align 2
  %313 = ptrtoint ptr %add.ptr1.i.i125.i to i32
  call void @__asan_load2_noabort(i32 %313)
  %314 = load i16, ptr %add.ptr1.i.i125.i, align 2
  %xor37.i.i16.i.i = xor i16 %314, %312
  %xor3.i.i17.i.i = zext i16 %xor37.i.i16.i.i to i32
  %or.i.i18.i.i = or i32 %xor.i.i14.i.i, %xor3.i.i17.i.i
  %cmp.i.i19.i.i = icmp eq i32 %or.i.i18.i.i, 0
  br i1 %cmp.i.i19.i.i, label %for.body.i.i.i.ap_control_mac_deny.exit.i.i_crit_edge, label %for.body.i.i.i.for.cond.i.i.i_crit_edge

for.body.i.i.i.for.cond.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i.i.i

for.body.i.i.i.ap_control_mac_deny.exit.i.i_crit_edge: ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ap_control_mac_deny.exit.i.i

ap_control_mac_deny.exit.i.i:                     ; preds = %for.body.i.i.i.ap_control_mac_deny.exit.i.i_crit_edge, %for.cond.i.i.i.ap_control_mac_deny.exit.i.i_crit_edge
  %found.0.i.i.i = phi i32 [ 0, %for.cond.i.i.i.ap_control_mac_deny.exit.i.i_crit_edge ], [ 1, %for.body.i.i.i.ap_control_mac_deny.exit.i.i_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i.i130.i) #12
  %315 = ptrtoint ptr %mac_restrictions.i.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load i32, ptr %mac_restrictions.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %316)
  %cmp13.i.i.i = icmp eq i32 %316, 1
  %lnot.ext.i.i.i = zext i1 %cmp3.not.i.i.i to i32
  %spec.select.i.i.i = select i1 %cmp13.i.i.i, i32 %lnot.ext.i.i.i, i32 %found.0.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i.i.i)
  %tobool42.not.i.i = icmp eq i32 %spec.select.i.i.i, 0
  br i1 %tobool42.not.i.i, label %ap_control_mac_deny.exit.i.i.if.end44.i.i_crit_edge, label %ap_control_mac_deny.exit.i.i.fail.i.i_crit_edge

ap_control_mac_deny.exit.i.i.fail.i.i_crit_edge:  ; preds = %ap_control_mac_deny.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail.i.i

ap_control_mac_deny.exit.i.i.if.end44.i.i_crit_edge: ; preds = %ap_control_mac_deny.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44.i.i

if.end44.i.i:                                     ; preds = %ap_control_mac_deny.exit.i.i.if.end44.i.i_crit_edge, %lor.lhs.false.i.i.if.end44.i.i_crit_edge
  %auth_algs.i.i = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 89
  %317 = ptrtoint ptr %auth_algs.i.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load i32, ptr %auth_algs.i.i, align 4
  %and.i132.i = and i32 %318, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i132.i)
  %tobool45.not.i.i = icmp ne i32 %and.i132.i, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %286)
  %cmp48.i.i = icmp eq i16 %286, 0
  %or.cond.i133.i = select i1 %tobool45.not.i.i, i1 %cmp48.i.i, i1 false
  br i1 %or.cond.i133.i, label %if.end44.i.i.if.end62.i.i_crit_edge, label %lor.lhs.false50.i.i

if.end44.i.i.if.end62.i.i_crit_edge:              ; preds = %if.end44.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end62.i.i

lor.lhs.false50.i.i:                              ; preds = %if.end44.i.i
  %and52.i.i = and i32 %318, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52.i.i)
  %tobool53.not.i.i = icmp ne i32 %and52.i.i, 0
  %tobool55.not.i.i = icmp ne ptr %crypt.0.i.i, null
  %or.cond3.i.i = select i1 %tobool53.not.i.i, i1 %tobool55.not.i.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %286)
  %cmp58.i.i = icmp eq i16 %286, 256
  %or.cond4.i134.i = select i1 %or.cond3.i.i, i1 %cmp58.i.i, i1 false
  br i1 %or.cond4.i134.i, label %lor.lhs.false50.i.i.if.end62.i.i_crit_edge, label %lor.lhs.false50.i.i.fail.i.i_crit_edge

lor.lhs.false50.i.i.fail.i.i_crit_edge:           ; preds = %lor.lhs.false50.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail.i.i

lor.lhs.false50.i.i.if.end62.i.i_crit_edge:       ; preds = %lor.lhs.false50.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end62.i.i

if.end62.i.i:                                     ; preds = %lor.lhs.false50.i.i.if.end62.i.i_crit_edge, %if.end44.i.i.if.end62.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %sub.i88.i)
  %cmp63.i.i = icmp sgt i32 %sub.i88.i, 7
  br i1 %cmp63.i.i, label %if.then65.i.i, label %if.end62.i.i.if.end83.i.i_crit_edge

if.end62.i.i.if.end83.i.i_crit_edge:              ; preds = %if.end62.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end83.i.i

if.then65.i.i:                                    ; preds = %if.end62.i.i
  %319 = ptrtoint ptr %incdec.ptr34.i.i to i32
  call void @__asan_load1_noabort(i32 %319)
  %320 = load i8, ptr %incdec.ptr34.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %320)
  %cmp67.i.i = icmp eq i8 %320, 16
  br i1 %cmp67.i.i, label %if.then69.i.i, label %if.then65.i.i.if.end83.i.i_crit_edge

if.then65.i.i.if.end83.i.i_crit_edge:             ; preds = %if.then65.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end83.i.i

if.then69.i.i:                                    ; preds = %if.then65.i.i
  %add.ptr70.i.i = getelementptr i8, ptr %284, i32 31
  %321 = ptrtoint ptr %add.ptr70.i.i to i32
  call void @__asan_load1_noabort(i32 %321)
  %322 = load i8, ptr %add.ptr70.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %322)
  %cmp72.not.i.i = icmp eq i8 %322, -128
  br i1 %cmp72.not.i.i, label %if.end75.i.i, label %if.then69.i.i.fail.i.i_crit_edge

if.then69.i.i.fail.i.i_crit_edge:                 ; preds = %if.then69.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail.i.i

if.end75.i.i:                                     ; preds = %if.then69.i.i
  %sub76.i.i = add i32 %249, -32
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %sub76.i.i)
  %cmp77.i.i = icmp ult i32 %sub76.i.i, 128
  br i1 %cmp77.i.i, label %if.end75.i.i.fail.i.i_crit_edge, label %if.end80.i.i

if.end75.i.i.fail.i.i_crit_edge:                  ; preds = %if.end75.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail.i.i

if.end80.i.i:                                     ; preds = %if.end75.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr81.i.i = getelementptr i8, ptr %284, i32 32
  br label %if.end83.i.i

if.end83.i.i:                                     ; preds = %if.end80.i.i, %if.then65.i.i.if.end83.i.i_crit_edge, %if.end62.i.i.if.end83.i.i_crit_edge
  %challenge.2.i.i = phi ptr [ null, %if.end62.i.i.if.end83.i.i_crit_edge ], [ null, %if.then65.i.i.if.end83.i.i_crit_edge ], [ %add.ptr81.i.i, %if.end80.i.i ]
  br i1 %tobool.not27.i.i, label %if.end83.i.i.if.end113.i.i_crit_edge, label %land.lhs.true85.i.i

if.end83.i.i.if.end113.i.i_crit_edge:             ; preds = %if.end83.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end113.i.i

land.lhs.true85.i.i:                              ; preds = %if.end83.i.i
  %ap86.i.i = getelementptr inbounds %struct.sta_info, ptr %s.0.lcssa.i23.i.i, i32 0, i32 32
  %323 = ptrtoint ptr %ap86.i.i to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load i32, ptr %ap86.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %324)
  %tobool87.not.i.i = icmp eq i32 %324, 0
  br i1 %tobool87.not.i.i, label %land.lhs.true85.i.i.if.end113.i.i_crit_edge, label %if.then88.i138.i

land.lhs.true85.i.i.if.end113.i.i_crit_edge:      ; preds = %land.lhs.true85.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end113.i.i

if.then88.i138.i:                                 ; preds = %land.lhs.true85.i.i
  %last_beacon.i135.i = getelementptr inbounds %struct.sta_info, ptr %s.0.lcssa.i23.i.i, i32 0, i32 34, i32 0, i32 3
  %325 = ptrtoint ptr %last_beacon.i135.i to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load i32, ptr %last_beacon.i135.i, align 4
  %listen_interval.i136.i = getelementptr inbounds %struct.sta_info, ptr %s.0.lcssa.i23.i.i, i32 0, i32 8
  %327 = ptrtoint ptr %listen_interval.i136.i to i32
  call void @__asan_load2_noabort(i32 %327)
  %328 = load i16, ptr %listen_interval.i136.i, align 2
  %conv90.i.i = zext i16 %328 to i32
  %mul91.i.i = mul nuw nsw i32 %conv90.i.i, 1000
  %div1.i.i = lshr i32 %mul91.i.i, 10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %329 = load volatile i32, ptr @jiffies, align 128
  %add92.i.i = sub i32 %326, %329
  %sub93.i.i = add i32 %add92.i.i, %div1.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub93.i.i)
  %cmp94.i137.i = icmp slt i32 %sub93.i.i, 0
  br i1 %cmp94.i137.i, label %do.end100.i.i, label %if.then88.i138.i.fail.i.i_crit_edge

if.then88.i138.i.fail.i.i_crit_edge:              ; preds = %if.then88.i138.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail.i.i

do.end100.i.i:                                    ; preds = %if.then88.i138.i
  call void @__sanitizer_cov_trace_pc() #14
  %u89.i.i = getelementptr inbounds %struct.sta_info, ptr %s.0.lcssa.i23.i.i, i32 0, i32 34
  %addr.i.i = getelementptr inbounds %struct.sta_info, ptr %s.0.lcssa.i23.i.i, i32 0, i32 4
  %call105.i139.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.213, ptr noundef %17, ptr noundef %addr.i.i) #15
  %330 = ptrtoint ptr %ap86.i.i to i32
  call void @__asan_store4_noabort(i32 %330)
  store i32 0, ptr %ap86.i.i, align 4
  %flags.i140.i = getelementptr inbounds %struct.sta_info, ptr %s.0.lcssa.i23.i.i, i32 0, i32 6
  %331 = ptrtoint ptr %flags.i140.i to i32
  call void @__asan_store4_noabort(i32 %331)
  store i32 0, ptr %flags.i140.i, align 4
  %332 = ptrtoint ptr %u89.i.i to i32
  call void @__asan_store4_noabort(i32 %332)
  store ptr null, ptr %u89.i.i, align 4
  br label %if.end113.i.i

if.end113.i.i:                                    ; preds = %do.end100.i.i, %land.lhs.true85.i.i.if.end113.i.i_crit_edge, %if.end83.i.i.if.end113.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %289)
  %cmp119.i.i = icmp eq i16 %289, 256
  %or.cond5.i.i = select i1 %cmp48.i.i, i1 %cmp119.i.i, i1 false
  br i1 %or.cond5.i.i, label %if.end113.i.i.if.end143.i.i_crit_edge, label %lor.lhs.false121.i.i

if.end113.i.i.if.end143.i.i_crit_edge:            ; preds = %if.end113.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end143.i.i

lor.lhs.false121.i.i:                             ; preds = %if.end113.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %286)
  %cmp123.i.i = icmp eq i16 %286, 256
  br i1 %cmp123.i.i, label %land.lhs.true125.i.i, label %lor.lhs.false121.i.i.fail.i.i_crit_edge

lor.lhs.false121.i.i.fail.i.i_crit_edge:          ; preds = %lor.lhs.false121.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail.i.i

land.lhs.true125.i.i:                             ; preds = %lor.lhs.false121.i.i
  %333 = zext i16 %289 to i64
  call void @__sanitizer_cov_trace_switch(i64 %333, ptr @__sancov_gen_cov_switch_values.267)
  switch i16 %289, label %land.lhs.true125.i.i.fail.i.i_crit_edge [
    i16 256, label %land.lhs.true125.i.i.if.end143.i.i_crit_edge
    i16 768, label %land.lhs.true133.i.i
  ]

land.lhs.true125.i.i.if.end143.i.i_crit_edge:     ; preds = %land.lhs.true125.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end143.i.i

land.lhs.true125.i.i.fail.i.i_crit_edge:          ; preds = %land.lhs.true125.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail.i.i

land.lhs.true133.i.i:                             ; preds = %land.lhs.true125.i.i
  br i1 %tobool.not27.i.i, label %land.lhs.true133.i.i.fail.i.i_crit_edge, label %land.lhs.true136.i.i

land.lhs.true133.i.i.fail.i.i_crit_edge:          ; preds = %land.lhs.true133.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail.i.i

land.lhs.true136.i.i:                             ; preds = %land.lhs.true133.i.i
  %u137.i.i = getelementptr inbounds %struct.sta_info, ptr %s.0.lcssa.i23.i.i, i32 0, i32 34
  %334 = ptrtoint ptr %u137.i.i to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %u137.i.i, align 4
  %cmp139.not.i.i = icmp eq ptr %335, null
  br i1 %cmp139.not.i.i, label %land.lhs.true136.i.i.fail.i.i_crit_edge, label %land.lhs.true136.i.i.if.end160.i.i_crit_edge

land.lhs.true136.i.i.if.end160.i.i_crit_edge:     ; preds = %land.lhs.true136.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end160.i.i

land.lhs.true136.i.i.fail.i.i_crit_edge:          ; preds = %land.lhs.true136.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail.i.i

if.end143.i.i:                                    ; preds = %land.lhs.true125.i.i.if.end143.i.i_crit_edge, %if.end113.i.i.if.end143.i.i_crit_edge
  br i1 %tobool.not27.i.i, label %if.then146.i.i, label %if.end143.i.i.if.end160.i.i_crit_edge

if.end143.i.i.if.end160.i.i_crit_edge:            ; preds = %if.end143.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end160.i.i

if.then146.i.i:                                   ; preds = %if.end143.i.i
  %336 = ptrtoint ptr %ap to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %ap, align 4
  %num_sta.i.i = getelementptr inbounds %struct.ap_data, ptr %337, i32 0, i32 8
  %338 = ptrtoint ptr %num_sta.i.i to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load i32, ptr %num_sta.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %339)
  %cmp148.i.i = icmp sgt i32 %339, 1023
  br i1 %cmp148.i.i, label %if.then146.i.i.fail.i.i_crit_edge, label %if.end151.i.i

if.then146.i.i.fail.i.i_crit_edge:                ; preds = %if.then146.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail.i.i

if.end151.i.i:                                    ; preds = %if.then146.i.i
  %call155.i.i = tail call fastcc ptr @ap_add_sta(ptr noundef %337, ptr noundef %addr211.i.i) #12
  %cmp156.i.i = icmp eq ptr %call155.i.i, null
  br i1 %cmp156.i.i, label %if.end151.i.i.fail.i.i_crit_edge, label %if.end151.i.i.if.end160.i.i_crit_edge

if.end151.i.i.if.end160.i.i_crit_edge:            ; preds = %if.end151.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end160.i.i

if.end151.i.i.fail.i.i_crit_edge:                 ; preds = %if.end151.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail.i.i

if.end160.i.i:                                    ; preds = %if.end151.i.i.if.end160.i.i_crit_edge, %if.end143.i.i.if.end160.i.i_crit_edge, %land.lhs.true136.i.i.if.end160.i.i_crit_edge
  %sta.0.i141.i = phi ptr [ %call155.i.i, %if.end151.i.i.if.end160.i.i_crit_edge ], [ %s.0.lcssa.i23.i.i, %if.end143.i.i.if.end160.i.i_crit_edge ], [ %s.0.lcssa.i23.i.i, %land.lhs.true136.i.i.if.end160.i.i_crit_edge ]
  %txt.2.i.i = phi ptr [ @.str.217, %if.end151.i.i.if.end160.i.i_crit_edge ], [ @.str.100, %if.end143.i.i.if.end160.i.i_crit_edge ], [ @.str.100, %land.lhs.true136.i.i.if.end160.i.i_crit_edge ]
  %340 = zext i16 %287 to i64
  call void @__sanitizer_cov_trace_switch(i64 %340, ptr @__sancov_gen_cov_switch_values.268)
  switch i16 %287, label %if.end160.i.i.fail.i.i_crit_edge [
    i16 0, label %sw.bb.i.i
    i16 1, label %sw.bb163.i.i
  ]

if.end160.i.i.fail.i.i_crit_edge:                 ; preds = %if.end160.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail.i.i

sw.bb.i.i:                                        ; preds = %if.end160.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %flags162.i.i = getelementptr inbounds %struct.sta_info, ptr %sta.0.i141.i, i32 0, i32 6
  %341 = ptrtoint ptr %flags162.i.i to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load i32, ptr %flags162.i.i, align 4
  %or.i142.i = or i32 %342, 1
  store i32 %or.i142.i, ptr %flags162.i.i, align 4
  br label %fail.i.i

sw.bb163.i.i:                                     ; preds = %if.end160.i.i
  %u168.i.i = getelementptr inbounds %struct.sta_info, ptr %sta.0.i141.i, i32 0, i32 34
  %343 = ptrtoint ptr %u168.i.i to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load ptr, ptr %u168.i.i, align 4
  %cmp170.i.i = icmp eq ptr %344, null
  br i1 %cmp119.i.i, label %if.then167.i.i, label %if.else184.i.i

if.then167.i.i:                                   ; preds = %sw.bb163.i.i
  br i1 %cmp170.i.i, label %if.then172.i.i, label %if.then167.i.i.fail.i.i_crit_edge

if.then167.i.i.fail.i.i_crit_edge:                ; preds = %if.then167.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail.i.i

if.then172.i.i:                                   ; preds = %if.then167.i.i
  %345 = ptrtoint ptr %ap to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %ap, align 4
  %crypt.i = getelementptr inbounds %struct.ap_data, ptr %346, i32 0, i32 26
  %347 = ptrtoint ptr %crypt.i to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load ptr, ptr %crypt.i, align 4
  %cmp.i15 = icmp eq ptr %348, null
  br i1 %cmp.i15, label %if.then.i, label %if.then172.i.i.if.end4.i_crit_edge

if.then172.i.i.if.end4.i_crit_edge:               ; preds = %if.then172.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i

if.then.i:                                        ; preds = %if.then172.i.i
  %call.i.i16 = tail call ptr @lib80211_get_crypto_ops(ptr noundef nonnull @.str.228) #12
  %349 = ptrtoint ptr %crypt.i to i32
  call void @__asan_store4_noabort(i32 %349)
  store ptr %call.i.i16, ptr %crypt.i, align 4
  %tobool.not.i.i17 = icmp eq ptr %call.i.i16, null
  br i1 %tobool.not.i.i17, label %if.then.i.ap_crypt_init.exit.i_crit_edge, label %if.then.i.i

if.then.i.ap_crypt_init.exit.i_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ap_crypt_init.exit.i

if.then.i.i:                                      ; preds = %if.then.i
  %init.i.i = getelementptr inbounds %struct.lib80211_crypto_ops, ptr %call.i.i16, i32 0, i32 2
  %350 = ptrtoint ptr %init.i.i to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %init.i.i, align 4
  %tobool3.not.i.i = icmp eq ptr %351, null
  br i1 %tobool3.not.i.i, label %if.then.i.i.if.end16.i.i_crit_edge, label %if.then4.i.i

if.then.i.i.if.end16.i.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16.i.i

if.then4.i.i:                                     ; preds = %if.then.i.i
  %call7.i47.i = tail call ptr %351(i32 noundef 0) #12
  %crypt_priv.i.i = getelementptr inbounds %struct.ap_data, ptr %346, i32 0, i32 27
  %352 = ptrtoint ptr %crypt_priv.i.i to i32
  call void @__asan_store4_noabort(i32 %352)
  store ptr %call7.i47.i, ptr %crypt_priv.i.i, align 4
  %cmp.i.i18 = icmp eq ptr %call7.i47.i, null
  br i1 %cmp.i.i18, label %if.then9.i.i, label %if.else.i.i19

if.then9.i.i:                                     ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %353 = ptrtoint ptr %crypt.i to i32
  call void @__asan_store4_noabort(i32 %353)
  store ptr null, ptr %crypt.i, align 4
  br label %ap_crypt_init.exit.i

if.else.i.i19:                                    ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 13, ptr nonnull %key.i.i) #12
  %354 = call ptr @memset(ptr %key.i.i, i32 255, i32 13)
  call void @get_random_bytes(ptr noundef nonnull %key.i.i, i32 noundef 13) #12
  %355 = ptrtoint ptr %crypt.i to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load ptr, ptr %crypt.i, align 4
  %set_key.i.i = getelementptr inbounds %struct.lib80211_crypto_ops, ptr %356, i32 0, i32 8
  %357 = ptrtoint ptr %set_key.i.i to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %set_key.i.i, align 4
  %359 = ptrtoint ptr %crypt_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load ptr, ptr %crypt_priv.i.i, align 4
  %call14.i.i = call i32 %358(ptr noundef nonnull %key.i.i, i32 noundef 13, ptr noundef null, ptr noundef %360) #12
  call void @llvm.lifetime.end.p0(i64 13, ptr nonnull %key.i.i) #12
  br label %if.end16.i.i

if.end16.i.i:                                     ; preds = %if.else.i.i19, %if.then.i.i.if.end16.i.i_crit_edge
  %361 = ptrtoint ptr %crypt.i to i32
  call void @__asan_load4_noabort(i32 %361)
  %.pr.i.i20 = load ptr, ptr %crypt.i, align 4
  %cmp18.i.i = icmp eq ptr %.pr.i.i20, null
  br i1 %cmp18.i.i, label %if.end16.i.i.ap_crypt_init.exit.i_crit_edge, label %if.end16.i.i.if.end4.i_crit_edge

if.end16.i.i.if.end4.i_crit_edge:                 ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i

if.end16.i.i.ap_crypt_init.exit.i_crit_edge:      ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ap_crypt_init.exit.i

ap_crypt_init.exit.i:                             ; preds = %if.end16.i.i.ap_crypt_init.exit.i_crit_edge, %if.then9.i.i, %if.then.i.ap_crypt_init.exit.i_crit_edge
  %call20.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.229) #15
  %362 = ptrtoint ptr %crypt.i to i32
  call void @__asan_load4_noabort(i32 %362)
  %.pr.i = load ptr, ptr %crypt.i, align 4
  %cmp2.i = icmp eq ptr %.pr.i, null
  br i1 %cmp2.i, label %ap_crypt_init.exit.i.ap_auth_make_challenge.exit_crit_edge, label %ap_crypt_init.exit.i.if.end4.i_crit_edge

ap_crypt_init.exit.i.if.end4.i_crit_edge:         ; preds = %ap_crypt_init.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i

ap_crypt_init.exit.i.ap_auth_make_challenge.exit_crit_edge: ; preds = %ap_crypt_init.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ap_auth_make_challenge.exit

if.end4.i:                                        ; preds = %ap_crypt_init.exit.i.if.end4.i_crit_edge, %if.end16.i.i.if.end4.i_crit_edge, %if.then172.i.i.if.end4.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %363 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %363, i32 noundef 2592, i32 noundef 128) #16
  %cmp5.i = icmp eq ptr %call7.i.i, null
  br i1 %cmp5.i, label %do.end.i21, label %if.end11.i

do.end.i21:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  %call8.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.226) #15
  br label %ap_auth_make_challenge.exit

if.end11.i:                                       ; preds = %if.end4.i
  %364 = ptrtoint ptr %crypt.i to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load ptr, ptr %crypt.i, align 4
  %extra_mpdu_prefix_len.i = getelementptr inbounds %struct.lib80211_crypto_ops, ptr %365, i32 0, i32 13
  %366 = ptrtoint ptr %extra_mpdu_prefix_len.i to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load i32, ptr %extra_mpdu_prefix_len.i, align 4
  %add.i = add i32 %367, 128
  %extra_mpdu_postfix_len.i = getelementptr inbounds %struct.lib80211_crypto_ops, ptr %365, i32 0, i32 14
  %368 = ptrtoint ptr %extra_mpdu_postfix_len.i to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load i32, ptr %extra_mpdu_postfix_len.i, align 4
  %add14.i = add i32 %add.i, %369
  %call.i.i.i22 = call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %add14.i, i32 noundef 2592) #12
  %cmp16.i = icmp eq ptr %call.i.i.i22, null
  br i1 %cmp16.i, label %if.then17.i23, label %if.end18.i

if.then17.i23:                                    ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %ap_auth_make_challenge.exit

if.end18.i:                                       ; preds = %if.end11.i
  %370 = ptrtoint ptr %crypt.i to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load ptr, ptr %crypt.i, align 4
  %extra_mpdu_prefix_len20.i = getelementptr inbounds %struct.lib80211_crypto_ops, ptr %371, i32 0, i32 13
  %372 = ptrtoint ptr %extra_mpdu_prefix_len20.i to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load i32, ptr %extra_mpdu_prefix_len20.i, align 4
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i22, i32 0, i32 19
  %374 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i24 = getelementptr i8, ptr %375, i32 %373
  store ptr %add.ptr.i.i24, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i22, i32 0, i32 16
  %376 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i25 = getelementptr i8, ptr %377, i32 %373
  store ptr %add.ptr1.i.i25, ptr %tail.i.i, align 8
  %call.i48.i = call ptr @skb_put(ptr noundef nonnull %call.i.i.i22, i32 noundef 128) #12
  %378 = call ptr @memset(ptr %call.i48.i, i32 0, i32 128)
  %379 = ptrtoint ptr %crypt.i to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load ptr, ptr %crypt.i, align 4
  %encrypt_mpdu.i = getelementptr inbounds %struct.lib80211_crypto_ops, ptr %380, i32 0, i32 4
  %381 = ptrtoint ptr %encrypt_mpdu.i to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load ptr, ptr %encrypt_mpdu.i, align 4
  %crypt_priv.i = getelementptr inbounds %struct.ap_data, ptr %346, i32 0, i32 27
  %383 = ptrtoint ptr %crypt_priv.i to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load ptr, ptr %crypt_priv.i, align 4
  %call23.i = call i32 %382(ptr noundef nonnull %call.i.i.i22, i32 noundef 0, ptr noundef %384) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool.not.i26 = icmp eq i32 %call23.i, 0
  br i1 %tobool.not.i26, label %if.end25.i, label %if.then24.i

if.then24.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @consume_skb(ptr noundef nonnull %call.i.i.i22) #12
  call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %ap_auth_make_challenge.exit

if.end25.i:                                       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #14
  %385 = ptrtoint ptr %crypt.i to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load ptr, ptr %crypt.i, align 4
  %extra_mpdu_prefix_len27.i = getelementptr inbounds %struct.lib80211_crypto_ops, ptr %386, i32 0, i32 13
  %387 = ptrtoint ptr %extra_mpdu_prefix_len27.i to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load i32, ptr %extra_mpdu_prefix_len27.i, align 4
  %389 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i50.i = getelementptr i8, ptr %390, i32 %388
  %391 = call ptr @memcpy(ptr %call7.i.i, ptr %add.ptr.i50.i, i32 128)
  call void @consume_skb(ptr noundef nonnull %call.i.i.i22) #12
  br label %ap_auth_make_challenge.exit

ap_auth_make_challenge.exit:                      ; preds = %if.end25.i, %if.then24.i, %if.then17.i23, %do.end.i21, %ap_crypt_init.exit.i.ap_auth_make_challenge.exit_crit_edge
  %retval.0.i = phi ptr [ null, %do.end.i21 ], [ null, %if.then17.i23 ], [ null, %if.then24.i ], [ %call7.i.i, %if.end25.i ], [ null, %ap_crypt_init.exit.i.ap_auth_make_challenge.exit_crit_edge ]
  %392 = ptrtoint ptr %u168.i.i to i32
  call void @__asan_store4_noabort(i32 %392)
  store ptr %retval.0.i, ptr %u168.i.i, align 4
  %cmp179.i.i = icmp eq ptr %retval.0.i, null
  %spec.select.i.i = zext i1 %cmp179.i.i to i16
  br label %fail.i.i

if.else184.i.i:                                   ; preds = %sw.bb163.i.i
  %cmp190.i.i = icmp eq ptr %challenge.2.i.i, null
  %or.cond6.i.i = select i1 %cmp170.i.i, i1 true, i1 %cmp190.i.i
  br i1 %or.cond6.i.i, label %if.else184.i.i.fail.i.i_crit_edge, label %lor.lhs.false192.i.i

if.else184.i.i.fail.i.i_crit_edge:                ; preds = %if.else184.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail.i.i

lor.lhs.false192.i.i:                             ; preds = %if.else184.i.i
  %bcmp.i143.i = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(128) %344, ptr noundef nonnull dereferenceable(128) %challenge.2.i.i, i32 128) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i143.i)
  %cmp196.not.i.i = icmp eq i32 %bcmp.i143.i, 0
  br i1 %cmp196.not.i.i, label %lor.lhs.false198.i.i, label %lor.lhs.false192.i.i.fail.i.i_crit_edge

lor.lhs.false192.i.i.fail.i.i_crit_edge:          ; preds = %lor.lhs.false192.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail.i.i

lor.lhs.false198.i.i:                             ; preds = %lor.lhs.false192.i.i
  %393 = ptrtoint ptr %19 to i32
  call void @__asan_load2_noabort(i32 %393)
  %394 = load i16, ptr %19, align 2
  %395 = and i16 %394, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %395)
  %cmp.i20.not.i.i = icmp eq i16 %395, 0
  br i1 %cmp.i20.not.i.i, label %lor.lhs.false198.i.i.fail.i.i_crit_edge, label %if.end202.i.i

lor.lhs.false198.i.i.fail.i.i_crit_edge:          ; preds = %lor.lhs.false198.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail.i.i

if.end202.i.i:                                    ; preds = %lor.lhs.false198.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %flags203.i.i = getelementptr inbounds %struct.sta_info, ptr %sta.0.i141.i, i32 0, i32 6
  %396 = ptrtoint ptr %flags203.i.i to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load i32, ptr %flags203.i.i, align 4
  %or204.i.i = or i32 %397, 1
  store i32 %or204.i.i, ptr %flags203.i.i, align 4
  tail call void @kfree(ptr noundef nonnull %344) #12
  %398 = ptrtoint ptr %u168.i.i to i32
  call void @__asan_store4_noabort(i32 %398)
  store ptr null, ptr %u168.i.i, align 4
  br label %fail.i.i

fail.i.i:                                         ; preds = %if.end202.i.i, %lor.lhs.false198.i.i.fail.i.i_crit_edge, %lor.lhs.false192.i.i.fail.i.i_crit_edge, %if.else184.i.i.fail.i.i_crit_edge, %ap_auth_make_challenge.exit, %if.then167.i.i.fail.i.i_crit_edge, %sw.bb.i.i, %if.end160.i.i.fail.i.i_crit_edge, %if.end151.i.i.fail.i.i_crit_edge, %if.then146.i.i.fail.i.i_crit_edge, %land.lhs.true136.i.i.fail.i.i_crit_edge, %land.lhs.true133.i.i.fail.i.i_crit_edge, %land.lhs.true125.i.i.fail.i.i_crit_edge, %lor.lhs.false121.i.i.fail.i.i_crit_edge, %if.then88.i138.i.fail.i.i_crit_edge, %if.end75.i.i.fail.i.i_crit_edge, %if.then69.i.i.fail.i.i_crit_edge, %lor.lhs.false50.i.i.fail.i.i_crit_edge, %ap_control_mac_deny.exit.i.i.fail.i.i_crit_edge, %if.end31.i.i.fail.i.i_crit_edge
  %resp.2.i.i = phi i16 [ 0, %if.end160.i.i.fail.i.i_crit_edge ], [ 0, %if.then167.i.i.fail.i.i_crit_edge ], [ 0, %if.end202.i.i ], [ 0, %sw.bb.i.i ], [ 1, %ap_control_mac_deny.exit.i.i.fail.i.i_crit_edge ], [ 1, %if.end31.i.i.fail.i.i_crit_edge ], [ 13, %lor.lhs.false50.i.i.fail.i.i_crit_edge ], [ 1, %if.then88.i138.i.fail.i.i_crit_edge ], [ 14, %land.lhs.true125.i.i.fail.i.i_crit_edge ], [ 14, %land.lhs.true136.i.i.fail.i.i_crit_edge ], [ 14, %land.lhs.true133.i.i.fail.i.i_crit_edge ], [ 14, %lor.lhs.false121.i.i.fail.i.i_crit_edge ], [ 1, %if.then146.i.i.fail.i.i_crit_edge ], [ 1, %if.end151.i.i.fail.i.i_crit_edge ], [ %spec.select.i.i, %ap_auth_make_challenge.exit ], [ 15, %lor.lhs.false198.i.i.fail.i.i_crit_edge ], [ 15, %lor.lhs.false192.i.i.fail.i.i_crit_edge ], [ 15, %if.else184.i.i.fail.i.i_crit_edge ], [ 15, %if.then69.i.i.fail.i.i_crit_edge ], [ 15, %if.end75.i.i.fail.i.i_crit_edge ]
  %sta.1.i.i = phi ptr [ %sta.0.i141.i, %if.end160.i.i.fail.i.i_crit_edge ], [ %sta.0.i141.i, %if.then167.i.i.fail.i.i_crit_edge ], [ %sta.0.i141.i, %if.end202.i.i ], [ %sta.0.i141.i, %sw.bb.i.i ], [ %s.0.lcssa.i23.i.i, %ap_control_mac_deny.exit.i.i.fail.i.i_crit_edge ], [ %s.0.lcssa.i23.i.i, %if.end31.i.i.fail.i.i_crit_edge ], [ %s.0.lcssa.i23.i.i, %lor.lhs.false50.i.i.fail.i.i_crit_edge ], [ %s.0.lcssa.i23.i.i, %if.then88.i138.i.fail.i.i_crit_edge ], [ %s.0.lcssa.i23.i.i, %land.lhs.true125.i.i.fail.i.i_crit_edge ], [ %s.0.lcssa.i23.i.i, %land.lhs.true136.i.i.fail.i.i_crit_edge ], [ %s.0.lcssa.i23.i.i, %land.lhs.true133.i.i.fail.i.i_crit_edge ], [ %s.0.lcssa.i23.i.i, %lor.lhs.false121.i.i.fail.i.i_crit_edge ], [ null, %if.then146.i.i.fail.i.i_crit_edge ], [ null, %if.end151.i.i.fail.i.i_crit_edge ], [ %sta.0.i141.i, %ap_auth_make_challenge.exit ], [ %sta.0.i141.i, %lor.lhs.false198.i.i.fail.i.i_crit_edge ], [ %sta.0.i141.i, %lor.lhs.false192.i.i.fail.i.i_crit_edge ], [ %sta.0.i141.i, %if.else184.i.i.fail.i.i_crit_edge ], [ %s.0.lcssa.i23.i.i, %if.then69.i.i.fail.i.i_crit_edge ], [ %s.0.lcssa.i23.i.i, %if.end75.i.i.fail.i.i_crit_edge ]
  %txt.3.i.i = phi ptr [ %txt.2.i.i, %if.end160.i.i.fail.i.i_crit_edge ], [ %txt.2.i.i, %if.then167.i.i.fail.i.i_crit_edge ], [ @.str.222, %if.end202.i.i ], [ @.str.220, %sw.bb.i.i ], [ @.str.208, %ap_control_mac_deny.exit.i.i.fail.i.i_crit_edge ], [ @.str.208, %if.end31.i.i.fail.i.i_crit_edge ], [ @.str.209, %lor.lhs.false50.i.i.fail.i.i_crit_edge ], [ @.str.215, %if.then88.i138.i.fail.i.i_crit_edge ], [ @.str.216, %land.lhs.true125.i.i.fail.i.i_crit_edge ], [ @.str.216, %land.lhs.true136.i.i.fail.i.i_crit_edge ], [ @.str.216, %land.lhs.true133.i.i.fail.i.i_crit_edge ], [ @.str.216, %lor.lhs.false121.i.i.fail.i.i_crit_edge ], [ @.str.218, %if.then146.i.i.fail.i.i_crit_edge ], [ @.str.219, %if.end151.i.i.fail.i.i_crit_edge ], [ %txt.2.i.i, %ap_auth_make_challenge.exit ], [ @.str.221, %lor.lhs.false198.i.i.fail.i.i_crit_edge ], [ @.str.221, %lor.lhs.false192.i.i.fail.i.i_crit_edge ], [ @.str.221, %if.else184.i.i.fail.i.i_crit_edge ], [ @.str.210, %if.then69.i.i.fail.i.i_crit_edge ], [ @.str.211, %if.end75.i.i.fail.i.i_crit_edge ]
  %399 = ptrtoint ptr %body.i.i to i32
  call void @__asan_store2_noabort(i32 %399)
  store i16 %286, ptr %body.i.i, align 2
  %incdec.ptr211.i.i = getelementptr inbounds i16, ptr %body.i.i, i32 1
  %conv212.i.i = zext i16 %290 to i32
  %add213.i.i = add i16 %290, 1
  %400 = call i16 @llvm.bswap.i16(i16 %add213.i.i) #12
  %401 = ptrtoint ptr %incdec.ptr211.i.i to i32
  call void @__asan_store2_noabort(i32 %401)
  store i16 %400, ptr %incdec.ptr211.i.i, align 2
  %incdec.ptr215.i.i = getelementptr inbounds i16, ptr %body.i.i, i32 2
  %402 = shl nuw nsw i16 %resp.2.i.i, 8
  %403 = ptrtoint ptr %incdec.ptr215.i.i to i32
  call void @__asan_store2_noabort(i32 %403)
  store i16 %402, ptr %incdec.ptr215.i.i, align 2
  %incdec.ptr216.i.i = getelementptr inbounds i16, ptr %body.i.i, i32 3
  %conv217.i.i = zext i16 %resp.2.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %resp.2.i.i)
  %cmp218.i.i = icmp ne i16 %resp.2.i.i, 0
  %cmp221.not.i.i = icmp eq ptr %sta.1.i.i, null
  %or.cond7.i.i = select i1 %cmp218.i.i, i1 true, i1 %cmp221.not.i.i
  br i1 %or.cond7.i.i, label %fail.i.i.if.end244.i.i_crit_edge, label %land.lhs.true223.i.i

fail.i.i.if.end244.i.i_crit_edge:                 ; preds = %fail.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end244.i.i

land.lhs.true223.i.i:                             ; preds = %fail.i.i
  %u224.i.i = getelementptr inbounds %struct.sta_info, ptr %sta.1.i.i, i32 0, i32 34
  %404 = ptrtoint ptr %u224.i.i to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load ptr, ptr %u224.i.i, align 4
  %cmp226.not.i.i = icmp ne ptr %405, null
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %286)
  %cmp230.i.i = icmp eq i16 %286, 256
  %or.cond8.i.i = select i1 %cmp226.not.i.i, i1 %cmp230.i.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %289)
  %cmp234.i.i = icmp eq i16 %289, 256
  %or.cond9.i.i = select i1 %or.cond8.i.i, i1 %cmp234.i.i, i1 false
  br i1 %or.cond9.i.i, label %if.then236.i.i, label %land.lhs.true223.i.i.if.end244.i.i_crit_edge

land.lhs.true223.i.i.if.end244.i.i_crit_edge:     ; preds = %land.lhs.true223.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end244.i.i

if.then236.i.i:                                   ; preds = %land.lhs.true223.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %incdec.ptr238.i.i = getelementptr inbounds i8, ptr %incdec.ptr216.i.i, i32 1
  %406 = ptrtoint ptr %incdec.ptr216.i.i to i32
  call void @__asan_store1_noabort(i32 %406)
  store i8 16, ptr %incdec.ptr216.i.i, align 2
  %407 = ptrtoint ptr %incdec.ptr238.i.i to i32
  call void @__asan_store1_noabort(i32 %407)
  store i8 -128, ptr %incdec.ptr238.i.i, align 1
  %incdec.ptr240.i.i = getelementptr inbounds i16, ptr %body.i.i, i32 4
  %408 = call ptr @memcpy(ptr %incdec.ptr240.i.i, ptr %405, i32 128)
  br label %if.end244.i.i

if.end244.i.i:                                    ; preds = %if.then236.i.i, %land.lhs.true223.i.i.if.end244.i.i_crit_edge, %fail.i.i.if.end244.i.i_crit_edge
  %olen.0.i.i = phi i32 [ 136, %if.then236.i.i ], [ 6, %land.lhs.true223.i.i.if.end244.i.i_crit_edge ], [ 6, %fail.i.i.if.end244.i.i_crit_edge ]
  %tx_callback_auth.i.i = getelementptr inbounds %struct.ap_data, ptr %246, i32 0, i32 23
  %409 = ptrtoint ptr %tx_callback_auth.i.i to i32
  call void @__asan_load2_noabort(i32 %409)
  %410 = load i16, ptr %tx_callback_auth.i.i, align 4
  call fastcc void @prism2_send_mgmt(ptr noundef %17, i16 noundef zeroext 176, ptr noundef nonnull %body.i.i, i32 noundef %olen.0.i.i, ptr noundef %addr211.i.i, i16 noundef zeroext %410) #12
  br i1 %cmp221.not.i.i, label %if.end244.i.i.if.end251.i.i_crit_edge, label %if.then249.i.i

if.end244.i.i.if.end251.i.i_crit_edge:            ; preds = %if.end244.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end251.i.i

if.then249.i.i:                                   ; preds = %if.end244.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %411 = load volatile i32, ptr @jiffies, align 128
  %last_rx.i144.i = getelementptr inbounds %struct.sta_info, ptr %sta.1.i.i, i32 0, i32 12
  %412 = ptrtoint ptr %last_rx.i144.i to i32
  call void @__asan_store4_noabort(i32 %412)
  store i32 %411, ptr %last_rx.i144.i, align 4
  %users250.i.i = getelementptr inbounds %struct.sta_info, ptr %sta.1.i.i, i32 0, i32 2
  %call.i.i10.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %users250.i.i, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr %users250.i.i, i32 1, i32 3, i32 1) #12
  %413 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users250.i.i, ptr %users250.i.i, i32 1, ptr elementtype(i32) %users250.i.i) #12, !srcloc !532
  br label %if.end251.i.i

if.end251.i.i:                                    ; preds = %if.then249.i.i, %if.end244.i.i.if.end251.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %resp.2.i.i)
  %tobool252.not.i.i = icmp eq i16 %resp.2.i.i, 0
  br i1 %tobool252.not.i.i, label %if.end251.i.i.handle_authen.exit.i_crit_edge, label %do.end257.i.i

if.end251.i.i.handle_authen.exit.i_crit_edge:     ; preds = %if.end251.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %handle_authen.exit.i

do.end257.i.i:                                    ; preds = %if.end251.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv263.i.i = zext i16 %287 to i32
  %conv265.i.i = zext i16 %293 to i32
  %414 = ptrtoint ptr %19 to i32
  call void @__asan_load2_noabort(i32 %414)
  %415 = load i16, ptr %19, align 2
  %416 = call i16 @llvm.bswap.i16(i16 %415) #12
  %conv267.i.i = zext i16 %416 to i32
  %call269.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.224, ptr noundef %17, ptr noundef %addr211.i.i, i32 noundef %conv263.i.i, i32 noundef %conv212.i.i, i32 noundef %conv265.i.i, i32 noundef %sub.i88.i, i32 noundef %conv267.i.i, i32 noundef %conv217.i.i, ptr noundef nonnull %txt.3.i.i) #15
  br label %handle_authen.exit.i

handle_authen.exit.i:                             ; preds = %do.end257.i.i, %if.end251.i.i.handle_authen.exit.i_crit_edge, %do.end.i92.i
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %body.i.i) #12
  br label %handle_ap_item.exit

sw.bb160.i:                                       ; preds = %if.end128.i
  %417 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load i32, ptr %len, align 4
  %sub.i148.i = add i32 %418, -24
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub.i148.i)
  %cmp.i149.i = icmp slt i32 %sub.i148.i, 2
  br i1 %cmp.i149.i, label %do.end.i151.i, label %if.end.i164.i

do.end.i151.i:                                    ; preds = %sw.bb160.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i150.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.231, i32 noundef %sub.i148.i) #15
  br label %handle_ap_item.exit

if.end.i164.i:                                    ; preds = %sw.bb160.i
  %add.ptr.i153.i = getelementptr i8, ptr %19, i32 24
  %419 = ptrtoint ptr %add.ptr.i153.i to i32
  call void @__asan_load2_noabort(i32 %419)
  %420 = load i16, ptr %add.ptr.i153.i, align 2
  %421 = tail call i16 @llvm.bswap.i16(i16 %420) #12
  %addr2.i154.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %19, i32 0, i32 3
  %conv.i155.i = zext i16 %421 to i32
  %call10.i156.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.234, ptr noundef %17, ptr noundef %addr2.i154.i, i32 noundef %sub.i148.i, i32 noundef %conv.i155.i) #15
  %422 = ptrtoint ptr %ap to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load ptr, ptr %ap, align 4
  %sta_table_lock.i158.i = getelementptr inbounds %struct.ap_data, ptr %423, i32 0, i32 7
  tail call void @_raw_spin_lock_bh(ptr noundef %sta_table_lock.i158.i) #12
  %424 = ptrtoint ptr %ap to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load ptr, ptr %ap, align 4
  %arrayidx.i.i159.i = getelementptr %struct.ieee80211_hdr, ptr %19, i32 0, i32 3, i32 5
  %426 = ptrtoint ptr %arrayidx.i.i159.i to i32
  call void @__asan_load1_noabort(i32 %426)
  %427 = load i8, ptr %arrayidx.i.i159.i, align 1
  %idxprom.i.i160.i = zext i8 %427 to i32
  %arrayidx1.i.i161.i = getelementptr %struct.ap_data, ptr %425, i32 0, i32 10, i32 %idxprom.i.i160.i
  %428 = ptrtoint ptr %arrayidx1.i.i161.i to i32
  call void @__asan_load4_noabort(i32 %428)
  %s.06.i.i162.i = load ptr, ptr %arrayidx1.i.i161.i, align 4
  %cmp.not7.i.i163.i = icmp eq ptr %s.06.i.i162.i, null
  br i1 %cmp.not7.i.i163.i, label %if.end.i164.i.do.end35.i194.i_crit_edge, label %land.rhs.lr.ph.i.i166.i

if.end.i164.i.do.end35.i194.i_crit_edge:          ; preds = %if.end.i164.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end35.i194.i

land.rhs.lr.ph.i.i166.i:                          ; preds = %if.end.i164.i
  %429 = ptrtoint ptr %addr2.i154.i to i32
  call void @__asan_load4_noabort(i32 %429)
  %430 = load i32, ptr %addr2.i154.i, align 4
  %add.ptr1.i.i.i165.i = getelementptr %struct.ieee80211_hdr, ptr %19, i32 0, i32 3, i32 4
  %431 = ptrtoint ptr %add.ptr1.i.i.i165.i to i32
  call void @__asan_load2_noabort(i32 %431)
  %432 = load i16, ptr %add.ptr1.i.i.i165.i, align 2
  br label %land.rhs.i.i175.i

land.rhs.i.i175.i:                                ; preds = %while.body.i.i179.i.land.rhs.i.i175.i_crit_edge, %land.rhs.lr.ph.i.i166.i
  %s.08.i.i167.i = phi ptr [ %s.06.i.i162.i, %land.rhs.lr.ph.i.i166.i ], [ %s.0.i.i177.i, %while.body.i.i179.i.land.rhs.i.i175.i_crit_edge ]
  %addr.i.i168.i = getelementptr inbounds %struct.sta_info, ptr %s.08.i.i167.i, i32 0, i32 4
  %433 = ptrtoint ptr %addr.i.i168.i to i32
  call void @__asan_load4_noabort(i32 %433)
  %434 = load i32, ptr %addr.i.i168.i, align 4
  %xor.i.i.i169.i = xor i32 %434, %430
  %add.ptr.i.i.i170.i = getelementptr %struct.sta_info, ptr %s.08.i.i167.i, i32 0, i32 4, i32 4
  %435 = ptrtoint ptr %add.ptr.i.i.i170.i to i32
  call void @__asan_load2_noabort(i32 %435)
  %436 = load i16, ptr %add.ptr.i.i.i170.i, align 2
  %xor37.i.i.i171.i = xor i16 %436, %432
  %xor3.i.i.i172.i = zext i16 %xor37.i.i.i171.i to i32
  %or.i.i.i173.i = or i32 %xor.i.i.i169.i, %xor3.i.i.i172.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i173.i)
  %cmp.i.i.i174.i = icmp eq i32 %or.i.i.i173.i, 0
  br i1 %cmp.i.i.i174.i, label %if.then19.i183.i, label %while.body.i.i179.i

while.body.i.i179.i:                              ; preds = %land.rhs.i.i175.i
  %hnext.i.i176.i = getelementptr inbounds %struct.sta_info, ptr %s.08.i.i167.i, i32 0, i32 1
  %437 = ptrtoint ptr %hnext.i.i176.i to i32
  call void @__asan_load4_noabort(i32 %437)
  %s.0.i.i177.i = load ptr, ptr %hnext.i.i176.i, align 4
  %cmp.not.i.i178.i = icmp eq ptr %s.0.i.i177.i, null
  br i1 %cmp.not.i.i178.i, label %while.body.i.i179.i.do.end35.i194.i_crit_edge, label %while.body.i.i179.i.land.rhs.i.i175.i_crit_edge

while.body.i.i179.i.land.rhs.i.i175.i_crit_edge:  ; preds = %while.body.i.i179.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i.i175.i

while.body.i.i179.i.do.end35.i194.i_crit_edge:    ; preds = %while.body.i.i179.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end35.i194.i

if.then19.i183.i:                                 ; preds = %land.rhs.i.i175.i
  %flags.i180.i = getelementptr inbounds %struct.sta_info, ptr %s.08.i.i167.i, i32 0, i32 6
  %438 = ptrtoint ptr %flags.i180.i to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load i32, ptr %flags.i180.i, align 4
  %and.i181.i = and i32 %439, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i181.i)
  %tobool.not.i182.i = icmp eq i32 %and.i181.i, 0
  br i1 %tobool.not.i182.i, label %if.then19.i183.i.if.end27.i191.i_crit_edge, label %land.lhs.true.i186.i

if.then19.i183.i.if.end27.i191.i_crit_edge:       ; preds = %if.then19.i183.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27.i191.i

land.lhs.true.i186.i:                             ; preds = %if.then19.i183.i
  %ap20.i184.i = getelementptr inbounds %struct.sta_info, ptr %s.08.i.i167.i, i32 0, i32 32
  %440 = ptrtoint ptr %ap20.i184.i to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load i32, ptr %ap20.i184.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %441)
  %tobool21.not.i185.i = icmp eq i32 %441, 0
  br i1 %tobool21.not.i185.i, label %if.then22.i188.i, label %land.lhs.true.i186.i.if.end27.i191.i_crit_edge

land.lhs.true.i186.i.if.end27.i191.i_crit_edge:   ; preds = %land.lhs.true.i186.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27.i191.i

if.then22.i188.i:                                 ; preds = %land.lhs.true.i186.i
  call void @__sanitizer_cov_trace_pc() #14
  %442 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load ptr, ptr %dev1.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %wrqu.i.i145.i) #12
  %444 = getelementptr inbounds i8, ptr %wrqu.i.i145.i, i32 8
  %445 = ptrtoint ptr %444 to i32
  call void @__asan_storeN_noabort(i32 %445, i32 8)
  store i64 0, ptr %444, align 4
  %sa_data.i.i187.i = getelementptr inbounds %struct.sockaddr, ptr %wrqu.i.i145.i, i32 0, i32 1
  %446 = call ptr @memcpy(ptr %sa_data.i.i187.i, ptr %addr.i.i168.i, i32 6)
  %447 = ptrtoint ptr %wrqu.i.i145.i to i32
  call void @__asan_store2_noabort(i32 %447)
  store i16 1, ptr %wrqu.i.i145.i, align 4
  call void @wireless_send_event(ptr noundef %443, i32 noundef 35844, ptr noundef nonnull %wrqu.i.i145.i, ptr noundef null) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %wrqu.i.i145.i) #12
  br label %if.end27.i191.i

if.end27.i191.i:                                  ; preds = %if.then22.i188.i, %land.lhs.true.i186.i.if.end27.i191.i_crit_edge, %if.then19.i183.i.if.end27.i191.i_crit_edge
  %448 = ptrtoint ptr %flags.i180.i to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load i32, ptr %flags.i180.i, align 4
  %and26.i189.i = and i32 %449, -4
  store i32 %and26.i189.i, ptr %flags.i180.i, align 4
  %450 = ptrtoint ptr %ap to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load ptr, ptr %ap, align 4
  %sta_table_lock29.i190.i = getelementptr inbounds %struct.ap_data, ptr %451, i32 0, i32 7
  call void @_raw_spin_unlock_bh(ptr noundef %sta_table_lock29.i190.i) #12
  br label %handle_ap_item.exit

do.end35.i194.i:                                  ; preds = %while.body.i.i179.i.do.end35.i194.i_crit_edge, %if.end.i164.i.do.end35.i194.i_crit_edge
  %sta_table_lock296.i192.i = getelementptr inbounds %struct.ap_data, ptr %425, i32 0, i32 7
  tail call void @_raw_spin_unlock_bh(ptr noundef %sta_table_lock296.i192.i) #12
  %call42.i193.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.237, ptr noundef %17, ptr noundef %addr2.i154.i, i32 noundef %conv.i155.i) #15
  br label %handle_ap_item.exit

do.end164.i:                                      ; preds = %if.end128.i
  call void @__sanitizer_cov_trace_pc() #14
  %call167.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.146, i32 noundef %208) #15
  br label %handle_ap_item.exit

handle_ap_item.exit:                              ; preds = %do.end164.i, %do.end35.i194.i, %if.end27.i191.i, %do.end.i151.i, %handle_authen.exit.i, %do.end35.i84.i, %if.end27.i.i, %do.end.i54.i, %do.end153.i, %do.end144.i, %sw.bb139.i, %do.end134.i, %sw.bb.i, %do.end121.i, %do.end106.i, %do.end92.i, %do.end77.i, %if.end107.i.i, %do.end73.i.i, %do.end58.i.i, %do.end35.i.i, %do.end16.i.i, %do.end5.i.i, %if.then169.i.i, %if.end162.i.i.handle_ap_item.exit_crit_edge, %do.end137.i.i, %do.end103.i.i, %do.end76.i.i, %lor.lhs.false44.i.i.handle_ap_item.exit_crit_edge, %land.lhs.true40.i.i.handle_ap_item.exit_crit_edge, %do.end30.i.i, %if.end.i.i.handle_ap_item.exit_crit_edge, %do.end.i.i, %if.else.i, %if.then50.i, %do.end37.i, %do.end25.i, %if.then21.i
  call void @consume_skb(ptr noundef %skb) #12
  br label %cleanup

drop:                                             ; preds = %land.lhs.true.drop_crit_edge, %entry.drop_crit_edge
  tail call void @consume_skb(ptr noundef %skb) #12
  br label %cleanup

cleanup:                                          ; preds = %drop, %handle_ap_item.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @prism2_ap_get_sta_qual(ptr nocapture noundef readonly %local, ptr nocapture noundef writeonly %addr, ptr nocapture noundef writeonly %qual, i32 noundef %buf_size, i32 noundef %aplist) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ap1 = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 22
  %0 = ptrtoint ptr %ap1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ap1, align 4
  %sta_table_lock = getelementptr inbounds %struct.ap_data, ptr %1, i32 0, i32 7
  tail call void @_raw_spin_lock_bh(ptr noundef %sta_table_lock) #12
  %sta_list = getelementptr inbounds %struct.ap_data, ptr %1, i32 0, i32 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %aplist)
  %tobool.not = icmp eq i32 %aplist, 0
  %2 = ptrtoint ptr %sta_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %ptr.092 = load ptr, ptr %sta_list, align 4
  %cmp.not93 = icmp eq ptr %ptr.092, null
  %cmp3.not94 = icmp eq ptr %ptr.092, %sta_list
  %or.cond95 = or i1 %cmp.not93, %cmp3.not94
  br i1 %or.cond95, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry.for.body_crit_edge
  %ptr.097 = phi ptr [ %ptr.0, %cleanup.for.body_crit_edge ], [ %ptr.092, %entry.for.body_crit_edge ]
  %count.096 = phi i32 [ %count.1, %cleanup.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %land.lhs.true

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %for.body
  %ap4 = getelementptr inbounds %struct.sta_info, ptr %ptr.097, i32 0, i32 32
  %3 = ptrtoint ptr %ap4 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ap4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool5.not = icmp eq i32 %4, 0
  br i1 %tobool5.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %for.body.if.end_crit_edge
  %arrayidx = getelementptr %struct.sockaddr, ptr %addr, i32 %count.096
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 1, ptr %arrayidx, align 2
  %sa_data = getelementptr %struct.sockaddr, ptr %addr, i32 %count.096, i32 1
  %addr7 = getelementptr inbounds %struct.sta_info, ptr %ptr.097, i32 0, i32 4
  %6 = call ptr @memcpy(ptr %sa_data, ptr %addr7, i32 6)
  %last_rx_silence = getelementptr inbounds %struct.sta_info, ptr %ptr.097, i32 0, i32 19
  %7 = ptrtoint ptr %last_rx_silence to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %last_rx_silence, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp9 = icmp eq i8 %8, 0
  %last_rx_signal = getelementptr inbounds %struct.sta_info, ptr %ptr.097, i32 0, i32 20
  %9 = ptrtoint ptr %last_rx_signal to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %last_rx_signal, align 1
  br i1 %cmp9, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp1(i8 27, i8 %10)
  %cmp13 = icmp slt i8 %10, 27
  %conv12 = sext i8 %10 to i16
  %11 = mul nsw i16 %conv12, 92
  %mul = add nsw i16 %11, -2484
  %div86 = sdiv i16 %mul, 127
  %12 = trunc i16 %div86 to i8
  %conv17 = select i1 %cmp13, i8 0, i8 %12
  br label %if.end29

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %sub24 = sub i8 -35, %8
  %sub25 = add i8 %sub24, %10
  br label %if.end29

if.end29:                                         ; preds = %if.else, %if.then11
  %sub25.sink = phi i8 [ %conv17, %if.then11 ], [ %sub25, %if.else ]
  %13 = getelementptr %struct.iw_quality, ptr %qual, i32 %count.096
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %sub25.sink, ptr %13, align 1
  %last_rx_signal30 = getelementptr inbounds %struct.sta_info, ptr %ptr.097, i32 0, i32 20
  %15 = ptrtoint ptr %last_rx_signal30 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %last_rx_signal30, align 1
  %conv31 = sext i8 %16 to i16
  %mul32 = mul nsw i16 %conv31, 100
  %div3387 = sdiv i16 %mul32, 255
  %17 = trunc i16 %div3387 to i8
  %conv35 = add i8 %17, -100
  %level = getelementptr %struct.iw_quality, ptr %qual, i32 %count.096, i32 1
  %18 = ptrtoint ptr %level to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv35, ptr %level, align 1
  %19 = ptrtoint ptr %last_rx_silence to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %last_rx_silence, align 4
  %conv38 = sext i8 %20 to i16
  %mul39 = mul nsw i16 %conv38, 100
  %div4088 = sdiv i16 %mul39, 255
  %21 = trunc i16 %div4088 to i8
  %conv43 = add i8 %21, -100
  %noise = getelementptr %struct.iw_quality, ptr %qual, i32 %count.096, i32 2
  %22 = ptrtoint ptr %noise to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv43, ptr %noise, align 1
  %last_rx_updated = getelementptr inbounds %struct.sta_info, ptr %ptr.097, i32 0, i32 22
  %23 = ptrtoint ptr %last_rx_updated to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %last_rx_updated, align 1
  %updated = getelementptr %struct.iw_quality, ptr %qual, i32 %count.096, i32 3
  %25 = ptrtoint ptr %updated to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %updated, align 1
  store i8 8, ptr %last_rx_updated, align 1
  %inc = add i32 %count.096, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %buf_size)
  %cmp47.not = icmp slt i32 %inc, %buf_size
  br i1 %cmp47.not, label %if.end29.cleanup_crit_edge, label %if.end29.for.end_crit_edge

if.end29.for.end_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %if.end29.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %count.1 = phi i32 [ %count.096, %land.lhs.true.cleanup_crit_edge ], [ %inc, %if.end29.cleanup_crit_edge ]
  %26 = ptrtoint ptr %ptr.097 to i32
  call void @__asan_load4_noabort(i32 %26)
  %ptr.0 = load ptr, ptr %ptr.097, align 4
  %cmp.not = icmp eq ptr %ptr.0, null
  %cmp3.not = icmp eq ptr %ptr.0, %sta_list
  %or.cond = or i1 %cmp.not, %cmp3.not
  br i1 %or.cond, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end29.for.end_crit_edge, %entry.for.end_crit_edge
  %count.2 = phi i32 [ 0, %entry.for.end_crit_edge ], [ %count.1, %cleanup.for.end_crit_edge ], [ %inc, %if.end29.for.end_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %sta_table_lock) #12
  ret i32 %count.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @prism2_ap_translate_scan(ptr nocapture noundef readonly %dev, ptr noundef %info, ptr noundef %buffer) local_unnamed_addr #0 align 64 {
entry:
  %iwe = alloca %struct.iw_event, align 4
  %buf = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %iwe) #12
  %0 = getelementptr inbounds %struct.iw_event, ptr %iwe, i32 0, i32 1
  %1 = getelementptr inbounds %struct.iw_event, ptr %iwe, i32 0, i32 2
  %2 = getelementptr inbounds %struct.iw_event, ptr %iwe, i32 0, i32 2, i32 0, i32 1
  %3 = getelementptr inbounds %struct.iw_event, ptr %iwe, i32 0, i32 2, i32 0, i32 2
  %add.ptr = getelementptr i8, ptr %buffer, i32 4096
  %4 = call ptr @memset(ptr %iwe, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf) #12
  %5 = call ptr @memset(ptr %buf, i32 255, i32 64)
  %local1 = getelementptr i8, ptr %dev, i32 2316
  %6 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %local1, align 4
  %ap2 = getelementptr inbounds %struct.local_info, ptr %7, i32 0, i32 22
  %8 = ptrtoint ptr %ap2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ap2, align 4
  %sta_table_lock = getelementptr inbounds %struct.ap_data, ptr %9, i32 0, i32 7
  tail call void @_raw_spin_lock_bh(ptr noundef %sta_table_lock) #12
  %sta_list = getelementptr inbounds %struct.ap_data, ptr %9, i32 0, i32 9
  %10 = ptrtoint ptr %sta_list to i32
  call void @__asan_load4_noabort(i32 %10)
  %ptr.0164 = load ptr, ptr %sta_list, align 4
  %cmp.not165 = icmp eq ptr %ptr.0164, null
  %cmp4.not166 = icmp eq ptr %ptr.0164, %sta_list
  %or.cond167 = or i1 %cmp.not165, %cmp4.not166
  br i1 %or.cond167, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %1, i32 0, i32 1
  %level = getelementptr inbounds %struct.iw_quality, ptr %1, i32 0, i32 1
  %updated = getelementptr inbounds %struct.iw_quality, ptr %1, i32 0, i32 3
  %11 = getelementptr inbounds i8, ptr %iwe, i32 12
  %12 = getelementptr inbounds i8, ptr %iwe, i32 8
  %13 = getelementptr inbounds i8, ptr %iwe, i32 8
  br label %for.body

for.body:                                         ; preds = %if.end107.for.body_crit_edge, %for.body.lr.ph
  %ptr.0169 = phi ptr [ %ptr.0164, %for.body.lr.ph ], [ %ptr.0, %if.end107.for.body_crit_edge ]
  %current_ev.0168 = phi ptr [ %buffer, %for.body.lr.ph ], [ %current_ev.2, %if.end107.for.body_crit_edge ]
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_storeN_noabort(i32 %14, i32 8)
  store i64 0, ptr %11, align 4
  %15 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 -29931, ptr %0, align 2
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 1, ptr %1, align 4
  %addr = getelementptr inbounds %struct.sta_info, ptr %ptr.0169, i32 0, i32 4
  %17 = call ptr @memcpy(ptr %sa_data, ptr %addr, i32 6)
  %18 = ptrtoint ptr %iwe to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 20, ptr %iwe, align 4
  %call7 = call ptr @iwe_stream_add_event(ptr noundef %info, ptr noundef %current_ev.0168, ptr noundef %add.ptr, ptr noundef nonnull %iwe, i32 noundef 20) #12
  %19 = call ptr @memset(ptr %12, i32 0, i32 12)
  %20 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 -29945, ptr %0, align 2
  %ap9 = getelementptr inbounds %struct.sta_info, ptr %ptr.0169, i32 0, i32 32
  %21 = ptrtoint ptr %ap9 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ap9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not = icmp eq i32 %22, 0
  %. = select i1 %tobool.not, i32 2, i32 3
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %., ptr %1, align 4
  %24 = ptrtoint ptr %iwe to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 8, ptr %iwe, align 4
  %call13 = call ptr @iwe_stream_add_event(ptr noundef %info, ptr noundef %call7, ptr noundef %add.ptr, ptr noundef nonnull %iwe, i32 noundef 8) #12
  %25 = call ptr @memset(ptr %13, i32 0, i32 12)
  %26 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 -29695, ptr %0, align 2
  %last_rx_silence = getelementptr inbounds %struct.sta_info, ptr %ptr.0169, i32 0, i32 19
  %27 = ptrtoint ptr %last_rx_silence to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %last_rx_silence, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %cmp15 = icmp eq i8 %28, 0
  %last_rx_signal = getelementptr inbounds %struct.sta_info, ptr %ptr.0169, i32 0, i32 20
  %29 = ptrtoint ptr %last_rx_signal to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %last_rx_signal, align 1
  br i1 %cmp15, label %if.then17, label %if.else25

if.then17:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp1(i8 27, i8 %30)
  %cmp19 = icmp slt i8 %30, 27
  %conv18 = sext i8 %30 to i16
  %31 = mul nsw i16 %conv18, 92
  %mul = add nsw i16 %31, -2484
  %div161 = sdiv i16 %mul, 127
  %32 = trunc i16 %div161 to i8
  %conv23 = select i1 %cmp19, i8 0, i8 %32
  br label %if.end35

if.else25:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %sub30 = sub i8 -35, %28
  %sub31 = add i8 %sub30, %30
  br label %if.end35

if.end35:                                         ; preds = %if.else25, %if.then17
  %storemerge157 = phi i8 [ %sub31, %if.else25 ], [ %conv23, %if.then17 ]
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %storemerge157, ptr %1, align 4
  %last_rx_signal36 = getelementptr inbounds %struct.sta_info, ptr %ptr.0169, i32 0, i32 20
  %34 = ptrtoint ptr %last_rx_signal36 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %last_rx_signal36, align 1
  %conv37 = sext i8 %35 to i16
  %mul38 = mul nsw i16 %conv37, 100
  %div39162 = sdiv i16 %mul38, 255
  %36 = trunc i16 %div39162 to i8
  %conv41 = add i8 %36, -100
  %37 = ptrtoint ptr %level to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv41, ptr %level, align 1
  %conv44 = sext i8 %28 to i16
  %mul45 = mul nsw i16 %conv44, 100
  %div46163 = sdiv i16 %mul45, 255
  %38 = trunc i16 %div46163 to i8
  %conv49 = add i8 %38, -100
  %39 = ptrtoint ptr %sa_data to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv49, ptr %sa_data, align 2
  %last_rx_updated = getelementptr inbounds %struct.sta_info, ptr %ptr.0169, i32 0, i32 22
  %40 = ptrtoint ptr %last_rx_updated to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %last_rx_updated, align 1
  %42 = ptrtoint ptr %updated to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %updated, align 1
  %43 = ptrtoint ptr %iwe to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 8, ptr %iwe, align 4
  %call53 = call ptr @iwe_stream_add_event(ptr noundef %info, ptr noundef %call13, ptr noundef %add.ptr, ptr noundef nonnull %iwe, i32 noundef 8) #12
  %44 = ptrtoint ptr %ap9 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %ap9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool55.not = icmp eq i32 %45, 0
  br i1 %tobool55.not, label %if.end35.if.end107_crit_edge, label %if.then56

if.end35.if.end107_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end107

if.then56:                                        ; preds = %if.end35
  %46 = call ptr @memset(ptr %iwe, i32 0, i32 20)
  %47 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 -29925, ptr %0, align 2
  %u58 = getelementptr inbounds %struct.sta_info, ptr %ptr.0169, i32 0, i32 34
  %48 = ptrtoint ptr %u58 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %u58, align 4
  %conv59 = trunc i32 %49 to i16
  %50 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %conv59, ptr %2, align 4
  %51 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 1, ptr %3, align 2
  %ssid = getelementptr inbounds %struct.sta_info, ptr %ptr.0169, i32 0, i32 34, i32 0, i32 1
  %call64 = call ptr @iwe_stream_add_point(ptr noundef %info, ptr noundef %call53, ptr noundef %add.ptr, ptr noundef nonnull %iwe, ptr noundef %ssid) #12
  %52 = call ptr @memset(ptr %iwe, i32 0, i32 20)
  %53 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 -29909, ptr %0, align 2
  %capability = getelementptr inbounds %struct.sta_info, ptr %ptr.0169, i32 0, i32 7
  %54 = ptrtoint ptr %capability to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %capability, align 4
  %56 = and i16 %55, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %56)
  %tobool67.not = icmp eq i16 %56, 0
  %.159 = select i1 %tobool67.not, i16 -32768, i16 2048
  %57 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %.159, ptr %3, align 2
  %call78 = call ptr @iwe_stream_add_point(ptr noundef %info, ptr noundef %call64, ptr noundef %add.ptr, ptr noundef nonnull %iwe, ptr noundef %ssid) #12
  %channel = getelementptr inbounds %struct.sta_info, ptr %ptr.0169, i32 0, i32 34, i32 0, i32 2
  %58 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %channel, align 4
  %60 = add i32 %59, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %60)
  %61 = icmp ult i32 %60, 14
  br i1 %61, label %if.then86, label %if.then56.if.end95_crit_edge

if.then56.if.end95_crit_edge:                     ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end95

if.then86:                                        ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #14
  %62 = call ptr @memset(ptr %iwe, i32 0, i32 20)
  %63 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 -29947, ptr %0, align 2
  %arrayidx = getelementptr [14 x i32], ptr @freq_list, i32 0, i32 %60
  %64 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx, align 4
  %mul91 = mul i32 %65, 100000
  %66 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %mul91, ptr %1, align 4
  %67 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 1, ptr %2, align 4
  %call94 = call ptr @iwe_stream_add_event(ptr noundef %info, ptr noundef %call78, ptr noundef %add.ptr, ptr noundef nonnull %iwe, i32 noundef 12) #12
  br label %if.end95

if.end95:                                         ; preds = %if.then86, %if.then56.if.end95_crit_edge
  %current_ev.1 = phi ptr [ %call94, %if.then86 ], [ %call78, %if.then56.if.end95_crit_edge ]
  %68 = call ptr @memset(ptr %iwe, i32 0, i32 20)
  %69 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 -29694, ptr %0, align 2
  %listen_interval = getelementptr inbounds %struct.sta_info, ptr %ptr.0169, i32 0, i32 8
  %70 = ptrtoint ptr %listen_interval to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %listen_interval, align 2
  %conv98 = zext i16 %71 to i32
  %call99 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.27, i32 noundef %conv98)
  %call101 = call i32 @strlen(ptr noundef nonnull %buf) #18
  %conv102 = trunc i32 %call101 to i16
  %72 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %conv102, ptr %2, align 4
  %call106 = call ptr @iwe_stream_add_point(ptr noundef %info, ptr noundef %current_ev.1, ptr noundef %add.ptr, ptr noundef nonnull %iwe, ptr noundef nonnull %buf) #12
  br label %if.end107

if.end107:                                        ; preds = %if.end95, %if.end35.if.end107_crit_edge
  %current_ev.2 = phi ptr [ %call106, %if.end95 ], [ %call53, %if.end35.if.end107_crit_edge ]
  %73 = ptrtoint ptr %last_rx_updated to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 8, ptr %last_rx_updated, align 1
  %74 = ptrtoint ptr %ptr.0169 to i32
  call void @__asan_load4_noabort(i32 %74)
  %ptr.0 = load ptr, ptr %ptr.0169, align 4
  %cmp.not = icmp eq ptr %ptr.0, null
  %cmp4.not = icmp eq ptr %ptr.0, %sta_list
  %or.cond = or i1 %cmp.not, %cmp4.not
  br i1 %or.cond, label %if.end107.for.end_crit_edge, label %if.end107.for.body_crit_edge

if.end107.for.body_crit_edge:                     ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

if.end107.for.end_crit_edge:                      ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %if.end107.for.end_crit_edge, %entry.for.end_crit_edge
  %current_ev.0.lcssa = phi ptr [ %buffer, %entry.for.end_crit_edge ], [ %current_ev.2, %if.end107.for.end_crit_edge ]
  call void @_raw_spin_unlock_bh(ptr noundef %sta_table_lock) #12
  %sub.ptr.lhs.cast = ptrtoint ptr %current_ev.0.lcssa to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %buffer to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %iwe) #12
  ret i32 %sub.ptr.sub
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iwe_stream_add_event(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iwe_stream_add_point(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @prism2_hostapd(ptr noundef %ap, ptr noundef %param) local_unnamed_addr #0 align 64 {
entry:
  %wrqu.i.i23 = alloca %union.iwreq_data, align 4
  %wrqu.i.i = alloca %union.iwreq_data, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %param, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.269)
  switch i32 %1, label %do.end [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 3, label %sw.bb2
    i32 4, label %sw.bb4
    i32 8, label %sw.bb6
    i32 15, label %sw.bb8
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @ap_control_kickall(ptr noundef %ap)
  br label %return

sw.bb1:                                           ; preds = %entry
  %sta_table_lock.i = getelementptr inbounds %struct.ap_data, ptr %ap, i32 0, i32 7
  tail call void @_raw_spin_lock_bh(ptr noundef %sta_table_lock.i) #12
  %sta_addr.i = getelementptr inbounds %struct.prism2_hostapd_param, ptr %param, i32 0, i32 1
  %arrayidx.i.i = getelementptr %struct.prism2_hostapd_param, ptr %param, i32 0, i32 1, i32 5
  %3 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx.i.i, align 1
  %idxprom.i.i = zext i8 %4 to i32
  %arrayidx1.i.i = getelementptr %struct.ap_data, ptr %ap, i32 0, i32 10, i32 %idxprom.i.i
  %5 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %s.06.i.i = load ptr, ptr %arrayidx1.i.i, align 4
  %cmp.not7.i.i = icmp eq ptr %s.06.i.i, null
  br i1 %cmp.not7.i.i, label %sw.bb1.if.then2.i_crit_edge, label %land.rhs.lr.ph.i.i

sw.bb1.if.then2.i_crit_edge:                      ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then2.i

land.rhs.lr.ph.i.i:                               ; preds = %sw.bb1
  %6 = ptrtoint ptr %sta_addr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sta_addr.i, align 4
  %add.ptr1.i.i.i = getelementptr %struct.prism2_hostapd_param, ptr %param, i32 0, i32 1, i32 4
  %8 = ptrtoint ptr %add.ptr1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %add.ptr1.i.i.i, align 2
  br label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %while.body.i.i.land.rhs.i.i_crit_edge, %land.rhs.lr.ph.i.i
  %s.08.i.i = phi ptr [ %s.06.i.i, %land.rhs.lr.ph.i.i ], [ %s.0.i.i, %while.body.i.i.land.rhs.i.i_crit_edge ]
  %addr.i.i = getelementptr inbounds %struct.sta_info, ptr %s.08.i.i, i32 0, i32 4
  %10 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %addr.i.i, align 4
  %xor.i.i.i = xor i32 %11, %7
  %add.ptr.i.i.i = getelementptr %struct.sta_info, ptr %s.08.i.i, i32 0, i32 4, i32 4
  %12 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %add.ptr.i.i.i, align 2
  %xor37.i.i.i = xor i16 %13, %9
  %xor3.i.i.i = zext i16 %xor37.i.i.i to i32
  %or.i.i.i = or i32 %xor.i.i.i, %xor3.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i)
  %cmp.i.i.i = icmp eq i32 %or.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end.i, label %while.body.i.i

while.body.i.i:                                   ; preds = %land.rhs.i.i
  %hnext.i.i = getelementptr inbounds %struct.sta_info, ptr %s.08.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %hnext.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %s.0.i.i = load ptr, ptr %hnext.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %s.0.i.i, null
  br i1 %cmp.not.i.i, label %while.body.i.i.if.then2.i_crit_edge, label %while.body.i.i.land.rhs.i.i_crit_edge

while.body.i.i.land.rhs.i.i_crit_edge:            ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i.i

while.body.i.i.if.then2.i_crit_edge:              ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then2.i

if.end.i:                                         ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %users.i = getelementptr inbounds %struct.sta_info, ptr %s.08.i.i, i32 0, i32 2
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %users.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %users.i, i32 1, i32 3, i32 1) #12
  %15 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i, ptr %users.i, i32 1, ptr elementtype(i32) %users.i) #12, !srcloc !531
  tail call void @_raw_spin_unlock_bh(ptr noundef %sta_table_lock.i) #12
  br label %if.end9.i

if.then2.i:                                       ; preds = %while.body.i.i.if.then2.i_crit_edge, %sw.bb1.if.then2.i_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %sta_table_lock.i) #12
  %call5.i = tail call fastcc ptr @ap_add_sta(ptr noundef %ap, ptr noundef %sta_addr.i) #12
  %cmp6.i = icmp eq ptr %call5.i, null
  br i1 %cmp6.i, label %if.then2.i.return_crit_edge, label %if.then2.i.if.end9.i_crit_edge

if.then2.i.if.end9.i_crit_edge:                   ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9.i

if.then2.i.return_crit_edge:                      ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end9.i:                                        ; preds = %if.then2.i.if.end9.i_crit_edge, %if.end.i
  %sta.0.i = phi ptr [ %call5.i, %if.then2.i.if.end9.i_crit_edge ], [ %s.08.i.i, %if.end.i ]
  %flags.i = getelementptr inbounds %struct.sta_info, ptr %sta.0.i, i32 0, i32 6
  %16 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool10.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool10.not.i, label %land.lhs.true.i, label %if.end9.i.if.end17.i_crit_edge

if.end9.i.if.end17.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17.i

land.lhs.true.i:                                  ; preds = %if.end9.i
  %ap11.i = getelementptr inbounds %struct.sta_info, ptr %sta.0.i, i32 0, i32 32
  %18 = ptrtoint ptr %ap11.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ap11.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool12.not.i = icmp eq i32 %19, 0
  br i1 %tobool12.not.i, label %land.lhs.true13.i, label %land.lhs.true.i.if.end17.i_crit_edge

land.lhs.true.i.if.end17.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17.i

land.lhs.true13.i:                                ; preds = %land.lhs.true.i
  %local.i = getelementptr inbounds %struct.sta_info, ptr %sta.0.i, i32 0, i32 33
  %20 = ptrtoint ptr %local.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %local.i, align 4
  %tobool14.not.i = icmp eq ptr %21, null
  br i1 %tobool14.not.i, label %land.lhs.true13.i.if.end17.i_crit_edge, label %if.then15.i

land.lhs.true13.i.if.end17.i_crit_edge:           ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17.i

if.then15.i:                                      ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i = getelementptr inbounds %struct.local_info, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %wrqu.i.i) #12
  %24 = getelementptr inbounds i8, ptr %wrqu.i.i, i32 8
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_storeN_noabort(i32 %25, i32 8)
  store i64 0, ptr %24, align 4
  %sa_data.i.i = getelementptr inbounds %struct.sockaddr, ptr %wrqu.i.i, i32 0, i32 1
  %addr.i85.i = getelementptr inbounds %struct.sta_info, ptr %sta.0.i, i32 0, i32 4
  %26 = call ptr @memcpy(ptr %sa_data.i.i, ptr %addr.i85.i, i32 6)
  %27 = ptrtoint ptr %wrqu.i.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 1, ptr %wrqu.i.i, align 4
  call void @wireless_send_event(ptr noundef %23, i32 noundef 35843, ptr noundef nonnull %wrqu.i.i, ptr noundef null) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %wrqu.i.i) #12
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then15.i, %land.lhs.true13.i.if.end17.i_crit_edge, %land.lhs.true.i.if.end17.i_crit_edge, %if.end9.i.if.end17.i_crit_edge
  %28 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %29, 3
  store i32 %or.i, ptr %flags.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %30 = load volatile i32, ptr @jiffies, align 128
  %last_rx.i = getelementptr inbounds %struct.sta_info, ptr %sta.0.i, i32 0, i32 12
  %31 = ptrtoint ptr %last_rx.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %last_rx.i, align 4
  %u.i = getelementptr inbounds %struct.prism2_hostapd_param, ptr %param, i32 0, i32 2
  %32 = ptrtoint ptr %u.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %u.i, align 4
  %aid19.i = getelementptr inbounds %struct.sta_info, ptr %sta.0.i, i32 0, i32 5
  %34 = ptrtoint ptr %aid19.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %aid19.i, align 2
  %capability.i = getelementptr inbounds %struct.prism2_hostapd_param, ptr %param, i32 0, i32 2, i32 0, i32 0, i32 2
  %35 = ptrtoint ptr %capability.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %capability.i, align 2
  %capability21.i = getelementptr inbounds %struct.sta_info, ptr %sta.0.i, i32 0, i32 7
  %37 = ptrtoint ptr %capability21.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %36, ptr %capability21.i, align 4
  %tx_supp_rates.i = getelementptr inbounds %struct.prism2_hostapd_param, ptr %param, i32 0, i32 2, i32 0, i32 0, i32 4
  %38 = ptrtoint ptr %tx_supp_rates.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %tx_supp_rates.i, align 4
  %tx_supp_rates23.i = getelementptr inbounds %struct.sta_info, ptr %sta.0.i, i32 0, i32 23
  %40 = ptrtoint ptr %tx_supp_rates23.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %tx_supp_rates23.i, align 4
  %41 = and i8 %39, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool26.not.i = icmp eq i8 %41, 0
  br i1 %tobool26.not.i, label %if.end17.i.if.end28.i_crit_edge, label %if.then27.i

if.end17.i.if.end28.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28.i

if.then27.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #14
  %supported_rates.i = getelementptr inbounds %struct.sta_info, ptr %sta.0.i, i32 0, i32 9
  %42 = ptrtoint ptr %supported_rates.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 2, ptr %supported_rates.i, align 4
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.then27.i, %if.end17.i.if.end28.i_crit_edge
  %43 = ptrtoint ptr %tx_supp_rates23.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %tx_supp_rates23.i, align 4
  %45 = and i8 %44, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool32.not.i = icmp eq i8 %45, 0
  br i1 %tobool32.not.i, label %if.end28.i.if.end36.i_crit_edge, label %if.then33.i

if.end28.i.if.end36.i_crit_edge:                  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36.i

if.then33.i:                                      ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx35.i = getelementptr %struct.sta_info, ptr %sta.0.i, i32 0, i32 9, i32 1
  %46 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 4, ptr %arrayidx35.i, align 1
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.then33.i, %if.end28.i.if.end36.i_crit_edge
  %47 = ptrtoint ptr %tx_supp_rates23.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %tx_supp_rates23.i, align 4
  %49 = and i8 %48, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool40.not.i = icmp eq i8 %49, 0
  br i1 %tobool40.not.i, label %if.end36.i.if.end44.i_crit_edge, label %if.then41.i

if.end36.i.if.end44.i_crit_edge:                  ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44.i

if.then41.i:                                      ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx43.i = getelementptr %struct.sta_info, ptr %sta.0.i, i32 0, i32 9, i32 2
  %50 = ptrtoint ptr %arrayidx43.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 11, ptr %arrayidx43.i, align 2
  br label %if.end44.i

if.end44.i:                                       ; preds = %if.then41.i, %if.end36.i.if.end44.i_crit_edge
  %51 = ptrtoint ptr %tx_supp_rates23.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %tx_supp_rates23.i, align 4
  %53 = and i8 %52, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool48.not.i = icmp eq i8 %53, 0
  br i1 %tobool48.not.i, label %if.end44.i.if.end52.i_crit_edge, label %if.then49.i

if.end44.i.if.end52.i_crit_edge:                  ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end52.i

if.then49.i:                                      ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx51.i = getelementptr %struct.sta_info, ptr %sta.0.i, i32 0, i32 9, i32 3
  %54 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 22, ptr %arrayidx51.i, align 1
  br label %if.end52.i

if.end52.i:                                       ; preds = %if.then49.i, %if.end44.i.if.end52.i_crit_edge
  call fastcc void @prism2_check_tx_rates(ptr noundef nonnull %sta.0.i) #12
  %users53.i = getelementptr inbounds %struct.sta_info, ptr %sta.0.i, i32 0, i32 2
  %call.i.i84.i = call zeroext i1 @__kasan_check_write(ptr noundef %users53.i, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr %users53.i, i32 1, i32 3, i32 1) #12
  %55 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users53.i, ptr %users53.i, i32 1, ptr elementtype(i32) %users53.i) #12, !srcloc !532
  br label %return

sw.bb2:                                           ; preds = %entry
  %sta_table_lock.i24 = getelementptr inbounds %struct.ap_data, ptr %ap, i32 0, i32 7
  tail call void @_raw_spin_lock_bh(ptr noundef %sta_table_lock.i24) #12
  %arrayidx.i.i25 = getelementptr %struct.prism2_hostapd_param, ptr %param, i32 0, i32 1, i32 5
  %56 = ptrtoint ptr %arrayidx.i.i25 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx.i.i25, align 1
  %idxprom.i.i26 = zext i8 %57 to i32
  %arrayidx1.i.i27 = getelementptr %struct.ap_data, ptr %ap, i32 0, i32 10, i32 %idxprom.i.i26
  %58 = ptrtoint ptr %arrayidx1.i.i27 to i32
  call void @__asan_load4_noabort(i32 %58)
  %s.06.i.i28 = load ptr, ptr %arrayidx1.i.i27, align 4
  %cmp.not7.i.i29 = icmp eq ptr %s.06.i.i28, null
  br i1 %cmp.not7.i.i29, label %sw.bb2.if.then3.critedge.i_crit_edge, label %land.rhs.lr.ph.i.i32

sw.bb2.if.then3.critedge.i_crit_edge:             ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then3.critedge.i

land.rhs.lr.ph.i.i32:                             ; preds = %sw.bb2
  %sta_addr.i30 = getelementptr inbounds %struct.prism2_hostapd_param, ptr %param, i32 0, i32 1
  %59 = ptrtoint ptr %sta_addr.i30 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %sta_addr.i30, align 4
  %add.ptr1.i.i.i31 = getelementptr %struct.prism2_hostapd_param, ptr %param, i32 0, i32 1, i32 4
  %61 = ptrtoint ptr %add.ptr1.i.i.i31 to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %add.ptr1.i.i.i31, align 2
  br label %land.rhs.i.i41

land.rhs.i.i41:                                   ; preds = %while.body.i.i45.land.rhs.i.i41_crit_edge, %land.rhs.lr.ph.i.i32
  %s.08.i.i33 = phi ptr [ %s.06.i.i28, %land.rhs.lr.ph.i.i32 ], [ %s.0.i.i43, %while.body.i.i45.land.rhs.i.i41_crit_edge ]
  %addr.i.i34 = getelementptr inbounds %struct.sta_info, ptr %s.08.i.i33, i32 0, i32 4
  %63 = ptrtoint ptr %addr.i.i34 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %addr.i.i34, align 4
  %xor.i.i.i35 = xor i32 %64, %60
  %add.ptr.i.i.i36 = getelementptr %struct.sta_info, ptr %s.08.i.i33, i32 0, i32 4, i32 4
  %65 = ptrtoint ptr %add.ptr.i.i.i36 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %add.ptr.i.i.i36, align 2
  %xor37.i.i.i37 = xor i16 %66, %62
  %xor3.i.i.i38 = zext i16 %xor37.i.i.i37 to i32
  %or.i.i.i39 = or i32 %xor.i.i.i35, %xor3.i.i.i38
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i39)
  %cmp.i.i.i40 = icmp eq i32 %or.i.i.i39, 0
  br i1 %cmp.i.i.i40, label %if.then.i, label %while.body.i.i45

while.body.i.i45:                                 ; preds = %land.rhs.i.i41
  %hnext.i.i42 = getelementptr inbounds %struct.sta_info, ptr %s.08.i.i33, i32 0, i32 1
  %67 = ptrtoint ptr %hnext.i.i42 to i32
  call void @__asan_load4_noabort(i32 %67)
  %s.0.i.i43 = load ptr, ptr %hnext.i.i42, align 4
  %cmp.not.i.i44 = icmp eq ptr %s.0.i.i43, null
  br i1 %cmp.not.i.i44, label %while.body.i.i45.if.then3.critedge.i_crit_edge, label %while.body.i.i45.land.rhs.i.i41_crit_edge

while.body.i.i45.land.rhs.i.i41_crit_edge:        ; preds = %while.body.i.i45
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i.i41

while.body.i.i45.if.then3.critedge.i_crit_edge:   ; preds = %while.body.i.i45
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then3.critedge.i

if.then.i:                                        ; preds = %land.rhs.i.i41
  %arrayidx.i27.i = getelementptr %struct.sta_info, ptr %s.08.i.i33, i32 0, i32 4, i32 5
  %68 = ptrtoint ptr %arrayidx.i27.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx.i27.i, align 1
  %idxprom.i28.i = zext i8 %69 to i32
  %arrayidx1.i29.i = getelementptr %struct.ap_data, ptr %ap, i32 0, i32 10, i32 %idxprom.i28.i
  %70 = ptrtoint ptr %arrayidx1.i29.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %arrayidx1.i29.i, align 4
  %cmp.i.i = icmp eq ptr %71, null
  br i1 %cmp.i.i, label %if.then.i.ap_sta_hash_del.exit.i_crit_edge, label %if.end.i.i

if.then.i.ap_sta_hash_del.exit.i_crit_edge:       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ap_sta_hash_del.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  %addr2.i.i = getelementptr inbounds %struct.sta_info, ptr %71, i32 0, i32 4
  %72 = ptrtoint ptr %addr2.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %addr2.i.i, align 4
  %xor.i.i30.i = xor i32 %73, %64
  %add.ptr.i.i31.i = getelementptr %struct.sta_info, ptr %71, i32 0, i32 4, i32 4
  %74 = ptrtoint ptr %add.ptr.i.i31.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %add.ptr.i.i31.i, align 2
  %xor37.i.i33.i = xor i16 %75, %66
  %xor3.i.i34.i = zext i16 %xor37.i.i33.i to i32
  %or.i.i35.i = or i32 %xor.i.i30.i, %xor3.i.i34.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i35.i)
  %cmp.i.i36.i = icmp eq i32 %or.i.i35.i, 0
  br i1 %cmp.i.i36.i, label %if.then5.i.i, label %if.end.i.i.while.cond.i.i_crit_edge

if.end.i.i.while.cond.i.i_crit_edge:              ; preds = %if.end.i.i
  br label %while.cond.i.i

if.then5.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %hnext.i37.i = getelementptr inbounds %struct.sta_info, ptr %71, i32 0, i32 1
  %76 = ptrtoint ptr %hnext.i37.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %hnext.i37.i, align 4
  %78 = ptrtoint ptr %arrayidx1.i29.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %77, ptr %arrayidx1.i29.i, align 4
  br label %ap_sta_hash_del.exit.i

while.cond.i.i:                                   ; preds = %land.rhs.i39.i.while.cond.i.i_crit_edge, %if.end.i.i.while.cond.i.i_crit_edge
  %s.0.i38.i = phi ptr [ %80, %land.rhs.i39.i.while.cond.i.i_crit_edge ], [ %71, %if.end.i.i.while.cond.i.i_crit_edge ]
  %hnext12.i.i = getelementptr inbounds %struct.sta_info, ptr %s.0.i38.i, i32 0, i32 1
  %79 = ptrtoint ptr %hnext12.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %hnext12.i.i, align 4
  %cmp13.not.i.i = icmp eq ptr %80, null
  br i1 %cmp13.not.i.i, label %do.end.i.i, label %land.rhs.i39.i

land.rhs.i39.i:                                   ; preds = %while.cond.i.i
  %addr15.i.i = getelementptr inbounds %struct.sta_info, ptr %80, i32 0, i32 4
  %81 = ptrtoint ptr %addr15.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %addr15.i.i, align 4
  %xor.i46.i.i = xor i32 %82, %64
  %add.ptr.i47.i.i = getelementptr %struct.sta_info, ptr %80, i32 0, i32 4, i32 4
  %83 = ptrtoint ptr %add.ptr.i47.i.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %add.ptr.i47.i.i, align 2
  %xor37.i49.i.i = xor i16 %84, %66
  %xor3.i50.i.i = zext i16 %xor37.i49.i.i to i32
  %or.i51.i.i = or i32 %xor.i46.i.i, %xor3.i50.i.i
  %cmp.i52.i.i = icmp eq i32 %or.i51.i.i, 0
  br i1 %cmp.i52.i.i, label %if.then23.i.i, label %land.rhs.i39.i.while.cond.i.i_crit_edge

land.rhs.i39.i.while.cond.i.i_crit_edge:          ; preds = %land.rhs.i39.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i.i

if.then23.i.i:                                    ; preds = %land.rhs.i39.i
  call void @__sanitizer_cov_trace_pc() #14
  %hnext12.i.i.le = getelementptr inbounds %struct.sta_info, ptr %s.0.i38.i, i32 0, i32 1
  %hnext25.i.i = getelementptr inbounds %struct.sta_info, ptr %80, i32 0, i32 1
  %85 = ptrtoint ptr %hnext25.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %hnext25.i.i, align 4
  %87 = ptrtoint ptr %hnext12.i.i.le to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %86, ptr %hnext12.i.i.le, align 4
  br label %ap_sta_hash_del.exit.i

do.end.i.i:                                       ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call29.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef %addr.i.i34) #15
  br label %ap_sta_hash_del.exit.i

ap_sta_hash_del.exit.i:                           ; preds = %do.end.i.i, %if.then23.i.i, %if.then5.i.i, %if.then.i.ap_sta_hash_del.exit.i_crit_edge
  %call.i.i.i46 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %s.08.i.i33) #12
  br i1 %call.i.i.i46, label %if.end.i.i.i, label %ap_sta_hash_del.exit.i.list_del.exit.i_crit_edge

ap_sta_hash_del.exit.i.list_del.exit.i_crit_edge: ; preds = %ap_sta_hash_del.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %ap_sta_hash_del.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %s.08.i.i33, i32 0, i32 1
  %88 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %prev.i.i.i, align 4
  %90 = ptrtoint ptr %s.08.i.i33 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %s.08.i.i33, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %91, i32 0, i32 1
  %92 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %89, ptr %prev1.i.i.i.i, align 4
  %93 = ptrtoint ptr %89 to i32
  call void @__asan_store4_noabort(i32 %93)
  store volatile ptr %91, ptr %89, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %ap_sta_hash_del.exit.i.list_del.exit.i_crit_edge
  %94 = ptrtoint ptr %s.08.i.i33 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr inttoptr (i32 256 to ptr), ptr %s.08.i.i33, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %s.08.i.i33, i32 0, i32 1
  %95 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %sta_table_lock.i24) #12
  %flags.i47 = getelementptr inbounds %struct.sta_info, ptr %s.08.i.i33, i32 0, i32 6
  %96 = ptrtoint ptr %flags.i47 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %flags.i47, align 4
  %and.i48 = and i32 %97, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i48)
  %tobool5.not.i = icmp eq i32 %and.i48, 0
  br i1 %tobool5.not.i, label %list_del.exit.i.if.end12.i_crit_edge, label %land.lhs.true.i49

list_del.exit.i.if.end12.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12.i

if.then3.critedge.i:                              ; preds = %while.body.i.i45.if.then3.critedge.i_crit_edge, %sw.bb2.if.then3.critedge.i_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %sta_table_lock.i24) #12
  br label %return

land.lhs.true.i49:                                ; preds = %list_del.exit.i
  %ap6.i = getelementptr inbounds %struct.sta_info, ptr %s.08.i.i33, i32 0, i32 32
  %98 = ptrtoint ptr %ap6.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %ap6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %tobool7.not.i = icmp eq i32 %99, 0
  br i1 %tobool7.not.i, label %land.lhs.true8.i, label %land.lhs.true.i49.if.end12.i_crit_edge

land.lhs.true.i49.if.end12.i_crit_edge:           ; preds = %land.lhs.true.i49
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12.i

land.lhs.true8.i:                                 ; preds = %land.lhs.true.i49
  %local.i50 = getelementptr inbounds %struct.sta_info, ptr %s.08.i.i33, i32 0, i32 33
  %100 = ptrtoint ptr %local.i50 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %local.i50, align 4
  %tobool9.not.i = icmp eq ptr %101, null
  br i1 %tobool9.not.i, label %land.lhs.true8.i.if.end12.i_crit_edge, label %if.then10.i

land.lhs.true8.i.if.end12.i_crit_edge:            ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12.i

if.then10.i:                                      ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i51 = getelementptr inbounds %struct.local_info, ptr %101, i32 0, i32 5
  %102 = ptrtoint ptr %dev.i51 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %dev.i51, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %wrqu.i.i23) #12
  %104 = getelementptr inbounds i8, ptr %wrqu.i.i23, i32 8
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_storeN_noabort(i32 %105, i32 8)
  store i64 0, ptr %104, align 4
  %sa_data.i.i52 = getelementptr inbounds %struct.sockaddr, ptr %wrqu.i.i23, i32 0, i32 1
  %106 = call ptr @memcpy(ptr %sa_data.i.i52, ptr %addr.i.i34, i32 6)
  %107 = ptrtoint ptr %wrqu.i.i23 to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 1, ptr %wrqu.i.i23, align 4
  call void @wireless_send_event(ptr noundef %103, i32 noundef 35844, ptr noundef nonnull %wrqu.i.i23, ptr noundef null) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %wrqu.i.i23) #12
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then10.i, %land.lhs.true8.i.if.end12.i_crit_edge, %land.lhs.true.i49.if.end12.i_crit_edge, %list_del.exit.i.if.end12.i_crit_edge
  call fastcc void @ap_free_sta(ptr noundef %ap, ptr noundef nonnull %s.08.i.i33) #12
  br label %return

sw.bb4:                                           ; preds = %entry
  %sta_table_lock.i54 = getelementptr inbounds %struct.ap_data, ptr %ap, i32 0, i32 7
  tail call void @_raw_spin_lock_bh(ptr noundef %sta_table_lock.i54) #12
  %arrayidx.i.i55 = getelementptr %struct.prism2_hostapd_param, ptr %param, i32 0, i32 1, i32 5
  %108 = ptrtoint ptr %arrayidx.i.i55 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %arrayidx.i.i55, align 1
  %idxprom.i.i56 = zext i8 %109 to i32
  %arrayidx1.i.i57 = getelementptr %struct.ap_data, ptr %ap, i32 0, i32 10, i32 %idxprom.i.i56
  %110 = ptrtoint ptr %arrayidx1.i.i57 to i32
  call void @__asan_load4_noabort(i32 %110)
  %s.06.i.i58 = load ptr, ptr %arrayidx1.i.i57, align 4
  %cmp.not7.i.i59 = icmp eq ptr %s.06.i.i58, null
  br i1 %cmp.not7.i.i59, label %sw.bb4.if.then3.critedge.i81_crit_edge, label %land.rhs.lr.ph.i.i62

sw.bb4.if.then3.critedge.i81_crit_edge:           ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then3.critedge.i81

land.rhs.lr.ph.i.i62:                             ; preds = %sw.bb4
  %sta_addr.i60 = getelementptr inbounds %struct.prism2_hostapd_param, ptr %param, i32 0, i32 1
  %111 = ptrtoint ptr %sta_addr.i60 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %sta_addr.i60, align 4
  %add.ptr1.i.i.i61 = getelementptr %struct.prism2_hostapd_param, ptr %param, i32 0, i32 1, i32 4
  %113 = ptrtoint ptr %add.ptr1.i.i.i61 to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %add.ptr1.i.i.i61, align 2
  br label %land.rhs.i.i71

land.rhs.i.i71:                                   ; preds = %while.body.i.i75.land.rhs.i.i71_crit_edge, %land.rhs.lr.ph.i.i62
  %s.08.i.i63 = phi ptr [ %s.06.i.i58, %land.rhs.lr.ph.i.i62 ], [ %s.0.i.i73, %while.body.i.i75.land.rhs.i.i71_crit_edge ]
  %addr.i.i64 = getelementptr inbounds %struct.sta_info, ptr %s.08.i.i63, i32 0, i32 4
  %115 = ptrtoint ptr %addr.i.i64 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %addr.i.i64, align 4
  %xor.i.i.i65 = xor i32 %116, %112
  %add.ptr.i.i.i66 = getelementptr %struct.sta_info, ptr %s.08.i.i63, i32 0, i32 4, i32 4
  %117 = ptrtoint ptr %add.ptr.i.i.i66 to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %add.ptr.i.i.i66, align 2
  %xor37.i.i.i67 = xor i16 %118, %114
  %xor3.i.i.i68 = zext i16 %xor37.i.i.i67 to i32
  %or.i.i.i69 = or i32 %xor.i.i.i65, %xor3.i.i.i68
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i69)
  %cmp.i.i.i70 = icmp eq i32 %or.i.i.i69, 0
  br i1 %cmp.i.i.i70, label %if.then.i80, label %while.body.i.i75

while.body.i.i75:                                 ; preds = %land.rhs.i.i71
  %hnext.i.i72 = getelementptr inbounds %struct.sta_info, ptr %s.08.i.i63, i32 0, i32 1
  %119 = ptrtoint ptr %hnext.i.i72 to i32
  call void @__asan_load4_noabort(i32 %119)
  %s.0.i.i73 = load ptr, ptr %hnext.i.i72, align 4
  %cmp.not.i.i74 = icmp eq ptr %s.0.i.i73, null
  br i1 %cmp.not.i.i74, label %while.body.i.i75.if.then3.critedge.i81_crit_edge, label %while.body.i.i75.land.rhs.i.i71_crit_edge

while.body.i.i75.land.rhs.i.i71_crit_edge:        ; preds = %while.body.i.i75
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i.i71

while.body.i.i75.if.then3.critedge.i81_crit_edge: ; preds = %while.body.i.i75
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then3.critedge.i81

if.then.i80:                                      ; preds = %land.rhs.i.i71
  call void @__sanitizer_cov_trace_pc() #14
  %users.i76 = getelementptr inbounds %struct.sta_info, ptr %s.08.i.i63, i32 0, i32 2
  %call.i.i.i77 = tail call zeroext i1 @__kasan_check_write(ptr noundef %users.i76, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %users.i76, i32 1, i32 3, i32 1) #12
  %120 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i76, ptr %users.i76, i32 1, ptr elementtype(i32) %users.i76) #12, !srcloc !531
  tail call void @_raw_spin_unlock_bh(ptr noundef %sta_table_lock.i54) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %121 = load volatile i32, ptr @jiffies, align 128
  %last_rx.i78 = getelementptr inbounds %struct.sta_info, ptr %s.08.i.i63, i32 0, i32 12
  %122 = ptrtoint ptr %last_rx.i78 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %last_rx.i78, align 4
  %sub.i = sub i32 %121, %123
  %div.i = udiv i32 %sub.i, 100
  %u.i79 = getelementptr inbounds %struct.prism2_hostapd_param, ptr %param, i32 0, i32 2
  %124 = ptrtoint ptr %u.i79 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %div.i, ptr %u.i79, align 4
  %call.i.i13.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %users.i76, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %users.i76, i32 1, i32 3, i32 1) #12
  %125 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i76, ptr %users.i76, i32 1, ptr elementtype(i32) %users.i76) #12, !srcloc !532
  br label %return

if.then3.critedge.i81:                            ; preds = %while.body.i.i75.if.then3.critedge.i81_crit_edge, %sw.bb4.if.then3.critedge.i81_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %sta_table_lock.i54) #12
  br label %return

sw.bb6:                                           ; preds = %entry
  %sta_table_lock.i83 = getelementptr inbounds %struct.ap_data, ptr %ap, i32 0, i32 7
  tail call void @_raw_spin_lock_bh(ptr noundef %sta_table_lock.i83) #12
  %arrayidx.i.i84 = getelementptr %struct.prism2_hostapd_param, ptr %param, i32 0, i32 1, i32 5
  %126 = ptrtoint ptr %arrayidx.i.i84 to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %arrayidx.i.i84, align 1
  %idxprom.i.i85 = zext i8 %127 to i32
  %arrayidx1.i.i86 = getelementptr %struct.ap_data, ptr %ap, i32 0, i32 10, i32 %idxprom.i.i85
  %128 = ptrtoint ptr %arrayidx1.i.i86 to i32
  call void @__asan_load4_noabort(i32 %128)
  %s.06.i.i87 = load ptr, ptr %arrayidx1.i.i86, align 4
  %cmp.not7.i.i88 = icmp eq ptr %s.06.i.i87, null
  br i1 %cmp.not7.i.i88, label %sw.bb6.prism2_hostapd_set_flags_sta.exit_crit_edge, label %land.rhs.lr.ph.i.i91

sw.bb6.prism2_hostapd_set_flags_sta.exit_crit_edge: ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #14
  br label %prism2_hostapd_set_flags_sta.exit

land.rhs.lr.ph.i.i91:                             ; preds = %sw.bb6
  %sta_addr.i89 = getelementptr inbounds %struct.prism2_hostapd_param, ptr %param, i32 0, i32 1
  %129 = ptrtoint ptr %sta_addr.i89 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %sta_addr.i89, align 4
  %add.ptr1.i.i.i90 = getelementptr %struct.prism2_hostapd_param, ptr %param, i32 0, i32 1, i32 4
  %131 = ptrtoint ptr %add.ptr1.i.i.i90 to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %add.ptr1.i.i.i90, align 2
  br label %land.rhs.i.i100

land.rhs.i.i100:                                  ; preds = %while.body.i.i104.land.rhs.i.i100_crit_edge, %land.rhs.lr.ph.i.i91
  %s.08.i.i92 = phi ptr [ %s.06.i.i87, %land.rhs.lr.ph.i.i91 ], [ %s.0.i.i102, %while.body.i.i104.land.rhs.i.i100_crit_edge ]
  %addr.i.i93 = getelementptr inbounds %struct.sta_info, ptr %s.08.i.i92, i32 0, i32 4
  %133 = ptrtoint ptr %addr.i.i93 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %addr.i.i93, align 4
  %xor.i.i.i94 = xor i32 %134, %130
  %add.ptr.i.i.i95 = getelementptr %struct.sta_info, ptr %s.08.i.i92, i32 0, i32 4, i32 4
  %135 = ptrtoint ptr %add.ptr.i.i.i95 to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %add.ptr.i.i.i95, align 2
  %xor37.i.i.i96 = xor i16 %136, %132
  %xor3.i.i.i97 = zext i16 %xor37.i.i.i96 to i32
  %or.i.i.i98 = or i32 %xor.i.i.i94, %xor3.i.i.i97
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i98)
  %cmp.i.i.i99 = icmp eq i32 %or.i.i.i98, 0
  br i1 %cmp.i.i.i99, label %if.end.i109, label %while.body.i.i104

while.body.i.i104:                                ; preds = %land.rhs.i.i100
  %hnext.i.i101 = getelementptr inbounds %struct.sta_info, ptr %s.08.i.i92, i32 0, i32 1
  %137 = ptrtoint ptr %hnext.i.i101 to i32
  call void @__asan_load4_noabort(i32 %137)
  %s.0.i.i102 = load ptr, ptr %hnext.i.i101, align 4
  %cmp.not.i.i103 = icmp eq ptr %s.0.i.i102, null
  br i1 %cmp.not.i.i103, label %while.body.i.i104.prism2_hostapd_set_flags_sta.exit_crit_edge, label %while.body.i.i104.land.rhs.i.i100_crit_edge

while.body.i.i104.land.rhs.i.i100_crit_edge:      ; preds = %while.body.i.i104
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i.i100

while.body.i.i104.prism2_hostapd_set_flags_sta.exit_crit_edge: ; preds = %while.body.i.i104
  call void @__sanitizer_cov_trace_pc() #14
  br label %prism2_hostapd_set_flags_sta.exit

if.end.i109:                                      ; preds = %land.rhs.i.i100
  call void @__sanitizer_cov_trace_pc() #14
  %u.i105 = getelementptr inbounds %struct.prism2_hostapd_param, ptr %param, i32 0, i32 2
  %flags_or.i = getelementptr inbounds %struct.prism2_hostapd_param, ptr %param, i32 0, i32 2, i32 0, i32 0, i32 4
  %138 = ptrtoint ptr %flags_or.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %flags_or.i, align 4
  %flags.i106 = getelementptr inbounds %struct.sta_info, ptr %s.08.i.i92, i32 0, i32 6
  %140 = ptrtoint ptr %flags.i106 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %flags.i106, align 4
  %or.i107 = or i32 %141, %139
  store i32 %or.i107, ptr %flags.i106, align 4
  %142 = ptrtoint ptr %u.i105 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %u.i105, align 4
  %and.i108 = and i32 %143, %or.i107
  store i32 %and.i108, ptr %flags.i106, align 4
  br label %prism2_hostapd_set_flags_sta.exit

prism2_hostapd_set_flags_sta.exit:                ; preds = %if.end.i109, %while.body.i.i104.prism2_hostapd_set_flags_sta.exit_crit_edge, %sw.bb6.prism2_hostapd_set_flags_sta.exit_crit_edge
  %144 = phi i32 [ 0, %if.end.i109 ], [ -2, %sw.bb6.prism2_hostapd_set_flags_sta.exit_crit_edge ], [ -2, %while.body.i.i104.prism2_hostapd_set_flags_sta.exit_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %sta_table_lock.i83) #12
  br label %return

sw.bb8:                                           ; preds = %entry
  %sta_table_lock.i110 = getelementptr inbounds %struct.ap_data, ptr %ap, i32 0, i32 7
  tail call void @_raw_spin_lock_bh(ptr noundef %sta_table_lock.i110) #12
  %arrayidx.i.i111 = getelementptr %struct.prism2_hostapd_param, ptr %param, i32 0, i32 1, i32 5
  %145 = ptrtoint ptr %arrayidx.i.i111 to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %arrayidx.i.i111, align 1
  %idxprom.i.i112 = zext i8 %146 to i32
  %arrayidx1.i.i113 = getelementptr %struct.ap_data, ptr %ap, i32 0, i32 10, i32 %idxprom.i.i112
  %147 = ptrtoint ptr %arrayidx1.i.i113 to i32
  call void @__asan_load4_noabort(i32 %147)
  %s.06.i.i114 = load ptr, ptr %arrayidx1.i.i113, align 4
  %cmp.not7.i.i115 = icmp eq ptr %s.06.i.i114, null
  br i1 %cmp.not7.i.i115, label %sw.bb8.prism2_hostapd_sta_clear_stats.exit_crit_edge, label %land.rhs.lr.ph.i.i118

sw.bb8.prism2_hostapd_sta_clear_stats.exit_crit_edge: ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #14
  br label %prism2_hostapd_sta_clear_stats.exit

land.rhs.lr.ph.i.i118:                            ; preds = %sw.bb8
  %sta_addr.i116 = getelementptr inbounds %struct.prism2_hostapd_param, ptr %param, i32 0, i32 1
  %148 = ptrtoint ptr %sta_addr.i116 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %sta_addr.i116, align 4
  %add.ptr1.i.i.i117 = getelementptr %struct.prism2_hostapd_param, ptr %param, i32 0, i32 1, i32 4
  %150 = ptrtoint ptr %add.ptr1.i.i.i117 to i32
  call void @__asan_load2_noabort(i32 %150)
  %151 = load i16, ptr %add.ptr1.i.i.i117, align 2
  br label %land.rhs.i.i127

land.rhs.i.i127:                                  ; preds = %while.body.i.i131.land.rhs.i.i127_crit_edge, %land.rhs.lr.ph.i.i118
  %s.08.i.i119 = phi ptr [ %s.06.i.i114, %land.rhs.lr.ph.i.i118 ], [ %s.0.i.i129, %while.body.i.i131.land.rhs.i.i127_crit_edge ]
  %addr.i.i120 = getelementptr inbounds %struct.sta_info, ptr %s.08.i.i119, i32 0, i32 4
  %152 = ptrtoint ptr %addr.i.i120 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %addr.i.i120, align 4
  %xor.i.i.i121 = xor i32 %153, %149
  %add.ptr.i.i.i122 = getelementptr %struct.sta_info, ptr %s.08.i.i119, i32 0, i32 4, i32 4
  %154 = ptrtoint ptr %add.ptr.i.i.i122 to i32
  call void @__asan_load2_noabort(i32 %154)
  %155 = load i16, ptr %add.ptr.i.i.i122, align 2
  %xor37.i.i.i123 = xor i16 %155, %151
  %xor3.i.i.i124 = zext i16 %xor37.i.i.i123 to i32
  %or.i.i.i125 = or i32 %xor.i.i.i121, %xor3.i.i.i124
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i125)
  %cmp.i.i.i126 = icmp eq i32 %or.i.i.i125, 0
  br i1 %cmp.i.i.i126, label %if.then.i132, label %while.body.i.i131

while.body.i.i131:                                ; preds = %land.rhs.i.i127
  %hnext.i.i128 = getelementptr inbounds %struct.sta_info, ptr %s.08.i.i119, i32 0, i32 1
  %156 = ptrtoint ptr %hnext.i.i128 to i32
  call void @__asan_load4_noabort(i32 %156)
  %s.0.i.i129 = load ptr, ptr %hnext.i.i128, align 4
  %cmp.not.i.i130 = icmp eq ptr %s.0.i.i129, null
  br i1 %cmp.not.i.i130, label %while.body.i.i131.prism2_hostapd_sta_clear_stats.exit_crit_edge, label %while.body.i.i131.land.rhs.i.i127_crit_edge

while.body.i.i131.land.rhs.i.i127_crit_edge:      ; preds = %while.body.i.i131
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i.i127

while.body.i.i131.prism2_hostapd_sta_clear_stats.exit_crit_edge: ; preds = %while.body.i.i131
  call void @__sanitizer_cov_trace_pc() #14
  br label %prism2_hostapd_sta_clear_stats.exit

if.then.i132:                                     ; preds = %land.rhs.i.i127
  call void @__sanitizer_cov_trace_pc() #14
  %rx_packets.i = getelementptr inbounds %struct.sta_info, ptr %s.08.i.i119, i32 0, i32 14
  %arrayidx.i = getelementptr %struct.sta_info, ptr %s.08.i.i119, i32 0, i32 27, i32 0
  %157 = call ptr @memset(ptr %rx_packets.i, i32 0, i32 16)
  %158 = call ptr @memset(ptr %arrayidx.i, i32 0, i32 32)
  br label %prism2_hostapd_sta_clear_stats.exit

prism2_hostapd_sta_clear_stats.exit:              ; preds = %if.then.i132, %while.body.i.i131.prism2_hostapd_sta_clear_stats.exit_crit_edge, %sw.bb8.prism2_hostapd_sta_clear_stats.exit_crit_edge
  %159 = phi i32 [ 0, %if.then.i132 ], [ -2, %sw.bb8.prism2_hostapd_sta_clear_stats.exit_crit_edge ], [ -2, %while.body.i.i131.prism2_hostapd_sta_clear_stats.exit_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %sta_table_lock.i110) #12
  br label %return

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %1) #15
  br label %return

return:                                           ; preds = %do.end, %prism2_hostapd_sta_clear_stats.exit, %prism2_hostapd_set_flags_sta.exit, %if.then3.critedge.i81, %if.then.i80, %if.end12.i, %if.then3.critedge.i, %if.end52.i, %if.then2.i.return_crit_edge, %sw.bb
  %retval.0 = phi i32 [ -95, %do.end ], [ %159, %prism2_hostapd_sta_clear_stats.exit ], [ %144, %prism2_hostapd_set_flags_sta.exit ], [ 0, %sw.bb ], [ 0, %if.end52.i ], [ -1, %if.then2.i.return_crit_edge ], [ 0, %if.end12.i ], [ -2, %if.then3.critedge.i ], [ 1, %if.then.i80 ], [ -2, %if.then3.critedge.i81 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hostap_handle_sta_tx(ptr nocapture noundef readonly %local, ptr nocapture noundef %tx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx, align 4
  %ap = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 22
  %2 = ptrtoint ptr %ap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ap, align 4
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %entry.if.end141_crit_edge, label %lor.lhs.false

entry.if.end141_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end141

lor.lhs.false:                                    ; preds = %entry
  %len = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %5)
  %cmp2 = icmp ult i32 %5, 10
  br i1 %cmp2, label %lor.lhs.false.if.end141_crit_edge, label %lor.lhs.false3

lor.lhs.false.if.end141_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end141

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %iface = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 12
  %6 = ptrtoint ptr %iface to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %iface, align 4
  %type = getelementptr inbounds %struct.hostap_interface, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %9)
  %cmp4 = icmp eq i32 %9, 3
  br i1 %cmp4, label %lor.lhs.false3.if.end141_crit_edge, label %if.end

lor.lhs.false3.if.end141_crit_edge:               ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end141

if.end:                                           ; preds = %lor.lhs.false3
  %data = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 19
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  %addr1 = getelementptr inbounds %struct.ieee80211_hdr, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %addr1 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %addr1, align 2
  %14 = and i8 %13, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not = icmp eq i8 %14, 0
  br i1 %tobool.not, label %if.end11, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %num_sta = getelementptr inbounds %struct.ap_data, ptr %3, i32 0, i32 8
  %15 = ptrtoint ptr %num_sta to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_sta, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp7 = icmp slt i32 %16, 1
  %spec.select = zext i1 %cmp7 to i32
  br label %if.end141

if.end11:                                         ; preds = %if.end
  %sta_table_lock = getelementptr inbounds %struct.ap_data, ptr %3, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %sta_table_lock) #12
  %17 = ptrtoint ptr %ap to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ap, align 4
  %arrayidx.i = getelementptr %struct.ieee80211_hdr, ptr %11, i32 0, i32 2, i32 5
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.i, align 1
  %idxprom.i = zext i8 %20 to i32
  %arrayidx1.i = getelementptr %struct.ap_data, ptr %18, i32 0, i32 10, i32 %idxprom.i
  %21 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %s.06.i = load ptr, ptr %arrayidx1.i, align 4
  %cmp.not7.i = icmp eq ptr %s.06.i, null
  br i1 %cmp.not7.i, label %if.end11.if.end18_crit_edge, label %land.rhs.lr.ph.i

if.end11.if.end18_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

land.rhs.lr.ph.i:                                 ; preds = %if.end11
  %22 = ptrtoint ptr %addr1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %addr1, align 4
  %add.ptr1.i.i = getelementptr %struct.ieee80211_hdr, ptr %11, i32 0, i32 2, i32 4
  %24 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %add.ptr1.i.i, align 2
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %while.body.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %s.08.i = phi ptr [ %s.06.i, %land.rhs.lr.ph.i ], [ %s.0.i, %while.body.i.land.rhs.i_crit_edge ]
  %addr.i = getelementptr inbounds %struct.sta_info, ptr %s.08.i, i32 0, i32 4
  %26 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %addr.i, align 4
  %xor.i.i = xor i32 %27, %23
  %add.ptr.i.i = getelementptr %struct.sta_info, ptr %s.08.i, i32 0, i32 4, i32 4
  %28 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %add.ptr.i.i, align 2
  %xor37.i.i = xor i16 %29, %25
  %xor3.i.i = zext i16 %xor37.i.i to i32
  %or.i.i = or i32 %xor.i.i, %xor3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i, label %if.then17, label %while.body.i

while.body.i:                                     ; preds = %land.rhs.i
  %hnext.i = getelementptr inbounds %struct.sta_info, ptr %s.08.i, i32 0, i32 1
  %30 = ptrtoint ptr %hnext.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %s.0.i = load ptr, ptr %hnext.i, align 4
  %cmp.not.i = icmp eq ptr %s.0.i, null
  br i1 %cmp.not.i, label %while.body.i.if.end18_crit_edge, label %while.body.i.land.rhs.i_crit_edge

while.body.i.land.rhs.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i

while.body.i.if.end18_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

if.then17:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  %users = getelementptr inbounds %struct.sta_info, ptr %s.08.i, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %users, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %users, i32 1, i32 3, i32 1) #12
  %31 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users, ptr %users, i32 1, ptr elementtype(i32) %users) #12, !srcloc !531
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %while.body.i.if.end18_crit_edge, %if.end11.if.end18_crit_edge
  %tobool16.not213 = phi i1 [ false, %if.then17 ], [ true, %if.end11.if.end18_crit_edge ], [ true, %while.body.i.if.end18_crit_edge ]
  %s.0.lcssa.i212 = phi ptr [ %s.08.i, %if.then17 ], [ null, %if.end11.if.end18_crit_edge ], [ null, %while.body.i.if.end18_crit_edge ]
  %32 = ptrtoint ptr %ap to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ap, align 4
  %sta_table_lock20 = getelementptr inbounds %struct.ap_data, ptr %33, i32 0, i32 7
  tail call void @_raw_spin_unlock(ptr noundef %sta_table_lock20) #12
  %iw_mode = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 30
  %34 = ptrtoint ptr %iw_mode to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %iw_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %35)
  %cmp21 = icmp eq i32 %35, 3
  %or.cond = and i1 %tobool16.not213, %cmp21
  br i1 %or.cond, label %land.lhs.true25, label %if.end18.if.end41_crit_edge

if.end18.if.end41_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end41

land.lhs.true25:                                  ; preds = %if.end18
  %flags = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 9
  %36 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %flags, align 1
  %38 = and i8 %37, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool28.not = icmp eq i8 %38, 0
  br i1 %tobool28.not, label %land.lhs.true29, label %land.lhs.true25.if.end41_crit_edge

land.lhs.true25.if.end41_crit_edge:               ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end41

land.lhs.true29:                                  ; preds = %land.lhs.true25
  %39 = ptrtoint ptr %iface to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %iface, align 4
  %type31 = getelementptr inbounds %struct.hostap_interface, ptr %40, i32 0, i32 6
  %41 = ptrtoint ptr %type31 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %type31, align 4
  %43 = zext i32 %42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.270)
  switch i32 %42, label %if.then39 [
    i32 0, label %land.lhs.true29.if.end41_crit_edge
    i32 2, label %land.lhs.true29.if.end41_crit_edge224
  ]

land.lhs.true29.if.end41_crit_edge224:            ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end41

land.lhs.true29.if.end41_crit_edge:               ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end41

if.then39:                                        ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #14
  %44 = ptrtoint ptr %ap to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ap, align 4
  %tx_drop_nonassoc = getelementptr inbounds %struct.ap_data, ptr %45, i32 0, i32 5
  %46 = ptrtoint ptr %tx_drop_nonassoc to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %tx_drop_nonassoc, align 4
  %inc = add i32 %47, 1
  store i32 %inc, ptr %tx_drop_nonassoc, align 4
  br label %if.end141

if.end41:                                         ; preds = %land.lhs.true29.if.end41_crit_edge, %land.lhs.true29.if.end41_crit_edge224, %land.lhs.true25.if.end41_crit_edge, %if.end18.if.end41_crit_edge
  br i1 %tobool16.not213, label %if.end41.if.end141_crit_edge, label %if.end45

if.end41.if.end141_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end141

if.end45:                                         ; preds = %if.end41
  %flags46 = getelementptr inbounds %struct.sta_info, ptr %s.0.lcssa.i212, i32 0, i32 6
  %48 = ptrtoint ptr %flags46 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %flags46, align 4
  %and47 = lshr i32 %49, 3
  %50 = and i32 %and47, 4
  %51 = xor i32 %50, 4
  %fw_tx_rate_control = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 38
  %52 = ptrtoint ptr %fw_tx_rate_control to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %fw_tx_rate_control, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool51.not = icmp eq i32 %53, 0
  br i1 %tobool51.not, label %if.then52, label %if.end45.if.end57_crit_edge

if.end45.if.end57_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end57

if.then52:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 5
  %54 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev, align 4
  %call53 = tail call fastcc i32 @ap_update_sta_tx_rate(ptr noundef nonnull %s.0.lcssa.i212, ptr noundef %55)
  %conv54 = trunc i32 %call53 to i8
  %rate = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 8
  %56 = ptrtoint ptr %rate to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv54, ptr %rate, align 4
  %conv55 = and i32 %call53, 255
  %57 = ptrtoint ptr %ap to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ap, align 4
  %last_tx_rate = getelementptr inbounds %struct.ap_data, ptr %58, i32 0, i32 16
  %59 = ptrtoint ptr %last_tx_rate to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %conv55, ptr %last_tx_rate, align 4
  br label %if.end57

if.end57:                                         ; preds = %if.then52, %if.end45.if.end57_crit_edge
  %60 = ptrtoint ptr %iw_mode to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %iw_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %61)
  %cmp59.not = icmp eq i32 %61, 3
  br i1 %cmp59.not, label %if.end62, label %if.end57.out_crit_edge

if.end57.out_crit_edge:                           ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end62:                                         ; preds = %if.end57
  %62 = ptrtoint ptr %flags46 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %flags46, align 4
  %and64 = and i32 %63, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool65.not = icmp eq i32 %and64, 0
  br i1 %tobool65.not, label %if.end62.out_crit_edge, label %if.end67

if.end62.out_crit_edge:                           ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end67:                                         ; preds = %if.end62
  %flags68 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 9
  %64 = ptrtoint ptr %flags68 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %flags68, align 1
  %66 = and i8 %65, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool71.not = icmp eq i8 %66, 0
  br i1 %tobool71.not, label %if.end67.if.end75_crit_edge, label %if.then72

if.end67.if.end75_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end75

if.then72:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #14
  %67 = ptrtoint ptr %11 to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %11, align 2
  %69 = or i16 %68, 32
  store i16 %69, ptr %11, align 2
  br label %if.end75

if.end75:                                         ; preds = %if.then72, %if.end67.if.end75_crit_edge
  %70 = ptrtoint ptr %flags68 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %flags68, align 1
  %72 = and i8 %71, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool79.not = icmp eq i8 %72, 0
  br i1 %tobool79.not, label %if.end81, label %if.end75.out_crit_edge

if.end75.out_crit_edge:                           ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end81:                                         ; preds = %if.end75
  %qlen.i = getelementptr inbounds %struct.sta_info, ptr %s.0.lcssa.i212, i32 0, i32 18, i32 1
  %73 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %qlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %74)
  %cmp83 = icmp ugt i32 %74, 31
  br i1 %cmp83, label %do.end, label %if.end96

do.end:                                           ; preds = %if.end81
  %dev87 = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 5
  %75 = ptrtoint ptr %dev87 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dev87, align 4
  %addr = getelementptr inbounds %struct.sta_info, ptr %s.0.lcssa.i212, i32 0, i32 4
  %call90 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef %76, ptr noundef %addr) #15
  %func.i = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 92
  %77 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %func.i, align 4
  %set_tim.i = getelementptr inbounds %struct.prism2_helper_functions, ptr %78, i32 0, i32 15
  %79 = ptrtoint ptr %set_tim.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %set_tim.i, align 4
  %tobool.not.i = icmp eq ptr %80, null
  br i1 %tobool.not.i, label %do.end.out.sink.split_crit_edge, label %if.then.i

do.end.out.sink.split_crit_edge:                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.sink.split

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %aid = getelementptr inbounds %struct.sta_info, ptr %s.0.lcssa.i212, i32 0, i32 5
  %81 = ptrtoint ptr %aid to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %aid, align 2
  %conv93 = zext i16 %82 to i32
  %83 = ptrtoint ptr %dev87 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dev87, align 4
  %call.i = tail call i32 %80(ptr noundef %84, i32 noundef %conv93, i32 noundef 1) #12
  br label %out.sink.split

if.end96:                                         ; preds = %if.end81
  %tx_buf = getelementptr inbounds %struct.sta_info, ptr %s.0.lcssa.i212, i32 0, i32 18
  %85 = ptrtoint ptr %tx_buf to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %tx_buf, align 4
  %cmp.i.not = icmp eq ptr %86, %tx_buf
  tail call void @skb_queue_tail(ptr noundef %tx_buf, ptr noundef %1) #12
  br i1 %cmp.i.not, label %if.then101, label %if.end96.out_crit_edge

if.end96.out_crit_edge:                           ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then101:                                       ; preds = %if.end96
  %func.i203 = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 92
  %87 = ptrtoint ptr %func.i203 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %func.i203, align 4
  %set_tim.i204 = getelementptr inbounds %struct.prism2_helper_functions, ptr %88, i32 0, i32 15
  %89 = ptrtoint ptr %set_tim.i204 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %set_tim.i204, align 4
  %tobool.not.i205 = icmp eq ptr %90, null
  br i1 %tobool.not.i205, label %if.then101.out.sink.split_crit_edge, label %if.then.i208

if.then101.out.sink.split_crit_edge:              ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.sink.split

if.then.i208:                                     ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #14
  %aid110 = getelementptr inbounds %struct.sta_info, ptr %s.0.lcssa.i212, i32 0, i32 5
  %91 = ptrtoint ptr %aid110 to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %aid110, align 2
  %conv111 = zext i16 %92 to i32
  %dev.i206 = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 5
  %93 = ptrtoint ptr %dev.i206 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %dev.i206, align 4
  %call.i207 = tail call i32 %90(ptr noundef %94, i32 noundef %conv111, i32 noundef 1) #12
  br label %out.sink.split

out.sink.split:                                   ; preds = %if.then.i208, %if.then101.out.sink.split_crit_edge, %if.then.i, %do.end.out.sink.split_crit_edge
  %ret.1.ph = phi i32 [ 1, %do.end.out.sink.split_crit_edge ], [ 1, %if.then.i ], [ 3, %if.then101.out.sink.split_crit_edge ], [ 3, %if.then.i208 ]
  %95 = ptrtoint ptr %flags46 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %flags46, align 4
  %or113 = or i32 %96, 8
  store i32 %or113, ptr %flags46, align 4
  br label %out

out:                                              ; preds = %out.sink.split, %if.end96.out_crit_edge, %if.end75.out_crit_edge, %if.end62.out_crit_edge, %if.end57.out_crit_edge
  %ret.1 = phi i32 [ %51, %if.end57.out_crit_edge ], [ %51, %if.end75.out_crit_edge ], [ %51, %if.end62.out_crit_edge ], [ 3, %if.end96.out_crit_edge ], [ %ret.1.ph, %out.sink.split ]
  %cmp115.not = icmp eq ptr %s.0.lcssa.i212, null
  br i1 %cmp115.not, label %out.if.end141_crit_edge, label %if.then117

out.if.end141_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end141

if.then117:                                       ; preds = %out
  %97 = zext i32 %ret.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %97, ptr @__sancov_gen_cov_switch_values.271)
  switch i32 %ret.1, label %if.then117.if.else_crit_edge [
    i32 4, label %if.then117.if.then123_crit_edge
    i32 0, label %if.then117.if.then123_crit_edge225
  ]

if.then117.if.then123_crit_edge225:               ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then123

if.then117.if.then123_crit_edge:                  ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then123

if.then117.if.else_crit_edge:                     ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.then123:                                       ; preds = %if.then117.if.then123_crit_edge, %if.then117.if.then123_crit_edge225
  %tx_packets = getelementptr inbounds %struct.sta_info, ptr %s.0.lcssa.i212, i32 0, i32 15
  %98 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %tx_packets, align 4
  %inc124 = add i32 %99, 1
  store i32 %inc124, ptr %tx_packets, align 4
  %100 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %len, align 4
  %tx_bytes = getelementptr inbounds %struct.sta_info, ptr %s.0.lcssa.i212, i32 0, i32 17
  %102 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %tx_bytes, align 4
  %add = add i32 %103, %101
  store i32 %add, ptr %tx_bytes, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %104 = load volatile i32, ptr @jiffies, align 128
  %last_tx = getelementptr inbounds %struct.sta_info, ptr %s.0.lcssa.i212, i32 0, i32 13
  %105 = ptrtoint ptr %last_tx to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %104, ptr %last_tx, align 4
  %106 = zext i32 %ret.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %106, ptr @__sancov_gen_cov_switch_values.272)
  switch i32 %ret.1, label %if.then123.if.else_crit_edge [
    i32 4, label %if.then123.land.lhs.true132_crit_edge
    i32 0, label %if.then123.land.lhs.true132_crit_edge226
  ]

if.then123.land.lhs.true132_crit_edge226:         ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true132

if.then123.land.lhs.true132_crit_edge:            ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true132

if.then123.if.else_crit_edge:                     ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true132:                                 ; preds = %if.then123.land.lhs.true132_crit_edge, %if.then123.land.lhs.true132_crit_edge226
  %crypt = getelementptr inbounds %struct.sta_info, ptr %s.0.lcssa.i212, i32 0, i32 31
  %107 = ptrtoint ptr %crypt to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %crypt, align 4
  %tobool133.not = icmp eq ptr %108, null
  br i1 %tobool133.not, label %land.lhs.true132.if.else_crit_edge, label %land.lhs.true134

land.lhs.true132.if.else_crit_edge:               ; preds = %land.lhs.true132
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true134:                                 ; preds = %land.lhs.true132
  %host_encrypt = getelementptr inbounds %struct.hostap_tx_data, ptr %tx, i32 0, i32 1
  %109 = ptrtoint ptr %host_encrypt to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %host_encrypt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %tobool135.not = icmp eq i32 %110, 0
  br i1 %tobool135.not, label %land.lhs.true134.if.else_crit_edge, label %if.then136

land.lhs.true134.if.else_crit_edge:               ; preds = %land.lhs.true134
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.then136:                                       ; preds = %land.lhs.true134
  call void @__sanitizer_cov_trace_pc() #14
  %crypt138 = getelementptr inbounds %struct.hostap_tx_data, ptr %tx, i32 0, i32 2
  %111 = ptrtoint ptr %crypt138 to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %108, ptr %crypt138, align 4
  %sta_ptr = getelementptr inbounds %struct.hostap_tx_data, ptr %tx, i32 0, i32 3
  %112 = ptrtoint ptr %sta_ptr to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %s.0.lcssa.i212, ptr %sta_ptr, align 4
  br label %if.end141

if.else:                                          ; preds = %land.lhs.true134.if.else_crit_edge, %land.lhs.true132.if.else_crit_edge, %if.then123.if.else_crit_edge, %if.then117.if.else_crit_edge
  %users139 = getelementptr inbounds %struct.sta_info, ptr %s.0.lcssa.i212, i32 0, i32 2
  %call.i.i202 = tail call zeroext i1 @__kasan_check_write(ptr noundef %users139, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %users139, i32 1, i32 3, i32 1) #12
  %113 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users139, ptr %users139, i32 1, ptr elementtype(i32) %users139) #12, !srcloc !532
  br label %if.end141

if.end141:                                        ; preds = %if.else, %if.then136, %out.if.end141_crit_edge, %if.end41.if.end141_crit_edge, %if.then39, %if.then5, %lor.lhs.false3.if.end141_crit_edge, %lor.lhs.false.if.end141_crit_edge, %entry.if.end141_crit_edge
  %ret.1217 = phi i32 [ %ret.1, %if.then136 ], [ %ret.1, %if.else ], [ %ret.1, %out.if.end141_crit_edge ], [ %spec.select, %if.then5 ], [ 1, %if.then39 ], [ 0, %if.end41.if.end141_crit_edge ], [ 0, %lor.lhs.false3.if.end141_crit_edge ], [ 0, %lor.lhs.false.if.end141_crit_edge ], [ 0, %entry.if.end141_crit_edge ]
  ret i32 %ret.1217
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ap_update_sta_tx_rate(ptr noundef %sta, ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_rate = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 24
  %0 = ptrtoint ptr %tx_rate to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %tx_rate, align 1
  %local1 = getelementptr i8, ptr %dev, i32 2316
  %2 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %local1, align 4
  %tx_rate_idx = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 25
  %4 = ptrtoint ptr %tx_rate_idx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %tx_rate_idx, align 2
  %idxprom = zext i8 %5 to i32
  %arrayidx = getelementptr %struct.sta_info, ptr %sta, i32 0, i32 27, i32 %idxprom
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %inc = add i32 %7, 1
  store i32 %inc, ptr %arrayidx, align 4
  %tx_since_last_failure = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 29
  %8 = ptrtoint ptr %tx_since_last_failure to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tx_since_last_failure, align 4
  %inc2 = add i32 %9, 1
  store i32 %inc2, ptr %tx_since_last_failure, align 4
  %tx_consecutive_exc = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 30
  %10 = ptrtoint ptr %tx_consecutive_exc to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %tx_consecutive_exc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 49, i32 %inc2)
  %cmp = icmp ugt i32 %inc2, 49
  br i1 %cmp, label %land.lhs.true, label %entry.if.end45_crit_edge

entry.if.end45_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end45

land.lhs.true:                                    ; preds = %entry
  %tx_max_rate = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 26
  %11 = ptrtoint ptr %tx_max_rate to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %tx_max_rate, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %12)
  %cmp8 = icmp ult i8 %5, %12
  br i1 %cmp8, label %while.cond.preheader, label %land.lhs.true.if.end45_crit_edge

land.lhs.true.if.end45_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end45

while.cond.preheader:                             ; preds = %land.lhs.true
  %conv13 = zext i8 %12 to i32
  %tx_supp_rates.i = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 23
  %tx_rate_control.i = getelementptr inbounds %struct.local_info, ptr %3, i32 0, i32 39
  br label %while.cond

while.cond:                                       ; preds = %ap_tx_rate_ok.exit.while.cond_crit_edge, %while.cond.preheader
  %new_rate.0 = phi i32 [ %inc16, %ap_tx_rate_ok.exit.while.cond_crit_edge ], [ %idxprom, %while.cond.preheader ]
  call void @__sanitizer_cov_trace_cmp4(i32 %new_rate.0, i32 %conv13)
  %exitcond.not = icmp eq i32 %new_rate.0, %conv13
  br i1 %exitcond.not, label %while.endthread-pre-split, label %while.body

while.body:                                       ; preds = %while.cond
  %inc16 = add nuw nsw i32 %new_rate.0, 1
  %13 = ptrtoint ptr %tx_supp_rates.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %tx_supp_rates.i, align 4
  %conv2.i = zext i8 %14 to i32
  %shl.i = shl i32 2, %new_rate.0
  %and.i = and i32 %shl.i, %conv2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %while.body.ap_tx_rate_ok.exit_crit_edge, label %if.end.i

while.body.ap_tx_rate_ok.exit_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %ap_tx_rate_ok.exit

if.end.i:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %tx_rate_control.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %tx_rate_control.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %cmp4.not.i = icmp eq i16 %16, 0
  %conv3.i = zext i16 %16 to i32
  %and9.i = and i32 %shl.i, %conv3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp ne i32 %and9.i, 0
  %or.cond.i = select i1 %cmp4.not.i, i1 true, i1 %tobool10.not.i
  %spec.select.i = zext i1 %or.cond.i to i32
  br label %ap_tx_rate_ok.exit

ap_tx_rate_ok.exit:                               ; preds = %if.end.i, %while.body.ap_tx_rate_ok.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %while.body.ap_tx_rate_ok.exit_crit_edge ], [ %spec.select.i, %if.end.i ]
  %tobool.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool.not, label %ap_tx_rate_ok.exit.while.cond_crit_edge, label %if.then18

ap_tx_rate_ok.exit.while.cond_crit_edge:          ; preds = %ap_tx_rate_ok.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond

if.then18:                                        ; preds = %ap_tx_rate_ok.exit
  call void @__sanitizer_cov_trace_pc() #14
  %conv19 = trunc i32 %inc16 to i8
  %17 = ptrtoint ptr %tx_rate_idx to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv19, ptr %tx_rate_idx, align 2
  br label %while.end

while.endthread-pre-split:                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  %18 = ptrtoint ptr %tx_rate_idx to i32
  call void @__asan_load1_noabort(i32 %18)
  %.pr = load i8, ptr %tx_rate_idx, align 2
  br label %while.end

while.end:                                        ; preds = %while.endthread-pre-split, %if.then18
  %19 = phi i8 [ %.pr, %while.endthread-pre-split ], [ %conv19, %if.then18 ]
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %19)
  %cmp23.not = icmp eq i8 %5, %19
  br i1 %cmp23.not, label %while.end.if.end43_crit_edge, label %if.then25

while.end.if.end43_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43

if.then25:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %19)
  %20 = icmp ult i8 %19, 4
  %switch.cast = zext i8 %19 to i32
  %switch.shiftamt = shl nuw nsw i32 %switch.cast, 3
  %switch.downshift = lshr i32 1849103370, %switch.shiftamt
  %switch.masked = trunc i32 %switch.downshift to i8
  %.sink = select i1 %20, i8 %switch.masked, i8 0
  %21 = ptrtoint ptr %tx_rate to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %.sink, ptr %tx_rate, align 1
  %addr = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 4
  %conv39 = zext i8 %.sink to i32
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.239, ptr noundef %dev, ptr noundef %addr, i32 noundef %conv39) #15
  br label %if.end43

if.end43:                                         ; preds = %if.then25, %while.end.if.end43_crit_edge
  %22 = ptrtoint ptr %tx_since_last_failure to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %tx_since_last_failure, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.end43, %land.lhs.true.if.end45_crit_edge, %entry.if.end45_crit_edge
  %conv = zext i8 %1 to i32
  ret i32 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hostap_handle_sta_release(ptr noundef %ptr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %users = getelementptr inbounds %struct.sta_info, ptr %ptr, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %users, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %users, i32 1, i32 3, i32 1) #12
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users, ptr %users, i32 1, ptr elementtype(i32) %users) #12, !srcloc !532
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hostap_handle_sta_tx_exc(ptr nocapture noundef readonly %local, ptr nocapture noundef readonly %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %ap = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 22
  %2 = ptrtoint ptr %ap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ap, align 4
  %sta_table_lock = getelementptr inbounds %struct.ap_data, ptr %3, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %sta_table_lock) #12
  %4 = ptrtoint ptr %ap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ap, align 4
  %addr1 = getelementptr inbounds %struct.ieee80211_hdr, ptr %1, i32 0, i32 2
  %arrayidx.i = getelementptr %struct.ieee80211_hdr, ptr %1, i32 0, i32 2, i32 5
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 1
  %idxprom.i = zext i8 %7 to i32
  %arrayidx1.i = getelementptr %struct.ap_data, ptr %5, i32 0, i32 10, i32 %idxprom.i
  %8 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %s.06.i = load ptr, ptr %arrayidx1.i, align 4
  %cmp.not7.i = icmp eq ptr %s.06.i, null
  br i1 %cmp.not7.i, label %entry.if.then_crit_edge, label %land.rhs.lr.ph.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

land.rhs.lr.ph.i:                                 ; preds = %entry
  %9 = ptrtoint ptr %addr1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %addr1, align 4
  %add.ptr1.i.i = getelementptr %struct.ieee80211_hdr, ptr %1, i32 0, i32 2, i32 4
  %11 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %add.ptr1.i.i, align 2
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %while.body.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %s.08.i = phi ptr [ %s.06.i, %land.rhs.lr.ph.i ], [ %s.0.i, %while.body.i.land.rhs.i_crit_edge ]
  %addr.i = getelementptr inbounds %struct.sta_info, ptr %s.08.i, i32 0, i32 4
  %13 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %addr.i, align 4
  %xor.i.i = xor i32 %14, %10
  %add.ptr.i.i = getelementptr %struct.sta_info, ptr %s.08.i, i32 0, i32 4, i32 4
  %15 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %add.ptr.i.i, align 2
  %xor37.i.i = xor i16 %16, %12
  %xor3.i.i = zext i16 %xor37.i.i to i32
  %or.i.i = or i32 %xor.i.i, %xor3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i, label %if.end, label %while.body.i

while.body.i:                                     ; preds = %land.rhs.i
  %hnext.i = getelementptr inbounds %struct.sta_info, ptr %s.08.i, i32 0, i32 1
  %17 = ptrtoint ptr %hnext.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %s.0.i = load ptr, ptr %hnext.i, align 4
  %cmp.not.i = icmp eq ptr %s.0.i, null
  br i1 %cmp.not.i, label %while.body.i.if.then_crit_edge, label %while.body.i.land.rhs.i_crit_edge

while.body.i.land.rhs.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i

while.body.i.if.then_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then:                                          ; preds = %while.body.i.if.then_crit_edge, %entry.if.then_crit_edge
  %sta_table_lock4 = getelementptr inbounds %struct.ap_data, ptr %5, i32 0, i32 7
  tail call void @_raw_spin_unlock(ptr noundef %sta_table_lock4) #12
  %dev = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 5
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %20 = load volatile i32, ptr @jiffies, align 128
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef %19, ptr noundef %addr1, i32 noundef %20) #15
  br label %cleanup

if.end:                                           ; preds = %land.rhs.i
  %tx_since_last_failure = getelementptr inbounds %struct.sta_info, ptr %s.08.i, i32 0, i32 29
  %21 = ptrtoint ptr %tx_since_last_failure to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %tx_since_last_failure, align 4
  %tx_consecutive_exc = getelementptr inbounds %struct.sta_info, ptr %s.08.i, i32 0, i32 30
  %22 = ptrtoint ptr %tx_consecutive_exc to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tx_consecutive_exc, align 4
  %inc = add i32 %23, 1
  store i32 %inc, ptr %tx_consecutive_exc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %inc)
  %cmp = icmp ugt i32 %inc, 1
  br i1 %cmp, label %land.lhs.true, label %if.end.if.end63_crit_edge

if.end.if.end63_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end63

land.lhs.true:                                    ; preds = %if.end
  %tx_rate_idx = getelementptr inbounds %struct.sta_info, ptr %s.08.i, i32 0, i32 25
  %24 = ptrtoint ptr %tx_rate_idx to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %tx_rate_idx, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %cmp13.not = icmp eq i8 %25, 0
  br i1 %cmp13.not, label %land.lhs.true.if.end63_crit_edge, label %land.lhs.true15

land.lhs.true.if.end63_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end63

land.lhs.true15:                                  ; preds = %land.lhs.true
  %rate = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %26 = ptrtoint ptr %rate to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %rate, align 4
  %tx_rate = getelementptr inbounds %struct.sta_info, ptr %s.08.i, i32 0, i32 24
  %28 = ptrtoint ptr %tx_rate to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %tx_rate, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %27, i8 %29)
  %cmp18.not = icmp ugt i8 %27, %29
  br i1 %cmp18.not, label %land.lhs.true15.if.end63_crit_edge, label %while.cond.preheader

land.lhs.true15.if.end63_crit_edge:               ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end63

while.cond.preheader:                             ; preds = %land.lhs.true15
  %conv = zext i8 %25 to i32
  %tx_max_rate.i = getelementptr inbounds %struct.sta_info, ptr %s.08.i, i32 0, i32 26
  %30 = ptrtoint ptr %tx_max_rate.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %tx_max_rate.i, align 1
  %conv.i = zext i8 %31 to i32
  %tx_supp_rates.i = getelementptr inbounds %struct.sta_info, ptr %s.08.i, i32 0, i32 23
  %tx_rate_control.i = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 39
  br label %while.cond

while.cond:                                       ; preds = %ap_tx_rate_ok.exit.while.cond_crit_edge, %while.cond.preheader
  %rate21.0 = phi i32 [ %dec, %ap_tx_rate_ok.exit.while.cond_crit_edge ], [ %conv, %while.cond.preheader ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rate21.0)
  %cmp24 = icmp sgt i32 %rate21.0, 0
  br i1 %cmp24, label %while.body, label %while.endthread-pre-split

while.body:                                       ; preds = %while.cond
  %dec = add nsw i32 %rate21.0, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %dec, i32 %conv.i)
  %cmp.i = icmp ugt i32 %dec, %conv.i
  br i1 %cmp.i, label %while.body.ap_tx_rate_ok.exit_crit_edge, label %lor.lhs.false.i

while.body.ap_tx_rate_ok.exit_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %ap_tx_rate_ok.exit

lor.lhs.false.i:                                  ; preds = %while.body
  %32 = ptrtoint ptr %tx_supp_rates.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %tx_supp_rates.i, align 4
  %conv2.i = zext i8 %33 to i32
  %shl.i = shl nuw i32 1, %dec
  %and.i = and i32 %shl.i, %conv2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i.ap_tx_rate_ok.exit_crit_edge, label %if.end.i

lor.lhs.false.i.ap_tx_rate_ok.exit_crit_edge:     ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ap_tx_rate_ok.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  %34 = ptrtoint ptr %tx_rate_control.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %tx_rate_control.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %35)
  %cmp4.not.i = icmp eq i16 %35, 0
  %conv3.i = zext i16 %35 to i32
  %and9.i = and i32 %shl.i, %conv3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp ne i32 %and9.i, 0
  %or.cond.i = select i1 %cmp4.not.i, i1 true, i1 %tobool10.not.i
  %spec.select.i = zext i1 %or.cond.i to i32
  br label %ap_tx_rate_ok.exit

ap_tx_rate_ok.exit:                               ; preds = %if.end.i, %lor.lhs.false.i.ap_tx_rate_ok.exit_crit_edge, %while.body.ap_tx_rate_ok.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %lor.lhs.false.i.ap_tx_rate_ok.exit_crit_edge ], [ 0, %while.body.ap_tx_rate_ok.exit_crit_edge ], [ %spec.select.i, %if.end.i ]
  %tobool27.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool27.not, label %ap_tx_rate_ok.exit.while.cond_crit_edge, label %if.then28

ap_tx_rate_ok.exit.while.cond_crit_edge:          ; preds = %ap_tx_rate_ok.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond

if.then28:                                        ; preds = %ap_tx_rate_ok.exit
  call void @__sanitizer_cov_trace_pc() #14
  %conv29 = trunc i32 %dec to i8
  %36 = ptrtoint ptr %tx_rate_idx to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv29, ptr %tx_rate_idx, align 2
  br label %while.end

while.endthread-pre-split:                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  %37 = ptrtoint ptr %tx_rate_idx to i32
  call void @__asan_load1_noabort(i32 %37)
  %.pr = load i8, ptr %tx_rate_idx, align 2
  br label %while.end

while.end:                                        ; preds = %while.endthread-pre-split, %if.then28
  %38 = phi i8 [ %.pr, %while.endthread-pre-split ], [ %conv29, %if.then28 ]
  call void @__sanitizer_cov_trace_cmp1(i8 %25, i8 %38)
  %cmp34.not = icmp eq i8 %25, %38
  br i1 %cmp34.not, label %while.end.if.end61_crit_edge, label %if.then36

while.end.if.end61_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end61

if.then36:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %38)
  %39 = icmp ult i8 %38, 4
  %switch.cast = zext i8 %38 to i32
  %switch.shiftamt = shl nuw nsw i32 %switch.cast, 3
  %switch.downshift = lshr i32 1849103370, %switch.shiftamt
  %switch.masked = trunc i32 %switch.downshift to i8
  %.sink = select i1 %39, i8 %switch.masked, i8 0
  %40 = ptrtoint ptr %tx_rate to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %.sink, ptr %tx_rate, align 1
  %dev52 = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 5
  %41 = ptrtoint ptr %dev52 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev52, align 4
  %conv57 = zext i8 %.sink to i32
  %call58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef %42, ptr noundef %addr.i, i32 noundef %conv57) #15
  br label %if.end61

if.end61:                                         ; preds = %if.then36, %while.end.if.end61_crit_edge
  %43 = ptrtoint ptr %tx_consecutive_exc to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %tx_consecutive_exc, align 4
  br label %if.end63

if.end63:                                         ; preds = %if.end61, %land.lhs.true15.if.end63_crit_edge, %land.lhs.true.if.end63_crit_edge, %if.end.if.end63_crit_edge
  %44 = ptrtoint ptr %ap to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ap, align 4
  %sta_table_lock65 = getelementptr inbounds %struct.ap_data, ptr %45, i32 0, i32 7
  tail call void @_raw_spin_unlock(ptr noundef %sta_table_lock65) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end63, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hostap_update_sta_ps(ptr nocapture noundef readonly %local, ptr nocapture noundef readonly %hdr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ap = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 22
  %0 = ptrtoint ptr %ap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ap, align 4
  %sta_table_lock = getelementptr inbounds %struct.ap_data, ptr %1, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %sta_table_lock) #12
  %2 = ptrtoint ptr %ap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ap, align 4
  %arrayidx.i = getelementptr %struct.ieee80211_hdr, ptr %hdr, i32 0, i32 3, i32 5
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i, align 1
  %idxprom.i = zext i8 %5 to i32
  %arrayidx1.i = getelementptr %struct.ap_data, ptr %3, i32 0, i32 10, i32 %idxprom.i
  %6 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %s.06.i = load ptr, ptr %arrayidx1.i, align 4
  %cmp.not7.i = icmp eq ptr %s.06.i, null
  br i1 %cmp.not7.i, label %entry.if.then5.critedge_crit_edge, label %land.rhs.lr.ph.i

entry.if.then5.critedge_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then5.critedge

land.rhs.lr.ph.i:                                 ; preds = %entry
  %addr2 = getelementptr inbounds %struct.ieee80211_hdr, ptr %hdr, i32 0, i32 3
  %7 = ptrtoint ptr %addr2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %addr2, align 4
  %add.ptr1.i.i = getelementptr %struct.ieee80211_hdr, ptr %hdr, i32 0, i32 3, i32 4
  %9 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %add.ptr1.i.i, align 2
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %while.body.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %s.08.i = phi ptr [ %s.06.i, %land.rhs.lr.ph.i ], [ %s.0.i, %while.body.i.land.rhs.i_crit_edge ]
  %addr.i = getelementptr inbounds %struct.sta_info, ptr %s.08.i, i32 0, i32 4
  %11 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %addr.i, align 4
  %xor.i.i = xor i32 %12, %8
  %add.ptr.i.i = getelementptr %struct.sta_info, ptr %s.08.i, i32 0, i32 4, i32 4
  %13 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %add.ptr.i.i, align 2
  %xor37.i.i = xor i16 %14, %10
  %xor3.i.i = zext i16 %xor37.i.i to i32
  %or.i.i = or i32 %xor.i.i, %xor3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i, label %if.then, label %while.body.i

while.body.i:                                     ; preds = %land.rhs.i
  %hnext.i = getelementptr inbounds %struct.sta_info, ptr %s.08.i, i32 0, i32 1
  %15 = ptrtoint ptr %hnext.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %s.0.i = load ptr, ptr %hnext.i, align 4
  %cmp.not.i = icmp eq ptr %s.0.i, null
  br i1 %cmp.not.i, label %while.body.i.if.then5.critedge_crit_edge, label %while.body.i.land.rhs.i_crit_edge

while.body.i.land.rhs.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i

while.body.i.if.then5.critedge_crit_edge:         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then5.critedge

if.then:                                          ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  %users = getelementptr inbounds %struct.sta_info, ptr %s.08.i, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %users, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %users, i32 1, i32 3, i32 1) #12
  %16 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users, ptr %users, i32 1, ptr elementtype(i32) %users) #12, !srcloc !531
  %17 = ptrtoint ptr %ap to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ap, align 4
  %sta_table_lock3.c = getelementptr inbounds %struct.ap_data, ptr %18, i32 0, i32 7
  tail call void @_raw_spin_unlock(ptr noundef %sta_table_lock3.c) #12
  %19 = ptrtoint ptr %hdr to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %hdr, align 2
  %21 = tail call i16 @llvm.bswap.i16(i16 %20)
  %conv = zext i16 %21 to i32
  %and = and i32 %conv, 4096
  %and8 = and i32 %conv, 12
  %and10 = and i32 %conv, 240
  tail call fastcc void @hostap_update_sta_ps2(ptr noundef %local, ptr noundef nonnull %s.08.i, i32 noundef %and, i32 noundef %and8, i32 noundef %and10)
  %call.i.i24 = tail call zeroext i1 @__kasan_check_write(ptr noundef %users, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %users, i32 1, i32 3, i32 1) #12
  %22 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users, ptr %users, i32 1, ptr elementtype(i32) %users) #12, !srcloc !532
  br label %cleanup

if.then5.critedge:                                ; preds = %while.body.i.if.then5.critedge_crit_edge, %entry.if.then5.critedge_crit_edge
  %sta_table_lock3.c23 = getelementptr inbounds %struct.ap_data, ptr %3, i32 0, i32 7
  tail call void @_raw_spin_unlock(ptr noundef %sta_table_lock3.c23) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then5.critedge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ -1, %if.then5.critedge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hostap_update_sta_ps2(ptr nocapture noundef readonly %local, ptr noundef %sta, i32 noundef %pwrmgt, i32 noundef %type, i32 noundef %stype) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pwrmgt)
  %tobool.not = icmp eq i32 %pwrmgt, 0
  %flags5 = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 6
  %0 = ptrtoint ptr %flags5 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags5, align 4
  %and6 = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool.not, label %land.lhs.true4.critedge, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  br i1 %tobool7.not, label %if.then, label %land.lhs.true.if.end16_crit_edge

land.lhs.true.if.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %or = or i32 %1, 4
  %2 = ptrtoint ptr %flags5 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %or, ptr %flags5, align 4
  br label %if.end16

land.lhs.true4.critedge:                          ; preds = %entry
  br i1 %tobool7.not, label %land.lhs.true4.critedge.if.end16_crit_edge, label %if.then8

land.lhs.true4.critedge.if.end16_crit_edge:       ; preds = %land.lhs.true4.critedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16

if.then8:                                         ; preds = %land.lhs.true4.critedge
  %and10 = and i32 %1, -5
  %3 = ptrtoint ptr %flags5 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %and10, ptr %flags5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %type)
  %cmp.not = icmp eq i32 %type, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 160, i32 %stype)
  %cmp13.not = icmp eq i32 %stype, 160
  %or.cond = and i1 %cmp.not, %cmp13.not
  br i1 %or.cond, label %if.then8.if.end16_crit_edge, label %if.then14

if.then8.if.end16_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16

if.then14:                                        ; preds = %if.then8
  %tx_buf.i = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 18
  %4 = ptrtoint ptr %tx_buf.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tx_buf.i, align 4
  %cmp.i.not.i = icmp eq ptr %5, %tx_buf.i
  br i1 %cmp.i.not.i, label %if.then14.if.end16_crit_edge, label %if.end.i

if.then14.if.end16_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16

if.end.i:                                         ; preds = %if.then14
  %call.i.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 16, i32 noundef 2592) #12
  %cmp.i = icmp eq ptr %call.i.i.i, null
  br i1 %cmp.i, label %do.end.i, label %if.end4.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 5
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.241, ptr noundef %7) #15
  br label %if.end16

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %call5.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef 16) #12
  %8 = ptrtoint ptr %call5.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 -23552, ptr %call5.i, align 2
  %addr1.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %call5.i, i32 0, i32 2
  %dev7.i = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 5
  %9 = ptrtoint ptr %dev7.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev7.i, align 4
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 86
  %11 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev_addr.i, align 64
  %13 = call ptr @memcpy(ptr %addr1.i, ptr %12, i32 6)
  %addr2.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %call5.i, i32 0, i32 3
  %addr.i = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 4
  %14 = call ptr @memcpy(ptr %addr2.i, ptr %addr.i, i32 6)
  %aid.i = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 5
  %15 = ptrtoint ptr %aid.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %aid.i, align 2
  %17 = or i16 %16, -16384
  %18 = tail call i16 @llvm.bswap.i16(i16 %17) #12
  %duration_id.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %call5.i, i32 0, i32 1
  %19 = ptrtoint ptr %duration_id.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %duration_id.i, align 2
  %20 = ptrtoint ptr %dev7.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev7.i, align 4
  %22 = getelementptr inbounds %struct.anon.44, ptr %call.i.i.i, i32 0, i32 2
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %21, ptr %22, align 8
  %24 = load ptr, ptr %dev7.i, align 4
  tail call void @hostap_rx(ptr noundef %24, ptr noundef nonnull %call.i.i.i, ptr undef) #12
  br label %if.end16

if.end16:                                         ; preds = %if.end4.i, %do.end.i, %if.then14.if.end16_crit_edge, %if.then8.if.end16_crit_edge, %land.lhs.true4.critedge.if.end16_crit_edge, %if.then, %land.lhs.true.if.end16_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hostap_handle_sta_rx(ptr nocapture noundef readonly %local, ptr noundef %dev, ptr noundef %skb, ptr noundef %rx_stats, i32 noundef %wds) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ap = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 22
  %0 = ptrtoint ptr %ap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ap, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %3, align 2
  %6 = tail call i16 @llvm.bswap.i16(i16 %5)
  %conv = zext i16 %6 to i32
  %and = and i16 %6, 12
  %and3 = and i16 %6, 240
  %sta_table_lock = getelementptr inbounds %struct.ap_data, ptr %1, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %sta_table_lock) #12
  %7 = ptrtoint ptr %ap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ap, align 4
  %addr2 = getelementptr inbounds %struct.ieee80211_hdr, ptr %3, i32 0, i32 3
  %arrayidx.i = getelementptr %struct.ieee80211_hdr, ptr %3, i32 0, i32 3, i32 5
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.i, align 1
  %idxprom.i = zext i8 %10 to i32
  %arrayidx1.i = getelementptr %struct.ap_data, ptr %8, i32 0, i32 10, i32 %idxprom.i
  %11 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %s.06.i = load ptr, ptr %arrayidx1.i, align 4
  %cmp.not7.i = icmp eq ptr %s.06.i, null
  br i1 %cmp.not7.i, label %if.end.if.else.critedge_crit_edge, label %land.rhs.lr.ph.i

if.end.if.else.critedge_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.critedge

land.rhs.lr.ph.i:                                 ; preds = %if.end
  %12 = ptrtoint ptr %addr2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %addr2, align 4
  %add.ptr1.i.i = getelementptr %struct.ieee80211_hdr, ptr %3, i32 0, i32 3, i32 4
  %14 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %add.ptr1.i.i, align 2
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %while.body.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %s.08.i = phi ptr [ %s.06.i, %land.rhs.lr.ph.i ], [ %s.0.i, %while.body.i.land.rhs.i_crit_edge ]
  %addr.i = getelementptr inbounds %struct.sta_info, ptr %s.08.i, i32 0, i32 4
  %16 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %addr.i, align 4
  %xor.i.i = xor i32 %17, %13
  %add.ptr.i.i = getelementptr %struct.sta_info, ptr %s.08.i, i32 0, i32 4, i32 4
  %18 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %add.ptr.i.i, align 2
  %xor37.i.i = xor i16 %19, %15
  %xor3.i.i = zext i16 %xor37.i.i to i32
  %or.i.i = or i32 %xor.i.i, %xor3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i, label %if.then7, label %while.body.i

while.body.i:                                     ; preds = %land.rhs.i
  %hnext.i = getelementptr inbounds %struct.sta_info, ptr %s.08.i, i32 0, i32 1
  %20 = ptrtoint ptr %hnext.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %s.0.i = load ptr, ptr %hnext.i, align 4
  %cmp.not.i = icmp eq ptr %s.0.i, null
  br i1 %cmp.not.i, label %while.body.i.if.else.critedge_crit_edge, label %while.body.i.land.rhs.i_crit_edge

while.body.i.land.rhs.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i

while.body.i.if.else.critedge_crit_edge:          ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.critedge

if.then7:                                         ; preds = %land.rhs.i
  %users = getelementptr inbounds %struct.sta_info, ptr %s.08.i, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %users, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %users, i32 1, i32 3, i32 1) #12
  %21 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users, ptr %users, i32 1, ptr elementtype(i32) %users) #12, !srcloc !531
  %22 = ptrtoint ptr %ap to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ap, align 4
  %sta_table_lock10.c = getelementptr inbounds %struct.ap_data, ptr %23, i32 0, i32 7
  tail call void @_raw_spin_unlock(ptr noundef %sta_table_lock10.c) #12
  %flags = getelementptr inbounds %struct.sta_info, ptr %s.08.i, i32 0, i32 6
  %24 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags, align 4
  %and12 = and i32 %25, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.then7.if.end15_crit_edge, label %if.then7.if.else_crit_edge

if.then7.if.else_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.then7.if.end15_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

if.else.critedge:                                 ; preds = %while.body.i.if.else.critedge_crit_edge, %if.end.if.else.critedge_crit_edge
  %sta_table_lock10.c225 = getelementptr inbounds %struct.ap_data, ptr %8, i32 0, i32 7
  tail call void @_raw_spin_unlock(ptr noundef %sta_table_lock10.c225) #12
  br label %if.else

if.else:                                          ; preds = %if.else.critedge, %if.then7.if.else_crit_edge
  %tobool.not247 = phi i1 [ true, %if.else.critedge ], [ false, %if.then7.if.else_crit_edge ]
  %s.0.lcssa.i244 = phi ptr [ null, %if.else.critedge ], [ %s.08.i, %if.then7.if.else_crit_edge ]
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then7.if.end15_crit_edge
  %tobool.not248 = phi i1 [ %tobool.not247, %if.else ], [ false, %if.then7.if.end15_crit_edge ]
  %s.0.lcssa.i245 = phi ptr [ %s.0.lcssa.i244, %if.else ], [ %s.08.i, %if.then7.if.end15_crit_edge ]
  %ret.0 = phi i32 [ 0, %if.else ], [ 3, %if.then7.if.end15_crit_edge ]
  %and17 = and i32 %conv, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.else41, label %if.then19

if.then19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wds)
  %tobool20.not = icmp eq i32 %wds, 0
  br i1 %tobool20.not, label %land.lhs.true21, label %if.then19.if.end119_crit_edge

if.then19.if.end119_crit_edge:                    ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end119

land.lhs.true21:                                  ; preds = %if.then19
  br i1 %tobool.not248, label %land.lhs.true21.if.then27_crit_edge, label %lor.lhs.false

land.lhs.true21.if.then27_crit_edge:              ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then27

lor.lhs.false:                                    ; preds = %land.lhs.true21
  %flags24 = getelementptr inbounds %struct.sta_info, ptr %s.0.lcssa.i245, i32 0, i32 6
  %26 = ptrtoint ptr %flags24 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flags24, align 4
  %and25 = and i32 %27, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %lor.lhs.false.if.then27_crit_edge, label %lor.lhs.false.if.then121_crit_edge

lor.lhs.false.if.then121_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then121

lor.lhs.false.if.then27_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then27

if.then27:                                        ; preds = %lor.lhs.false.if.then27_crit_edge, %land.lhs.true21.if.then27_crit_edge
  %hostapd = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 68
  %28 = ptrtoint ptr %hostapd to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %hostapd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool28.not = icmp eq i32 %29, 0
  br i1 %tobool28.not, label %do.end, label %if.then29

if.then29:                                        ; preds = %if.then27
  %apdev = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 70
  %30 = ptrtoint ptr %apdev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %apdev, align 4
  %call30 = tail call i32 @prism2_rx_80211(ptr noundef %31, ptr noundef %skb, ptr noundef %rx_stats, i32 noundef 2) #12
  br i1 %tobool.not248, label %if.then29.cleanup_crit_edge, label %if.then29.if.then147_crit_edge

if.then29.if.then147_crit_edge:                   ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then147

if.then29.cleanup_crit_edge:                      ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end:                                           ; preds = %if.then27
  %32 = lshr exact i16 %and, 2
  %33 = zext i16 %32 to i32
  %34 = lshr exact i16 %and3, 4
  %35 = zext i16 %34 to i32
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef %dev, ptr noundef %addr2, i32 noundef %33, i32 noundef %35) #15
  tail call void @hostap_rx(ptr noundef %dev, ptr noundef %skb, ptr undef)
  br i1 %tobool.not248, label %do.end.cleanup_crit_edge, label %do.end.if.then147_crit_edge

do.end.if.then147_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then147

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else41:                                        ; preds = %if.end15
  %and43 = and i32 %conv, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %if.else60, label %if.then45

if.then45:                                        ; preds = %if.else41
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wds)
  %tobool46.not = icmp eq i32 %wds, 0
  br i1 %tobool46.not, label %if.then47, label %if.then45.if.end119_crit_edge

if.then45.if.end119_crit_edge:                    ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end119

if.then47:                                        ; preds = %if.then45
  %addr1 = getelementptr inbounds %struct.ieee80211_hdr, ptr %3, i32 0, i32 2
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %36 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev_addr, align 64
  %38 = ptrtoint ptr %addr1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %addr1, align 4
  %40 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %37, align 4
  %xor.i = xor i32 %41, %39
  %add.ptr.i = getelementptr %struct.ieee80211_hdr, ptr %3, i32 0, i32 2, i32 4
  %42 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr i8, ptr %37, i32 4
  %44 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %add.ptr1.i, align 2
  %xor37.i = xor i16 %45, %43
  %xor3.i = zext i16 %xor37.i to i32
  %or.i = or i32 %xor.i, %xor3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %do.end53, label %if.then47.out_crit_edge

if.then47.out_crit_edge:                          ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

do.end53:                                         ; preds = %if.then47
  %call55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40) #15
  tail call void @hostap_dump_rx_80211(ptr noundef %dev, ptr noundef %skb, ptr noundef %rx_stats) #12
  br i1 %tobool.not248, label %do.end53.cleanup_crit_edge, label %do.end53.if.then147_crit_edge

do.end53.if.then147_crit_edge:                    ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then147

do.end53.cleanup_crit_edge:                       ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else60:                                        ; preds = %if.else41
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %and3)
  %cmp62 = icmp eq i16 %and3, 64
  %or.cond = and i1 %cmp62, %tobool.not248
  br i1 %or.cond, label %land.lhs.true67, label %if.else60.if.else90_crit_edge

if.else60.if.else90_crit_edge:                    ; preds = %if.else60
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else90

land.lhs.true67:                                  ; preds = %if.else60
  %addr168 = getelementptr inbounds %struct.ieee80211_hdr, ptr %3, i32 0, i32 2
  %dev_addr70 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %46 = ptrtoint ptr %dev_addr70 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev_addr70, align 64
  %48 = ptrtoint ptr %addr168 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %addr168, align 4
  %50 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %47, align 4
  %xor.i228 = xor i32 %51, %49
  %add.ptr.i229 = getelementptr %struct.ieee80211_hdr, ptr %3, i32 0, i32 2, i32 4
  %52 = ptrtoint ptr %add.ptr.i229 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %add.ptr.i229, align 2
  %add.ptr1.i230 = getelementptr i8, ptr %47, i32 4
  %54 = ptrtoint ptr %add.ptr1.i230 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %add.ptr1.i230, align 2
  %xor37.i231 = xor i16 %55, %53
  %xor3.i232 = zext i16 %xor37.i231 to i32
  %or.i233 = or i32 %xor.i228, %xor3.i232
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i233)
  %cmp.i234 = icmp eq i32 %or.i233, 0
  br i1 %cmp.i234, label %if.then73, label %land.lhs.true67.if.else90_crit_edge

land.lhs.true67.if.else90_crit_edge:              ; preds = %land.lhs.true67
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else90

if.then73:                                        ; preds = %land.lhs.true67
  %hostapd74 = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 68
  %56 = ptrtoint ptr %hostapd74 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %hostapd74, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool75.not = icmp eq i32 %57, 0
  br i1 %tobool75.not, label %do.end82, label %if.then76

if.then76:                                        ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #14
  %apdev77 = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 70
  %58 = ptrtoint ptr %apdev77 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %apdev77, align 4
  %call78 = tail call i32 @prism2_rx_80211(ptr noundef %59, ptr noundef %skb, ptr noundef %rx_stats, i32 noundef 2) #12
  br label %cleanup

do.end82:                                         ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #14
  %call88 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef %dev, ptr noundef %addr2) #15
  tail call void @hostap_rx(ptr noundef %dev, ptr noundef %skb, ptr undef)
  br label %cleanup

if.else90:                                        ; preds = %land.lhs.true67.if.else90_crit_edge, %if.else60.if.else90_crit_edge
  br i1 %cmp62, label %if.else90.if.end119_crit_edge, label %if.else95

if.else90.if.end119_crit_edge:                    ; preds = %if.else90
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end119

if.else95:                                        ; preds = %if.else90
  %addr3 = getelementptr inbounds %struct.ieee80211_hdr, ptr %3, i32 0, i32 4
  %dev_addr97 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %60 = ptrtoint ptr %dev_addr97 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev_addr97, align 64
  %62 = ptrtoint ptr %addr3 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %addr3, align 4
  %64 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %61, align 4
  %xor.i235 = xor i32 %65, %63
  %add.ptr.i236 = getelementptr %struct.ieee80211_hdr, ptr %3, i32 0, i32 4, i32 4
  %66 = ptrtoint ptr %add.ptr.i236 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %add.ptr.i236, align 2
  %add.ptr1.i237 = getelementptr i8, ptr %61, i32 4
  %68 = ptrtoint ptr %add.ptr1.i237 to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %add.ptr1.i237, align 2
  %xor37.i238 = xor i16 %69, %67
  %xor3.i239 = zext i16 %xor37.i238 to i32
  %or.i240 = or i32 %xor.i235, %xor3.i239
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i240)
  %cmp.i241 = icmp eq i32 %or.i240, 0
  br i1 %cmp.i241, label %do.end102, label %if.else95.out_crit_edge

if.else95.out_crit_edge:                          ; preds = %if.else95
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

do.end102:                                        ; preds = %if.else95
  %70 = lshr exact i16 %and, 2
  %71 = zext i16 %70 to i32
  %72 = lshr exact i16 %and3, 4
  %73 = zext i16 %72 to i32
  %call112 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef %dev, ptr noundef %addr2, i32 noundef %71, i32 noundef %73) #15
  tail call void @hostap_dump_rx_80211(ptr noundef %dev, ptr noundef %skb, ptr noundef %rx_stats) #12
  br i1 %tobool.not248, label %do.end102.cleanup_crit_edge, label %do.end102.if.then147_crit_edge

do.end102.if.then147_crit_edge:                   ; preds = %do.end102
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then147

do.end102.cleanup_crit_edge:                      ; preds = %do.end102
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end119:                                        ; preds = %if.else90.if.end119_crit_edge, %if.then45.if.end119_crit_edge, %if.then19.if.end119_crit_edge
  br i1 %tobool.not248, label %if.end119.if.end126_crit_edge, label %if.end119.if.then121_crit_edge

if.end119.if.then121_crit_edge:                   ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then121

if.end119.if.end126_crit_edge:                    ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end126

if.then121:                                       ; preds = %if.end119.if.then121_crit_edge, %lor.lhs.false.if.then121_crit_edge
  %and123 = and i32 %conv, 4096
  %conv124 = zext i16 %and to i32
  %conv125 = zext i16 %and3 to i32
  tail call fastcc void @hostap_update_sta_ps2(ptr noundef %local, ptr noundef nonnull %s.0.lcssa.i245, i32 noundef %and123, i32 noundef %conv124, i32 noundef %conv125)
  %rx_packets = getelementptr inbounds %struct.sta_info, ptr %s.0.lcssa.i245, i32 0, i32 14
  %74 = ptrtoint ptr %rx_packets to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %rx_packets, align 4
  %inc = add i32 %75, 1
  store i32 %inc, ptr %rx_packets, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %76 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %len, align 4
  %rx_bytes = getelementptr inbounds %struct.sta_info, ptr %s.0.lcssa.i245, i32 0, i32 16
  %78 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %rx_bytes, align 4
  %add = add i32 %79, %77
  store i32 %add, ptr %rx_bytes, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %80 = load volatile i32, ptr @jiffies, align 128
  %last_rx = getelementptr inbounds %struct.sta_info, ptr %s.0.lcssa.i245, i32 0, i32 12
  %81 = ptrtoint ptr %last_rx to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %last_rx, align 4
  br label %if.end126

if.end126:                                        ; preds = %if.then121, %if.end119.if.end126_crit_edge
  %82 = ptrtoint ptr %ap to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %ap, align 4
  %nullfunc_ack = getelementptr inbounds %struct.ap_data, ptr %83, i32 0, i32 6
  %84 = ptrtoint ptr %nullfunc_ack to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %nullfunc_ack, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool128.not = icmp eq i32 %85, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %and3)
  %cmp131 = icmp ne i16 %and3, 64
  %or.cond226 = select i1 %tobool128.not, i1 true, i1 %cmp131
  %brmerge = select i1 %or.cond226, i1 true, i1 %tobool18.not
  br i1 %brmerge, label %if.end126.out_crit_edge, label %if.then137

if.end126.out_crit_edge:                          ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then137:                                       ; preds = %if.end126
  %hostapd138 = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 68
  %86 = ptrtoint ptr %hostapd138 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %hostapd138, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool139.not = icmp eq i32 %87, 0
  br i1 %tobool139.not, label %if.else143, label %if.then140

if.then140:                                       ; preds = %if.then137
  %apdev141 = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 70
  %88 = ptrtoint ptr %apdev141 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %apdev141, align 4
  %call142 = tail call i32 @prism2_rx_80211(ptr noundef %89, ptr noundef %skb, ptr noundef %rx_stats, i32 noundef 3) #12
  br i1 %tobool.not248, label %if.then140.cleanup_crit_edge, label %if.then140.if.then147_crit_edge

if.then140.if.then147_crit_edge:                  ; preds = %if.then140
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then147

if.then140.cleanup_crit_edge:                     ; preds = %if.then140
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else143:                                       ; preds = %if.then137
  tail call void @hostap_rx(ptr noundef %dev, ptr noundef %skb, ptr undef)
  br i1 %tobool.not248, label %if.else143.cleanup_crit_edge, label %if.else143.if.then147_crit_edge

if.else143.if.then147_crit_edge:                  ; preds = %if.else143
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then147

if.else143.cleanup_crit_edge:                     ; preds = %if.else143
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

out:                                              ; preds = %if.end126.out_crit_edge, %if.else95.out_crit_edge, %if.then47.out_crit_edge
  %ret.1 = phi i32 [ %ret.0, %if.end126.out_crit_edge ], [ 1, %if.then47.out_crit_edge ], [ 1, %if.else95.out_crit_edge ]
  br i1 %tobool.not248, label %out.cleanup_crit_edge, label %out.if.then147_crit_edge

out.if.then147_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then147

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then147:                                       ; preds = %out.if.then147_crit_edge, %if.else143.if.then147_crit_edge, %if.then140.if.then147_crit_edge, %do.end102.if.then147_crit_edge, %do.end53.if.then147_crit_edge, %do.end.if.then147_crit_edge, %if.then29.if.then147_crit_edge
  %ret.1252 = phi i32 [ 2, %do.end.if.then147_crit_edge ], [ %ret.1, %out.if.then147_crit_edge ], [ 2, %if.then29.if.then147_crit_edge ], [ 1, %do.end53.if.then147_crit_edge ], [ 1, %do.end102.if.then147_crit_edge ], [ 2, %if.else143.if.then147_crit_edge ], [ 2, %if.then140.if.then147_crit_edge ]
  %users148 = getelementptr inbounds %struct.sta_info, ptr %s.0.lcssa.i245, i32 0, i32 2
  %call.i.i227 = tail call zeroext i1 @__kasan_check_write(ptr noundef %users148, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %users148, i32 1, i32 3, i32 1) #12
  %90 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users148, ptr %users148, i32 1, ptr elementtype(i32) %users148) #12, !srcloc !532
  br label %cleanup

cleanup:                                          ; preds = %if.then147, %out.cleanup_crit_edge, %if.else143.cleanup_crit_edge, %if.then140.cleanup_crit_edge, %do.end102.cleanup_crit_edge, %do.end82, %if.then76, %do.end53.cleanup_crit_edge, %do.end.cleanup_crit_edge, %if.then29.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %ret.1252, %if.then147 ], [ %ret.1, %out.cleanup_crit_edge ], [ 2, %do.end.cleanup_crit_edge ], [ 2, %if.then29.cleanup_crit_edge ], [ 1, %do.end53.cleanup_crit_edge ], [ 2, %do.end82 ], [ 2, %if.then76 ], [ 1, %do.end102.cleanup_crit_edge ], [ 2, %if.else143.cleanup_crit_edge ], [ 2, %if.then140.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prism2_rx_80211(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hostap_dump_rx_80211(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hostap_handle_sta_crypto(ptr nocapture noundef readonly %local, ptr nocapture noundef readonly %hdr, ptr nocapture noundef writeonly %crypt, ptr nocapture noundef writeonly %sta_ptr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ap = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 22
  %0 = ptrtoint ptr %ap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ap, align 4
  %sta_table_lock = getelementptr inbounds %struct.ap_data, ptr %1, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %sta_table_lock) #12
  %2 = ptrtoint ptr %ap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ap, align 4
  %arrayidx.i = getelementptr %struct.ieee80211_hdr, ptr %hdr, i32 0, i32 3, i32 5
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i, align 1
  %idxprom.i = zext i8 %5 to i32
  %arrayidx1.i = getelementptr %struct.ap_data, ptr %3, i32 0, i32 10, i32 %idxprom.i
  %6 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %s.06.i = load ptr, ptr %arrayidx1.i, align 4
  %cmp.not7.i = icmp eq ptr %s.06.i, null
  br i1 %cmp.not7.i, label %entry.if.then5.critedge_crit_edge, label %land.rhs.lr.ph.i

entry.if.then5.critedge_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then5.critedge

land.rhs.lr.ph.i:                                 ; preds = %entry
  %addr2 = getelementptr inbounds %struct.ieee80211_hdr, ptr %hdr, i32 0, i32 3
  %7 = ptrtoint ptr %addr2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %addr2, align 4
  %add.ptr1.i.i = getelementptr %struct.ieee80211_hdr, ptr %hdr, i32 0, i32 3, i32 4
  %9 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %add.ptr1.i.i, align 2
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %while.body.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %s.08.i = phi ptr [ %s.06.i, %land.rhs.lr.ph.i ], [ %s.0.i, %while.body.i.land.rhs.i_crit_edge ]
  %addr.i = getelementptr inbounds %struct.sta_info, ptr %s.08.i, i32 0, i32 4
  %11 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %addr.i, align 4
  %xor.i.i = xor i32 %12, %8
  %add.ptr.i.i = getelementptr %struct.sta_info, ptr %s.08.i, i32 0, i32 4, i32 4
  %13 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %add.ptr.i.i, align 2
  %xor37.i.i = xor i16 %14, %10
  %xor3.i.i = zext i16 %xor37.i.i to i32
  %or.i.i = or i32 %xor.i.i, %xor3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i, label %if.then, label %while.body.i

while.body.i:                                     ; preds = %land.rhs.i
  %hnext.i = getelementptr inbounds %struct.sta_info, ptr %s.08.i, i32 0, i32 1
  %15 = ptrtoint ptr %hnext.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %s.0.i = load ptr, ptr %hnext.i, align 4
  %cmp.not.i = icmp eq ptr %s.0.i, null
  br i1 %cmp.not.i, label %while.body.i.if.then5.critedge_crit_edge, label %while.body.i.land.rhs.i_crit_edge

while.body.i.land.rhs.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i

while.body.i.if.then5.critedge_crit_edge:         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then5.critedge

if.then:                                          ; preds = %land.rhs.i
  %users = getelementptr inbounds %struct.sta_info, ptr %s.08.i, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %users, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %users, i32 1, i32 3, i32 1) #12
  %16 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users, ptr %users, i32 1, ptr elementtype(i32) %users) #12, !srcloc !531
  %17 = ptrtoint ptr %ap to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ap, align 4
  %sta_table_lock3.c = getelementptr inbounds %struct.ap_data, ptr %18, i32 0, i32 7
  tail call void @_raw_spin_unlock(ptr noundef %sta_table_lock3.c) #12
  %crypt7 = getelementptr inbounds %struct.sta_info, ptr %s.08.i, i32 0, i32 31
  %19 = ptrtoint ptr %crypt7 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %crypt7, align 4
  %tobool8.not = icmp eq ptr %20, null
  br i1 %tobool8.not, label %if.else, label %if.then9

if.then5.critedge:                                ; preds = %while.body.i.if.then5.critedge_crit_edge, %entry.if.then5.critedge_crit_edge
  %sta_table_lock3.c21 = getelementptr inbounds %struct.ap_data, ptr %3, i32 0, i32 7
  tail call void @_raw_spin_unlock(ptr noundef %sta_table_lock3.c21) #12
  br label %cleanup

if.then9:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %21 = ptrtoint ptr %crypt to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %crypt, align 4
  %22 = ptrtoint ptr %sta_ptr to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %s.08.i, ptr %sta_ptr, align 4
  br label %cleanup

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i22 = tail call zeroext i1 @__kasan_check_write(ptr noundef %users, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %users, i32 1, i32 3, i32 1) #12
  %23 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users, ptr %users, i32 1, ptr elementtype(i32) %users) #12, !srcloc !532
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then9, %if.then5.critedge
  %retval.0 = phi i32 [ -1, %if.then5.critedge ], [ 0, %if.else ], [ 0, %if.then9 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hostap_is_sta_assoc(ptr noundef %ap, ptr nocapture noundef readonly %sta_addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %sta_table_lock = getelementptr inbounds %struct.ap_data, ptr %ap, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %sta_table_lock) #12
  %arrayidx.i = getelementptr i8, ptr %sta_addr, i32 5
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx.i, align 1
  %idxprom.i = zext i8 %1 to i32
  %arrayidx1.i = getelementptr %struct.ap_data, ptr %ap, i32 0, i32 10, i32 %idxprom.i
  %2 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %s.06.i = load ptr, ptr %arrayidx1.i, align 4
  %cmp.not7.i = icmp eq ptr %s.06.i, null
  br i1 %cmp.not7.i, label %entry.if.end_crit_edge, label %land.rhs.lr.ph.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.rhs.lr.ph.i:                                 ; preds = %entry
  %3 = ptrtoint ptr %sta_addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sta_addr, align 4
  %add.ptr1.i.i = getelementptr i8, ptr %sta_addr, i32 4
  %5 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %add.ptr1.i.i, align 2
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %while.body.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %s.08.i = phi ptr [ %s.06.i, %land.rhs.lr.ph.i ], [ %s.0.i, %while.body.i.land.rhs.i_crit_edge ]
  %addr.i = getelementptr inbounds %struct.sta_info, ptr %s.08.i, i32 0, i32 4
  %7 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %addr.i, align 4
  %xor.i.i = xor i32 %8, %4
  %add.ptr.i.i = getelementptr %struct.sta_info, ptr %s.08.i, i32 0, i32 4, i32 4
  %9 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %add.ptr.i.i, align 2
  %xor37.i.i = xor i16 %10, %6
  %xor3.i.i = zext i16 %xor37.i.i to i32
  %or.i.i = or i32 %xor.i.i, %xor3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i, label %land.lhs.true, label %while.body.i

while.body.i:                                     ; preds = %land.rhs.i
  %hnext.i = getelementptr inbounds %struct.sta_info, ptr %s.08.i, i32 0, i32 1
  %11 = ptrtoint ptr %hnext.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %s.0.i = load ptr, ptr %hnext.i, align 4
  %cmp.not.i = icmp eq ptr %s.0.i, null
  br i1 %cmp.not.i, label %while.body.i.if.end_crit_edge, label %while.body.i.land.rhs.i_crit_edge

while.body.i.land.rhs.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i

while.body.i.if.end_crit_edge:                    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %land.rhs.i
  %flags = getelementptr inbounds %struct.sta_info, ptr %s.08.i, i32 0, i32 6
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags, align 4
  %and = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true1

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true1:                                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %ap2 = getelementptr inbounds %struct.sta_info, ptr %s.08.i, i32 0, i32 32
  %14 = ptrtoint ptr %ap2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ap2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool3.not = icmp eq i32 %15, 0
  %spec.select = zext i1 %tobool3.not to i32
  br label %if.end

if.end:                                           ; preds = %land.lhs.true1, %land.lhs.true.if.end_crit_edge, %while.body.i.if.end_crit_edge, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ 0, %land.lhs.true.if.end_crit_edge ], [ %spec.select, %land.lhs.true1 ], [ 0, %entry.if.end_crit_edge ], [ 0, %while.body.i.if.end_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %sta_table_lock) #12
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hostap_is_sta_authorized(ptr noundef %ap, ptr nocapture noundef readonly %sta_addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %sta_table_lock = getelementptr inbounds %struct.ap_data, ptr %ap, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %sta_table_lock) #12
  %arrayidx.i = getelementptr i8, ptr %sta_addr, i32 5
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx.i, align 1
  %idxprom.i = zext i8 %1 to i32
  %arrayidx1.i = getelementptr %struct.ap_data, ptr %ap, i32 0, i32 10, i32 %idxprom.i
  %2 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %s.06.i = load ptr, ptr %arrayidx1.i, align 4
  %cmp.not7.i = icmp eq ptr %s.06.i, null
  br i1 %cmp.not7.i, label %entry.if.end_crit_edge, label %land.rhs.lr.ph.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.rhs.lr.ph.i:                                 ; preds = %entry
  %3 = ptrtoint ptr %sta_addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sta_addr, align 4
  %add.ptr1.i.i = getelementptr i8, ptr %sta_addr, i32 4
  %5 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %add.ptr1.i.i, align 2
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %while.body.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %s.08.i = phi ptr [ %s.06.i, %land.rhs.lr.ph.i ], [ %s.0.i, %while.body.i.land.rhs.i_crit_edge ]
  %addr.i = getelementptr inbounds %struct.sta_info, ptr %s.08.i, i32 0, i32 4
  %7 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %addr.i, align 4
  %xor.i.i = xor i32 %8, %4
  %add.ptr.i.i = getelementptr %struct.sta_info, ptr %s.08.i, i32 0, i32 4, i32 4
  %9 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %add.ptr.i.i, align 2
  %xor37.i.i = xor i16 %10, %6
  %xor3.i.i = zext i16 %xor37.i.i to i32
  %or.i.i = or i32 %xor.i.i, %xor3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i, label %land.lhs.true, label %while.body.i

while.body.i:                                     ; preds = %land.rhs.i
  %hnext.i = getelementptr inbounds %struct.sta_info, ptr %s.08.i, i32 0, i32 1
  %11 = ptrtoint ptr %hnext.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %s.0.i = load ptr, ptr %hnext.i, align 4
  %cmp.not.i = icmp eq ptr %s.0.i, null
  br i1 %cmp.not.i, label %while.body.i.if.end_crit_edge, label %while.body.i.land.rhs.i_crit_edge

while.body.i.land.rhs.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i

while.body.i.if.end_crit_edge:                    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %land.rhs.i
  %flags = getelementptr inbounds %struct.sta_info, ptr %s.08.i, i32 0, i32 6
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags, align 4
  %and = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true1

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true1:                                   ; preds = %land.lhs.true
  %ap2 = getelementptr inbounds %struct.sta_info, ptr %s.08.i, i32 0, i32 32
  %14 = ptrtoint ptr %ap2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ap2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool3.not = icmp eq i32 %15, 0
  br i1 %tobool3.not, label %land.lhs.true4, label %land.lhs.true1.if.end_crit_edge

land.lhs.true1.if.end_crit_edge:                  ; preds = %land.lhs.true1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true4:                                   ; preds = %land.lhs.true1
  %and6 = and i32 %13, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %lor.lhs.false, label %land.lhs.true4.if.then_crit_edge

land.lhs.true4.if.then_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

lor.lhs.false:                                    ; preds = %land.lhs.true4
  %local = getelementptr inbounds %struct.ap_data, ptr %ap, i32 0, i32 1
  %16 = ptrtoint ptr %local to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %local, align 4
  %ieee_802_1x = getelementptr inbounds %struct.local_info, ptr %17, i32 0, i32 84
  %18 = ptrtoint ptr %ieee_802_1x to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ieee_802_1x, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp8 = icmp eq i32 %19, 0
  br i1 %cmp8, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %land.lhs.true4.if.then_crit_edge
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge, %land.lhs.true1.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %while.body.i.if.end_crit_edge, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ 0, %land.lhs.true1.if.end_crit_edge ], [ 1, %if.then ], [ 0, %lor.lhs.false.if.end_crit_edge ], [ 0, %land.lhs.true.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ], [ 0, %while.body.i.if.end_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %sta_table_lock) #12
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hostap_add_sta(ptr noundef %ap, ptr nocapture noundef readonly %sta_addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ap, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %sta_table_lock = getelementptr inbounds %struct.ap_data, ptr %ap, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %sta_table_lock) #12
  %arrayidx.i = getelementptr i8, ptr %sta_addr, i32 5
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx.i, align 1
  %idxprom.i = zext i8 %1 to i32
  %arrayidx1.i = getelementptr %struct.ap_data, ptr %ap, i32 0, i32 10, i32 %idxprom.i
  %2 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %s.06.i = load ptr, ptr %arrayidx1.i, align 4
  %cmp.not7.i = icmp eq ptr %s.06.i, null
  br i1 %cmp.not7.i, label %if.end.if.then5_crit_edge, label %land.rhs.lr.ph.i

if.end.if.then5_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then5

land.rhs.lr.ph.i:                                 ; preds = %if.end
  %3 = ptrtoint ptr %sta_addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sta_addr, align 4
  %add.ptr1.i.i = getelementptr i8, ptr %sta_addr, i32 4
  %5 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %add.ptr1.i.i, align 2
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %while.body.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %s.08.i = phi ptr [ %s.06.i, %land.rhs.lr.ph.i ], [ %s.0.i, %while.body.i.land.rhs.i_crit_edge ]
  %addr.i = getelementptr inbounds %struct.sta_info, ptr %s.08.i, i32 0, i32 4
  %7 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %addr.i, align 4
  %xor.i.i = xor i32 %8, %4
  %add.ptr.i.i = getelementptr %struct.sta_info, ptr %s.08.i, i32 0, i32 4, i32 4
  %9 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %add.ptr.i.i, align 2
  %xor37.i.i = xor i16 %10, %6
  %xor3.i.i = zext i16 %xor37.i.i to i32
  %or.i.i = or i32 %xor.i.i, %xor3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i, label %ap_get_sta.exit, label %while.body.i

while.body.i:                                     ; preds = %land.rhs.i
  %hnext.i = getelementptr inbounds %struct.sta_info, ptr %s.08.i, i32 0, i32 1
  %11 = ptrtoint ptr %hnext.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %s.0.i = load ptr, ptr %hnext.i, align 4
  %cmp.not.i = icmp eq ptr %s.0.i, null
  br i1 %cmp.not.i, label %while.body.i.if.then5_crit_edge, label %while.body.i.land.rhs.i_crit_edge

while.body.i.land.rhs.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i

while.body.i.if.then5_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then5

ap_get_sta.exit:                                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock(ptr noundef %sta_table_lock) #12
  br label %cleanup

if.then5:                                         ; preds = %while.body.i.if.then5_crit_edge, %if.end.if.then5_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %sta_table_lock) #12
  %call6 = tail call fastcc ptr @ap_add_sta(ptr noundef nonnull %ap, ptr noundef %sta_addr)
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.then5.cleanup_crit_edge, label %if.end9

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end9:                                          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  %flags = getelementptr inbounds %struct.sta_info, ptr %call6, i32 0, i32 6
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 3, ptr %flags, align 4
  %ap10 = getelementptr inbounds %struct.sta_info, ptr %call6, i32 0, i32 32
  %13 = ptrtoint ptr %ap10 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %ap10, align 4
  %supported_rates = getelementptr inbounds %struct.sta_info, ptr %call6, i32 0, i32 9
  %14 = getelementptr inbounds %struct.sta_info, ptr %call6, i32 0, i32 9, i32 4
  %15 = call ptr @memset(ptr %14, i32 0, i32 28)
  %16 = ptrtoint ptr %supported_rates to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -126, ptr %supported_rates, align 4
  %arrayidx13 = getelementptr %struct.sta_info, ptr %call6, i32 0, i32 9, i32 1
  %17 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -124, ptr %arrayidx13, align 1
  %arrayidx15 = getelementptr %struct.sta_info, ptr %call6, i32 0, i32 9, i32 2
  %18 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 11, ptr %arrayidx15, align 2
  %arrayidx17 = getelementptr %struct.sta_info, ptr %call6, i32 0, i32 9, i32 3
  %19 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 22, ptr %arrayidx17, align 1
  %tx_supp_rates = getelementptr inbounds %struct.sta_info, ptr %call6, i32 0, i32 23
  %20 = ptrtoint ptr %tx_supp_rates to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 15, ptr %tx_supp_rates, align 4
  %tx_rate = getelementptr inbounds %struct.sta_info, ptr %call6, i32 0, i32 24
  %21 = ptrtoint ptr %tx_rate to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 110, ptr %tx_rate, align 1
  %tx_rate_idx = getelementptr inbounds %struct.sta_info, ptr %call6, i32 0, i32 25
  %22 = ptrtoint ptr %tx_rate_idx to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 3, ptr %tx_rate_idx, align 2
  %tx_max_rate = getelementptr inbounds %struct.sta_info, ptr %call6, i32 0, i32 26
  %23 = ptrtoint ptr %tx_max_rate to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 3, ptr %tx_max_rate, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then5.cleanup_crit_edge, %ap_get_sta.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ -1, %if.then5.cleanup_crit_edge ], [ 1, %if.end9 ], [ 0, %ap_get_sta.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ap_add_sta(ptr noundef %ap, ptr nocapture noundef readonly %addr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2848, i32 noundef 316) #16
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.243) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %local = getelementptr inbounds %struct.ap_data, ptr %ap, i32 0, i32 1
  %1 = ptrtoint ptr %local to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %local, align 4
  %local5 = getelementptr inbounds %struct.sta_info, ptr %call7.i.i, i32 0, i32 33
  %3 = ptrtoint ptr %local5 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %local5, align 4
  %tx_buf = getelementptr inbounds %struct.sta_info, ptr %call7.i.i, i32 0, i32 18
  %lock.i = getelementptr inbounds %struct.sta_info, ptr %call7.i.i, i32 0, i32 18, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.249, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #12
  %4 = ptrtoint ptr %tx_buf to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %tx_buf, ptr %tx_buf, align 4
  %prev.i.i = getelementptr inbounds %struct.sta_info, ptr %call7.i.i, i32 0, i32 18, i32 0, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %tx_buf, ptr %prev.i.i, align 8
  %qlen.i.i = getelementptr inbounds %struct.sta_info, ptr %call7.i.i, i32 0, i32 18, i32 1
  %6 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %qlen.i.i, align 4
  %addr6 = getelementptr inbounds %struct.sta_info, ptr %call7.i.i, i32 0, i32 4
  %7 = call ptr @memcpy(ptr %addr6, ptr %addr, i32 6)
  %users = getelementptr inbounds %struct.sta_info, ptr %call7.i.i, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %users, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %users, i32 1, i32 3, i32 1) #12
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users, ptr %users, i32 1, ptr elementtype(i32) %users) #12, !srcloc !531
  %sta_table_lock = getelementptr inbounds %struct.ap_data, ptr %ap, i32 0, i32 7
  tail call void @_raw_spin_lock_bh(ptr noundef %sta_table_lock) #12
  %sta_list = getelementptr inbounds %struct.ap_data, ptr %ap, i32 0, i32 9
  %9 = ptrtoint ptr %sta_list to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sta_list, align 4
  %call.i.i60 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %sta_list, ptr noundef %10) #12
  br i1 %call.i.i60, label %if.end.i.i, label %if.end.list_add.exit_crit_edge

if.end.list_add.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call7.i.i, ptr %prev1.i.i, align 4
  %12 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %10, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %sta_list, ptr %prev3.i.i, align 4
  %14 = ptrtoint ptr %sta_list to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %call7.i.i, ptr %sta_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end.list_add.exit_crit_edge
  %num_sta = getelementptr inbounds %struct.ap_data, ptr %ap, i32 0, i32 8
  %15 = ptrtoint ptr %num_sta to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_sta, align 4
  %inc = add i32 %16, 1
  store i32 %inc, ptr %num_sta, align 4
  %arrayidx.i = getelementptr %struct.sta_info, ptr %call7.i.i, i32 0, i32 4, i32 5
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx.i, align 1
  %idxprom.i = zext i8 %18 to i32
  %arrayidx1.i = getelementptr %struct.ap_data, ptr %ap, i32 0, i32 10, i32 %idxprom.i
  %19 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx1.i, align 4
  %hnext.i = getelementptr inbounds %struct.sta_info, ptr %call7.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %hnext.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %hnext.i, align 8
  store ptr %call7.i.i, ptr %arrayidx1.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %sta_table_lock) #12
  %proc = getelementptr inbounds %struct.ap_data, ptr %ap, i32 0, i32 11
  %22 = ptrtoint ptr %proc to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %proc, align 4
  %tobool.not = icmp eq ptr %23, null
  br i1 %tobool.not, label %list_add.exit.do.body26_crit_edge, label %if.then8

list_add.exit.do.body26_crit_edge:                ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body26

if.then8:                                         ; preds = %list_add.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %24 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %24, i32 noundef 2592, i32 noundef 12) #16
  %tobool11.not = icmp eq ptr %call7.i, null
  br i1 %tobool11.not, label %do.end21, label %if.then12

if.then12:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  %25 = call ptr @memcpy(ptr %call7.i, ptr %addr6, i32 6)
  %add_sta_proc_entries = getelementptr inbounds %struct.ap_data, ptr %ap, i32 0, i32 18
  %26 = ptrtoint ptr %add_sta_proc_entries to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %add_sta_proc_entries, align 4
  %next = getelementptr inbounds %struct.add_sta_proc_data, ptr %call7.i, i32 0, i32 1
  %28 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %27, ptr %next, align 8
  store ptr %call7.i, ptr %add_sta_proc_entries, align 4
  %add_sta_proc_queue = getelementptr inbounds %struct.ap_data, ptr %ap, i32 0, i32 17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %29 = load ptr, ptr @system_wq, align 4
  %call.i.i61 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %29, ptr noundef %add_sta_proc_queue) #12
  br label %do.body26

do.end21:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.246) #15
  br label %do.body26

do.body26:                                        ; preds = %do.end21, %if.then12, %list_add.exit.do.body26_crit_edge
  %timer = getelementptr inbounds %struct.sta_info, ptr %call7.i.i, i32 0, i32 35
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @ap_handle_timer, i32 noundef 0, ptr noundef nonnull @.str.248, ptr noundef nonnull @ap_add_sta.__key) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %30 = load volatile i32, ptr @jiffies, align 128
  %max_inactivity = getelementptr inbounds %struct.ap_data, ptr %ap, i32 0, i32 13
  %31 = ptrtoint ptr %max_inactivity to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %max_inactivity, align 4
  %add = add i32 %32, %30
  %expires = getelementptr inbounds %struct.sta_info, ptr %call7.i.i, i32 0, i32 35, i32 1
  %33 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %add, ptr %expires, align 8
  %34 = ptrtoint ptr %local to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %local, align 4
  %hostapd = getelementptr inbounds %struct.local_info, ptr %35, i32 0, i32 68
  %36 = ptrtoint ptr %hostapd to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %hostapd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool31.not = icmp eq i32 %37, 0
  br i1 %tobool31.not, label %if.then32, label %do.body26.cleanup_crit_edge

do.body26.cleanup_crit_edge:                      ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then32:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @add_timer(ptr noundef %timer) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then32, %do.body26.cleanup_crit_edge, %do.end
  ret ptr %call7.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hostap_update_rx_stats(ptr noundef %ap, ptr nocapture noundef readonly %hdr, ptr nocapture noundef readonly %rx_stats) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ap, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %sta_table_lock = getelementptr inbounds %struct.ap_data, ptr %ap, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %sta_table_lock) #12
  %arrayidx.i = getelementptr %struct.ieee80211_hdr, ptr %hdr, i32 0, i32 3, i32 5
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx.i, align 1
  %idxprom.i = zext i8 %1 to i32
  %arrayidx1.i = getelementptr %struct.ap_data, ptr %ap, i32 0, i32 10, i32 %idxprom.i
  %2 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %s.06.i = load ptr, ptr %arrayidx1.i, align 4
  %cmp.not7.i = icmp eq ptr %s.06.i, null
  br i1 %cmp.not7.i, label %if.end.if.end37_crit_edge, label %land.rhs.lr.ph.i

if.end.if.end37_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37

land.rhs.lr.ph.i:                                 ; preds = %if.end
  %addr2 = getelementptr inbounds %struct.ieee80211_hdr, ptr %hdr, i32 0, i32 3
  %3 = ptrtoint ptr %addr2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %addr2, align 4
  %add.ptr1.i.i = getelementptr %struct.ieee80211_hdr, ptr %hdr, i32 0, i32 3, i32 4
  %5 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %add.ptr1.i.i, align 2
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %while.body.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %s.08.i = phi ptr [ %s.06.i, %land.rhs.lr.ph.i ], [ %s.0.i, %while.body.i.land.rhs.i_crit_edge ]
  %addr.i = getelementptr inbounds %struct.sta_info, ptr %s.08.i, i32 0, i32 4
  %7 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %addr.i, align 4
  %xor.i.i = xor i32 %8, %4
  %add.ptr.i.i = getelementptr %struct.sta_info, ptr %s.08.i, i32 0, i32 4, i32 4
  %9 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %add.ptr.i.i, align 2
  %xor37.i.i = xor i16 %10, %6
  %xor3.i.i = zext i16 %xor37.i.i to i32
  %or.i.i = or i32 %xor.i.i, %xor3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i, label %if.then2, label %while.body.i

while.body.i:                                     ; preds = %land.rhs.i
  %hnext.i = getelementptr inbounds %struct.sta_info, ptr %s.08.i, i32 0, i32 1
  %11 = ptrtoint ptr %hnext.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %s.0.i = load ptr, ptr %hnext.i, align 4
  %cmp.not.i = icmp eq ptr %s.0.i, null
  br i1 %cmp.not.i, label %while.body.i.if.end37_crit_edge, label %while.body.i.land.rhs.i_crit_edge

while.body.i.land.rhs.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i

while.body.i.if.end37_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37

if.then2:                                         ; preds = %land.rhs.i
  %noise = getelementptr inbounds %struct.hostap_80211_rx_status, ptr %rx_stats, i32 0, i32 2
  %12 = ptrtoint ptr %noise to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %noise, align 1
  %last_rx_silence = getelementptr inbounds %struct.sta_info, ptr %s.08.i, i32 0, i32 19
  %14 = ptrtoint ptr %last_rx_silence to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %last_rx_silence, align 4
  %signal = getelementptr inbounds %struct.hostap_80211_rx_status, ptr %rx_stats, i32 0, i32 1
  %15 = ptrtoint ptr %signal to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %signal, align 4
  %last_rx_signal = getelementptr inbounds %struct.sta_info, ptr %s.08.i, i32 0, i32 20
  %17 = ptrtoint ptr %last_rx_signal to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %last_rx_signal, align 1
  %rate = getelementptr inbounds %struct.hostap_80211_rx_status, ptr %rx_stats, i32 0, i32 3
  %18 = ptrtoint ptr %rate to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %rate, align 2
  %conv = trunc i16 %19 to i8
  %last_rx_rate = getelementptr inbounds %struct.sta_info, ptr %s.08.i, i32 0, i32 21
  %20 = ptrtoint ptr %last_rx_rate to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv, ptr %last_rx_rate, align 2
  %last_rx_updated = getelementptr inbounds %struct.sta_info, ptr %s.08.i, i32 0, i32 22
  %21 = ptrtoint ptr %last_rx_updated to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 15, ptr %last_rx_updated, align 1
  %22 = load i16, ptr %rate, align 2
  %23 = zext i16 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.273)
  switch i16 %22, label %if.then2.if.end37_crit_edge [
    i16 10, label %if.then6
    i16 20, label %if.then11
    i16 55, label %if.then20
    i16 110, label %if.then29
  ]

if.then2.if.end37_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37

if.then6:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #14
  %rx_count = getelementptr inbounds %struct.sta_info, ptr %s.08.i, i32 0, i32 28
  br label %if.end37.sink.split

if.then11:                                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx13 = getelementptr %struct.sta_info, ptr %s.08.i, i32 0, i32 28, i32 1
  br label %if.end37.sink.split

if.then20:                                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx22 = getelementptr %struct.sta_info, ptr %s.08.i, i32 0, i32 28, i32 2
  br label %if.end37.sink.split

if.then29:                                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx31 = getelementptr %struct.sta_info, ptr %s.08.i, i32 0, i32 28, i32 3
  br label %if.end37.sink.split

if.end37.sink.split:                              ; preds = %if.then29, %if.then20, %if.then11, %if.then6
  %rx_count.sink64 = phi ptr [ %rx_count, %if.then6 ], [ %arrayidx22, %if.then20 ], [ %arrayidx31, %if.then29 ], [ %arrayidx13, %if.then11 ]
  %24 = ptrtoint ptr %rx_count.sink64 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rx_count.sink64, align 4
  %inc = add i32 %25, 1
  store i32 %inc, ptr %rx_count.sink64, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.end37.sink.split, %if.then2.if.end37_crit_edge, %while.body.i.if.end37_crit_edge, %if.end.if.end37_crit_edge
  %tobool1.not60 = phi i32 [ 0, %if.then2.if.end37_crit_edge ], [ -1, %if.end.if.end37_crit_edge ], [ 0, %if.end37.sink.split ], [ -1, %while.body.i.if.end37_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %sta_table_lock) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %tobool1.not60, %if.end37 ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hostap_update_rates(ptr nocapture noundef readonly %local) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ap1 = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 22
  %0 = ptrtoint ptr %ap1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ap1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %sta_table_lock = getelementptr inbounds %struct.ap_data, ptr %1, i32 0, i32 7
  tail call void @_raw_spin_lock_bh(ptr noundef %sta_table_lock) #12
  %sta_list = getelementptr inbounds %struct.ap_data, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %sta_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %sta.016 = load ptr, ptr %sta_list, align 4
  %cmp.not17 = icmp eq ptr %sta.016, %sta_list
  br i1 %cmp.not17, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %sta.018 = phi ptr [ %sta.0, %for.body.for.body_crit_edge ], [ %sta.016, %if.end.for.body_crit_edge ]
  tail call fastcc void @prism2_check_tx_rates(ptr noundef %sta.018)
  %3 = ptrtoint ptr %sta.018 to i32
  call void @__asan_load4_noabort(i32 %3)
  %sta.0 = load ptr, ptr %sta.018, align 4
  %cmp.not = icmp eq ptr %sta.0, %sta_list
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %sta_table_lock) #12
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @prism2_check_tx_rates(ptr nocapture noundef %sta) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_supp_rates = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 23
  %0 = ptrtoint ptr %tx_supp_rates to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %tx_supp_rates, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.0195 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.sta_info, ptr %sta, i32 0, i32 9, i32 %i.0195
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 1
  %3 = and i8 %2, 127
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %3)
  %cmp1 = icmp eq i8 %3, 2
  br i1 %cmp1, label %if.then, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %tx_supp_rates to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %tx_supp_rates, align 4
  %6 = or i8 %5, 1
  store i8 %6, ptr %tx_supp_rates, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx, align 1
  %9 = and i8 %8, 127
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %9)
  %cmp10 = icmp eq i8 %9, 4
  br i1 %cmp10, label %if.then12, label %if.end.if.end17_crit_edge

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %tx_supp_rates to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %tx_supp_rates, align 4
  %12 = or i8 %11, 2
  store i8 %12, ptr %tx_supp_rates, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then12, %if.end.if.end17_crit_edge
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx, align 1
  %15 = and i8 %14, 127
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %15)
  %cmp22 = icmp eq i8 %15, 11
  br i1 %cmp22, label %if.then24, label %if.end17.if.end29_crit_edge

if.end17.if.end29_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

if.then24:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %tx_supp_rates to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %tx_supp_rates, align 4
  %18 = or i8 %17, 4
  store i8 %18, ptr %tx_supp_rates, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then24, %if.end17.if.end29_crit_edge
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx, align 1
  %21 = and i8 %20, 127
  call void @__sanitizer_cov_trace_const_cmp1(i8 22, i8 %21)
  %cmp34 = icmp eq i8 %21, 22
  br i1 %cmp34, label %if.then36, label %if.end29.for.inc_crit_edge

if.end29.for.inc_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then36:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  %22 = ptrtoint ptr %tx_supp_rates to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %tx_supp_rates, align 4
  %24 = or i8 %23, 8
  store i8 %24, ptr %tx_supp_rates, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then36, %if.end29.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0195, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.inc
  %tx_rate_idx = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 25
  %25 = ptrtoint ptr %tx_rate_idx to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %tx_rate_idx, align 2
  %tx_rate = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 24
  %26 = ptrtoint ptr %tx_rate to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %tx_rate, align 1
  %tx_max_rate = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 26
  %27 = ptrtoint ptr %tx_max_rate to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %tx_max_rate, align 1
  %28 = ptrtoint ptr %tx_supp_rates to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %tx_supp_rates, align 4
  %30 = and i8 %29, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not = icmp eq i8 %30, 0
  br i1 %tobool.not, label %for.end.if.end52_crit_edge, label %ap_tx_rate_ok.exit

for.end.if.end52_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end52

ap_tx_rate_ok.exit:                               ; preds = %for.end
  %local = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 33
  %31 = ptrtoint ptr %local to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %local, align 4
  %tx_rate_control.i = getelementptr inbounds %struct.local_info, ptr %32, i32 0, i32 39
  %33 = ptrtoint ptr %tx_rate_control.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %tx_rate_control.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %cmp4.not.i = icmp ne i16 %34, 0
  %35 = and i16 %34, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %35)
  %tobool10.not.i = icmp eq i16 %35, 0
  %tobool47.not = and i1 %cmp4.not.i, %tobool10.not.i
  br i1 %tobool47.not, label %ap_tx_rate_ok.exit.if.end52_crit_edge, label %if.then48

ap_tx_rate_ok.exit.if.end52_crit_edge:            ; preds = %ap_tx_rate_ok.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end52

if.then48:                                        ; preds = %ap_tx_rate_ok.exit
  call void @__sanitizer_cov_trace_pc() #14
  %36 = ptrtoint ptr %tx_rate to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 10, ptr %tx_rate, align 1
  %37 = ptrtoint ptr %tx_rate_idx to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %tx_rate_idx, align 2
  br label %if.end52

if.end52:                                         ; preds = %if.then48, %ap_tx_rate_ok.exit.if.end52_crit_edge, %for.end.if.end52_crit_edge
  %38 = and i8 %29, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool56.not = icmp eq i8 %38, 0
  br i1 %tobool56.not, label %if.end52.if.end66_crit_edge, label %ap_tx_rate_ok.exit150

if.end52.if.end66_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end66

ap_tx_rate_ok.exit150:                            ; preds = %if.end52
  %39 = ptrtoint ptr %tx_max_rate to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %tx_max_rate, align 1
  %local59 = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 33
  %40 = ptrtoint ptr %local59 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %local59, align 4
  %tx_rate_control.i141 = getelementptr inbounds %struct.local_info, ptr %41, i32 0, i32 39
  %42 = ptrtoint ptr %tx_rate_control.i141 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %tx_rate_control.i141, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %43)
  %cmp4.not.i142 = icmp ne i16 %43, 0
  %44 = and i16 %43, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %44)
  %tobool10.not.i145 = icmp eq i16 %44, 0
  %tobool61.not = and i1 %cmp4.not.i142, %tobool10.not.i145
  br i1 %tobool61.not, label %ap_tx_rate_ok.exit150.if.end66_crit_edge, label %if.then62

ap_tx_rate_ok.exit150.if.end66_crit_edge:         ; preds = %ap_tx_rate_ok.exit150
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end66

if.then62:                                        ; preds = %ap_tx_rate_ok.exit150
  call void @__sanitizer_cov_trace_pc() #14
  %45 = ptrtoint ptr %tx_rate to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 20, ptr %tx_rate, align 1
  %46 = ptrtoint ptr %tx_rate_idx to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 1, ptr %tx_rate_idx, align 2
  br label %if.end66

if.end66:                                         ; preds = %if.then62, %ap_tx_rate_ok.exit150.if.end66_crit_edge, %if.end52.if.end66_crit_edge
  %47 = and i8 %29, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool70.not = icmp eq i8 %47, 0
  br i1 %tobool70.not, label %if.end66.if.end80_crit_edge, label %ap_tx_rate_ok.exit168

if.end66.if.end80_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end80

ap_tx_rate_ok.exit168:                            ; preds = %if.end66
  %48 = ptrtoint ptr %tx_max_rate to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 2, ptr %tx_max_rate, align 1
  %local73 = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 33
  %49 = ptrtoint ptr %local73 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %local73, align 4
  %tx_rate_control.i159 = getelementptr inbounds %struct.local_info, ptr %50, i32 0, i32 39
  %51 = ptrtoint ptr %tx_rate_control.i159 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %tx_rate_control.i159, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %52)
  %cmp4.not.i160 = icmp ne i16 %52, 0
  %53 = and i16 %52, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %53)
  %tobool10.not.i163 = icmp eq i16 %53, 0
  %tobool75.not = and i1 %cmp4.not.i160, %tobool10.not.i163
  br i1 %tobool75.not, label %ap_tx_rate_ok.exit168.if.end80_crit_edge, label %if.then76

ap_tx_rate_ok.exit168.if.end80_crit_edge:         ; preds = %ap_tx_rate_ok.exit168
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end80

if.then76:                                        ; preds = %ap_tx_rate_ok.exit168
  call void @__sanitizer_cov_trace_pc() #14
  %54 = ptrtoint ptr %tx_rate to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 55, ptr %tx_rate, align 1
  %55 = ptrtoint ptr %tx_rate_idx to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 2, ptr %tx_rate_idx, align 2
  br label %if.end80

if.end80:                                         ; preds = %if.then76, %ap_tx_rate_ok.exit168.if.end80_crit_edge, %if.end66.if.end80_crit_edge
  %56 = and i8 %29, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool84.not = icmp eq i8 %56, 0
  br i1 %tobool84.not, label %if.end80.if.end94_crit_edge, label %ap_tx_rate_ok.exit186

if.end80.if.end94_crit_edge:                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end94

ap_tx_rate_ok.exit186:                            ; preds = %if.end80
  %57 = ptrtoint ptr %tx_max_rate to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 3, ptr %tx_max_rate, align 1
  %local87 = getelementptr inbounds %struct.sta_info, ptr %sta, i32 0, i32 33
  %58 = ptrtoint ptr %local87 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %local87, align 4
  %tx_rate_control.i177 = getelementptr inbounds %struct.local_info, ptr %59, i32 0, i32 39
  %60 = ptrtoint ptr %tx_rate_control.i177 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %tx_rate_control.i177, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %61)
  %cmp4.not.i178 = icmp ne i16 %61, 0
  %62 = and i16 %61, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %62)
  %tobool10.not.i181 = icmp eq i16 %62, 0
  %tobool89.not = and i1 %cmp4.not.i178, %tobool10.not.i181
  br i1 %tobool89.not, label %ap_tx_rate_ok.exit186.if.end94_crit_edge, label %if.then90

ap_tx_rate_ok.exit186.if.end94_crit_edge:         ; preds = %ap_tx_rate_ok.exit186
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end94

if.then90:                                        ; preds = %ap_tx_rate_ok.exit186
  call void @__sanitizer_cov_trace_pc() #14
  %63 = ptrtoint ptr %tx_rate to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 110, ptr %tx_rate, align 1
  %64 = ptrtoint ptr %tx_rate_idx to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 3, ptr %tx_rate_idx, align 2
  br label %if.end94

if.end94:                                         ; preds = %if.then90, %ap_tx_rate_ok.exit186.if.end94_crit_edge, %if.end80.if.end94_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ap_crypt_get_ptrs(ptr noundef %ap, ptr nocapture noundef readonly %addr, i32 noundef %permanent, ptr nocapture noundef writeonly %crypt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %sta_table_lock = getelementptr inbounds %struct.ap_data, ptr %ap, i32 0, i32 7
  tail call void @_raw_spin_lock_bh(ptr noundef %sta_table_lock) #12
  %arrayidx.i = getelementptr i8, ptr %addr, i32 5
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx.i, align 1
  %idxprom.i = zext i8 %1 to i32
  %arrayidx1.i = getelementptr %struct.ap_data, ptr %ap, i32 0, i32 10, i32 %idxprom.i
  %2 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %s.06.i = load ptr, ptr %arrayidx1.i, align 4
  %cmp.not7.i = icmp eq ptr %s.06.i, null
  br i1 %cmp.not7.i, label %entry.land.lhs.true.critedge_crit_edge, label %land.rhs.lr.ph.i

entry.land.lhs.true.critedge_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true.critedge

land.rhs.lr.ph.i:                                 ; preds = %entry
  %3 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %addr, align 4
  %add.ptr1.i.i = getelementptr i8, ptr %addr, i32 4
  %5 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %add.ptr1.i.i, align 2
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %while.body.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %s.08.i = phi ptr [ %s.06.i, %land.rhs.lr.ph.i ], [ %s.0.i, %while.body.i.land.rhs.i_crit_edge ]
  %addr.i = getelementptr inbounds %struct.sta_info, ptr %s.08.i, i32 0, i32 4
  %7 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %addr.i, align 4
  %xor.i.i = xor i32 %8, %4
  %add.ptr.i.i = getelementptr %struct.sta_info, ptr %s.08.i, i32 0, i32 4, i32 4
  %9 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %add.ptr.i.i, align 2
  %xor37.i.i = xor i16 %10, %6
  %xor3.i.i = zext i16 %xor37.i.i to i32
  %or.i.i = or i32 %xor.i.i, %xor3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i, label %if.end9, label %while.body.i

while.body.i:                                     ; preds = %land.rhs.i
  %hnext.i = getelementptr inbounds %struct.sta_info, ptr %s.08.i, i32 0, i32 1
  %11 = ptrtoint ptr %hnext.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %s.0.i = load ptr, ptr %hnext.i, align 4
  %cmp.not.i = icmp eq ptr %s.0.i, null
  br i1 %cmp.not.i, label %while.body.i.land.lhs.true.critedge_crit_edge, label %while.body.i.land.rhs.i_crit_edge

while.body.i.land.rhs.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i

while.body.i.land.lhs.true.critedge_crit_edge:    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true.critedge

land.lhs.true.critedge:                           ; preds = %while.body.i.land.lhs.true.critedge_crit_edge, %entry.land.lhs.true.critedge_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %sta_table_lock) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %permanent)
  %tobool3.not = icmp eq i32 %permanent, 0
  br i1 %tobool3.not, label %land.lhs.true.critedge.cleanup_crit_edge, label %if.end6

land.lhs.true.critedge.cleanup_crit_edge:         ; preds = %land.lhs.true.critedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end6:                                          ; preds = %land.lhs.true.critedge
  %call5 = tail call fastcc ptr @ap_add_sta(ptr noundef %ap, ptr noundef %addr)
  %tobool7.not = icmp eq ptr %call5, null
  br i1 %tobool7.not, label %if.end6.cleanup_crit_edge, label %if.end6.if.then11_crit_edge

if.end6.if.then11_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end9:                                          ; preds = %land.rhs.i
  %users = getelementptr inbounds %struct.sta_info, ptr %s.08.i, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %users, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %users, i32 1, i32 3, i32 1) #12
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users, ptr %users, i32 1, ptr elementtype(i32) %users) #12, !srcloc !531
  tail call void @_raw_spin_unlock_bh(ptr noundef %sta_table_lock) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %permanent)
  %tobool10.not = icmp eq i32 %permanent, 0
  br i1 %tobool10.not, label %if.end9.if.end12_crit_edge, label %if.end9.if.then11_crit_edge

if.end9.if.then11_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11

if.end9.if.end12_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

if.then11:                                        ; preds = %if.end9.if.then11_crit_edge, %if.end6.if.then11_crit_edge
  %sta.03235 = phi ptr [ %s.08.i, %if.end9.if.then11_crit_edge ], [ %call5, %if.end6.if.then11_crit_edge ]
  %flags = getelementptr inbounds %struct.sta_info, ptr %sta.03235, i32 0, i32 6
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags, align 4
  %or = or i32 %14, 16
  store i32 %or, ptr %flags, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end9.if.end12_crit_edge
  %sta.03236 = phi ptr [ %sta.03235, %if.then11 ], [ %s.08.i, %if.end9.if.end12_crit_edge ]
  %crypt13 = getelementptr inbounds %struct.sta_info, ptr %sta.03236, i32 0, i32 31
  %15 = ptrtoint ptr %crypt to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %crypt13, ptr %crypt, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end6.cleanup_crit_edge, %land.lhs.true.critedge.cleanup_crit_edge
  %retval.0 = phi ptr [ %sta.03236, %if.end12 ], [ null, %if.end6.cleanup_crit_edge ], [ null, %land.lhs.true.critedge.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hostap_add_wds_links(ptr noundef %local) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ap1 = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 22
  %0 = ptrtoint ptr %ap1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ap1, align 4
  %sta_table_lock = getelementptr inbounds %struct.ap_data, ptr %1, i32 0, i32 7
  tail call void @_raw_spin_lock_bh(ptr noundef %sta_table_lock) #12
  %sta_list = getelementptr inbounds %struct.ap_data, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %sta_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %sta.019 = load ptr, ptr %sta_list, align 4
  %cmp.not20 = icmp eq ptr %sta.019, %sta_list
  br i1 %cmp.not20, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %lock.i = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 11
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %sta.021 = phi ptr [ %sta.019, %for.body.lr.ph ], [ %sta.0, %for.inc.for.body_crit_edge ]
  %ap3 = getelementptr inbounds %struct.sta_info, ptr %sta.021, i32 0, i32 32
  %3 = ptrtoint ptr %ap3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ap3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 2592, i32 noundef 16) #16
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %if.then.for.inc_crit_edge, label %if.end.i

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %addr = getelementptr inbounds %struct.sta_info, ptr %sta.021, i32 0, i32 4
  %addr2.i = getelementptr inbounds %struct.wds_oper_data, ptr %call7.i.i, i32 0, i32 1
  %6 = call ptr @memcpy(ptr %addr2.i, ptr %addr, i32 6)
  %7 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %call7.i.i, align 8
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #12
  %8 = ptrtoint ptr %ap1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ap1, align 4
  %wds_oper_entries.i = getelementptr inbounds %struct.ap_data, ptr %9, i32 0, i32 20
  %10 = ptrtoint ptr %wds_oper_entries.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wds_oper_entries.i, align 4
  %next.i = getelementptr inbounds %struct.wds_oper_data, ptr %call7.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %next.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %next.i, align 4
  store ptr %call7.i.i, ptr %wds_oper_entries.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #12
  %13 = ptrtoint ptr %ap1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ap1, align 4
  %wds_oper_queue.i = getelementptr inbounds %struct.ap_data, ptr %14, i32 0, i32 19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %15 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %15, ptr noundef %wds_oper_queue.i) #12
  br label %for.inc

for.inc:                                          ; preds = %if.end.i, %if.then.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %16 = ptrtoint ptr %sta.021 to i32
  call void @__asan_load4_noabort(i32 %16)
  %sta.0 = load ptr, ptr %sta.021, align 4
  %cmp.not = icmp eq ptr %sta.0, %sta_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %sta_table_lock) #12
  %17 = ptrtoint ptr %ap1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ap1, align 4
  %wds_oper_queue = getelementptr inbounds %struct.ap_data, ptr %18, i32 0, i32 19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %19 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %19, ptr noundef %wds_oper_queue) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hostap_wds_link_oper(ptr noundef %local, ptr nocapture noundef readonly %addr, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2592, i32 noundef 16) #16
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %addr2 = getelementptr inbounds %struct.wds_oper_data, ptr %call7.i, i32 0, i32 1
  %1 = call ptr @memcpy(ptr %addr2, ptr %addr, i32 6)
  %2 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %type, ptr %call7.i, align 8
  %lock = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 11
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #12
  %ap = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 22
  %3 = ptrtoint ptr %ap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ap, align 4
  %wds_oper_entries = getelementptr inbounds %struct.ap_data, ptr %4, i32 0, i32 20
  %5 = ptrtoint ptr %wds_oper_entries to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wds_oper_entries, align 4
  %next = getelementptr inbounds %struct.wds_oper_data, ptr %call7.i, i32 0, i32 2
  %7 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %next, align 4
  store ptr %call7.i, ptr %wds_oper_entries, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #12
  %8 = ptrtoint ptr %ap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ap, align 4
  %wds_oper_queue = getelementptr inbounds %struct.ap_data, ptr %9, i32 0, i32 19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %10 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %10, ptr noundef %wds_oper_queue) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @wireless_send_event(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hostap_80211_get_hdrlen(i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ap_control_proc_start(ptr nocapture noundef readonly %m, ptr nocapture noundef readonly %_pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %file = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 10
  %0 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %file, align 4
  %f_inode.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_inode.i, align 8
  %i_private.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 54
  %4 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_private.i, align 4
  %lock = getelementptr inbounds %struct.ap_data, ptr %5, i32 0, i32 15, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #12
  %mac_list = getelementptr inbounds %struct.ap_data, ptr %5, i32 0, i32 15, i32 2
  %6 = ptrtoint ptr %_pos to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %_pos, align 8
  %call3 = tail call ptr @seq_list_start_head(ptr noundef %mac_list, i64 noundef %7) #12
  ret ptr %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ap_control_proc_stop(ptr nocapture noundef readonly %m, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %file = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 10
  %0 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %file, align 4
  %f_inode.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_inode.i, align 8
  %i_private.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 54
  %4 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_private.i, align 4
  %lock = getelementptr inbounds %struct.ap_data, ptr %5, i32 0, i32 15, i32 3
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ap_control_proc_next(ptr nocapture noundef readonly %m, ptr noundef %v, ptr noundef %_pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %file = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 10
  %0 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %file, align 4
  %f_inode.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_inode.i, align 8
  %i_private.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 54
  %4 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_private.i, align 4
  %mac_list = getelementptr inbounds %struct.ap_data, ptr %5, i32 0, i32 15, i32 2
  %call2 = tail call ptr @seq_list_next(ptr noundef %v, ptr noundef %mac_list, ptr noundef %_pos) #12
  ret ptr %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ap_control_proc_show(ptr noundef %m, ptr noundef %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %file = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 10
  %0 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %file, align 4
  %f_inode.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_inode.i, align 8
  %i_private.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 54
  %4 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_private.i, align 4
  %cmp = icmp eq ptr %v, inttoptr (i32 1 to ptr)
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %mac_restrictions = getelementptr inbounds %struct.ap_data, ptr %5, i32 0, i32 15
  %6 = ptrtoint ptr %mac_restrictions to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mac_restrictions, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %8 = icmp ult i32 %7, 3
  br i1 %8, label %switch.lookup, label %if.then.sw.epilog_crit_edge

if.then.sw.epilog_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

switch.lookup:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.ap_control_proc_show, i32 0, i32 %7
  %9 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %9)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %if.then.sw.epilog_crit_edge
  %policy_txt.0 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.80, %if.then.sw.epilog_crit_edge ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.81, ptr noundef nonnull %policy_txt.0) #12
  %entries = getelementptr inbounds %struct.ap_data, ptr %5, i32 0, i32 15, i32 1
  %10 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %entries, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.82, i32 noundef %11) #12
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.83) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %addr = getelementptr inbounds %struct.mac_entry, ptr %v, i32 0, i32 1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.84, ptr noundef %addr) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %sw.epilog
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @seq_list_start_head(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @seq_list_next(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @prism2_ap_proc_start(ptr nocapture noundef readonly %m, ptr nocapture noundef readonly %_pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %file = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 10
  %0 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %file, align 4
  %f_inode.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_inode.i, align 8
  %i_private.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 54
  %4 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_private.i, align 4
  %sta_table_lock = getelementptr inbounds %struct.ap_data, ptr %5, i32 0, i32 7
  tail call void @_raw_spin_lock_bh(ptr noundef %sta_table_lock) #12
  %sta_list = getelementptr inbounds %struct.ap_data, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %_pos to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %_pos, align 8
  %call2 = tail call ptr @seq_list_start_head(ptr noundef %sta_list, i64 noundef %7) #12
  ret ptr %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @prism2_ap_proc_stop(ptr nocapture noundef readonly %m, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %file = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 10
  %0 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %file, align 4
  %f_inode.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_inode.i, align 8
  %i_private.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 54
  %4 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_private.i, align 4
  %sta_table_lock = getelementptr inbounds %struct.ap_data, ptr %5, i32 0, i32 7
  tail call void @_raw_spin_unlock_bh(ptr noundef %sta_table_lock) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @prism2_ap_proc_next(ptr nocapture noundef readonly %m, ptr noundef %v, ptr noundef %_pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %file = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 10
  %0 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %file, align 4
  %f_inode.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_inode.i, align 8
  %i_private.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 54
  %4 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_private.i, align 4
  %sta_list = getelementptr inbounds %struct.ap_data, ptr %5, i32 0, i32 9
  %call2 = tail call ptr @seq_list_next(ptr noundef %v, ptr noundef %sta_list, ptr noundef %_pos) #12
  ret ptr %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prism2_ap_proc_show(ptr noundef %m, ptr noundef %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %v, inttoptr (i32 1 to ptr)
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.85) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %ap = getelementptr inbounds %struct.sta_info, ptr %v, i32 0, i32 32
  %0 = ptrtoint ptr %ap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %addr = getelementptr inbounds %struct.sta_info, ptr %v, i32 0, i32 4
  %u = getelementptr inbounds %struct.sta_info, ptr %v, i32 0, i32 34
  %channel = getelementptr inbounds %struct.sta_info, ptr %v, i32 0, i32 34, i32 0, i32 2
  %2 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %channel, align 4
  %last_rx_signal = getelementptr inbounds %struct.sta_info, ptr %v, i32 0, i32 20
  %4 = ptrtoint ptr %last_rx_signal to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %last_rx_signal, align 1
  %conv = sext i8 %5 to i32
  %last_rx_silence = getelementptr inbounds %struct.sta_info, ptr %v, i32 0, i32 19
  %6 = ptrtoint ptr %last_rx_silence to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %last_rx_silence, align 4
  %conv3 = sext i8 %7 to i32
  %last_rx_rate = getelementptr inbounds %struct.sta_info, ptr %v, i32 0, i32 21
  %8 = ptrtoint ptr %last_rx_rate to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %last_rx_rate, align 2
  %conv4 = zext i8 %9 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.86, ptr noundef %addr, i32 noundef %3, i32 noundef %conv, i32 noundef %conv3, i32 noundef %conv4) #12
  %10 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %u, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp671 = icmp sgt i32 %11, 0
  br i1 %cmp671, label %if.end2.for.body_crit_edge, label %if.end2.for.end_crit_edge

if.end2.for.end_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end2.for.body_crit_edge:                       ; preds = %if.end2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end2.for.body_crit_edge
  %i.072 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end2.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.sta_info, ptr %v, i32 0, i32 34, i32 0, i32 1, i32 %i.072
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx, align 1
  %14 = add i8 %13, -32
  call void @__sanitizer_cov_trace_const_cmp1(i8 95, i8 %14)
  %15 = icmp ult i8 %14, 95
  br i1 %15, label %if.then18, label %if.else

if.then18:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext %13) #12
  br label %for.inc

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %conv25 = zext i8 %13 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.87, i32 noundef %conv25) #12
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then18
  %inc = add nuw nsw i32 %i.072, 1
  %16 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %u, align 4
  %cmp6 = icmp slt i32 %inc, %17
  br i1 %cmp6, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end2.for.end_crit_edge
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext 39) #12
  %capability = getelementptr inbounds %struct.sta_info, ptr %v, i32 0, i32 7
  %18 = ptrtoint ptr %capability to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %capability, align 4
  %20 = and i16 %19, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %tobool28.not = icmp eq i16 %20, 0
  br i1 %tobool28.not, label %for.end.if.end30_crit_edge, label %if.then29

for.end.if.end30_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

if.then29:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.88) #12
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %for.end.if.end30_crit_edge
  %21 = ptrtoint ptr %capability to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %capability, align 4
  %23 = and i16 %22, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool34.not = icmp eq i16 %23, 0
  br i1 %tobool34.not, label %if.end30.if.end36_crit_edge, label %if.then35

if.end30.if.end36_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

if.then35:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.89) #12
  br label %if.end36

if.end36:                                         ; preds = %if.then35, %if.end30.if.end36_crit_edge
  %24 = ptrtoint ptr %capability to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %capability, align 4
  %26 = and i16 %25, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %tobool40.not = icmp eq i16 %26, 0
  br i1 %tobool40.not, label %if.end36.if.end42_crit_edge, label %if.then41

if.end36.if.end42_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end42

if.then41:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.90) #12
  br label %if.end42

if.end42:                                         ; preds = %if.then41, %if.end36.if.end42_crit_edge
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext 10) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end42, %if.end.cleanup_crit_edge, %if.then
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_queue_xmit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prism2_sta_proc_show(ptr noundef %m, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %ap = getelementptr inbounds %struct.sta_info, ptr %1, i32 0, i32 32
  %2 = ptrtoint ptr %ap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %cond = select i1 %tobool.not, ptr @.str.98, ptr @.str.97
  %addr = getelementptr inbounds %struct.sta_info, ptr %1, i32 0, i32 4
  %users = getelementptr inbounds %struct.sta_info, ptr %1, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %users, i32 noundef 4) #12
  %4 = ptrtoint ptr %users to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %users, align 4
  %aid = getelementptr inbounds %struct.sta_info, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %aid to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %aid, align 2
  %conv = zext i16 %7 to i32
  %flags = getelementptr inbounds %struct.sta_info, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 4
  %and = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  %cond3 = select i1 %tobool2.not, ptr @.str.100, ptr @.str.99
  %and5 = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  %cond7 = select i1 %tobool6.not, ptr @.str.100, ptr @.str.101
  %and9 = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  %cond11 = select i1 %tobool10.not, ptr @.str.100, ptr @.str.102
  %and13 = and i32 %9, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  %cond15 = select i1 %tobool14.not, ptr @.str.100, ptr @.str.103
  %and17 = and i32 %9, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  %cond19 = select i1 %tobool18.not, ptr @.str.100, ptr @.str.104
  %and21 = and i32 %9, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  %cond23 = select i1 %tobool22.not, ptr @.str.100, ptr @.str.105
  %and25 = and i32 %9, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  %cond27 = select i1 %tobool26.not, ptr @.str.100, ptr @.str.106
  %capability = getelementptr inbounds %struct.sta_info, ptr %1, i32 0, i32 7
  %10 = ptrtoint ptr %capability to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %capability, align 4
  %conv28 = zext i16 %11 to i32
  %listen_interval = getelementptr inbounds %struct.sta_info, ptr %1, i32 0, i32 8
  %12 = ptrtoint ptr %listen_interval to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %listen_interval, align 2
  %conv29 = zext i16 %13 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.96, ptr noundef nonnull %cond, ptr noundef %addr, i32 noundef %5, i32 noundef %conv, i32 noundef %9, ptr noundef nonnull %cond3, ptr noundef nonnull %cond7, ptr noundef nonnull %cond11, ptr noundef nonnull %cond15, ptr noundef nonnull %cond19, ptr noundef nonnull %cond23, ptr noundef nonnull %cond27, i32 noundef %conv28, i32 noundef %conv29) #12
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.0196 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.sta_info, ptr %1, i32 0, i32 9, i32 %i.0196
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp32.not = icmp eq i8 %15, 0
  br i1 %cmp32.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %conv31 = zext i8 %15 to i32
  %and37 = lshr i32 %conv31, 1
  %div193 = and i32 %and37, 63
  %and41 = and i32 %conv31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  %cond43 = select i1 %tobool42.not, ptr @.str.100, ptr @.str.108
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.107, i32 noundef %div193, ptr noundef nonnull %cond43) #12
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0196, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %16 = load volatile i32, ptr @jiffies, align 128
  %last_auth = getelementptr inbounds %struct.sta_info, ptr %1, i32 0, i32 10
  %17 = ptrtoint ptr %last_auth to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %last_auth, align 4
  %last_assoc = getelementptr inbounds %struct.sta_info, ptr %1, i32 0, i32 11
  %19 = ptrtoint ptr %last_assoc to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %last_assoc, align 4
  %last_rx = getelementptr inbounds %struct.sta_info, ptr %1, i32 0, i32 12
  %21 = ptrtoint ptr %last_rx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %last_rx, align 4
  %last_tx = getelementptr inbounds %struct.sta_info, ptr %1, i32 0, i32 13
  %23 = ptrtoint ptr %last_tx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %last_tx, align 4
  %rx_packets = getelementptr inbounds %struct.sta_info, ptr %1, i32 0, i32 14
  %25 = ptrtoint ptr %rx_packets to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rx_packets, align 4
  %tx_packets = getelementptr inbounds %struct.sta_info, ptr %1, i32 0, i32 15
  %27 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tx_packets, align 4
  %rx_bytes = getelementptr inbounds %struct.sta_info, ptr %1, i32 0, i32 16
  %29 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rx_bytes, align 4
  %tx_bytes = getelementptr inbounds %struct.sta_info, ptr %1, i32 0, i32 17
  %31 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %tx_bytes, align 4
  %qlen.i = getelementptr inbounds %struct.sta_info, ptr %1, i32 0, i32 18, i32 1
  %33 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %qlen.i, align 4
  %last_rx_silence = getelementptr inbounds %struct.sta_info, ptr %1, i32 0, i32 19
  %35 = ptrtoint ptr %last_rx_silence to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %last_rx_silence, align 4
  %conv45 = sext i8 %36 to i32
  %last_rx_signal = getelementptr inbounds %struct.sta_info, ptr %1, i32 0, i32 20
  %37 = ptrtoint ptr %last_rx_signal to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %last_rx_signal, align 1
  %conv46 = sext i8 %38 to i32
  %last_rx_rate = getelementptr inbounds %struct.sta_info, ptr %1, i32 0, i32 21
  %39 = ptrtoint ptr %last_rx_rate to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %last_rx_rate, align 2
  %.frozen = freeze i8 %40
  %div48194 = udiv i8 %.frozen, 10
  %div48.zext = zext i8 %div48194 to i32
  %41 = mul i8 %div48194, 10
  %rem195.decomposed = sub i8 %.frozen, %41
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %rem195.decomposed)
  %tobool51.not = icmp eq i8 %rem195.decomposed, 0
  %cond52 = select i1 %tobool51.not, ptr @.str.100, ptr @.str.108
  %tx_rate = getelementptr inbounds %struct.sta_info, ptr %1, i32 0, i32 24
  %42 = ptrtoint ptr %tx_rate to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %tx_rate, align 1
  %conv53 = zext i8 %43 to i32
  %tx_count = getelementptr inbounds %struct.sta_info, ptr %1, i32 0, i32 27
  %44 = ptrtoint ptr %tx_count to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %tx_count, align 4
  %arrayidx56 = getelementptr %struct.sta_info, ptr %1, i32 0, i32 27, i32 1
  %46 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx56, align 4
  %arrayidx58 = getelementptr %struct.sta_info, ptr %1, i32 0, i32 27, i32 2
  %48 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx58, align 4
  %arrayidx60 = getelementptr %struct.sta_info, ptr %1, i32 0, i32 27, i32 3
  %50 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx60, align 4
  %rx_count = getelementptr inbounds %struct.sta_info, ptr %1, i32 0, i32 28
  %52 = ptrtoint ptr %rx_count to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %rx_count, align 4
  %arrayidx63 = getelementptr %struct.sta_info, ptr %1, i32 0, i32 28, i32 1
  %54 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx63, align 4
  %arrayidx65 = getelementptr %struct.sta_info, ptr %1, i32 0, i32 28, i32 2
  %56 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx65, align 4
  %arrayidx67 = getelementptr %struct.sta_info, ptr %1, i32 0, i32 28, i32 3
  %58 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx67, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.109, i32 noundef %16, i32 noundef %18, i32 noundef %20, i32 noundef %22, i32 noundef %24, i32 noundef %26, i32 noundef %28, i32 noundef %30, i32 noundef %32, i32 noundef %34, i32 noundef %conv45, i32 noundef %conv46, i32 noundef %div48.zext, ptr noundef nonnull %cond52, i32 noundef %conv53, i32 noundef %45, i32 noundef %47, i32 noundef %49, i32 noundef %51, i32 noundef %53, i32 noundef %55, i32 noundef %57, i32 noundef %59) #12
  %crypt = getelementptr inbounds %struct.sta_info, ptr %1, i32 0, i32 31
  %60 = ptrtoint ptr %crypt to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %crypt, align 4
  %tobool68.not = icmp eq ptr %61, null
  br i1 %tobool68.not, label %for.end.if.end80_crit_edge, label %land.lhs.true

for.end.if.end80_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end80

land.lhs.true:                                    ; preds = %for.end
  %ops = getelementptr inbounds %struct.lib80211_crypt_data, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ops, align 4
  %tobool70.not = icmp eq ptr %63, null
  br i1 %tobool70.not, label %land.lhs.true.if.end80_crit_edge, label %land.lhs.true71

land.lhs.true.if.end80_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end80

land.lhs.true71:                                  ; preds = %land.lhs.true
  %print_stats = getelementptr inbounds %struct.lib80211_crypto_ops, ptr %63, i32 0, i32 10
  %64 = ptrtoint ptr %print_stats to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %print_stats, align 4
  %tobool74.not = icmp eq ptr %65, null
  br i1 %tobool74.not, label %land.lhs.true71.if.end80_crit_edge, label %if.then75

land.lhs.true71.if.end80_crit_edge:               ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end80

if.then75:                                        ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #14
  %priv = getelementptr inbounds %struct.lib80211_crypt_data, ptr %61, i32 0, i32 2
  %66 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %priv, align 4
  tail call void %65(ptr noundef %m, ptr noundef %67) #12
  br label %if.end80

if.end80:                                         ; preds = %if.then75, %land.lhs.true71.if.end80_crit_edge, %land.lhs.true.if.end80_crit_edge, %for.end.if.end80_crit_edge
  %68 = ptrtoint ptr %ap to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %ap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool82.not = icmp eq i32 %69, 0
  br i1 %tobool82.not, label %if.end80.if.end119_crit_edge, label %if.then83

if.end80.if.end119_crit_edge:                     ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end119

if.then83:                                        ; preds = %if.end80
  %u = getelementptr inbounds %struct.sta_info, ptr %1, i32 0, i32 34
  %channel = getelementptr inbounds %struct.sta_info, ptr %1, i32 0, i32 34, i32 0, i32 2
  %70 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %channel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %71)
  %cmp84 = icmp sgt i32 %71, -1
  br i1 %cmp84, label %if.then86, label %if.then83.if.end89_crit_edge

if.then83.if.end89_crit_edge:                     ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end89

if.then86:                                        ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.110, i32 noundef %71) #12
  br label %if.end89

if.end89:                                         ; preds = %if.then86, %if.then83.if.end89_crit_edge
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.111) #12
  %72 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %u, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %cmp92197 = icmp sgt i32 %73, 0
  br i1 %cmp92197, label %if.end89.for.body94_crit_edge, label %if.end89.for.end118_crit_edge

if.end89.for.end118_crit_edge:                    ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end118

if.end89.for.body94_crit_edge:                    ; preds = %if.end89
  br label %for.body94

for.body94:                                       ; preds = %for.inc116.for.body94_crit_edge, %if.end89.for.body94_crit_edge
  %i.1198 = phi i32 [ %inc117, %for.inc116.for.body94_crit_edge ], [ 0, %if.end89.for.body94_crit_edge ]
  %arrayidx96 = getelementptr %struct.sta_info, ptr %1, i32 0, i32 34, i32 0, i32 1, i32 %i.1198
  %74 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx96, align 1
  %76 = add i8 %75, -32
  call void @__sanitizer_cov_trace_const_cmp1(i8 95, i8 %76)
  %77 = icmp ult i8 %76, 95
  br i1 %77, label %if.then107, label %if.else

if.then107:                                       ; preds = %for.body94
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext %75) #12
  br label %for.inc116

if.else:                                          ; preds = %for.body94
  call void @__sanitizer_cov_trace_pc() #14
  %conv114 = zext i8 %75 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.87, i32 noundef %conv114) #12
  br label %for.inc116

for.inc116:                                       ; preds = %if.else, %if.then107
  %inc117 = add nuw nsw i32 %i.1198, 1
  %78 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %u, align 4
  %cmp92 = icmp slt i32 %inc117, %79
  br i1 %cmp92, label %for.inc116.for.body94_crit_edge, label %for.inc116.for.end118_crit_edge

for.inc116.for.end118_crit_edge:                  ; preds = %for.inc116
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end118

for.inc116.for.body94_crit_edge:                  ; preds = %for.inc116
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body94

for.end118:                                       ; preds = %for.inc116.for.end118_crit_edge, %if.end89.for.end118_crit_edge
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext 10) #12
  br label %if.end119

if.end119:                                        ; preds = %for.end118, %if.end80.if.end119_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prism2_wds_add(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prism2_wds_del(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ap_handle_dropped_data(ptr nocapture noundef readonly %local, ptr nocapture noundef readonly %hdr) unnamed_addr #0 align 64 {
entry:
  %reason = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 5
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reason) #12
  %2 = ptrtoint ptr %reason to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %reason, align 2, !annotation !533
  %ap = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 22
  %3 = ptrtoint ptr %ap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ap, align 4
  %sta_table_lock = getelementptr inbounds %struct.ap_data, ptr %4, i32 0, i32 7
  tail call void @_raw_spin_lock_bh(ptr noundef %sta_table_lock) #12
  %5 = ptrtoint ptr %ap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ap, align 4
  %addr2 = getelementptr inbounds %struct.ieee80211_hdr, ptr %hdr, i32 0, i32 3
  %arrayidx.i = getelementptr %struct.ieee80211_hdr, ptr %hdr, i32 0, i32 3, i32 5
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx.i, align 1
  %idxprom.i = zext i8 %8 to i32
  %arrayidx1.i = getelementptr %struct.ap_data, ptr %6, i32 0, i32 10, i32 %idxprom.i
  %9 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %s.06.i = load ptr, ptr %arrayidx1.i, align 4
  %cmp.not7.i = icmp eq ptr %s.06.i, null
  br i1 %cmp.not7.i, label %entry.lor.end.thread_crit_edge, label %land.rhs.lr.ph.i

entry.lor.end.thread_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.end.thread

land.rhs.lr.ph.i:                                 ; preds = %entry
  %10 = ptrtoint ptr %addr2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %addr2, align 4
  %add.ptr1.i.i = getelementptr %struct.ieee80211_hdr, ptr %hdr, i32 0, i32 3, i32 4
  %12 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %add.ptr1.i.i, align 2
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %while.body.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %s.08.i = phi ptr [ %s.06.i, %land.rhs.lr.ph.i ], [ %s.0.i, %while.body.i.land.rhs.i_crit_edge ]
  %addr.i = getelementptr inbounds %struct.sta_info, ptr %s.08.i, i32 0, i32 4
  %14 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %addr.i, align 4
  %xor.i.i = xor i32 %15, %11
  %add.ptr.i.i = getelementptr %struct.sta_info, ptr %s.08.i, i32 0, i32 4, i32 4
  %16 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %add.ptr.i.i, align 2
  %xor37.i.i = xor i16 %17, %13
  %xor3.i.i = zext i16 %xor37.i.i to i32
  %or.i.i = or i32 %xor.i.i, %xor3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i, label %if.then, label %while.body.i

while.body.i:                                     ; preds = %land.rhs.i
  %hnext.i = getelementptr inbounds %struct.sta_info, ptr %s.08.i, i32 0, i32 1
  %18 = ptrtoint ptr %hnext.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %s.0.i = load ptr, ptr %hnext.i, align 4
  %cmp.not.i = icmp eq ptr %s.0.i, null
  br i1 %cmp.not.i, label %while.body.i.lor.end.thread_crit_edge, label %while.body.i.land.rhs.i_crit_edge

while.body.i.land.rhs.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i

while.body.i.lor.end.thread_crit_edge:            ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.end.thread

if.then:                                          ; preds = %land.rhs.i
  %users = getelementptr inbounds %struct.sta_info, ptr %s.08.i, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %users, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %users, i32 1, i32 3, i32 1) #12
  %19 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users, ptr %users, i32 1, ptr elementtype(i32) %users) #12, !srcloc !531
  %20 = ptrtoint ptr %ap to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ap, align 4
  %sta_table_lock4.c = getelementptr inbounds %struct.ap_data, ptr %21, i32 0, i32 7
  tail call void @_raw_spin_unlock_bh(ptr noundef %sta_table_lock4.c) #12
  %flags = getelementptr inbounds %struct.sta_info, ptr %s.08.i, i32 0, i32 6
  %22 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags, align 4
  %and = and i32 %23, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.then20, label %do.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.148) #15
  %call.i.i38 = tail call zeroext i1 @__kasan_check_write(ptr noundef %users, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %users, i32 1, i32 3, i32 1) #12
  %24 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users, ptr %users, i32 1, ptr elementtype(i32) %users) #12, !srcloc !532
  br label %cleanup

lor.end.thread:                                   ; preds = %while.body.i.lor.end.thread_crit_edge, %entry.lor.end.thread_crit_edge
  %sta_table_lock4.c37 = getelementptr inbounds %struct.ap_data, ptr %6, i32 0, i32 7
  tail call void @_raw_spin_unlock_bh(ptr noundef %sta_table_lock4.c37) #12
  %25 = ptrtoint ptr %reason to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 1792, ptr %reason, align 2
  call fastcc void @prism2_send_mgmt(ptr noundef %1, i16 noundef zeroext 192, ptr noundef nonnull %reason, i32 noundef 2, ptr noundef %addr2, i16 noundef zeroext 0)
  br label %cleanup

if.then20:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %26 = ptrtoint ptr %reason to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 1792, ptr %reason, align 2
  %27 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flags, align 4
  %and15 = and i32 %28, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  %phi.cast = select i1 %tobool16.not, i16 192, i16 160
  call fastcc void @prism2_send_mgmt(ptr noundef %1, i16 noundef zeroext %phi.cast, ptr noundef nonnull %reason, i32 noundef 2, ptr noundef %addr2, i16 noundef zeroext 0)
  %call.i.i39 = call zeroext i1 @__kasan_check_write(ptr noundef %users, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr %users, i32 1, i32 3, i32 1) #12
  %29 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users, ptr %users, i32 1, ptr elementtype(i32) %users) #12, !srcloc !532
  br label %cleanup

cleanup:                                          ; preds = %if.then20, %lor.end.thread, %do.end
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reason) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @handle_assoc(ptr nocapture noundef readonly %local, ptr nocapture noundef readonly %skb, i32 noundef %reassoc) unnamed_addr #0 align 64 {
entry:
  %body = alloca [12 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 5
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %body) #12
  %4 = getelementptr inbounds [12 x i8], ptr %body, i32 0, i32 2
  %5 = getelementptr inbounds [12 x i8], ptr %body, i32 0, i32 4
  %6 = getelementptr inbounds [12 x i8], ptr %body, i32 0, i32 6
  %len2 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %7 = call ptr @memset(ptr %body, i32 255, i32 12)
  %8 = ptrtoint ptr %len2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len2, align 4
  %sub = add i32 %9, -24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %reassoc)
  %tobool.not = icmp eq i32 %reassoc, 0
  %cond = select i1 %tobool.not, i32 4, i32 10
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %cond)
  %cmp = icmp slt i32 %sub, %cond
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %addr2 = getelementptr inbounds %struct.ieee80211_hdr, ptr %3, i32 0, i32 3
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.180, ptr noundef %1, i32 noundef %sub, i32 noundef %reassoc, ptr noundef %addr2) #15
  br label %cleanup276

if.end:                                           ; preds = %entry
  %ap = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 22
  %10 = ptrtoint ptr %ap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ap, align 4
  %sta_table_lock = getelementptr inbounds %struct.ap_data, ptr %11, i32 0, i32 7
  tail call void @_raw_spin_lock_bh(ptr noundef %sta_table_lock) #12
  %12 = ptrtoint ptr %ap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ap, align 4
  %addr28 = getelementptr inbounds %struct.ieee80211_hdr, ptr %3, i32 0, i32 3
  %arrayidx.i = getelementptr %struct.ieee80211_hdr, ptr %3, i32 0, i32 3, i32 5
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.i, align 1
  %idxprom.i = zext i8 %15 to i32
  %arrayidx1.i = getelementptr %struct.ap_data, ptr %13, i32 0, i32 10, i32 %idxprom.i
  %16 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %s.06.i = load ptr, ptr %arrayidx1.i, align 4
  %cmp.not7.i = icmp eq ptr %s.06.i, null
  br i1 %cmp.not7.i, label %if.end.cond.end264.thread_crit_edge, label %land.rhs.lr.ph.i

if.end.cond.end264.thread_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end264.thread

land.rhs.lr.ph.i:                                 ; preds = %if.end
  %17 = ptrtoint ptr %addr28 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %addr28, align 4
  %add.ptr1.i.i = getelementptr %struct.ieee80211_hdr, ptr %3, i32 0, i32 3, i32 4
  %19 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %add.ptr1.i.i, align 2
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %while.body.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %s.08.i = phi ptr [ %s.06.i, %land.rhs.lr.ph.i ], [ %s.0.i, %while.body.i.land.rhs.i_crit_edge ]
  %addr.i = getelementptr inbounds %struct.sta_info, ptr %s.08.i, i32 0, i32 4
  %21 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %addr.i, align 4
  %xor.i.i = xor i32 %22, %18
  %add.ptr.i.i = getelementptr %struct.sta_info, ptr %s.08.i, i32 0, i32 4, i32 4
  %23 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %add.ptr.i.i, align 2
  %xor37.i.i = xor i16 %24, %20
  %xor3.i.i = zext i16 %xor37.i.i to i32
  %or.i.i = or i32 %xor.i.i, %xor3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i, label %lor.lhs.false, label %while.body.i

while.body.i:                                     ; preds = %land.rhs.i
  %hnext.i = getelementptr inbounds %struct.sta_info, ptr %s.08.i, i32 0, i32 1
  %25 = ptrtoint ptr %hnext.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %s.0.i = load ptr, ptr %hnext.i, align 4
  %cmp.not.i = icmp eq ptr %s.0.i, null
  br i1 %cmp.not.i, label %while.body.i.cond.end264.thread_crit_edge, label %while.body.i.land.rhs.i_crit_edge

while.body.i.land.rhs.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i

while.body.i.cond.end264.thread_crit_edge:        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end264.thread

lor.lhs.false:                                    ; preds = %land.rhs.i
  %flags = getelementptr inbounds %struct.sta_info, ptr %s.08.i, i32 0, i32 6
  %26 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flags, align 4
  %and = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp12 = icmp eq i32 %and, 0
  br i1 %cmp12, label %lor.lhs.false.cond.end264.thread_crit_edge, label %if.end16

lor.lhs.false.cond.end264.thread_crit_edge:       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end264.thread

if.end16:                                         ; preds = %lor.lhs.false
  %users = getelementptr inbounds %struct.sta_info, ptr %s.08.i, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %users, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %users, i32 1, i32 3, i32 1) #12
  %28 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users, ptr %users, i32 1, ptr elementtype(i32) %users) #12, !srcloc !531
  %29 = ptrtoint ptr %ap to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ap, align 4
  %sta_table_lock18 = getelementptr inbounds %struct.ap_data, ptr %30, i32 0, i32 7
  tail call void @_raw_spin_unlock_bh(ptr noundef %sta_table_lock18) #12
  %31 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %32, i32 24
  %33 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %add.ptr, align 2
  %35 = tail call i16 @llvm.bswap.i16(i16 %34)
  %capability = getelementptr inbounds %struct.sta_info, ptr %s.08.i, i32 0, i32 7
  %36 = ptrtoint ptr %capability to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %35, ptr %capability, align 4
  %incdec.ptr = getelementptr i8, ptr %32, i32 26
  %37 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %incdec.ptr, align 2
  %39 = tail call i16 @llvm.bswap.i16(i16 %38)
  %listen_interval = getelementptr inbounds %struct.sta_info, ptr %s.08.i, i32 0, i32 8
  %40 = ptrtoint ptr %listen_interval to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %39, ptr %listen_interval, align 2
  %left.0.v = select i1 %tobool.not, i32 -28, i32 -34
  %left.0 = add i32 %9, %left.0.v
  %pos.0.v = select i1 %tobool.not, i32 28, i32 34
  %pos.0 = getelementptr i8, ptr %32, i32 %pos.0.v
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %left.0)
  %cmp32 = icmp sgt i32 %left.0, 1
  br i1 %cmp32, label %if.then33, label %if.end16.if.else174.thread_crit_edge

if.end16.if.else174.thread_crit_edge:             ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else174.thread

if.then33:                                        ; preds = %if.end16
  %41 = ptrtoint ptr %pos.0 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %pos.0, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %cmp34 = icmp eq i8 %42, 0
  br i1 %cmp34, label %if.then36, label %if.then33.land.lhs.true_crit_edge

if.then33.land.lhs.true_crit_edge:                ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true

if.then36:                                        ; preds = %if.then33
  %incdec.ptr37 = getelementptr i8, ptr %pos.0, i32 1
  %43 = ptrtoint ptr %incdec.ptr37 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %incdec.ptr37, align 1
  %conv38 = zext i8 %44 to i32
  %incdec.ptr39 = getelementptr i8, ptr %pos.0, i32 2
  %dec40 = add nsw i32 %left.0, -2
  call void @__sanitizer_cov_trace_cmp4(i32 %dec40, i32 %conv38)
  %cmp41 = icmp ult i32 %dec40, %conv38
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %44)
  %cmp44 = icmp ugt i8 %44, 32
  %or.cond = or i1 %cmp44, %cmp41
  br i1 %or.cond, label %if.then36.if.else174.thread_crit_edge, label %if.end47

if.then36.if.else174.thread_crit_edge:            ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else174.thread

if.end47:                                         ; preds = %if.then36
  %essid = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 23
  %call49 = tail call i32 @strlen(ptr noundef %essid) #18
  call void @__sanitizer_cov_trace_cmp4(i32 %call49, i32 %conv38)
  %cmp50.not = icmp eq i32 %call49, %conv38
  br i1 %cmp50.not, label %lor.lhs.false52, label %if.end47.if.else174.thread_crit_edge

if.end47.if.else174.thread_crit_edge:             ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else174.thread

lor.lhs.false52:                                  ; preds = %if.end47
  %bcmp = tail call i32 @bcmp(ptr %essid, ptr %incdec.ptr39, i32 %conv38) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp56.not = icmp eq i32 %bcmp, 0
  br i1 %cmp56.not, label %if.end62, label %lor.lhs.false52.if.else174.thread_crit_edge

lor.lhs.false52.if.else174.thread_crit_edge:      ; preds = %lor.lhs.false52
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else174.thread

if.end62:                                         ; preds = %lor.lhs.false52
  %add.ptr60 = getelementptr i8, ptr %incdec.ptr39, i32 %conv38
  %sub61 = sub nsw i32 %dec40, %conv38
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub61)
  %cmp63 = icmp sgt i32 %sub61, 1
  br i1 %cmp63, label %land.lhs.truethread-pre-split, label %if.end62.if.end89_crit_edge

if.end62.if.end89_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end89

land.lhs.truethread-pre-split:                    ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #14
  %45 = ptrtoint ptr %add.ptr60 to i32
  call void @__asan_load1_noabort(i32 %45)
  %.pr = load i8, ptr %add.ptr60, align 1
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %land.lhs.truethread-pre-split, %if.then33.land.lhs.true_crit_edge
  %46 = phi i8 [ %.pr, %land.lhs.truethread-pre-split ], [ %42, %if.then33.land.lhs.true_crit_edge ]
  %u.013 = phi ptr [ %add.ptr60, %land.lhs.truethread-pre-split ], [ %pos.0, %if.then33.land.lhs.true_crit_edge ]
  %left.112 = phi i32 [ %sub61, %land.lhs.truethread-pre-split ], [ %left.0, %if.then33.land.lhs.true_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %46)
  %cmp66 = icmp eq i8 %46, 1
  br i1 %cmp66, label %if.then68, label %land.lhs.true.do.end110.preheader_crit_edge

land.lhs.true.do.end110.preheader_crit_edge:      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end110.preheader

if.then68:                                        ; preds = %land.lhs.true
  %incdec.ptr69 = getelementptr i8, ptr %u.013, i32 1
  %47 = ptrtoint ptr %incdec.ptr69 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %incdec.ptr69, align 1
  %conv71 = zext i8 %48 to i32
  %dec73 = add nsw i32 %left.112, -2
  call void @__sanitizer_cov_trace_cmp4(i32 %dec73, i32 %conv71)
  %cmp74 = icmp ult i32 %dec73, %conv71
  %49 = add i8 %48, -33
  call void @__sanitizer_cov_trace_const_cmp1(i8 -32, i8 %49)
  %50 = icmp ult i8 %49, -32
  %51 = or i1 %50, %cmp74
  br i1 %51, label %if.then68.if.else174.thread_crit_edge, label %if.end83

if.then68.if.else174.thread_crit_edge:            ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else174.thread

if.end83:                                         ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #14
  %incdec.ptr72 = getelementptr i8, ptr %u.013, i32 2
  %supported_rates = getelementptr inbounds %struct.sta_info, ptr %s.08.i, i32 0, i32 9
  %52 = call ptr @memset(ptr %supported_rates, i32 0, i32 32)
  %53 = call ptr @memcpy(ptr %supported_rates, ptr %incdec.ptr72, i32 %conv71)
  tail call fastcc void @prism2_check_tx_rates(ptr noundef nonnull %s.08.i)
  %add.ptr87 = getelementptr i8, ptr %incdec.ptr72, i32 %conv71
  %sub88 = sub nsw i32 %dec73, %conv71
  br label %if.end89

if.end89:                                         ; preds = %if.end83, %if.end62.if.end89_crit_edge
  %left.2 = phi i32 [ %sub88, %if.end83 ], [ %sub61, %if.end62.if.end89_crit_edge ]
  %u.1 = phi ptr [ %add.ptr87, %if.end83 ], [ %add.ptr60, %if.end62.if.end89_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %left.2)
  %cmp90 = icmp sgt i32 %left.2, 0
  br i1 %cmp90, label %if.end89.do.end110.preheader_crit_edge, label %if.end89.if.end129_crit_edge

if.end89.if.end129_crit_edge:                     ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end129

if.end89.do.end110.preheader_crit_edge:           ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end110.preheader

do.end110.preheader:                              ; preds = %if.end89.do.end110.preheader_crit_edge, %land.lhs.true.do.end110.preheader_crit_edge
  %u.118 = phi ptr [ %u.1, %if.end89.do.end110.preheader_crit_edge ], [ %u.013, %land.lhs.true.do.end110.preheader_crit_edge ]
  %left.217 = phi i32 [ %left.2, %if.end89.do.end110.preheader_crit_edge ], [ %left.112, %land.lhs.true.do.end110.preheader_crit_edge ]
  %call102 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.187, ptr noundef %1, ptr noundef %addr28, i32 noundef %left.217) #15
  br label %do.end110

do.end110:                                        ; preds = %do.end110.do.end110_crit_edge, %do.end110.preheader
  %u.280 = phi ptr [ %incdec.ptr116, %do.end110.do.end110_crit_edge ], [ %u.118, %do.end110.preheader ]
  %left.379 = phi i32 [ %dec117, %do.end110.do.end110_crit_edge ], [ %left.217, %do.end110.preheader ]
  %54 = ptrtoint ptr %u.280 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %u.280, align 1
  %conv112 = zext i8 %55 to i32
  %call113 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87, i32 noundef %conv112) #15
  %incdec.ptr116 = getelementptr i8, ptr %u.280, i32 1
  %dec117 = add nsw i32 %left.379, -1
  %cmp105 = icmp ugt i32 %left.379, 1
  br i1 %cmp105, label %do.end110.do.end110_crit_edge, label %do.end121

do.end110.do.end110_crit_edge:                    ; preds = %do.end110
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end110

do.end121:                                        ; preds = %do.end110
  call void @__sanitizer_cov_trace_pc() #14
  %call123 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.192) #15
  br label %if.end129

if.end129:                                        ; preds = %do.end121, %if.end89.if.end129_crit_edge
  %aid = getelementptr inbounds %struct.sta_info, ptr %s.08.i, i32 0, i32 5
  %56 = ptrtoint ptr %aid to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %aid, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %57)
  %cmp131.not = icmp eq i16 %57, 0
  br i1 %cmp131.not, label %if.else134, label %if.end129.if.else174_crit_edge

if.end129.if.else174_crit_edge:                   ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else174

if.else134:                                       ; preds = %if.end129
  %58 = ptrtoint ptr %ap to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ap, align 4
  %sta_table_lock136 = getelementptr inbounds %struct.ap_data, ptr %59, i32 0, i32 7
  tail call void @_raw_spin_lock_bh(ptr noundef %sta_table_lock136) #12
  %60 = ptrtoint ptr %aid to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 1, ptr %aid, align 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.else134
  %indvars.iv = phi i32 [ 1, %if.else134 ], [ %indvars.iv.next, %for.inc.for.body_crit_edge ]
  %61 = ptrtoint ptr %ap to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ap, align 4
  %sub145 = add nsw i32 %indvars.iv, -1
  %arrayidx = getelementptr %struct.ap_data, ptr %62, i32 0, i32 22, i32 %sub145
  %63 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx, align 4
  %cmp146 = icmp eq ptr %64, null
  br i1 %cmp146, label %if.else159, label %for.inc

for.inc:                                          ; preds = %for.body
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %65 = trunc i32 %indvars.iv.next to i16
  %66 = ptrtoint ptr %aid to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %65, ptr %aid, align 2
  %exitcond.not = icmp eq i32 %indvars.iv.next, 129
  br i1 %exitcond.not, label %if.then155, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

if.then155:                                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  %67 = ptrtoint ptr %aid to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 0, ptr %aid, align 2
  br label %if.else174.sink.split

if.else159:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %conv152 = and i32 %indvars.iv, 65535
  %68 = ptrtoint ptr %ap to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ap, align 4
  %sub164 = add nsw i32 %conv152, -1
  %arrayidx165 = getelementptr %struct.ap_data, ptr %69, i32 0, i32 22, i32 %sub164
  %70 = ptrtoint ptr %arrayidx165 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %s.08.i, ptr %arrayidx165, align 4
  br label %if.else174.sink.split

if.else174.thread:                                ; preds = %if.then68.if.else174.thread_crit_edge, %lor.lhs.false52.if.else174.thread_crit_edge, %if.end47.if.else174.thread_crit_edge, %if.then36.if.else174.thread_crit_edge, %if.end16.if.else174.thread_crit_edge
  %resp.1.ph.ph = phi i16 [ 1, %if.end16.if.else174.thread_crit_edge ], [ 1, %if.then68.if.else174.thread_crit_edge ], [ 12, %if.end47.if.else174.thread_crit_edge ], [ 12, %lor.lhs.false52.if.else174.thread_crit_edge ], [ 1, %if.then36.if.else174.thread_crit_edge ]
  %71 = ptrtoint ptr %body to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 256, ptr %body, align 2
  %72 = shl nuw nsw i16 %resp.1.ph.ph, 8
  %73 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %72, ptr %4, align 2
  br label %land.lhs.true178

if.else174.sink.split:                            ; preds = %if.else159, %if.then155
  %resp.1.ph.ph87 = phi i16 [ 17, %if.then155 ], [ 0, %if.else159 ]
  %74 = ptrtoint ptr %ap to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %ap, align 4
  %sta_table_lock158 = getelementptr inbounds %struct.ap_data, ptr %75, i32 0, i32 7
  tail call void @_raw_spin_unlock_bh(ptr noundef %sta_table_lock158) #12
  br label %if.else174

if.else174:                                       ; preds = %if.else174.sink.split, %if.end129.if.else174_crit_edge
  %resp.1.ph = phi i16 [ 0, %if.end129.if.else174_crit_edge ], [ %resp.1.ph.ph87, %if.else174.sink.split ]
  %76 = ptrtoint ptr %body to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 256, ptr %body, align 2
  %77 = shl nuw nsw i16 %resp.1.ph, 8
  %78 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %77, ptr %4, align 2
  %tobool177.not = icmp eq ptr %s.08.i, null
  br i1 %tobool177.not, label %if.else174.cond.end_crit_edge, label %if.else174.land.lhs.true178_crit_edge

if.else174.land.lhs.true178_crit_edge:            ; preds = %if.else174
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true178

if.else174.cond.end_crit_edge:                    ; preds = %if.else174
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

land.lhs.true178:                                 ; preds = %if.else174.land.lhs.true178_crit_edge, %if.else174.thread
  %resp.1.ph35 = phi i16 [ %resp.1.ph.ph, %if.else174.thread ], [ %resp.1.ph, %if.else174.land.lhs.true178_crit_edge ]
  %aid179 = getelementptr inbounds %struct.sta_info, ptr %s.08.i, i32 0, i32 5
  %79 = ptrtoint ptr %aid179 to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %aid179, align 2
  %phi.bo1 = or i16 %80, -16384
  br label %cond.end

cond.end:                                         ; preds = %land.lhs.true178, %if.else174.cond.end_crit_edge
  %resp.1.ph36 = phi i16 [ %resp.1.ph, %if.else174.cond.end_crit_edge ], [ %resp.1.ph35, %land.lhs.true178 ]
  %cond185 = phi i16 [ -16384, %if.else174.cond.end_crit_edge ], [ %phi.bo1, %land.lhs.true178 ]
  %81 = tail call i16 @llvm.bswap.i16(i16 %cond185)
  %82 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 %81, ptr %5, align 2
  %incdec.ptr189 = getelementptr inbounds [12 x i8], ptr %body, i32 0, i32 7
  %83 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 1, ptr %6, align 2
  %incdec.ptr190 = getelementptr inbounds [12 x i8], ptr %body, i32 0, i32 8
  %84 = ptrtoint ptr %incdec.ptr189 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 0, ptr %incdec.ptr189, align 1
  %tx_rate_control = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 39
  %85 = ptrtoint ptr %tx_rate_control to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %tx_rate_control, align 4
  %87 = and i16 %86, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %87)
  %tobool193.not = icmp eq i16 %87, 0
  br i1 %tobool193.not, label %cond.end.if.end202_crit_edge, label %if.then194

cond.end.if.end202_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end202

if.then194:                                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  %basic_rates = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 40
  %88 = ptrtoint ptr %basic_rates to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %basic_rates, align 2
  %90 = and i16 %89, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %90)
  %tobool197.not = icmp eq i16 %90, 0
  %conv199 = select i1 %tobool197.not, i8 2, i8 -126
  %incdec.ptr200 = getelementptr inbounds [12 x i8], ptr %body, i32 0, i32 9
  %91 = ptrtoint ptr %incdec.ptr190 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %conv199, ptr %incdec.ptr190, align 2
  %92 = ptrtoint ptr %incdec.ptr189 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 1, ptr %incdec.ptr189, align 1
  br label %if.end202

if.end202:                                        ; preds = %if.then194, %cond.end.if.end202_crit_edge
  %p.0 = phi ptr [ %incdec.ptr200, %if.then194 ], [ %incdec.ptr190, %cond.end.if.end202_crit_edge ]
  %93 = and i16 %86, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %93)
  %tobool206.not = icmp eq i16 %93, 0
  br i1 %tobool206.not, label %if.end202.if.end216_crit_edge, label %if.then207

if.end202.if.end216_crit_edge:                    ; preds = %if.end202
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end216

if.then207:                                       ; preds = %if.end202
  call void @__sanitizer_cov_trace_pc() #14
  %basic_rates208 = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 40
  %94 = ptrtoint ptr %basic_rates208 to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %basic_rates208, align 2
  %96 = and i16 %95, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %96)
  %tobool211.not = icmp eq i16 %96, 0
  %conv213 = select i1 %tobool211.not, i8 4, i8 -124
  %incdec.ptr214 = getelementptr i8, ptr %p.0, i32 1
  %97 = ptrtoint ptr %p.0 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %conv213, ptr %p.0, align 1
  %98 = ptrtoint ptr %incdec.ptr189 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %incdec.ptr189, align 1
  %inc215 = add i8 %99, 1
  store i8 %inc215, ptr %incdec.ptr189, align 1
  br label %if.end216

if.end216:                                        ; preds = %if.then207, %if.end202.if.end216_crit_edge
  %p.1 = phi ptr [ %incdec.ptr214, %if.then207 ], [ %p.0, %if.end202.if.end216_crit_edge ]
  %100 = and i16 %86, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %100)
  %tobool220.not = icmp eq i16 %100, 0
  br i1 %tobool220.not, label %if.end216.if.end230_crit_edge, label %if.then221

if.end216.if.end230_crit_edge:                    ; preds = %if.end216
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end230

if.then221:                                       ; preds = %if.end216
  call void @__sanitizer_cov_trace_pc() #14
  %basic_rates222 = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 40
  %101 = ptrtoint ptr %basic_rates222 to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %basic_rates222, align 2
  %103 = and i16 %102, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %103)
  %tobool225.not = icmp eq i16 %103, 0
  %conv227 = select i1 %tobool225.not, i8 11, i8 -117
  %incdec.ptr228 = getelementptr i8, ptr %p.1, i32 1
  %104 = ptrtoint ptr %p.1 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %conv227, ptr %p.1, align 1
  %105 = ptrtoint ptr %incdec.ptr189 to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %incdec.ptr189, align 1
  %inc229 = add i8 %106, 1
  store i8 %inc229, ptr %incdec.ptr189, align 1
  br label %if.end230

if.end230:                                        ; preds = %if.then221, %if.end216.if.end230_crit_edge
  %p.2 = phi ptr [ %incdec.ptr228, %if.then221 ], [ %p.1, %if.end216.if.end230_crit_edge ]
  %107 = ptrtoint ptr %tx_rate_control to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %tx_rate_control, align 4
  %109 = and i16 %108, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %109)
  %tobool234.not = icmp eq i16 %109, 0
  br i1 %tobool234.not, label %if.end230.cond.end264_crit_edge, label %if.then235

if.end230.cond.end264_crit_edge:                  ; preds = %if.end230
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end264

if.then235:                                       ; preds = %if.end230
  call void @__sanitizer_cov_trace_pc() #14
  %basic_rates236 = getelementptr inbounds %struct.local_info, ptr %local, i32 0, i32 40
  %110 = ptrtoint ptr %basic_rates236 to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %basic_rates236, align 2
  %112 = and i16 %111, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %112)
  %tobool239.not = icmp eq i16 %112, 0
  %conv241 = select i1 %tobool239.not, i8 22, i8 -106
  %incdec.ptr242 = getelementptr i8, ptr %p.2, i32 1
  %113 = ptrtoint ptr %p.2 to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %conv241, ptr %p.2, align 1
  %114 = ptrtoint ptr %incdec.ptr189 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %incdec.ptr189, align 1
  %inc243 = add i8 %115, 1
  store i8 %inc243, ptr %incdec.ptr189, align 1
  br label %cond.end264

cond.end264.thread:                               ; preds = %lor.lhs.false.cond.end264.thread_crit_edge, %while.body.i.cond.end264.thread_crit_edge, %if.end.cond.end264.thread_crit_edge
  %sta_table_lock15 = getelementptr inbounds %struct.ap_data, ptr %13, i32 0, i32 7
  tail call void @_raw_spin_unlock_bh(ptr noundef %sta_table_lock15) #12
  %116 = ptrtoint ptr %body to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 2304, ptr %body, align 2
  call fastcc void @prism2_send_mgmt(ptr noundef %1, i16 noundef zeroext 192, ptr noundef nonnull %body, i32 noundef 2, ptr noundef %addr28, i16 noundef zeroext 0)
  br label %cleanup276

cond.end264:                                      ; preds = %if.then235, %if.end230.cond.end264_crit_edge
  %pos.1.ph = phi ptr [ %p.2, %if.end230.cond.end264_crit_edge ], [ %incdec.ptr242, %if.then235 ]
  %phi.cast43 = select i1 %tobool.not, i16 16, i16 48
  %sub.ptr.lhs.cast57 = ptrtoint ptr %pos.1.ph to i32
  %sub.ptr.rhs.cast58 = ptrtoint ptr %body to i32
  %sub.ptr.sub59 = sub i32 %sub.ptr.lhs.cast57, %sub.ptr.rhs.cast58
  %117 = ptrtoint ptr %ap to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %ap, align 4
  %tx_callback_assoc = getelementptr inbounds %struct.ap_data, ptr %118, i32 0, i32 24
  %119 = ptrtoint ptr %tx_callback_assoc to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %tx_callback_assoc, align 2
  call fastcc void @prism2_send_mgmt(ptr noundef %1, i16 noundef zeroext %phi.cast43, ptr noundef nonnull %body, i32 noundef %sub.ptr.sub59, ptr noundef %addr28, i16 noundef zeroext %120)
  %tobool267.not = icmp eq ptr %s.08.i, null
  br i1 %tobool267.not, label %cond.end264.cleanup276_crit_edge, label %if.then268

cond.end264.cleanup276_crit_edge:                 ; preds = %cond.end264
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup276

if.then268:                                       ; preds = %cond.end264
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %resp.1.ph36)
  %cmp270 = icmp eq i16 %resp.1.ph36, 0
  br i1 %cmp270, label %if.then272, label %if.then268.if.end273_crit_edge

if.then268.if.end273_crit_edge:                   ; preds = %if.then268
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end273

if.then272:                                       ; preds = %if.then268
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %121 = load volatile i32, ptr @jiffies, align 128
  %last_rx = getelementptr inbounds %struct.sta_info, ptr %s.08.i, i32 0, i32 12
  %122 = ptrtoint ptr %last_rx to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %121, ptr %last_rx, align 4
  br label %if.end273

if.end273:                                        ; preds = %if.then272, %if.then268.if.end273_crit_edge
  %call.i.i6 = call zeroext i1 @__kasan_check_write(ptr noundef %users, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr %users, i32 1, i32 3, i32 1) #12
  %123 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users, ptr %users, i32 1, ptr elementtype(i32) %users) #12, !srcloc !532
  br label %cleanup276

cleanup276:                                       ; preds = %if.end273, %cond.end264.cleanup276_crit_edge, %cond.end264.thread, %do.end
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %body) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lib80211_get_crypto_ops(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ap_handle_timer(ptr noundef %t) #0 align 64 {
entry:
  %wrqu.i = alloca %union.iwreq_data, align 4
  %resp = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -264
  %cmp = icmp eq ptr %add.ptr, null
  br i1 %cmp, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %local1 = getelementptr i8, ptr %t, i32 -52
  %0 = ptrtoint ptr %local1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local1, align 4
  %cmp2 = icmp eq ptr %1, null
  br i1 %cmp2, label %lor.lhs.false.do.end_crit_edge, label %lor.lhs.false3

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %ap5 = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %ap5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ap5, align 4
  %cmp6 = icmp eq ptr %3, null
  br i1 %cmp6, label %lor.lhs.false3.do.end_crit_edge, label %if.end

lor.lhs.false3.do.end_crit_edge:                  ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false3.do.end_crit_edge, %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.250) #15
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false3
  %flags = getelementptr i8, ptr %t, i32 -236
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, 2
  %users = getelementptr i8, ptr %t, i32 -252
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %users, i32 noundef 4) #12
  %6 = ptrtoint ptr %users to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %users, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp14.not = icmp eq i32 %7, 0
  br i1 %cmp14.not, label %if.else, label %if.then15

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %8, 100
  br label %if.end24

if.else:                                          ; preds = %if.end
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags, align 4
  %11 = and i32 %10, 17
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %11)
  %12 = icmp eq i32 %11, 16
  br i1 %12, label %if.then21, label %if.else.if.end24_crit_edge

if.else.if.end24_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24

if.then21:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %13 = load volatile i32, ptr @jiffies, align 128
  %max_inactivity = getelementptr inbounds %struct.ap_data, ptr %3, i32 0, i32 13
  %14 = ptrtoint ptr %max_inactivity to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %max_inactivity, align 4
  %add22 = add i32 %15, %13
  br label %if.end24

if.end24:                                         ; preds = %if.then21, %if.else.if.end24_crit_edge, %if.then15
  %next_time.0 = phi i32 [ %add, %if.then15 ], [ %add22, %if.then21 ], [ 0, %if.else.if.end24_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %16 = load volatile i32, ptr @jiffies, align 128
  %last_rx = getelementptr i8, ptr %t, i32 -188
  %17 = ptrtoint ptr %last_rx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %last_rx, align 4
  %max_inactivity25 = getelementptr inbounds %struct.ap_data, ptr %3, i32 0, i32 13
  %19 = ptrtoint ptr %max_inactivity25 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %max_inactivity25, align 4
  %21 = add i32 %18, %20
  %sub = sub i32 %16, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp27 = icmp slt i32 %sub, 0
  %timeout_next = getelementptr i8, ptr %t, i32 48
  br i1 %cmp27, label %if.then28, label %if.else32

if.then28:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  %22 = ptrtoint ptr %timeout_next to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %timeout_next, align 4
  br label %if.end44.sink.split

if.else32:                                        ; preds = %if.end24
  %23 = ptrtoint ptr %timeout_next to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %timeout_next, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %24)
  %cmp34 = icmp eq i32 %24, 1
  br i1 %cmp34, label %land.lhs.true35, label %if.else32.if.end44_crit_edge

if.else32.if.end44_crit_edge:                     ; preds = %if.else32
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44

land.lhs.true35:                                  ; preds = %if.else32
  %25 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flags, align 4
  %and37 = and i32 %26, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.then39, label %land.lhs.true35.if.end44_crit_edge

land.lhs.true35.if.end44_crit_edge:               ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44

if.then39:                                        ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #14
  %27 = ptrtoint ptr %timeout_next to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %timeout_next, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %28 = load volatile i32, ptr @jiffies, align 128
  br label %if.end44.sink.split

if.end44.sink.split:                              ; preds = %if.then39, %if.then28
  %.sink284 = phi i32 [ %28, %if.then39 ], [ %18, %if.then28 ]
  %29 = ptrtoint ptr %max_inactivity25 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %max_inactivity25, align 4
  %add42 = add i32 %30, %.sink284
  br label %if.end44

if.end44:                                         ; preds = %if.end44.sink.split, %land.lhs.true35.if.end44_crit_edge, %if.else32.if.end44_crit_edge
  %next_time.1 = phi i32 [ %next_time.0, %land.lhs.true35.if.end44_crit_edge ], [ %next_time.0, %if.else32.if.end44_crit_edge ], [ %add42, %if.end44.sink.split ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %next_time.1)
  %tobool45.not = icmp eq i32 %next_time.1, 0
  br i1 %tobool45.not, label %if.end48, label %if.then46

if.then46:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #14
  %expires = getelementptr inbounds %struct.timer_list, ptr %t, i32 0, i32 1
  %31 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %next_time.1, ptr %expires, align 4
  tail call void @add_timer(ptr noundef %t) #12
  br label %cleanup

if.end48:                                         ; preds = %if.end44
  %ap49 = getelementptr i8, ptr %t, i32 -56
  %32 = ptrtoint ptr %ap49 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ap49, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool50.not = icmp eq i32 %33, 0
  br i1 %tobool50.not, label %if.end48.if.end53_crit_edge, label %if.then51

if.end48.if.end53_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end53

if.then51:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  %timeout_next52 = getelementptr i8, ptr %t, i32 48
  %34 = ptrtoint ptr %timeout_next52 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 2, ptr %timeout_next52, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.then51, %if.end48.if.end53_crit_edge
  %timeout_next54 = getelementptr i8, ptr %t, i32 48
  %35 = ptrtoint ptr %timeout_next54 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %timeout_next54, align 4
  %37 = zext i32 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.274)
  switch i32 %36, label %if.end53.if.end71_crit_edge [
    i32 2, label %land.lhs.true56
    i32 1, label %if.end53.if.end71.sink.split_crit_edge
  ]

if.end53.if.end71.sink.split_crit_edge:           ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end71.sink.split

if.end53.if.end71_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end71

land.lhs.true56:                                  ; preds = %if.end53
  %38 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %flags, align 4
  %and58 = and i32 %39, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59.not = icmp eq i32 %and58, 0
  br i1 %tobool59.not, label %if.then60, label %land.lhs.true56.if.end71_crit_edge

land.lhs.true56.if.end71_crit_edge:               ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end71

if.then60:                                        ; preds = %land.lhs.true56
  %sta_table_lock = getelementptr inbounds %struct.ap_data, ptr %3, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %sta_table_lock) #12
  %addr.i = getelementptr i8, ptr %t, i32 -244
  %arrayidx.i = getelementptr i8, ptr %t, i32 -239
  %40 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx.i, align 1
  %idxprom.i = zext i8 %41 to i32
  %arrayidx1.i = getelementptr %struct.ap_data, ptr %3, i32 0, i32 10, i32 %idxprom.i
  %42 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx1.i, align 4
  %cmp.i = icmp eq ptr %43, null
  br i1 %cmp.i, label %if.then60.ap_sta_hash_del.exit_crit_edge, label %if.end.i

if.then60.ap_sta_hash_del.exit_crit_edge:         ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #14
  br label %ap_sta_hash_del.exit

if.end.i:                                         ; preds = %if.then60
  %addr2.i = getelementptr inbounds %struct.sta_info, ptr %43, i32 0, i32 4
  %44 = ptrtoint ptr %addr2.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %addr2.i, align 4
  %46 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %addr.i, align 4
  %xor.i.i = xor i32 %47, %45
  %add.ptr.i.i = getelementptr %struct.sta_info, ptr %43, i32 0, i32 4, i32 4
  %48 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %add.ptr.i.i, align 2
  %add.ptr1.i.i = getelementptr i8, ptr %t, i32 -240
  %50 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %add.ptr1.i.i, align 2
  %xor37.i.i = xor i16 %51, %49
  %xor3.i.i = zext i16 %xor37.i.i to i32
  %or.i.i = or i32 %xor.i.i, %xor3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i, label %if.then5.i, label %if.end.i.while.cond.i_crit_edge

if.end.i.while.cond.i_crit_edge:                  ; preds = %if.end.i
  br label %while.cond.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %hnext.i = getelementptr inbounds %struct.sta_info, ptr %43, i32 0, i32 1
  %52 = ptrtoint ptr %hnext.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %hnext.i, align 4
  %54 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %53, ptr %arrayidx1.i, align 4
  br label %ap_sta_hash_del.exit

while.cond.i:                                     ; preds = %land.rhs.i.while.cond.i_crit_edge, %if.end.i.while.cond.i_crit_edge
  %s.0.i = phi ptr [ %56, %land.rhs.i.while.cond.i_crit_edge ], [ %43, %if.end.i.while.cond.i_crit_edge ]
  %hnext12.i = getelementptr inbounds %struct.sta_info, ptr %s.0.i, i32 0, i32 1
  %55 = ptrtoint ptr %hnext12.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %hnext12.i, align 4
  %cmp13.not.i = icmp eq ptr %56, null
  br i1 %cmp13.not.i, label %do.end.i, label %land.rhs.i

land.rhs.i:                                       ; preds = %while.cond.i
  %addr15.i = getelementptr inbounds %struct.sta_info, ptr %56, i32 0, i32 4
  %57 = ptrtoint ptr %addr15.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %addr15.i, align 4
  %xor.i46.i = xor i32 %58, %47
  %add.ptr.i47.i = getelementptr %struct.sta_info, ptr %56, i32 0, i32 4, i32 4
  %59 = ptrtoint ptr %add.ptr.i47.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %add.ptr.i47.i, align 2
  %xor37.i49.i = xor i16 %60, %51
  %xor3.i50.i = zext i16 %xor37.i49.i to i32
  %or.i51.i = or i32 %xor.i46.i, %xor3.i50.i
  %cmp.i52.i = icmp eq i32 %or.i51.i, 0
  br i1 %cmp.i52.i, label %if.then23.i, label %land.rhs.i.while.cond.i_crit_edge

land.rhs.i.while.cond.i_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i

if.then23.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  %hnext12.i.le = getelementptr inbounds %struct.sta_info, ptr %s.0.i, i32 0, i32 1
  %hnext25.i = getelementptr inbounds %struct.sta_info, ptr %56, i32 0, i32 1
  %61 = ptrtoint ptr %hnext25.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %hnext25.i, align 4
  %63 = ptrtoint ptr %hnext12.i.le to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %62, ptr %hnext12.i.le, align 4
  br label %ap_sta_hash_del.exit

do.end.i:                                         ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  %call29.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef %addr.i) #15
  br label %ap_sta_hash_del.exit

ap_sta_hash_del.exit:                             ; preds = %do.end.i, %if.then23.i, %if.then5.i, %if.then60.ap_sta_hash_del.exit_crit_edge
  %call.i.i272 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %add.ptr) #12
  br i1 %call.i.i272, label %if.end.i.i, label %ap_sta_hash_del.exit.list_del.exit_crit_edge

ap_sta_hash_del.exit.list_del.exit_crit_edge:     ; preds = %ap_sta_hash_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %ap_sta_hash_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr i8, ptr %t, i32 -260
  %64 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %prev.i.i, align 4
  %66 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %add.ptr, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %65, ptr %prev1.i.i.i, align 4
  %69 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr %67, ptr %65, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %ap_sta_hash_del.exit.list_del.exit_crit_edge
  %70 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr inttoptr (i32 256 to ptr), ptr %add.ptr, align 4
  %prev.i = getelementptr i8, ptr %t, i32 -260
  %71 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %sta_table_lock) #12
  br label %if.end71.sink.split

if.end71.sink.split:                              ; preds = %list_del.exit, %if.end53.if.end71.sink.split_crit_edge
  %.sink285 = phi i32 [ -4, %list_del.exit ], [ -3, %if.end53.if.end71.sink.split_crit_edge ]
  %72 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %flags, align 4
  %and69 = and i32 %73, %.sink285
  store i32 %and69, ptr %flags, align 4
  br label %if.end71

if.end71:                                         ; preds = %if.end71.sink.split, %land.lhs.true56.if.end71_crit_edge, %if.end53.if.end71_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool72.not = icmp eq i32 %and, 0
  br i1 %tobool72.not, label %if.end71.if.end81_crit_edge, label %land.lhs.true73

if.end71.if.end81_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end81

land.lhs.true73:                                  ; preds = %if.end71
  %74 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %flags, align 4
  %and75 = and i32 %75, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %tobool76.not = icmp eq i32 %and75, 0
  br i1 %tobool76.not, label %land.lhs.true77, label %land.lhs.true73.if.end81_crit_edge

land.lhs.true73.if.end81_crit_edge:               ; preds = %land.lhs.true73
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end81

land.lhs.true77:                                  ; preds = %land.lhs.true73
  %76 = ptrtoint ptr %ap49 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %ap49, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool79.not = icmp eq i32 %77, 0
  br i1 %tobool79.not, label %if.then80, label %land.lhs.true77.if.end81_crit_edge

land.lhs.true77.if.end81_crit_edge:               ; preds = %land.lhs.true77
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end81

if.then80:                                        ; preds = %land.lhs.true77
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 5
  %78 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dev, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %wrqu.i) #12
  %80 = getelementptr inbounds i8, ptr %wrqu.i, i32 8
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_storeN_noabort(i32 %81, i32 8)
  store i64 0, ptr %80, align 4
  %sa_data.i = getelementptr inbounds %struct.sockaddr, ptr %wrqu.i, i32 0, i32 1
  %addr.i273 = getelementptr i8, ptr %t, i32 -244
  %82 = call ptr @memcpy(ptr %sa_data.i, ptr %addr.i273, i32 6)
  %83 = ptrtoint ptr %wrqu.i to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 1, ptr %wrqu.i, align 4
  call void @wireless_send_event(ptr noundef %79, i32 noundef 35844, ptr noundef nonnull %wrqu.i, ptr noundef null) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %wrqu.i) #12
  br label %if.end81

if.end81:                                         ; preds = %if.then80, %land.lhs.true77.if.end81_crit_edge, %land.lhs.true73.if.end81_crit_edge, %if.end71.if.end81_crit_edge
  %84 = ptrtoint ptr %timeout_next54 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %timeout_next54, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %85)
  %cmp83 = icmp eq i32 %85, 2
  br i1 %cmp83, label %land.lhs.true84, label %if.end81.if.end95_crit_edge

if.end81.if.end95_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end95

land.lhs.true84:                                  ; preds = %if.end81
  %aid = getelementptr i8, ptr %t, i32 -238
  %86 = ptrtoint ptr %aid to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %aid, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %87)
  %cmp85.not = icmp eq i16 %87, 0
  br i1 %cmp85.not, label %land.lhs.true84.if.end95_crit_edge, label %land.lhs.true87

land.lhs.true84.if.end95_crit_edge:               ; preds = %land.lhs.true84
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end95

land.lhs.true87:                                  ; preds = %land.lhs.true84
  %tx_buf = getelementptr i8, ptr %t, i32 -164
  %88 = ptrtoint ptr %tx_buf to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %tx_buf, align 4
  %cmp.i274.not = icmp eq ptr %89, %tx_buf
  br i1 %cmp.i274.not, label %land.lhs.true87.if.end95_crit_edge, label %if.then90

land.lhs.true87.if.end95_crit_edge:               ; preds = %land.lhs.true87
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end95

if.then90:                                        ; preds = %land.lhs.true87
  %func.i = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 92
  %90 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %func.i, align 4
  %set_tim.i = getelementptr inbounds %struct.prism2_helper_functions, ptr %91, i32 0, i32 15
  %92 = ptrtoint ptr %set_tim.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %set_tim.i, align 4
  %tobool.not.i = icmp eq ptr %93, null
  br i1 %tobool.not.i, label %if.then90.hostap_set_tim.exit_crit_edge, label %if.then.i

if.then90.hostap_set_tim.exit_crit_edge:          ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #14
  br label %hostap_set_tim.exit

if.then.i:                                        ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #14
  %conv92 = zext i16 %87 to i32
  %dev.i = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 5
  %94 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %dev.i, align 4
  %call.i = call i32 %93(ptr noundef %95, i32 noundef %conv92, i32 noundef 0) #12
  br label %hostap_set_tim.exit

hostap_set_tim.exit:                              ; preds = %if.then.i, %if.then90.hostap_set_tim.exit_crit_edge
  %96 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %flags, align 4
  %and94 = and i32 %97, -9
  store i32 %and94, ptr %flags, align 4
  br label %if.end95

if.end95:                                         ; preds = %hostap_set_tim.exit, %land.lhs.true87.if.end95_crit_edge, %land.lhs.true84.if.end95_crit_edge, %if.end81.if.end95_crit_edge
  %98 = ptrtoint ptr %ap49 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %ap49, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %tobool97.not = icmp eq i32 %99, 0
  br i1 %tobool97.not, label %if.else114, label %if.then98

if.then98:                                        ; preds = %if.end95
  %autom_ap_wds = getelementptr inbounds %struct.ap_data, ptr %3, i32 0, i32 14
  %100 = ptrtoint ptr %autom_ap_wds to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %autom_ap_wds, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %tobool99.not = icmp eq i32 %101, 0
  br i1 %tobool99.not, label %if.then98.if.end153_crit_edge, label %do.end104

if.then98.if.end153_crit_edge:                    ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end153

do.end104:                                        ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #14
  %dev106 = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 5
  %102 = ptrtoint ptr %dev106 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %dev106, align 4
  %addr = getelementptr i8, ptr %t, i32 -244
  %call108 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.253, ptr noundef %103, ptr noundef %addr) #15
  call void @hostap_wds_link_oper(ptr noundef nonnull %1, ptr noundef %addr, i32 noundef 1)
  br label %if.end153

if.else114:                                       ; preds = %if.end95
  %104 = ptrtoint ptr %timeout_next54 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %timeout_next54, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %cmp116 = icmp eq i32 %105, 0
  br i1 %cmp116, label %if.then118, label %if.else123

if.then118:                                       ; preds = %if.else114
  call void @__sanitizer_cov_trace_pc() #14
  %106 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %flags, align 4
  %or = or i32 %107, 64
  store i32 %or, ptr %flags, align 4
  %dev120 = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 5
  %108 = ptrtoint ptr %dev120 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %dev120, align 4
  %addr121 = getelementptr i8, ptr %t, i32 -244
  %tx_callback_poll = getelementptr inbounds %struct.ap_data, ptr %3, i32 0, i32 25
  %110 = ptrtoint ptr %tx_callback_poll to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %tx_callback_poll, align 4
  call fastcc void @prism2_send_mgmt(ptr noundef %109, i16 noundef zeroext 8, ptr noundef null, i32 noundef 0, ptr noundef %addr121, i16 noundef zeroext %111)
  br label %if.end153

if.else123:                                       ; preds = %if.else114
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %105)
  %cmp125 = icmp eq i32 %105, 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %resp) #12
  %dev132 = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 5
  %112 = ptrtoint ptr %dev132 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %dev132, align 4
  %cond = select i1 %cmp125, ptr @.str.258, ptr @.str.259
  %addr136 = getelementptr i8, ptr %t, i32 -244
  %114 = ptrtoint ptr %last_rx to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %last_rx, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %116 = load volatile i32, ptr @jiffies, align 128
  %call139 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.256, ptr noundef %113, ptr noundef nonnull %cond, ptr noundef %addr136, i32 noundef %115, i32 noundef %116) #15
  %conv144 = select i1 %cmp125, i16 512, i16 1024
  %117 = ptrtoint ptr %resp to i32
  call void @__asan_store2_noabort(i32 %117)
  store i16 %conv144, ptr %resp, align 2
  %118 = ptrtoint ptr %dev132 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %dev132, align 4
  %conv149 = select i1 %cmp125, i16 192, i16 160
  call fastcc void @prism2_send_mgmt(ptr noundef %119, i16 noundef zeroext %conv149, ptr noundef nonnull %resp, i32 noundef 2, ptr noundef %addr136, i16 noundef zeroext 0)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %resp) #12
  br label %if.end153

if.end153:                                        ; preds = %if.else123, %if.then118, %do.end104, %if.then98.if.end153_crit_edge
  %120 = ptrtoint ptr %timeout_next54 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %timeout_next54, align 4
  %122 = zext i32 %121 to i64
  call void @__sanitizer_cov_trace_switch(i64 %122, ptr @__sancov_gen_cov_switch_values.275)
  switch i32 %121, label %if.else186 [
    i32 2, label %if.then157
    i32 0, label %if.end153.if.end191_crit_edge
  ]

if.end153.if.end191_crit_edge:                    ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end191

if.then157:                                       ; preds = %if.end153
  %123 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %flags, align 4
  %and159 = and i32 %124, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and159)
  %tobool160.not = icmp eq i32 %and159, 0
  br i1 %tobool160.not, label %if.else175, label %do.end165

do.end165:                                        ; preds = %if.then157
  call void @__sanitizer_cov_trace_pc() #14
  %dev167 = getelementptr inbounds %struct.local_info, ptr %1, i32 0, i32 5
  %125 = ptrtoint ptr %dev167 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %dev167, align 4
  %addr170 = getelementptr i8, ptr %t, i32 -244
  %call172 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.261, ptr noundef %126, ptr noundef %addr170) #15
  br label %cleanup

if.else175:                                       ; preds = %if.then157
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @ap_free_sta(ptr noundef nonnull %3, ptr noundef nonnull %add.ptr)
  br label %cleanup

if.else186:                                       ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end191

if.end191:                                        ; preds = %if.else186, %if.end153.if.end191_crit_edge
  %.sink = phi i32 [ 2, %if.else186 ], [ 1, %if.end153.if.end191_crit_edge ]
  %127 = ptrtoint ptr %timeout_next54 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %.sink, ptr %timeout_next54, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %128 = load volatile i32, ptr @jiffies, align 128
  %add188 = add i32 %128, 100
  %expires190 = getelementptr inbounds %struct.timer_list, ptr %t, i32 0, i32 1
  %129 = ptrtoint ptr %expires190 to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %add188, ptr %expires190, align 4
  call void @add_timer(ptr noundef %t) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end191, %if.else175, %do.end165, %if.then46, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 254)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 254)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { argmemonly nofree nounwind readonly willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { nobuiltin nounwind }
attributes #18 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !18, !20, !22, !23, !24, !25, !26, !28, !29, !30, !31, !33, !34, !35, !37, !38, !39, !40, !42, !43, !45, !46, !48, !49, !50, !52, !53, !55, !56, !58, !59, !61, !63, !65, !67, !68, !69, !70, !72, !74, !75, !76, !77, !79, !80, !81, !82, !84, !85, !86, !87, !89, !90, !91, !93, !94, !95, !96, !98, !99, !100, !102, !103, !104, !106, !107, !108, !110, !112, !114, !116, !118, !119, !120, !121, !122, !123, !124, !125, !126, !128, !129, !130, !131, !133, !135, !137, !139, !141, !143, !144, !145, !146, !148, !150, !152, !154, !156, !157, !158, !160, !161, !162, !163, !165, !167, !169, !170, !171, !173, !174, !175, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !227, !228, !229, !231, !232, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !268, !269, !270, !271, !272, !274, !275, !276, !277, !279, !280, !281, !283, !284, !285, !287, !288, !289, !291, !292, !293, !295, !296, !297, !299, !300, !301, !303, !304, !305, !307, !308, !309, !311, !312, !313, !315, !316, !317, !319, !320, !321, !322, !324, !325, !326, !327, !329, !330, !331, !332, !334, !335, !336, !338, !339, !340, !342, !343, !344, !346, !347, !348, !350, !351, !352, !353, !355, !356, !357, !359, !360, !361, !363, !364, !365, !367, !368, !369, !371, !372, !373, !374, !376, !378, !380, !382, !384, !385, !386, !388, !389, !391, !392, !393, !395, !397, !399, !401, !403, !404, !405, !406, !408, !409, !410, !412, !413, !414, !416, !417, !418, !419, !421, !423, !425, !427, !429, !430, !431, !433, !435, !437, !439, !441, !443, !445, !447, !449, !450, !451, !453, !454, !455, !456, !458, !460, !461, !462, !463, !465, !466, !467, !468, !470, !471, !472, !474, !475, !476, !478, !480, !481, !482, !483, !485, !486, !487, !488, !490, !491, !492, !493, !495, !496, !497, !499, !500, !502, !503, !505, !506, !507, !508, !510, !511, !512, !514, !515, !516, !517, !518, !520, !521}
!llvm.module.flags = !{!522, !523, !524, !525, !526, !527, !528, !529}
!llvm.ident = !{!530}

!0 = !{ptr @__param_other_ap_policy, !1, !"__param_other_ap_policy", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 36, i32 1}
!2 = !{ptr @__UNIQUE_ID_other_ap_policytype339, !1, !"__UNIQUE_ID_other_ap_policytype339", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_other_ap_policy340, !4, !"__UNIQUE_ID_other_ap_policy340", i1 false, i1 false}
!4 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 37, i32 1}
!5 = !{ptr @__param_ap_max_inactivity, !6, !"__param_ap_max_inactivity", i1 false, i1 false}
!6 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 41, i32 1}
!7 = !{ptr @__UNIQUE_ID_ap_max_inactivitytype341, !6, !"__UNIQUE_ID_ap_max_inactivitytype341", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_ap_max_inactivity342, !9, !"__UNIQUE_ID_ap_max_inactivity342", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 42, i32 1}
!10 = !{ptr @__param_ap_bridge_packets, !11, !"__param_ap_bridge_packets", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 46, i32 1}
!12 = !{ptr @__UNIQUE_ID_ap_bridge_packetstype343, !11, !"__UNIQUE_ID_ap_bridge_packetstype343", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_ap_bridge_packets344, !14, !"__UNIQUE_ID_ap_bridge_packets344", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 47, i32 1}
!15 = !{ptr @__param_autom_ap_wds, !16, !"__param_autom_ap_wds", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 51, i32 1}
!17 = !{ptr @__UNIQUE_ID_autom_ap_wdstype345, !16, !"__UNIQUE_ID_autom_ap_wdstype345", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_autom_ap_wds346, !19, !"__UNIQUE_ID_autom_ap_wds346", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 52, i32 1}
!20 = !{ptr @.str, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 299, i32 2}
!22 = !{ptr @.str.1, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @hostap_deauth_all_stas._entry, !21, !"_entry", i1 false, i1 false}
!25 = !{ptr @hostap_deauth_all_stas._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.3, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 589, i32 3}
!28 = !{ptr @.str.4, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @hostap_check_sta_fw_version._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @hostap_check_sta_fw_version._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.6, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 596, i32 3}
!33 = !{ptr @hostap_check_sta_fw_version._entry.5, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @hostap_check_sta_fw_version._entry_ptr.7, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.8, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 797, i32 3}
!37 = !{ptr @.str.9, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @hostap_init_data._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @hostap_init_data._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @hostap_init_data.__key, !41, !"__key", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 809, i32 2}
!42 = !{ptr @.str.10, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @hostap_init_data.__key.11, !44, !"__key", i1 false, i1 false}
!44 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 813, i32 2}
!45 = !{ptr @.str.12, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.14, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 818, i32 3}
!48 = !{ptr @hostap_init_data._entry.13, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @hostap_init_data._entry_ptr.15, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @hostap_init_data.__key.16, !51, !"__key", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 821, i32 2}
!52 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @hostap_init_data._entry.18, !54, !"_entry", i1 false, i1 false}
!54 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 831, i32 3}
!55 = !{ptr @hostap_init_data._entry_ptr.19, !54, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @hostap_init_data.__key.20, !57, !"__key", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 834, i32 2}
!58 = !{ptr @.str.21, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.22, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 851, i32 26}
!61 = !{ptr @.str.23, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 855, i32 2}
!63 = !{ptr @.str.24, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 857, i32 2}
!65 = !{ptr @.str.25, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 868, i32 3}
!67 = !{ptr @.str.26, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @hostap_free_data._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @hostap_free_data._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.27, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 2463, i32 17}
!72 = !{ptr @.str.28, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 2629, i32 3}
!74 = !{ptr @.str.29, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @prism2_hostapd._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @prism2_hostapd._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.30, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 2762, i32 3}
!79 = !{ptr @.str.31, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @hostap_handle_sta_tx._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @hostap_handle_sta_tx._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.32, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 2836, i32 3}
!84 = !{ptr @.str.33, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @hostap_handle_sta_tx_exc._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @hostap_handle_sta_tx_exc._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.35, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 2865, i32 4}
!89 = !{ptr @hostap_handle_sta_tx_exc._entry.34, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @hostap_handle_sta_tx_exc._entry_ptr.36, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.37, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 2961, i32 5}
!93 = !{ptr @.str.38, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @hostap_handle_sta_rx._entry, !92, !"_entry", i1 false, i1 false}
!95 = !{ptr @hostap_handle_sta_rx._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.40, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 2977, i32 5}
!98 = !{ptr @hostap_handle_sta_rx._entry.39, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @hostap_handle_sta_rx._entry_ptr.41, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.43, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 2997, i32 4}
!102 = !{ptr @hostap_handle_sta_rx._entry.42, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @hostap_handle_sta_rx._entry_ptr.44, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.46, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 3015, i32 4}
!106 = !{ptr @hostap_handle_sta_rx._entry.45, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @hostap_handle_sta_rx._entry_ptr.47, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @__ksymtab_hostap_init_data, !109, !"__ksymtab_hostap_init_data", i1 false, i1 false}
!109 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 3271, i32 1}
!110 = !{ptr @__ksymtab_hostap_init_ap_proc, !111, !"__ksymtab_hostap_init_ap_proc", i1 false, i1 false}
!111 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 3272, i32 1}
!112 = !{ptr @__ksymtab_hostap_free_data, !113, !"__ksymtab_hostap_free_data", i1 false, i1 false}
!113 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 3273, i32 1}
!114 = !{ptr @__ksymtab_hostap_check_sta_fw_version, !115, !"__ksymtab_hostap_check_sta_fw_version", i1 false, i1 false}
!115 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 3274, i32 1}
!116 = !{ptr @__ksymtab_hostap_handle_sta_tx_exc, !117, !"__ksymtab_hostap_handle_sta_tx_exc", i1 false, i1 false}
!117 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 3275, i32 1}
!118 = !{ptr @__param_str_other_ap_policy, !1, !"__param_str_other_ap_policy", i1 false, i1 false}
!119 = !{ptr @__param_arr_other_ap_policy, !1, !"__param_arr_other_ap_policy", i1 false, i1 false}
!120 = !{ptr @__param_str_ap_max_inactivity, !6, !"__param_str_ap_max_inactivity", i1 false, i1 false}
!121 = !{ptr @__param_arr_ap_max_inactivity, !6, !"__param_arr_ap_max_inactivity", i1 false, i1 false}
!122 = !{ptr @__param_str_ap_bridge_packets, !11, !"__param_str_ap_bridge_packets", i1 false, i1 false}
!123 = !{ptr @__param_arr_ap_bridge_packets, !11, !"__param_arr_ap_bridge_packets", i1 false, i1 false}
!124 = !{ptr @__param_str_autom_ap_wds, !16, !"__param_str_autom_ap_wds", i1 false, i1 false}
!125 = !{ptr @__param_arr_autom_ap_wds, !16, !"__param_arr_autom_ap_wds", i1 false, i1 false}
!126 = !{ptr @.str.48, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 108, i32 3}
!128 = !{ptr @.str.49, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @ap_sta_hash_del._entry, !127, !"_entry", i1 false, i1 false}
!130 = !{ptr @ap_sta_hash_del._entry_ptr, !127, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.50, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 119, i32 17}
!133 = !{ptr @other_ap_policy, !134, !"other_ap_policy", i1 false, i1 false}
!134 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 34, i32 12}
!135 = !{ptr @ap_bridge_packets, !136, !"ap_bridge_packets", i1 false, i1 false}
!136 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 45, i32 12}
!137 = !{ptr @ap_max_inactivity, !138, !"ap_max_inactivity", i1 false, i1 false}
!138 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 39, i32 12}
!139 = !{ptr @autom_ap_wds, !140, !"autom_ap_wds", i1 false, i1 false}
!140 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 50, i32 12}
!141 = !{ptr @.str.51, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 650, i32 3}
!143 = !{ptr @.str.52, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @hostap_ap_tx_cb_auth._entry, !142, !"_entry", i1 false, i1 false}
!145 = !{ptr @hostap_ap_tx_cb_auth._entry_ptr, !142, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.53, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 662, i32 9}
!148 = !{ptr @.str.54, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 673, i32 9}
!150 = !{ptr @.str.55, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 680, i32 9}
!152 = !{ptr @.str.56, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 684, i32 9}
!154 = !{ptr @.str.58, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 690, i32 3}
!156 = !{ptr @hostap_ap_tx_cb_auth._entry.57, !155, !"_entry", i1 false, i1 false}
!157 = !{ptr @hostap_ap_tx_cb_auth._entry_ptr.59, !155, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.60, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 719, i32 3}
!160 = !{ptr @.str.61, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @hostap_ap_tx_cb_assoc._entry, !159, !"_entry", i1 false, i1 false}
!162 = !{ptr @hostap_ap_tx_cb_assoc._entry_ptr, !159, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.62, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 747, i32 9}
!165 = !{ptr @.str.63, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 751, i32 9}
!167 = !{ptr @.str.65, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 757, i32 3}
!169 = !{ptr @hostap_ap_tx_cb_assoc._entry.64, !168, !"_entry", i1 false, i1 false}
!170 = !{ptr @hostap_ap_tx_cb_assoc._entry_ptr.66, !168, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.67, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 781, i32 3}
!173 = !{ptr @.str.68, !172, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @hostap_ap_tx_cb_poll._entry, !172, !"_entry", i1 false, i1 false}
!175 = !{ptr @hostap_ap_tx_cb_poll._entry_ptr, !172, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.69, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 74, i32 16}
!178 = !{ptr @.str.70, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 75, i32 16}
!180 = !{ptr @.str.71, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 76, i32 16}
!182 = !{ptr @.str.72, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 77, i32 16}
!184 = !{ptr @.str.73, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 78, i32 16}
!186 = !{ptr @.str.74, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 79, i32 16}
!188 = !{ptr @.str.75, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 80, i32 16}
!190 = !{ptr @.str.76, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 81, i32 16}
!192 = !{ptr @ap_control_proc_seqops, !193, !"ap_control_proc_seqops", i1 false, i1 false}
!193 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 372, i32 36}
!194 = !{ptr @.str.77, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 330, i32 17}
!196 = !{ptr @.str.78, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 333, i32 17}
!198 = !{ptr @.str.79, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 336, i32 17}
!200 = !{ptr @.str.80, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 339, i32 17}
!202 = !{ptr @.str.81, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 342, i32 17}
!204 = !{ptr @.str.82, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 343, i32 17}
!206 = !{ptr @.str.83, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 344, i32 15}
!208 = !{ptr @.str.84, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 349, i32 16}
!210 = !{ptr @prism2_ap_proc_seqops, !211, !"prism2_ap_proc_seqops", i1 false, i1 false}
!211 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 574, i32 36}
!212 = !{ptr @.str.85, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 525, i32 17}
!214 = !{ptr @.str.86, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 532, i32 16}
!216 = !{ptr @.str.87, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 541, i32 18}
!218 = !{ptr @.str.88, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 546, i32 15}
!220 = !{ptr @.str.89, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 548, i32 15}
!222 = !{ptr @.str.90, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 550, i32 15}
!224 = !{ptr @.str.91, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 941, i32 3}
!226 = !{ptr @.str.92, !225, !"<string literal>", i1 false, i1 false}
!227 = !{ptr @prism2_send_mgmt._entry, !225, !"_entry", i1 false, i1 false}
!228 = !{ptr @prism2_send_mgmt._entry_ptr, !225, !"_entry_ptr", i1 false, i1 false}
!229 = !{ptr @.str.94, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 948, i32 3}
!231 = !{ptr @prism2_send_mgmt._entry.93, !230, !"_entry", i1 false, i1 false}
!232 = !{ptr @prism2_send_mgmt._entry_ptr.95, !230, !"_entry_ptr", i1 false, i1 false}
!233 = !{ptr @.str.96, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 1003, i32 6}
!235 = !{ptr @.str.97, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 1006, i32 16}
!237 = !{ptr @.str.98, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 1006, i32 23}
!239 = !{ptr @.str.99, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 1009, i32 35}
!241 = !{ptr @.str.100, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 1009, i32 45}
!243 = !{ptr @.str.101, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 1010, i32 36}
!245 = !{ptr @.str.102, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 1011, i32 33}
!247 = !{ptr @.str.103, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 1012, i32 34}
!249 = !{ptr @.str.104, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 1013, i32 35}
!251 = !{ptr @.str.105, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 1014, i32 41}
!253 = !{ptr @.str.106, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 1015, i32 43}
!255 = !{ptr @.str.107, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 1020, i32 18}
!257 = !{ptr @.str.108, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 1022, i32 38}
!259 = !{ptr @.str.109, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 1024, i32 6}
!261 = !{ptr @.str.110, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 1047, i32 18}
!263 = !{ptr @.str.111, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 1048, i32 15}
!265 = !{ptr @.str.112, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 1964, i32 3}
!267 = !{ptr @.str.113, !266, !"<string literal>", i1 false, i1 false}
!268 = !{ptr @handle_wds_oper_queue._entry, !266, !"_entry", i1 false, i1 false}
!269 = !{ptr @handle_wds_oper_queue._entry_ptr, !266, !"_entry_ptr", i1 false, i1 false}
!270 = !{ptr @.str.114, !266, !"<string literal>", i1 false, i1 false}
!271 = !{ptr @.str.115, !266, !"<string literal>", i1 false, i1 false}
!272 = !{ptr @.str.116, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 2155, i32 3}
!274 = !{ptr @.str.117, !273, !"<string literal>", i1 false, i1 false}
!275 = !{ptr @handle_ap_item._entry, !273, !"_entry", i1 false, i1 false}
!276 = !{ptr @handle_ap_item._entry_ptr, !273, !"_entry_ptr", i1 false, i1 false}
!277 = !{ptr @.str.119, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 2166, i32 4}
!279 = !{ptr @handle_ap_item._entry.118, !278, !"_entry", i1 false, i1 false}
!280 = !{ptr @handle_ap_item._entry_ptr.120, !278, !"_entry_ptr", i1 false, i1 false}
!281 = !{ptr @.str.122, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 2172, i32 4}
!283 = !{ptr @handle_ap_item._entry.121, !282, !"_entry", i1 false, i1 false}
!284 = !{ptr @handle_ap_item._entry_ptr.123, !282, !"_entry_ptr", i1 false, i1 false}
!285 = !{ptr @.str.125, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 2197, i32 3}
!287 = !{ptr @handle_ap_item._entry.124, !286, !"_entry", i1 false, i1 false}
!288 = !{ptr @handle_ap_item._entry_ptr.126, !286, !"_entry_ptr", i1 false, i1 false}
!289 = !{ptr @.str.128, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 2204, i32 3}
!291 = !{ptr @handle_ap_item._entry.127, !290, !"_entry", i1 false, i1 false}
!292 = !{ptr @handle_ap_item._entry_ptr.129, !290, !"_entry_ptr", i1 false, i1 false}
!293 = !{ptr @.str.131, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 2209, i32 3}
!295 = !{ptr @handle_ap_item._entry.130, !294, !"_entry", i1 false, i1 false}
!296 = !{ptr @handle_ap_item._entry_ptr.132, !294, !"_entry_ptr", i1 false, i1 false}
!297 = !{ptr @.str.134, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 2215, i32 3}
!299 = !{ptr @handle_ap_item._entry.133, !298, !"_entry", i1 false, i1 false}
!300 = !{ptr @handle_ap_item._entry_ptr.135, !298, !"_entry_ptr", i1 false, i1 false}
!301 = !{ptr @.str.137, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 2225, i32 3}
!303 = !{ptr @handle_ap_item._entry.136, !302, !"_entry", i1 false, i1 false}
!304 = !{ptr @handle_ap_item._entry_ptr.138, !302, !"_entry_ptr", i1 false, i1 false}
!305 = !{ptr @.str.140, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 2231, i32 3}
!307 = !{ptr @handle_ap_item._entry.139, !306, !"_entry", i1 false, i1 false}
!308 = !{ptr @handle_ap_item._entry_ptr.141, !306, !"_entry_ptr", i1 false, i1 false}
!309 = !{ptr @.str.143, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 2234, i32 3}
!311 = !{ptr @handle_ap_item._entry.142, !310, !"_entry", i1 false, i1 false}
!312 = !{ptr @handle_ap_item._entry_ptr.144, !310, !"_entry_ptr", i1 false, i1 false}
!313 = !{ptr @.str.146, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 2246, i32 3}
!315 = !{ptr @handle_ap_item._entry.145, !314, !"_entry", i1 false, i1 false}
!316 = !{ptr @handle_ap_item._entry_ptr.147, !314, !"_entry_ptr", i1 false, i1 false}
!317 = !{ptr @.str.148, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 1820, i32 3}
!319 = !{ptr @.str.149, !318, !"<string literal>", i1 false, i1 false}
!320 = !{ptr @ap_handle_dropped_data._entry, !318, !"_entry", i1 false, i1 false}
!321 = !{ptr @ap_handle_dropped_data._entry_ptr, !318, !"_entry_ptr", i1 false, i1 false}
!322 = !{ptr @.str.150, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 1799, i32 2}
!324 = !{ptr @.str.151, !323, !"<string literal>", i1 false, i1 false}
!325 = !{ptr @ap_handle_data_nullfunc._entry, !323, !"_entry", i1 false, i1 false}
!326 = !{ptr @ap_handle_data_nullfunc._entry_ptr, !323, !"_entry_ptr", i1 false, i1 false}
!327 = !{ptr @.str.152, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 1999, i32 3}
!329 = !{ptr @.str.153, !328, !"<string literal>", i1 false, i1 false}
!330 = !{ptr @handle_beacon._entry, !328, !"_entry", i1 false, i1 false}
!331 = !{ptr @handle_beacon._entry_ptr, !328, !"_entry_ptr", i1 false, i1 false}
!332 = !{ptr @.str.155, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 2030, i32 5}
!334 = !{ptr @handle_beacon._entry.154, !333, !"_entry", i1 false, i1 false}
!335 = !{ptr @handle_beacon._entry_ptr.156, !333, !"_entry_ptr", i1 false, i1 false}
!336 = !{ptr @.str.158, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 2054, i32 5}
!338 = !{ptr @handle_beacon._entry.157, !337, !"_entry", i1 false, i1 false}
!339 = !{ptr @handle_beacon._entry_ptr.159, !337, !"_entry_ptr", i1 false, i1 false}
!340 = !{ptr @.str.161, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 2071, i32 5}
!342 = !{ptr @handle_beacon._entry.160, !341, !"_entry", i1 false, i1 false}
!343 = !{ptr @handle_beacon._entry_ptr.162, !341, !"_entry_ptr", i1 false, i1 false}
!344 = !{ptr @.str.164, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 2093, i32 4}
!346 = !{ptr @handle_beacon._entry.163, !345, !"_entry", i1 false, i1 false}
!347 = !{ptr @handle_beacon._entry_ptr.165, !345, !"_entry_ptr", i1 false, i1 false}
!348 = !{ptr @.str.166, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 1877, i32 3}
!350 = !{ptr @.str.167, !349, !"<string literal>", i1 false, i1 false}
!351 = !{ptr @handle_pspoll._entry, !349, !"_entry", i1 false, i1 false}
!352 = !{ptr @handle_pspoll._entry_ptr, !349, !"_entry_ptr", i1 false, i1 false}
!353 = !{ptr @.str.169, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 1885, i32 3}
!355 = !{ptr @handle_pspoll._entry.168, !354, !"_entry", i1 false, i1 false}
!356 = !{ptr @handle_pspoll._entry_ptr.170, !354, !"_entry_ptr", i1 false, i1 false}
!357 = !{ptr @.str.172, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 1890, i32 3}
!359 = !{ptr @handle_pspoll._entry.171, !358, !"_entry", i1 false, i1 false}
!360 = !{ptr @handle_pspoll._entry_ptr.173, !358, !"_entry_ptr", i1 false, i1 false}
!361 = !{ptr @.str.175, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 1902, i32 3}
!363 = !{ptr @handle_pspoll._entry.174, !362, !"_entry", i1 false, i1 false}
!364 = !{ptr @handle_pspoll._entry_ptr.176, !362, !"_entry_ptr", i1 false, i1 false}
!365 = !{ptr @.str.178, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 1906, i32 3}
!367 = !{ptr @handle_pspoll._entry.177, !366, !"_entry", i1 false, i1 false}
!368 = !{ptr @handle_pspoll._entry_ptr.179, !366, !"_entry_ptr", i1 false, i1 false}
!369 = !{ptr @.str.180, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 1513, i32 3}
!371 = !{ptr @.str.181, !370, !"<string literal>", i1 false, i1 false}
!372 = !{ptr @handle_assoc._entry, !370, !"_entry", i1 false, i1 false}
!373 = !{ptr @handle_assoc._entry_ptr, !370, !"_entry_ptr", i1 false, i1 false}
!374 = distinct !{null, !375, !"<string literal>", i1 false, i1 false}
!375 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 1523, i32 9}
!376 = distinct !{null, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 1554, i32 11}
!378 = distinct !{null, !379, !"<string literal>", i1 false, i1 false}
!379 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 1561, i32 11}
!380 = distinct !{null, !381, !"<string literal>", i1 false, i1 false}
!381 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 1577, i32 11}
!382 = !{ptr @.str.187, !383, !"<string literal>", i1 false, i1 false}
!383 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 1592, i32 4}
!384 = !{ptr @handle_assoc._entry.186, !383, !"_entry", i1 false, i1 false}
!385 = !{ptr @handle_assoc._entry_ptr.188, !383, !"_entry_ptr", i1 false, i1 false}
!386 = !{ptr @handle_assoc._entry.189, !387, !"_entry", i1 false, i1 false}
!387 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 1596, i32 5}
!388 = !{ptr @handle_assoc._entry_ptr.190, !387, !"_entry_ptr", i1 false, i1 false}
!389 = !{ptr @.str.192, !390, !"<string literal>", i1 false, i1 false}
!390 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 1599, i32 4}
!391 = !{ptr @handle_assoc._entry.191, !390, !"_entry", i1 false, i1 false}
!392 = !{ptr @handle_assoc._entry_ptr.193, !390, !"_entry_ptr", i1 false, i1 false}
!393 = distinct !{null, !394, !"<string literal>", i1 false, i1 false}
!394 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 1602, i32 9}
!395 = distinct !{null, !396, !"<string literal>", i1 false, i1 false}
!396 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 1609, i32 9}
!397 = distinct !{null, !398, !"<string literal>", i1 false, i1 false}
!398 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 1619, i32 10}
!399 = distinct !{null, !400, !"<string literal>", i1 false, i1 false}
!400 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 1623, i32 10}
!401 = !{ptr @.str.198, !402, !"<string literal>", i1 false, i1 false}
!402 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 1761, i32 3}
!403 = !{ptr @.str.199, !402, !"<string literal>", i1 false, i1 false}
!404 = !{ptr @handle_disassoc._entry, !402, !"_entry", i1 false, i1 false}
!405 = !{ptr @handle_disassoc._entry_ptr, !402, !"_entry_ptr", i1 false, i1 false}
!406 = !{ptr @.str.201, !407, !"<string literal>", i1 false, i1 false}
!407 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 1768, i32 2}
!408 = !{ptr @handle_disassoc._entry.200, !407, !"_entry", i1 false, i1 false}
!409 = !{ptr @handle_disassoc._entry_ptr.202, !407, !"_entry_ptr", i1 false, i1 false}
!410 = !{ptr @.str.204, !411, !"<string literal>", i1 false, i1 false}
!411 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 1781, i32 3}
!412 = !{ptr @handle_disassoc._entry.203, !411, !"_entry", i1 false, i1 false}
!413 = !{ptr @handle_disassoc._entry_ptr.205, !411, !"_entry_ptr", i1 false, i1 false}
!414 = !{ptr @.str.206, !415, !"<string literal>", i1 false, i1 false}
!415 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 1304, i32 3}
!416 = !{ptr @.str.207, !415, !"<string literal>", i1 false, i1 false}
!417 = !{ptr @handle_authen._entry, !415, !"_entry", i1 false, i1 false}
!418 = !{ptr @handle_authen._entry_ptr, !415, !"_entry_ptr", i1 false, i1 false}
!419 = !{ptr @.str.208, !420, !"<string literal>", i1 false, i1 false}
!420 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 1334, i32 9}
!421 = !{ptr @.str.209, !422, !"<string literal>", i1 false, i1 false}
!422 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 1344, i32 9}
!423 = !{ptr @.str.210, !424, !"<string literal>", i1 false, i1 false}
!424 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 1353, i32 11}
!425 = !{ptr @.str.211, !426, !"<string literal>", i1 false, i1 false}
!426 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 1358, i32 11}
!427 = !{ptr @.str.213, !428, !"<string literal>", i1 false, i1 false}
!428 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 1369, i32 4}
!429 = !{ptr @handle_authen._entry.212, !428, !"_entry", i1 false, i1 false}
!430 = !{ptr @handle_authen._entry_ptr.214, !428, !"_entry_ptr", i1 false, i1 false}
!431 = !{ptr @.str.215, !432, !"<string literal>", i1 false, i1 false}
!432 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 1376, i32 10}
!433 = !{ptr @.str.216, !434, !"<string literal>", i1 false, i1 false}
!434 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 1388, i32 9}
!435 = !{ptr @.str.217, !436, !"<string literal>", i1 false, i1 false}
!436 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 1394, i32 9}
!437 = !{ptr @.str.218, !438, !"<string literal>", i1 false, i1 false}
!438 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 1398, i32 10}
!439 = !{ptr @.str.219, !440, !"<string literal>", i1 false, i1 false}
!440 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 1405, i32 10}
!441 = !{ptr @.str.220, !442, !"<string literal>", i1 false, i1 false}
!442 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 1413, i32 9}
!443 = !{ptr @.str.221, !444, !"<string literal>", i1 false, i1 false}
!444 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 1438, i32 11}
!445 = !{ptr @.str.222, !446, !"<string literal>", i1 false, i1 false}
!446 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 1443, i32 10}
!447 = !{ptr @.str.224, !448, !"<string literal>", i1 false, i1 false}
!448 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 1486, i32 3}
!449 = !{ptr @handle_authen._entry.223, !448, !"_entry", i1 false, i1 false}
!450 = !{ptr @handle_authen._entry_ptr.225, !448, !"_entry_ptr", i1 false, i1 false}
!451 = !{ptr @.str.226, !452, !"<string literal>", i1 false, i1 false}
!452 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 1254, i32 3}
!453 = !{ptr @.str.227, !452, !"<string literal>", i1 false, i1 false}
!454 = !{ptr @ap_auth_make_challenge._entry, !452, !"_entry", i1 false, i1 false}
!455 = !{ptr @ap_auth_make_challenge._entry_ptr, !452, !"_entry_ptr", i1 false, i1 false}
!456 = !{ptr @.str.228, !457, !"<string literal>", i1 false, i1 false}
!457 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 1210, i32 38}
!458 = !{ptr @.str.229, !459, !"<string literal>", i1 false, i1 false}
!459 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 1227, i32 3}
!460 = !{ptr @.str.230, !459, !"<string literal>", i1 false, i1 false}
!461 = !{ptr @ap_crypt_init._entry, !459, !"_entry", i1 false, i1 false}
!462 = !{ptr @ap_crypt_init._entry_ptr, !459, !"_entry_ptr", i1 false, i1 false}
!463 = !{ptr @.str.231, !464, !"<string literal>", i1 false, i1 false}
!464 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 1719, i32 3}
!465 = !{ptr @.str.232, !464, !"<string literal>", i1 false, i1 false}
!466 = !{ptr @handle_deauth._entry, !464, !"_entry", i1 false, i1 false}
!467 = !{ptr @handle_deauth._entry_ptr, !464, !"_entry_ptr", i1 false, i1 false}
!468 = !{ptr @.str.234, !469, !"<string literal>", i1 false, i1 false}
!469 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 1726, i32 2}
!470 = !{ptr @handle_deauth._entry.233, !469, !"_entry", i1 false, i1 false}
!471 = !{ptr @handle_deauth._entry_ptr.235, !469, !"_entry_ptr", i1 false, i1 false}
!472 = !{ptr @.str.237, !473, !"<string literal>", i1 false, i1 false}
!473 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 1739, i32 3}
!474 = !{ptr @handle_deauth._entry.236, !473, !"_entry", i1 false, i1 false}
!475 = !{ptr @handle_deauth._entry_ptr.238, !473, !"_entry_ptr", i1 false, i1 false}
!476 = !{ptr @freq_list, !477, !"freq_list", i1 false, i1 false}
!477 = !{!"../drivers/net/wireless/intersil/hostap/hostap.h", i32 11, i32 34}
!478 = !{ptr @.str.239, !479, !"<string literal>", i1 false, i1 false}
!479 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 2670, i32 4}
!480 = !{ptr @.str.240, !479, !"<string literal>", i1 false, i1 false}
!481 = !{ptr @ap_update_sta_tx_rate._entry, !479, !"_entry", i1 false, i1 false}
!482 = !{ptr @ap_update_sta_tx_rate._entry_ptr, !479, !"_entry_ptr", i1 false, i1 false}
!483 = !{ptr @.str.241, !484, !"<string literal>", i1 false, i1 false}
!484 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 2300, i32 3}
!485 = !{ptr @.str.242, !484, !"<string literal>", i1 false, i1 false}
!486 = !{ptr @schedule_packet_send._entry, !484, !"_entry", i1 false, i1 false}
!487 = !{ptr @schedule_packet_send._entry_ptr, !484, !"_entry_ptr", i1 false, i1 false}
!488 = !{ptr @.str.243, !489, !"<string literal>", i1 false, i1 false}
!489 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 1103, i32 3}
!490 = !{ptr @.str.244, !489, !"<string literal>", i1 false, i1 false}
!491 = !{ptr @ap_add_sta._entry, !489, !"_entry", i1 false, i1 false}
!492 = !{ptr @ap_add_sta._entry_ptr, !489, !"_entry_ptr", i1 false, i1 false}
!493 = !{ptr @.str.246, !494, !"<string literal>", i1 false, i1 false}
!494 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 1130, i32 4}
!495 = !{ptr @ap_add_sta._entry.245, !494, !"_entry", i1 false, i1 false}
!496 = !{ptr @ap_add_sta._entry_ptr.247, !494, !"_entry_ptr", i1 false, i1 false}
!497 = !{ptr @ap_add_sta.__key, !498, !"__key", i1 false, i1 false}
!498 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 1134, i32 2}
!499 = !{ptr @.str.248, !498, !"<string literal>", i1 false, i1 false}
!500 = !{ptr @skb_queue_head_init.__key, !501, !"__key", i1 false, i1 false}
!501 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!502 = !{ptr @.str.249, !501, !"<string literal>", i1 false, i1 false}
!503 = !{ptr @.str.250, !504, !"<string literal>", i1 false, i1 false}
!504 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 184, i32 3}
!505 = !{ptr @.str.251, !504, !"<string literal>", i1 false, i1 false}
!506 = !{ptr @ap_handle_timer._entry, !504, !"_entry", i1 false, i1 false}
!507 = !{ptr @ap_handle_timer._entry_ptr, !504, !"_entry_ptr", i1 false, i1 false}
!508 = !{ptr @.str.253, !509, !"<string literal>", i1 false, i1 false}
!509 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 237, i32 4}
!510 = !{ptr @ap_handle_timer._entry.252, !509, !"_entry", i1 false, i1 false}
!511 = !{ptr @ap_handle_timer._entry_ptr.254, !509, !"_entry_ptr", i1 false, i1 false}
!512 = !{ptr @.str.256, !513, !"<string literal>", i1 false, i1 false}
!513 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 255, i32 3}
!514 = !{ptr @ap_handle_timer._entry.255, !513, !"_entry", i1 false, i1 false}
!515 = !{ptr @ap_handle_timer._entry_ptr.257, !513, !"_entry_ptr", i1 false, i1 false}
!516 = !{ptr @.str.258, !513, !"<string literal>", i1 false, i1 false}
!517 = !{ptr @.str.259, !513, !"<string literal>", i1 false, i1 false}
!518 = !{ptr @.str.261, !519, !"<string literal>", i1 false, i1 false}
!519 = !{!"../drivers/net/wireless/intersil/hostap/hostap_ap.c", i32 271, i32 4}
!520 = !{ptr @ap_handle_timer._entry.260, !519, !"_entry", i1 false, i1 false}
!521 = !{ptr @ap_handle_timer._entry_ptr.262, !519, !"_entry_ptr", i1 false, i1 false}
!522 = !{i32 1, !"wchar_size", i32 2}
!523 = !{i32 1, !"min_enum_size", i32 4}
!524 = !{i32 8, !"branch-target-enforcement", i32 0}
!525 = !{i32 8, !"sign-return-address", i32 0}
!526 = !{i32 8, !"sign-return-address-all", i32 0}
!527 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!528 = !{i32 7, !"uwtable", i32 1}
!529 = !{i32 7, !"frame-pointer", i32 2}
!530 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!531 = !{i64 2148746368, i64 2148746394, i64 2148746423, i64 2148746457, i64 2148746488, i64 2148746511}
!532 = !{i64 2148748833, i64 2148748859, i64 2148748888, i64 2148748922, i64 2148748953, i64 2148748976}
!533 = !{!"auto-init"}
