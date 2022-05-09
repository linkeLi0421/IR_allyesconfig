; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/intersil/orinoco/hw.c_pt.bc'
source_filename = "../drivers/net/wireless/intersil/orinoco/hw.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.anon.136 = type { i32, i32, i16, i16 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.comp_id = type { i16, i16, i16, i16 }
%struct.orinoco_private = type { ptr, ptr, ptr, ptr, %struct.ieee80211_supported_band, [14 x %struct.ieee80211_channel], [3 x i32], %struct.spinlock, i32, %struct.work_struct, %struct.tasklet_struct, %struct.list_head, i32, i16, %struct.work_struct, %struct.work_struct, ptr, %struct.iw_statistics, %struct.hermes, i16, i32, i32, i32, i16, i16, i32, i32, i16, i16, [4 x %struct.key_params], i32, [33 x i8], [33 x i8], [6 x i8], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, %struct.iw_spy_data, %struct.iw_public_data, i32, i32, i32, i32, ptr, %struct.work_struct, %struct.list_head, %struct.spinlock, ptr, i32, ptr, ptr, i8, ptr, ptr, %struct.notifier_block }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.104, i32 }
%union.anon.104 = type { ptr }
%struct.iw_statistics = type { i16, %struct.iw_quality, %struct.iw_discarded, %struct.iw_missed }
%struct.iw_quality = type { i8, i8, i8, i8 }
%struct.iw_discarded = type { i32, i32, i32, i32, i32 }
%struct.iw_missed = type { i32 }
%struct.hermes = type { ptr, i32, i16, i8, ptr, ptr }
%struct.key_params = type { ptr, ptr, i32, i32, i16, i32, i32 }
%struct.iw_spy_data = type { i32, [8 x [6 x i8]], [8 x %struct.iw_quality], %struct.iw_quality, %struct.iw_quality, [8 x i8] }
%struct.iw_public_data = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.hermes_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hermes_idstring = type { i16, [16 x i16] }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.105, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.128, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.105 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.128 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.orinoco_key = type { i16, [14 x i8] }
%struct.anon.137 = type { i16, [8 x i8], %struct.anon.138, [8 x i8] }
%struct.anon.138 = type { [16 x i8], [8 x i8], [8 x i8] }
%struct.hermes_multicast = type { [16 x [6 x i8]] }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.cfg80211_ssid = type { [32 x i8], i8 }
%struct.anon.139 = type { [6 x i8], i16 }

@determine_fw_capabilities._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 84, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Cannot read hardware identity: error %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"determine_fw_capabilities\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/net/wireless/intersil/orinoco/hw.c\00", [53 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@determine_fw_capabilities._entry_ptr = internal global ptr @determine_fw_capabilities._entry, section ".printk_index", align 4
@determine_fw_capabilities._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 93, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Hardware identity %04x:%04x:%04x:%04x\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@determine_fw_capabilities._entry_ptr.8 = internal global ptr @determine_fw_capabilities._entry.5, section ".printk_index", align 4
@determine_fw_capabilities._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 107, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Cannot read station identity: error %d\0A\00", [56 x i8] zeroinitializer }, align 32
@determine_fw_capabilities._entry_ptr.11 = internal global ptr @determine_fw_capabilities._entry.9, section ".printk_index", align 4
@determine_fw_capabilities._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 116, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Station identity  %04x:%04x:%04x:%04x\0A\00", [57 x i8] zeroinitializer }, align 32
@determine_fw_capabilities._entry_ptr.14 = internal global ptr @determine_fw_capabilities._entry.12, section ".printk_index", align 4
@determine_fw_capabilities._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.1, ptr @.str.2, i32 120, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Primary firmware is active\0A\00", [36 x i8] zeroinitializer }, align 32
@determine_fw_capabilities._entry_ptr.17 = internal global ptr @determine_fw_capabilities._entry.15, section ".printk_index", align 4
@determine_fw_capabilities._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.1, ptr @.str.2, i32 123, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Tertiary firmware is active\0A\00", [35 x i8] zeroinitializer }, align 32
@determine_fw_capabilities._entry_ptr.20 = internal global ptr @determine_fw_capabilities._entry.18, section ".printk_index", align 4
@determine_fw_capabilities._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.1, ptr @.str.2, i32 129, ptr @.str.23, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Unknown station ID, please report\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@determine_fw_capabilities._entry_ptr.24 = internal global ptr @determine_fw_capabilities._entry.21, section ".printk_index", align 4
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Lucent/Agere %d.%02d\00", [43 x i8] zeroinitializer }, align 32
@determine_fw_capabilities._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.1, ptr @.str.2, i32 185, ptr @.str.28, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"Error %d reading Symbol firmware info. Wildly guessing capabilities...\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@determine_fw_capabilities._entry_ptr.29 = internal global ptr @determine_fw_capabilities._entry.26, section ".printk_index", align 4
@.str.30 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Symbol %s\00", [22 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Intersil %d.%d.%d\00", [46 x i8] zeroinitializer }, align 32
@determine_fw_capabilities._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.1, ptr @.str.2, i32 257, ptr @.str.23, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"Intersil firmware earlier than v0.8.x - several features not supported\0A\00", [56 x i8] zeroinitializer }, align 32
@determine_fw_capabilities._entry_ptr.34 = internal global ptr @determine_fw_capabilities._entry.32, section ".printk_index", align 4
@determine_fw_capabilities._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.1, ptr @.str.2, i32 263, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Firmware determined as %s\0A\00", [37 x i8] zeroinitializer }, align 32
@determine_fw_capabilities._entry_ptr.37 = internal global ptr @determine_fw_capabilities._entry.35, section ".printk_index", align 4
@orinoco_hw_read_card_settings._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.2, i32 292, ptr @.str.28, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to read MAC address!\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"orinoco_hw_read_card_settings\00", [34 x i8] zeroinitializer }, align 32
@orinoco_hw_read_card_settings._entry_ptr = internal global ptr @orinoco_hw_read_card_settings._entry, section ".printk_index", align 4
@orinoco_hw_read_card_settings.__UNIQUE_ID_ddebug373 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.40, ptr @.str.39, ptr @.str.2, ptr @.str.41, i8 0, i8 74, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"orinoco\00", [24 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"MAC address %pM\0A\00", [47 x i8] zeroinitializer }, align 32
@orinoco_hw_read_card_settings._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.39, ptr @.str.2, i32 302, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to read station name\0A\00", [35 x i8] zeroinitializer }, align 32
@orinoco_hw_read_card_settings._entry_ptr.44 = internal global ptr @orinoco_hw_read_card_settings._entry.42, section ".printk_index", align 4
@orinoco_hw_read_card_settings.__UNIQUE_ID_ddebug378 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.40, ptr @.str.39, ptr @.str.2, ptr @.str.45, i8 0, i8 78, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Station name \22%s\22\0A\00", [45 x i8] zeroinitializer }, align 32
@orinoco_hw_read_card_settings._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.39, ptr @.str.2, i32 318, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to read channel list!\0A\00", [34 x i8] zeroinitializer }, align 32
@orinoco_hw_read_card_settings._entry_ptr.48 = internal global ptr @orinoco_hw_read_card_settings._entry.46, section ".printk_index", align 4
@orinoco_hw_read_card_settings._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.39, ptr @.str.2, i32 332, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to read RTS threshold!\0A\00", [33 x i8] zeroinitializer }, align 32
@orinoco_hw_read_card_settings._entry_ptr.51 = internal global ptr @orinoco_hw_read_card_settings._entry.49, section ".printk_index", align 4
@orinoco_hw_read_card_settings._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.39, ptr @.str.2, i32 346, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to read fragmentation settings!\0A\00", [56 x i8] zeroinitializer }, align 32
@orinoco_hw_read_card_settings._entry_ptr.54 = internal global ptr @orinoco_hw_read_card_settings._entry.52, section ".printk_index", align 4
@orinoco_hw_read_card_settings._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.39, ptr @.str.2, i32 359, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to read power management period!\0A\00", [55 x i8] zeroinitializer }, align 32
@orinoco_hw_read_card_settings._entry_ptr.57 = internal global ptr @orinoco_hw_read_card_settings._entry.55, section ".printk_index", align 4
@orinoco_hw_read_card_settings._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.39, ptr @.str.2, i32 367, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Failed to read power management timeout!\0A\00", [54 x i8] zeroinitializer }, align 32
@orinoco_hw_read_card_settings._entry_ptr.60 = internal global ptr @orinoco_hw_read_card_settings._entry.58, section ".printk_index", align 4
@orinoco_hw_read_card_settings._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.39, ptr @.str.2, i32 378, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to read preamble setup\0A\00", [33 x i8] zeroinitializer }, align 32
@orinoco_hw_read_card_settings._entry_ptr.63 = internal global ptr @orinoco_hw_read_card_settings._entry.61, section ".printk_index", align 4
@orinoco_hw_read_card_settings._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.39, ptr @.str.2, i32 387, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to read short retry limit\0A\00", [62 x i8] zeroinitializer }, align 32
@orinoco_hw_read_card_settings._entry_ptr.66 = internal global ptr @orinoco_hw_read_card_settings._entry.64, section ".printk_index", align 4
@orinoco_hw_read_card_settings._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.39, ptr @.str.2, i32 394, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to read long retry limit\0A\00", [63 x i8] zeroinitializer }, align 32
@orinoco_hw_read_card_settings._entry_ptr.69 = internal global ptr @orinoco_hw_read_card_settings._entry.67, section ".printk_index", align 4
@orinoco_hw_read_card_settings._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.39, ptr @.str.2, i32 401, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to read max retry lifetime\0A\00", [61 x i8] zeroinitializer }, align 32
@orinoco_hw_read_card_settings._entry_ptr.72 = internal global ptr @orinoco_hw_read_card_settings._entry.70, section ".printk_index", align 4
@orinoco_hw_allocate_fid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.74, ptr @.str.2, i32 424, ptr @.str.28, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"Firmware ALLOC bug detected (old Symbol firmware?). Work around %s\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"orinoco_hw_allocate_fid\00", [40 x i8] zeroinitializer }, align 32
@orinoco_hw_allocate_fid._entry_ptr = internal global ptr @orinoco_hw_allocate_fid._entry, section ".printk_index", align 4
@.str.75 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"failed!\00", [24 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ok.\00", [28 x i8] zeroinitializer }, align 32
@bitrate_table = internal constant { [8 x %struct.anon.136], [32 x i8] } { [8 x %struct.anon.136] [%struct.anon.136 { i32 110, i32 1, i16 3, i16 15 }, %struct.anon.136 { i32 10, i32 0, i16 1, i16 1 }, %struct.anon.136 { i32 10, i32 1, i16 1, i16 1 }, %struct.anon.136 { i32 20, i32 0, i16 2, i16 2 }, %struct.anon.136 { i32 20, i32 1, i16 6, i16 3 }, %struct.anon.136 { i32 55, i32 0, i16 4, i16 4 }, %struct.anon.136 { i32 55, i32 1, i16 7, i16 7 }, %struct.anon.136 { i32 110, i32 0, i16 5, i16 8 }], [32 x i8] zeroinitializer }, align 32
@orinoco_hw_program_rids._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.2, i32 471, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013%s: Error %d setting MAC address\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"orinoco_hw_program_rids\00", [40 x i8] zeroinitializer }, align 32
@orinoco_hw_program_rids._entry_ptr = internal global ptr @orinoco_hw_program_rids._entry, section ".printk_index", align 4
@orinoco_hw_program_rids._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.78, ptr @.str.2, i32 480, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013%s: Error %d setting port type\0A\00", [62 x i8] zeroinitializer }, align 32
@orinoco_hw_program_rids._entry_ptr.81 = internal global ptr @orinoco_hw_program_rids._entry.79, section ".printk_index", align 4
@orinoco_hw_program_rids._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.78, ptr @.str.2, i32 490, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013%s: Error %d setting channel %d\0A\00", [61 x i8] zeroinitializer }, align 32
@orinoco_hw_program_rids._entry_ptr.84 = internal global ptr @orinoco_hw_program_rids._entry.82, section ".printk_index", align 4
@orinoco_hw_program_rids._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.78, ptr @.str.2, i32 500, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\014%s: This firmware requires an ESSID in IBSS-Ad-Hoc mode.\0A\00", [36 x i8] zeroinitializer }, align 32
@orinoco_hw_program_rids._entry_ptr.87 = internal global ptr @orinoco_hw_program_rids._entry.85, section ".printk_index", align 4
@orinoco_hw_program_rids._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.78, ptr @.str.2, i32 514, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013%s: Error %d setting CREATEIBSS\0A\00", [61 x i8] zeroinitializer }, align 32
@orinoco_hw_program_rids._entry_ptr.90 = internal global ptr @orinoco_hw_program_rids._entry.88, section ".printk_index", align 4
@orinoco_hw_program_rids._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.78, ptr @.str.2, i32 523, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013%s: Error %d setting AP address\0A\00", [61 x i8] zeroinitializer }, align 32
@orinoco_hw_program_rids._entry_ptr.93 = internal global ptr @orinoco_hw_program_rids._entry.91, section ".printk_index", align 4
@orinoco_hw_program_rids._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.78, ptr @.str.2, i32 536, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013%s: Error %d setting OWNSSID\0A\00", [32 x i8] zeroinitializer }, align 32
@orinoco_hw_program_rids._entry_ptr.96 = internal global ptr @orinoco_hw_program_rids._entry.94, section ".printk_index", align 4
@orinoco_hw_program_rids._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.78, ptr @.str.2, i32 544, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013%s: Error %d setting DESIREDSSID\0A\00", [60 x i8] zeroinitializer }, align 32
@orinoco_hw_program_rids._entry_ptr.99 = internal global ptr @orinoco_hw_program_rids._entry.97, section ".printk_index", align 4
@orinoco_hw_program_rids._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.78, ptr @.str.2, i32 556, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013%s: Error %d setting nickname\0A\00", [63 x i8] zeroinitializer }, align 32
@orinoco_hw_program_rids._entry_ptr.102 = internal global ptr @orinoco_hw_program_rids._entry.100, section ".printk_index", align 4
@orinoco_hw_program_rids._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.78, ptr @.str.2, i32 568, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\014%s: Error %d setting SYSTEMSCALE. Disabling sensitivity control\0A\00", [61 x i8] zeroinitializer }, align 32
@orinoco_hw_program_rids._entry_ptr.105 = internal global ptr @orinoco_hw_program_rids._entry.103, section ".printk_index", align 4
@orinoco_hw_program_rids._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.78, ptr @.str.2, i32 579, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013%s: Error %d setting RTS threshold\0A\00", [58 x i8] zeroinitializer }, align 32
@orinoco_hw_program_rids._entry_ptr.108 = internal global ptr @orinoco_hw_program_rids._entry.106, section ".printk_index", align 4
@orinoco_hw_program_rids._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.78, ptr @.str.2, i32 594, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013%s: Error %d setting fragmentation\0A\00", [58 x i8] zeroinitializer }, align 32
@orinoco_hw_program_rids._entry_ptr.111 = internal global ptr @orinoco_hw_program_rids._entry.109, section ".printk_index", align 4
@orinoco_hw_program_rids._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.78, ptr @.str.2, i32 602, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013%s: Error %d setting bitrate\0A\00", [32 x i8] zeroinitializer }, align 32
@orinoco_hw_program_rids._entry_ptr.114 = internal global ptr @orinoco_hw_program_rids._entry.112, section ".printk_index", align 4
@orinoco_hw_program_rids._entry.115 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.78, ptr @.str.2, i32 613, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013%s: Error %d setting up PM\0A\00", [34 x i8] zeroinitializer }, align 32
@orinoco_hw_program_rids._entry_ptr.117 = internal global ptr @orinoco_hw_program_rids._entry.115, section ".printk_index", align 4
@orinoco_hw_program_rids._entry.118 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.78, ptr @.str.2, i32 622, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@orinoco_hw_program_rids._entry_ptr.119 = internal global ptr @orinoco_hw_program_rids._entry.118, section ".printk_index", align 4
@orinoco_hw_program_rids._entry.120 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.78, ptr @.str.2, i32 630, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@orinoco_hw_program_rids._entry_ptr.121 = internal global ptr @orinoco_hw_program_rids._entry.120, section ".printk_index", align 4
@orinoco_hw_program_rids._entry.122 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.78, ptr @.str.2, i32 638, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@orinoco_hw_program_rids._entry_ptr.123 = internal global ptr @orinoco_hw_program_rids._entry.122, section ".printk_index", align 4
@orinoco_hw_program_rids._entry.124 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.78, ptr @.str.2, i32 650, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013%s: Error %d setting preamble\0A\00", [63 x i8] zeroinitializer }, align 32
@orinoco_hw_program_rids._entry_ptr.126 = internal global ptr @orinoco_hw_program_rids._entry.124, section ".printk_index", align 4
@orinoco_hw_program_rids._entry.127 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.78, ptr @.str.2, i32 660, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013%s: Error %d activating encryption\0A\00", [58 x i8] zeroinitializer }, align 32
@orinoco_hw_program_rids._entry_ptr.129 = internal global ptr @orinoco_hw_program_rids._entry.127, section ".printk_index", align 4
@__orinoco_hw_set_bitrate._entry = internal constant %struct.pi_entry { ptr @.str.130, ptr @.str.131, ptr @.str.2, i32 715, ptr null, ptr null }, align 1
@.str.130 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013%s: BUG: Invalid bitrate mode %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"__orinoco_hw_set_bitrate\00", [39 x i8] zeroinitializer }, align 32
@__orinoco_hw_set_bitrate._entry_ptr = internal global ptr @__orinoco_hw_set_bitrate._entry, section ".printk_index", align 4
@orinoco_hw_get_act_bitrate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.132, ptr @.str.133, ptr @.str.2, i32 772, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\016%s: Unable to determine current bitrate (0x%04hx)\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"orinoco_hw_get_act_bitrate\00", [37 x i8] zeroinitializer }, align 32
@orinoco_hw_get_act_bitrate._entry_ptr = internal global ptr @orinoco_hw_get_act_bitrate._entry, section ".printk_index", align 4
@__orinoco_hw_setup_wepkeys._entry = internal constant %struct.pi_entry { ptr @.str.134, ptr @.str.135, ptr @.str.2, i32 866, ptr null, ptr null }, align 1
@.str.134 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013%s: BUG: Key %d has oversize length %d.\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"__orinoco_hw_setup_wepkeys\00", [37 x i8] zeroinitializer }, align 32
@__orinoco_hw_setup_wepkeys._entry_ptr = internal global ptr @__orinoco_hw_setup_wepkeys._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@orinoco_clear_tkip_key._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.136, ptr @.str.137, ptr @.str.2, i32 1067, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\014%s: Error %d clearing TKIP key %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"orinoco_clear_tkip_key\00", [41 x i8] zeroinitializer }, align 32
@orinoco_clear_tkip_key._entry_ptr = internal global ptr @orinoco_clear_tkip_key._entry, section ".printk_index", align 4
@__orinoco_hw_set_multicast_list._entry = internal constant %struct.pi_entry { ptr @.str.138, ptr @.str.139, ptr @.str.2, i32 1084, ptr null, ptr null }, align 1
@.str.138 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013%s: Error %d setting PROMISCUOUSMODE to 1.\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"__orinoco_hw_set_multicast_list\00", [32 x i8] zeroinitializer }, align 32
@__orinoco_hw_set_multicast_list._entry_ptr = internal global ptr @__orinoco_hw_set_multicast_list._entry, section ".printk_index", align 4
@__orinoco_hw_set_multicast_list._entry.140 = internal constant %struct.pi_entry { ptr @.str.141, ptr @.str.139, ptr @.str.2, i32 1109, ptr null, ptr null }, align 1
@.str.141 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013%s: Error %d setting multicast list.\0A\00", [56 x i8] zeroinitializer }, align 32
@__orinoco_hw_set_multicast_list._entry_ptr.142 = internal global ptr @__orinoco_hw_set_multicast_list._entry.140, section ".printk_index", align 4
@orinoco_hw_get_freq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.143, ptr @.str.144, ptr @.str.2, i32 1195, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\014%s: Channel out of range (%d)!\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"orinoco_hw_get_freq\00", [44 x i8] zeroinitializer }, align 32
@orinoco_hw_get_freq._entry_ptr = internal global ptr @orinoco_hw_get_freq._entry, section ".printk_index", align 4
@switch.table.orinoco_hw_get_act_bitrate = internal constant { [15 x i32], [36 x i8] } { [15 x i32] [i32 1, i32 3, i32 4, i32 5, i32 0, i32 0, i32 6, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 16, i64 21, i64 31, i64 33, i64 331]
@__sancov_gen_cov_switch_values.145 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.146 = internal global [6 x i64] [i64 4, i64 32, i64 10, i64 20, i64 55, i64 110]
@__sancov_gen_cov_switch_values.147 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.148 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.149 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.150 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.151 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.152 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.153 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.154 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 83, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 92, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 106, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 115, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 120, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 123, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 129, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 152, i32 35 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 184, i32 4 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 203, i32 35 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 242, i32 35 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 256, i32 4 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 263, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 292, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 296, i32 2 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 302, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 312, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 318, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 332, i32 3 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 346, i32 3 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 358, i32 4 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 366, i32 4 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 378, i32 4 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 387, i32 3 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 394, i32 3 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 401, i32 3 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 422, i32 3 }
@___asan_gen_.338 = private unnamed_addr constant [14 x i8] c"bitrate_table\00", align 1
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 33, i32 3 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 470, i32 3 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 479, i32 3 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 489, i32 4 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 499, i32 4 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 513, i32 4 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 522, i32 3 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 535, i32 3 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 543, i32 3 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 555, i32 3 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 566, i32 4 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 578, i32 3 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 593, i32 3 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 601, i32 3 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 612, i32 4 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 621, i32 4 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 629, i32 4 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 637, i32 4 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 649, i32 4 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 659, i32 4 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 714, i32 3 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 771, i32 4 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 865, i32 5 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 1066, i32 3 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 1083, i32 4 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 1108, i32 4 }
@___asan_gen_.488 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.494 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.495 = private constant [46 x i8] c"../drivers/net/wireless/intersil/orinoco/hw.c\00", align 1
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.495, i32 1194, i32 3 }
@___asan_gen_.497 = private unnamed_addr constant [40 x i8] c"switch.table.orinoco_hw_get_act_bitrate\00", align 1
@llvm.compiler.used = appending global [167 x ptr] [ptr @__orinoco_hw_set_bitrate._entry, ptr @__orinoco_hw_set_bitrate._entry_ptr, ptr @__orinoco_hw_set_multicast_list._entry, ptr @__orinoco_hw_set_multicast_list._entry.140, ptr @__orinoco_hw_set_multicast_list._entry_ptr, ptr @__orinoco_hw_set_multicast_list._entry_ptr.142, ptr @__orinoco_hw_setup_wepkeys._entry, ptr @__orinoco_hw_setup_wepkeys._entry_ptr, ptr @determine_fw_capabilities._entry, ptr @determine_fw_capabilities._entry.12, ptr @determine_fw_capabilities._entry.15, ptr @determine_fw_capabilities._entry.18, ptr @determine_fw_capabilities._entry.21, ptr @determine_fw_capabilities._entry.26, ptr @determine_fw_capabilities._entry.32, ptr @determine_fw_capabilities._entry.35, ptr @determine_fw_capabilities._entry.5, ptr @determine_fw_capabilities._entry.9, ptr @determine_fw_capabilities._entry_ptr, ptr @determine_fw_capabilities._entry_ptr.11, ptr @determine_fw_capabilities._entry_ptr.14, ptr @determine_fw_capabilities._entry_ptr.17, ptr @determine_fw_capabilities._entry_ptr.20, ptr @determine_fw_capabilities._entry_ptr.24, ptr @determine_fw_capabilities._entry_ptr.29, ptr @determine_fw_capabilities._entry_ptr.34, ptr @determine_fw_capabilities._entry_ptr.37, ptr @determine_fw_capabilities._entry_ptr.8, ptr @orinoco_clear_tkip_key._entry, ptr @orinoco_clear_tkip_key._entry_ptr, ptr @orinoco_hw_allocate_fid._entry, ptr @orinoco_hw_allocate_fid._entry_ptr, ptr @orinoco_hw_get_act_bitrate._entry, ptr @orinoco_hw_get_act_bitrate._entry_ptr, ptr @orinoco_hw_get_freq._entry, ptr @orinoco_hw_get_freq._entry_ptr, ptr @orinoco_hw_program_rids._entry, ptr @orinoco_hw_program_rids._entry.100, ptr @orinoco_hw_program_rids._entry.103, ptr @orinoco_hw_program_rids._entry.106, ptr @orinoco_hw_program_rids._entry.109, ptr @orinoco_hw_program_rids._entry.112, ptr @orinoco_hw_program_rids._entry.115, ptr @orinoco_hw_program_rids._entry.118, ptr @orinoco_hw_program_rids._entry.120, ptr @orinoco_hw_program_rids._entry.122, ptr @orinoco_hw_program_rids._entry.124, ptr @orinoco_hw_program_rids._entry.127, ptr @orinoco_hw_program_rids._entry.79, ptr @orinoco_hw_program_rids._entry.82, ptr @orinoco_hw_program_rids._entry.85, ptr @orinoco_hw_program_rids._entry.88, ptr @orinoco_hw_program_rids._entry.91, ptr @orinoco_hw_program_rids._entry.94, ptr @orinoco_hw_program_rids._entry.97, ptr @orinoco_hw_program_rids._entry_ptr, ptr @orinoco_hw_program_rids._entry_ptr.102, ptr @orinoco_hw_program_rids._entry_ptr.105, ptr @orinoco_hw_program_rids._entry_ptr.108, ptr @orinoco_hw_program_rids._entry_ptr.111, ptr @orinoco_hw_program_rids._entry_ptr.114, ptr @orinoco_hw_program_rids._entry_ptr.117, ptr @orinoco_hw_program_rids._entry_ptr.119, ptr @orinoco_hw_program_rids._entry_ptr.121, ptr @orinoco_hw_program_rids._entry_ptr.123, ptr @orinoco_hw_program_rids._entry_ptr.126, ptr @orinoco_hw_program_rids._entry_ptr.129, ptr @orinoco_hw_program_rids._entry_ptr.81, ptr @orinoco_hw_program_rids._entry_ptr.84, ptr @orinoco_hw_program_rids._entry_ptr.87, ptr @orinoco_hw_program_rids._entry_ptr.90, ptr @orinoco_hw_program_rids._entry_ptr.93, ptr @orinoco_hw_program_rids._entry_ptr.96, ptr @orinoco_hw_program_rids._entry_ptr.99, ptr @orinoco_hw_read_card_settings._entry, ptr @orinoco_hw_read_card_settings._entry.42, ptr @orinoco_hw_read_card_settings._entry.46, ptr @orinoco_hw_read_card_settings._entry.49, ptr @orinoco_hw_read_card_settings._entry.52, ptr @orinoco_hw_read_card_settings._entry.55, ptr @orinoco_hw_read_card_settings._entry.58, ptr @orinoco_hw_read_card_settings._entry.61, ptr @orinoco_hw_read_card_settings._entry.64, ptr @orinoco_hw_read_card_settings._entry.67, ptr @orinoco_hw_read_card_settings._entry.70, ptr @orinoco_hw_read_card_settings._entry_ptr, ptr @orinoco_hw_read_card_settings._entry_ptr.44, ptr @orinoco_hw_read_card_settings._entry_ptr.48, ptr @orinoco_hw_read_card_settings._entry_ptr.51, ptr @orinoco_hw_read_card_settings._entry_ptr.54, ptr @orinoco_hw_read_card_settings._entry_ptr.57, ptr @orinoco_hw_read_card_settings._entry_ptr.60, ptr @orinoco_hw_read_card_settings._entry_ptr.63, ptr @orinoco_hw_read_card_settings._entry_ptr.66, ptr @orinoco_hw_read_card_settings._entry_ptr.69, ptr @orinoco_hw_read_card_settings._entry_ptr.72, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.43, ptr @.str.45, ptr @.str.47, ptr @.str.50, ptr @.str.53, ptr @.str.56, ptr @.str.59, ptr @.str.62, ptr @.str.65, ptr @.str.68, ptr @.str.71, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @bitrate_table, ptr @.str.77, ptr @.str.78, ptr @.str.80, ptr @.str.83, ptr @.str.86, ptr @.str.89, ptr @.str.92, ptr @.str.95, ptr @.str.98, ptr @.str.101, ptr @.str.104, ptr @.str.107, ptr @.str.110, ptr @.str.113, ptr @.str.116, ptr @.str.125, ptr @.str.128, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.141, ptr @.str.143, ptr @.str.144, ptr @switch.table.orinoco_hw_get_act_bitrate], section "llvm.metadata"
@0 = internal global [115 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @determine_fw_capabilities._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @determine_fw_capabilities._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @determine_fw_capabilities._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @determine_fw_capabilities._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @determine_fw_capabilities._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @determine_fw_capabilities._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @determine_fw_capabilities._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @determine_fw_capabilities._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @determine_fw_capabilities._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @determine_fw_capabilities._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orinoco_hw_read_card_settings._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orinoco_hw_read_card_settings._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orinoco_hw_read_card_settings._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orinoco_hw_read_card_settings._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orinoco_hw_read_card_settings._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orinoco_hw_read_card_settings._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orinoco_hw_read_card_settings._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orinoco_hw_read_card_settings._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orinoco_hw_read_card_settings._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orinoco_hw_read_card_settings._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orinoco_hw_read_card_settings._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orinoco_hw_allocate_fid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bitrate_table to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orinoco_hw_program_rids._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orinoco_hw_program_rids._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orinoco_hw_program_rids._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orinoco_hw_program_rids._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orinoco_hw_program_rids._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orinoco_hw_program_rids._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orinoco_hw_program_rids._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orinoco_hw_program_rids._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orinoco_hw_program_rids._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orinoco_hw_program_rids._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orinoco_hw_program_rids._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orinoco_hw_program_rids._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orinoco_hw_program_rids._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orinoco_hw_program_rids._entry.115 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orinoco_hw_program_rids._entry.118 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orinoco_hw_program_rids._entry.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orinoco_hw_program_rids._entry.122 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orinoco_hw_program_rids._entry.124 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orinoco_hw_program_rids._entry.127 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orinoco_hw_get_act_bitrate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orinoco_clear_tkip_key._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orinoco_hw_get_freq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.orinoco_hw_get_act_bitrate to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @determine_fw_capabilities(ptr noundef %priv, ptr noundef %fw_name, i32 noundef %fw_name_len, ptr noundef writeonly %hw_ver) local_unnamed_addr #0 align 64 {
entry:
  %nic_id = alloca %struct.comp_id, align 8
  %sta_id = alloca %struct.comp_id, align 8
  %tmp = alloca [15 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %hw2 = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %nic_id) #8
  %2 = getelementptr inbounds %struct.comp_id, ptr %nic_id, i32 0, i32 1
  %3 = getelementptr inbounds %struct.comp_id, ptr %nic_id, i32 0, i32 2
  %4 = getelementptr inbounds %struct.comp_id, ptr %nic_id, i32 0, i32 3
  %5 = ptrtoint ptr %nic_id to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 -1, ptr %nic_id, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sta_id) #8
  %6 = getelementptr inbounds %struct.comp_id, ptr %sta_id, i32 0, i32 1
  %7 = getelementptr inbounds %struct.comp_id, ptr %sta_id, i32 0, i32 2
  %8 = getelementptr inbounds %struct.comp_id, ptr %sta_id, i32 0, i32 3
  %9 = ptrtoint ptr %sta_id to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 -1, ptr %sta_id, align 8
  call void @llvm.lifetime.start.p0(i64 15, ptr nonnull %tmp) #8
  %10 = getelementptr inbounds [15 x i8], ptr %tmp, i32 0, i32 1
  %11 = getelementptr inbounds [15 x i8], ptr %tmp, i32 0, i32 3
  %12 = getelementptr inbounds [15 x i8], ptr %tmp, i32 0, i32 4
  %13 = getelementptr inbounds [15 x i8], ptr %tmp, i32 0, i32 6
  %14 = getelementptr inbounds [15 x i8], ptr %tmp, i32 0, i32 7
  %15 = getelementptr inbounds [15 x i8], ptr %tmp, i32 0, i32 14
  %ops = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 18, i32 4
  %16 = call ptr @memset(ptr %tmp, i32 255, i32 15)
  %17 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ops, align 4
  %read_ltv_pr = getelementptr inbounds %struct.hermes_ops, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %read_ltv_pr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %read_ltv_pr, align 4
  %call = call i32 %20(ptr noundef %hw2, i32 noundef 0, i16 noundef zeroext -757, i32 noundef 8, ptr noundef null, ptr noundef nonnull %nic_id) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str, i32 noundef %call) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %21 = ptrtoint ptr %nic_id to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %nic_id, align 8
  %23 = call i16 @llvm.bswap.i16(i16 %22) #8
  %24 = ptrtoint ptr %nic_id to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %nic_id, align 8
  %25 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %2, align 2
  %27 = call i16 @llvm.bswap.i16(i16 %26) #8
  %28 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %2, align 2
  %29 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %3, align 4
  %31 = call i16 @llvm.bswap.i16(i16 %30) #8
  %32 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %3, align 4
  %33 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %4, align 2
  %35 = call i16 @llvm.bswap.i16(i16 %34) #8
  %36 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %35, ptr %4, align 2
  %conv = zext i16 %23 to i32
  %conv8 = zext i16 %27 to i32
  %conv10 = zext i16 %31 to i32
  %conv12 = zext i16 %35 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.6, i32 noundef %conv, i32 noundef %conv8, i32 noundef %conv10, i32 noundef %conv12) #11
  %tobool13.not = icmp eq ptr %hw_ver, null
  br i1 %tobool13.not, label %if.end.if.end30_crit_edge, label %if.then14

