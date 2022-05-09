; ModuleID = '/llk/IR_all_yes/drivers/staging/rtl8712/hal_init.c_pt.bc'
source_filename = "../drivers/staging/rtl8712/hal_init.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.dvobj_priv = type { ptr, i32, i8, ptr, ptr, ptr }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct._adapter = type { %struct.dvobj_priv, %struct.mlme_priv, %struct.cmd_priv, %struct.evt_priv, ptr, %struct.xmit_priv, %struct.recv_priv, %struct.sta_priv, %struct.security_priv, %struct.registry_priv, %struct.wlan_acl_pool, %struct.pwrctrl_priv, %struct.eeprom_priv, %struct.hal_priv, %struct.led_priv, %struct.mp_priv, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, i32, %struct.net_device_stats, %struct.iw_statistics, i32, %struct.work_struct, i8, %struct.spinlock, ptr, ptr, %struct.mutex, %struct.completion }
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
%struct.cmd_priv = type { %struct.completion, %struct.completion, %struct.__queue, i8, ptr, ptr, ptr, ptr, i32, i32, i32, ptr }
%struct.evt_priv = type { %struct.__queue, i8, ptr, ptr, i32, %struct.tasklet_struct }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.99, i32 }
%union.anon.99 = type { ptr }
%struct.xmit_priv = type { %struct.spinlock, %struct.__queue, %struct.__queue, %struct.__queue, %struct.__queue, %struct.__queue, %struct.__queue, %struct.__queue, ptr, ptr, i32, i32, i32, %struct.__queue, %struct.hw_txqueue, %struct.hw_txqueue, %struct.hw_txqueue, %struct.hw_txqueue, %struct.hw_txqueue, i32, ptr, i8, i8, i8, i16, i32, i64, i32, ptr, i8, i8, %struct.tasklet_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, i32, i32, i32, i32, %struct.__queue, ptr, ptr, i32, %struct.__queue, ptr, ptr, i32, i32, %struct.__queue, %struct.__queue, ptr, ptr, i32 }
%struct.hw_txqueue = type { i32, i32, i32, i32, [8 x i32], i32, i32, i32 }
%struct.recv_priv = type { %struct.spinlock, %struct.__queue, %struct.__queue, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i8, i32, %struct.tasklet_struct, %struct.sk_buff_head, %struct.sk_buff_head, ptr, ptr, %struct.__queue, i32, i8, i8, i8, i8, %struct.smooth_rssi_data, %struct.smooth_rssi_data }
%struct.sk_buff_head = type { %union.anon.64, i32, %struct.spinlock }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr }
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
%struct.fw_priv = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.101, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.115, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.101 = type { %struct.list_head, %struct.list_head }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.115 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.firmware = type { i32, ptr, ptr }

@rtl871x_load_fw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 72, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"r8712u: Loading firmware from \22%s\22\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rtl871x_load_fw\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/staging/rtl8712/hal_init.c\00", [61 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rtl871x_load_fw._entry_ptr = internal global ptr @rtl871x_load_fw._entry, section ".printk_index", align 4
@firmware_file = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rtlwifi/rtl8712u.bin\00", [43 x i8] zeroinitializer }, align 32
@rtl871x_load_fw._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 76, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"r8712u: Firmware request error %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@rtl871x_load_fw._entry_ptr.8 = internal global ptr @rtl871x_load_fw._entry.5, section ".printk_index", align 4
@__UNIQUE_ID_firmware344 = internal constant [37 x i8] c"r8712u.firmware=rtlwifi/rtl8712u.bin\00", section ".modinfo", align 1
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"1 RCR=0x%x\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"2 RCR=0x%x\0A\00", [20 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@rtl871x_load_fw_fail._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 39, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"r8712u: Firmware request failed\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rtl871x_load_fw_fail\00", [43 x i8] zeroinitializer }, align 32
@rtl871x_load_fw_fail._entry_ptr = internal global ptr @rtl871x_load_fw_fail._entry, section ".printk_index", align 4
@rtl871x_open_fw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 85, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"r8712u: Bad fw->size of %zu\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rtl871x_open_fw\00", [16 x i8] zeroinitializer }, align 32
@rtl871x_open_fw._entry_ptr = internal global ptr @rtl871x_open_fw._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 33170, i64 34578]
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 72, i32 2 }
@___asan_gen_.34 = private unnamed_addr constant [14 x i8] c"firmware_file\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 64, i32 19 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 76, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 333, i32 33 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 339, i32 33 }
@___asan_gen_.52 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.56 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 87, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 39, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.73 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.74 = private constant [38 x i8] c"../drivers/staging/rtl8712/hal_init.c\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 84, i32 3 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @__UNIQUE_ID_firmware344, ptr @rtl871x_load_fw._entry, ptr @rtl871x_load_fw._entry.5, ptr @rtl871x_load_fw._entry_ptr, ptr @rtl871x_load_fw._entry_ptr.8, ptr @rtl871x_load_fw_fail._entry, ptr @rtl871x_load_fw_fail._entry_ptr, ptr @rtl871x_open_fw._entry, ptr @rtl871x_open_fw._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @firmware_file, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @init_completion.__key, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl871x_load_fw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @firmware_file to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl871x_load_fw._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl871x_load_fw_fail._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl871x_open_fw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtl871x_load_fw(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pusbdev = getelementptr inbounds %struct.dvobj_priv, ptr %padapter, i32 0, i32 5
  %0 = ptrtoint ptr %pusbdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pusbdev, align 4
  %dev1 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  %rtl8712_fw_ready = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 35
  %2 = ptrtoint ptr %rtl8712_fw_ready to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %rtl8712_fw_ready, align 4
  %wait.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 35, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.11, ptr noundef nonnull @init_completion.__key) #6
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str, ptr noundef nonnull @firmware_file) #9
  %call = tail call i32 @request_firmware_nowait(ptr noundef null, i1 noundef zeroext true, ptr noundef nonnull @firmware_file, ptr noundef %dev1, i32 noundef 3264, ptr noundef %padapter, ptr noundef nonnull @rtl871x_load_fw_cb) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end4

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end4:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.6, i32 noundef %call) #9
  br label %if.end

if.end:                                           ; preds = %do.end4, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware_nowait(ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl871x_load_fw_cb(ptr noundef %firmware, ptr noundef %context) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %firmware, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %pusbdev.i = getelementptr inbounds %struct.dvobj_priv, ptr %context, i32 0, i32 5
  %0 = ptrtoint ptr %pusbdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pusbdev.i, align 4
  %dev1.i = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  %parent2.i = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15, i32 1
  %2 = ptrtoint ptr %parent2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent2.i, align 8
  %rtl8712_fw_ready.i = getelementptr inbounds %struct._adapter, ptr %context, i32 0, i32 35
  tail call void @complete(ptr noundef %rtl8712_fw_ready.i) #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.12) #9
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end6.critedge.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %mutex.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %mutex.i.i, i32 noundef 0) #6
  tail call void @device_release_driver(ptr noundef %dev1.i) #6
  tail call void @mutex_unlock(ptr noundef %mutex.i.i) #6
  br label %cleanup

if.end6.critedge.i:                               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @device_release_driver(ptr noundef %dev1.i) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %fw = getelementptr inbounds %struct._adapter, ptr %context, i32 0, i32 32
  %4 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %firmware, ptr %fw, align 4
  %pnetdev = getelementptr inbounds %struct._adapter, ptr %context, i32 0, i32 24
  %5 = ptrtoint ptr %pnetdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pnetdev, align 8
  %call = tail call i32 @register_netdev(ptr noundef %6) #6
  %rtl8712_fw_ready = getelementptr inbounds %struct._adapter, ptr %context, i32 0, i32 35
  tail call void @complete(ptr noundef %rtl8712_fw_ready) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end6.critedge.i, %if.then.i
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtl8712_hal_init(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  %fwhdr.sroa.21322.i = alloca %struct.fw_priv, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %fwhdr.sroa.21322.i)
  %fw.i.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 32
  %0 = ptrtoint ptr %fw.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fw.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 200000, i32 %3)
  %cmp.i305.i = icmp ugt i32 %3, 200000
  br i1 %cmp.i305.i, label %rtl871x_open_fw.exit.thread.i, label %rtl871x_open_fw.exit.i

rtl871x_open_fw.exit.thread.i:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %pnetdev.i.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 24
  %4 = ptrtoint ptr %pnetdev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pnetdev.i.i, align 8
  %dev.i.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 133
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.14, i32 noundef %3) #9
  br label %rtl8712_dl_fw.exit.thread53

rtl871x_open_fw.exit.i:                           ; preds = %entry
  %data.i.i = getelementptr inbounds %struct.firmware, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not.i = icmp eq i32 %3, 0
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %cmp.not.i
  br i1 %or.cond.i, label %rtl871x_open_fw.exit.i.rtl8712_dl_fw.exit.thread53_crit_edge, label %if.then.i

rtl871x_open_fw.exit.i.rtl8712_dl_fw.exit.thread53_crit_edge: ; preds = %rtl871x_open_fw.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl8712_dl_fw.exit.thread53

if.then.i:                                        ; preds = %rtl871x_open_fw.exit.i
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %7, align 2
  %10 = tail call i16 @llvm.bswap.i16(i16 %9) #6
  %add.ptr1.i.i = getelementptr i8, ptr %7, i32 4
  %11 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr1.i.i, align 4
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #6
  %add.ptr2.i.i = getelementptr i8, ptr %7, i32 8
  %14 = ptrtoint ptr %add.ptr2.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %add.ptr2.i.i, align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #6
  %add.ptr3.i.i = getelementptr i8, ptr %7, i32 12
  %17 = ptrtoint ptr %add.ptr3.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %add.ptr3.i.i, align 4
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #6
  %add.ptr4.i.i = getelementptr i8, ptr %7, i32 16
  %20 = ptrtoint ptr %add.ptr4.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %add.ptr4.i.i, align 4
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #6
  %23 = zext i16 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values)
  switch i16 %10, label %if.then.i.rtl8712_dl_fw.exit.thread_crit_edge [
    i16 -30958, label %if.then.i.if.end.i308.i_crit_edge
    i16 -32366, label %if.then.i.if.end.i308.i_crit_edge62
  ]

if.then.i.if.end.i308.i_crit_edge62:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i308.i

if.then.i.if.end.i308.i_crit_edge:                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i308.i

if.then.i.rtl8712_dl_fw.exit.thread_crit_edge:    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl8712_dl_fw.exit.thread

if.end.i308.i:                                    ; preds = %if.then.i.if.end.i308.i_crit_edge, %if.then.i.if.end.i308.i_crit_edge62
  call void @__sanitizer_cov_trace_const_cmp4(i32 805306368, i32 %21)
  %cmp6.not.i.i = icmp eq i32 %21, 805306368
  br i1 %cmp6.not.i.i, label %chk_fwhdr.exit.i, label %if.end.i308.i.rtl8712_dl_fw.exit.thread_crit_edge

if.end.i308.i.rtl8712_dl_fw.exit.thread_crit_edge: ; preds = %if.end.i308.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl8712_dl_fw.exit.thread

chk_fwhdr.exit.i:                                 ; preds = %if.end.i308.i
  %add11.i.i = add i32 %13, 80
  %add12.i.i = add i32 %add11.i.i, %16
  %add13.i.i = add i32 %add12.i.i, %19
  call void @__sanitizer_cov_trace_cmp4(i32 %add13.i.i, i32 %3)
  %cmp14.not.i.not.i = icmp eq i32 %add13.i.i, %3
  br i1 %cmp14.not.i.not.i, label %if.end.i, label %chk_fwhdr.exit.i.rtl8712_dl_fw.exit.thread_crit_edge

chk_fwhdr.exit.i.rtl8712_dl_fw.exit.thread_crit_edge: ; preds = %chk_fwhdr.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl8712_dl_fw.exit.thread