if.end.if.end30_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %nic_id to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %nic_id, align 8
  %and = zext i16 %38 to i32
  %shl = shl i32 %and, 24
  %39 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %2, align 2
  %41 = and i16 %40, 255
  %and19 = zext i16 %41 to i32
  %shl20 = shl nuw nsw i32 %and19, 16
  %or = or i32 %shl20, %shl
  %42 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %3, align 4
  %44 = shl i16 %43, 8
  %shl24 = zext i16 %44 to i32
  %or25 = or i32 %or, %shl24
  %45 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %4, align 2
  %47 = and i16 %46, 255
  %and28 = zext i16 %47 to i32
  %or29 = or i32 %or25, %and28
  %48 = ptrtoint ptr %hw_ver to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %or29, ptr %hw_ver, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then14, %if.end.if.end30_crit_edge
  %49 = ptrtoint ptr %nic_id to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %nic_id, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %50)
  %cmp.i = icmp sgt i16 %50, -1
  br i1 %cmp.i, label %if.end30.determine_firmware_type.exit_crit_edge, label %if.else.i

if.end30.determine_firmware_type.exit_crit_edge:  ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %determine_firmware_type.exit

if.else.i:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %50)
  %cmp4.i = icmp eq i16 %50, -32768
  br i1 %cmp4.i, label %land.lhs.true.i, label %if.else.i.if.else10.i_crit_edge

if.else.i.if.else10.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else10.i

land.lhs.true.i:                                  ; preds = %if.else.i
  %51 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %52)
  %cmp7.i = icmp eq i16 %52, 0
  br i1 %cmp7.i, label %land.lhs.true.i.determine_firmware_type.exit_crit_edge, label %land.lhs.true.i.if.else10.i_crit_edge

land.lhs.true.i.if.else10.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else10.i

land.lhs.true.i.determine_firmware_type.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %determine_firmware_type.exit

if.else10.i:                                      ; preds = %land.lhs.true.i.if.else10.i_crit_edge, %if.else.i.if.else10.i_crit_edge
  br label %determine_firmware_type.exit

determine_firmware_type.exit:                     ; preds = %if.else10.i, %land.lhs.true.i.determine_firmware_type.exit_crit_edge, %if.end30.determine_firmware_type.exit_crit_edge
  %retval.0.i = phi i32 [ 1, %if.else10.i ], [ 0, %if.end30.determine_firmware_type.exit_crit_edge ], [ 2, %land.lhs.true.i.determine_firmware_type.exit_crit_edge ]
  %firmware_type = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 20
  %53 = ptrtoint ptr %firmware_type to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %retval.0.i, ptr %firmware_type, align 4
  %54 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ops, align 4
  %read_ltv_pr33 = getelementptr inbounds %struct.hermes_ops, ptr %55, i32 0, i32 5
  %56 = ptrtoint ptr %read_ltv_pr33 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %read_ltv_pr33, align 4
  %call34 = call i32 %57(ptr noundef %hw2, i32 noundef 0, i16 noundef zeroext -736, i32 noundef 8, ptr noundef null, ptr noundef nonnull %sta_id) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end40, label %do.end39

do.end39:                                         ; preds = %determine_firmware_type.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.10, i32 noundef %call34) #11
  br label %cleanup

if.end40:                                         ; preds = %determine_firmware_type.exit
  %58 = ptrtoint ptr %sta_id to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %sta_id, align 8
  %60 = call i16 @llvm.bswap.i16(i16 %59) #8
  %61 = ptrtoint ptr %sta_id to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %60, ptr %sta_id, align 8
  %62 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %6, align 2
  %64 = call i16 @llvm.bswap.i16(i16 %63) #8
  %65 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %64, ptr %6, align 2
  %66 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %7, align 4
  %68 = call i16 @llvm.bswap.i16(i16 %67) #8
  %69 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %68, ptr %7, align 4
  %70 = ptrtoint ptr %8 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %8, align 2
  %72 = call i16 @llvm.bswap.i16(i16 %71) #8
  %73 = ptrtoint ptr %8 to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %72, ptr %8, align 2
  %conv49 = zext i16 %60 to i32
  %conv51 = zext i16 %64 to i32
  %conv53 = zext i16 %68 to i32
  %conv55 = zext i16 %72 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.13, i32 noundef %conv49, i32 noundef %conv51, i32 noundef %conv53, i32 noundef %conv55) #11
  %74 = ptrtoint ptr %sta_id to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %sta_id, align 8
  %76 = zext i16 %75 to i64
  call void @__sanitizer_cov_trace_switch(i64 %76, ptr @__sancov_gen_cov_switch_values)
  switch i16 %75, label %do.end68 [
    i16 21, label %do.end60
    i16 331, label %do.end64
    i16 31, label %if.end40.sw.epilog_crit_edge
    i16 33, label %if.end40.sw.epilog_crit_edge538
  ]

if.end40.sw.epilog_crit_edge538:                  ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end40.sw.epilog_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.end60:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.16) #11
  br label %cleanup

do.end64:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.19) #11
  br label %cleanup

do.end68:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_notice(ptr noundef %1, ptr noundef nonnull @.str.22) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end68, %if.end40.sw.epilog_crit_edge, %if.end40.sw.epilog_crit_edge538
  %has_sensitivity = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 24
  %77 = ptrtoint ptr %has_sensitivity to i32
  call void @__asan_load2_noabort(i32 %77)
  %bf.load = load i16, ptr %has_sensitivity, align 2
  %bf.set = and i16 %bf.load, 1159
  %bf.set80 = or i16 %bf.set, -16128
  store i16 %bf.set80, ptr %has_sensitivity, align 2
  %78 = ptrtoint ptr %firmware_type to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %firmware_type, align 4
  %80 = zext i32 %79 to i64
  call void @__sanitizer_cov_trace_switch(i64 %80, ptr @__sancov_gen_cov_switch_values.145)
  switch i32 %79, label %sw.epilog.sw.epilog406_crit_edge [
    i32 0, label %sw.bb100
    i32 2, label %sw.bb197
    i32 1, label %sw.bb332
  ]

sw.epilog.sw.epilog406_crit_edge:                 ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog406

sw.bb100:                                         ; preds = %sw.epilog
  %tobool101.not = icmp eq ptr %fw_name, null
  br i1 %tobool101.not, label %sw.bb100.if.end108_crit_edge, label %if.then102

sw.bb100.if.end108_crit_edge:                     ; preds = %sw.bb100
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end108

if.then102:                                       ; preds = %sw.bb100
  call void @__sanitizer_cov_trace_pc() #10
  %81 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %7, align 4
  %conv104 = zext i16 %82 to i32
  %83 = ptrtoint ptr %8 to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %8, align 2
  %conv106 = zext i16 %84 to i32
  %call107 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %fw_name, i32 noundef %fw_name_len, ptr noundef nonnull @.str.25, i32 noundef %conv104, i32 noundef %conv106)
  br label %if.end108

if.end108:                                        ; preds = %if.then102, %sw.bb100.if.end108_crit_edge
  %85 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %7, align 4
  %conv110 = zext i16 %86 to i32
  %shl111 = shl nuw i32 %conv110, 16
  %87 = ptrtoint ptr %8 to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %8, align 2
  %conv113 = zext i16 %88 to i32
  %or114 = or i32 %shl111, %conv113
  call void @__sanitizer_cov_trace_const_cmp4(i32 393221, i32 %or114)
  %cmp = icmp ugt i32 %or114, 393221
  %89 = ptrtoint ptr %has_sensitivity to i32
  call void @__asan_load2_noabort(i32 %89)
  %bf.load117 = load i16, ptr %has_sensitivity, align 2
  %bf.shl = select i1 %cmp, i16 -32768, i16 0
  %bf.clear118 = and i16 %bf.load117, 17157
  call void @__sanitizer_cov_trace_const_cmp4(i32 262175, i32 %or114)
  %cmp120 = icmp ugt i32 %or114, 262175
  %bf.shl125 = select i1 %cmp120, i16 8192, i16 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 393215, i32 %or114)
  %cmp133 = icmp ugt i32 %or114, 393215
  %bf.shl138 = select i1 %cmp133, i16 2048, i16 0
  %bf.shl146 = select i1 %cmp120, i16 1024, i16 0
  %bf.set119 = or i16 %bf.clear118, %bf.shl
  %bf.set127 = or i16 %bf.set119, %bf.shl125
  %bf.set132 = or i16 %bf.set127, %bf.shl138
  %bf.set140 = or i16 %bf.set132, %bf.shl146
  %ibss_port = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 21
  %90 = ptrtoint ptr %ibss_port to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 1, ptr %ibss_port, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 524297, i32 %or114)
  %cmp150 = icmp ugt i32 %or114, 524297
  %bf.clear155 = or i16 %bf.set140, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 524287, i32 %or114)
  %cmp162 = icmp ugt i32 %or114, 524287
  %bf.shl166 = select i1 %cmp162, i16 2, i16 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 589823, i32 %or114)
  %cmp170 = icmp ugt i32 %or114, 589823
  %bf.shl175 = select i1 %cmp170, i16 64, i16 0
  %bf.shl184 = select i1 %cmp170, i16 32, i16 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 589865, i32 %or114)
  %cmp188 = icmp ugt i32 %or114, 589865
  %bf.shl193 = select i1 %cmp188, i16 16, i16 0
  %bf.set156 = select i1 %cmp150, i16 136, i16 8
  %bf.set161 = or i16 %bf.set156, %bf.shl166
  %bf.set168 = or i16 %bf.set161, %bf.shl175
  %bf.set177 = or i16 %bf.set168, %bf.shl184
  %bf.clear194 = or i16 %bf.set177, %bf.shl193
  %bf.set195 = or i16 %bf.clear194, %bf.clear155
  %91 = ptrtoint ptr %has_sensitivity to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 %bf.set195, ptr %has_sensitivity, align 2
  br label %sw.epilog406

sw.bb197:                                         ; preds = %sw.epilog
  %92 = call ptr @memset(ptr %tmp, i32 0, i32 15)
  %93 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %ops, align 4
  %read_ltv_pr199 = getelementptr inbounds %struct.hermes_ops, ptr %94, i32 0, i32 5
  %95 = ptrtoint ptr %read_ltv_pr199 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %read_ltv_pr199, align 4
  %call200 = call i32 %96(ptr noundef %hw2, i32 noundef 0, i16 noundef zeroext -732, i32 noundef 14, ptr noundef null, ptr noundef nonnull %tmp) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call200)
  %tobool201.not = icmp eq i32 %call200, 0
  br i1 %tobool201.not, label %if.else, label %do.end205

do.end205:                                        ; preds = %sw.bb197
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.27, i32 noundef %call200) #11
  %97 = ptrtoint ptr %tmp to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 0, ptr %tmp, align 2
  br label %if.end229

if.else:                                          ; preds = %sw.bb197
  call void @__sanitizer_cov_trace_pc() #10
  %98 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %10, align 1
  %conv207 = zext i8 %99 to i32
  %sub = shl nuw nsw i32 %conv207, 16
  %shl208 = add nsw i32 %sub, -3145728
  %100 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %11, align 1
  %conv210 = zext i8 %101 to i32
  %sub211 = shl nuw nsw i32 %conv210, 12
  %shl212 = add nsw i32 %sub211, -196608
  %or213 = or i32 %shl212, %shl208
  %102 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %12, align 2
  %conv215 = zext i8 %103 to i32
  %sub216 = shl nuw nsw i32 %conv215, 8
  %shl217 = add nsw i32 %sub216, -12288
  %or218 = or i32 %or213, %shl217
  %104 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %13, align 2
  %conv220 = zext i8 %105 to i32
  %sub221 = shl nuw nsw i32 %conv220, 4
  %shl222 = add nsw i32 %sub221, -768
  %or223 = or i32 %or218, %shl222
  %106 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %14, align 1
  %conv225 = zext i8 %107 to i32
  %sub226 = add nsw i32 %conv225, -48
  %or227 = or i32 %or223, %sub226
  %108 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 0, ptr %15, align 2
  br label %if.end229

if.end229:                                        ; preds = %if.else, %do.end205
  %firmver.0 = phi i32 [ 0, %do.end205 ], [ %or227, %if.else ]
  %tobool230.not = icmp eq ptr %fw_name, null
  br i1 %tobool230.not, label %if.end229.if.end234_crit_edge, label %if.then231

if.end229.if.end234_crit_edge:                    ; preds = %if.end229
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end234

if.then231:                                       ; preds = %if.end229
  call void @__sanitizer_cov_trace_pc() #10
  %call233 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %fw_name, i32 noundef %fw_name_len, ptr noundef nonnull @.str.30, ptr noundef nonnull %tmp)
  br label %if.end234

if.end234:                                        ; preds = %if.then231, %if.end229.if.end234_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 131071, i32 %firmver.0)
  %cmp235 = icmp ugt i32 %firmver.0, 131071
  %109 = ptrtoint ptr %has_sensitivity to i32
  call void @__asan_load2_noabort(i32 %109)
  %bf.load238 = load i16, ptr %has_sensitivity, align 2
  %bf.shl240 = select i1 %cmp235, i16 -32768, i16 0
  %bf.clear241 = and i16 %bf.load238, 18935
  call void @__sanitizer_cov_trace_const_cmp4(i32 86033, i32 %firmver.0)
  %cmp244 = icmp ugt i32 %firmver.0, 86033
  %bf.shl249 = select i1 %cmp244, i16 8192, i16 0
  %bf.shl258 = select i1 %cmp235, i16 4096, i16 0
  %bf.set242 = or i16 %bf.shl249, %bf.shl240
  %bf.set251 = or i16 %bf.set242, %bf.shl258
  %bf.set260 = or i16 %bf.set251, %bf.clear241
  %110 = and i32 %firmver.0, -8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 131072, i32 %110)
  %111 = icmp eq i32 %110, 131072
  %112 = add i32 %firmver.0, -167936
  call void @__sanitizer_cov_trace_const_cmp4(i32 28672, i32 %112)
  %113 = icmp ult i32 %112, 28672
  %or.cond = or i1 %111, %113
  call void @__sanitizer_cov_trace_const_cmp4(i32 200703, i32 %firmver.0)
  %cmp271 = icmp ugt i32 %firmver.0, 200703
  %114 = select i1 %or.cond, i1 true, i1 %cmp271
  %115 = select i1 %114, i16 1024, i16 0
  %bf.shl285 = select i1 %cmp235, i16 512, i16 0
  %bf.set278 = or i16 %115, %bf.shl285
  %bf.set287 = or i16 %bf.set278, %bf.set260
  %ibss_port289 = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 21
  %116 = ptrtoint ptr %ibss_port289 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 4, ptr %ibss_port289, align 4
  %stop_fw = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 3
  %117 = ptrtoint ptr %stop_fw to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %stop_fw, align 4
  %cmp290.not = icmp eq ptr %118, null
  %bf.shl295 = select i1 %cmp290.not, i16 0, i16 8
  %bf.set297 = or i16 %bf.set287, %bf.shl295
  call void @__sanitizer_cov_trace_const_cmp4(i32 151571, i32 %firmver.0)
  %cmp299 = icmp eq i32 %firmver.0, 151571
  br i1 %cmp299, label %lor.rhs316.thread532, label %lor.rhs301

lor.rhs316.thread532:                             ; preds = %if.end234
  call void @__sanitizer_cov_trace_pc() #10
  %bf.set312525535 = or i16 %bf.set297, 4
  br label %lor.end323

lor.rhs301:                                       ; preds = %if.end234
  call void @__sanitizer_cov_trace_const_cmp4(i32 196607, i32 %firmver.0)
  %cmp302 = icmp ugt i32 %firmver.0, 196607
  br i1 %cmp302, label %lor.end306, label %lor.rhs316

lor.end306:                                       ; preds = %lor.rhs301
  call void @__sanitizer_cov_trace_const_cmp4(i32 200705, i32 %firmver.0)
  %cmp304 = icmp ult i32 %firmver.0, 200705
  %phi.sel521 = select i1 %cmp304, i16 4, i16 0
  %bf.clear311 = and i16 %bf.set297, -5
  %bf.set312 = or i16 %bf.clear311, %phi.sel521
  call void @__sanitizer_cov_trace_const_cmp4(i32 200704, i32 %firmver.0)
  %cmp314 = icmp ugt i32 %firmver.0, 200704
  br i1 %cmp314, label %lor.end306.lor.end323_crit_edge, label %lor.end306.land.rhs319_crit_edge

lor.end306.land.rhs319_crit_edge:                 ; preds = %lor.end306
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs319

lor.end306.lor.end323_crit_edge:                  ; preds = %lor.end306
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.end323

lor.rhs316:                                       ; preds = %lor.rhs301
  %bf.clear311524 = and i16 %bf.set297, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 168022, i32 %firmver.0)
  %cmp317 = icmp ugt i32 %firmver.0, 168022
  br i1 %cmp317, label %lor.rhs316.land.rhs319_crit_edge, label %lor.rhs316.lor.end323_crit_edge