if.end.i:                                         ; preds = %chk_fwhdr.exit.i
  %24 = call ptr @memset(ptr %fwhdr.sroa.21322.i, i32 0, i32 48)
  %fwhdr.sroa.21322.i.2.i.2.hci_sel.i.sroa_idx = getelementptr inbounds i8, ptr %fwhdr.sroa.21322.i, i32 2
  %25 = ptrtoint ptr %fwhdr.sroa.21322.i.2.i.2.hci_sel.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 18, ptr %fwhdr.sroa.21322.i.2.i.2.hci_sel.i.sroa_idx, align 2
  %nr_endpoint.i.i = getelementptr inbounds %struct.dvobj_priv, ptr %padapter, i32 0, i32 1
  %26 = ptrtoint ptr %nr_endpoint.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %nr_endpoint.i.i, align 4
  %conv.i.i = trunc i32 %27 to i8
  %fwhdr.sroa.21322.i.7.i.7.usb_ep_num.i.sroa_idx = getelementptr inbounds i8, ptr %fwhdr.sroa.21322.i, i32 7
  %28 = ptrtoint ptr %fwhdr.sroa.21322.i.7.i.7.usb_ep_num.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv.i.i, ptr %fwhdr.sroa.21322.i.7.i.7.usb_ep_num.i.sroa_idx, align 1
  %cbw40_enable.i.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 9, i32 35
  %29 = ptrtoint ptr %cbw40_enable.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %cbw40_enable.i.i, align 1
  %fwhdr.sroa.21322.i.25.i.25.bw_40MHz_en.i.sroa_idx = getelementptr inbounds i8, ptr %fwhdr.sroa.21322.i, i32 25
  %31 = ptrtoint ptr %fwhdr.sroa.21322.i.25.i.25.bw_40MHz_en.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %fwhdr.sroa.21322.i.25.i.25.bw_40MHz_en.i.sroa_idx, align 1
  %rf_config.i.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 9, i32 37
  %32 = ptrtoint ptr %rf_config.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %rf_config.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %33)
  %switch.selectcmp.i.i = icmp eq i8 %33, 2
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, i8 34, i8 18
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %switch.selectcmp34.i.i = icmp eq i8 %33, 0
  %switch.select35.i.i = select i1 %switch.selectcmp34.i.i, i8 17, i8 %switch.select.i.i
  %fwhdr.sroa.21322.i.6.i.6.rf_config6.i.sroa_idx = getelementptr inbounds i8, ptr %fwhdr.sroa.21322.i, i32 6
  %34 = ptrtoint ptr %fwhdr.sroa.21322.i.6.i.6.rf_config6.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %switch.select35.i.i, ptr %fwhdr.sroa.21322.i.6.i.6.rf_config6.i.sroa_idx, align 2
  %mp_mode.i.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 9, i32 23
  %35 = ptrtoint ptr %mp_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %mp_mode.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %36)
  %cmp.i313.i = icmp eq i8 %36, 1
  %conv9.i.i = zext i1 %cmp.i313.i to i8
  %fwhdr.sroa.21322.i.17.i.17.mp_mode10.i.sroa_idx = getelementptr inbounds i8, ptr %fwhdr.sroa.21322.i, i32 17
  %37 = ptrtoint ptr %fwhdr.sroa.21322.i.17.i.17.mp_mode10.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv9.i.i, ptr %fwhdr.sroa.21322.i.17.i.17.mp_mode10.i.sroa_idx, align 1
  %vrtl_carrier_sense.i.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 9, i32 8
  %38 = ptrtoint ptr %vrtl_carrier_sense.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %vrtl_carrier_sense.i.i, align 2
  %fwhdr.sroa.21322.i.18.i.18.vcs_type.i.sroa_idx = getelementptr inbounds i8, ptr %fwhdr.sroa.21322.i, i32 18
  %40 = ptrtoint ptr %fwhdr.sroa.21322.i.18.i.18.vcs_type.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %fwhdr.sroa.21322.i.18.i.18.vcs_type.i.sroa_idx, align 2
  %vcs_type11.i.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 9, i32 9
  %41 = ptrtoint ptr %vcs_type11.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %vcs_type11.i.i, align 1
  %fwhdr.sroa.21322.i.19.i.19.vcs_mode.i.sroa_idx = getelementptr inbounds i8, ptr %fwhdr.sroa.21322.i, i32 19
  %43 = ptrtoint ptr %fwhdr.sroa.21322.i.19.i.19.vcs_mode.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %fwhdr.sroa.21322.i.19.i.19.vcs_mode.i.sroa_idx, align 1
  %wifi_test.i.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 9, i32 39
  %44 = ptrtoint ptr %wifi_test.i.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %wifi_test.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %45)
  %cmp13.i.i = icmp ne i8 %45, 1
  %conv15.i.i = zext i1 %cmp13.i.i to i8
  %fwhdr.sroa.21322.i.14.i.14.turbo_mode.i.sroa_idx = getelementptr inbounds i8, ptr %fwhdr.sroa.21322.i, i32 14
  %46 = ptrtoint ptr %fwhdr.sroa.21322.i.14.i.14.turbo_mode.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv15.i.i, ptr %fwhdr.sroa.21322.i.14.i.14.turbo_mode.i.sroa_idx, align 2
  %low_power.i.i = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 9, i32 38
  %47 = ptrtoint ptr %low_power.i.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %low_power.i.i, align 4
  %fwhdr.sroa.21322.i.15.i.15.low_power_mode.i.sroa_idx = getelementptr inbounds i8, ptr %fwhdr.sroa.21322.i, i32 15
  %49 = ptrtoint ptr %fwhdr.sroa.21322.i.15.i.15.low_power_mode.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %48, ptr %fwhdr.sroa.21322.i.15.i.15.low_power_mode.i.sroa_idx, align 1
  %50 = tail call i32 @llvm.umax.i32(i32 %16, i32 %19) #6
  %add9.i = add i32 %50, 544
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add9.i, i32 noundef 3264) #10
  %tobool11.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool11.not.i, label %if.end.i.rtl8712_dl_fw.exit.thread_crit_edge, label %if.end13.i

if.end.i.rtl8712_dl_fw.exit.thread_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl8712_dl_fw.exit.thread

if.end13.i:                                       ; preds = %if.end.i
  %add.ptr.i = getelementptr i8, ptr %call9.i.i, i32 512
  %51 = ptrtoint ptr %call9.i.i to i32
  %and.i = and i32 %51, 384
  %idx.neg.i = sub nsw i32 0, %and.i
  %add.ptr14.i = getelementptr i8, ptr %add.ptr.i, i32 %idx.neg.i
  %add.ptr15.i = getelementptr i8, ptr %add.ptr14.i, i32 32
  %add.ptr16.i = getelementptr i8, ptr %7, i32 32
  %add.ptr17.i = getelementptr i8, ptr %add.ptr16.i, i32 %22
  br label %do.body.i

do.body.i:                                        ; preds = %if.end22.i.do.body.i_crit_edge, %if.end13.i
  %imem_sz.0.i = phi i32 [ %16, %if.end13.i ], [ %sub.i, %if.end22.i.do.body.i_crit_edge ]
  %ptr.0.i = phi ptr [ %add.ptr17.i, %if.end13.i ], [ %add.ptr27.i, %if.end22.i.do.body.i_crit_edge ]
  %52 = call ptr @memset(ptr %add.ptr14.i, i32 0, i32 32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 49152, i32 %imem_sz.0.i)
  %cmp19.i = icmp ugt i32 %imem_sz.0.i, 49152
  br i1 %cmp19.i, label %do.body.i.if.end22.i_crit_edge, label %if.else.i

do.body.i.if.end22.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22.i

if.else.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %53 = ptrtoint ptr %add.ptr14.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %add.ptr14.i, align 128
  %or.i = or i32 %54, 16
  store i32 %or.i, ptr %add.ptr14.i, align 128
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.else.i, %do.body.i.if.end22.i_crit_edge
  %dump_imem_sz.0.i = phi i32 [ %imem_sz.0.i, %if.else.i ], [ 49152, %do.body.i.if.end22.i_crit_edge ]
  %55 = tail call i32 @llvm.bswap.i32(i32 %dump_imem_sz.0.i) #6
  %56 = ptrtoint ptr %add.ptr14.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %add.ptr14.i, align 128
  %or25.i = or i32 %57, %55
  store i32 %or25.i, ptr %add.ptr14.i, align 128
  %58 = call ptr @memcpy(ptr %add.ptr15.i, ptr %ptr.0.i, i32 %dump_imem_sz.0.i)
  %add26.i = add nuw nsw i32 %dump_imem_sz.0.i, 32
  tail call void @r8712_write_mem(ptr noundef %padapter, i32 noundef 271843328, i32 noundef %add26.i, ptr noundef %add.ptr14.i) #6
  %add.ptr27.i = getelementptr i8, ptr %ptr.0.i, i32 %dump_imem_sz.0.i
  %sub.i = sub i32 %imem_sz.0.i, %dump_imem_sz.0.i
  %cmp28.not.i = icmp eq i32 %sub.i, 0
  br i1 %cmp28.not.i, label %do.end.i, label %if.end22.i.do.body.i_crit_edge

if.end22.i.do.body.i_crit_edge:                   ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

do.end.i:                                         ; preds = %if.end22.i
  %call30.i = tail call zeroext i16 @r8712_read16(ptr noundef %padapter, i32 noundef 270860356) #6
  %conv31340.i = zext i16 %call30.i to i32
  %and32341.i = and i32 %conv31340.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32341.i)
  %cmp33342.i = icmp eq i32 %and32341.i, 0
  br i1 %cmp33342.i, label %do.end.i.while.body.i_crit_edge, label %do.end.i.while.end.i_crit_edge

do.end.i.while.end.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i

do.end.i.while.body.i_crit_edge:                  ; preds = %do.end.i
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %do.end.i.while.body.i_crit_edge
  %i.0343.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ 10, %do.end.i.while.body.i_crit_edge ]
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 1000, i32 noundef 2) #6
  %call37.i = tail call zeroext i16 @r8712_read16(ptr noundef %padapter, i32 noundef 270860356) #6
  %dec.i = add nsw i32 %i.0343.i, -1
  %conv31.i = zext i16 %call37.i to i32
  %and32.i = and i32 %conv31.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32.i)
  %cmp33.i = icmp eq i32 %and32.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp35.i = icmp ne i32 %dec.i, 0
  %or.cond297.i = select i1 %cmp33.i, i1 %cmp35.i, i1 false
  br i1 %or.cond297.i, label %while.body.i.while.body.i_crit_edge, label %while.end.loopexit.i

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

while.end.loopexit.i:                             ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %phi.cmp.i = icmp eq i32 %dec.i, 0
  br label %while.end.i

while.end.i:                                      ; preds = %while.end.loopexit.i, %do.end.i.while.end.i_crit_edge
  %i.0.lcssa.i = phi i1 [ false, %do.end.i.while.end.i_crit_edge ], [ %phi.cmp.i, %while.end.loopexit.i ]
  %conv31.lcssa.i = phi i32 [ %conv31340.i, %do.end.i.while.end.i_crit_edge ], [ %conv31.i, %while.end.loopexit.i ]
  %and41.i = and i32 %conv31.lcssa.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41.i)
  %cmp42.i = icmp eq i32 %and41.i, 0
  %or.cond298.i = select i1 %i.0.lcssa.i, i1 true, i1 %cmp42.i
  br i1 %or.cond298.i, label %while.end.i.rtl8712_dl_fw.exit.thread53_crit_edge, label %while.end.i.do.body47.i_crit_edge

while.end.i.do.body47.i_crit_edge:                ; preds = %while.end.i
  br label %do.body47.i

while.end.i.rtl8712_dl_fw.exit.thread53_crit_edge: ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl8712_dl_fw.exit.thread53

do.body47.i:                                      ; preds = %if.end54.i.do.body47.i_crit_edge, %while.end.i.do.body47.i_crit_edge
  %emem_sz.0.i = phi i32 [ %sub60.i, %if.end54.i.do.body47.i_crit_edge ], [ %19, %while.end.i.do.body47.i_crit_edge ]
  %ptr.1.i = phi ptr [ %add.ptr59.i, %if.end54.i.do.body47.i_crit_edge ], [ %add.ptr27.i, %while.end.i.do.body47.i_crit_edge ]
  %59 = call ptr @memset(ptr %add.ptr14.i, i32 0, i32 32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 49152, i32 %emem_sz.0.i)
  %cmp48.i = icmp ugt i32 %emem_sz.0.i, 49152
  br i1 %cmp48.i, label %do.body47.i.if.end54.i_crit_edge, label %if.else51.i

do.body47.i.if.end54.i_crit_edge:                 ; preds = %do.body47.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end54.i

if.else51.i:                                      ; preds = %do.body47.i
  call void @__sanitizer_cov_trace_pc() #8
  %60 = ptrtoint ptr %add.ptr14.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %add.ptr14.i, align 128
  %or53.i = or i32 %61, 16
  store i32 %or53.i, ptr %add.ptr14.i, align 128
  br label %if.end54.i

if.end54.i:                                       ; preds = %if.else51.i, %do.body47.i.if.end54.i_crit_edge
  %dump_emem_sz.0.i = phi i32 [ %emem_sz.0.i, %if.else51.i ], [ 49152, %do.body47.i.if.end54.i_crit_edge ]
  %62 = tail call i32 @llvm.bswap.i32(i32 %dump_emem_sz.0.i) #6
  %63 = ptrtoint ptr %add.ptr14.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %add.ptr14.i, align 128
  %or57.i = or i32 %64, %62
  store i32 %or57.i, ptr %add.ptr14.i, align 128
  %65 = call ptr @memcpy(ptr %add.ptr15.i, ptr %ptr.1.i, i32 %dump_emem_sz.0.i)
  %add58.i = add nuw nsw i32 %dump_emem_sz.0.i, 32
  tail call void @r8712_write_mem(ptr noundef %padapter, i32 noundef 271843328, i32 noundef %add58.i, ptr noundef %add.ptr14.i) #6
  %add.ptr59.i = getelementptr i8, ptr %ptr.1.i, i32 %dump_emem_sz.0.i
  %sub60.i = sub i32 %emem_sz.0.i, %dump_emem_sz.0.i
  %cmp62.not.i = icmp eq i32 %sub60.i, 0
  br i1 %cmp62.not.i, label %do.end64.i, label %if.end54.i.do.body47.i_crit_edge

if.end54.i.do.body47.i_crit_edge:                 ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body47.i

do.end64.i:                                       ; preds = %if.end54.i
  %call65.i = tail call zeroext i16 @r8712_read16(ptr noundef %padapter, i32 noundef 270860356) #6
  %conv67345.i = zext i16 %call65.i to i32
  %and68346.i = and i32 %conv67345.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68346.i)
  %cmp69347.i = icmp eq i32 %and68346.i, 0
  br i1 %cmp69347.i, label %while.body75.i, label %do.end64.i.while.end78.i_crit_edge

do.end64.i.while.end78.i_crit_edge:               ; preds = %do.end64.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end78.i