lor.rhs316.lor.end323_crit_edge:                  ; preds = %lor.rhs316
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.end323

lor.rhs316.land.rhs319_crit_edge:                 ; preds = %lor.rhs316
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs319

land.rhs319:                                      ; preds = %lor.rhs316.land.rhs319_crit_edge, %lor.end306.land.rhs319_crit_edge
  %bf.set312527531 = phi i16 [ %bf.clear311524, %lor.rhs316.land.rhs319_crit_edge ], [ %bf.set312, %lor.end306.land.rhs319_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 196608, i32 %firmver.0)
  %cmp320 = icmp ult i32 %firmver.0, 196608
  %phi.sel522 = select i1 %cmp320, i16 128, i16 0
  br label %lor.end323

lor.end323:                                       ; preds = %land.rhs319, %lor.rhs316.lor.end323_crit_edge, %lor.end306.lor.end323_crit_edge, %lor.rhs316.thread532
  %bf.set312528 = phi i16 [ %bf.set312, %lor.end306.lor.end323_crit_edge ], [ %bf.clear311524, %lor.rhs316.lor.end323_crit_edge ], [ %bf.set312527531, %land.rhs319 ], [ %bf.set312525535, %lor.rhs316.thread532 ]
  %119 = phi i16 [ 128, %lor.end306.lor.end323_crit_edge ], [ 0, %lor.rhs316.lor.end323_crit_edge ], [ %phi.sel522, %land.rhs319 ], [ 0, %lor.rhs316.thread532 ]
  %bf.clear329 = and i16 %bf.set312528, -129
  %bf.set330 = or i16 %bf.clear329, %119
  %120 = ptrtoint ptr %has_sensitivity to i32
  call void @__asan_store2_noabort(i32 %120)
  store i16 %bf.set330, ptr %has_sensitivity, align 2
  br label %sw.epilog406

sw.bb332:                                         ; preds = %sw.epilog
  %tobool333.not = icmp eq ptr %fw_name, null
  br i1 %tobool333.not, label %sw.bb332.if.end342_crit_edge, label %if.then334

sw.bb332.if.end342_crit_edge:                     ; preds = %sw.bb332
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end342

if.then334:                                       ; preds = %sw.bb332
  call void @__sanitizer_cov_trace_pc() #10
  %121 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %7, align 4
  %conv336 = zext i16 %122 to i32
  %123 = ptrtoint ptr %8 to i32
  call void @__asan_load2_noabort(i32 %123)
  %124 = load i16, ptr %8, align 2
  %conv338 = zext i16 %124 to i32
  %125 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %6, align 2
  %conv340 = zext i16 %126 to i32
  %call341 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %fw_name, i32 noundef %fw_name_len, ptr noundef nonnull @.str.31, i32 noundef %conv336, i32 noundef %conv338, i32 noundef %conv340)
  br label %if.end342

if.end342:                                        ; preds = %if.then334, %sw.bb332.if.end342_crit_edge
  %127 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %7, align 4
  %conv344 = zext i16 %128 to i32
  %shl345 = shl nuw i32 %conv344, 16
  %129 = ptrtoint ptr %8 to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %8, align 2
  %conv347 = zext i16 %130 to i32
  %shl348 = shl nuw nsw i32 %conv347, 8
  %or349 = or i32 %shl348, %shl345
  %131 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %6, align 2
  %conv351 = zext i16 %132 to i32
  %or352 = or i32 %or349, %conv351
  call void @__sanitizer_cov_trace_const_cmp4(i32 1791, i32 %or352)
  %cmp353 = icmp ugt i32 %or352, 1791
  %133 = ptrtoint ptr %has_sensitivity to i32
  call void @__asan_load2_noabort(i32 %133)
  %bf.load356 = load i16, ptr %has_sensitivity, align 2
  %bf.shl358 = select i1 %cmp353, i16 -32768, i16 0
  %bf.clear359 = and i16 %bf.load356, 19327
  %bf.set360 = or i16 %bf.shl358, %bf.clear359
  call void @__sanitizer_cov_trace_const_cmp4(i32 2047, i32 %or352)
  %cmp362 = icmp ugt i32 %or352, 2047
  %bf.shl367 = select i1 %cmp362, i16 8192, i16 0
  %bf.set369 = or i16 %bf.set360, %bf.shl367
  %bf.shl374 = select i1 %cmp362, i16 4096, i16 0
  %bf.set376 = or i16 %bf.set369, %bf.shl374
  %bf.shl383 = select i1 %cmp353, i16 1024, i16 0
  %bf.set385 = or i16 %bf.set376, %bf.shl383
  call void @__sanitizer_cov_trace_const_cmp4(i32 66304, i32 %or352)
  %cmp387 = icmp ugt i32 %or352, 66304
  %bf.shl392 = select i1 %cmp387, i16 128, i16 0
  %bf.set394 = or i16 %bf.set385, %bf.shl392
  %134 = ptrtoint ptr %has_sensitivity to i32
  call void @__asan_store2_noabort(i32 %134)
  store i16 %bf.set394, ptr %has_sensitivity, align 2
  br i1 %cmp362, label %if.then398, label %do.end403

if.then398:                                       ; preds = %if.end342
  call void @__sanitizer_cov_trace_pc() #10
  %ibss_port399 = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 21
  %135 = ptrtoint ptr %ibss_port399 to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 0, ptr %ibss_port399, align 4
  br label %sw.epilog406

do.end403:                                        ; preds = %if.end342
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_notice(ptr noundef %1, ptr noundef nonnull @.str.33) #11
  %ibss_port404 = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 21
  %136 = ptrtoint ptr %ibss_port404 to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 1, ptr %ibss_port404, align 4
  br label %sw.epilog406

sw.epilog406:                                     ; preds = %do.end403, %if.then398, %lor.end323, %if.end108, %sw.epilog.sw.epilog406_crit_edge
  %tobool407.not = icmp eq ptr %fw_name, null
  br i1 %tobool407.not, label %sw.epilog406.cleanup_crit_edge, label %do.end411

sw.epilog406.cleanup_crit_edge:                   ; preds = %sw.epilog406
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end411:                                        ; preds = %sw.epilog406
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.36, ptr noundef nonnull %fw_name) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end411, %sw.epilog406.cleanup_crit_edge, %do.end64, %do.end60, %do.end39, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call34, %do.end39 ], [ -19, %do.end64 ], [ -19, %do.end60 ], [ 0, %do.end411 ], [ 0, %sw.epilog406.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 15, ptr nonnull %tmp) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sta_id) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %nic_id) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @orinoco_hw_read_card_settings(ptr noundef %priv, ptr noundef %dev_addr) local_unnamed_addr #0 align 64 {
entry:
  %rec.i258 = alloca i16, align 2
  %rec.i254 = alloca i16, align 2
  %rec.i250 = alloca i16, align 2
  %rec.i246 = alloca i16, align 2
  %rec.i242 = alloca i16, align 2
  %rec.i238 = alloca i16, align 2
  %rec.i234 = alloca i16, align 2
  %rec.i230 = alloca i16, align 2
  %rec.i226 = alloca i16, align 2
  %rec.i222 = alloca i16, align 2
  %rec.i = alloca i16, align 2
  %nickbuf = alloca %struct.hermes_idstring, align 2
  %reclen = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %nickbuf) #8
  %2 = call ptr @memset(ptr %nickbuf, i32 255, i32 34)
  %hw2 = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 18
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reclen) #8
  %3 = ptrtoint ptr %reclen to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -1, ptr %reclen, align 2, !annotation !231
  %ops = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 18, i32 4
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %read_ltv_pr = getelementptr inbounds %struct.hermes_ops, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %read_ltv_pr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read_ltv_pr, align 4
  %call = tail call i32 %7(ptr noundef %hw2, i32 noundef 0, i16 noundef zeroext -1023, i32 noundef 6, ptr noundef null, ptr noundef %dev_addr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body3, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.38) #11
  br label %out

do.body3:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @orinoco_hw_read_card_settings.__UNIQUE_ID_ddebug373, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@orinoco_hw_read_card_settings, %if.then8)) #8
          to label %do.end11 [label %if.then8], !srcloc !232

if.then8:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @orinoco_hw_read_card_settings.__UNIQUE_ID_ddebug373, ptr noundef %1, ptr noundef nonnull @.str.41, ptr noundef %dev_addr) #8
  br label %do.end11

do.end11:                                         ; preds = %if.then8, %do.body3
  %8 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops, align 4
  %read_ltv_pr13 = getelementptr inbounds %struct.hermes_ops, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %read_ltv_pr13 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read_ltv_pr13, align 4
  %call14 = call i32 %11(ptr noundef %hw2, i32 noundef 0, i16 noundef zeroext -1010, i32 noundef 34, ptr noundef nonnull %reclen, ptr noundef nonnull %nickbuf) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end20, label %do.end19

do.end19:                                         ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.43) #11
  br label %out

if.end20:                                         ; preds = %do.end11
  %12 = ptrtoint ptr %nickbuf to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %nickbuf, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool22.not = icmp eq i16 %13, 0
  br i1 %tobool22.not, label %if.else, label %if.then23

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  %14 = call i16 @llvm.bswap.i16(i16 %13)
  %15 = call i16 @llvm.umin.i16(i16 %14, i16 32)
  %cond = zext i16 %15 to i32
  br label %if.end35

if.else:                                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %reclen to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %reclen, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %17)
  %cmp29 = icmp ugt i16 %17, 16
  %conv27 = zext i16 %17 to i32
  %mul = shl nuw nsw i32 %conv27, 1
  %cond34 = select i1 %cmp29, i32 32, i32 %mul
  br label %if.end35

if.end35:                                         ; preds = %if.else, %if.then23
  %len.0 = phi i32 [ %cond, %if.then23 ], [ %cond34, %if.else ]
  %nick = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 31
  %val = getelementptr inbounds %struct.hermes_idstring, ptr %nickbuf, i32 0, i32 1
  %18 = call ptr @memcpy(ptr %nick, ptr %val, i32 %len.0)
  %arrayidx = getelementptr %struct.orinoco_private, ptr %priv, i32 0, i32 31, i32 %len.0
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %arrayidx, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @orinoco_hw_read_card_settings.__UNIQUE_ID_ddebug378, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@orinoco_hw_read_card_settings, %if.then49)) #8
          to label %do.end54 [label %if.then49], !srcloc !232

if.then49:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @orinoco_hw_read_card_settings.__UNIQUE_ID_ddebug378, ptr noundef %1, ptr noundef nonnull @.str.45, ptr noundef %nick) #8
  br label %do.end54

do.end54:                                         ; preds = %if.then49, %if.end35
  %channel_mask = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 23
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %rec.i) #8
  %20 = ptrtoint ptr %rec.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 -1, ptr %rec.i, align 2, !annotation !231
  %21 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ops, align 4
  %read_ltv_pr.i = getelementptr inbounds %struct.hermes_ops, ptr %22, i32 0, i32 5
  %23 = ptrtoint ptr %read_ltv_pr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %read_ltv_pr.i, align 4
  %call.i = call i32 %24(ptr noundef %hw2, i32 noundef 0, i16 noundef zeroext -752, i32 noundef 2, ptr noundef null, ptr noundef nonnull %rec.i) #8
  %25 = ptrtoint ptr %rec.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %rec.i, align 2
  %27 = call i16 @llvm.bswap.i16(i16 %26) #8
  %28 = ptrtoint ptr %channel_mask to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %channel_mask, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rec.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool56.not = icmp eq i32 %call.i, 0
  br i1 %tobool56.not, label %if.end61, label %do.end60

do.end60:                                         ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.47) #11
  br label %out

if.end61:                                         ; preds = %do.end54
  %ap_density = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 38
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %rec.i222) #8
  %29 = ptrtoint ptr %rec.i222 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 -1, ptr %rec.i222, align 2, !annotation !231
  %30 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ops, align 4
  %read_ltv_pr.i224 = getelementptr inbounds %struct.hermes_ops, ptr %31, i32 0, i32 5
  %32 = ptrtoint ptr %read_ltv_pr.i224 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %read_ltv_pr.i224, align 4
  %call.i225 = call i32 %33(ptr noundef %hw2, i32 noundef 0, i16 noundef zeroext -1018, i32 noundef 2, ptr noundef null, ptr noundef nonnull %rec.i222) #8
  %34 = ptrtoint ptr %rec.i222 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %rec.i222, align 2
  %36 = call i16 @llvm.bswap.i16(i16 %35) #8
  %37 = ptrtoint ptr %ap_density to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %36, ptr %ap_density, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rec.i222) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i225)
  %tobool63.not = icmp eq i32 %call.i225, 0
  br i1 %tobool63.not, label %lor.lhs.false, label %if.end61.if.then73_crit_edge

if.end61.if.then73_crit_edge:                     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then73

lor.lhs.false:                                    ; preds = %if.end61
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %35)
  %cmp66 = icmp eq i16 %35, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %36)
  %cmp71 = icmp ugt i16 %36, 3
  %or.cond = or i1 %cmp66, %cmp71
  br i1 %or.cond, label %lor.lhs.false.if.then73_crit_edge, label %lor.lhs.false.if.end74_crit_edge

lor.lhs.false.if.end74_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end74

lor.lhs.false.if.then73_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then73

if.then73:                                        ; preds = %lor.lhs.false.if.then73_crit_edge, %if.end61.if.then73_crit_edge
  %has_sensitivity = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 24
  %38 = ptrtoint ptr %has_sensitivity to i32
  call void @__asan_load2_noabort(i32 %38)
  %bf.load = load i16, ptr %has_sensitivity, align 2
  %bf.clear = and i16 %bf.load, -257
  store i16 %bf.clear, ptr %has_sensitivity, align 2
  br label %if.end74

if.end74:                                         ; preds = %if.then73, %lor.lhs.false.if.end74_crit_edge
  %rts_thresh = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 39
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %rec.i226) #8
  %39 = ptrtoint ptr %rec.i226 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 -1, ptr %rec.i226, align 2, !annotation !231
  %40 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ops, align 4
  %read_ltv_pr.i228 = getelementptr inbounds %struct.hermes_ops, ptr %41, i32 0, i32 5
  %42 = ptrtoint ptr %read_ltv_pr.i228 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %read_ltv_pr.i228, align 4
  %call.i229 = call i32 %43(ptr noundef %hw2, i32 noundef 0, i16 noundef zeroext -893, i32 noundef 2, ptr noundef null, ptr noundef nonnull %rec.i226) #8
  %44 = ptrtoint ptr %rec.i226 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %rec.i226, align 2
  %46 = call i16 @llvm.bswap.i16(i16 %45) #8
  %47 = ptrtoint ptr %rts_thresh to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %46, ptr %rts_thresh, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rec.i226) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i229)
  %tobool76.not = icmp eq i32 %call.i229, 0
  br i1 %tobool76.not, label %if.end81, label %do.end80

do.end80:                                         ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.50) #11
  br label %out

if.end81:                                         ; preds = %if.end74
  %has_mwo = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 24
  %48 = ptrtoint ptr %has_mwo to i32
  call void @__asan_load2_noabort(i32 %48)
  %bf.load82 = load i16, ptr %has_mwo, align 2
  %49 = and i16 %bf.load82, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %49)
  %tobool84.not = icmp eq i16 %49, 0
  br i1 %tobool84.not, label %if.else87, label %if.then85

if.then85:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #10
  %mwo_robust = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 36
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %rec.i230) #8
  %50 = ptrtoint ptr %rec.i230 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 -1, ptr %rec.i230, align 2, !annotation !231
  %51 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ops, align 4
  %read_ltv_pr.i232 = getelementptr inbounds %struct.hermes_ops, ptr %52, i32 0, i32 5
  %53 = ptrtoint ptr %read_ltv_pr.i232 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %read_ltv_pr.i232, align 4
  %call.i233 = call i32 %54(ptr noundef %hw2, i32 noundef 0, i16 noundef zeroext -987, i32 noundef 2, ptr noundef null, ptr noundef nonnull %rec.i230) #8
  %55 = ptrtoint ptr %rec.i230 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %rec.i230, align 2
  %57 = call i16 @llvm.bswap.i16(i16 %56) #8
  %58 = ptrtoint ptr %mwo_robust to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %57, ptr %mwo_robust, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rec.i230) #8
  br label %if.end89

if.else87:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #10
  %frag_thresh = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 35
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %rec.i234) #8
  %59 = ptrtoint ptr %rec.i234 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 -1, ptr %rec.i234, align 2, !annotation !231
  %60 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ops, align 4
  %read_ltv_pr.i236 = getelementptr inbounds %struct.hermes_ops, ptr %61, i32 0, i32 5
  %62 = ptrtoint ptr %read_ltv_pr.i236 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %read_ltv_pr.i236, align 4
  %call.i237 = call i32 %63(ptr noundef %hw2, i32 noundef 0, i16 noundef zeroext -894, i32 noundef 2, ptr noundef null, ptr noundef nonnull %rec.i234) #8
  %64 = ptrtoint ptr %rec.i234 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %rec.i234, align 2
  %66 = call i16 @llvm.bswap.i16(i16 %65) #8
  %67 = ptrtoint ptr %frag_thresh to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %66, ptr %frag_thresh, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rec.i234) #8
  br label %if.end89

if.end89:                                         ; preds = %if.else87, %if.then85
  %err.0 = phi i32 [ %call.i233, %if.then85 ], [ %call.i237, %if.else87 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool90.not = icmp eq i32 %err.0, 0
  br i1 %tobool90.not, label %if.end95, label %do.end94

do.end94:                                         ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.53) #11
  br label %out

if.end95:                                         ; preds = %if.end89
  %68 = ptrtoint ptr %has_mwo to i32
  call void @__asan_load2_noabort(i32 %68)
  %bf.load96 = load i16, ptr %has_mwo, align 2
  %69 = and i16 %bf.load96, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %69)
  %tobool100.not = icmp eq i16 %69, 0
  br i1 %tobool100.not, label %if.end95.if.end116_crit_edge, label %if.then101

if.end95.if.end116_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end116

if.then101:                                       ; preds = %if.end95
  %pm_on = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 40
  %70 = ptrtoint ptr %pm_on to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 0, ptr %pm_on, align 2
  %pm_mcast = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 41
  %71 = ptrtoint ptr %pm_mcast to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 1, ptr %pm_mcast, align 4
  %pm_period = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 42
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %rec.i238) #8
  %72 = ptrtoint ptr %rec.i238 to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 -1, ptr %rec.i238, align 2, !annotation !231
  %73 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %ops, align 4
  %read_ltv_pr.i240 = getelementptr inbounds %struct.hermes_ops, ptr %74, i32 0, i32 5
  %75 = ptrtoint ptr %read_ltv_pr.i240 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %read_ltv_pr.i240, align 4
  %call.i241 = call i32 %76(ptr noundef %hw2, i32 noundef 0, i16 noundef zeroext -1012, i32 noundef 2, ptr noundef null, ptr noundef nonnull %rec.i238) #8
  %77 = ptrtoint ptr %rec.i238 to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %rec.i238, align 2
  %79 = call i16 @llvm.bswap.i16(i16 %78) #8
  %80 = ptrtoint ptr %pm_period to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 %79, ptr %pm_period, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rec.i238) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i241)
  %tobool103.not = icmp eq i32 %call.i241, 0
  br i1 %tobool103.not, label %if.end108, label %do.end107

do.end107:                                        ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.56) #11
  br label %out

if.end108:                                        ; preds = %if.then101
  %pm_timeout = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 43
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %rec.i242) #8
  %81 = ptrtoint ptr %rec.i242 to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 -1, ptr %rec.i242, align 2, !annotation !231
  %82 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %ops, align 4
  %read_ltv_pr.i244 = getelementptr inbounds %struct.hermes_ops, ptr %83, i32 0, i32 5
  %84 = ptrtoint ptr %read_ltv_pr.i244 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %read_ltv_pr.i244, align 4
  %call.i245 = call i32 %85(ptr noundef %hw2, i32 noundef 0, i16 noundef zeroext -1011, i32 noundef 2, ptr noundef null, ptr noundef nonnull %rec.i242) #8
  %86 = ptrtoint ptr %rec.i242 to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %rec.i242, align 2
  %88 = call i16 @llvm.bswap.i16(i16 %87) #8
  %89 = ptrtoint ptr %pm_timeout to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %88, ptr %pm_timeout, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rec.i242) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i245)
  %tobool110.not = icmp eq i32 %call.i245, 0
  br i1 %tobool110.not, label %if.end108.if.end116_crit_edge, label %do.end114

if.end108.if.end116_crit_edge:                    ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end116

do.end114:                                        ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.59) #11
  br label %out

if.end116:                                        ; preds = %if.end108.if.end116_crit_edge, %if.end95.if.end116_crit_edge
  %90 = ptrtoint ptr %has_mwo to i32
  call void @__asan_load2_noabort(i32 %90)
  %bf.load117 = load i16, ptr %has_mwo, align 2
  %91 = and i16 %bf.load117, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %91)
  %tobool121.not = icmp eq i16 %91, 0
  br i1 %tobool121.not, label %if.end116.if.end130_crit_edge, label %if.then122

if.end116.if.end130_crit_edge:                    ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end130

if.then122:                                       ; preds = %if.end116
  %preamble = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 44
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %rec.i246) #8
  %92 = ptrtoint ptr %rec.i246 to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 -1, ptr %rec.i246, align 2, !annotation !231
  %93 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %ops, align 4
  %read_ltv_pr.i248 = getelementptr inbounds %struct.hermes_ops, ptr %94, i32 0, i32 5
  %95 = ptrtoint ptr %read_ltv_pr.i248 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %read_ltv_pr.i248, align 4
  %call.i249 = call i32 %96(ptr noundef %hw2, i32 noundef 0, i16 noundef zeroext -884, i32 noundef 2, ptr noundef null, ptr noundef nonnull %rec.i246) #8
  %97 = ptrtoint ptr %rec.i246 to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %rec.i246, align 2
  %99 = call i16 @llvm.bswap.i16(i16 %98) #8
  %100 = ptrtoint ptr %preamble to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 %99, ptr %preamble, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rec.i246) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i249)
  %tobool124.not = icmp eq i32 %call.i249, 0
  br i1 %tobool124.not, label %if.then122.if.end130_crit_edge, label %do.end128

if.then122.if.end130_crit_edge:                   ; preds = %if.then122
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end130

do.end128:                                        ; preds = %if.then122
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.62) #11
  br label %out

if.end130:                                        ; preds = %if.then122.if.end130_crit_edge, %if.end116.if.end130_crit_edge
  %short_retry_limit = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 45
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %rec.i250) #8
  %101 = ptrtoint ptr %rec.i250 to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 -1, ptr %rec.i250, align 2, !annotation !231
  %102 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %ops, align 4
  %read_ltv_pr.i252 = getelementptr inbounds %struct.hermes_ops, ptr %103, i32 0, i32 5
  %104 = ptrtoint ptr %read_ltv_pr.i252 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %read_ltv_pr.i252, align 4
  %call.i253 = call i32 %105(ptr noundef %hw2, i32 noundef 0, i16 noundef zeroext -696, i32 noundef 2, ptr noundef null, ptr noundef nonnull %rec.i250) #8
  %106 = ptrtoint ptr %rec.i250 to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %rec.i250, align 2
  %108 = call i16 @llvm.bswap.i16(i16 %107) #8
  %109 = ptrtoint ptr %short_retry_limit to i32
  call void @__asan_store2_noabort(i32 %109)
  store i16 %108, ptr %short_retry_limit, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rec.i250) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i253)
  %tobool132.not = icmp eq i32 %call.i253, 0
  br i1 %tobool132.not, label %if.end137, label %do.end136

do.end136:                                        ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.65) #11
  br label %out

if.end137:                                        ; preds = %if.end130
  %long_retry_limit = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 46
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %rec.i254) #8
  %110 = ptrtoint ptr %rec.i254 to i32
  call void @__asan_store2_noabort(i32 %110)
  store i16 -1, ptr %rec.i254, align 2, !annotation !231
  %111 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %ops, align 4
  %read_ltv_pr.i256 = getelementptr inbounds %struct.hermes_ops, ptr %112, i32 0, i32 5
  %113 = ptrtoint ptr %read_ltv_pr.i256 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %read_ltv_pr.i256, align 4
  %call.i257 = call i32 %114(ptr noundef %hw2, i32 noundef 0, i16 noundef zeroext -695, i32 noundef 2, ptr noundef null, ptr noundef nonnull %rec.i254) #8
  %115 = ptrtoint ptr %rec.i254 to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %rec.i254, align 2
  %117 = call i16 @llvm.bswap.i16(i16 %116) #8
  %118 = ptrtoint ptr %long_retry_limit to i32
  call void @__asan_store2_noabort(i32 %118)
  store i16 %117, ptr %long_retry_limit, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rec.i254) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i257)
  %tobool139.not = icmp eq i32 %call.i257, 0
  br i1 %tobool139.not, label %if.end144, label %do.end143

do.end143:                                        ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.68) #11
  br label %out