while.body75.i:                                   ; preds = %do.end64.i
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 1000, i32 noundef 2) #6
  %call76.i = tail call zeroext i16 @r8712_read16(ptr noundef %padapter, i32 noundef 270860356) #6
  %conv67.i = zext i16 %call76.i to i32
  %and68.i = and i32 %conv67.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68.i)
  %cmp69.i = icmp eq i32 %and68.i, 0
  br i1 %cmp69.i, label %while.body75.i.1, label %while.body75.i.while.end78.i_crit_edge

while.body75.i.while.end78.i_crit_edge:           ; preds = %while.body75.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end78.i

while.body75.i.1:                                 ; preds = %while.body75.i
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 1000, i32 noundef 2) #6
  %call76.i.1 = tail call zeroext i16 @r8712_read16(ptr noundef %padapter, i32 noundef 270860356) #6
  %conv67.i.1 = zext i16 %call76.i.1 to i32
  %and68.i.1 = and i32 %conv67.i.1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68.i.1)
  %cmp69.i.1 = icmp eq i32 %and68.i.1, 0
  br i1 %cmp69.i.1, label %while.body75.i.2, label %while.body75.i.1.while.end78.i_crit_edge

while.body75.i.1.while.end78.i_crit_edge:         ; preds = %while.body75.i.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end78.i

while.body75.i.2:                                 ; preds = %while.body75.i.1
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 1000, i32 noundef 2) #6
  %call76.i.2 = tail call zeroext i16 @r8712_read16(ptr noundef %padapter, i32 noundef 270860356) #6
  %conv67.i.2 = zext i16 %call76.i.2 to i32
  %and68.i.2 = and i32 %conv67.i.2, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68.i.2)
  %cmp69.i.2 = icmp eq i32 %and68.i.2, 0
  br i1 %cmp69.i.2, label %while.body75.i.3, label %while.body75.i.2.while.end78.i_crit_edge

while.body75.i.2.while.end78.i_crit_edge:         ; preds = %while.body75.i.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end78.i

while.body75.i.3:                                 ; preds = %while.body75.i.2
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 1000, i32 noundef 2) #6
  %call76.i.3 = tail call zeroext i16 @r8712_read16(ptr noundef %padapter, i32 noundef 270860356) #6
  %conv67.i.3 = zext i16 %call76.i.3 to i32
  %and68.i.3 = and i32 %conv67.i.3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68.i.3)
  %cmp69.i.3 = icmp eq i32 %and68.i.3, 0
  br i1 %cmp69.i.3, label %while.body75.i.4, label %while.body75.i.3.while.end78.i_crit_edge

while.body75.i.3.while.end78.i_crit_edge:         ; preds = %while.body75.i.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end78.i

while.body75.i.4:                                 ; preds = %while.body75.i.3
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 1000, i32 noundef 2) #6
  %call76.i.4 = tail call zeroext i16 @r8712_read16(ptr noundef %padapter, i32 noundef 270860356) #6
  %conv67.i.4 = zext i16 %call76.i.4 to i32
  br label %while.end78.i

while.end78.i:                                    ; preds = %while.body75.i.4, %while.body75.i.3.while.end78.i_crit_edge, %while.body75.i.2.while.end78.i_crit_edge, %while.body75.i.1.while.end78.i_crit_edge, %while.body75.i.while.end78.i_crit_edge, %do.end64.i.while.end78.i_crit_edge
  %i.1.lcssa.i = phi i1 [ false, %do.end64.i.while.end78.i_crit_edge ], [ true, %while.body75.i.4 ], [ false, %while.body75.i.3.while.end78.i_crit_edge ], [ false, %while.body75.i.2.while.end78.i_crit_edge ], [ false, %while.body75.i.1.while.end78.i_crit_edge ], [ false, %while.body75.i.while.end78.i_crit_edge ]
  %conv67.lcssa.i = phi i32 [ %conv67345.i, %do.end64.i.while.end78.i_crit_edge ], [ %conv67.i.4, %while.body75.i.4 ], [ %conv67.i.3, %while.body75.i.3.while.end78.i_crit_edge ], [ %conv67.i.2, %while.body75.i.2.while.end78.i_crit_edge ], [ %conv67.i.1, %while.body75.i.1.while.end78.i_crit_edge ], [ %conv67.i, %while.body75.i.while.end78.i_crit_edge ]
  %and83.i = and i32 %conv67.lcssa.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83.i)
  %cmp84.i = icmp eq i32 %and83.i, 0
  %or.cond300.i = select i1 %i.1.lcssa.i, i1 true, i1 %cmp84.i
  br i1 %or.cond300.i, label %while.end78.i.rtl8712_dl_fw.exit.thread53_crit_edge, label %if.end87.i

while.end78.i.rtl8712_dl_fw.exit.thread53_crit_edge: ; preds = %while.end78.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl8712_dl_fw.exit.thread53

if.end87.i:                                       ; preds = %while.end78.i
  %call88.i = tail call zeroext i8 @r8712_read8(ptr noundef %padapter, i32 noundef 270860296) #6
  %66 = or i8 %call88.i, 4
  tail call void @r8712_write8(ptr noundef %padapter, i32 noundef 270860296, i8 noundef zeroext %66) #6
  %call92.i = tail call zeroext i8 @r8712_read8(ptr noundef %padapter, i32 noundef 270860296) #6
  call void @__sanitizer_cov_trace_cmp1(i8 %call92.i, i8 %66)
  %cmp96.not.i = icmp eq i8 %call92.i, %66
  br i1 %cmp96.not.i, label %if.end99.i, label %if.end87.i.rtl8712_dl_fw.exit.thread53_crit_edge

if.end87.i.rtl8712_dl_fw.exit.thread53_crit_edge: ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl8712_dl_fw.exit.thread53

if.end99.i:                                       ; preds = %if.end87.i
  %call100.i = tail call zeroext i8 @r8712_read8(ptr noundef %padapter, i32 noundef 270860291) #6
  %67 = or i8 %call100.i, 4
  tail call void @r8712_write8(ptr noundef %padapter, i32 noundef 270860291, i8 noundef zeroext %67) #6
  %call104.i = tail call zeroext i8 @r8712_read8(ptr noundef %padapter, i32 noundef 270860291) #6
  call void @__sanitizer_cov_trace_cmp1(i8 %call104.i, i8 %67)
  %cmp108.not.i = icmp eq i8 %call104.i, %67
  br i1 %cmp108.not.i, label %if.end111.i, label %if.end99.i.rtl8712_dl_fw.exit.thread53_crit_edge

if.end99.i.rtl8712_dl_fw.exit.thread53_crit_edge: ; preds = %if.end99.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl8712_dl_fw.exit.thread53

if.end111.i:                                      ; preds = %if.end99.i
  %call112.i = tail call i32 @r8712_read32(ptr noundef %padapter, i32 noundef 270860356) #6
  %call113.i = tail call zeroext i16 @r8712_read16(ptr noundef %padapter, i32 noundef 270860356) #6
  %68 = and i16 %call113.i, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %68)
  %cmp117351.i = icmp eq i16 %68, 0
  br i1 %cmp117351.i, label %if.end111.i.while.body123.i_crit_edge, label %if.end111.i.if.end130.i_crit_edge

if.end111.i.if.end130.i_crit_edge:                ; preds = %if.end111.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end130.i

if.end111.i.while.body123.i_crit_edge:            ; preds = %if.end111.i
  br label %while.body123.i

while.body123.i:                                  ; preds = %while.body123.i.while.body123.i_crit_edge, %if.end111.i.while.body123.i_crit_edge
  %i.2352.i = phi i32 [ %dec125.i, %while.body123.i.while.body123.i_crit_edge ], [ 100, %if.end111.i.while.body123.i_crit_edge ]
  tail call void @msleep(i32 noundef 20) #6
  %call124.i = tail call zeroext i16 @r8712_read16(ptr noundef %padapter, i32 noundef 270860356) #6
  %dec125.i = add nsw i32 %i.2352.i, -1
  %69 = and i16 %call124.i, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %69)
  %cmp117.i = icmp eq i16 %69, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec125.i)
  %cmp120.i = icmp ne i32 %dec125.i, 0
  %or.cond301.i = select i1 %cmp117.i, i1 %cmp120.i, i1 false
  br i1 %or.cond301.i, label %while.body123.i.while.body123.i_crit_edge, label %while.end126.i

while.body123.i.while.body123.i_crit_edge:        ; preds = %while.body123.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body123.i

while.end126.i:                                   ; preds = %while.body123.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec125.i)
  %phi.cmp372.i = icmp eq i32 %dec125.i, 0
  br i1 %phi.cmp372.i, label %if.then129.i, label %while.end126.i.if.end130.i_crit_edge

while.end126.i.if.end130.i_crit_edge:             ; preds = %while.end126.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end130.i

if.then129.i:                                     ; preds = %while.end126.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @r8712_write16(ptr noundef %padapter, i32 noundef 270861128, i16 noundef zeroext -16384) #6
  tail call void @r8712_write16(ptr noundef %padapter, i32 noundef 270861128, i16 noundef zeroext -16383) #6
  tail call void @r8712_write16(ptr noundef %padapter, i32 noundef 270861128, i16 noundef zeroext 8192) #6
  tail call void @r8712_write16(ptr noundef %padapter, i32 noundef 270861128, i16 noundef zeroext 8193) #6
  tail call void @r8712_write16(ptr noundef %padapter, i32 noundef 270861128, i16 noundef zeroext 8194) #6
  tail call void @r8712_write16(ptr noundef %padapter, i32 noundef 270861128, i16 noundef zeroext 8195) #6
  br label %rtl8712_dl_fw.exit.thread53

if.end130.i:                                      ; preds = %while.end126.i.if.end130.i_crit_edge, %if.end111.i.if.end130.i_crit_edge
  %70 = getelementptr inbounds i8, ptr %add.ptr14.i, i32 4
  %71 = call ptr @memset(ptr %70, i32 0, i32 28)
  %and132.i = and i32 %22, 65535
  %72 = or i32 %and132.i, 268435456
  %73 = tail call i32 @llvm.bswap.i32(i32 %72) #6
  %74 = ptrtoint ptr %add.ptr14.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %add.ptr14.i, align 128
  %75 = call ptr @memcpy(ptr %add.ptr15.i, ptr %fwhdr.sroa.21322.i, i32 %22)
  %add140.i = add i32 %22, 32
  tail call void @r8712_write_mem(ptr noundef %padapter, i32 noundef 271843328, i32 noundef %add140.i, ptr noundef %add.ptr14.i) #6
  %call141.i = tail call zeroext i16 @r8712_read16(ptr noundef %padapter, i32 noundef 270860356) #6
  %76 = and i16 %call141.i, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %76)
  %cmp145354.i = icmp eq i16 %76, 0
  br i1 %cmp145354.i, label %if.end130.i.while.body151.i_crit_edge, label %if.end130.i.if.end158.i_crit_edge

if.end130.i.if.end158.i_crit_edge:                ; preds = %if.end130.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end158.i

if.end130.i.while.body151.i_crit_edge:            ; preds = %if.end130.i
  br label %while.body151.i

while.body151.i:                                  ; preds = %while.body151.i.while.body151.i_crit_edge, %if.end130.i.while.body151.i_crit_edge
  %i.3355.i = phi i32 [ %dec153.i, %while.body151.i.while.body151.i_crit_edge ], [ 100, %if.end130.i.while.body151.i_crit_edge ]
  tail call void @msleep(i32 noundef 20) #6
  %call152.i = tail call zeroext i16 @r8712_read16(ptr noundef %padapter, i32 noundef 270860356) #6
  %dec153.i = add nsw i32 %i.3355.i, -1
  %77 = and i16 %call152.i, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %77)
  %cmp145.i = icmp eq i16 %77, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec153.i)
  %cmp148.i = icmp ne i32 %dec153.i, 0
  %or.cond302.i = select i1 %cmp145.i, i1 %cmp148.i, i1 false
  br i1 %or.cond302.i, label %while.body151.i.while.body151.i_crit_edge, label %while.end154.i

while.body151.i.while.body151.i_crit_edge:        ; preds = %while.body151.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body151.i

while.end154.i:                                   ; preds = %while.body151.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec153.i)
  %phi.cmp373.i = icmp eq i32 %dec153.i, 0
  br i1 %phi.cmp373.i, label %while.end154.i.rtl8712_dl_fw.exit.thread53_crit_edge, label %while.end154.i.if.end158.i_crit_edge

while.end154.i.if.end158.i_crit_edge:             ; preds = %while.end154.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end158.i

while.end154.i.rtl8712_dl_fw.exit.thread53_crit_edge: ; preds = %while.end154.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl8712_dl_fw.exit.thread53

if.end158.i:                                      ; preds = %while.end154.i.if.end158.i_crit_edge, %if.end130.i.if.end158.i_crit_edge
  %call159.i = tail call zeroext i8 @r8712_read8(ptr noundef %padapter, i32 noundef 270860298) #6
  %call166.i = tail call zeroext i16 @r8712_read16(ptr noundef %padapter, i32 noundef 270860356) #6
  %78 = and i16 %call166.i, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %78)
  %cmp170357.i = icmp eq i16 %78, 0
  br i1 %cmp170357.i, label %while.body176.preheader.i, label %rtl8712_dl_fw.exit.thread57

rtl8712_dl_fw.exit.thread57:                      ; preds = %if.end158.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #6
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %fwhdr.sroa.21322.i)
  br label %if.end

while.body176.preheader.i:                        ; preds = %if.end158.i
  %79 = and i8 %call159.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool162.not.i = icmp eq i8 %79, 0
  %.303.i = select i1 %tobool162.not.i, i32 30, i32 60
  br label %while.body176.i