if.end144:                                        ; preds = %if.end137
  %retry_lifetime = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 47
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %rec.i258) #8
  %119 = ptrtoint ptr %rec.i258 to i32
  call void @__asan_store2_noabort(i32 %119)
  store i16 -1, ptr %rec.i258, align 2, !annotation !231
  %120 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %ops, align 4
  %read_ltv_pr.i260 = getelementptr inbounds %struct.hermes_ops, ptr %121, i32 0, i32 5
  %122 = ptrtoint ptr %read_ltv_pr.i260 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %read_ltv_pr.i260, align 4
  %call.i261 = call i32 %123(ptr noundef %hw2, i32 noundef 0, i16 noundef zeroext -694, i32 noundef 2, ptr noundef null, ptr noundef nonnull %rec.i258) #8
  %124 = ptrtoint ptr %rec.i258 to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %rec.i258, align 2
  %126 = call i16 @llvm.bswap.i16(i16 %125) #8
  %127 = ptrtoint ptr %retry_lifetime to i32
  call void @__asan_store2_noabort(i32 %127)
  store i16 %126, ptr %retry_lifetime, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rec.i258) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i261)
  %tobool146.not = icmp eq i32 %call.i261, 0
  br i1 %tobool146.not, label %if.end144.out_crit_edge, label %do.end150

if.end144.out_crit_edge:                          ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

do.end150:                                        ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.71) #11
  br label %out

out:                                              ; preds = %do.end150, %if.end144.out_crit_edge, %do.end143, %do.end136, %do.end128, %do.end114, %do.end107, %do.end94, %do.end80, %do.end60, %do.end19, %do.end
  %err.1 = phi i32 [ %call, %do.end ], [ %call14, %do.end19 ], [ %call.i, %do.end60 ], [ %call.i229, %do.end80 ], [ %err.0, %do.end94 ], [ %call.i241, %do.end107 ], [ %call.i245, %do.end114 ], [ %call.i249, %do.end128 ], [ %call.i253, %do.end136 ], [ %call.i257, %do.end143 ], [ %call.i261, %do.end150 ], [ 0, %if.end144.out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reclen) #8
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %nickbuf) #8
  ret i32 %err.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @orinoco_hw_allocate_fid(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %hw2 = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 18
  %ops = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 18, i32 4
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %allocate = getelementptr inbounds %struct.hermes_ops, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %allocate to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %allocate, align 4
  %nicbuf_size = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 22
  %6 = ptrtoint ptr %nicbuf_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nicbuf_size, align 4
  %conv = trunc i32 %7 to i16
  %txfid = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 19
  %call = tail call i32 %5(ptr noundef %hw2, i16 noundef zeroext %conv, ptr noundef %txfid) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %call)
  %cmp = icmp eq i32 %call, -5
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %8 = ptrtoint ptr %nicbuf_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nicbuf_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1585, i32 %9)
  %cmp5 = icmp sgt i32 %9, 1585
  br i1 %cmp5, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %nicbuf_size to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1585, ptr %nicbuf_size, align 4
  %11 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops, align 4
  %allocate9 = getelementptr inbounds %struct.hermes_ops, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %allocate9 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %allocate9, align 4
  %call13 = tail call i32 %14(ptr noundef %hw2, i16 noundef zeroext 1585, ptr noundef %txfid) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool.not = icmp eq i32 %call13, 0
  %cond = select i1 %tobool.not, ptr @.str.76, ptr @.str.75
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.73, ptr noundef nonnull %cond) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %err.0 = phi i32 [ %call13, %if.then ], [ -5, %land.lhs.true.if.end_crit_edge ], [ %call, %entry.if.end_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync)
define dso_local i32 @orinoco_get_bitratemode(i32 noundef %bitrate, i32 noundef %automatic) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %bitrate to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.146)
  switch i32 %bitrate, label %entry.cleanup_crit_edge [
    i32 110, label %land.lhs.true9
    i32 10, label %land.lhs.true9.1
    i32 20, label %land.lhs.true9.3
    i32 55, label %land.lhs.true9.5
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true9:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %automatic)
  %switch.selectcmp = icmp eq i32 %automatic, 0
  %switch.select = select i1 %switch.selectcmp, i32 7, i32 -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %automatic)
  %switch.selectcmp45 = icmp eq i32 %automatic, 1
  %switch.select46 = select i1 %switch.selectcmp45, i32 0, i32 %switch.select
  br label %cleanup

land.lhs.true9.1:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %automatic)
  %switch.selectcmp47 = icmp eq i32 %automatic, 1
  %switch.select48 = select i1 %switch.selectcmp47, i32 2, i32 -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %automatic)
  %switch.selectcmp49 = icmp eq i32 %automatic, 0
  %switch.select50 = select i1 %switch.selectcmp49, i32 1, i32 %switch.select48
  br label %cleanup

land.lhs.true9.3:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %automatic)
  %switch.selectcmp51 = icmp eq i32 %automatic, 1
  %switch.select52 = select i1 %switch.selectcmp51, i32 4, i32 -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %automatic)
  %switch.selectcmp53 = icmp eq i32 %automatic, 0
  %switch.select54 = select i1 %switch.selectcmp53, i32 3, i32 %switch.select52
  br label %cleanup

land.lhs.true9.5:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %automatic)
  %switch.selectcmp55 = icmp eq i32 %automatic, 1
  %switch.select56 = select i1 %switch.selectcmp55, i32 6, i32 -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %automatic)
  %switch.selectcmp57 = icmp eq i32 %automatic, 0
  %switch.select58 = select i1 %switch.selectcmp57, i32 5, i32 %switch.select56
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true9.5, %land.lhs.true9.3, %land.lhs.true9.1, %land.lhs.true9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ %switch.select46, %land.lhs.true9 ], [ %switch.select50, %land.lhs.true9.1 ], [ %switch.select54, %land.lhs.true9.3 ], [ %switch.select58, %land.lhs.true9.5 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @orinoco_get_ratemode_cfg(i32 noundef %ratemode, ptr nocapture noundef writeonly %bitrate, ptr nocapture noundef writeonly %automatic) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %ratemode)
  %cmp1 = icmp ugt i32 %ratemode, 7
  br i1 %cmp1, label %do.body3, label %do.end6, !prof !233

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/intersil/orinoco/hw.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 451, 0\0A.popsection", ""() #8, !srcloc !234
  unreachable

do.end6:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr [8 x %struct.anon.136], ptr @bitrate_table, i32 0, i32 %ratemode
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %mul = mul i32 %1, 100000
  %2 = ptrtoint ptr %bitrate to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %mul, ptr %bitrate, align 4
  %automatic9 = getelementptr [8 x %struct.anon.136], ptr @bitrate_table, i32 0, i32 %ratemode, i32 1
  %3 = ptrtoint ptr %automatic9 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %automatic9, align 4
  %5 = ptrtoint ptr %automatic to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %automatic, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @orinoco_hw_program_rids(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  %rec.i519 = alloca i16, align 2
  %rec.i515 = alloca i16, align 2
  %rec.i511 = alloca i16, align 2
  %rec.i507 = alloca i16, align 2
  %rec.i503 = alloca i16, align 2
  %rec.i21.i = alloca i16, align 2
  %rec.i.i495 = alloca i16, align 2
  %rec.i491 = alloca i16, align 2
  %rec.i487 = alloca i16, align 2
  %rec.i483 = alloca i16, align 2
  %rec.i479 = alloca i16, align 2
  %rec.i.i = alloca i16, align 2
  %rec.i473 = alloca i16, align 2
  %rec.i469 = alloca i16, align 2
  %rec.i = alloca i16, align 2
  %idbuf = alloca %struct.hermes_idstring, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ndev = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 16
  %0 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ndev, align 4
  %hw1 = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 18
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %idbuf) #8
  %2 = call ptr @memset(ptr %idbuf, i32 255, i32 34)
  %ops = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 18, i32 4
  %3 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ops, align 4
  %write_ltv = getelementptr inbounds %struct.hermes_ops, ptr %4, i32 0, i32 6
  %5 = ptrtoint ptr %write_ltv to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %write_ltv, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 86
  %7 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev_addr, align 64
  %call2 = tail call i32 %6(ptr noundef %hw1, i32 noundef 0, i16 noundef zeroext -1023, i16 noundef zeroext 4, ptr noundef %8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, ptr noundef %1, i32 noundef %call2) #11
  br label %cleanup322

if.end:                                           ; preds = %entry
  %port_type = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 50
  %9 = ptrtoint ptr %port_type to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %port_type, align 4
  %conv = trunc i32 %10 to i16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %rec.i) #8
  %11 = tail call i16 @llvm.bswap.i16(i16 %conv) #8
  %12 = ptrtoint ptr %rec.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %rec.i, align 2
  %13 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ops, align 4
  %write_ltv.i = getelementptr inbounds %struct.hermes_ops, ptr %14, i32 0, i32 6
  %15 = ptrtoint ptr %write_ltv.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %write_ltv.i, align 4
  %call.i = call i32 %16(ptr noundef %hw1, i32 noundef 0, i16 noundef zeroext -1024, i16 noundef zeroext 2, ptr noundef nonnull %rec.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rec.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool5.not = icmp eq i32 %call.i, 0
  br i1 %tobool5.not, label %if.end14, label %do.end9

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call13 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef %1, i32 noundef %call.i) #11
  br label %cleanup322

if.end14:                                         ; preds = %if.end
  %channel = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 37
  %17 = ptrtoint ptr %channel to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %channel, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %cmp.not = icmp eq i16 %18, 0
  br i1 %cmp.not, label %if.end14.if.end34_crit_edge, label %land.lhs.true

if.end14.if.end34_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

land.lhs.true:                                    ; preds = %if.end14
  %iw_mode = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 25
  %19 = ptrtoint ptr %iw_mode to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %iw_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %20)
  %cmp17.not = icmp eq i32 %20, 2
  br i1 %cmp17.not, label %land.lhs.true.if.end34_crit_edge, label %if.then19

land.lhs.true.if.end34_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

if.then19:                                        ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %rec.i469) #8
  %21 = call i16 @llvm.bswap.i16(i16 %18) #8
  %22 = ptrtoint ptr %rec.i469 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %rec.i469, align 2
  %23 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ops, align 4
  %write_ltv.i471 = getelementptr inbounds %struct.hermes_ops, ptr %24, i32 0, i32 6
  %25 = ptrtoint ptr %write_ltv.i471 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %write_ltv.i471, align 4
  %call.i472 = call i32 %26(ptr noundef %hw1, i32 noundef 0, i16 noundef zeroext -1021, i16 noundef zeroext 2, ptr noundef nonnull %rec.i469) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rec.i469) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i472)
  %tobool22.not = icmp eq i32 %call.i472, 0
  br i1 %tobool22.not, label %if.then19.if.end34_crit_edge, label %do.end26

if.then19.if.end34_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

do.end26:                                         ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %channel to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %channel, align 4
  %conv31 = zext i16 %28 to i32
  %call32 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83, ptr noundef %1, i32 noundef %call.i472, i32 noundef %conv31) #11
  br label %cleanup322

if.end34:                                         ; preds = %if.then19.if.end34_crit_edge, %land.lhs.true.if.end34_crit_edge, %if.end14.if.end34_crit_edge
  %has_ibss = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 24
  %29 = ptrtoint ptr %has_ibss to i32
  call void @__asan_load2_noabort(i32 %29)
  %bf.load = load i16, ptr %has_ibss, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load)
  %tobool35.not = icmp sgt i16 %bf.load, -1
  br i1 %tobool35.not, label %if.end34.if.end66_crit_edge, label %if.then36

if.end34.if.end66_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end66

if.then36:                                        ; preds = %if.end34
  %desired_essid = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 32
  %30 = ptrtoint ptr %desired_essid to i32
  call void @__asan_load1_noabort(i32 %30)
  %char0 = load i8, ptr %desired_essid, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %char0)
  %cmp39 = icmp eq i8 %char0, 0
  br i1 %cmp39, label %land.lhs.true41, label %if.then36.if.else_crit_edge

if.then36.if.else_crit_edge:                      ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true41:                                  ; preds = %if.then36
  %createibss42 = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 51
  %31 = ptrtoint ptr %createibss42 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %createibss42, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool43.not = icmp eq i32 %32, 0
  br i1 %tobool43.not, label %land.lhs.true41.if.else_crit_edge, label %do.end47

land.lhs.true41.if.else_crit_edge:                ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

do.end47:                                         ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #10
  %call51 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86, ptr noundef %1) #11
  br label %if.end54

if.else:                                          ; preds = %land.lhs.true41.if.else_crit_edge, %if.then36.if.else_crit_edge
  %createibss52 = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 51
  %33 = ptrtoint ptr %createibss52 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %createibss52, align 4
  %conv53 = trunc i32 %34 to i16
  br label %if.end54

if.end54:                                         ; preds = %if.else, %do.end47
  %createibss.0 = phi i16 [ 0, %do.end47 ], [ %conv53, %if.else ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %rec.i473) #8
  %35 = call i16 @llvm.bswap.i16(i16 %createibss.0) #8
  %36 = ptrtoint ptr %rec.i473 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %35, ptr %rec.i473, align 2
  %37 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ops, align 4
  %write_ltv.i475 = getelementptr inbounds %struct.hermes_ops, ptr %38, i32 0, i32 6
  %39 = ptrtoint ptr %write_ltv.i475 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %write_ltv.i475, align 4
  %call.i476 = call i32 %40(ptr noundef %hw1, i32 noundef 0, i16 noundef zeroext -895, i16 noundef zeroext 2, ptr noundef nonnull %rec.i473) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rec.i473) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i476)
  %tobool56.not = icmp eq i32 %call.i476, 0
  br i1 %tobool56.not, label %if.end54.if.end66_crit_edge, label %do.end60

if.end54.if.end66_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end66

do.end60:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  %call64 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89, ptr noundef %1, i32 noundef %call.i476) #11
  br label %cleanup322

if.end66:                                         ; preds = %if.end54.if.end66_crit_edge, %if.end34.if.end66_crit_edge
  %firmware_type.i = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 20
  %41 = ptrtoint ptr %firmware_type.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %firmware_type.i, align 4
  %43 = zext i32 %42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.147)
  switch i32 %42, label %if.end66.if.end77_crit_edge [
    i32 2, label %sw.bb2.i
    i32 1, label %sw.bb.i
  ]

if.end66.if.end77_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end77

sw.bb.i:                                          ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #10
  %bssid_fixed.i = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 34
  %44 = ptrtoint ptr %bssid_fixed.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %bssid_fixed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool.not.i = icmp eq i32 %45, 0
  %..i = select i1 %tobool.not.i, i16 256, i16 512
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %rec.i.i) #8
  %46 = ptrtoint ptr %rec.i.i to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %..i, ptr %rec.i.i, align 2
  %47 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ops, align 4
  %write_ltv.i.i = getelementptr inbounds %struct.hermes_ops, ptr %48, i32 0, i32 6
  %49 = ptrtoint ptr %write_ltv.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %write_ltv.i.i, align 4
  %call.i.i = call i32 %50(ptr noundef %hw1, i32 noundef 0, i16 noundef zeroext -979, i16 noundef zeroext 2, ptr noundef nonnull %rec.i.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rec.i.i) #8
  br label %__orinoco_hw_set_wap.exit

sw.bb2.i:                                         ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #10
  %51 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ops, align 4
  %write_ltv.i478 = getelementptr inbounds %struct.hermes_ops, ptr %52, i32 0, i32 6
  %53 = ptrtoint ptr %write_ltv.i478 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %write_ltv.i478, align 4
  %desired_bssid.i = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 33
  %call3.i = call i32 %54(ptr noundef %hw1, i32 noundef 0, i16 noundef zeroext -991, i16 noundef zeroext 4, ptr noundef %desired_bssid.i) #8
  br label %__orinoco_hw_set_wap.exit

__orinoco_hw_set_wap.exit:                        ; preds = %sw.bb2.i, %sw.bb.i
  %err.0.i = phi i32 [ %call.i.i, %sw.bb.i ], [ %call3.i, %sw.bb2.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i)
  %tobool68.not = icmp eq i32 %err.0.i, 0
  br i1 %tobool68.not, label %__orinoco_hw_set_wap.exit.if.end77_crit_edge, label %do.end72

__orinoco_hw_set_wap.exit.if.end77_crit_edge:     ; preds = %__orinoco_hw_set_wap.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end77

do.end72:                                         ; preds = %__orinoco_hw_set_wap.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call76 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92, ptr noundef %1, i32 noundef %err.0.i) #11
  br label %cleanup322

if.end77:                                         ; preds = %__orinoco_hw_set_wap.exit.if.end77_crit_edge, %if.end66.if.end77_crit_edge
  %desired_essid78 = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 32
  %call80 = call i32 @strlen(ptr noundef %desired_essid78) #12
  %conv81 = trunc i32 %call80 to i16
  %55 = call i16 @llvm.bswap.i16(i16 %conv81)
  %56 = ptrtoint ptr %idbuf to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %55, ptr %idbuf, align 2
  %val = getelementptr inbounds %struct.hermes_idstring, ptr %idbuf, i32 0, i32 1
  %57 = call ptr @memcpy(ptr %val, ptr %desired_essid78, i32 32)
  %58 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ops, align 4
  %write_ltv85 = getelementptr inbounds %struct.hermes_ops, ptr %59, i32 0, i32 6
  %60 = ptrtoint ptr %write_ltv85 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %write_ltv85, align 4
  %call88 = call i32 @strlen(ptr noundef %desired_essid78) #12
  %add89 = add i32 %call88, 3
  %div466 = lshr i32 %add89, 1
  %62 = trunc i32 %div466 to i16
  %conv91 = add i16 %62, 1
  %call92 = call i32 %61(ptr noundef %hw1, i32 noundef 0, i16 noundef zeroext -1020, i16 noundef zeroext %conv91, ptr noundef nonnull %idbuf) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %if.end102, label %do.end97

do.end97:                                         ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #10
  %call101 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95, ptr noundef %1, i32 noundef %call92) #11
  br label %cleanup322

if.end102:                                        ; preds = %if.end77
  %63 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ops, align 4
  %write_ltv104 = getelementptr inbounds %struct.hermes_ops, ptr %64, i32 0, i32 6
  %65 = ptrtoint ptr %write_ltv104 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %write_ltv104, align 4
  %call107 = call i32 @strlen(ptr noundef %desired_essid78) #12
  %add109 = add i32 %call107, 3
  %div110467 = lshr i32 %add109, 1
  %67 = trunc i32 %div110467 to i16
  %conv112 = add i16 %67, 1
  %call113 = call i32 %66(ptr noundef %hw1, i32 noundef 0, i16 noundef zeroext -1022, i16 noundef zeroext %conv112, ptr noundef nonnull %idbuf) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call113)
  %tobool114.not = icmp eq i32 %call113, 0
  br i1 %tobool114.not, label %if.end123, label %do.end118

do.end118:                                        ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #10
  %call122 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98, ptr noundef %1, i32 noundef %call113) #11
  br label %cleanup322

if.end123:                                        ; preds = %if.end102
  %nick = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 31
  %call125 = call i32 @strlen(ptr noundef %nick) #12
  %conv126 = trunc i32 %call125 to i16
  %68 = call i16 @llvm.bswap.i16(i16 %conv126)
  %69 = ptrtoint ptr %idbuf to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %68, ptr %idbuf, align 2
  %70 = call ptr @memcpy(ptr %val, ptr %nick, i32 32)
  %71 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %ops, align 4
  %write_ltv132 = getelementptr inbounds %struct.hermes_ops, ptr %72, i32 0, i32 6
  %73 = ptrtoint ptr %write_ltv132 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %write_ltv132, align 4
  %call135 = call i32 @strlen(ptr noundef %nick) #12
  %add137 = add i32 %call135, 3
  %div138468 = lshr i32 %add137, 1
  %75 = trunc i32 %div138468 to i16
  %conv140 = add i16 %75, 1
  %call141 = call i32 %74(ptr noundef %hw1, i32 noundef 0, i16 noundef zeroext -1010, i16 noundef zeroext %conv140, ptr noundef nonnull %idbuf) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call141)
  %tobool142.not = icmp eq i32 %call141, 0
  br i1 %tobool142.not, label %if.end151, label %do.end146

do.end146:                                        ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #10
  %call150 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101, ptr noundef %1, i32 noundef %call141) #11
  br label %cleanup322

if.end151:                                        ; preds = %if.end123
  %76 = ptrtoint ptr %has_ibss to i32
  call void @__asan_load2_noabort(i32 %76)
  %bf.load152 = load i16, ptr %has_ibss, align 2
  %77 = and i16 %bf.load152, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %77)
  %tobool155.not = icmp eq i16 %77, 0
  br i1 %tobool155.not, label %if.end151.if.end171_crit_edge, label %if.then156

if.end151.if.end171_crit_edge:                    ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end171

if.then156:                                       ; preds = %if.end151
  %ap_density = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 38
  %78 = ptrtoint ptr %ap_density to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %ap_density, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %rec.i479) #8
  %80 = call i16 @llvm.bswap.i16(i16 %79) #8
  %81 = ptrtoint ptr %rec.i479 to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 %80, ptr %rec.i479, align 2
  %82 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %ops, align 4
  %write_ltv.i481 = getelementptr inbounds %struct.hermes_ops, ptr %83, i32 0, i32 6
  %84 = ptrtoint ptr %write_ltv.i481 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %write_ltv.i481, align 4
  %call.i482 = call i32 %85(ptr noundef %hw1, i32 noundef 0, i16 noundef zeroext -1018, i16 noundef zeroext 2, ptr noundef nonnull %rec.i479) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rec.i479) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i482)
  %tobool158.not = icmp eq i32 %call.i482, 0
  br i1 %tobool158.not, label %if.then156.if.end171_crit_edge, label %do.end162

if.then156.if.end171_crit_edge:                   ; preds = %if.then156
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end171

do.end162:                                        ; preds = %if.then156
  call void @__sanitizer_cov_trace_pc() #10
  %call166 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104, ptr noundef %1, i32 noundef %call.i482) #11
  %86 = ptrtoint ptr %has_ibss to i32
  call void @__asan_load2_noabort(i32 %86)
  %bf.load168 = load i16, ptr %has_ibss, align 2
  %bf.clear169 = and i16 %bf.load168, -257
  store i16 %bf.clear169, ptr %has_ibss, align 2
  br label %if.end171

if.end171:                                        ; preds = %do.end162, %if.then156.if.end171_crit_edge, %if.end151.if.end171_crit_edge
  %rts_thresh = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 39
  %87 = ptrtoint ptr %rts_thresh to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %rts_thresh, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %rec.i483) #8
  %89 = call i16 @llvm.bswap.i16(i16 %88) #8
  %90 = ptrtoint ptr %rec.i483 to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 %89, ptr %rec.i483, align 2
  %91 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %ops, align 4
  %write_ltv.i485 = getelementptr inbounds %struct.hermes_ops, ptr %92, i32 0, i32 6
  %93 = ptrtoint ptr %write_ltv.i485 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %write_ltv.i485, align 4
  %call.i486 = call i32 %94(ptr noundef %hw1, i32 noundef 0, i16 noundef zeroext -893, i16 noundef zeroext 2, ptr noundef nonnull %rec.i483) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rec.i483) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i486)
  %tobool173.not = icmp eq i32 %call.i486, 0
  br i1 %tobool173.not, label %if.end182, label %do.end177

do.end177:                                        ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #10
  %call181 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107, ptr noundef %1, i32 noundef %call.i486) #11
  br label %cleanup322

if.end182:                                        ; preds = %if.end171
  %95 = ptrtoint ptr %has_ibss to i32
  call void @__asan_load2_noabort(i32 %95)
  %bf.load183 = load i16, ptr %has_ibss, align 2
  %96 = and i16 %bf.load183, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %96)
  %tobool187.not = icmp eq i16 %96, 0
  br i1 %tobool187.not, label %if.else190, label %if.then188

if.then188:                                       ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #10
  %mwo_robust = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 36
  %97 = ptrtoint ptr %mwo_robust to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %mwo_robust, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %rec.i487) #8
  %99 = call i16 @llvm.bswap.i16(i16 %98) #8
  %100 = ptrtoint ptr %rec.i487 to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 %99, ptr %rec.i487, align 2
  %101 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %ops, align 4
  %write_ltv.i489 = getelementptr inbounds %struct.hermes_ops, ptr %102, i32 0, i32 6
  %103 = ptrtoint ptr %write_ltv.i489 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %write_ltv.i489, align 4
  %call.i490 = call i32 %104(ptr noundef %hw1, i32 noundef 0, i16 noundef zeroext -987, i16 noundef zeroext 2, ptr noundef nonnull %rec.i487) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rec.i487) #8
  br label %if.end192

if.else190:                                       ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #10
  %frag_thresh = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 35
  %105 = ptrtoint ptr %frag_thresh to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %frag_thresh, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %rec.i491) #8
  %107 = call i16 @llvm.bswap.i16(i16 %106) #8
  %108 = ptrtoint ptr %rec.i491 to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 %107, ptr %rec.i491, align 2
  %109 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %ops, align 4
  %write_ltv.i493 = getelementptr inbounds %struct.hermes_ops, ptr %110, i32 0, i32 6
  %111 = ptrtoint ptr %write_ltv.i493 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %write_ltv.i493, align 4
  %call.i494 = call i32 %112(ptr noundef %hw1, i32 noundef 0, i16 noundef zeroext -894, i16 noundef zeroext 2, ptr noundef nonnull %rec.i491) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rec.i491) #8
  br label %if.end192

if.end192:                                        ; preds = %if.else190, %if.then188
  %err.0 = phi i32 [ %call.i490, %if.then188 ], [ %call.i494, %if.else190 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool193.not = icmp eq i32 %err.0, 0
  br i1 %tobool193.not, label %if.end202, label %do.end197

do.end197:                                        ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #10
  %call201 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.110, ptr noundef %1, i32 noundef %err.0) #11
  br label %cleanup322

if.end202:                                        ; preds = %if.end192
  %bitratemode.i = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 30
  %113 = ptrtoint ptr %bitratemode.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %bitratemode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %114)
  %cmp.i = icmp ugt i32 %114, 7
  br i1 %cmp.i, label %__orinoco_hw_set_bitrate.exit.thread, label %if.end.i

__orinoco_hw_set_bitrate.exit.thread:             ; preds = %if.end202
  call void @__sanitizer_cov_trace_pc() #10
  %115 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %ndev, align 4
  %call.i497 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.130, ptr noundef %116, i32 noundef %114) #11
  br label %do.end208

if.end.i:                                         ; preds = %if.end202
  %117 = ptrtoint ptr %firmware_type.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %firmware_type.i, align 4
  %119 = zext i32 %118 to i64
  call void @__sanitizer_cov_trace_switch(i64 %119, ptr @__sancov_gen_cov_switch_values.148)
  switch i32 %118, label %do.body6.i [
    i32 0, label %sw.bb.i502
    i32 1, label %if.end.i.sw.bb3.i_crit_edge
    i32 2, label %if.end.i.sw.bb3.i_crit_edge532
  ]

if.end.i.sw.bb3.i_crit_edge532:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb3.i

if.end.i.sw.bb3.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb3.i

sw.bb.i502:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %agere_txratectrl.i = getelementptr [8 x %struct.anon.136], ptr @bitrate_table, i32 0, i32 %114, i32 2
  %120 = ptrtoint ptr %agere_txratectrl.i to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %agere_txratectrl.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %rec.i.i495) #8
  %122 = call i16 @llvm.bswap.i16(i16 %121) #8
  %123 = ptrtoint ptr %rec.i.i495 to i32
  call void @__asan_store2_noabort(i32 %123)
  store i16 %122, ptr %rec.i.i495, align 2
  %124 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %ops, align 4
  %write_ltv.i.i500 = getelementptr inbounds %struct.hermes_ops, ptr %125, i32 0, i32 6
  %126 = ptrtoint ptr %write_ltv.i.i500 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %write_ltv.i.i500, align 4
  %call.i.i501 = call i32 %127(ptr noundef %hw1, i32 noundef 0, i16 noundef zeroext -892, i16 noundef zeroext 2, ptr noundef nonnull %rec.i.i495) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rec.i.i495) #8
  br label %__orinoco_hw_set_bitrate.exit

sw.bb3.i:                                         ; preds = %if.end.i.sw.bb3.i_crit_edge, %if.end.i.sw.bb3.i_crit_edge532
  %intersil_txratectrl.i = getelementptr [8 x %struct.anon.136], ptr @bitrate_table, i32 0, i32 %114, i32 3
  %128 = ptrtoint ptr %intersil_txratectrl.i to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %intersil_txratectrl.i, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %rec.i21.i) #8
  %130 = call i16 @llvm.bswap.i16(i16 %129) #8
  %131 = ptrtoint ptr %rec.i21.i to i32
  call void @__asan_store2_noabort(i32 %131)
  store i16 %130, ptr %rec.i21.i, align 2
  %132 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %ops, align 4
  %write_ltv.i23.i = getelementptr inbounds %struct.hermes_ops, ptr %133, i32 0, i32 6
  %134 = ptrtoint ptr %write_ltv.i23.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %write_ltv.i23.i, align 4
  %call.i24.i = call i32 %135(ptr noundef %hw1, i32 noundef 0, i16 noundef zeroext -892, i16 noundef zeroext 2, ptr noundef nonnull %rec.i21.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rec.i21.i) #8
  br label %__orinoco_hw_set_bitrate.exit

do.body6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/intersil/orinoco/hw.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 732, 0\0A.popsection", ""() #8, !srcloc !235
  unreachable

__orinoco_hw_set_bitrate.exit:                    ; preds = %sw.bb3.i, %sw.bb.i502
  %retval.0.i = phi i32 [ %call.i24.i, %sw.bb3.i ], [ %call.i.i501, %sw.bb.i502 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool204.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool204.not, label %if.end213, label %__orinoco_hw_set_bitrate.exit.do.end208_crit_edge

__orinoco_hw_set_bitrate.exit.do.end208_crit_edge: ; preds = %__orinoco_hw_set_bitrate.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end208

do.end208:                                        ; preds = %__orinoco_hw_set_bitrate.exit.do.end208_crit_edge, %__orinoco_hw_set_bitrate.exit.thread
  %retval.0.i527 = phi i32 [ -22, %__orinoco_hw_set_bitrate.exit.thread ], [ %retval.0.i, %__orinoco_hw_set_bitrate.exit.do.end208_crit_edge ]
  %call212 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.113, ptr noundef %1, i32 noundef %retval.0.i527) #11
  br label %cleanup322

if.end213:                                        ; preds = %__orinoco_hw_set_bitrate.exit
  %136 = ptrtoint ptr %has_ibss to i32
  call void @__asan_load2_noabort(i32 %136)
  %bf.load214 = load i16, ptr %has_ibss, align 2
  %137 = and i16 %bf.load214, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %137)
  %tobool218.not = icmp eq i16 %137, 0
  br i1 %tobool218.not, label %if.end213.if.end264_crit_edge, label %if.then219

if.end213.if.end264_crit_edge:                    ; preds = %if.end213
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end264

if.then219:                                       ; preds = %if.end213
  %pm_on = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 40
  %138 = ptrtoint ptr %pm_on to i32
  call void @__asan_load2_noabort(i32 %138)
  %139 = load i16, ptr %pm_on, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %rec.i503) #8
  %140 = call i16 @llvm.bswap.i16(i16 %139) #8
  %141 = ptrtoint ptr %rec.i503 to i32
  call void @__asan_store2_noabort(i32 %141)
  store i16 %140, ptr %rec.i503, align 2
  %142 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %ops, align 4
  %write_ltv.i505 = getelementptr inbounds %struct.hermes_ops, ptr %143, i32 0, i32 6
  %144 = ptrtoint ptr %write_ltv.i505 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %write_ltv.i505, align 4
  %call.i506 = call i32 %145(ptr noundef %hw1, i32 noundef 0, i16 noundef zeroext -1015, i16 noundef zeroext 2, ptr noundef nonnull %rec.i503) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rec.i503) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i506)
  %tobool221.not = icmp eq i32 %call.i506, 0
  br i1 %tobool221.not, label %if.end230, label %do.end225

do.end225:                                        ; preds = %if.then219
  call void @__sanitizer_cov_trace_pc() #10
  %call229 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.116, ptr noundef %1, i32 noundef %call.i506) #11
  br label %cleanup322

if.end230:                                        ; preds = %if.then219
  %pm_mcast = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 41
  %146 = ptrtoint ptr %pm_mcast to i32
  call void @__asan_load2_noabort(i32 %146)
  %147 = load i16, ptr %pm_mcast, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %rec.i507) #8
  %148 = call i16 @llvm.bswap.i16(i16 %147) #8
  %149 = ptrtoint ptr %rec.i507 to i32
  call void @__asan_store2_noabort(i32 %149)
  store i16 %148, ptr %rec.i507, align 2
  %150 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %ops, align 4
  %write_ltv.i509 = getelementptr inbounds %struct.hermes_ops, ptr %151, i32 0, i32 6
  %152 = ptrtoint ptr %write_ltv.i509 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %write_ltv.i509, align 4
  %call.i510 = call i32 %153(ptr noundef %hw1, i32 noundef 0, i16 noundef zeroext -1013, i16 noundef zeroext 2, ptr noundef nonnull %rec.i507) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rec.i507) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i510)
  %tobool232.not = icmp eq i32 %call.i510, 0
  br i1 %tobool232.not, label %if.end241, label %do.end236

do.end236:                                        ; preds = %if.end230
  call void @__sanitizer_cov_trace_pc() #10
  %call240 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.116, ptr noundef %1, i32 noundef %call.i510) #11
  br label %cleanup322

if.end241:                                        ; preds = %if.end230
  %pm_period = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 42
  %154 = ptrtoint ptr %pm_period to i32
  call void @__asan_load2_noabort(i32 %154)
  %155 = load i16, ptr %pm_period, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %rec.i511) #8
  %156 = call i16 @llvm.bswap.i16(i16 %155) #8
  %157 = ptrtoint ptr %rec.i511 to i32
  call void @__asan_store2_noabort(i32 %157)
  store i16 %156, ptr %rec.i511, align 2
  %158 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %ops, align 4
  %write_ltv.i513 = getelementptr inbounds %struct.hermes_ops, ptr %159, i32 0, i32 6
  %160 = ptrtoint ptr %write_ltv.i513 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %write_ltv.i513, align 4
  %call.i514 = call i32 %161(ptr noundef %hw1, i32 noundef 0, i16 noundef zeroext -1012, i16 noundef zeroext 2, ptr noundef nonnull %rec.i511) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rec.i511) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i514)
  %tobool243.not = icmp eq i32 %call.i514, 0
  br i1 %tobool243.not, label %if.end252, label %do.end247

do.end247:                                        ; preds = %if.end241
  call void @__sanitizer_cov_trace_pc() #10
  %call251 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.116, ptr noundef %1, i32 noundef %call.i514) #11
  br label %cleanup322

if.end252:                                        ; preds = %if.end241
  %pm_timeout = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 43
  %162 = ptrtoint ptr %pm_timeout to i32
  call void @__asan_load2_noabort(i32 %162)
  %163 = load i16, ptr %pm_timeout, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %rec.i515) #8
  %164 = call i16 @llvm.bswap.i16(i16 %163) #8
  %165 = ptrtoint ptr %rec.i515 to i32
  call void @__asan_store2_noabort(i32 %165)
  store i16 %164, ptr %rec.i515, align 2
  %166 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %ops, align 4
  %write_ltv.i517 = getelementptr inbounds %struct.hermes_ops, ptr %167, i32 0, i32 6
  %168 = ptrtoint ptr %write_ltv.i517 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %write_ltv.i517, align 4
  %call.i518 = call i32 %169(ptr noundef %hw1, i32 noundef 0, i16 noundef zeroext -1011, i16 noundef zeroext 2, ptr noundef nonnull %rec.i515) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rec.i515) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i518)
  %tobool254.not = icmp eq i32 %call.i518, 0
  br i1 %tobool254.not, label %if.end252.if.end264_crit_edge, label %do.end258

if.end252.if.end264_crit_edge:                    ; preds = %if.end252
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end264

do.end258:                                        ; preds = %if.end252
  call void @__sanitizer_cov_trace_pc() #10
  %call262 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.116, ptr noundef %1, i32 noundef %call.i518) #11
  br label %cleanup322

if.end264:                                        ; preds = %if.end252.if.end264_crit_edge, %if.end213.if.end264_crit_edge
  %170 = ptrtoint ptr %has_ibss to i32
  call void @__asan_load2_noabort(i32 %170)
  %bf.load265 = load i16, ptr %has_ibss, align 2
  %171 = and i16 %bf.load265, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %171)
  %tobool269.not = icmp eq i16 %171, 0
  br i1 %tobool269.not, label %if.end264.if.end282_crit_edge, label %if.then270

if.end264.if.end282_crit_edge:                    ; preds = %if.end264
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end282

if.then270:                                       ; preds = %if.end264
  %preamble = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 44
  %172 = ptrtoint ptr %preamble to i32
  call void @__asan_load2_noabort(i32 %172)
  %173 = load i16, ptr %preamble, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %rec.i519) #8
  %174 = call i16 @llvm.bswap.i16(i16 %173) #8
  %175 = ptrtoint ptr %rec.i519 to i32
  call void @__asan_store2_noabort(i32 %175)
  store i16 %174, ptr %rec.i519, align 2
  %176 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %ops, align 4
  %write_ltv.i521 = getelementptr inbounds %struct.hermes_ops, ptr %177, i32 0, i32 6
  %178 = ptrtoint ptr %write_ltv.i521 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %write_ltv.i521, align 4
  %call.i522 = call i32 %179(ptr noundef %hw1, i32 noundef 0, i16 noundef zeroext -884, i16 noundef zeroext 2, ptr noundef nonnull %rec.i519) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rec.i519) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i522)
  %tobool272.not = icmp eq i32 %call.i522, 0
  br i1 %tobool272.not, label %if.then270.if.end282_crit_edge, label %do.end276

if.then270.if.end282_crit_edge:                   ; preds = %if.then270
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end282

do.end276:                                        ; preds = %if.then270
  call void @__sanitizer_cov_trace_pc() #10
  %call280 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.125, ptr noundef %1, i32 noundef %call.i522) #11
  br label %cleanup322

if.end282:                                        ; preds = %if.then270.if.end282_crit_edge, %if.end264.if.end282_crit_edge
  %180 = ptrtoint ptr %has_ibss to i32
  call void @__asan_load2_noabort(i32 %180)
  %bf.load283 = load i16, ptr %has_ibss, align 2
  %181 = and i16 %bf.load283, 8208
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %181)
  %182 = icmp eq i16 %181, 0
  br i1 %182, label %if.end282.if.end305_crit_edge, label %if.then293

if.end282.if.end305_crit_edge:                    ; preds = %if.end282
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end305

if.then293:                                       ; preds = %if.end282
  %call294 = call i32 @__orinoco_hw_setup_enc(ptr noundef %priv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call294)
  %tobool295.not = icmp eq i32 %call294, 0
  br i1 %tobool295.not, label %if.then293.if.end305_crit_edge, label %do.end299

if.then293.if.end305_crit_edge:                   ; preds = %if.then293
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end305

do.end299:                                        ; preds = %if.then293
  call void @__sanitizer_cov_trace_pc() #10
  %call303 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.128, ptr noundef %1, i32 noundef %call294) #11
  br label %cleanup322

if.end305:                                        ; preds = %if.then293.if.end305_crit_edge, %if.end282.if.end305_crit_edge
  %iw_mode306 = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 25
  %183 = ptrtoint ptr %iw_mode306 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %iw_mode306, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %184)
  %cmp307 = icmp eq i32 %184, 6
  %type = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 32
  %. = select i1 %cmp307, i16 801, i16 1
  %.531 = select i1 %cmp307, i16 2872, i16 3896
  %185 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %185)
  store i16 %., ptr %type, align 16
  %186 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %ops, align 4
  %cmd_wait315 = getelementptr inbounds %struct.hermes_ops, ptr %187, i32 0, i32 1
  %188 = ptrtoint ptr %cmd_wait315 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %cmd_wait315, align 4
  %call316 = call i32 %189(ptr noundef %hw1, i16 noundef zeroext %.531, i16 noundef zeroext 0, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call316)
  %tobool318.not = icmp eq i32 %call316, 0
  br i1 %tobool318.not, label %if.end320, label %if.end305.cleanup322_crit_edge

if.end305.cleanup322_crit_edge:                   ; preds = %if.end305
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup322

if.end320:                                        ; preds = %if.end305
  call void @__sanitizer_cov_trace_pc() #10
  %promiscuous = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 52
  %190 = ptrtoint ptr %promiscuous to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 0, ptr %promiscuous, align 4
  %mc_count = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 53
  %191 = ptrtoint ptr %mc_count to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 0, ptr %mc_count, align 4
  %192 = ptrtoint ptr %iw_mode306 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %iw_mode306, align 4
  %iftype = getelementptr i8, ptr %1, i32 2308
  %194 = ptrtoint ptr %iftype to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 %193, ptr %iftype, align 4
  br label %cleanup322

cleanup322:                                       ; preds = %if.end320, %if.end305.cleanup322_crit_edge, %do.end299, %do.end276, %do.end258, %do.end247, %do.end236, %do.end225, %do.end208, %do.end197, %do.end177, %do.end146, %do.end118, %do.end97, %do.end72, %do.end60, %do.end26, %do.end9, %do.end
  %retval.1 = phi i32 [ %call2, %do.end ], [ %call.i, %do.end9 ], [ %call.i472, %do.end26 ], [ %err.0.i, %do.end72 ], [ %call92, %do.end97 ], [ %call113, %do.end118 ], [ %call141, %do.end146 ], [ %call.i486, %do.end177 ], [ %err.0, %do.end197 ], [ %retval.0.i527, %do.end208 ], [ %call.i506, %do.end225 ], [ %call.i510, %do.end236 ], [ %call.i514, %do.end247 ], [ %call.i518, %do.end258 ], [ %call.i522, %do.end276 ], [ %call294, %do.end299 ], [ 0, %if.end320 ], [ %call.i476, %do.end60 ], [ %call316, %if.end305.cleanup322_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %idbuf) #8
  ret i32 %retval.1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__orinoco_hw_set_wap(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  %rec.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 18
  %firmware_type = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 20
  %0 = ptrtoint ptr %firmware_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %firmware_type, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.149)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 2, label %sw.bb2
    i32 1, label %sw.bb
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %bssid_fixed = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 34
  %3 = ptrtoint ptr %bssid_fixed to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %bssid_fixed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  %. = select i1 %tobool.not, i16 256, i16 512
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %rec.i) #8
  %5 = ptrtoint ptr %rec.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %., ptr %rec.i, align 2
  %ops.i = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 18, i32 4
  %6 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops.i, align 4
  %write_ltv.i = getelementptr inbounds %struct.hermes_ops, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %write_ltv.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write_ltv.i, align 4
  %call.i = call i32 %9(ptr noundef %hw1, i32 noundef 0, i16 noundef zeroext -979, i16 noundef zeroext 2, ptr noundef nonnull %rec.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rec.i) #8
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %ops = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 18, i32 4
  %10 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops, align 4
  %write_ltv = getelementptr inbounds %struct.hermes_ops, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %write_ltv to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write_ltv, align 4
  %desired_bssid = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 33
  %call3 = tail call i32 %13(ptr noundef %hw1, i32 noundef 0, i16 noundef zeroext -991, i16 noundef zeroext 4, ptr noundef %desired_bssid) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb, %entry.sw.epilog_crit_edge
  %err.0 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ %call.i, %sw.bb ], [ %call3, %sw.bb2 ]
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__orinoco_hw_set_bitrate(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  %rec.i21 = alloca i16, align 2
  %rec.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 18
  %bitratemode = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 30
  %0 = ptrtoint ptr %bitratemode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bitratemode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %1)
  %cmp = icmp ugt i32 %1, 7
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %ndev = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 16
  %2 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ndev, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.130, ptr noundef %3, i32 noundef %1) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %firmware_type = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 20
  %4 = ptrtoint ptr %firmware_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %firmware_type, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.150)
  switch i32 %5, label %do.body6 [
    i32 0, label %sw.bb
    i32 1, label %if.end.sw.bb3_crit_edge
    i32 2, label %if.end.sw.bb3_crit_edge25
  ]

if.end.sw.bb3_crit_edge25:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb3

if.end.sw.bb3_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb3

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %agere_txratectrl = getelementptr [8 x %struct.anon.136], ptr @bitrate_table, i32 0, i32 %1, i32 2
  %7 = ptrtoint ptr %agere_txratectrl to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %agere_txratectrl, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %rec.i) #8
  %9 = tail call i16 @llvm.bswap.i16(i16 %8) #8
  %10 = ptrtoint ptr %rec.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %rec.i, align 2
  %ops.i = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 18, i32 4
  %11 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops.i, align 4
  %write_ltv.i = getelementptr inbounds %struct.hermes_ops, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %write_ltv.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %write_ltv.i, align 4
  %call.i = call i32 %14(ptr noundef %hw1, i32 noundef 0, i16 noundef zeroext -892, i16 noundef zeroext 2, ptr noundef nonnull %rec.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rec.i) #8
  br label %cleanup

sw.bb3:                                           ; preds = %if.end.sw.bb3_crit_edge, %if.end.sw.bb3_crit_edge25
  %intersil_txratectrl = getelementptr [8 x %struct.anon.136], ptr @bitrate_table, i32 0, i32 %1, i32 3
  %15 = ptrtoint ptr %intersil_txratectrl to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %intersil_txratectrl, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %rec.i21) #8
  %17 = tail call i16 @llvm.bswap.i16(i16 %16) #8
  %18 = ptrtoint ptr %rec.i21 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %rec.i21, align 2
  %ops.i22 = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 18, i32 4
  %19 = ptrtoint ptr %ops.i22 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops.i22, align 4
  %write_ltv.i23 = getelementptr inbounds %struct.hermes_ops, ptr %20, i32 0, i32 6
  %21 = ptrtoint ptr %write_ltv.i23 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %write_ltv.i23, align 4
  %call.i24 = call i32 %22(ptr noundef %hw1, i32 noundef 0, i16 noundef zeroext -892, i16 noundef zeroext 2, ptr noundef nonnull %rec.i21) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rec.i21) #8
  br label %cleanup

do.body6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/intersil/orinoco/hw.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 732, 0\0A.popsection", ""() #8, !srcloc !235
  unreachable

cleanup:                                          ; preds = %sw.bb3, %sw.bb, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call.i24, %sw.bb3 ], [ %call.i, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__orinoco_hw_setup_enc(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  %rec.i112 = alloca i16, align 2
  %rec.i108 = alloca i16, align 2
  %rec.i104 = alloca i16, align 2
  %rec.i100 = alloca i16, align 2
  %rec.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 18
  %encode_alg = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 26
  %0 = ptrtoint ptr %encode_alg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %encode_alg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @__orinoco_hw_setup_wepkeys(ptr noundef %priv)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %wep_restrict = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 27
  %2 = ptrtoint ptr %wep_restrict to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %wep_restrict, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  %. = select i1 %tobool.not, i16 1, i16 2
  %wpa_enabled = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 62
  %4 = ptrtoint ptr %wpa_enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %wpa_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool4.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool4.not, label %if.else6, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.else6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %encode_alg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %encode_alg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp8 = icmp eq i32 %6, 1
  %.98 = select i1 %cmp8, i16 256, i16 0
  br label %if.end12

if.end12:                                         ; preds = %if.else6, %if.end.if.end12_crit_edge
  %enc_flag.0 = phi i16 [ 512, %if.end.if.end12_crit_edge ], [ %.98, %if.else6 ]
  %firmware_type = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 20
  %7 = ptrtoint ptr %firmware_type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %firmware_type, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.151)
  switch i32 %8, label %if.end12.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %if.end12.sw.bb38_crit_edge
    i32 2, label %if.end12.sw.bb38_crit_edge116
  ]

if.end12.sw.bb38_crit_edge116:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb38

if.end12.sw.bb38_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb38

if.end12.sw.epilog_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end12
  %10 = ptrtoint ptr %encode_alg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %encode_alg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp14 = icmp eq i32 %11, 1
  br i1 %cmp14, label %if.then15, label %sw.bb.if.end17_crit_edge

sw.bb.if.end17_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.then15:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %rec.i) #8
  %12 = shl nuw nsw i16 %., 8
  %13 = ptrtoint ptr %rec.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %rec.i, align 2
  %ops.i = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 18, i32 4
  %14 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops.i, align 4
  %write_ltv.i = getelementptr inbounds %struct.hermes_ops, ptr %15, i32 0, i32 6
  %16 = ptrtoint ptr %write_ltv.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write_ltv.i, align 4
  %call.i = call i32 %17(ptr noundef %hw1, i32 noundef 0, i16 noundef zeroext -991, i16 noundef zeroext 2, ptr noundef nonnull %rec.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rec.i) #8
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %sw.bb.if.end17_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %rec.i100) #8
  %18 = ptrtoint ptr %rec.i100 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %enc_flag.0, ptr %rec.i100, align 2
  %ops.i101 = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 18, i32 4
  %19 = ptrtoint ptr %ops.i101 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops.i101, align 4
  %write_ltv.i102 = getelementptr inbounds %struct.hermes_ops, ptr %20, i32 0, i32 6
  %21 = ptrtoint ptr %write_ltv.i102 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %write_ltv.i102, align 4
  %call.i103 = call i32 %22(ptr noundef %hw1, i32 noundef 0, i16 noundef zeroext -992, i16 noundef zeroext 2, ptr noundef nonnull %rec.i100) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rec.i100) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i103)
  %tobool20.not = icmp eq i32 %call.i103, 0
  br i1 %tobool20.not, label %if.end22, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end22:                                         ; preds = %if.end17
  %has_wpa = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 24
  %23 = ptrtoint ptr %has_wpa to i32
  call void @__asan_load2_noabort(i32 %23)
  %bf.load23 = load i16, ptr %has_wpa, align 2
  %24 = and i16 %bf.load23, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %tobool26.not = icmp eq i16 %24, 0
  br i1 %tobool26.not, label %if.end22.sw.epilog_crit_edge, label %if.then27

if.end22.sw.epilog_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then27:                                        ; preds = %if.end22
  %25 = ptrtoint ptr %wpa_enabled to i32
  call void @__asan_load1_noabort(i32 %25)
  %bf.load28 = load i8, ptr %wpa_enabled, align 4
  %bf.lshr29 = lshr i8 %bf.load28, 3
  %bf.clear30 = and i8 %bf.lshr29, 7
  %conv32 = zext i8 %bf.clear30 to i16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %rec.i104) #8
  %26 = shl nuw nsw i16 %conv32, 8
  %27 = ptrtoint ptr %rec.i104 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %rec.i104, align 2
  %28 = ptrtoint ptr %ops.i101 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ops.i101, align 4
  %write_ltv.i106 = getelementptr inbounds %struct.hermes_ops, ptr %29, i32 0, i32 6
  %30 = ptrtoint ptr %write_ltv.i106 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %write_ltv.i106, align 4
  %call.i107 = call i32 %31(ptr noundef %hw1, i32 noundef 0, i16 noundef zeroext -843, i16 noundef zeroext 2, ptr noundef nonnull %rec.i104) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rec.i104) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i107)
  %tobool34.not = icmp eq i32 %call.i107, 0
  br i1 %tobool34.not, label %if.then27.sw.epilog_crit_edge, label %if.then27.cleanup_crit_edge