while.body176.i:                                  ; preds = %while.body176.i.while.body176.i_crit_edge, %while.body176.preheader.i
  %i.5358.i = phi i32 [ %dec178.i, %while.body176.i.while.body176.i_crit_edge ], [ %.303.i, %while.body176.preheader.i ]
  tail call void @msleep(i32 noundef 100) #6
  %call177.i = tail call zeroext i16 @r8712_read16(ptr noundef %padapter, i32 noundef 270860356) #6
  %dec178.i = add nsw i32 %i.5358.i, -1
  %80 = and i16 %call177.i, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %80)
  %cmp170.i = icmp eq i16 %80, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.5358.i)
  %cmp173.i = icmp ugt i32 %i.5358.i, 1
  %or.cond304.i = select i1 %cmp170.i, i1 %cmp173.i, i1 false
  br i1 %or.cond304.i, label %while.body176.i.while.body176.i_crit_edge, label %rtl8712_dl_fw.exit

while.body176.i.while.body176.i_crit_edge:        ; preds = %while.body176.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body176.i

rtl8712_dl_fw.exit.thread:                        ; preds = %if.end.i.rtl8712_dl_fw.exit.thread_crit_edge, %chk_fwhdr.exit.i.rtl8712_dl_fw.exit.thread_crit_edge, %if.end.i308.i.rtl8712_dl_fw.exit.thread_crit_edge, %if.then.i.rtl8712_dl_fw.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %fwhdr.sroa.21322.i)
  br label %cleanup

rtl8712_dl_fw.exit.thread53:                      ; preds = %while.end154.i.rtl8712_dl_fw.exit.thread53_crit_edge, %if.then129.i, %if.end99.i.rtl8712_dl_fw.exit.thread53_crit_edge, %if.end87.i.rtl8712_dl_fw.exit.thread53_crit_edge, %while.end78.i.rtl8712_dl_fw.exit.thread53_crit_edge, %while.end.i.rtl8712_dl_fw.exit.thread53_crit_edge, %rtl871x_open_fw.exit.i.rtl8712_dl_fw.exit.thread53_crit_edge, %rtl871x_open_fw.exit.thread.i
  %tmpchar.0.i.ph = phi ptr [ null, %rtl871x_open_fw.exit.thread.i ], [ null, %rtl871x_open_fw.exit.i.rtl8712_dl_fw.exit.thread53_crit_edge ], [ %call9.i.i, %while.end154.i.rtl8712_dl_fw.exit.thread53_crit_edge ], [ %call9.i.i, %if.then129.i ], [ %call9.i.i, %if.end99.i.rtl8712_dl_fw.exit.thread53_crit_edge ], [ %call9.i.i, %if.end87.i.rtl8712_dl_fw.exit.thread53_crit_edge ], [ %call9.i.i, %while.end78.i.rtl8712_dl_fw.exit.thread53_crit_edge ], [ %call9.i.i, %while.end.i.rtl8712_dl_fw.exit.thread53_crit_edge ]
  tail call void @kfree(ptr noundef %tmpchar.0.i.ph) #6
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %fwhdr.sroa.21322.i)
  br label %cleanup

rtl8712_dl_fw.exit:                               ; preds = %while.body176.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec178.i)
  %phi.cmp374.i.not = icmp eq i32 %dec178.i, 0
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #6
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %fwhdr.sroa.21322.i)
  br i1 %phi.cmp374.i.not, label %rtl8712_dl_fw.exit.cleanup_crit_edge, label %rtl8712_dl_fw.exit.if.end_crit_edge

rtl8712_dl_fw.exit.if.end_crit_edge:              ; preds = %rtl8712_dl_fw.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