if.then27.cleanup_crit_edge:                      ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then27.sw.epilog_crit_edge:                    ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb38:                                          ; preds = %if.end12.sw.bb38_crit_edge, %if.end12.sw.bb38_crit_edge116
  %32 = ptrtoint ptr %encode_alg to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %encode_alg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %33)
  %cmp40 = icmp eq i32 %33, 1
  br i1 %cmp40, label %if.then42, label %sw.bb38.if.end58_crit_edge

sw.bb38.if.end58_crit_edge:                       ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58

if.then42:                                        ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp47 = icmp eq i32 %8, 2
  %spec.select99 = select i1 %cmp47, i32 3, i32 1
  %master_wep_flag.0 = select i1 %tobool.not, i32 %spec.select99, i32 3
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %rec.i108) #8
  %34 = shl nuw nsw i16 %., 8
  %35 = ptrtoint ptr %rec.i108 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %34, ptr %rec.i108, align 2
  %ops.i109 = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 18, i32 4
  %36 = ptrtoint ptr %ops.i109 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ops.i109, align 4
  %write_ltv.i110 = getelementptr inbounds %struct.hermes_ops, ptr %37, i32 0, i32 6
  %38 = ptrtoint ptr %write_ltv.i110 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %write_ltv.i110, align 4
  %call.i111 = call i32 %39(ptr noundef %hw1, i32 noundef 0, i16 noundef zeroext -982, i16 noundef zeroext 2, ptr noundef nonnull %rec.i108) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rec.i108) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i111)
  %tobool54.not = icmp eq i32 %call.i111, 0
  br i1 %tobool54.not, label %if.then42.if.end58_crit_edge, label %if.then42.cleanup_crit_edge

if.then42.cleanup_crit_edge:                      ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then42.if.end58_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58

if.end58:                                         ; preds = %if.then42.if.end58_crit_edge, %sw.bb38.if.end58_crit_edge
  %master_wep_flag.1 = phi i32 [ %master_wep_flag.0, %if.then42.if.end58_crit_edge ], [ 0, %sw.bb38.if.end58_crit_edge ]
  %iw_mode = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 25
  %40 = ptrtoint ptr %iw_mode to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %iw_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %41)
  %cmp59 = icmp eq i32 %41, 6
  %or = or i32 %master_wep_flag.1, 128
  %spec.select = select i1 %cmp59, i32 %or, i32 %master_wep_flag.1
  %conv63 = trunc i32 %spec.select to i16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %rec.i112) #8
  %42 = call i16 @llvm.bswap.i16(i16 %conv63) #8
  %43 = ptrtoint ptr %rec.i112 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %42, ptr %rec.i112, align 2
  %ops.i113 = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 18, i32 4
  %44 = ptrtoint ptr %ops.i113 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ops.i113, align 4
  %write_ltv.i114 = getelementptr inbounds %struct.hermes_ops, ptr %45, i32 0, i32 6
  %46 = ptrtoint ptr %write_ltv.i114 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %write_ltv.i114, align 4
  %call.i115 = call i32 %47(ptr noundef %hw1, i32 noundef 0, i16 noundef zeroext -984, i16 noundef zeroext 2, ptr noundef nonnull %rec.i112) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rec.i112) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i115)
  %tobool65.not = icmp eq i32 %call.i115, 0
  br i1 %tobool65.not, label %if.end58.sw.epilog_crit_edge, label %if.end58.cleanup_crit_edge

if.end58.cleanup_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end58.sw.epilog_crit_edge:                     ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end58.sw.epilog_crit_edge, %if.then27.sw.epilog_crit_edge, %if.end22.sw.epilog_crit_edge, %if.end12.sw.epilog_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end58.cleanup_crit_edge, %if.then42.cleanup_crit_edge, %if.then27.cleanup_crit_edge, %if.end17.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ %call.i103, %if.end17.cleanup_crit_edge ], [ %call.i107, %if.then27.cleanup_crit_edge ], [ %call.i111, %if.then42.cleanup_crit_edge ], [ %call.i115, %if.end58.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @orinoco_hw_get_tkip_iv(ptr noundef %priv, i32 noundef %key, ptr nocapture noundef writeonly %tsc) local_unnamed_addr #0 align 64 {
entry:
  %tsc_arr = alloca [4 x [8 x i8]], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tsc_arr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %key)
  %0 = icmp ugt i32 %key, 3
  %1 = call ptr @memset(ptr %tsc_arr, i32 255, i32 32)
  br i1 %0, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %hw1 = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 18
  %ops = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 18, i32 4
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %read_ltv = getelementptr inbounds %struct.hermes_ops, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %read_ltv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read_ltv, align 4
  %call = call i32 %5(ptr noundef %hw1, i32 noundef 0, i16 noundef zeroext -629, i32 noundef 32, ptr noundef null, ptr noundef nonnull %tsc_arr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr [4 x [8 x i8]], ptr %tsc_arr, i32 0, i32 %key
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %6, i32 8)
  %7 = load i64, ptr %arrayidx, align 1
  %8 = ptrtoint ptr %tsc to i32
  call void @__asan_storeN_noabort(i32 %8, i32 8)
  store i64 %7, ptr %tsc, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then3 ], [ %call, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tsc_arr) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @orinoco_hw_get_act_bitrate(ptr noundef %priv, ptr nocapture noundef writeonly %bitrate) local_unnamed_addr #0 align 64 {
entry:
  %rec.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 18
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %rec.i) #8
  %0 = ptrtoint ptr %rec.i to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %rec.i, align 2, !annotation !231
  %ops.i = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 18, i32 4
  %1 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ops.i, align 4
  %read_ltv.i = getelementptr inbounds %struct.hermes_ops, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %read_ltv.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %read_ltv.i, align 4
  %call.i = call i32 %4(ptr noundef %hw1, i32 noundef 0, i16 noundef zeroext -700, i32 noundef 2, ptr noundef null, ptr noundef nonnull %rec.i) #8
  %5 = ptrtoint ptr %rec.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %rec.i, align 2
  %7 = call i16 @llvm.bswap.i16(i16 %6) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rec.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %firmware_type = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 20
  %8 = ptrtoint ptr %firmware_type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %firmware_type, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.152)
  switch i32 %9, label %do.body24 [
    i32 0, label %sw.bb
    i32 1, label %if.end.sw.bb6_crit_edge
    i32 2, label %if.end.sw.bb6_crit_edge54
  ]

if.end.sw.bb6_crit_edge54:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb6

if.end.sw.bb6_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb6

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %6)
  %cmp = icmp eq i16 %6, 1536
  br i1 %cmp, label %if.then3, label %if.else

if.then3:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %bitrate to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 5500000, ptr %bitrate, align 4
  br label %cleanup

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i16 %7 to i32
  %mul = mul i32 %conv, 1000000
  %12 = ptrtoint ptr %bitrate to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %mul, ptr %bitrate, align 4
  br label %cleanup

sw.bb6:                                           ; preds = %if.end.sw.bb6_crit_edge, %if.end.sw.bb6_crit_edge54
  %13 = add i16 %6, -256
  %14 = call i16 @llvm.bswap.i16(i16 %13)
  call void @__sanitizer_cov_trace_const_cmp2(i16 15, i16 %14)
  %15 = icmp ult i16 %14, 15
  br i1 %15, label %switch.hole_check, label %sw.bb6.for.inc.7_crit_edge

sw.bb6.for.inc.7_crit_edge:                       ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.7

for.inc.7:                                        ; preds = %switch.hole_check.for.inc.7_crit_edge, %sw.bb6.for.inc.7_crit_edge
  %ndev = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 16
  %16 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ndev, align 4
  %conv21 = zext i16 %7 to i32
  %call22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.132, ptr noundef %17, i32 noundef %conv21) #11
  br label %cleanup

switch.hole_check:                                ; preds = %sw.bb6
  %switch.shifted = lshr i16 16591, %14
  %18 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %switch.lobit.not = icmp eq i16 %18, 0
  br i1 %switch.lobit.not, label %switch.hole_check.for.inc.7_crit_edge, label %switch.lookup

switch.hole_check.for.inc.7_crit_edge:            ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.7

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #10
  %19 = sext i16 %14 to i32
  %switch.gep = getelementptr inbounds [15 x i32], ptr @switch.table.orinoco_hw_get_act_bitrate, i32 0, i32 %19
  %20 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %20)
  %switch.load = load i32, ptr %switch.gep, align 4
  %arrayidx = getelementptr [8 x %struct.anon.136], ptr @bitrate_table, i32 0, i32 %switch.load
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx, align 4
  %mul16 = mul i32 %22, 100000
  %23 = ptrtoint ptr %bitrate to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %mul16, ptr %bitrate, align 4
  br label %cleanup

do.body24:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/intersil/orinoco/hw.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 778, 0\0A.popsection", ""() #8, !srcloc !236
  unreachable

cleanup:                                          ; preds = %switch.lookup, %for.inc.7, %if.else, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ -5, %for.inc.7 ], [ 0, %switch.lookup ], [ 0, %if.then3 ], [ 0, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__orinoco_hw_setup_wepkeys(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  %rec.i137 = alloca i16, align 2
  %rec.i = alloca i16, align 2
  %keys = alloca [4 x %struct.orinoco_key], align 2
  %key50 = alloca [13 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 18
  %firmware_type = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 20
  %0 = ptrtoint ptr %firmware_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %firmware_type, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.153)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %entry.sw.bb24_crit_edge
    i32 2, label %entry.sw.bb24_crit_edge152
  ]

entry.sw.bb24_crit_edge152:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb24

entry.sw.bb24_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb24

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %keys) #8
  %3 = call ptr @memset(ptr %keys, i32 0, i32 64)
  %arrayidx = getelementptr %struct.orinoco_private, ptr %priv, i32 0, i32 29, i32 0
  %key_len = getelementptr %struct.orinoco_private, ptr %priv, i32 0, i32 29, i32 0, i32 2
  %4 = ptrtoint ptr %key_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %key_len, align 4
  %6 = tail call i32 @llvm.smin.i32(i32 %5, i32 14)
  %data = getelementptr inbounds [4 x %struct.orinoco_key], ptr %keys, i32 0, i32 0, i32 1
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %9 = call ptr @memcpy(ptr %data, ptr %8, i32 %6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %6)
  %cmp7 = icmp sgt i32 %6, 5
  br i1 %cmp7, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %keys to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 3328, ptr %keys, align 2
  br label %if.end17

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp10 = icmp sgt i32 %5, 0
  br i1 %cmp10, label %if.then11, label %if.else14

if.then11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %keys to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 1280, ptr %keys, align 2
  br label %if.end17

if.else14:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %keys to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %keys, align 2
  br label %if.end17

if.end17:                                         ; preds = %if.else14, %if.then11, %if.then
  %arrayidx.1 = getelementptr %struct.orinoco_private, ptr %priv, i32 0, i32 29, i32 1
  %key_len.1 = getelementptr %struct.orinoco_private, ptr %priv, i32 0, i32 29, i32 1, i32 2
  %13 = ptrtoint ptr %key_len.1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %key_len.1, align 4
  %15 = tail call i32 @llvm.smin.i32(i32 %14, i32 14)
  %arrayidx4.1 = getelementptr inbounds [4 x %struct.orinoco_key], ptr %keys, i32 0, i32 1
  %data.1 = getelementptr inbounds [4 x %struct.orinoco_key], ptr %keys, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.1, align 4
  %18 = call ptr @memcpy(ptr %data.1, ptr %17, i32 %15)
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %15)
  %cmp7.1 = icmp sgt i32 %15, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp10.1 = icmp sgt i32 %14, 0
  %. = select i1 %cmp10.1, i16 1280, i16 0
  %.sink = select i1 %cmp7.1, i16 3328, i16 %.
  %19 = ptrtoint ptr %arrayidx4.1 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %.sink, ptr %arrayidx4.1, align 2
  %arrayidx.2 = getelementptr %struct.orinoco_private, ptr %priv, i32 0, i32 29, i32 2
  %key_len.2 = getelementptr %struct.orinoco_private, ptr %priv, i32 0, i32 29, i32 2, i32 2
  %20 = ptrtoint ptr %key_len.2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %key_len.2, align 4
  %22 = tail call i32 @llvm.smin.i32(i32 %21, i32 14)
  %arrayidx4.2 = getelementptr inbounds [4 x %struct.orinoco_key], ptr %keys, i32 0, i32 2
  %data.2 = getelementptr inbounds [4 x %struct.orinoco_key], ptr %keys, i32 0, i32 2, i32 1
  %23 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.2, align 4
  %25 = call ptr @memcpy(ptr %data.2, ptr %24, i32 %22)
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %22)
  %cmp7.2 = icmp sgt i32 %22, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp10.2 = icmp sgt i32 %21, 0
  %.150 = select i1 %cmp10.2, i16 1280, i16 0
  %.sink148 = select i1 %cmp7.2, i16 3328, i16 %.150
  %26 = ptrtoint ptr %arrayidx4.2 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %.sink148, ptr %arrayidx4.2, align 2
  %arrayidx.3 = getelementptr %struct.orinoco_private, ptr %priv, i32 0, i32 29, i32 3
  %key_len.3 = getelementptr %struct.orinoco_private, ptr %priv, i32 0, i32 29, i32 3, i32 2
  %27 = ptrtoint ptr %key_len.3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %key_len.3, align 4
  %29 = tail call i32 @llvm.smin.i32(i32 %28, i32 14)
  %arrayidx4.3 = getelementptr inbounds [4 x %struct.orinoco_key], ptr %keys, i32 0, i32 3
  %data.3 = getelementptr inbounds [4 x %struct.orinoco_key], ptr %keys, i32 0, i32 3, i32 1
  %30 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.3, align 4
  %32 = call ptr @memcpy(ptr %data.3, ptr %31, i32 %29)
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %29)
  %cmp7.3 = icmp sgt i32 %29, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp10.3 = icmp sgt i32 %28, 0
  %.151 = select i1 %cmp10.3, i16 1280, i16 0
  %.sink149 = select i1 %cmp7.3, i16 3328, i16 %.151
  %33 = ptrtoint ptr %arrayidx4.3 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %.sink149, ptr %arrayidx4.3, align 2
  %ops = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 18, i32 4
  %34 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ops, align 4
  %write_ltv = getelementptr inbounds %struct.hermes_ops, ptr %35, i32 0, i32 6
  %36 = ptrtoint ptr %write_ltv to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %write_ltv, align 4
  %call = call i32 %37(ptr noundef %hw1, i32 noundef 0, i16 noundef zeroext -848, i16 noundef zeroext 33, ptr noundef nonnull %keys) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup, label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %keys) #8
  br label %cleanup82

cleanup:                                          ; preds = %if.end17
  %tx_key = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 28
  %38 = ptrtoint ptr %tx_key to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %tx_key, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %rec.i) #8
  %40 = call i16 @llvm.bswap.i16(i16 %39) #8
  %41 = ptrtoint ptr %rec.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %40, ptr %rec.i, align 2
  %42 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ops, align 4
  %write_ltv.i = getelementptr inbounds %struct.hermes_ops, ptr %43, i32 0, i32 6
  %44 = ptrtoint ptr %write_ltv.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %write_ltv.i, align 4
  %call.i = call i32 %45(ptr noundef %hw1, i32 noundef 0, i16 noundef zeroext -847, i16 noundef zeroext 2, ptr noundef nonnull %rec.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rec.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool21.not = icmp eq i32 %call.i, 0
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %keys) #8
  br i1 %tobool21.not, label %cleanup.sw.epilog_crit_edge, label %cleanup.cleanup82_crit_edge

cleanup.cleanup82_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup82

cleanup.sw.epilog_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb24:                                          ; preds = %entry.sw.bb24_crit_edge, %entry.sw.bb24_crit_edge152
  %tx_key26 = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 28
  %46 = ptrtoint ptr %tx_key26 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %tx_key26, align 2
  %idxprom = zext i16 %47 to i32
  %key_len28 = getelementptr %struct.orinoco_private, ptr %priv, i32 0, i32 29, i32 %idxprom, i32 2
  %48 = ptrtoint ptr %key_len28 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %key_len28, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %49)
  %cmp29 = icmp sgt i32 %49, 13
  br i1 %cmp29, label %do.end, label %if.else34

do.end:                                           ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #10
  %ndev = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 16
  %50 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ndev, align 4
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.134, ptr noundef %51, i32 noundef %idxprom, i32 noundef %49) #11
  br label %cleanup82

if.else34:                                        ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %49)
  %cmp35 = icmp sgt i32 %49, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp39 = icmp sgt i32 %49, 0
  %.135 = select i1 %cmp39, i16 4, i16 1
  %keylen.0 = select i1 %cmp35, i16 8, i16 %.135
  %ops58 = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 18, i32 4
  call void @llvm.lifetime.start.p0(i64 13, ptr nonnull %key50) #8
  %52 = call ptr @memset(ptr %key50, i32 0, i32 13)
  %arrayidx53 = getelementptr %struct.orinoco_private, ptr %priv, i32 0, i32 29, i32 0
  %53 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx53, align 4
  %key_len57 = getelementptr %struct.orinoco_private, ptr %priv, i32 0, i32 29, i32 0, i32 2
  %55 = ptrtoint ptr %key_len57 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %key_len57, align 4
  %57 = call ptr @memcpy(ptr %key50, ptr %54, i32 %56)
  %58 = ptrtoint ptr %ops58 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ops58, align 4
  %write_ltv59 = getelementptr inbounds %struct.hermes_ops, ptr %59, i32 0, i32 6
  %60 = ptrtoint ptr %write_ltv59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %write_ltv59, align 4
  %call65 = call i32 %61(ptr noundef %hw1, i32 noundef 0, i16 noundef zeroext -988, i16 noundef zeroext %keylen.0, ptr noundef nonnull %key50) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  call void @llvm.lifetime.end.p0(i64 13, ptr nonnull %key50) #8
  br i1 %tobool66.not, label %for.cond46, label %if.else34.cleanup82_crit_edge

if.else34.cleanup82_crit_edge:                    ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup82

for.cond46:                                       ; preds = %if.else34
  call void @llvm.lifetime.start.p0(i64 13, ptr nonnull %key50) #8
  %62 = call ptr @memset(ptr %key50, i32 0, i32 13)
  %arrayidx53.1 = getelementptr %struct.orinoco_private, ptr %priv, i32 0, i32 29, i32 1
  %63 = ptrtoint ptr %arrayidx53.1 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx53.1, align 4
  %key_len57.1 = getelementptr %struct.orinoco_private, ptr %priv, i32 0, i32 29, i32 1, i32 2
  %65 = ptrtoint ptr %key_len57.1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %key_len57.1, align 4
  %67 = call ptr @memcpy(ptr %key50, ptr %64, i32 %66)
  %68 = ptrtoint ptr %ops58 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ops58, align 4
  %write_ltv59.1 = getelementptr inbounds %struct.hermes_ops, ptr %69, i32 0, i32 6
  %70 = ptrtoint ptr %write_ltv59.1 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %write_ltv59.1, align 4
  %call65.1 = call i32 %71(ptr noundef %hw1, i32 noundef 0, i16 noundef zeroext -987, i16 noundef zeroext %keylen.0, ptr noundef nonnull %key50) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65.1)
  %tobool66.not.1 = icmp eq i32 %call65.1, 0
  call void @llvm.lifetime.end.p0(i64 13, ptr nonnull %key50) #8
  br i1 %tobool66.not.1, label %for.cond46.1, label %for.cond46.cleanup82_crit_edge

for.cond46.cleanup82_crit_edge:                   ; preds = %for.cond46
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup82

for.cond46.1:                                     ; preds = %for.cond46
  call void @llvm.lifetime.start.p0(i64 13, ptr nonnull %key50) #8
  %72 = call ptr @memset(ptr %key50, i32 0, i32 13)
  %arrayidx53.2 = getelementptr %struct.orinoco_private, ptr %priv, i32 0, i32 29, i32 2
  %73 = ptrtoint ptr %arrayidx53.2 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %arrayidx53.2, align 4
  %key_len57.2 = getelementptr %struct.orinoco_private, ptr %priv, i32 0, i32 29, i32 2, i32 2
  %75 = ptrtoint ptr %key_len57.2 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %key_len57.2, align 4
  %77 = call ptr @memcpy(ptr %key50, ptr %74, i32 %76)
  %78 = ptrtoint ptr %ops58 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %ops58, align 4
  %write_ltv59.2 = getelementptr inbounds %struct.hermes_ops, ptr %79, i32 0, i32 6
  %80 = ptrtoint ptr %write_ltv59.2 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %write_ltv59.2, align 4
  %call65.2 = call i32 %81(ptr noundef %hw1, i32 noundef 0, i16 noundef zeroext -986, i16 noundef zeroext %keylen.0, ptr noundef nonnull %key50) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65.2)
  %tobool66.not.2 = icmp eq i32 %call65.2, 0
  call void @llvm.lifetime.end.p0(i64 13, ptr nonnull %key50) #8
  br i1 %tobool66.not.2, label %for.cond46.2, label %for.cond46.1.cleanup82_crit_edge

for.cond46.1.cleanup82_crit_edge:                 ; preds = %for.cond46.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup82

for.cond46.2:                                     ; preds = %for.cond46.1
  call void @llvm.lifetime.start.p0(i64 13, ptr nonnull %key50) #8
  %82 = call ptr @memset(ptr %key50, i32 0, i32 13)
  %arrayidx53.3 = getelementptr %struct.orinoco_private, ptr %priv, i32 0, i32 29, i32 3
  %83 = ptrtoint ptr %arrayidx53.3 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %arrayidx53.3, align 4
  %key_len57.3 = getelementptr %struct.orinoco_private, ptr %priv, i32 0, i32 29, i32 3, i32 2
  %85 = ptrtoint ptr %key_len57.3 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %key_len57.3, align 4
  %87 = call ptr @memcpy(ptr %key50, ptr %84, i32 %86)
  %88 = ptrtoint ptr %ops58 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %ops58, align 4
  %write_ltv59.3 = getelementptr inbounds %struct.hermes_ops, ptr %89, i32 0, i32 6
  %90 = ptrtoint ptr %write_ltv59.3 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %write_ltv59.3, align 4
  %call65.3 = call i32 %91(ptr noundef %hw1, i32 noundef 0, i16 noundef zeroext -985, i16 noundef zeroext %keylen.0, ptr noundef nonnull %key50) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65.3)
  %tobool66.not.3 = icmp eq i32 %call65.3, 0
  call void @llvm.lifetime.end.p0(i64 13, ptr nonnull %key50) #8
  br i1 %tobool66.not.3, label %for.cond46.3, label %for.cond46.2.cleanup82_crit_edge

for.cond46.2.cleanup82_crit_edge:                 ; preds = %for.cond46.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup82

for.cond46.3:                                     ; preds = %for.cond46.2
  %92 = ptrtoint ptr %tx_key26 to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %tx_key26, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %rec.i137) #8
  %94 = call i16 @llvm.bswap.i16(i16 %93) #8
  %95 = ptrtoint ptr %rec.i137 to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 %94, ptr %rec.i137, align 2
  %96 = ptrtoint ptr %ops58 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %ops58, align 4
  %write_ltv.i139 = getelementptr inbounds %struct.hermes_ops, ptr %97, i32 0, i32 6
  %98 = ptrtoint ptr %write_ltv.i139 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %write_ltv.i139, align 4
  %call.i140 = call i32 %99(ptr noundef %hw1, i32 noundef 0, i16 noundef zeroext -989, i16 noundef zeroext 2, ptr noundef nonnull %rec.i137) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rec.i137) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i140)
  %tobool76.not = icmp eq i32 %call.i140, 0
  br i1 %tobool76.not, label %for.cond46.3.sw.epilog_crit_edge, label %for.cond46.3.cleanup82_crit_edge

for.cond46.3.cleanup82_crit_edge:                 ; preds = %for.cond46.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup82

for.cond46.3.sw.epilog_crit_edge:                 ; preds = %for.cond46.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.cond46.3.sw.epilog_crit_edge, %cleanup.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  br label %cleanup82

cleanup82:                                        ; preds = %sw.epilog, %for.cond46.3.cleanup82_crit_edge, %for.cond46.2.cleanup82_crit_edge, %for.cond46.1.cleanup82_crit_edge, %for.cond46.cleanup82_crit_edge, %if.else34.cleanup82_crit_edge, %do.end, %cleanup.cleanup82_crit_edge, %cleanup.thread
  %retval.4 = phi i32 [ 0, %sw.epilog ], [ %call.i140, %for.cond46.3.cleanup82_crit_edge ], [ %call.i, %cleanup.cleanup82_crit_edge ], [ %call, %cleanup.thread ], [ -7, %do.end ], [ %call65, %if.else34.cleanup82_crit_edge ], [ %call65.1, %for.cond46.cleanup82_crit_edge ], [ %call65.2, %for.cond46.1.cleanup82_crit_edge ], [ %call65.3, %for.cond46.2.cleanup82_crit_edge ]
  ret i32 %retval.4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__orinoco_hw_set_tkip_key(ptr noundef %priv, i32 noundef %key_idx, i32 noundef %set_tx, ptr nocapture noundef readonly %key, i32 noundef %key_len, ptr noundef readonly %rsc, i32 noundef %rsc_len, ptr noundef readonly %tsc, i32 noundef %tsc_len) local_unnamed_addr #0 align 64 {
entry:
  %rec.i = alloca i16, align 2
  %buf = alloca %struct.anon.137, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %buf) #8
  %hw1 = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 18
  %and = and i32 %key_idx, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %set_tx)
  %tobool.not = icmp eq i32 %set_tx, 0
  %or = or i32 %and, 32768
  %spec.select = select i1 %tobool.not, i32 %and, i32 %or
  %conv = trunc i32 %spec.select to i16
  %0 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %1 = ptrtoint ptr %buf to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 %0, ptr %buf, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %key_len)
  %cmp.not = icmp eq i32 %key_len, 32
  br i1 %cmp.not, label %if.end4, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %entry
  %tkip = getelementptr inbounds %struct.anon.137, ptr %buf, i32 0, i32 2
  %2 = call ptr @memcpy(ptr %tkip, ptr %key, i32 32)
  %3 = tail call i32 @llvm.umin.i32(i32 %tsc_len, i32 8)
  %rsc13 = getelementptr inbounds %struct.anon.137, ptr %buf, i32 0, i32 1
  %4 = ptrtoint ptr %rsc13 to i32
  call void @__asan_storeN_noabort(i32 %4, i32 8)
  store i64 0, ptr %rsc13, align 2
  %tsc14 = getelementptr inbounds %struct.anon.137, ptr %buf, i32 0, i32 3
  %5 = ptrtoint ptr %tsc14 to i32
  call void @__asan_storeN_noabort(i32 %5, i32 8)
  store i64 0, ptr %tsc14, align 2
  %cmp16.not = icmp eq ptr %rsc, null
  br i1 %cmp16.not, label %if.end4.if.end21_crit_edge, label %if.then18

if.end4.if.end21_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then18:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %6 = tail call i32 @llvm.umin.i32(i32 %rsc_len, i32 8)
  %7 = call ptr @memcpy(ptr %rsc13, ptr %rsc, i32 %6)
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %if.end4.if.end21_crit_edge
  %cmp22.not = icmp eq ptr %tsc, null
  br i1 %cmp22.not, label %if.else, label %if.then24

if.then24:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %8 = call ptr @memcpy(ptr %tsc14, ptr %tsc, i32 %3)
  br label %if.end28

if.else:                                          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr inbounds %struct.anon.137, ptr %buf, i32 0, i32 3, i32 4
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 16, ptr %arrayidx, align 2
  br label %if.end28

if.end28:                                         ; preds = %if.else, %if.then24
  %ops.i = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 18, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end28
  %k.060 = phi i32 [ 100, %if.end28 ], [ %dec, %for.inc.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %10(i32 noundef 214748000) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %rec.i) #8
  %11 = ptrtoint ptr %rec.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 -1, ptr %rec.i, align 2, !annotation !231
  %12 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops.i, align 4
  %read_ltv.i = getelementptr inbounds %struct.hermes_ops, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %read_ltv.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %read_ltv.i, align 4
  %call.i = call i32 %15(ptr noundef %hw1, i32 noundef 0, i16 noundef zeroext -623, i32 noundef 2, ptr noundef null, ptr noundef nonnull %rec.i) #8
  %16 = ptrtoint ptr %rec.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %rec.i, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rec.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool31.not = icmp eq i32 %call.i, 0
  br i1 %tobool31.not, label %lor.lhs.false, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

lor.lhs.false:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool32.not = icmp eq i16 %17, 0
  br i1 %tobool32.not, label %lor.lhs.false.for.end_crit_edge, label %for.inc

lor.lhs.false.for.end_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc:                                          ; preds = %lor.lhs.false
  %dec = add nsw i32 %k.060, -1
  %cmp29 = icmp ugt i32 %k.060, 1
  br i1 %cmp29, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %lor.lhs.false.for.end_crit_edge, %for.body.for.end_crit_edge
  %18 = phi i32 [ -110, %for.inc.for.end_crit_edge ], [ 0, %lor.lhs.false.for.end_crit_edge ], [ %call.i, %for.body.for.end_crit_edge ]
  %19 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops.i, align 4
  %write_ltv = getelementptr inbounds %struct.hermes_ops, ptr %20, i32 0, i32 6
  %21 = ptrtoint ptr %write_ltv to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %write_ltv, align 4
  %call39 = call i32 %22(ptr noundef %hw1, i32 noundef 0, i16 noundef zeroext -844, i16 noundef zeroext 26, ptr noundef nonnull %buf) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool40.not = icmp eq i32 %18, 0
  %spec.select64 = select i1 %tobool40.not, i32 %call39, i32 %18
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %spec.select64, %for.end ]
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %buf) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @orinoco_clear_tkip_key(ptr noundef %priv, i32 noundef %key_idx) local_unnamed_addr #0 align 64 {
entry:
  %rec.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 18
  %conv = trunc i32 %key_idx to i16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %rec.i) #8
  %0 = tail call i16 @llvm.bswap.i16(i16 %conv) #8
  %1 = ptrtoint ptr %rec.i to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 %0, ptr %rec.i, align 2
  %ops.i = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 18, i32 4
  %2 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i, align 4
  %write_ltv.i = getelementptr inbounds %struct.hermes_ops, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %write_ltv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write_ltv.i, align 4
  %call.i = call i32 %5(ptr noundef %hw1, i32 noundef 0, i16 noundef zeroext -842, i16 noundef zeroext 2, ptr noundef nonnull %rec.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rec.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %ndev = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 16
  %6 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ndev, align 4
  %call2 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.136, ptr noundef %7, i32 noundef %call.i, i32 noundef %key_idx) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__orinoco_hw_set_multicast_list(ptr noundef %priv, ptr noundef readonly %dev, i32 noundef %mc_count, i32 noundef %promisc) local_unnamed_addr #0 align 64 {
entry:
  %rec.i = alloca i16, align 2
  %mclist = alloca %struct.hermes_multicast, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 18
  %promiscuous = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 52
  %0 = ptrtoint ptr %promiscuous to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %promiscuous, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %promisc)
  %cmp.not = icmp eq i32 %1, %promisc
  br i1 %cmp.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then:                                          ; preds = %entry
  %conv = trunc i32 %promisc to i16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %rec.i) #8
  %2 = tail call i16 @llvm.bswap.i16(i16 %conv) #8
  %3 = ptrtoint ptr %rec.i to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %2, ptr %rec.i, align 2
  %ops.i = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 18, i32 4
  %4 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i, align 4
  %write_ltv.i = getelementptr inbounds %struct.hermes_ops, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %write_ltv.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write_ltv.i, align 4
  %call.i = call i32 %7(ptr noundef %hw1, i32 noundef 0, i16 noundef zeroext -891, i16 noundef zeroext 2, ptr noundef nonnull %rec.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rec.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.else, label %do.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %ndev = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 16
  %8 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ndev, align 4
  %call3 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.138, ptr noundef %9, i32 noundef %call.i) #11
  br label %if.end5

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %promiscuous to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %promisc, ptr %promiscuous, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.else, %do.end, %entry.if.end5_crit_edge
  %err.0 = phi i32 [ %call.i, %do.end ], [ 0, %if.else ], [ 0, %entry.if.end5_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %promisc)
  %tobool6.not = icmp eq i32 %promisc, 0
  br i1 %tobool6.not, label %land.lhs.true, label %if.end5.if.end45_crit_edge

if.end5.if.end45_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

land.lhs.true:                                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mc_count)
  %tobool7.not = icmp eq i32 %mc_count, 0
  br i1 %tobool7.not, label %lor.lhs.false, label %if.then10

lor.lhs.false:                                    ; preds = %land.lhs.true
  %mc_count8 = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 53
  %11 = ptrtoint ptr %mc_count8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mc_count8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool9.not = icmp eq i32 %12, 0
  br i1 %tobool9.not, label %lor.lhs.false.if.end45_crit_edge, label %if.then10.thread

lor.lhs.false.if.end45_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

if.then10.thread:                                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %mclist) #8
  %13 = call ptr @memset(ptr %mclist, i32 255, i32 96)
  br label %for.end

if.then10:                                        ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %mclist) #8
  %14 = call ptr @memset(ptr %mclist, i32 255, i32 96)
  %mc = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66
  %15 = ptrtoint ptr %mc to i32
  call void @__asan_load4_noabort(i32 %15)
  %ha.068 = load ptr, ptr %mc, align 4
  %cmp15.not69 = icmp eq ptr %ha.068, %mc
  %or.cond71 = or i1 %cmp15.not69, %tobool7.not
  br i1 %or.cond71, label %if.then10.for.end_crit_edge, label %if.then10.if.end20_crit_edge

if.then10.if.end20_crit_edge:                     ; preds = %if.then10
  br label %if.end20

if.then10.for.end_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end20:                                         ; preds = %if.end20.if.end20_crit_edge, %if.then10.if.end20_crit_edge
  %ha.073 = phi ptr [ %ha.0, %if.end20.if.end20_crit_edge ], [ %ha.068, %if.then10.if.end20_crit_edge ]
  %i.072 = phi i32 [ %inc, %if.end20.if.end20_crit_edge ], [ 0, %if.then10.if.end20_crit_edge ]
  %inc = add nuw i32 %i.072, 1
  %arrayidx = getelementptr [16 x [6 x i8]], ptr %mclist, i32 0, i32 %i.072
  %addr22 = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.073, i32 0, i32 2
  %16 = call ptr @memcpy(ptr %arrayidx, ptr %addr22, i32 6)
  %17 = ptrtoint ptr %ha.073 to i32
  call void @__asan_load4_noabort(i32 %17)
  %ha.0 = load ptr, ptr %ha.073, align 4
  %cmp15.not = icmp eq ptr %ha.0, %mc
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %mc_count)
  %cmp17 = icmp eq i32 %inc, %mc_count
  %or.cond = select i1 %cmp15.not, i1 true, i1 %cmp17
  br i1 %or.cond, label %if.end20.for.end_crit_edge, label %if.end20.if.end20_crit_edge

if.end20.if.end20_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.end20.for.end_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %if.end20.for.end_crit_edge, %if.then10.for.end_crit_edge, %if.then10.thread
  %ops = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 18, i32 4
  %18 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops, align 4
  %write_ltv = getelementptr inbounds %struct.hermes_ops, ptr %19, i32 0, i32 6
  %20 = ptrtoint ptr %write_ltv to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %write_ltv, align 4
  %mul = mul i32 %mc_count, 6
  %add = or i32 %mul, 1
  %div = sdiv i32 %add, 2
  %22 = trunc i32 %div to i16
  %conv30 = add i16 %22, 1
  %call31 = call i32 %21(ptr noundef %hw1, i32 noundef 0, i16 noundef zeroext -896, i16 noundef zeroext %conv30, ptr noundef nonnull %mclist) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.else42, label %do.end36

do.end36:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %ndev38 = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 16
  %23 = ptrtoint ptr %ndev38 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ndev38, align 4
  %call41 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.141, ptr noundef %24, i32 noundef %call31) #11
  br label %if.end44

if.else42:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %mc_count43 = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 53
  %25 = ptrtoint ptr %mc_count43 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %mc_count, ptr %mc_count43, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.else42, %do.end36
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %mclist) #8
  br label %if.end45

if.end45:                                         ; preds = %if.end44, %lor.lhs.false.if.end45_crit_edge, %if.end5.if.end45_crit_edge
  %err.1 = phi i32 [ %err.0, %if.end5.if.end45_crit_edge ], [ %call31, %if.end44 ], [ %err.0, %lor.lhs.false.if.end45_crit_edge ]
  ret i32 %err.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @orinoco_hw_get_essid(ptr noundef %priv, ptr nocapture noundef writeonly %active, ptr nocapture noundef writeonly %buf) local_unnamed_addr #0 align 64 {
entry:
  %essidbuf = alloca %struct.hermes_idstring, align 2
  %flags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 18
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %essidbuf) #8
  %0 = call ptr @memset(ptr %essidbuf, i32 255, i32 34)
  %val = getelementptr inbounds %struct.hermes_idstring, ptr %essidbuf, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #8
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %flags, align 4, !annotation !231
  %ops.i = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 18, i32 4
  %2 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i, align 4
  %lock_irqsave.i = getelementptr inbounds %struct.hermes_ops, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %lock_irqsave.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lock_irqsave.i, align 4
  %lock.i = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 7
  call void %5(ptr noundef %lock.i, ptr noundef nonnull %flags) #8
  %hw_unavailable.i = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 8
  %6 = ptrtoint ptr %hw_unavailable.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hw_unavailable.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %if.end, label %entry.cleanup30_crit_edge

entry.cleanup30_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup30

if.end:                                           ; preds = %entry
  %desired_essid = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 32
  %8 = ptrtoint ptr %desired_essid to i32
  call void @__asan_load1_noabort(i32 %8)
  %char0 = load i8, ptr %desired_essid, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %char0)
  %cmp3.not = icmp eq i8 %char0, 0
  br i1 %cmp3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  %9 = ptrtoint ptr %active to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %active, align 4
  %port_type = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 50
  %10 = ptrtoint ptr %port_type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %port_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %11)
  %cmp5 = icmp eq i32 %11, 3
  %conv = select i1 %cmp5, i16 -1020, i16 -1022
  %12 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops.i, align 4
  %read_ltv = getelementptr inbounds %struct.hermes_ops, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %read_ltv to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %read_ltv, align 4
  %call6 = call i32 %15(ptr noundef %hw1, i32 noundef 0, i16 noundef zeroext %conv, i32 noundef 34, ptr noundef null, ptr noundef nonnull %essidbuf) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.then4.if.end15_crit_edge, label %if.then4.cleanup30_crit_edge

if.then4.cleanup30_crit_edge:                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup30

if.then4.if.end15_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.else:                                          ; preds = %if.end
  %16 = ptrtoint ptr %active to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %active, align 4
  %17 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ops.i, align 4
  %read_ltv10 = getelementptr inbounds %struct.hermes_ops, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %read_ltv10 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %read_ltv10, align 4
  %call11 = call i32 %20(ptr noundef %hw1, i32 noundef 0, i16 noundef zeroext -703, i32 noundef 34, ptr noundef null, ptr noundef nonnull %essidbuf) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.else.if.end15_crit_edge, label %if.else.cleanup30_crit_edge

if.else.cleanup30_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup30

if.else.if.end15_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.end15:                                         ; preds = %if.else.if.end15_crit_edge, %if.then4.if.end15_crit_edge
  %21 = ptrtoint ptr %essidbuf to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %essidbuf, align 2
  %23 = call i16 @llvm.bswap.i16(i16 %22)
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %23)
  %cmp18 = icmp ugt i16 %23, 32
  br i1 %cmp18, label %do.body23, label %do.end29, !prof !233

do.body23:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/intersil/orinoco/hw.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1159, 0\0A.popsection", ""() #8, !srcloc !237
  unreachable

do.end29:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %conv17 = zext i16 %23 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %22)
  %24 = icmp eq i16 %22, 8192
  %25 = sub nsw i32 32, %conv17
  %26 = select i1 %24, i32 0, i32 %25
  %27 = getelementptr i8, ptr %buf, i32 %conv17
  %28 = call ptr @memset(ptr %27, i32 0, i32 %26)
  %29 = call ptr @memcpy(ptr %buf, ptr %val, i32 %conv17)
  br label %cleanup30

cleanup30:                                        ; preds = %do.end29, %if.else.cleanup30_crit_edge, %if.then4.cleanup30_crit_edge, %entry.cleanup30_crit_edge
  %retval.0 = phi i32 [ -16, %entry.cleanup30_crit_edge ], [ %call6, %if.then4.cleanup30_crit_edge ], [ %conv17, %do.end29 ], [ %call11, %if.else.cleanup30_crit_edge ]
  %30 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ops.i, align 4
  %unlock_irqrestore.i = getelementptr inbounds %struct.hermes_ops, ptr %31, i32 0, i32 14
  %32 = ptrtoint ptr %unlock_irqrestore.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %unlock_irqrestore.i, align 4
  call void %33(ptr noundef %lock.i, ptr noundef nonnull %flags) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #8
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %essidbuf) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @orinoco_hw_get_freq(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  %rec.i = alloca i16, align 2
  %flags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #8
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %flags, align 4, !annotation !231
  %ops.i = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 18, i32 4
  %1 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ops.i, align 4
  %lock_irqsave.i = getelementptr inbounds %struct.hermes_ops, ptr %2, i32 0, i32 13
  %3 = ptrtoint ptr %lock_irqsave.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %lock_irqsave.i, align 4
  %lock.i = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 7
  call void %4(ptr noundef %lock.i, ptr noundef nonnull %flags) #8
  %hw_unavailable.i = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 8
  %5 = ptrtoint ptr %hw_unavailable.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %hw_unavailable.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %if.end, label %orinoco_lock.exit

orinoco_lock.exit:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops.i, align 4
  %unlock_irqrestore.i = getelementptr inbounds %struct.hermes_ops, ptr %8, i32 0, i32 14
  %9 = ptrtoint ptr %unlock_irqrestore.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %unlock_irqrestore.i, align 4
  call void %10(ptr noundef %lock.i, ptr noundef nonnull %flags) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %hw1 = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 18
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %rec.i) #8
  %11 = ptrtoint ptr %rec.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 -1, ptr %rec.i, align 2, !annotation !231
  %12 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops.i, align 4
  %read_ltv.i = getelementptr inbounds %struct.hermes_ops, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %read_ltv.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %read_ltv.i, align 4
  %call.i = call i32 %15(ptr noundef %hw1, i32 noundef 0, i16 noundef zeroext -575, i32 noundef 2, ptr noundef null, ptr noundef nonnull %rec.i) #8
  %16 = ptrtoint ptr %rec.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %rec.i, align 2
  %18 = call i16 @llvm.bswap.i16(i16 %17) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rec.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end4, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end4:                                          ; preds = %if.end
  %conv = zext i16 %18 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %cmp5 = icmp eq i16 %17, 0
  br i1 %cmp5, label %if.end4.out_crit_edge, label %lor.lhs.false

if.end4.out_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

lor.lhs.false:                                    ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp2(i16 14, i16 %18)
  %cmp13 = icmp ugt i16 %18, 14
  br i1 %cmp13, label %do.end, label %if.end18

do.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %ndev = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 16
  %19 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ndev, align 4
  %call17 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.143, ptr noundef %20, i32 noundef %conv) #11
  br label %out

if.end18:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %call.i37 = call i32 @ieee80211_channel_to_freq_khz(i32 noundef %conv, i32 noundef 0) #8
  %div.i = udiv i32 %call.i37, 1000
  br label %out

out:                                              ; preds = %if.end18, %do.end, %if.end4.out_crit_edge, %if.end.out_crit_edge
  %err.0 = phi i32 [ %call.i, %if.end.out_crit_edge ], [ -16, %do.end ], [ 0, %if.end18 ], [ -16, %if.end4.out_crit_edge ]
  %freq.0 = phi i32 [ 0, %if.end.out_crit_edge ], [ 0, %do.end ], [ %div.i, %if.end18 ], [ 0, %if.end4.out_crit_edge ]
  %21 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ops.i, align 4
  %unlock_irqrestore.i39 = getelementptr inbounds %struct.hermes_ops, ptr %22, i32 0, i32 14
  %23 = ptrtoint ptr %unlock_irqrestore.i39 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %unlock_irqrestore.i39, align 4
  call void %24(ptr noundef %lock.i, ptr noundef nonnull %flags) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %cmp21 = icmp sgt i32 %err.0, 0
  br i1 %cmp21, label %out.cleanup_crit_edge, label %25

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

25:                                               ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool25.not = icmp eq i32 %err.0, 0
  %spec.select = select i1 %tobool25.not, i32 %freq.0, i32 %err.0
  br label %cleanup

cleanup:                                          ; preds = %25, %out.cleanup_crit_edge, %orinoco_lock.exit
  %retval.0 = phi i32 [ -16, %orinoco_lock.exit ], [ -16, %out.cleanup_crit_edge ], [ %spec.select, %25 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @orinoco_hw_get_bitratelist(ptr noundef %priv, ptr nocapture noundef writeonly %numrates, ptr nocapture noundef writeonly %rates, i32 noundef %max) local_unnamed_addr #0 align 64 {
entry:
  %list = alloca %struct.hermes_idstring, align 2
  %flags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %list) #8
  %0 = call ptr @memset(ptr %list, i32 255, i32 34)
  %val = getelementptr inbounds %struct.hermes_idstring, ptr %list, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #8
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %flags, align 4, !annotation !231
  %ops.i = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 18, i32 4
  %2 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i, align 4
  %lock_irqsave.i = getelementptr inbounds %struct.hermes_ops, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %lock_irqsave.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lock_irqsave.i, align 4
  %lock.i = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 7
  call void %5(ptr noundef %lock.i, ptr noundef nonnull %flags) #8
  %hw_unavailable.i = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 8
  %6 = ptrtoint ptr %hw_unavailable.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hw_unavailable.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %if.end, label %orinoco_lock.exit

orinoco_lock.exit:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i, align 4
  %unlock_irqrestore.i = getelementptr inbounds %struct.hermes_ops, ptr %9, i32 0, i32 14
  %10 = ptrtoint ptr %unlock_irqrestore.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %unlock_irqrestore.i, align 4
  call void %11(ptr noundef %lock.i, ptr noundef nonnull %flags) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %hw1 = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 18
  %12 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops.i, align 4
  %read_ltv = getelementptr inbounds %struct.hermes_ops, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %read_ltv to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %read_ltv, align 4
  %call2 = call i32 %15(ptr noundef %hw1, i32 noundef 0, i16 noundef zeroext -570, i32 noundef 34, ptr noundef null, ptr noundef nonnull %list) #8
  %16 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops.i, align 4
  %unlock_irqrestore.i29 = getelementptr inbounds %struct.hermes_ops, ptr %17, i32 0, i32 14
  %18 = ptrtoint ptr %unlock_irqrestore.i29 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %unlock_irqrestore.i29, align 4
  call void %19(ptr noundef %lock.i, ptr noundef nonnull %flags) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %20 = ptrtoint ptr %list to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %list, align 2
  %22 = call i16 @llvm.bswap.i16(i16 %21)
  %conv = zext i16 %22 to i32
  %23 = ptrtoint ptr %numrates to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %conv, ptr %numrates, align 4
  %24 = call i32 @llvm.smin.i32(i32 %conv, i32 %max)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp733 = icmp sgt i32 %24, 0
  br i1 %cmp733, label %if.end4.for.body_crit_edge, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4.for.body_crit_edge:                       ; preds = %if.end4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end4.for.body_crit_edge
  %i.034 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end4.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %val, i32 %i.034
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx, align 1
  %27 = and i8 %26, 127
  %and = zext i8 %27 to i32
  %mul = mul nuw nsw i32 %and, 500000
  %arrayidx10 = getelementptr i32, ptr %rates, i32 %i.034
  %28 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %mul, ptr %arrayidx10, align 4
  %inc = add nuw nsw i32 %i.034, 1
  %exitcond.not = icmp eq i32 %inc, %24
  br i1 %exitcond.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %orinoco_lock.exit
  %retval.0 = phi i32 [ -16, %orinoco_lock.exit ], [ %call2, %if.end.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #8
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %list) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @orinoco_hw_trigger_scan(ptr noundef %priv, ptr nocapture noundef readonly %ssid) local_unnamed_addr #0 align 64 {
entry:
  %rec.i83 = alloca i16, align 2
  %rec.i79 = alloca i16, align 2
  %rec.i = alloca i16, align 2
  %flags = alloca i32, align 4
  %req = alloca [3 x i16], align 2
  %idbuf = alloca %struct.hermes_idstring, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ndev = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 16
  %0 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ndev, align 4
  %hw1 = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #8
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %flags, align 4, !annotation !231
  %ops.i = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 18, i32 4
  %3 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ops.i, align 4
  %lock_irqsave.i = getelementptr inbounds %struct.hermes_ops, ptr %4, i32 0, i32 13
  %5 = ptrtoint ptr %lock_irqsave.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %lock_irqsave.i, align 4
  %lock.i = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 7
  call void %6(ptr noundef %lock.i, ptr noundef nonnull %flags) #8
  %hw_unavailable.i = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 8
  %7 = ptrtoint ptr %hw_unavailable.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %hw_unavailable.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %9 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %iw_mode = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 25
  %11 = ptrtoint ptr %iw_mode to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %iw_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %12)
  %cmp5 = icmp eq i32 %12, 6
  br i1 %cmp5, label %if.end4.cleanup_crit_edge, label %if.end7

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  %has_hostscan = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 24
  %13 = ptrtoint ptr %has_hostscan to i32
  call void @__asan_load2_noabort(i32 %13)
  %bf.load = load i16, ptr %has_hostscan, align 2
  %14 = and i16 %bf.load, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool.not = icmp eq i16 %14, 0
  br i1 %tobool.not, label %if.else49, label %if.then8