rtl8712_dl_fw.exit.cleanup_crit_edge:             ; preds = %rtl8712_dl_fw.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %rtl8712_dl_fw.exit.if.end_crit_edge, %rtl8712_dl_fw.exit.thread57
  %pnetdev = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 24
  %81 = ptrtoint ptr %pnetdev to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %pnetdev, align 8
  %call2 = tail call i32 @r8712_read32(ptr noundef %padapter, i32 noundef 270860360) #6
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %82, ptr noundef nonnull @.str.9, i32 noundef %call2) #9
  %call3 = tail call i32 @r8712_read32(ptr noundef %padapter, i32 noundef 270860360) #6
  %or = or i32 %call3, 67108864
  tail call void @r8712_write32(ptr noundef %padapter, i32 noundef 270860360, i32 noundef %or) #6
  %83 = ptrtoint ptr %pnetdev to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %pnetdev, align 8
  %call5 = tail call i32 @r8712_read32(ptr noundef %padapter, i32 noundef 270860360) #6
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %84, ptr noundef nonnull @.str.10, i32 noundef %call5) #9
  %call6 = tail call i32 @r8712_read32(ptr noundef %padapter, i32 noundef 270860360) #6
  %or7 = or i32 %call6, 33554432
  tail call void @r8712_write32(ptr noundef %padapter, i32 noundef 270860360, i32 noundef %or7) #6
  %call8 = tail call i32 @r8712_read32(ptr noundef %padapter, i32 noundef 270860352) #6
  %and = and i32 %call8, 16777215
  tail call void @r8712_write32(ptr noundef %padapter, i32 noundef 270860352, i32 noundef %and) #6
  %call9 = tail call zeroext i8 @r8712_read8(ptr noundef %padapter, i32 noundef 270860469) #6
  %85 = or i8 %call9, 1
  tail call void @r8712_write8(ptr noundef %padapter, i32 noundef 270860469, i8 noundef zeroext %85) #6
  %call13 = tail call zeroext i8 @r8712_read8(ptr noundef %padapter, i32 noundef 270860477) #6
  %86 = or i8 %call13, -128
  tail call void @r8712_write8(ptr noundef %padapter, i32 noundef 270860477, i8 noundef zeroext %86) #6
  tail call void @r8712_write8(ptr noundef %padapter, i32 noundef 270860505, i8 noundef zeroext 1) #6
  tail call void @r8712_write8(ptr noundef %padapter, i32 noundef 270925403, i8 noundef zeroext 4) #6
  %call17 = tail call zeroext i8 @r8712_read8(ptr noundef %padapter, i32 noundef 270925404) #6
  %87 = or i8 %call17, -128
  tail call void @r8712_write8(ptr noundef %padapter, i32 noundef 270925404, i8 noundef zeroext %87) #6
  %call23 = tail call zeroext i8 @r8712_read8(ptr noundef %padapter, i32 noundef 270860368) #6
  %arrayidx = getelementptr %struct._adapter, ptr %padapter, i32 0, i32 12, i32 3, i32 0
  %88 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %call23, ptr %arrayidx, align 1
  %call23.1 = tail call zeroext i8 @r8712_read8(ptr noundef %padapter, i32 noundef 270860369) #6
  %arrayidx.1 = getelementptr %struct._adapter, ptr %padapter, i32 0, i32 12, i32 3, i32 1
  %89 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %call23.1, ptr %arrayidx.1, align 1
  %call23.2 = tail call zeroext i8 @r8712_read8(ptr noundef %padapter, i32 noundef 270860370) #6
  %arrayidx.2 = getelementptr %struct._adapter, ptr %padapter, i32 0, i32 12, i32 3, i32 2
  %90 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %call23.2, ptr %arrayidx.2, align 1
  %call23.3 = tail call zeroext i8 @r8712_read8(ptr noundef %padapter, i32 noundef 270860371) #6
  %arrayidx.3 = getelementptr %struct._adapter, ptr %padapter, i32 0, i32 12, i32 3, i32 3
  %91 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %call23.3, ptr %arrayidx.3, align 1
  %call23.4 = tail call zeroext i8 @r8712_read8(ptr noundef %padapter, i32 noundef 270860372) #6
  %arrayidx.4 = getelementptr %struct._adapter, ptr %padapter, i32 0, i32 12, i32 3, i32 4
  %92 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %call23.4, ptr %arrayidx.4, align 1
  %call23.5 = tail call zeroext i8 @r8712_read8(ptr noundef %padapter, i32 noundef 270860373) #6
  %arrayidx.5 = getelementptr %struct._adapter, ptr %padapter, i32 0, i32 12, i32 3, i32 5
  %93 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %call23.5, ptr %arrayidx.5, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %rtl8712_dl_fw.exit.cleanup_crit_edge, %rtl8712_dl_fw.exit.thread53, %rtl8712_dl_fw.exit.thread
  %retval.0 = phi i32 [ 0, %rtl8712_dl_fw.exit.cleanup_crit_edge ], [ 0, %rtl8712_dl_fw.exit.thread ], [ 0, %rtl8712_dl_fw.exit.thread53 ], [ 1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r8712_read32(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_write32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_write8(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @r8712_read8(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtl8712_hal_deinit(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @r8712_write8(ptr noundef %padapter, i32 noundef 270860319, i8 noundef zeroext 0) #6
  tail call void @msleep(i32 noundef 20) #6
  tail call void @r8712_write8(ptr noundef %padapter, i32 noundef 270860297, i8 noundef zeroext 56) #6
  tail call void @r8712_write8(ptr noundef %padapter, i32 noundef 270860291, i8 noundef zeroext 112) #6
  tail call void @r8712_write8(ptr noundef %padapter, i32 noundef 270860292, i8 noundef zeroext 6) #6
  tail call void @r8712_write8(ptr noundef %padapter, i32 noundef 270860288, i8 noundef zeroext -7) #6
  tail call void @r8712_write8(ptr noundef %padapter, i32 noundef 270860289, i8 noundef zeroext -24) #6
  tail call void @r8712_write8(ptr noundef %padapter, i32 noundef 270860328, i8 noundef zeroext 0) #6
  tail call void @r8712_write8(ptr noundef %padapter, i32 noundef 270860320, i8 noundef zeroext 84) #6
  tail call void @r8712_write8(ptr noundef %padapter, i32 noundef 270860291, i8 noundef zeroext 80) #6
  tail call void @r8712_write8(ptr noundef %padapter, i32 noundef 270860321, i8 noundef zeroext 36) #6
  tail call void @r8712_write8(ptr noundef %padapter, i32 noundef 270860304, i8 noundef zeroext 48) #6
  tail call void @r8712_write8(ptr noundef %padapter, i32 noundef 270860305, i8 noundef zeroext 86) #6
  tail call void @r8712_write8(ptr noundef %padapter, i32 noundef 270860306, i8 noundef zeroext 67) #6
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtl871x_hal_init(ptr noundef %padapter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_init_completed = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 20
  %0 = ptrtoint ptr %hw_init_completed to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %hw_init_completed, align 8
  %hal_bus_init = getelementptr inbounds %struct._adapter, ptr %padapter, i32 0, i32 13, i32 1
  %1 = ptrtoint ptr %hal_bus_init to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hal_bus_init, align 8
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  %call = tail call zeroext i8 %2(ptr noundef %padapter) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %call)
  %cmp.not = icmp eq i8 %call, 1
  br i1 %cmp.not, label %if.end5, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call6 = tail call i32 @rtl8712_hal_init(ptr noundef %padapter)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call6)
  %cmp7 = icmp eq i32 %call6, 1
  %. = zext i1 %cmp7 to i8
  %.19 = zext i1 %cmp7 to i32
  %3 = ptrtoint ptr %hw_init_completed to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %., ptr %hw_init_completed, align 8
  br label %return

return:                                           ; preds = %if.end5, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %entry.return_crit_edge ], [ 0, %if.end.return_crit_edge ], [ %.19, %if.end5 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_release_driver(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_write_mem(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @r8712_read16(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8712_write16(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !17, !19, !21, !22, !24, !26, !27, !28, !29, !31, !32, !33}
!llvm.module.flags = !{!34, !35, !36, !37, !38, !39, !40, !41}
!llvm.ident = !{!42}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/rtl8712/hal_init.c", i32 72, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @rtl871x_load_fw._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @rtl871x_load_fw._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/staging/rtl8712/hal_init.c", i32 76, i32 3}
!10 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @rtl871x_load_fw._entry.5, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @rtl871x_load_fw._entry_ptr.8, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_firmware344, !14, !"__UNIQUE_ID_firmware344", i1 false, i1 false}
!14 = !{!"../drivers/staging/rtl8712/hal_init.c", i32 79, i32 1}
!15 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/staging/rtl8712/hal_init.c", i32 333, i32 33}
!17 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/staging/rtl8712/hal_init.c", i32 339, i32 33}
!19 = !{ptr @init_completion.__key, !20, !"__key", i1 false, i1 false}
!20 = !{!"../include/linux/completion.h", i32 87, i32 2}
!21 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @firmware_file, !23, !"firmware_file", i1 false, i1 false}
!23 = !{!"../drivers/staging/rtl8712/hal_init.c", i32 64, i32 19}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/staging/rtl8712/hal_init.c", i32 39, i32 2}
!26 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @rtl871x_load_fw_fail._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @rtl871x_load_fw_fail._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/staging/rtl8712/hal_init.c", i32 84, i32 3}
!31 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @rtl871x_open_fw._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @rtl871x_open_fw._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{i32 1, !"wchar_size", i32 2}
!35 = !{i32 1, !"min_enum_size", i32 4}
!36 = !{i32 8, !"branch-target-enforcement", i32 0}
!37 = !{i32 8, !"sign-return-address", i32 0}
!38 = !{i32 8, !"sign-return-address-all", i32 0}
!39 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!40 = !{i32 7, !"uwtable", i32 1}
!41 = !{i32 7, !"frame-pointer", i32 2}
!42 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