if.then8:                                         ; preds = %if.end7
  %firmware_type = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 20
  %15 = ptrtoint ptr %firmware_type to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %firmware_type, align 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.154)
  switch i32 %16, label %if.then8.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 1, label %sw.bb10
    i32 0, label %sw.bb14
  ]

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %rec.i) #8
  %18 = ptrtoint ptr %rec.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 -32256, ptr %rec.i, align 2
  %19 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops.i, align 4
  %write_ltv.i = getelementptr inbounds %struct.hermes_ops, ptr %20, i32 0, i32 6
  %21 = ptrtoint ptr %write_ltv.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %write_ltv.i, align 4
  %call.i = call i32 %22(ptr noundef %hw1, i32 noundef 0, i16 noundef zeroext -853, i16 noundef zeroext 2, ptr noundef nonnull %rec.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rec.i) #8
  br label %cleanup

sw.bb10:                                          ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %req) #8
  %23 = getelementptr inbounds [3 x i16], ptr %req, i32 0, i32 1
  %24 = getelementptr inbounds [3 x i16], ptr %req, i32 0, i32 2
  %25 = ptrtoint ptr %req to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 -193, ptr %req, align 2
  %26 = ptrtoint ptr %23 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 256, ptr %23, align 2
  %27 = ptrtoint ptr %24 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 0, ptr %24, align 2
  %28 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ops.i, align 4
  %write_ltv = getelementptr inbounds %struct.hermes_ops, ptr %29, i32 0, i32 6
  %30 = ptrtoint ptr %write_ltv to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %write_ltv, align 4
  %call13 = call i32 %31(ptr noundef %hw1, i32 noundef 0, i16 noundef zeroext -795, i16 noundef zeroext 4, ptr noundef nonnull %req) #8
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %req) #8
  br label %cleanup

sw.bb14:                                          ; preds = %if.then8
  %ssid_len = getelementptr inbounds %struct.cfg80211_ssid, ptr %ssid, i32 0, i32 1
  %32 = ptrtoint ptr %ssid_len to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %ssid_len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %cmp15.not = icmp eq i8 %33, 0
  br i1 %cmp15.not, label %if.else, label %if.then17

if.then17:                                        ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %idbuf) #8
  %34 = getelementptr inbounds i8, ptr %idbuf, i32 2
  %35 = call ptr @memset(ptr %34, i32 255, i32 32)
  %conv19 = zext i8 %33 to i32
  %conv20 = zext i8 %33 to i16
  %36 = shl nuw i16 %conv20, 8
  %37 = ptrtoint ptr %idbuf to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %36, ptr %idbuf, align 2
  %val = getelementptr inbounds %struct.hermes_idstring, ptr %idbuf, i32 0, i32 1
  %38 = call ptr @memcpy(ptr %val, ptr %ssid, i32 %conv19)
  %39 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ops.i, align 4
  %write_ltv25 = getelementptr inbounds %struct.hermes_ops, ptr %40, i32 0, i32 6
  %41 = ptrtoint ptr %write_ltv25 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %write_ltv25, align 4
  %add26 = add nuw nsw i32 %conv19, 3
  %div77 = lshr i32 %add26, 1
  %43 = trunc i32 %div77 to i16
  %conv28 = add nuw nsw i16 %43, 1
  %call29 = call i32 %42(ptr noundef %hw1, i32 noundef 0, i16 noundef zeroext -846, i16 noundef zeroext %conv28, ptr noundef nonnull %idbuf) #8
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %idbuf) #8
  br label %if.end31

if.else:                                          ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %rec.i79) #8
  %44 = ptrtoint ptr %rec.i79 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 0, ptr %rec.i79, align 2
  %45 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ops.i, align 4
  %write_ltv.i81 = getelementptr inbounds %struct.hermes_ops, ptr %46, i32 0, i32 6
  %47 = ptrtoint ptr %write_ltv.i81 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %write_ltv.i81, align 4
  %call.i82 = call i32 %48(ptr noundef %hw1, i32 noundef 0, i16 noundef zeroext -846, i16 noundef zeroext 2, ptr noundef nonnull %rec.i79) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rec.i79) #8
  br label %if.end31

if.end31:                                         ; preds = %if.else, %if.then17
  %err.0 = phi i32 [ %call29, %if.then17 ], [ %call.i82, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool32.not = icmp eq i32 %err.0, 0
  br i1 %tobool32.not, label %if.end34, label %if.end31.cleanup_crit_edge

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end34:                                         ; preds = %if.end31
  %49 = ptrtoint ptr %has_hostscan to i32
  call void @__asan_load2_noabort(i32 %49)
  %bf.load35 = load i16, ptr %has_hostscan, align 2
  %50 = and i16 %bf.load35, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %50)
  %tobool39.not = icmp eq i16 %50, 0
  br i1 %tobool39.not, label %if.else46, label %if.then40

if.then40:                                        ; preds = %if.end34
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %rec.i83) #8
  %51 = ptrtoint ptr %rec.i83 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 -129, ptr %rec.i83, align 2
  %52 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ops.i, align 4
  %write_ltv.i85 = getelementptr inbounds %struct.hermes_ops, ptr %53, i32 0, i32 6
  %54 = ptrtoint ptr %write_ltv.i85 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %write_ltv.i85, align 4
  %call.i86 = call i32 %55(ptr noundef %hw1, i32 noundef 0, i16 noundef zeroext -830, i16 noundef zeroext 2, ptr noundef nonnull %rec.i83) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rec.i83) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i86)
  %tobool42.not = icmp eq i32 %call.i86, 0
  br i1 %tobool42.not, label %if.end44, label %if.then40.cleanup_crit_edge

if.then40.cleanup_crit_edge:                      ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end44:                                         ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #10
  %56 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ops.i, align 4
  %cmd_wait.i = getelementptr inbounds %struct.hermes_ops, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %cmd_wait.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %cmd_wait.i, align 4
  %call.i88 = call i32 %59(ptr noundef %hw1, i16 noundef zeroext 17, i16 noundef zeroext -3838, ptr noundef null) #8
  br label %cleanup

if.else46:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  %60 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ops.i, align 4
  %cmd_wait.i90 = getelementptr inbounds %struct.hermes_ops, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %cmd_wait.i90 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %cmd_wait.i90, align 4
  %call.i91 = call i32 %63(ptr noundef %hw1, i16 noundef zeroext 17, i16 noundef zeroext -3839, ptr noundef null) #8
  br label %cleanup

if.else49:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %64 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ops.i, align 4
  %cmd_wait.i93 = getelementptr inbounds %struct.hermes_ops, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %cmd_wait.i93 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %cmd_wait.i93, align 4
  %call.i94 = call i32 %67(ptr noundef %hw1, i16 noundef zeroext 17, i16 noundef zeroext -3839, ptr noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %if.else49, %if.else46, %if.end44, %if.then40.cleanup_crit_edge, %if.end31.cleanup_crit_edge, %sw.bb10, %sw.bb, %if.then8.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %entry.cleanup_crit_edge ], [ 0, %if.then8.cleanup_crit_edge ], [ %err.0, %if.end31.cleanup_crit_edge ], [ %call.i86, %if.then40.cleanup_crit_edge ], [ %call.i88, %if.end44 ], [ %call.i91, %if.else46 ], [ %call13, %sw.bb10 ], [ %call.i, %sw.bb ], [ %call.i94, %if.else49 ], [ -100, %if.end.cleanup_crit_edge ], [ -95, %if.end4.cleanup_crit_edge ]
  %68 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ops.i, align 4
  %unlock_irqrestore.i = getelementptr inbounds %struct.hermes_ops, ptr %69, i32 0, i32 14
  %70 = ptrtoint ptr %unlock_irqrestore.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %unlock_irqrestore.i, align 4
  call void %71(ptr noundef %lock.i, ptr noundef nonnull %flags) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @orinoco_hw_disassociate(ptr noundef %priv, ptr nocapture noundef readonly %addr, i16 noundef zeroext %reason_code) local_unnamed_addr #0 align 64 {
entry:
  %buf = alloca %struct.anon.139, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf) #8
  %has_wpa = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 24
  %0 = ptrtoint ptr %has_wpa to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %has_wpa, align 2
  %1 = and i16 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = getelementptr inbounds %struct.anon.139, ptr %buf, i32 0, i32 1
  %hw1 = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 18
  %3 = call ptr @memcpy(ptr %buf, ptr %addr, i32 6)
  %4 = tail call i16 @llvm.bswap.i16(i16 %reason_code)
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %5, i32 2)
  store i16 %4, ptr %2, align 1
  %ops = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 18, i32 4
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops, align 4
  %write_ltv = getelementptr inbounds %struct.hermes_ops, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %write_ltv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write_ltv, align 4
  %call = call i32 %9(ptr noundef %hw1, i32 noundef 0, i16 noundef zeroext -824, i16 noundef zeroext 5, ptr noundef nonnull %buf) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -95, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @orinoco_hw_get_current_bssid(ptr noundef %priv, ptr noundef %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 18
  %ops = getelementptr inbounds %struct.orinoco_private, ptr %priv, i32 0, i32 18, i32 4
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %read_ltv = getelementptr inbounds %struct.hermes_ops, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %read_ltv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read_ltv, align 4
  %call = tail call i32 %3(ptr noundef %hw1, i32 noundef 0, i16 noundef zeroext -702, i32 noundef 6, ptr noundef null, ptr noundef %addr) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_channel_to_freq_khz(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 115)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 115)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !17, !19, !20, !21, !23, !24, !25, !27, !28, !29, !31, !32, !33, !34, !36, !38, !39, !40, !41, !43, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !71, !72, !73, !75, !76, !77, !79, !80, !81, !83, !84, !85, !87, !88, !89, !91, !92, !93, !95, !96, !97, !99, !100, !101, !103, !104, !105, !107, !108, !109, !110, !111, !112, !114, !115, !116, !117, !119, !120, !121, !123, !124, !125, !127, !128, !129, !131, !132, !133, !135, !136, !137, !139, !140, !141, !143, !144, !145, !147, !148, !149, !151, !152, !153, !155, !156, !157, !159, !160, !161, !163, !164, !165, !167, !168, !169, !171, !172, !174, !175, !177, !178, !180, !181, !182, !184, !185, !186, !188, !189, !190, !191, !193, !194, !195, !196, !198, !199, !200, !201, !203, !204, !205, !206, !208, !209, !210, !211, !213, !214, !215, !217, !218, !219, !220}
!llvm.module.flags = !{!222, !223, !224, !225, !226, !227, !228, !229}
!llvm.ident = !{!230}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/intersil/orinoco/hw.c", i32 83, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @determine_fw_capabilities._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @determine_fw_capabilities._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/intersil/orinoco/hw.c", i32 92, i32 2}
!10 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @determine_fw_capabilities._entry.5, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @determine_fw_capabilities._entry_ptr.8, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.10, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/intersil/orinoco/hw.c", i32 106, i32 3}
!15 = !{ptr @determine_fw_capabilities._entry.9, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @determine_fw_capabilities._entry_ptr.11, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.13, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/intersil/orinoco/hw.c", i32 115, i32 2}
!19 = !{ptr @determine_fw_capabilities._entry.12, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @determine_fw_capabilities._entry_ptr.14, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.16, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/intersil/orinoco/hw.c", i32 120, i32 3}
!23 = !{ptr @determine_fw_capabilities._entry.15, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @determine_fw_capabilities._entry_ptr.17, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.19, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/intersil/orinoco/hw.c", i32 123, i32 3}
!27 = !{ptr @determine_fw_capabilities._entry.18, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @determine_fw_capabilities._entry_ptr.20, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.22, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/wireless/intersil/orinoco/hw.c", i32 129, i32 3}
!31 = !{ptr @.str.23, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @determine_fw_capabilities._entry.21, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @determine_fw_capabilities._entry_ptr.24, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.25, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/intersil/orinoco/hw.c", i32 152, i32 35}
!36 = !{ptr @.str.27, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/intersil/orinoco/hw.c", i32 184, i32 4}
!38 = !{ptr @.str.28, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @determine_fw_capabilities._entry.26, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @determine_fw_capabilities._entry_ptr.29, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.30, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/wireless/intersil/orinoco/hw.c", i32 203, i32 35}
!43 = !{ptr @.str.31, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/wireless/intersil/orinoco/hw.c", i32 242, i32 35}
!45 = !{ptr @.str.33, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/wireless/intersil/orinoco/hw.c", i32 256, i32 4}
!47 = !{ptr @determine_fw_capabilities._entry.32, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @determine_fw_capabilities._entry_ptr.34, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.36, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/wireless/intersil/orinoco/hw.c", i32 263, i32 3}
!51 = !{ptr @determine_fw_capabilities._entry.35, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @determine_fw_capabilities._entry_ptr.37, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.38, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/wireless/intersil/orinoco/hw.c", i32 292, i32 3}
!55 = !{ptr @.str.39, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @orinoco_hw_read_card_settings._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @orinoco_hw_read_card_settings._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.40, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/intersil/orinoco/hw.c", i32 296, i32 2}
!60 = !{ptr @.str.41, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @orinoco_hw_read_card_settings.__UNIQUE_ID_ddebug373, !59, !"__UNIQUE_ID_ddebug373", i1 false, i1 false}
!62 = !{ptr @.str.43, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/intersil/orinoco/hw.c", i32 302, i32 3}
!64 = !{ptr @orinoco_hw_read_card_settings._entry.42, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @orinoco_hw_read_card_settings._entry_ptr.44, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.45, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/intersil/orinoco/hw.c", i32 312, i32 2}
!68 = !{ptr @orinoco_hw_read_card_settings.__UNIQUE_ID_ddebug378, !67, !"__UNIQUE_ID_ddebug378", i1 false, i1 false}
!69 = !{ptr @.str.47, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/wireless/intersil/orinoco/hw.c", i32 318, i32 3}
!71 = !{ptr @orinoco_hw_read_card_settings._entry.46, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @orinoco_hw_read_card_settings._entry_ptr.48, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.50, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/wireless/intersil/orinoco/hw.c", i32 332, i32 3}
!75 = !{ptr @orinoco_hw_read_card_settings._entry.49, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @orinoco_hw_read_card_settings._entry_ptr.51, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.53, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/wireless/intersil/orinoco/hw.c", i32 346, i32 3}
!79 = !{ptr @orinoco_hw_read_card_settings._entry.52, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @orinoco_hw_read_card_settings._entry_ptr.54, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.56, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/wireless/intersil/orinoco/hw.c", i32 358, i32 4}
!83 = !{ptr @orinoco_hw_read_card_settings._entry.55, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @orinoco_hw_read_card_settings._entry_ptr.57, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.59, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/wireless/intersil/orinoco/hw.c", i32 366, i32 4}
!87 = !{ptr @orinoco_hw_read_card_settings._entry.58, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @orinoco_hw_read_card_settings._entry_ptr.60, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.62, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/wireless/intersil/orinoco/hw.c", i32 378, i32 4}
!91 = !{ptr @orinoco_hw_read_card_settings._entry.61, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @orinoco_hw_read_card_settings._entry_ptr.63, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.65, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/wireless/intersil/orinoco/hw.c", i32 387, i32 3}
!95 = !{ptr @orinoco_hw_read_card_settings._entry.64, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @orinoco_hw_read_card_settings._entry_ptr.66, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.68, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/wireless/intersil/orinoco/hw.c", i32 394, i32 3}
!99 = !{ptr @orinoco_hw_read_card_settings._entry.67, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @orinoco_hw_read_card_settings._entry_ptr.69, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.71, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/wireless/intersil/orinoco/hw.c", i32 401, i32 3}
!103 = !{ptr @orinoco_hw_read_card_settings._entry.70, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @orinoco_hw_read_card_settings._entry_ptr.72, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.73, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/wireless/intersil/orinoco/hw.c", i32 422, i32 3}
!107 = !{ptr @.str.74, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @orinoco_hw_allocate_fid._entry, !106, !"_entry", i1 false, i1 false}
!109 = !{ptr @orinoco_hw_allocate_fid._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.75, !106, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @.str.76, !106, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @.str.77, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/wireless/intersil/orinoco/hw.c", i32 470, i32 3}
!114 = !{ptr @.str.78, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @orinoco_hw_program_rids._entry, !113, !"_entry", i1 false, i1 false}
!116 = !{ptr @orinoco_hw_program_rids._entry_ptr, !113, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.80, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/wireless/intersil/orinoco/hw.c", i32 479, i32 3}
!119 = !{ptr @orinoco_hw_program_rids._entry.79, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @orinoco_hw_program_rids._entry_ptr.81, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.83, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/wireless/intersil/orinoco/hw.c", i32 489, i32 4}
!123 = !{ptr @orinoco_hw_program_rids._entry.82, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @orinoco_hw_program_rids._entry_ptr.84, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.86, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/net/wireless/intersil/orinoco/hw.c", i32 499, i32 4}
!127 = !{ptr @orinoco_hw_program_rids._entry.85, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @orinoco_hw_program_rids._entry_ptr.87, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.89, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/net/wireless/intersil/orinoco/hw.c", i32 513, i32 4}
!131 = !{ptr @orinoco_hw_program_rids._entry.88, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @orinoco_hw_program_rids._entry_ptr.90, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.92, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/net/wireless/intersil/orinoco/hw.c", i32 522, i32 3}
!135 = !{ptr @orinoco_hw_program_rids._entry.91, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @orinoco_hw_program_rids._entry_ptr.93, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.95, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/net/wireless/intersil/orinoco/hw.c", i32 535, i32 3}
!139 = !{ptr @orinoco_hw_program_rids._entry.94, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @orinoco_hw_program_rids._entry_ptr.96, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.98, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/net/wireless/intersil/orinoco/hw.c", i32 543, i32 3}
!143 = !{ptr @orinoco_hw_program_rids._entry.97, !142, !"_entry", i1 false, i1 false}
!144 = !{ptr @orinoco_hw_program_rids._entry_ptr.99, !142, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.101, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/net/wireless/intersil/orinoco/hw.c", i32 555, i32 3}
!147 = !{ptr @orinoco_hw_program_rids._entry.100, !146, !"_entry", i1 false, i1 false}
!148 = !{ptr @orinoco_hw_program_rids._entry_ptr.102, !146, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.104, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/net/wireless/intersil/orinoco/hw.c", i32 566, i32 4}
!151 = !{ptr @orinoco_hw_program_rids._entry.103, !150, !"_entry", i1 false, i1 false}
!152 = !{ptr @orinoco_hw_program_rids._entry_ptr.105, !150, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.107, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/net/wireless/intersil/orinoco/hw.c", i32 578, i32 3}
!155 = !{ptr @orinoco_hw_program_rids._entry.106, !154, !"_entry", i1 false, i1 false}
!156 = !{ptr @orinoco_hw_program_rids._entry_ptr.108, !154, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.110, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/net/wireless/intersil/orinoco/hw.c", i32 593, i32 3}
!159 = !{ptr @orinoco_hw_program_rids._entry.109, !158, !"_entry", i1 false, i1 false}
!160 = !{ptr @orinoco_hw_program_rids._entry_ptr.111, !158, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.113, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/net/wireless/intersil/orinoco/hw.c", i32 601, i32 3}
!163 = !{ptr @orinoco_hw_program_rids._entry.112, !162, !"_entry", i1 false, i1 false}
!164 = !{ptr @orinoco_hw_program_rids._entry_ptr.114, !162, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.116, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/net/wireless/intersil/orinoco/hw.c", i32 612, i32 4}
!167 = !{ptr @orinoco_hw_program_rids._entry.115, !166, !"_entry", i1 false, i1 false}
!168 = !{ptr @orinoco_hw_program_rids._entry_ptr.117, !166, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @orinoco_hw_program_rids._entry.118, !170, !"_entry", i1 false, i1 false}
!170 = !{!"../drivers/net/wireless/intersil/orinoco/hw.c", i32 621, i32 4}
!171 = !{ptr @orinoco_hw_program_rids._entry_ptr.119, !170, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @orinoco_hw_program_rids._entry.120, !173, !"_entry", i1 false, i1 false}
!173 = !{!"../drivers/net/wireless/intersil/orinoco/hw.c", i32 629, i32 4}
!174 = !{ptr @orinoco_hw_program_rids._entry_ptr.121, !173, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @orinoco_hw_program_rids._entry.122, !176, !"_entry", i1 false, i1 false}
!176 = !{!"../drivers/net/wireless/intersil/orinoco/hw.c", i32 637, i32 4}
!177 = !{ptr @orinoco_hw_program_rids._entry_ptr.123, !176, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.125, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/net/wireless/intersil/orinoco/hw.c", i32 649, i32 4}
!180 = !{ptr @orinoco_hw_program_rids._entry.124, !179, !"_entry", i1 false, i1 false}
!181 = !{ptr @orinoco_hw_program_rids._entry_ptr.126, !179, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.128, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/net/wireless/intersil/orinoco/hw.c", i32 659, i32 4}
!184 = !{ptr @orinoco_hw_program_rids._entry.127, !183, !"_entry", i1 false, i1 false}
!185 = !{ptr @orinoco_hw_program_rids._entry_ptr.129, !183, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.130, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/net/wireless/intersil/orinoco/hw.c", i32 714, i32 3}
!188 = !{ptr @.str.131, !187, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @__orinoco_hw_set_bitrate._entry, !187, !"_entry", i1 false, i1 false}
!190 = !{ptr @__orinoco_hw_set_bitrate._entry_ptr, !187, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @.str.132, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/net/wireless/intersil/orinoco/hw.c", i32 771, i32 4}
!193 = !{ptr @.str.133, !192, !"<string literal>", i1 false, i1 false}
!194 = !{ptr @orinoco_hw_get_act_bitrate._entry, !192, !"_entry", i1 false, i1 false}
!195 = !{ptr @orinoco_hw_get_act_bitrate._entry_ptr, !192, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @.str.134, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/net/wireless/intersil/orinoco/hw.c", i32 865, i32 5}
!198 = !{ptr @.str.135, !197, !"<string literal>", i1 false, i1 false}
!199 = !{ptr @__orinoco_hw_setup_wepkeys._entry, !197, !"_entry", i1 false, i1 false}
!200 = !{ptr @__orinoco_hw_setup_wepkeys._entry_ptr, !197, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @.str.136, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/net/wireless/intersil/orinoco/hw.c", i32 1066, i32 3}
!203 = !{ptr @.str.137, !202, !"<string literal>", i1 false, i1 false}
!204 = !{ptr @orinoco_clear_tkip_key._entry, !202, !"_entry", i1 false, i1 false}
!205 = !{ptr @orinoco_clear_tkip_key._entry_ptr, !202, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @.str.138, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/net/wireless/intersil/orinoco/hw.c", i32 1083, i32 4}
!208 = !{ptr @.str.139, !207, !"<string literal>", i1 false, i1 false}
!209 = !{ptr @__orinoco_hw_set_multicast_list._entry, !207, !"_entry", i1 false, i1 false}
!210 = !{ptr @__orinoco_hw_set_multicast_list._entry_ptr, !207, !"_entry_ptr", i1 false, i1 false}
!211 = !{ptr @.str.141, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/net/wireless/intersil/orinoco/hw.c", i32 1108, i32 4}
!213 = !{ptr @__orinoco_hw_set_multicast_list._entry.140, !212, !"_entry", i1 false, i1 false}
!214 = !{ptr @__orinoco_hw_set_multicast_list._entry_ptr.142, !212, !"_entry_ptr", i1 false, i1 false}
!215 = !{ptr @.str.143, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/net/wireless/intersil/orinoco/hw.c", i32 1194, i32 3}
!217 = !{ptr @.str.144, !216, !"<string literal>", i1 false, i1 false}
!218 = !{ptr @orinoco_hw_get_freq._entry, !216, !"_entry", i1 false, i1 false}
!219 = !{ptr @orinoco_hw_get_freq._entry_ptr, !216, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @bitrate_table, !221, !"bitrate_table", i1 false, i1 false}
!221 = !{!"../drivers/net/wireless/intersil/orinoco/hw.c", i32 33, i32 3}
!222 = !{i32 1, !"wchar_size", i32 2}
!223 = !{i32 1, !"min_enum_size", i32 4}
!224 = !{i32 8, !"branch-target-enforcement", i32 0}
!225 = !{i32 8, !"sign-return-address", i32 0}
!226 = !{i32 8, !"sign-return-address-all", i32 0}
!227 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!228 = !{i32 7, !"uwtable", i32 1}
!229 = !{i32 7, !"frame-pointer", i32 2}
!230 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!231 = !{!"auto-init"}
!232 = !{i64 2148724447, i64 2148724452, i64 2148724465, i64 2148724509, i64 2148724543, i64 2148724564}
!233 = !{!"branch_weights", i32 1, i32 2000}
!234 = !{i64 2157617941, i64 2157618448, i64 2157617978, i64 2157618034, i64 2157618068, i64 2157618092, i64 2157618133, i64 2157618154, i64 2157618182, i64 2157618216}
!235 = !{i64 2157651257, i64 2157651764, i64 2157651294, i64 2157651350, i64 2157651384, i64 2157651408, i64 2157651449, i64 2157651470, i64 2157651498, i64 2157651532}
!236 = !{i64 2157655290, i64 2157655797, i64 2157655327, i64 2157655383, i64 2157655417, i64 2157655441, i64 2157655482, i64 2157655503, i64 2157655531, i64 2157655565}
!237 = !{i64 2157674207, i64 2157674715, i64 2157674244, i64 2157674300, i64 2157674334, i64 2157674358, i64 2157674399, i64 2157674420, i64 2157674448, i64 2157674482}
