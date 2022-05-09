; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/marvell/libertas/mesh.c_pt.bc'
source_filename = "../drivers/net/wireless/marvell/libertas/mesh.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon.22 }
%union.anon.22 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
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
%struct.cmd_ds_mesh_config = type { %struct.cmd_header, i16, i16, i16, i16, [128 x i8] }
%struct.cmd_header = type { i16, i16, i16, i16 }
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
%struct.wireless_dev = type { ptr, i32, %struct.list_head, ptr, i32, %struct.list_head, i8, %struct.mutex, i8, i8, i8, i8, [6 x i8], [32 x i8], i8, i8, i8, ptr, ptr, i32, i32, %struct.work_struct, [6 x i8], %struct.list_head, %struct.spinlock, ptr, %struct.cfg80211_chan_def, %struct.cfg80211_chan_def, i8, i8, i8, i32, i32, i32, i32, i8, i8, i32, i32, %struct.anon.121, ptr, %struct.list_head, %struct.spinlock, %struct.work_struct, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.anon.121 = type { %struct.cfg80211_ibss_params, %struct.cfg80211_connect_params, ptr, ptr, i32, [6 x i8], [6 x i8], [32 x i8], i8, i8, i8 }
%struct.cfg80211_ibss_params = type { ptr, ptr, %struct.cfg80211_chan_def, ptr, i8, i8, i16, i32, i8, i8, i8, i8, i8, [6 x i32], %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, ptr, i32 }
%struct.ieee80211_ht_cap = type <{ i16, i8, %struct.ieee80211_mcs_info, i16, i32, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.cfg80211_connect_params = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i32, %struct.cfg80211_crypto_settings, ptr, i8, i8, i32, i32, %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, %struct.ieee80211_vht_cap, %struct.ieee80211_vht_cap, i8, %struct.cfg80211_bss_selection, ptr, ptr, i32, ptr, i32, i16, ptr, i32, i8, %struct.ieee80211_edmg }
%struct.cfg80211_crypto_settings = type { i32, i32, i32, [5 x i32], i32, [2 x i32], i8, i16, i8, i8, i8, ptr, i32, ptr, ptr, i8, i32 }
%struct.ieee80211_vht_cap = type { i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.cfg80211_bss_selection = type { i32, %union.anon.122 }
%union.anon.122 = type { %struct.cfg80211_bss_select_adjust }
%struct.cfg80211_bss_select_adjust = type { i32, i8 }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.rxpd = type { %union.anon.129, i8, i8, i16, i8, i8, i32, i32, i8, [3 x i8] }
%union.anon.129 = type { i16 }
%struct.anon.130 = type { i8, i8 }
%struct.txpd = type { %union.anon.131, i32, i32, i16, %union.anon.133, i8, i8, i8, i8 }
%union.anon.131 = type { i32 }
%union.anon.133 = type { %struct.anon.134 }
%struct.anon.134 = type { [2 x i8], [4 x i8] }
%struct.anon.132 = type { i8, i8, i16 }
%struct.cmd_ds_mesh_access = type <{ %struct.cmd_header, i16, [32 x i32] }>
%struct.mrvl_mesh_defaults = type { i32, i8, i8, i16, %struct.mrvl_meshie }
%struct.mrvl_meshie = type { i8, i8, %struct.mrvl_meshie_val }
%struct.mrvl_meshie_val = type { [3 x i8], i8, i8, i8, i8, i8, i8, i8, [32 x i8] }

@dev_attr_lbs_mesh = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.4, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @lbs_mesh_show, ptr @lbs_mesh_store }, [36 x i8] zeroinitializer }, align 32
@.str = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"cannot register lbs_mesh attribute\0A\00", [60 x i8] zeroinitializer }, align 32
@mesh_stat_strings = internal constant { [8 x [32 x i8]], [64 x i8] } { [8 x [32 x i8]] [[32 x i8] c"drop_duplicate_bcast\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"drop_ttl_zero\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"drop_no_fwd_route\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"drop_no_buffers\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"fwded_unicast_cnt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"fwded_bcast_cnt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"drop_blind_table\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_failed_cnt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"], [64 x i8] zeroinitializer }, align 32
@lbs_debug = external dso_local local_unnamed_addr global i32, align 4
@lbs_mesh_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 129, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\017libertas cmd: mesh config action %d type %x channel %d SSID %*pE\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"lbs_mesh_config\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/net/wireless/marvell/libertas/mesh.c\00", [51 x i8] zeroinitializer }, align 32
@lbs_mesh_config._entry_ptr = internal global ptr @lbs_mesh_config._entry, section ".printk_index", align 4
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"lbs_mesh\00", [23 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"0x%X\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%x\00", [29 x i8] zeroinitializer }, align 32
@lbs_add_mesh._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.3, i32 973, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\017libertas mesh: init mshX wireless device failed\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"lbs_add_mesh\00", [19 x i8] zeroinitializer }, align 32
@lbs_add_mesh._entry_ptr = internal global ptr @lbs_add_mesh._entry, section ".printk_index", align 4
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"msh%d\00", [26 x i8] zeroinitializer }, align 32
@lbs_add_mesh._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.8, ptr @.str.3, i32 980, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\017libertas mesh: init mshX device failed\0A\00", [54 x i8] zeroinitializer }, align 32
@lbs_add_mesh._entry_ptr.12 = internal global ptr @lbs_add_mesh._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mesh\00", [27 x i8] zeroinitializer }, align 32
@mesh_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @lbs_mesh_dev_open, ptr @lbs_mesh_stop, ptr @lbs_hard_start_xmit, ptr null, ptr null, ptr null, ptr @lbs_set_multicast_list, ptr @lbs_set_mac_address, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@lbs_ethtool_ops = external dso_local constant %struct.ethtool_ops, align 4
@lbs_mesh_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @lbs_mesh_sysfs_entries, ptr null }, [44 x i8] zeroinitializer }, align 32
@boot_opts_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @.str.20, ptr null, ptr null, ptr @boot_opts_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@mesh_ie_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @.str.25, ptr null, ptr null, ptr @mesh_ie_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@lbs_add_mesh._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.8, ptr @.str.3, i32 1013, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013libertas: cannot register mshX virtual interface\0A\00", [44 x i8] zeroinitializer }, align 32
@lbs_add_mesh._entry_ptr.16 = internal global ptr @lbs_add_mesh._entry.14, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@lbs_mesh_sysfs_entries = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @dev_attr_anycast_mask, ptr @dev_attr_prb_rsp_limit, ptr null], [20 x i8] zeroinitializer }, align 32
@dev_attr_anycast_mask = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.17, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @anycast_mask_show, ptr @anycast_mask_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_prb_rsp_limit = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.18, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @prb_rsp_limit_show, ptr @prb_rsp_limit_store }, [36 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"anycast_mask\00", [19 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"prb_rsp_limit\00", [18 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"boot_options\00", [19 x i8] zeroinitializer }, align 32
@boot_opts_attrs = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @dev_attr_bootflag, ptr @dev_attr_boottime, ptr @dev_attr_channel, ptr null], [16 x i8] zeroinitializer }, align 32
@dev_attr_bootflag = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.21, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @bootflag_show, ptr @bootflag_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_boottime = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.23, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @boottime_show, ptr @boottime_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_channel = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.24, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @channel_show, ptr @channel_store }, [36 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"bootflag\00", [23 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%d\00", [29 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"boottime\00", [23 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"channel\00", [24 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mesh_ie\00", [24 x i8] zeroinitializer }, align 32
@mesh_ie_attrs = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @dev_attr_mesh_id, ptr @dev_attr_protocol_id, ptr @dev_attr_metric_id, ptr @dev_attr_capability, ptr null], [44 x i8] zeroinitializer }, align 32
@dev_attr_mesh_id = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.26, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @mesh_id_show, ptr @mesh_id_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_protocol_id = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.31, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @protocol_id_show, ptr @protocol_id_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_metric_id = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.32, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @metric_id_show, ptr @metric_id_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_capability = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.33, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @capability_show, ptr @capability_store }, [36 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mesh_id\00", [24 x i8] zeroinitializer }, align 32
@mesh_id_show._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.3, i32 533, ptr @.str.29, ptr @.str.30 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"inconsistent mesh ID length\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mesh_id_show\00", [19 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mesh_id_show._entry_ptr = internal global ptr @mesh_id_show._entry, section ".printk_index", align 4
@.str.31 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"protocol_id\00", [20 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"metric_id\00", [22 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"capability\00", [21 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 1]
@__sancov_gen_cov_switch_values.34 = internal global [4 x i64] [i64 2, i64 16, i64 293, i64 547]
@__sancov_gen_cov_switch_values.35 = internal global [4 x i64] [i64 2, i64 16, i64 293, i64 547]
@___asan_gen_.36 = private unnamed_addr constant [18 x i8] c"dev_attr_lbs_mesh\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 867, i32 25 }
@___asan_gen_.42 = private unnamed_addr constant [18 x i8] c"mesh_stat_strings\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 1083, i32 19 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 127, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 307, i32 8 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 273, i32 25 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 290, i32 14 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 973, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 978, i32 13 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 980, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 989, i32 28 }
@___asan_gen_.87 = private unnamed_addr constant [16 x i8] c"mesh_netdev_ops\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 950, i32 36 }
@___asan_gen_.90 = private unnamed_addr constant [20 x i8] c"lbs_mesh_attr_group\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 327, i32 37 }
@___asan_gen_.93 = private unnamed_addr constant [16 x i8] c"boot_opts_group\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 793, i32 37 }
@___asan_gen_.96 = private unnamed_addr constant [14 x i8] c"mesh_ie_group\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 806, i32 37 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 1013, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant [23 x i8] c"lbs_mesh_sysfs_entries\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 321, i32 26 }
@___asan_gen_.108 = private unnamed_addr constant [22 x i8] c"dev_attr_anycast_mask\00", align 1
@___asan_gen_.111 = private unnamed_addr constant [23 x i8] c"dev_attr_prb_rsp_limit\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 313, i32 8 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 319, i32 8 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 225, i32 25 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 794, i32 10 }
@___asan_gen_.126 = private unnamed_addr constant [16 x i8] c"boot_opts_attrs\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 786, i32 26 }
@___asan_gen_.129 = private unnamed_addr constant [18 x i8] c"dev_attr_bootflag\00", align 1
@___asan_gen_.132 = private unnamed_addr constant [18 x i8] c"dev_attr_boottime\00", align 1
@___asan_gen_.135 = private unnamed_addr constant [17 x i8] c"dev_attr_channel\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 778, i32 8 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 391, i32 20 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 779, i32 8 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 780, i32 8 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 807, i32 10 }
@___asan_gen_.153 = private unnamed_addr constant [14 x i8] c"mesh_ie_attrs\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 798, i32 26 }
@___asan_gen_.156 = private unnamed_addr constant [17 x i8] c"dev_attr_mesh_id\00", align 1
@___asan_gen_.159 = private unnamed_addr constant [21 x i8] c"dev_attr_protocol_id\00", align 1
@___asan_gen_.162 = private unnamed_addr constant [19 x i8] c"dev_attr_metric_id\00", align 1
@___asan_gen_.165 = private unnamed_addr constant [20 x i8] c"dev_attr_capability\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 781, i32 8 }
@___asan_gen_.171 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 533, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 782, i32 8 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 783, i32 8 }
@___asan_gen_.192 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.193 = private constant [48 x i8] c"../drivers/net/wireless/marvell/libertas/mesh.c\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 784, i32 8 }
@llvm.compiler.used = appending global [58 x ptr] [ptr @lbs_add_mesh._entry, ptr @lbs_add_mesh._entry.10, ptr @lbs_add_mesh._entry.14, ptr @lbs_add_mesh._entry_ptr, ptr @lbs_add_mesh._entry_ptr.12, ptr @lbs_add_mesh._entry_ptr.16, ptr @lbs_mesh_config._entry, ptr @lbs_mesh_config._entry_ptr, ptr @mesh_id_show._entry, ptr @mesh_id_show._entry_ptr, ptr @dev_attr_lbs_mesh, ptr @.str, ptr @mesh_stat_strings, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @mesh_netdev_ops, ptr @lbs_mesh_attr_group, ptr @boot_opts_group, ptr @mesh_ie_group, ptr @.str.15, ptr @lbs_mesh_sysfs_entries, ptr @dev_attr_anycast_mask, ptr @dev_attr_prb_rsp_limit, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @boot_opts_attrs, ptr @dev_attr_bootflag, ptr @dev_attr_boottime, ptr @dev_attr_channel, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @mesh_ie_attrs, ptr @dev_attr_mesh_id, ptr @dev_attr_protocol_id, ptr @dev_attr_metric_id, ptr @dev_attr_capability, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33], section "llvm.metadata"
@0 = internal global [53 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_lbs_mesh to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mesh_stat_strings to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_mesh_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_add_mesh._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_add_mesh._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mesh_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_mesh_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @boot_opts_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mesh_ie_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_add_mesh._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbs_mesh_sysfs_entries to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_anycast_mask to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_prb_rsp_limit to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @boot_opts_attrs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_bootflag to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_boottime to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_channel to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mesh_ie_attrs to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_mesh_id to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_protocol_id to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_metric_id to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_capability to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mesh_id_show._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lbs_mesh_set_channel(ptr noundef %priv, i8 noundef zeroext %channel) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mesh_channel = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 14
  %0 = ptrtoint ptr %mesh_channel to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %channel, ptr %mesh_channel, align 2
  %conv = zext i8 %channel to i16
  %call = tail call fastcc i32 @lbs_mesh_config(ptr noundef %priv, i16 noundef zeroext 1, i16 noundef zeroext %conv)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lbs_mesh_config(ptr noundef %priv, i16 noundef zeroext %action, i16 noundef zeroext %chan) unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.cmd_ds_mesh_config, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %cmd) #12
  %0 = call ptr @memset(ptr %cmd, i32 0, i32 144)
  %1 = tail call i16 @llvm.bswap.i16(i16 %chan)
  %channel = getelementptr inbounds %struct.cmd_ds_mesh_config, ptr %cmd, i32 0, i32 2
  %2 = ptrtoint ptr %channel to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %1, ptr %channel, align 2
  %conv = zext i16 %action to i32
  %3 = zext i16 %action to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i16 %action, label %entry.cleanup_crit_edge [
    i16 1, label %sw.bb
    i16 0, label %entry.do.body_crit_edge
  ]

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %data = getelementptr inbounds %struct.cmd_ds_mesh_config, ptr %cmd, i32 0, i32 5
  %4 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -35, ptr %data, align 2
  %arrayidx3 = getelementptr inbounds %struct.cmd_ds_mesh_config, ptr %cmd, i32 0, i32 5, i32 3
  %5 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 80, ptr %arrayidx3, align 1
  %arrayidx6 = getelementptr inbounds %struct.cmd_ds_mesh_config, ptr %cmd, i32 0, i32 5, i32 4
  %6 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 67, ptr %arrayidx6, align 2
  %type = getelementptr inbounds %struct.cmd_ds_mesh_config, ptr %cmd, i32 0, i32 5, i32 5
  %7 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 4, ptr %type, align 1
  %subtype = getelementptr inbounds %struct.cmd_ds_mesh_config, ptr %cmd, i32 0, i32 5, i32 6
  %mesh_dev = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 11
  %8 = call ptr @memset(ptr %subtype, i32 0, i32 5)
  %9 = ptrtoint ptr %mesh_dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mesh_dev, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %sw.bb.if.end_crit_edge, label %if.then

sw.bb.if.end_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %ieee80211_ptr = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 82
  %11 = ptrtoint ptr %ieee80211_ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ieee80211_ptr, align 16
  %mesh_id_up_len = getelementptr inbounds %struct.wireless_dev, ptr %12, i32 0, i32 16
  %13 = ptrtoint ptr %mesh_id_up_len to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %mesh_id_up_len, align 4
  %mesh_id_len = getelementptr inbounds %struct.cmd_ds_mesh_config, ptr %cmd, i32 0, i32 5, i32 11
  %15 = ptrtoint ptr %mesh_id_len to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %mesh_id_len, align 1
  %mesh_id = getelementptr inbounds %struct.cmd_ds_mesh_config, ptr %cmd, i32 0, i32 5, i32 12
  %ssid = getelementptr inbounds %struct.wireless_dev, ptr %12, i32 0, i32 13
  %conv19 = zext i8 %14 to i32
  %16 = call ptr @memcpy(ptr %mesh_id, ptr %ssid, i32 %conv19)
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.if.end_crit_edge
  %mesh_id_len21 = getelementptr inbounds %struct.cmd_ds_mesh_config, ptr %cmd, i32 0, i32 5, i32 11
  %17 = ptrtoint ptr %mesh_id_len21 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %mesh_id_len21, align 1
  %add = add i8 %18, 10
  %len = getelementptr inbounds %struct.cmd_ds_mesh_config, ptr %cmd, i32 0, i32 5, i32 1
  %19 = ptrtoint ptr %len to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %add, ptr %len, align 1
  %length = getelementptr inbounds %struct.cmd_ds_mesh_config, ptr %cmd, i32 0, i32 4
  %20 = ptrtoint ptr %length to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 10752, ptr %length, align 2
  br label %do.body

do.body:                                          ; preds = %if.end, %entry.do.body_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %21 = load i32, ptr @lbs_debug, align 4
  %and = and i32 %21, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %do.body.do.end38_crit_edge, label %do.end

do.body.do.end38_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end38

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %mesh_tlv = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 13
  %22 = ptrtoint ptr %mesh_tlv to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %mesh_tlv, align 4
  %conv28 = zext i16 %23 to i32
  %conv29 = zext i16 %chan to i32
  %mesh_id_len31 = getelementptr inbounds %struct.cmd_ds_mesh_config, ptr %cmd, i32 0, i32 5, i32 11
  %24 = ptrtoint ptr %mesh_id_len31 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %mesh_id_len31, align 1
  %conv32 = zext i8 %25 to i32
  %mesh_id34 = getelementptr inbounds %struct.cmd_ds_mesh_config, ptr %cmd, i32 0, i32 5, i32 12
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %conv, i32 noundef %conv28, i32 noundef %conv29, i32 noundef %conv32, ptr noundef %mesh_id34) #15
  br label %do.end38

do.end38:                                         ; preds = %do.end, %do.body.do.end38_crit_edge
  %mesh_tlv39 = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 13
  %26 = ptrtoint ptr %mesh_tlv39 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %mesh_tlv39, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 293, i16 %27)
  %cmp.i = icmp eq i16 %27, 293
  %spec.store.select.i = select i1 %cmp.i, i16 4268, i16 163
  %28 = call i16 @llvm.bswap.i16(i16 %spec.store.select.i) #12
  %29 = ptrtoint ptr %cmd to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %cmd, align 2
  %size.i = getelementptr inbounds %struct.cmd_header, ptr %cmd, i32 0, i32 1
  %result.i = getelementptr inbounds %struct.cmd_header, ptr %cmd, i32 0, i32 3
  %30 = ptrtoint ptr %result.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 0, ptr %result.i, align 2
  %31 = call i16 @llvm.bswap.i16(i16 %27) #12
  %type5.i = getelementptr inbounds %struct.cmd_ds_mesh_config, ptr %cmd, i32 0, i32 3
  %32 = ptrtoint ptr %type5.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %type5.i, align 2
  %33 = call i16 @llvm.bswap.i16(i16 %action) #12
  %action6.i = getelementptr inbounds %struct.cmd_ds_mesh_config, ptr %cmd, i32 0, i32 1
  %34 = ptrtoint ptr %action6.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %action6.i, align 2
  %35 = ptrtoint ptr %size.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 -28672, ptr %size.i, align 2
  %36 = ptrtoint ptr %cmd to i32
  %call.i = call i32 @__lbs_cmd(ptr noundef %priv, i16 noundef zeroext %spec.store.select.i, ptr noundef nonnull %cmd, i32 noundef 144, ptr noundef nonnull @lbs_cmd_copyback, i32 noundef %36) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end38, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %do.end38 ], [ -1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %cmd) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lbs_init_mesh(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  %cmd.i = alloca %struct.cmd_ds_mesh_config, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %fwrelease = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 53
  %0 = ptrtoint ptr %fwrelease to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fwrelease, align 4
  %shr.mask = and i32 %1, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 83886080, i32 %shr.mask)
  %cmp = icmp eq i32 %shr.mask, 83886080
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %mesh_tlv = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 13
  %2 = ptrtoint ptr %mesh_tlv to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 547, ptr %mesh_tlv, align 4
  %call = tail call fastcc i32 @lbs_mesh_config(ptr noundef %priv, i16 noundef zeroext 1, i16 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then.if.end20_crit_edge, label %if.then1

if.then.if.end20_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

if.then1:                                         ; preds = %if.then
  %3 = ptrtoint ptr %mesh_tlv to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 293, ptr %mesh_tlv, align 4
  %call3 = tail call fastcc i32 @lbs_mesh_config(ptr noundef %priv, i16 noundef zeroext 1, i16 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then1.if.end20_crit_edge, label %if.then1.if.end20.sink.split_crit_edge

if.then1.if.end20.sink.split_crit_edge:           ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20.sink.split

if.then1.if.end20_crit_edge:                      ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 167772159, i32 %1)
  %cmp10 = icmp ugt i32 %1, 167772159
  br i1 %cmp10, label %land.lhs.true, label %if.else.if.end20_crit_edge

if.else.if.end20_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

land.lhs.true:                                    ; preds = %if.else
  %fwcapinfo = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 54
  %4 = ptrtoint ptr %fwcapinfo to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fwcapinfo, align 4
  %and = and i32 %5, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %land.lhs.true.if.end20_crit_edge, label %if.then12

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

if.then12:                                        ; preds = %land.lhs.true
  %mesh_tlv13 = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 13
  %6 = ptrtoint ptr %mesh_tlv13 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 293, ptr %mesh_tlv13, align 4
  %call14 = tail call fastcc i32 @lbs_mesh_config(ptr noundef %priv, i16 noundef zeroext 1, i16 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.then12.if.end20_crit_edge, label %if.then12.if.end20.sink.split_crit_edge

if.then12.if.end20.sink.split_crit_edge:          ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20.sink.split

if.then12.if.end20_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

if.end20.sink.split:                              ; preds = %if.then12.if.end20.sink.split_crit_edge, %if.then1.if.end20.sink.split_crit_edge
  %mesh_tlv13.sink = phi ptr [ %mesh_tlv, %if.then1.if.end20.sink.split_crit_edge ], [ %mesh_tlv13, %if.then12.if.end20.sink.split_crit_edge ]
  %7 = ptrtoint ptr %mesh_tlv13.sink to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %mesh_tlv13.sink, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.end20.sink.split, %if.then12.if.end20_crit_edge, %land.lhs.true.if.end20_crit_edge, %if.else.if.end20_crit_edge, %if.then1.if.end20_crit_edge, %if.then.if.end20_crit_edge
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %cmd.i) #12
  %8 = call ptr @memset(ptr %cmd.i, i32 0, i32 144)
  %channel.i = getelementptr inbounds %struct.cmd_ds_mesh_config, ptr %cmd.i, i32 0, i32 2
  %9 = ptrtoint ptr %channel.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 256, ptr %channel.i, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %10 = load i32, ptr @lbs_debug, align 4
  %and.i = and i32 %10, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.not.i = icmp eq i32 %and.i, 0
  br i1 %cmp.not.i, label %if.end20.lbs_mesh_config.exit_crit_edge, label %do.end.i

if.end20.lbs_mesh_config.exit_crit_edge:          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %lbs_mesh_config.exit

do.end.i:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  %mesh_tlv.i = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 13
  %11 = ptrtoint ptr %mesh_tlv.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %mesh_tlv.i, align 4
  %conv28.i = zext i16 %12 to i32
  %mesh_id_len31.i = getelementptr inbounds %struct.cmd_ds_mesh_config, ptr %cmd.i, i32 0, i32 5, i32 11
  %13 = ptrtoint ptr %mesh_id_len31.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %mesh_id_len31.i, align 1
  %conv32.i = zext i8 %14 to i32
  %mesh_id34.i = getelementptr inbounds %struct.cmd_ds_mesh_config, ptr %cmd.i, i32 0, i32 5, i32 12
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef 0, i32 noundef %conv28.i, i32 noundef 1, i32 noundef %conv32.i, ptr noundef %mesh_id34.i) #15
  br label %lbs_mesh_config.exit

lbs_mesh_config.exit:                             ; preds = %do.end.i, %if.end20.lbs_mesh_config.exit_crit_edge
  %mesh_tlv39.i = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 13
  %15 = ptrtoint ptr %mesh_tlv39.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %mesh_tlv39.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 293, i16 %16)
  %cmp.i.i = icmp eq i16 %16, 293
  %spec.store.select.i.i = select i1 %cmp.i.i, i16 4268, i16 163
  %17 = call i16 @llvm.bswap.i16(i16 %spec.store.select.i.i) #12
  %18 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %cmd.i, align 2
  %size.i.i = getelementptr inbounds %struct.cmd_header, ptr %cmd.i, i32 0, i32 1
  %result.i.i = getelementptr inbounds %struct.cmd_header, ptr %cmd.i, i32 0, i32 3
  %19 = ptrtoint ptr %result.i.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 0, ptr %result.i.i, align 2
  %20 = call i16 @llvm.bswap.i16(i16 %16) #12
  %type5.i.i = getelementptr inbounds %struct.cmd_ds_mesh_config, ptr %cmd.i, i32 0, i32 3
  %21 = ptrtoint ptr %type5.i.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %type5.i.i, align 2
  %action6.i.i = getelementptr inbounds %struct.cmd_ds_mesh_config, ptr %cmd.i, i32 0, i32 1
  %22 = ptrtoint ptr %action6.i.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 0, ptr %action6.i.i, align 2
  %23 = ptrtoint ptr %size.i.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 -28672, ptr %size.i.i, align 2
  %24 = ptrtoint ptr %cmd.i to i32
  %call.i.i = call i32 @__lbs_cmd(ptr noundef %priv, i16 noundef zeroext %spec.store.select.i.i, ptr noundef nonnull %cmd.i, i32 noundef 144, ptr noundef nonnull @lbs_cmd_copyback, i32 noundef %24) #12
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %cmd.i) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lbs_start_mesh(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @lbs_add_mesh(ptr noundef %priv)
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %dev1 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 133
  %call2 = tail call i32 @device_create_file(ptr noundef %dev1, ptr noundef nonnull @dev_attr_lbs_mesh) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %3, ptr noundef nonnull @.str) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lbs_add_mesh(ptr noundef %priv) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 964) #16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %do.body, label %if.end6

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %1 = load i32, ptr @lbs_debug, align 4
  %and = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %do.body.done_crit_edge, label %do.end

do.body.done_crit_edge:                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %done

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #15
  br label %done

if.end6:                                          ; preds = %entry
  %call7 = tail call ptr @alloc_netdev_mqs(i32 noundef 0, ptr noundef nonnull @.str.9, i8 noundef zeroext 0, ptr noundef nonnull @ether_setup, i32 noundef 1, i32 noundef 1) #12
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %do.body10, label %if.end22

do.body10:                                        ; preds = %if.end6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %2 = load i32, ptr @lbs_debug, align 4
  %and11 = and i32 %2, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %cmp12.not = icmp eq i32 %and11, 0
  br i1 %cmp12.not, label %do.body10.err_free_wdev_crit_edge, label %do.end16

do.body10.err_free_wdev_crit_edge:                ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_free_wdev

do.end16:                                         ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #14
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #15
  br label %err_free_wdev

if.end22:                                         ; preds = %if.end6
  %iftype = getelementptr inbounds %struct.wireless_dev, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %iftype to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 7, ptr %iftype, align 4
  %wdev = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 5
  %4 = ptrtoint ptr %wdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wdev, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %8 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %call7.i.i, align 8
  %mesh_tlv = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 13
  %9 = ptrtoint ptr %mesh_tlv to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %mesh_tlv, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool24.not = icmp eq i16 %10, 0
  br i1 %tobool24.not, label %if.end22.if.end27_crit_edge, label %if.then25

if.end22.if.end27_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27

if.then25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  %ssid = getelementptr inbounds %struct.wireless_dev, ptr %call7.i.i, i32 0, i32 13
  %11 = call ptr @memcpy(ptr %ssid, ptr @.str.13, i32 5)
  %mesh_id_up_len = getelementptr inbounds %struct.wireless_dev, ptr %call7.i.i, i32 0, i32 16
  %12 = ptrtoint ptr %mesh_id_up_len to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 4, ptr %mesh_id_up_len, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %if.end22.if.end27_crit_edge
  %netdev = getelementptr inbounds %struct.wireless_dev, ptr %call7.i.i, i32 0, i32 3
  %13 = ptrtoint ptr %netdev to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call7, ptr %netdev, align 8
  %ml_priv = getelementptr inbounds %struct.net_device, ptr %call7, i32 0, i32 128
  %14 = ptrtoint ptr %ml_priv to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %priv, ptr %ml_priv, align 8
  %ieee80211_ptr = getelementptr inbounds %struct.net_device, ptr %call7, i32 0, i32 82
  %15 = ptrtoint ptr %ieee80211_ptr to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call7.i.i, ptr %ieee80211_ptr, align 16
  %mesh_dev28 = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 11
  %16 = ptrtoint ptr %mesh_dev28 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call7, ptr %mesh_dev28, align 4
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call7, i32 0, i32 16
  %17 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @mesh_netdev_ops, ptr %netdev_ops, align 8
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %call7, i32 0, i32 44
  %18 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @lbs_ethtool_ops, ptr %ethtool_ops, align 16
  %19 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %priv, align 4
  %addr_assign_type.i = getelementptr inbounds %struct.net_device, ptr %20, i32 0, i32 55
  %21 = ptrtoint ptr %addr_assign_type.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %addr_assign_type.i, align 4
  %addr_assign_type1.i = getelementptr inbounds %struct.net_device, ptr %call7, i32 0, i32 55
  %23 = ptrtoint ptr %addr_assign_type1.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %addr_assign_type1.i, align 4
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %20, i32 0, i32 86
  %24 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev_addr.i, align 64
  tail call void @dev_addr_mod(ptr noundef nonnull %call7, i32 noundef 0, ptr noundef %25, i32 noundef 6) #12
  %26 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %priv, align 4
  %parent = getelementptr inbounds %struct.net_device, ptr %27, i32 0, i32 133, i32 1
  %28 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %parent, align 8
  %30 = ptrtoint ptr %mesh_dev28 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mesh_dev28, align 4
  %parent33 = getelementptr inbounds %struct.net_device, ptr %31, i32 0, i32 133, i32 1
  %32 = ptrtoint ptr %parent33 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %29, ptr %parent33, align 8
  %flags = getelementptr inbounds %struct.net_device, ptr %call7, i32 0, i32 14
  %33 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %flags, align 8
  %or = or i32 %34, 4098
  store i32 %or, ptr %flags, align 8
  %sysfs_groups = getelementptr inbounds %struct.net_device, ptr %call7, i32 0, i32 134
  %35 = ptrtoint ptr %sysfs_groups to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @lbs_mesh_attr_group, ptr %sysfs_groups, align 16
  %arrayidx35 = getelementptr %struct.net_device, ptr %call7, i32 0, i32 134, i32 1
  %36 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @boot_opts_group, ptr %arrayidx35, align 4
  %arrayidx37 = getelementptr %struct.net_device, ptr %call7, i32 0, i32 134, i32 2
  %37 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @mesh_ie_group, ptr %arrayidx37, align 8
  %call38 = tail call i32 @register_netdev(ptr noundef nonnull %call7) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end27.done_crit_edge, label %do.end43

if.end27.done_crit_edge:                          ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %done

do.end43:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  %call45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #15
  tail call void @free_netdev(ptr noundef nonnull %call7) #12
  br label %err_free_wdev

err_free_wdev:                                    ; preds = %do.end43, %do.end16, %do.body10.err_free_wdev_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %done

done:                                             ; preds = %err_free_wdev, %if.end27.done_crit_edge, %do.end, %do.body.done_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lbs_deinit_mesh(ptr nocapture noundef readonly %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mesh_tlv = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 13
  %0 = ptrtoint ptr %mesh_tlv to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %mesh_tlv, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %dev2 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 133
  tail call void @device_remove_file(ptr noundef %dev2, ptr noundef nonnull @dev_attr_lbs_mesh) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ 1, %if.then ], [ 0, %entry.if.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lbs_remove_mesh(ptr nocapture noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mesh_dev1 = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 11
  %0 = ptrtoint ptr %mesh_dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mesh_dev1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  %2 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %3, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #12
  tail call void @netif_carrier_off(ptr noundef nonnull %1) #12
  tail call void @unregister_netdev(ptr noundef nonnull %1) #12
  %4 = ptrtoint ptr %mesh_dev1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %mesh_dev1, align 4
  %ieee80211_ptr = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 82
  %5 = ptrtoint ptr %ieee80211_ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ieee80211_ptr, align 16
  tail call void @kfree(ptr noundef %6) #12
  tail call void @free_netdev(ptr noundef nonnull %1) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @lbs_mesh_set_dev(ptr nocapture noundef readonly %priv, ptr noundef readnone %dev, ptr nocapture noundef readonly %rxpd) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mesh_dev = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 11
  %0 = ptrtoint ptr %mesh_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mesh_dev, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end20_crit_edge, label %if.then

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

if.then:                                          ; preds = %entry
  %mesh_tlv = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 13
  %2 = ptrtoint ptr %mesh_tlv to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %mesh_tlv, align 4
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.34)
  switch i16 %3, label %if.then.if.end20_crit_edge [
    i16 547, label %if.then2
    i16 293, label %if.then11
  ]

if.then.if.end20_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %rx_control = getelementptr inbounds %struct.rxpd, ptr %rxpd, i32 0, i32 2
  %5 = ptrtoint ptr %rx_control to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %rx_control, align 1
  %7 = and i8 %6, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool4.not = icmp eq i8 %7, 0
  %spec.select = select i1 %tobool4.not, ptr %dev, ptr %1
  br label %if.end20

if.then11:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %bss_num = getelementptr inbounds %struct.anon.130, ptr %rxpd, i32 0, i32 1
  %8 = ptrtoint ptr %bss_num to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bss_num, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %9)
  %cmp13 = icmp eq i8 %9, 1
  %spec.select26 = select i1 %cmp13, ptr %1, ptr %dev
  br label %if.end20

if.end20:                                         ; preds = %if.then11, %if.then2, %if.then.if.end20_crit_edge, %entry.if.end20_crit_edge
  %dev.addr.0 = phi ptr [ %dev, %entry.if.end20_crit_edge ], [ %spec.select, %if.then2 ], [ %dev, %if.then.if.end20_crit_edge ], [ %spec.select26, %if.then11 ]
  ret ptr %dev.addr.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @lbs_mesh_set_txpd(ptr nocapture noundef readonly %priv, ptr noundef readnone %dev, ptr nocapture noundef %txpd) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mesh_dev = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 11
  %0 = ptrtoint ptr %mesh_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mesh_dev, align 4
  %cmp = icmp eq ptr %1, %dev
  br i1 %cmp, label %if.then, label %entry.if.end10_crit_edge

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.then:                                          ; preds = %entry
  %mesh_tlv = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 13
  %2 = ptrtoint ptr %mesh_tlv to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %mesh_tlv, align 4
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.35)
  switch i16 %3, label %if.then.if.end10_crit_edge [
    i16 547, label %if.then3
    i16 293, label %if.then8
  ]

if.then.if.end10_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %tx_control = getelementptr inbounds %struct.txpd, ptr %txpd, i32 0, i32 1
  %5 = ptrtoint ptr %tx_control to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %tx_control, align 1
  %or = or i32 %6, 512
  store i32 %or, ptr %tx_control, align 1
  br label %if.end10

if.then8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %bss_num = getelementptr inbounds %struct.anon.132, ptr %txpd, i32 0, i32 1
  %7 = ptrtoint ptr %bss_num to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %bss_num, align 1
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.then3, %if.then.if.end10_crit_edge, %entry.if.end10_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lbs_mesh_ethtool_get_stats(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %stats, ptr nocapture noundef writeonly %data) local_unnamed_addr #0 align 64 {
entry:
  %mesh_access = alloca %struct.cmd_ds_mesh_access, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ml_priv = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 128
  %0 = ptrtoint ptr %ml_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ml_priv, align 8
  call void @llvm.lifetime.start.p0(i64 138, ptr nonnull %mesh_access) #12
  %2 = getelementptr inbounds i8, ptr %mesh_access, i32 4
  %3 = call ptr @memset(ptr %2, i32 255, i32 134)
  %4 = ptrtoint ptr %mesh_access to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -25856, ptr %mesh_access, align 2
  %size.i = getelementptr inbounds %struct.cmd_header, ptr %mesh_access, i32 0, i32 1
  %result.i = getelementptr inbounds %struct.cmd_header, ptr %mesh_access, i32 0, i32 3
  %5 = ptrtoint ptr %result.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 0, ptr %result.i, align 2
  %action.i = getelementptr inbounds %struct.cmd_ds_mesh_access, ptr %mesh_access, i32 0, i32 1
  %6 = ptrtoint ptr %action.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 768, ptr %action.i, align 2
  %7 = ptrtoint ptr %size.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 -30208, ptr %size.i, align 2
  %8 = ptrtoint ptr %mesh_access to i32
  %call.i = call i32 @__lbs_cmd(ptr noundef %1, i16 noundef zeroext 155, ptr noundef nonnull %mesh_access, i32 noundef 138, ptr noundef nonnull @lbs_cmd_copyback, i32 noundef %8) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %9 = call ptr @memset(ptr %data, i32 0, i32 64)
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %data1 = getelementptr inbounds %struct.cmd_ds_mesh_access, ptr %mesh_access, i32 0, i32 2
  %10 = ptrtoint ptr %data1 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %data1, align 2
  %12 = call i32 @llvm.bswap.i32(i32 %11)
  %mstats = getelementptr inbounds %struct.lbs_private, ptr %1, i32 0, i32 12
  %fwd_drop_rbt = getelementptr inbounds %struct.lbs_private, ptr %1, i32 0, i32 12, i32 3
  %13 = ptrtoint ptr %fwd_drop_rbt to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %fwd_drop_rbt, align 4
  %arrayidx3 = getelementptr inbounds %struct.cmd_ds_mesh_access, ptr %mesh_access, i32 0, i32 2, i32 1
  %14 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %arrayidx3, align 2
  %16 = call i32 @llvm.bswap.i32(i32 %15)
  %fwd_drop_ttl = getelementptr inbounds %struct.lbs_private, ptr %1, i32 0, i32 12, i32 2
  %17 = ptrtoint ptr %fwd_drop_ttl to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %fwd_drop_ttl, align 4
  %arrayidx6 = getelementptr inbounds %struct.cmd_ds_mesh_access, ptr %mesh_access, i32 0, i32 2, i32 2
  %18 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %arrayidx6, align 2
  %20 = call i32 @llvm.bswap.i32(i32 %19)
  %fwd_drop_noroute = getelementptr inbounds %struct.lbs_private, ptr %1, i32 0, i32 12, i32 4
  %21 = ptrtoint ptr %fwd_drop_noroute to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %fwd_drop_noroute, align 4
  %arrayidx9 = getelementptr inbounds %struct.cmd_ds_mesh_access, ptr %mesh_access, i32 0, i32 2, i32 3
  %22 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %arrayidx9, align 2
  %24 = call i32 @llvm.bswap.i32(i32 %23)
  %fwd_drop_nobuf = getelementptr inbounds %struct.lbs_private, ptr %1, i32 0, i32 12, i32 5
  %25 = ptrtoint ptr %fwd_drop_nobuf to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %fwd_drop_nobuf, align 4
  %arrayidx12 = getelementptr inbounds %struct.cmd_ds_mesh_access, ptr %mesh_access, i32 0, i32 2, i32 4
  %26 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load i32, ptr %arrayidx12, align 2
  %28 = call i32 @llvm.bswap.i32(i32 %27)
  %fwd_unicast_cnt = getelementptr inbounds %struct.lbs_private, ptr %1, i32 0, i32 12, i32 1
  %29 = ptrtoint ptr %fwd_unicast_cnt to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %fwd_unicast_cnt, align 4
  %arrayidx15 = getelementptr inbounds %struct.cmd_ds_mesh_access, ptr %mesh_access, i32 0, i32 2, i32 5
  %30 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_loadN_noabort(i32 %30, i32 4)
  %31 = load i32, ptr %arrayidx15, align 2
  %32 = call i32 @llvm.bswap.i32(i32 %31)
  %33 = ptrtoint ptr %mstats to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %mstats, align 4
  %arrayidx18 = getelementptr inbounds %struct.cmd_ds_mesh_access, ptr %mesh_access, i32 0, i32 2, i32 6
  %34 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_loadN_noabort(i32 %34, i32 4)
  %35 = load i32, ptr %arrayidx18, align 2
  %36 = call i32 @llvm.bswap.i32(i32 %35)
  %drop_blind = getelementptr inbounds %struct.lbs_private, ptr %1, i32 0, i32 12, i32 6
  %37 = ptrtoint ptr %drop_blind to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %drop_blind, align 4
  %arrayidx21 = getelementptr inbounds %struct.cmd_ds_mesh_access, ptr %mesh_access, i32 0, i32 2, i32 7
  %38 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_loadN_noabort(i32 %38, i32 4)
  %39 = load i32, ptr %arrayidx21, align 2
  %40 = call i32 @llvm.bswap.i32(i32 %39)
  %tx_failed_cnt = getelementptr inbounds %struct.lbs_private, ptr %1, i32 0, i32 12, i32 7
  %41 = ptrtoint ptr %tx_failed_cnt to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %tx_failed_cnt, align 4
  %conv = zext i32 %12 to i64
  %42 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %conv, ptr %data, align 8
  %43 = ptrtoint ptr %fwd_drop_ttl to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %fwd_drop_ttl, align 4
  %conv28 = zext i32 %44 to i64
  %arrayidx29 = getelementptr i64, ptr %data, i32 1
  %45 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %conv28, ptr %arrayidx29, align 8
  %46 = ptrtoint ptr %fwd_drop_noroute to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %fwd_drop_noroute, align 4
  %conv32 = zext i32 %47 to i64
  %arrayidx33 = getelementptr i64, ptr %data, i32 2
  %48 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %conv32, ptr %arrayidx33, align 8
  %49 = ptrtoint ptr %fwd_drop_nobuf to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %fwd_drop_nobuf, align 4
  %conv36 = zext i32 %50 to i64
  %arrayidx37 = getelementptr i64, ptr %data, i32 3
  %51 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %conv36, ptr %arrayidx37, align 8
  %52 = ptrtoint ptr %fwd_unicast_cnt to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %fwd_unicast_cnt, align 4
  %conv40 = zext i32 %53 to i64
  %arrayidx41 = getelementptr i64, ptr %data, i32 4
  %54 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %conv40, ptr %arrayidx41, align 8
  %55 = ptrtoint ptr %mstats to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %mstats, align 4
  %conv44 = zext i32 %56 to i64
  %arrayidx45 = getelementptr i64, ptr %data, i32 5
  %57 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 %conv44, ptr %arrayidx45, align 8
  %58 = ptrtoint ptr %drop_blind to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %drop_blind, align 4
  %conv48 = zext i32 %59 to i64
  %arrayidx49 = getelementptr i64, ptr %data, i32 6
  %60 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %conv48, ptr %arrayidx49, align 8
  %61 = load i32, ptr %tx_failed_cnt, align 4
  %conv52 = zext i32 %61 to i64
  %arrayidx53 = getelementptr i64, ptr %data, i32 7
  %62 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 %conv52, ptr %arrayidx53, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 138, ptr nonnull %mesh_access) #12
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @lbs_mesh_ethtool_get_sset_count(ptr noundef readonly %dev, i32 noundef %sset) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sset)
  %cmp = icmp eq i32 %sset, 1
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %ml_priv = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 128
  %0 = ptrtoint ptr %ml_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ml_priv, align 8
  %mesh_dev = getelementptr inbounds %struct.lbs_private, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %mesh_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mesh_dev, align 4
  %cmp1 = icmp eq ptr %3, %dev
  br i1 %cmp1, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %if.end ], [ 8, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @lbs_mesh_ethtool_get_strings(ptr nocapture noundef readnone %dev, i32 noundef %stringset, ptr nocapture noundef writeonly %s) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %stringset)
  %cond = icmp eq i32 %stringset, 1
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %0 = call ptr @memcpy(ptr %s, ptr @mesh_stat_strings, i32 256)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__lbs_cmd(ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lbs_cmd_copyback(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lbs_mesh_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ml_priv = getelementptr i8, ptr %dev, i32 -24
  %0 = ptrtoint ptr %ml_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ml_priv, align 8
  %mesh_dev = getelementptr inbounds %struct.lbs_private, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %mesh_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mesh_dev, align 4
  %tobool = icmp ne ptr %3, null
  %lnot.ext = zext i1 %tobool to i32
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.5, i32 noundef %lnot.ext) #12
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lbs_mesh_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef returned %count) #0 align 64 {
entry:
  %enable = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ml_priv = getelementptr i8, ptr %dev, i32 -24
  %0 = ptrtoint ptr %ml_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ml_priv, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %enable) #12
  %2 = ptrtoint ptr %enable to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %enable, align 4, !annotation !99
  %call = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.6, ptr noundef nonnull %enable)
  %3 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %enable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool = icmp ne i32 %4, 0
  %lnot.ext = zext i1 %tobool to i32
  %5 = ptrtoint ptr %enable to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %lnot.ext, ptr %enable, align 4
  %mesh_dev = getelementptr inbounds %struct.lbs_private, ptr %1, i32 0, i32 11
  %6 = ptrtoint ptr %mesh_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mesh_dev, align 4
  %tobool2 = icmp eq ptr %7, null
  %cmp = xor i1 %tobool, %tobool2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  br i1 %tobool, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @lbs_add_mesh(ptr noundef %1)
  br label %cleanup

if.else:                                          ; preds = %if.end
  br i1 %tobool2, label %if.else.cleanup_crit_edge, label %if.end.i

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 103
  %8 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %_tx.i.i.i, align 128
  %state.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %9, i32 0, i32 13
  call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i.i) #12
  call void @netif_carrier_off(ptr noundef nonnull %7) #12
  call void @unregister_netdev(ptr noundef nonnull %7) #12
  %10 = ptrtoint ptr %mesh_dev to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %mesh_dev, align 4
  %ieee80211_ptr.i = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 82
  %11 = ptrtoint ptr %ieee80211_ptr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ieee80211_ptr.i, align 16
  call void @kfree(ptr noundef %12) #12
  call void @free_netdev(ptr noundef nonnull %7) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %if.else.cleanup_crit_edge, %if.then8, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %enable) #12
  ret i32 %count
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_netdev_mqs(i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ether_setup(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lbs_mesh_dev_open(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ml_priv = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 128
  %0 = ptrtoint ptr %ml_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ml_priv, align 8
  %iface_running = getelementptr inbounds %struct.lbs_private, ptr %1, i32 0, i32 40
  %2 = ptrtoint ptr %iface_running to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %iface_running, align 4, !range !100
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end3_crit_edge

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3

if.then:                                          ; preds = %entry
  %call = tail call i32 @lbs_start_iface(ptr noundef %1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.then.if.end3_crit_edge, label %if.then.out_crit_edge

if.then.out_crit_edge:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3

if.end3:                                          ; preds = %if.then.if.end3_crit_edge, %entry.if.end3_crit_edge
  %driver_lock = getelementptr inbounds %struct.lbs_private, ptr %1, i32 0, i32 87
  tail call void @_raw_spin_lock_irq(ptr noundef %driver_lock) #12
  %wdev = getelementptr inbounds %struct.lbs_private, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %wdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wdev, align 4
  %iftype = getelementptr inbounds %struct.wireless_dev, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %iftype to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %iftype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %7)
  %cmp = icmp eq i32 %7, 6
  br i1 %cmp, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock_irq(ptr noundef %driver_lock) #12
  br label %out

if.end6:                                          ; preds = %if.end3
  tail call void @netif_carrier_on(ptr noundef %dev) #12
  %tx_pending_len = getelementptr inbounds %struct.lbs_private, ptr %1, i32 0, i32 81
  %8 = ptrtoint ptr %tx_pending_len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tx_pending_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool7.not = icmp eq i32 %9, 0
  br i1 %tobool7.not, label %if.then8, label %if.end6.if.end9_crit_edge

if.end6.if.end9_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %10 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %11) #12
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end6.if.end9_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %driver_lock) #12
  %mesh_channel.i = getelementptr inbounds %struct.lbs_private, ptr %1, i32 0, i32 14
  %12 = ptrtoint ptr %mesh_channel.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %mesh_channel.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i = icmp eq i8 %13, 0
  %narrow.i = select i1 %tobool.not.i, i8 1, i8 %13
  %conv1.i = zext i8 %narrow.i to i16
  %call12 = tail call fastcc i32 @lbs_mesh_config(ptr noundef %1, i16 noundef zeroext 1, i16 noundef zeroext %conv1.i)
  br label %out

out:                                              ; preds = %if.end9, %if.then4, %if.then.out_crit_edge
  %ret.0 = phi i32 [ -16, %if.then4 ], [ %call12, %if.end9 ], [ %call, %if.then.out_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lbs_mesh_stop(ptr noundef %dev) #0 align 64 {
entry:
  %cmd.i = alloca %struct.cmd_ds_mesh_config, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ml_priv = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 128
  %0 = ptrtoint ptr %ml_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ml_priv, align 8
  %mesh_channel.i = getelementptr inbounds %struct.lbs_private, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %mesh_channel.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mesh_channel.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  %narrow.i = select i1 %tobool.not.i, i8 1, i8 %3
  %conv1.i = zext i8 %narrow.i to i16
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %cmd.i) #12
  %4 = call ptr @memset(ptr %cmd.i, i32 0, i32 144)
  %5 = shl nuw i16 %conv1.i, 8
  %channel.i = getelementptr inbounds %struct.cmd_ds_mesh_config, ptr %cmd.i, i32 0, i32 2
  %6 = ptrtoint ptr %channel.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %channel.i, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %7 = load i32, ptr @lbs_debug, align 4
  %and.i = and i32 %7, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.not.i = icmp eq i32 %and.i, 0
  br i1 %cmp.not.i, label %entry.lbs_mesh_config.exit_crit_edge, label %do.end.i

entry.lbs_mesh_config.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %lbs_mesh_config.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %mesh_tlv.i = getelementptr inbounds %struct.lbs_private, ptr %1, i32 0, i32 13
  %8 = ptrtoint ptr %mesh_tlv.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %mesh_tlv.i, align 4
  %conv28.i = zext i16 %9 to i32
  %conv29.i = zext i8 %narrow.i to i32
  %mesh_id_len31.i = getelementptr inbounds %struct.cmd_ds_mesh_config, ptr %cmd.i, i32 0, i32 5, i32 11
  %10 = ptrtoint ptr %mesh_id_len31.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %mesh_id_len31.i, align 1
  %conv32.i = zext i8 %11 to i32
  %mesh_id34.i = getelementptr inbounds %struct.cmd_ds_mesh_config, ptr %cmd.i, i32 0, i32 5, i32 12
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef 0, i32 noundef %conv28.i, i32 noundef %conv29.i, i32 noundef %conv32.i, ptr noundef %mesh_id34.i) #15
  br label %lbs_mesh_config.exit

lbs_mesh_config.exit:                             ; preds = %do.end.i, %entry.lbs_mesh_config.exit_crit_edge
  %mesh_tlv39.i = getelementptr inbounds %struct.lbs_private, ptr %1, i32 0, i32 13
  %12 = ptrtoint ptr %mesh_tlv39.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %mesh_tlv39.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 293, i16 %13)
  %cmp.i.i = icmp eq i16 %13, 293
  %spec.store.select.i.i = select i1 %cmp.i.i, i16 4268, i16 163
  %14 = call i16 @llvm.bswap.i16(i16 %spec.store.select.i.i) #12
  %15 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %cmd.i, align 2
  %size.i.i = getelementptr inbounds %struct.cmd_header, ptr %cmd.i, i32 0, i32 1
  %result.i.i = getelementptr inbounds %struct.cmd_header, ptr %cmd.i, i32 0, i32 3
  %16 = ptrtoint ptr %result.i.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 0, ptr %result.i.i, align 2
  %17 = call i16 @llvm.bswap.i16(i16 %13) #12
  %type5.i.i = getelementptr inbounds %struct.cmd_ds_mesh_config, ptr %cmd.i, i32 0, i32 3
  %18 = ptrtoint ptr %type5.i.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %type5.i.i, align 2
  %action6.i.i = getelementptr inbounds %struct.cmd_ds_mesh_config, ptr %cmd.i, i32 0, i32 1
  %19 = ptrtoint ptr %action6.i.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 0, ptr %action6.i.i, align 2
  %20 = ptrtoint ptr %size.i.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 -28672, ptr %size.i.i, align 2
  %21 = ptrtoint ptr %cmd.i to i32
  %call.i.i = call i32 @__lbs_cmd(ptr noundef %1, i16 noundef zeroext %spec.store.select.i.i, ptr noundef nonnull %cmd.i, i32 noundef 144, ptr noundef nonnull @lbs_cmd_copyback, i32 noundef %21) #12
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %cmd.i) #12
  %driver_lock = getelementptr inbounds %struct.lbs_private, ptr %1, i32 0, i32 87
  call void @_raw_spin_lock_irq(ptr noundef %driver_lock) #12
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %22 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %23, i32 0, i32 13
  call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #12
  call void @netif_carrier_off(ptr noundef %dev) #12
  call void @_raw_spin_unlock_irq(ptr noundef %driver_lock) #12
  call void @lbs_update_mcast(ptr noundef %1) #12
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 4
  %state.i.i13 = getelementptr inbounds %struct.net_device, ptr %25, i32 0, i32 6
  %26 = ptrtoint ptr %state.i.i13 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %state.i.i13, align 4
  %mesh_dev.i = getelementptr inbounds %struct.lbs_private, ptr %1, i32 0, i32 11
  %28 = ptrtoint ptr %mesh_dev.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mesh_dev.i, align 4
  %tobool.not.i14 = icmp eq ptr %29, null
  br i1 %tobool.not.i14, label %lbs_mesh_config.exit.lbs_iface_active.exit_crit_edge, label %if.then.i

lbs_mesh_config.exit.lbs_iface_active.exit_crit_edge: ; preds = %lbs_mesh_config.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %lbs_iface_active.exit

if.then.i:                                        ; preds = %lbs_mesh_config.exit
  call void @__sanitizer_cov_trace_pc() #14
  %state.i8.i = getelementptr inbounds %struct.net_device, ptr %29, i32 0, i32 6
  %30 = ptrtoint ptr %state.i8.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %state.i8.i, align 4
  %32 = or i32 %31, %27
  br label %lbs_iface_active.exit

lbs_iface_active.exit:                            ; preds = %if.then.i, %lbs_mesh_config.exit.lbs_iface_active.exit_crit_edge
  %r.0.in.in.in.i = phi i32 [ %32, %if.then.i ], [ %27, %lbs_mesh_config.exit.lbs_iface_active.exit_crit_edge ]
  %r.0.in.in.i = and i32 %r.0.in.in.in.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %r.0.in.in.i)
  %tobool.not = icmp eq i32 %r.0.in.in.i, 0
  br i1 %tobool.not, label %if.then, label %lbs_iface_active.exit.if.end_crit_edge

lbs_iface_active.exit.if.end_crit_edge:           ; preds = %lbs_iface_active.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %lbs_iface_active.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call4 = call i32 @lbs_stop_iface(ptr noundef %1) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %lbs_iface_active.exit.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lbs_hard_start_xmit(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lbs_set_multicast_list(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lbs_set_mac_address(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lbs_start_iface(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lbs_update_mcast(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lbs_stop_iface(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @anycast_mask_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  %mesh_access = alloca %struct.cmd_ds_mesh_access, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ml_priv = getelementptr i8, ptr %dev, i32 -24
  %0 = ptrtoint ptr %ml_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ml_priv, align 8
  call void @llvm.lifetime.start.p0(i64 138, ptr nonnull %mesh_access) #12
  %2 = getelementptr inbounds i8, ptr %mesh_access, i32 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 134)
  %4 = ptrtoint ptr %mesh_access to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -25856, ptr %mesh_access, align 2
  %size.i = getelementptr inbounds %struct.cmd_header, ptr %mesh_access, i32 0, i32 1
  %action.i = getelementptr inbounds %struct.cmd_ds_mesh_access, ptr %mesh_access, i32 0, i32 1
  %5 = ptrtoint ptr %action.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 1024, ptr %action.i, align 2
  %6 = ptrtoint ptr %size.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 -30208, ptr %size.i, align 2
  %7 = ptrtoint ptr %mesh_access to i32
  %call.i = call i32 @__lbs_cmd(ptr noundef %1, i16 noundef zeroext 155, ptr noundef nonnull %mesh_access, i32 noundef 138, ptr noundef nonnull @lbs_cmd_copyback, i32 noundef %7) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %data = getelementptr inbounds %struct.cmd_ds_mesh_access, ptr %mesh_access, i32 0, i32 2
  %8 = ptrtoint ptr %data to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %data, align 2
  %10 = call i32 @llvm.bswap.i32(i32 %9)
  %call1 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.5, i32 noundef %10) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 138, ptr nonnull %mesh_access) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @anycast_mask_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #0 align 64 {
entry:
  %mesh_access = alloca %struct.cmd_ds_mesh_access, align 2
  %datum = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ml_priv = getelementptr i8, ptr %dev, i32 -24
  %0 = ptrtoint ptr %ml_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ml_priv, align 8
  call void @llvm.lifetime.start.p0(i64 138, ptr nonnull %mesh_access) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %datum) #12
  %2 = ptrtoint ptr %datum to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %datum, align 4, !annotation !99
  %3 = getelementptr inbounds i8, ptr %mesh_access, i32 4
  %4 = call ptr @memset(ptr %3, i32 0, i32 134)
  %call = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.6, ptr noundef nonnull %datum)
  %5 = ptrtoint ptr %datum to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %datum, align 4
  %7 = call i32 @llvm.bswap.i32(i32 %6)
  %data = getelementptr inbounds %struct.cmd_ds_mesh_access, ptr %mesh_access, i32 0, i32 2
  %8 = ptrtoint ptr %data to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 %7, ptr %data, align 2
  %9 = ptrtoint ptr %mesh_access to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 -25856, ptr %mesh_access, align 2
  %size.i = getelementptr inbounds %struct.cmd_header, ptr %mesh_access, i32 0, i32 1
  %result.i = getelementptr inbounds %struct.cmd_header, ptr %mesh_access, i32 0, i32 3
  %10 = ptrtoint ptr %result.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %result.i, align 2
  %action.i = getelementptr inbounds %struct.cmd_ds_mesh_access, ptr %mesh_access, i32 0, i32 1
  %11 = ptrtoint ptr %action.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 1280, ptr %action.i, align 2
  %12 = ptrtoint ptr %size.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 -30208, ptr %size.i, align 2
  %13 = ptrtoint ptr %mesh_access to i32
  %call.i = call i32 @__lbs_cmd(ptr noundef %1, i16 noundef zeroext 155, ptr noundef nonnull %mesh_access, i32 noundef 138, ptr noundef nonnull @lbs_cmd_copyback, i32 noundef %13) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call2 = call i32 @strlen(ptr noundef %buf) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %datum) #12
  call void @llvm.lifetime.end.p0(i64 138, ptr nonnull %mesh_access) #12
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prb_rsp_limit_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  %mesh_access = alloca %struct.cmd_ds_mesh_access, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ml_priv = getelementptr i8, ptr %dev, i32 -24
  %0 = ptrtoint ptr %ml_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ml_priv, align 8
  call void @llvm.lifetime.start.p0(i64 138, ptr nonnull %mesh_access) #12
  %2 = getelementptr inbounds i8, ptr %mesh_access, i32 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 134)
  %4 = ptrtoint ptr %mesh_access to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -25856, ptr %mesh_access, align 2
  %size.i = getelementptr inbounds %struct.cmd_header, ptr %mesh_access, i32 0, i32 1
  %action.i = getelementptr inbounds %struct.cmd_ds_mesh_access, ptr %mesh_access, i32 0, i32 1
  %5 = ptrtoint ptr %action.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 4352, ptr %action.i, align 2
  %6 = ptrtoint ptr %size.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 -30208, ptr %size.i, align 2
  %7 = ptrtoint ptr %mesh_access to i32
  %call.i = call i32 @__lbs_cmd(ptr noundef %1, i16 noundef zeroext 155, ptr noundef nonnull %mesh_access, i32 noundef 138, ptr noundef nonnull @lbs_cmd_copyback, i32 noundef %7) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx2 = getelementptr inbounds %struct.cmd_ds_mesh_access, ptr %mesh_access, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %arrayidx2, align 2
  %10 = call i32 @llvm.bswap.i32(i32 %9)
  %call3 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.19, i32 noundef %10) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 138, ptr nonnull %mesh_access) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prb_rsp_limit_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %mesh_access = alloca %struct.cmd_ds_mesh_access, align 2
  %retry_limit = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ml_priv = getelementptr i8, ptr %dev, i32 -24
  %0 = ptrtoint ptr %ml_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ml_priv, align 8
  call void @llvm.lifetime.start.p0(i64 138, ptr nonnull %mesh_access) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retry_limit) #12
  %2 = ptrtoint ptr %retry_limit to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %retry_limit, align 4, !annotation !99
  %3 = getelementptr inbounds i8, ptr %mesh_access, i32 4
  %4 = call ptr @memset(ptr %3, i32 0, i32 134)
  %data = getelementptr inbounds %struct.cmd_ds_mesh_access, ptr %mesh_access, i32 0, i32 2
  %5 = ptrtoint ptr %data to i32
  call void @__asan_storeN_noabort(i32 %5, i32 4)
  store i32 16777216, ptr %data, align 2
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %retry_limit) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %retry_limit to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %retry_limit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %7)
  %cmp = icmp ugt i32 %7, 15
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %8 = call i32 @llvm.bswap.i32(i32 %7)
  %arrayidx4 = getelementptr inbounds %struct.cmd_ds_mesh_access, ptr %mesh_access, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_storeN_noabort(i32 %9, i32 4)
  store i32 %8, ptr %arrayidx4, align 2
  %10 = ptrtoint ptr %mesh_access to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 -25856, ptr %mesh_access, align 2
  %size.i = getelementptr inbounds %struct.cmd_header, ptr %mesh_access, i32 0, i32 1
  %result.i = getelementptr inbounds %struct.cmd_header, ptr %mesh_access, i32 0, i32 3
  %11 = ptrtoint ptr %result.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %result.i, align 2
  %action.i = getelementptr inbounds %struct.cmd_ds_mesh_access, ptr %mesh_access, i32 0, i32 1
  %12 = ptrtoint ptr %action.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 4352, ptr %action.i, align 2
  %13 = ptrtoint ptr %size.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 -30208, ptr %size.i, align 2
  %14 = ptrtoint ptr %mesh_access to i32
  %call.i17 = call i32 @__lbs_cmd(ptr noundef %1, i16 noundef zeroext 155, ptr noundef nonnull %mesh_access, i32 noundef 138, ptr noundef nonnull @lbs_cmd_copyback, i32 noundef %14) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i17)
  %tobool6.not = icmp eq i32 %call.i17, 0
  br i1 %tobool6.not, label %if.end8, label %if.end2.cleanup_crit_edge

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end8:                                          ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #14
  %call9 = call i32 @strlen(ptr noundef %buf) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.end8 ], [ %call.i, %entry.cleanup_crit_edge ], [ -524, %if.end.cleanup_crit_edge ], [ %call.i17, %if.end2.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retry_limit) #12
  call void @llvm.lifetime.end.p0(i64 138, ptr nonnull %mesh_access) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bootflag_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  %cmd.i = alloca %struct.cmd_ds_mesh_config, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ml_priv.i = getelementptr i8, ptr %dev, i32 -24
  %0 = ptrtoint ptr %ml_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ml_priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %cmd.i) #12
  %2 = getelementptr inbounds i8, ptr %cmd.i, i32 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 140)
  %fwcapinfo.i.i = getelementptr inbounds %struct.lbs_private, ptr %1, i32 0, i32 54
  %4 = ptrtoint ptr %fwcapinfo.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fwcapinfo.i.i, align 4
  %and.i.i = and i32 %5, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %entry.mesh_get_default_parameters.exit.thread_crit_edge, label %lbs_mesh_config_send.exit.i

entry.mesh_get_default_parameters.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %mesh_get_default_parameters.exit.thread

lbs_mesh_config_send.exit.i:                      ; preds = %entry
  %mesh_tlv.i.i.i = getelementptr inbounds %struct.lbs_private, ptr %1, i32 0, i32 13
  %6 = ptrtoint ptr %mesh_tlv.i.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %mesh_tlv.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 293, i16 %7)
  %cmp.i.i.i = icmp eq i16 %7, 293
  %spec.store.select.i.i.i = select i1 %cmp.i.i.i, i16 4268, i16 163
  %8 = tail call i16 @llvm.bswap.i16(i16 %spec.store.select.i.i.i) #12
  %9 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %cmd.i, align 2
  %size.i.i.i = getelementptr inbounds %struct.cmd_header, ptr %cmd.i, i32 0, i32 1
  %type5.i.i.i = getelementptr inbounds %struct.cmd_ds_mesh_config, ptr %cmd.i, i32 0, i32 3
  %10 = ptrtoint ptr %type5.i.i.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 1280, ptr %type5.i.i.i, align 2
  %action6.i.i.i = getelementptr inbounds %struct.cmd_ds_mesh_config, ptr %cmd.i, i32 0, i32 1
  %11 = ptrtoint ptr %action6.i.i.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 768, ptr %action6.i.i.i, align 2
  %12 = ptrtoint ptr %size.i.i.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 -28672, ptr %size.i.i.i, align 2
  %13 = ptrtoint ptr %cmd.i to i32
  %call.i.i.i = call i32 @__lbs_cmd(ptr noundef %1, i16 noundef zeroext %spec.store.select.i.i.i, ptr noundef nonnull %cmd.i, i32 noundef 144, ptr noundef nonnull @lbs_cmd_copyback, i32 noundef %13) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i, label %if.end, label %lbs_mesh_config_send.exit.i.mesh_get_default_parameters.exit.thread_crit_edge

lbs_mesh_config_send.exit.i.mesh_get_default_parameters.exit.thread_crit_edge: ; preds = %lbs_mesh_config_send.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mesh_get_default_parameters.exit.thread

mesh_get_default_parameters.exit.thread:          ; preds = %lbs_mesh_config_send.exit.i.mesh_get_default_parameters.exit.thread_crit_edge, %entry.mesh_get_default_parameters.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %cmd.i) #12
  br label %cleanup

if.end:                                           ; preds = %lbs_mesh_config_send.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %data.i = getelementptr inbounds %struct.cmd_ds_mesh_config, ptr %cmd.i, i32 0, i32 5
  %14 = ptrtoint ptr %data.i to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %defs.sroa.0.0.copyload = load i32, ptr %data.i, align 2
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %cmd.i) #12
  %15 = call i32 @llvm.bswap.i32(i32 %defs.sroa.0.0.copyload)
  %call1 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.19, i32 noundef %15) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %mesh_get_default_parameters.exit.thread
  %retval.0 = phi i32 [ %call1, %if.end ], [ -95, %mesh_get_default_parameters.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bootflag_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #0 align 64 {
entry:
  %cmd = alloca %struct.cmd_ds_mesh_config, align 2
  %datum = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ml_priv = getelementptr i8, ptr %dev, i32 -24
  %0 = ptrtoint ptr %ml_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ml_priv, align 8
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %cmd) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %datum) #12
  %2 = ptrtoint ptr %datum to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %datum, align 4, !annotation !99
  %3 = getelementptr inbounds i8, ptr %cmd, i32 4
  %4 = call ptr @memset(ptr %3, i32 0, i32 140)
  %call = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.22, ptr noundef nonnull %datum)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %5 = ptrtoint ptr %datum to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %datum, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp1 = icmp ugt i32 %6, 1
  br i1 %cmp1, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  %7 = select i1 %tobool.not, i32 0, i32 16777216
  %data = getelementptr inbounds %struct.cmd_ds_mesh_config, ptr %cmd, i32 0, i32 5
  %8 = ptrtoint ptr %data to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 %7, ptr %data, align 2
  %length = getelementptr inbounds %struct.cmd_ds_mesh_config, ptr %cmd, i32 0, i32 4
  %9 = ptrtoint ptr %length to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 1024, ptr %length, align 2
  %fwcapinfo.i = getelementptr inbounds %struct.lbs_private, ptr %1, i32 0, i32 54
  %10 = ptrtoint ptr %fwcapinfo.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fwcapinfo.i, align 4
  %and.i = and i32 %11, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %lbs_mesh_config_send.exit

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lbs_mesh_config_send.exit:                        ; preds = %if.end
  %mesh_tlv.i.i = getelementptr inbounds %struct.lbs_private, ptr %1, i32 0, i32 13
  %12 = ptrtoint ptr %mesh_tlv.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %mesh_tlv.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 293, i16 %13)
  %cmp.i.i = icmp eq i16 %13, 293
  %spec.store.select.i.i = select i1 %cmp.i.i, i16 4268, i16 163
  %14 = call i16 @llvm.bswap.i16(i16 %spec.store.select.i.i) #12
  %15 = ptrtoint ptr %cmd to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %cmd, align 2
  %size.i.i = getelementptr inbounds %struct.cmd_header, ptr %cmd, i32 0, i32 1
  %result.i.i = getelementptr inbounds %struct.cmd_header, ptr %cmd, i32 0, i32 3
  %16 = ptrtoint ptr %result.i.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 0, ptr %result.i.i, align 2
  %type5.i.i = getelementptr inbounds %struct.cmd_ds_mesh_config, ptr %cmd, i32 0, i32 3
  %17 = ptrtoint ptr %type5.i.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 256, ptr %type5.i.i, align 2
  %action6.i.i = getelementptr inbounds %struct.cmd_ds_mesh_config, ptr %cmd, i32 0, i32 1
  %18 = ptrtoint ptr %action6.i.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 512, ptr %action6.i.i, align 2
  %19 = ptrtoint ptr %size.i.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 -28672, ptr %size.i.i, align 2
  %20 = ptrtoint ptr %cmd to i32
  %call.i.i = call i32 @__lbs_cmd(ptr noundef %1, i16 noundef zeroext %spec.store.select.i.i, ptr noundef nonnull %cmd, i32 noundef 144, ptr noundef nonnull @lbs_cmd_copyback, i32 noundef %20) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool4.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool4.not, label %if.end6, label %lbs_mesh_config_send.exit.cleanup_crit_edge

lbs_mesh_config_send.exit.cleanup_crit_edge:      ; preds = %lbs_mesh_config_send.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end6:                                          ; preds = %lbs_mesh_config_send.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call7 = call i32 @strlen(ptr noundef %buf) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %lbs_mesh_config_send.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end6 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %call.i.i, %lbs_mesh_config_send.exit.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %datum) #12
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %cmd) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @boottime_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  %cmd.i = alloca %struct.cmd_ds_mesh_config, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ml_priv.i = getelementptr i8, ptr %dev, i32 -24
  %0 = ptrtoint ptr %ml_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ml_priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %cmd.i) #12
  %2 = getelementptr inbounds i8, ptr %cmd.i, i32 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 140)
  %fwcapinfo.i.i = getelementptr inbounds %struct.lbs_private, ptr %1, i32 0, i32 54
  %4 = ptrtoint ptr %fwcapinfo.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fwcapinfo.i.i, align 4
  %and.i.i = and i32 %5, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %entry.mesh_get_default_parameters.exit.thread_crit_edge, label %lbs_mesh_config_send.exit.i

entry.mesh_get_default_parameters.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %mesh_get_default_parameters.exit.thread

lbs_mesh_config_send.exit.i:                      ; preds = %entry
  %mesh_tlv.i.i.i = getelementptr inbounds %struct.lbs_private, ptr %1, i32 0, i32 13
  %6 = ptrtoint ptr %mesh_tlv.i.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %mesh_tlv.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 293, i16 %7)
  %cmp.i.i.i = icmp eq i16 %7, 293
  %spec.store.select.i.i.i = select i1 %cmp.i.i.i, i16 4268, i16 163
  %8 = tail call i16 @llvm.bswap.i16(i16 %spec.store.select.i.i.i) #12
  %9 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %cmd.i, align 2
  %size.i.i.i = getelementptr inbounds %struct.cmd_header, ptr %cmd.i, i32 0, i32 1
  %type5.i.i.i = getelementptr inbounds %struct.cmd_ds_mesh_config, ptr %cmd.i, i32 0, i32 3
  %10 = ptrtoint ptr %type5.i.i.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 1280, ptr %type5.i.i.i, align 2
  %action6.i.i.i = getelementptr inbounds %struct.cmd_ds_mesh_config, ptr %cmd.i, i32 0, i32 1
  %11 = ptrtoint ptr %action6.i.i.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 768, ptr %action6.i.i.i, align 2
  %12 = ptrtoint ptr %size.i.i.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 -28672, ptr %size.i.i.i, align 2
  %13 = ptrtoint ptr %cmd.i to i32
  %call.i.i.i = call i32 @__lbs_cmd(ptr noundef %1, i16 noundef zeroext %spec.store.select.i.i.i, ptr noundef nonnull %cmd.i, i32 noundef 144, ptr noundef nonnull @lbs_cmd_copyback, i32 noundef %13) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i, label %if.end, label %lbs_mesh_config_send.exit.i.mesh_get_default_parameters.exit.thread_crit_edge

lbs_mesh_config_send.exit.i.mesh_get_default_parameters.exit.thread_crit_edge: ; preds = %lbs_mesh_config_send.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mesh_get_default_parameters.exit.thread

mesh_get_default_parameters.exit.thread:          ; preds = %lbs_mesh_config_send.exit.i.mesh_get_default_parameters.exit.thread_crit_edge, %entry.mesh_get_default_parameters.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %cmd.i) #12
  br label %cleanup

if.end:                                           ; preds = %lbs_mesh_config_send.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %defs.sroa.4.0.data.i.sroa_idx = getelementptr inbounds %struct.cmd_ds_mesh_config, ptr %cmd.i, i32 0, i32 5, i32 4
  %14 = ptrtoint ptr %defs.sroa.4.0.data.i.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %14)
  %defs.sroa.4.0.copyload = load i8, ptr %defs.sroa.4.0.data.i.sroa_idx, align 2
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %cmd.i) #12
  %conv = zext i8 %defs.sroa.4.0.copyload to i32
  %call1 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.19, i32 noundef %conv) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %mesh_get_default_parameters.exit.thread
  %retval.0 = phi i32 [ %call1, %if.end ], [ -95, %mesh_get_default_parameters.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @boottime_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #0 align 64 {
entry:
  %cmd = alloca %struct.cmd_ds_mesh_config, align 2
  %datum = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ml_priv = getelementptr i8, ptr %dev, i32 -24
  %0 = ptrtoint ptr %ml_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ml_priv, align 8
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %cmd) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %datum) #12
  %2 = ptrtoint ptr %datum to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %datum, align 4, !annotation !99
  %3 = getelementptr inbounds i8, ptr %cmd, i32 4
  %4 = call ptr @memset(ptr %3, i32 0, i32 140)
  %call = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.22, ptr noundef nonnull %datum)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %5 = ptrtoint ptr %datum to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %datum, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %6)
  %cmp1 = icmp ugt i32 %6, 255
  br i1 %cmp1, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %7 = call i32 @llvm.umax.i32(i32 %6, i32 20)
  %8 = ptrtoint ptr %datum to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %datum, align 4
  %conv = trunc i32 %7 to i8
  %data = getelementptr inbounds %struct.cmd_ds_mesh_config, ptr %cmd, i32 0, i32 5
  %9 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv, ptr %data, align 2
  %length = getelementptr inbounds %struct.cmd_ds_mesh_config, ptr %cmd, i32 0, i32 4
  %10 = ptrtoint ptr %length to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 256, ptr %length, align 2
  %fwcapinfo.i = getelementptr inbounds %struct.lbs_private, ptr %1, i32 0, i32 54
  %11 = ptrtoint ptr %fwcapinfo.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %fwcapinfo.i, align 4
  %and.i = and i32 %12, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %lbs_mesh_config_send.exit

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lbs_mesh_config_send.exit:                        ; preds = %if.end
  %mesh_tlv.i.i = getelementptr inbounds %struct.lbs_private, ptr %1, i32 0, i32 13
  %13 = ptrtoint ptr %mesh_tlv.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %mesh_tlv.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 293, i16 %14)
  %cmp.i.i = icmp eq i16 %14, 293
  %spec.store.select.i.i = select i1 %cmp.i.i, i16 4268, i16 163
  %15 = call i16 @llvm.bswap.i16(i16 %spec.store.select.i.i) #12
  %16 = ptrtoint ptr %cmd to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %cmd, align 2
  %size.i.i = getelementptr inbounds %struct.cmd_header, ptr %cmd, i32 0, i32 1
  %result.i.i = getelementptr inbounds %struct.cmd_header, ptr %cmd, i32 0, i32 3
  %17 = ptrtoint ptr %result.i.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 0, ptr %result.i.i, align 2
  %type5.i.i = getelementptr inbounds %struct.cmd_ds_mesh_config, ptr %cmd, i32 0, i32 3
  %18 = ptrtoint ptr %type5.i.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 512, ptr %type5.i.i, align 2
  %action6.i.i = getelementptr inbounds %struct.cmd_ds_mesh_config, ptr %cmd, i32 0, i32 1
  %19 = ptrtoint ptr %action6.i.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 512, ptr %action6.i.i, align 2
  %20 = ptrtoint ptr %size.i.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 -28672, ptr %size.i.i, align 2
  %21 = ptrtoint ptr %cmd to i32
  %call.i.i = call i32 @__lbs_cmd(ptr noundef %1, i16 noundef zeroext %spec.store.select.i.i, ptr noundef nonnull %cmd, i32 noundef 144, ptr noundef nonnull @lbs_cmd_copyback, i32 noundef %21) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not, label %if.end5, label %lbs_mesh_config_send.exit.cleanup_crit_edge

lbs_mesh_config_send.exit.cleanup_crit_edge:      ; preds = %lbs_mesh_config_send.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %lbs_mesh_config_send.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call6 = call i32 @strlen(ptr noundef %buf) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %lbs_mesh_config_send.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end5 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %call.i.i, %lbs_mesh_config_send.exit.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %datum) #12
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %cmd) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @channel_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  %cmd.i = alloca %struct.cmd_ds_mesh_config, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ml_priv.i = getelementptr i8, ptr %dev, i32 -24
  %0 = ptrtoint ptr %ml_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ml_priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %cmd.i) #12
  %2 = getelementptr inbounds i8, ptr %cmd.i, i32 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 140)
  %fwcapinfo.i.i = getelementptr inbounds %struct.lbs_private, ptr %1, i32 0, i32 54
  %4 = ptrtoint ptr %fwcapinfo.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fwcapinfo.i.i, align 4
  %and.i.i = and i32 %5, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %entry.mesh_get_default_parameters.exit.thread_crit_edge, label %lbs_mesh_config_send.exit.i

entry.mesh_get_default_parameters.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %mesh_get_default_parameters.exit.thread

lbs_mesh_config_send.exit.i:                      ; preds = %entry
  %mesh_tlv.i.i.i = getelementptr inbounds %struct.lbs_private, ptr %1, i32 0, i32 13
  %6 = ptrtoint ptr %mesh_tlv.i.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %mesh_tlv.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 293, i16 %7)
  %cmp.i.i.i = icmp eq i16 %7, 293
  %spec.store.select.i.i.i = select i1 %cmp.i.i.i, i16 4268, i16 163
  %8 = tail call i16 @llvm.bswap.i16(i16 %spec.store.select.i.i.i) #12
  %9 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %cmd.i, align 2
  %size.i.i.i = getelementptr inbounds %struct.cmd_header, ptr %cmd.i, i32 0, i32 1
  %type5.i.i.i = getelementptr inbounds %struct.cmd_ds_mesh_config, ptr %cmd.i, i32 0, i32 3
  %10 = ptrtoint ptr %type5.i.i.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 1280, ptr %type5.i.i.i, align 2
  %action6.i.i.i = getelementptr inbounds %struct.cmd_ds_mesh_config, ptr %cmd.i, i32 0, i32 1
  %11 = ptrtoint ptr %action6.i.i.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 768, ptr %action6.i.i.i, align 2
  %12 = ptrtoint ptr %size.i.i.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 -28672, ptr %size.i.i.i, align 2
  %13 = ptrtoint ptr %cmd.i to i32
  %call.i.i.i = call i32 @__lbs_cmd(ptr noundef %1, i16 noundef zeroext %spec.store.select.i.i.i, ptr noundef nonnull %cmd.i, i32 noundef 144, ptr noundef nonnull @lbs_cmd_copyback, i32 noundef %13) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i, label %if.end, label %lbs_mesh_config_send.exit.i.mesh_get_default_parameters.exit.thread_crit_edge

lbs_mesh_config_send.exit.i.mesh_get_default_parameters.exit.thread_crit_edge: ; preds = %lbs_mesh_config_send.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mesh_get_default_parameters.exit.thread

mesh_get_default_parameters.exit.thread:          ; preds = %lbs_mesh_config_send.exit.i.mesh_get_default_parameters.exit.thread_crit_edge, %entry.mesh_get_default_parameters.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %cmd.i) #12
  br label %cleanup

if.end:                                           ; preds = %lbs_mesh_config_send.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %defs.sroa.4.0.data.i.sroa_idx = getelementptr inbounds %struct.cmd_ds_mesh_config, ptr %cmd.i, i32 0, i32 5, i32 6
  %14 = ptrtoint ptr %defs.sroa.4.0.data.i.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %14)
  %defs.sroa.4.0.copyload = load i16, ptr %defs.sroa.4.0.data.i.sroa_idx, align 2
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %cmd.i) #12
  %15 = call i16 @llvm.bswap.i16(i16 %defs.sroa.4.0.copyload)
  %conv = zext i16 %15 to i32
  %call1 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.19, i32 noundef %conv) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %mesh_get_default_parameters.exit.thread
  %retval.0 = phi i32 [ %call1, %if.end ], [ -95, %mesh_get_default_parameters.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @channel_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #0 align 64 {
entry:
  %cmd = alloca %struct.cmd_ds_mesh_config, align 2
  %datum = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ml_priv = getelementptr i8, ptr %dev, i32 -24
  %0 = ptrtoint ptr %ml_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ml_priv, align 8
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %cmd) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %datum) #12
  %2 = ptrtoint ptr %datum to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %datum, align 4, !annotation !99
  %3 = getelementptr inbounds i8, ptr %cmd, i32 4
  %4 = call ptr @memset(ptr %3, i32 0, i32 140)
  %call = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.22, ptr noundef nonnull %datum)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %5 = ptrtoint ptr %datum to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %datum, align 4
  %7 = add i32 %6, -12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %7)
  %8 = icmp ult i32 %7, -11
  br i1 %8, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %conv = trunc i32 %6 to i16
  %9 = call i16 @llvm.bswap.i16(i16 %conv)
  %data = getelementptr inbounds %struct.cmd_ds_mesh_config, ptr %cmd, i32 0, i32 5
  %10 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %data, align 2
  %length = getelementptr inbounds %struct.cmd_ds_mesh_config, ptr %cmd, i32 0, i32 4
  %11 = ptrtoint ptr %length to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 512, ptr %length, align 2
  %fwcapinfo.i = getelementptr inbounds %struct.lbs_private, ptr %1, i32 0, i32 54
  %12 = ptrtoint ptr %fwcapinfo.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fwcapinfo.i, align 4
  %and.i = and i32 %13, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %lbs_mesh_config_send.exit

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lbs_mesh_config_send.exit:                        ; preds = %if.end
  %mesh_tlv.i.i = getelementptr inbounds %struct.lbs_private, ptr %1, i32 0, i32 13
  %14 = ptrtoint ptr %mesh_tlv.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %mesh_tlv.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 293, i16 %15)
  %cmp.i.i = icmp eq i16 %15, 293
  %spec.store.select.i.i = select i1 %cmp.i.i, i16 4268, i16 163
  %16 = call i16 @llvm.bswap.i16(i16 %spec.store.select.i.i) #12
  %17 = ptrtoint ptr %cmd to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %cmd, align 2
  %size.i.i = getelementptr inbounds %struct.cmd_header, ptr %cmd, i32 0, i32 1
  %result.i.i = getelementptr inbounds %struct.cmd_header, ptr %cmd, i32 0, i32 3
  %18 = ptrtoint ptr %result.i.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 0, ptr %result.i.i, align 2
  %type5.i.i = getelementptr inbounds %struct.cmd_ds_mesh_config, ptr %cmd, i32 0, i32 3
  %19 = ptrtoint ptr %type5.i.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 768, ptr %type5.i.i, align 2
  %action6.i.i = getelementptr inbounds %struct.cmd_ds_mesh_config, ptr %cmd, i32 0, i32 1
  %20 = ptrtoint ptr %action6.i.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 512, ptr %action6.i.i, align 2
  %21 = ptrtoint ptr %size.i.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 -28672, ptr %size.i.i, align 2
  %22 = ptrtoint ptr %cmd to i32
  %call.i.i = call i32 @__lbs_cmd(ptr noundef %1, i16 noundef zeroext %spec.store.select.i.i, ptr noundef nonnull %cmd, i32 noundef 144, ptr noundef nonnull @lbs_cmd_copyback, i32 noundef %22) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not, label %if.end6, label %lbs_mesh_config_send.exit.cleanup_crit_edge

lbs_mesh_config_send.exit.cleanup_crit_edge:      ; preds = %lbs_mesh_config_send.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end6:                                          ; preds = %lbs_mesh_config_send.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call7 = call i32 @strlen(ptr noundef %buf) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %lbs_mesh_config_send.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end6 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %call.i.i, %lbs_mesh_config_send.exit.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %datum) #12
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %cmd) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mesh_id_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %cmd.i = alloca %struct.cmd_ds_mesh_config, align 2
  %defs.sroa.8 = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %defs.sroa.8)
  %ml_priv.i = getelementptr i8, ptr %dev, i32 -24
  %0 = ptrtoint ptr %ml_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ml_priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %cmd.i) #12
  %2 = getelementptr inbounds i8, ptr %cmd.i, i32 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 140)
  %fwcapinfo.i.i = getelementptr inbounds %struct.lbs_private, ptr %1, i32 0, i32 54
  %4 = ptrtoint ptr %fwcapinfo.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fwcapinfo.i.i, align 4
  %and.i.i = and i32 %5, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %entry.mesh_get_default_parameters.exit.thread_crit_edge, label %lbs_mesh_config_send.exit.i

entry.mesh_get_default_parameters.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %mesh_get_default_parameters.exit.thread

lbs_mesh_config_send.exit.i:                      ; preds = %entry
  %mesh_tlv.i.i.i = getelementptr inbounds %struct.lbs_private, ptr %1, i32 0, i32 13
  %6 = ptrtoint ptr %mesh_tlv.i.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %mesh_tlv.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 293, i16 %7)
  %cmp.i.i.i = icmp eq i16 %7, 293
  %spec.store.select.i.i.i = select i1 %cmp.i.i.i, i16 4268, i16 163
  %8 = tail call i16 @llvm.bswap.i16(i16 %spec.store.select.i.i.i) #12
  %9 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %cmd.i, align 2
  %size.i.i.i = getelementptr inbounds %struct.cmd_header, ptr %cmd.i, i32 0, i32 1
  %type5.i.i.i = getelementptr inbounds %struct.cmd_ds_mesh_config, ptr %cmd.i, i32 0, i32 3
  %10 = ptrtoint ptr %type5.i.i.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 1280, ptr %type5.i.i.i, align 2
  %action6.i.i.i = getelementptr inbounds %struct.cmd_ds_mesh_config, ptr %cmd.i, i32 0, i32 1
  %11 = ptrtoint ptr %action6.i.i.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 768, ptr %action6.i.i.i, align 2
  %12 = ptrtoint ptr %size.i.i.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 -28672, ptr %size.i.i.i, align 2
  %13 = ptrtoint ptr %cmd.i to i32
  %call.i.i.i = call i32 @__lbs_cmd(ptr noundef %1, i16 noundef zeroext %spec.store.select.i.i.i, ptr noundef nonnull %cmd.i, i32 noundef 144, ptr noundef nonnull @lbs_cmd_copyback, i32 noundef %13) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i, label %if.end, label %lbs_mesh_config_send.exit.i.mesh_get_default_parameters.exit.thread_crit_edge

lbs_mesh_config_send.exit.i.mesh_get_default_parameters.exit.thread_crit_edge: ; preds = %lbs_mesh_config_send.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mesh_get_default_parameters.exit.thread

mesh_get_default_parameters.exit.thread:          ; preds = %lbs_mesh_config_send.exit.i.mesh_get_default_parameters.exit.thread_crit_edge, %entry.mesh_get_default_parameters.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %cmd.i) #12
  br label %cleanup

if.end:                                           ; preds = %lbs_mesh_config_send.exit.i
  %defs.sroa.4.0.data.i.sroa_idx = getelementptr inbounds %struct.cmd_ds_mesh_config, ptr %cmd.i, i32 0, i32 5, i32 19
  %14 = ptrtoint ptr %defs.sroa.4.0.data.i.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %14)
  %defs.sroa.4.0.copyload = load i8, ptr %defs.sroa.4.0.data.i.sroa_idx, align 1
  %defs.sroa.8.0.data.i.sroa_idx = getelementptr inbounds %struct.cmd_ds_mesh_config, ptr %cmd.i, i32 0, i32 5, i32 20
  %15 = call ptr @memcpy(ptr %defs.sroa.8, ptr %defs.sroa.8.0.data.i.sroa_idx, i32 32)
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %cmd.i) #12
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %defs.sroa.4.0.copyload)
  %cmp = icmp ugt i8 %defs.sroa.4.0.copyload, 32
  br i1 %cmp, label %do.end, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.27) #15
  br label %if.end6

if.end6:                                          ; preds = %do.end, %if.end.if.end6_crit_edge
  %defs.sroa.4.1 = phi i8 [ 32, %do.end ], [ %defs.sroa.4.0.copyload, %if.end.if.end6_crit_edge ]
  %conv12 = zext i8 %defs.sroa.4.1 to i32
  %16 = call ptr @memcpy(ptr %buf, ptr %defs.sroa.8, i32 %conv12)
  %arrayidx = getelementptr i8, ptr %buf, i32 %conv12
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 10, ptr %arrayidx, align 1
  %add = add nuw nsw i32 %conv12, 1
  %arrayidx20 = getelementptr i8, ptr %buf, i32 %add
  %18 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %arrayidx20, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %mesh_get_default_parameters.exit.thread
  %retval.0 = phi i32 [ %add, %if.end6 ], [ -95, %mesh_get_default_parameters.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %defs.sroa.8)
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mesh_id_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #0 align 64 {
entry:
  %cmd.i = alloca %struct.cmd_ds_mesh_config, align 2
  %cmd = alloca %struct.cmd_ds_mesh_config, align 2
  %defs = alloca %struct.mrvl_mesh_defaults, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %cmd) #12
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %defs)
  %0 = call ptr @memset(ptr %defs, i32 255, i32 52)
  %ml_priv = getelementptr i8, ptr %dev, i32 -24
  %1 = ptrtoint ptr %ml_priv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ml_priv, align 8
  %3 = add i32 %count, -34
  call void @__sanitizer_cov_trace_const_cmp4(i32 -32, i32 %3)
  %4 = icmp ult i32 %3, -32
  br i1 %4, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = getelementptr inbounds i8, ptr %cmd, i32 4
  %6 = call ptr @memset(ptr %5, i32 0, i32 140)
  %data = getelementptr inbounds %struct.cmd_ds_mesh_config, ptr %cmd, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %cmd.i) #12
  %7 = getelementptr inbounds i8, ptr %cmd.i, i32 4
  %8 = call ptr @memset(ptr %7, i32 0, i32 140)
  %fwcapinfo.i.i = getelementptr inbounds %struct.lbs_private, ptr %2, i32 0, i32 54
  %9 = ptrtoint ptr %fwcapinfo.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %fwcapinfo.i.i, align 4
  %and.i.i = and i32 %10, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.mesh_get_default_parameters.exit_crit_edge, label %lbs_mesh_config_send.exit.i

if.end.mesh_get_default_parameters.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %mesh_get_default_parameters.exit

lbs_mesh_config_send.exit.i:                      ; preds = %if.end
  %mesh_tlv.i.i.i = getelementptr inbounds %struct.lbs_private, ptr %2, i32 0, i32 13
  %11 = ptrtoint ptr %mesh_tlv.i.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %mesh_tlv.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 293, i16 %12)
  %cmp.i.i.i = icmp eq i16 %12, 293
  %spec.store.select.i.i.i = select i1 %cmp.i.i.i, i16 4268, i16 163
  %13 = tail call i16 @llvm.bswap.i16(i16 %spec.store.select.i.i.i) #12
  %14 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %cmd.i, align 2
  %size.i.i.i = getelementptr inbounds %struct.cmd_header, ptr %cmd.i, i32 0, i32 1
  %type5.i.i.i = getelementptr inbounds %struct.cmd_ds_mesh_config, ptr %cmd.i, i32 0, i32 3
  %15 = ptrtoint ptr %type5.i.i.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 1280, ptr %type5.i.i.i, align 2
  %action6.i.i.i = getelementptr inbounds %struct.cmd_ds_mesh_config, ptr %cmd.i, i32 0, i32 1
  %16 = ptrtoint ptr %action6.i.i.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 768, ptr %action6.i.i.i, align 2
  %17 = ptrtoint ptr %size.i.i.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 -28672, ptr %size.i.i.i, align 2
  %18 = ptrtoint ptr %cmd.i to i32
  %call.i.i.i = call i32 @__lbs_cmd(ptr noundef %2, i16 noundef zeroext %spec.store.select.i.i.i, ptr noundef nonnull %cmd.i, i32 noundef 144, ptr noundef nonnull @lbs_cmd_copyback, i32 noundef %18) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %lbs_mesh_config_send.exit.i.mesh_get_default_parameters.exit_crit_edge

lbs_mesh_config_send.exit.i.mesh_get_default_parameters.exit_crit_edge: ; preds = %lbs_mesh_config_send.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mesh_get_default_parameters.exit

if.end.i:                                         ; preds = %lbs_mesh_config_send.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %data.i = getelementptr inbounds %struct.cmd_ds_mesh_config, ptr %cmd.i, i32 0, i32 5
  %19 = call ptr @memcpy(ptr %defs, ptr %data.i, i32 52)
  br label %mesh_get_default_parameters.exit

mesh_get_default_parameters.exit:                 ; preds = %if.end.i, %lbs_mesh_config_send.exit.i.mesh_get_default_parameters.exit_crit_edge, %if.end.mesh_get_default_parameters.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %cmd.i) #12
  %length = getelementptr inbounds %struct.cmd_ds_mesh_config, ptr %cmd, i32 0, i32 4
  %20 = ptrtoint ptr %length to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 11264, ptr %length, align 2
  %meshie = getelementptr inbounds %struct.mrvl_mesh_defaults, ptr %defs, i32 0, i32 4
  %21 = call ptr @memcpy(ptr %data, ptr %meshie, i32 44)
  %sub = add nsw i32 %count, -1
  %mesh_id = getelementptr inbounds %struct.cmd_ds_mesh_config, ptr %cmd, i32 0, i32 5, i32 12
  %22 = call ptr @memcpy(ptr %mesh_id, ptr %buf, i32 %sub)
  %conv = trunc i32 %sub to i8
  %mesh_id_len = getelementptr inbounds %struct.cmd_ds_mesh_config, ptr %cmd, i32 0, i32 5, i32 11
  %23 = ptrtoint ptr %mesh_id_len to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv, ptr %mesh_id_len, align 1
  %24 = trunc i32 %count to i8
  %conv3 = add nuw nsw i8 %24, 9
  %len4 = getelementptr inbounds %struct.cmd_ds_mesh_config, ptr %cmd, i32 0, i32 5, i32 1
  %25 = ptrtoint ptr %len4 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv3, ptr %len4, align 1
  %26 = ptrtoint ptr %fwcapinfo.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %fwcapinfo.i.i, align 4
  %and.i = and i32 %27, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i24 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i24, label %mesh_get_default_parameters.exit.cleanup_crit_edge, label %lbs_mesh_config_send.exit

mesh_get_default_parameters.exit.cleanup_crit_edge: ; preds = %mesh_get_default_parameters.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lbs_mesh_config_send.exit:                        ; preds = %mesh_get_default_parameters.exit
  %mesh_tlv.i.i = getelementptr inbounds %struct.lbs_private, ptr %2, i32 0, i32 13
  %28 = ptrtoint ptr %mesh_tlv.i.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %mesh_tlv.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 293, i16 %29)
  %cmp.i.i = icmp eq i16 %29, 293
  %spec.store.select.i.i = select i1 %cmp.i.i, i16 4268, i16 163
  %30 = call i16 @llvm.bswap.i16(i16 %spec.store.select.i.i) #12
  %31 = ptrtoint ptr %cmd to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %cmd, align 2
  %size.i.i = getelementptr inbounds %struct.cmd_header, ptr %cmd, i32 0, i32 1
  %result.i.i = getelementptr inbounds %struct.cmd_header, ptr %cmd, i32 0, i32 3
  %32 = ptrtoint ptr %result.i.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 0, ptr %result.i.i, align 2
  %type5.i.i = getelementptr inbounds %struct.cmd_ds_mesh_config, ptr %cmd, i32 0, i32 3
  %33 = ptrtoint ptr %type5.i.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 1024, ptr %type5.i.i, align 2
  %action6.i.i = getelementptr inbounds %struct.cmd_ds_mesh_config, ptr %cmd, i32 0, i32 1
  %34 = ptrtoint ptr %action6.i.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 512, ptr %action6.i.i, align 2
  %35 = ptrtoint ptr %size.i.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 -28672, ptr %size.i.i, align 2
  %36 = ptrtoint ptr %cmd to i32
  %call.i.i = call i32 @__lbs_cmd(ptr noundef %2, i16 noundef zeroext %spec.store.select.i.i, ptr noundef nonnull %cmd, i32 noundef 144, ptr noundef nonnull @lbs_cmd_copyback, i32 noundef %36) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not, label %if.end7, label %lbs_mesh_config_send.exit.cleanup_crit_edge

lbs_mesh_config_send.exit.cleanup_crit_edge:      ; preds = %lbs_mesh_config_send.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end7:                                          ; preds = %lbs_mesh_config_send.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call8 = call i32 @strlen(ptr noundef %buf) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %lbs_mesh_config_send.exit.cleanup_crit_edge, %mesh_get_default_parameters.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %if.end7 ], [ -22, %entry.cleanup_crit_edge ], [ %call.i.i, %lbs_mesh_config_send.exit.cleanup_crit_edge ], [ -95, %mesh_get_default_parameters.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %defs)
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %cmd) #12
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @protocol_id_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  %cmd.i = alloca %struct.cmd_ds_mesh_config, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ml_priv.i = getelementptr i8, ptr %dev, i32 -24
  %0 = ptrtoint ptr %ml_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ml_priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %cmd.i) #12
  %2 = getelementptr inbounds i8, ptr %cmd.i, i32 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 140)
  %fwcapinfo.i.i = getelementptr inbounds %struct.lbs_private, ptr %1, i32 0, i32 54
  %4 = ptrtoint ptr %fwcapinfo.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fwcapinfo.i.i, align 4
  %and.i.i = and i32 %5, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %entry.mesh_get_default_parameters.exit.thread_crit_edge, label %lbs_mesh_config_send.exit.i

entry.mesh_get_default_parameters.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %mesh_get_default_parameters.exit.thread

lbs_mesh_config_send.exit.i:                      ; preds = %entry
  %mesh_tlv.i.i.i = getelementptr inbounds %struct.lbs_private, ptr %1, i32 0, i32 13
  %6 = ptrtoint ptr %mesh_tlv.i.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %mesh_tlv.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 293, i16 %7)
  %cmp.i.i.i = icmp eq i16 %7, 293
  %spec.store.select.i.i.i = select i1 %cmp.i.i.i, i16 4268, i16 163
  %8 = tail call i16 @llvm.bswap.i16(i16 %spec.store.select.i.i.i) #12
  %9 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %cmd.i, align 2
  %size.i.i.i = getelementptr inbounds %struct.cmd_header, ptr %cmd.i, i32 0, i32 1
  %type5.i.i.i = getelementptr inbounds %struct.cmd_ds_mesh_config, ptr %cmd.i, i32 0, i32 3
  %10 = ptrtoint ptr %type5.i.i.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 1280, ptr %type5.i.i.i, align 2
  %action6.i.i.i = getelementptr inbounds %struct.cmd_ds_mesh_config, ptr %cmd.i, i32 0, i32 1
  %11 = ptrtoint ptr %action6.i.i.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 768, ptr %action6.i.i.i, align 2
  %12 = ptrtoint ptr %size.i.i.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 -28672, ptr %size.i.i.i, align 2
  %13 = ptrtoint ptr %cmd.i to i32
  %call.i.i.i = call i32 @__lbs_cmd(ptr noundef %1, i16 noundef zeroext %spec.store.select.i.i.i, ptr noundef nonnull %cmd.i, i32 noundef 144, ptr noundef nonnull @lbs_cmd_copyback, i32 noundef %13) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i, label %if.end, label %lbs_mesh_config_send.exit.i.mesh_get_default_parameters.exit.thread_crit_edge

lbs_mesh_config_send.exit.i.mesh_get_default_parameters.exit.thread_crit_edge: ; preds = %lbs_mesh_config_send.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mesh_get_default_parameters.exit.thread

mesh_get_default_parameters.exit.thread:          ; preds = %lbs_mesh_config_send.exit.i.mesh_get_default_parameters.exit.thread_crit_edge, %entry.mesh_get_default_parameters.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %cmd.i) #12
  br label %cleanup

if.end:                                           ; preds = %lbs_mesh_config_send.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %defs.sroa.4.0.data.i.sroa_idx = getelementptr inbounds %struct.cmd_ds_mesh_config, ptr %cmd.i, i32 0, i32 5, i32 16
  %14 = ptrtoint ptr %defs.sroa.4.0.data.i.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %14)
  %defs.sroa.4.0.copyload = load i8, ptr %defs.sroa.4.0.data.i.sroa_idx, align 2
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %cmd.i) #12
  %conv = zext i8 %defs.sroa.4.0.copyload to i32
  %call1 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.19, i32 noundef %conv) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %mesh_get_default_parameters.exit.thread
  %retval.0 = phi i32 [ %call1, %if.end ], [ -95, %mesh_get_default_parameters.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @protocol_id_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #0 align 64 {
entry:
  %cmd.i = alloca %struct.cmd_ds_mesh_config, align 2
  %cmd = alloca %struct.cmd_ds_mesh_config, align 2
  %defs = alloca %struct.mrvl_mesh_defaults, align 1
  %datum = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %cmd) #12
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %defs)
  %0 = call ptr @memset(ptr %defs, i32 255, i32 52)
  %ml_priv = getelementptr i8, ptr %dev, i32 -24
  %1 = ptrtoint ptr %ml_priv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ml_priv, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %datum) #12
  %3 = ptrtoint ptr %datum to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %datum, align 4, !annotation !99
  %4 = getelementptr inbounds i8, ptr %cmd, i32 4
  %5 = call ptr @memset(ptr %4, i32 0, i32 140)
  %call = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.22, ptr noundef nonnull %datum)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %6 = ptrtoint ptr %datum to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %datum, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %7)
  %cmp1 = icmp ugt i32 %7, 255
  br i1 %cmp1, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %8 = ptrtoint ptr %ml_priv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ml_priv, align 8
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %cmd.i) #12
  %10 = getelementptr inbounds i8, ptr %cmd.i, i32 4
  %11 = call ptr @memset(ptr %10, i32 0, i32 140)
  %fwcapinfo.i.i = getelementptr inbounds %struct.lbs_private, ptr %9, i32 0, i32 54
  %12 = ptrtoint ptr %fwcapinfo.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fwcapinfo.i.i, align 4
  %and.i.i = and i32 %13, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.mesh_get_default_parameters.exit_crit_edge, label %lbs_mesh_config_send.exit.i

if.end.mesh_get_default_parameters.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %mesh_get_default_parameters.exit

lbs_mesh_config_send.exit.i:                      ; preds = %if.end
  %mesh_tlv.i.i.i = getelementptr inbounds %struct.lbs_private, ptr %9, i32 0, i32 13
  %14 = ptrtoint ptr %mesh_tlv.i.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %mesh_tlv.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 293, i16 %15)
  %cmp.i.i.i = icmp eq i16 %15, 293
  %spec.store.select.i.i.i = select i1 %cmp.i.i.i, i16 4268, i16 163
  %16 = call i16 @llvm.bswap.i16(i16 %spec.store.select.i.i.i) #12
  %17 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %cmd.i, align 2
  %size.i.i.i = getelementptr inbounds %struct.cmd_header, ptr %cmd.i, i32 0, i32 1
  %type5.i.i.i = getelementptr inbounds %struct.cmd_ds_mesh_config, ptr %cmd.i, i32 0, i32 3
  %18 = ptrtoint ptr %type5.i.i.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 1280, ptr %type5.i.i.i, align 2
  %action6.i.i.i = getelementptr inbounds %struct.cmd_ds_mesh_config, ptr %cmd.i, i32 0, i32 1
  %19 = ptrtoint ptr %action6.i.i.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 768, ptr %action6.i.i.i, align 2
  %20 = ptrtoint ptr %size.i.i.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 -28672, ptr %size.i.i.i, align 2
  %21 = ptrtoint ptr %cmd.i to i32
  %call.i.i.i = call i32 @__lbs_cmd(ptr noundef %9, i16 noundef zeroext %spec.store.select.i.i.i, ptr noundef nonnull %cmd.i, i32 noundef 144, ptr noundef nonnull @lbs_cmd_copyback, i32 noundef %21) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %lbs_mesh_config_send.exit.i.mesh_get_default_parameters.exit_crit_edge

lbs_mesh_config_send.exit.i.mesh_get_default_parameters.exit_crit_edge: ; preds = %lbs_mesh_config_send.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mesh_get_default_parameters.exit

if.end.i:                                         ; preds = %lbs_mesh_config_send.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %data.i = getelementptr inbounds %struct.cmd_ds_mesh_config, ptr %cmd.i, i32 0, i32 5
  %22 = call ptr @memcpy(ptr %defs, ptr %data.i, i32 52)
  br label %mesh_get_default_parameters.exit

mesh_get_default_parameters.exit:                 ; preds = %if.end.i, %lbs_mesh_config_send.exit.i.mesh_get_default_parameters.exit_crit_edge, %if.end.mesh_get_default_parameters.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %cmd.i) #12
  %length = getelementptr inbounds %struct.cmd_ds_mesh_config, ptr %cmd, i32 0, i32 4
  %23 = ptrtoint ptr %length to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 11264, ptr %length, align 2
  %data = getelementptr inbounds %struct.cmd_ds_mesh_config, ptr %cmd, i32 0, i32 5
  %meshie = getelementptr inbounds %struct.mrvl_mesh_defaults, ptr %defs, i32 0, i32 4
  %24 = call ptr @memcpy(ptr %data, ptr %meshie, i32 44)
  %25 = ptrtoint ptr %datum to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %datum, align 4
  %conv = trunc i32 %26 to i8
  %active_protocol_id = getelementptr inbounds %struct.cmd_ds_mesh_config, ptr %cmd, i32 0, i32 5, i32 8
  %27 = ptrtoint ptr %active_protocol_id to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv, ptr %active_protocol_id, align 2
  %fwcapinfo.i = getelementptr inbounds %struct.lbs_private, ptr %2, i32 0, i32 54
  %28 = ptrtoint ptr %fwcapinfo.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %fwcapinfo.i, align 4
  %and.i = and i32 %29, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i17 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i17, label %mesh_get_default_parameters.exit.cleanup_crit_edge, label %lbs_mesh_config_send.exit

mesh_get_default_parameters.exit.cleanup_crit_edge: ; preds = %mesh_get_default_parameters.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lbs_mesh_config_send.exit:                        ; preds = %mesh_get_default_parameters.exit
  %mesh_tlv.i.i = getelementptr inbounds %struct.lbs_private, ptr %2, i32 0, i32 13
  %30 = ptrtoint ptr %mesh_tlv.i.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %mesh_tlv.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 293, i16 %31)
  %cmp.i.i = icmp eq i16 %31, 293
  %spec.store.select.i.i = select i1 %cmp.i.i, i16 4268, i16 163
  %32 = call i16 @llvm.bswap.i16(i16 %spec.store.select.i.i) #12
  %33 = ptrtoint ptr %cmd to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %cmd, align 2
  %size.i.i = getelementptr inbounds %struct.cmd_header, ptr %cmd, i32 0, i32 1
  %result.i.i = getelementptr inbounds %struct.cmd_header, ptr %cmd, i32 0, i32 3
  %34 = ptrtoint ptr %result.i.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 0, ptr %result.i.i, align 2
  %type5.i.i = getelementptr inbounds %struct.cmd_ds_mesh_config, ptr %cmd, i32 0, i32 3
  %35 = ptrtoint ptr %type5.i.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 1024, ptr %type5.i.i, align 2
  %action6.i.i = getelementptr inbounds %struct.cmd_ds_mesh_config, ptr %cmd, i32 0, i32 1
  %36 = ptrtoint ptr %action6.i.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 512, ptr %action6.i.i, align 2
  %37 = ptrtoint ptr %size.i.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 -28672, ptr %size.i.i, align 2
  %38 = ptrtoint ptr %cmd to i32
  %call.i.i = call i32 @__lbs_cmd(ptr noundef %2, i16 noundef zeroext %spec.store.select.i.i, ptr noundef nonnull %cmd, i32 noundef 144, ptr noundef nonnull @lbs_cmd_copyback, i32 noundef %38) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not, label %if.end5, label %lbs_mesh_config_send.exit.cleanup_crit_edge

lbs_mesh_config_send.exit.cleanup_crit_edge:      ; preds = %lbs_mesh_config_send.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %lbs_mesh_config_send.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call6 = call i32 @strlen(ptr noundef %buf) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %lbs_mesh_config_send.exit.cleanup_crit_edge, %mesh_get_default_parameters.exit.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end5 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %call.i.i, %lbs_mesh_config_send.exit.cleanup_crit_edge ], [ -95, %mesh_get_default_parameters.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %datum) #12
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %defs)
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %cmd) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @metric_id_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  %cmd.i = alloca %struct.cmd_ds_mesh_config, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ml_priv.i = getelementptr i8, ptr %dev, i32 -24
  %0 = ptrtoint ptr %ml_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ml_priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %cmd.i) #12
  %2 = getelementptr inbounds i8, ptr %cmd.i, i32 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 140)
  %fwcapinfo.i.i = getelementptr inbounds %struct.lbs_private, ptr %1, i32 0, i32 54
  %4 = ptrtoint ptr %fwcapinfo.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fwcapinfo.i.i, align 4
  %and.i.i = and i32 %5, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %entry.mesh_get_default_parameters.exit.thread_crit_edge, label %lbs_mesh_config_send.exit.i

entry.mesh_get_default_parameters.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %mesh_get_default_parameters.exit.thread

lbs_mesh_config_send.exit.i:                      ; preds = %entry
  %mesh_tlv.i.i.i = getelementptr inbounds %struct.lbs_private, ptr %1, i32 0, i32 13
  %6 = ptrtoint ptr %mesh_tlv.i.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %mesh_tlv.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 293, i16 %7)
  %cmp.i.i.i = icmp eq i16 %7, 293
  %spec.store.select.i.i.i = select i1 %cmp.i.i.i, i16 4268, i16 163
  %8 = tail call i16 @llvm.bswap.i16(i16 %spec.store.select.i.i.i) #12
  %9 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %cmd.i, align 2
  %size.i.i.i = getelementptr inbounds %struct.cmd_header, ptr %cmd.i, i32 0, i32 1
  %type5.i.i.i = getelementptr inbounds %struct.cmd_ds_mesh_config, ptr %cmd.i, i32 0, i32 3
  %10 = ptrtoint ptr %type5.i.i.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 1280, ptr %type5.i.i.i, align 2
  %action6.i.i.i = getelementptr inbounds %struct.cmd_ds_mesh_config, ptr %cmd.i, i32 0, i32 1
  %11 = ptrtoint ptr %action6.i.i.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 768, ptr %action6.i.i.i, align 2
  %12 = ptrtoint ptr %size.i.i.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 -28672, ptr %size.i.i.i, align 2
  %13 = ptrtoint ptr %cmd.i to i32
  %call.i.i.i = call i32 @__lbs_cmd(ptr noundef %1, i16 noundef zeroext %spec.store.select.i.i.i, ptr noundef nonnull %cmd.i, i32 noundef 144, ptr noundef nonnull @lbs_cmd_copyback, i32 noundef %13) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i, label %if.end, label %lbs_mesh_config_send.exit.i.mesh_get_default_parameters.exit.thread_crit_edge

lbs_mesh_config_send.exit.i.mesh_get_default_parameters.exit.thread_crit_edge: ; preds = %lbs_mesh_config_send.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mesh_get_default_parameters.exit.thread

mesh_get_default_parameters.exit.thread:          ; preds = %lbs_mesh_config_send.exit.i.mesh_get_default_parameters.exit.thread_crit_edge, %entry.mesh_get_default_parameters.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %cmd.i) #12
  br label %cleanup

if.end:                                           ; preds = %lbs_mesh_config_send.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %defs.sroa.4.0.data.i.sroa_idx = getelementptr inbounds %struct.cmd_ds_mesh_config, ptr %cmd.i, i32 0, i32 5, i32 17
  %14 = ptrtoint ptr %defs.sroa.4.0.data.i.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %14)
  %defs.sroa.4.0.copyload = load i8, ptr %defs.sroa.4.0.data.i.sroa_idx, align 1
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %cmd.i) #12
  %conv = zext i8 %defs.sroa.4.0.copyload to i32
  %call1 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.19, i32 noundef %conv) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %mesh_get_default_parameters.exit.thread
  %retval.0 = phi i32 [ %call1, %if.end ], [ -95, %mesh_get_default_parameters.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @metric_id_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #0 align 64 {
entry:
  %cmd.i = alloca %struct.cmd_ds_mesh_config, align 2
  %cmd = alloca %struct.cmd_ds_mesh_config, align 2
  %defs = alloca %struct.mrvl_mesh_defaults, align 1
  %datum = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %cmd) #12
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %defs)
  %0 = call ptr @memset(ptr %defs, i32 255, i32 52)
  %ml_priv = getelementptr i8, ptr %dev, i32 -24
  %1 = ptrtoint ptr %ml_priv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ml_priv, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %datum) #12
  %3 = ptrtoint ptr %datum to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %datum, align 4, !annotation !99
  %4 = getelementptr inbounds i8, ptr %cmd, i32 4
  %5 = call ptr @memset(ptr %4, i32 0, i32 140)
  %call = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.22, ptr noundef nonnull %datum)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %6 = ptrtoint ptr %datum to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %datum, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %7)
  %cmp1 = icmp ugt i32 %7, 255
  br i1 %cmp1, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %8 = ptrtoint ptr %ml_priv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ml_priv, align 8
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %cmd.i) #12
  %10 = getelementptr inbounds i8, ptr %cmd.i, i32 4
  %11 = call ptr @memset(ptr %10, i32 0, i32 140)
  %fwcapinfo.i.i = getelementptr inbounds %struct.lbs_private, ptr %9, i32 0, i32 54
  %12 = ptrtoint ptr %fwcapinfo.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fwcapinfo.i.i, align 4
  %and.i.i = and i32 %13, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.mesh_get_default_parameters.exit_crit_edge, label %lbs_mesh_config_send.exit.i

if.end.mesh_get_default_parameters.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %mesh_get_default_parameters.exit

lbs_mesh_config_send.exit.i:                      ; preds = %if.end
  %mesh_tlv.i.i.i = getelementptr inbounds %struct.lbs_private, ptr %9, i32 0, i32 13
  %14 = ptrtoint ptr %mesh_tlv.i.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %mesh_tlv.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 293, i16 %15)
  %cmp.i.i.i = icmp eq i16 %15, 293
  %spec.store.select.i.i.i = select i1 %cmp.i.i.i, i16 4268, i16 163
  %16 = call i16 @llvm.bswap.i16(i16 %spec.store.select.i.i.i) #12
  %17 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %cmd.i, align 2
  %size.i.i.i = getelementptr inbounds %struct.cmd_header, ptr %cmd.i, i32 0, i32 1
  %type5.i.i.i = getelementptr inbounds %struct.cmd_ds_mesh_config, ptr %cmd.i, i32 0, i32 3
  %18 = ptrtoint ptr %type5.i.i.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 1280, ptr %type5.i.i.i, align 2
  %action6.i.i.i = getelementptr inbounds %struct.cmd_ds_mesh_config, ptr %cmd.i, i32 0, i32 1
  %19 = ptrtoint ptr %action6.i.i.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 768, ptr %action6.i.i.i, align 2
  %20 = ptrtoint ptr %size.i.i.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 -28672, ptr %size.i.i.i, align 2
  %21 = ptrtoint ptr %cmd.i to i32
  %call.i.i.i = call i32 @__lbs_cmd(ptr noundef %9, i16 noundef zeroext %spec.store.select.i.i.i, ptr noundef nonnull %cmd.i, i32 noundef 144, ptr noundef nonnull @lbs_cmd_copyback, i32 noundef %21) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %lbs_mesh_config_send.exit.i.mesh_get_default_parameters.exit_crit_edge

lbs_mesh_config_send.exit.i.mesh_get_default_parameters.exit_crit_edge: ; preds = %lbs_mesh_config_send.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mesh_get_default_parameters.exit

if.end.i:                                         ; preds = %lbs_mesh_config_send.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %data.i = getelementptr inbounds %struct.cmd_ds_mesh_config, ptr %cmd.i, i32 0, i32 5
  %22 = call ptr @memcpy(ptr %defs, ptr %data.i, i32 52)
  br label %mesh_get_default_parameters.exit

mesh_get_default_parameters.exit:                 ; preds = %if.end.i, %lbs_mesh_config_send.exit.i.mesh_get_default_parameters.exit_crit_edge, %if.end.mesh_get_default_parameters.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %cmd.i) #12
  %length = getelementptr inbounds %struct.cmd_ds_mesh_config, ptr %cmd, i32 0, i32 4
  %23 = ptrtoint ptr %length to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 11264, ptr %length, align 2
  %data = getelementptr inbounds %struct.cmd_ds_mesh_config, ptr %cmd, i32 0, i32 5
  %meshie = getelementptr inbounds %struct.mrvl_mesh_defaults, ptr %defs, i32 0, i32 4
  %24 = call ptr @memcpy(ptr %data, ptr %meshie, i32 44)
  %25 = ptrtoint ptr %datum to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %datum, align 4
  %conv = trunc i32 %26 to i8
  %active_metric_id = getelementptr inbounds %struct.cmd_ds_mesh_config, ptr %cmd, i32 0, i32 5, i32 9
  %27 = ptrtoint ptr %active_metric_id to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv, ptr %active_metric_id, align 1
  %fwcapinfo.i = getelementptr inbounds %struct.lbs_private, ptr %2, i32 0, i32 54
  %28 = ptrtoint ptr %fwcapinfo.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %fwcapinfo.i, align 4
  %and.i = and i32 %29, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i17 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i17, label %mesh_get_default_parameters.exit.cleanup_crit_edge, label %lbs_mesh_config_send.exit

mesh_get_default_parameters.exit.cleanup_crit_edge: ; preds = %mesh_get_default_parameters.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lbs_mesh_config_send.exit:                        ; preds = %mesh_get_default_parameters.exit
  %mesh_tlv.i.i = getelementptr inbounds %struct.lbs_private, ptr %2, i32 0, i32 13
  %30 = ptrtoint ptr %mesh_tlv.i.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %mesh_tlv.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 293, i16 %31)
  %cmp.i.i = icmp eq i16 %31, 293
  %spec.store.select.i.i = select i1 %cmp.i.i, i16 4268, i16 163
  %32 = call i16 @llvm.bswap.i16(i16 %spec.store.select.i.i) #12
  %33 = ptrtoint ptr %cmd to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %cmd, align 2
  %size.i.i = getelementptr inbounds %struct.cmd_header, ptr %cmd, i32 0, i32 1
  %result.i.i = getelementptr inbounds %struct.cmd_header, ptr %cmd, i32 0, i32 3
  %34 = ptrtoint ptr %result.i.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 0, ptr %result.i.i, align 2
  %type5.i.i = getelementptr inbounds %struct.cmd_ds_mesh_config, ptr %cmd, i32 0, i32 3
  %35 = ptrtoint ptr %type5.i.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 1024, ptr %type5.i.i, align 2
  %action6.i.i = getelementptr inbounds %struct.cmd_ds_mesh_config, ptr %cmd, i32 0, i32 1
  %36 = ptrtoint ptr %action6.i.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 512, ptr %action6.i.i, align 2
  %37 = ptrtoint ptr %size.i.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 -28672, ptr %size.i.i, align 2
  %38 = ptrtoint ptr %cmd to i32
  %call.i.i = call i32 @__lbs_cmd(ptr noundef %2, i16 noundef zeroext %spec.store.select.i.i, ptr noundef nonnull %cmd, i32 noundef 144, ptr noundef nonnull @lbs_cmd_copyback, i32 noundef %38) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not, label %if.end5, label %lbs_mesh_config_send.exit.cleanup_crit_edge

lbs_mesh_config_send.exit.cleanup_crit_edge:      ; preds = %lbs_mesh_config_send.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %lbs_mesh_config_send.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call6 = call i32 @strlen(ptr noundef %buf) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %lbs_mesh_config_send.exit.cleanup_crit_edge, %mesh_get_default_parameters.exit.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end5 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %call.i.i, %lbs_mesh_config_send.exit.cleanup_crit_edge ], [ -95, %mesh_get_default_parameters.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %datum) #12
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %defs)
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %cmd) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @capability_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  %cmd.i = alloca %struct.cmd_ds_mesh_config, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ml_priv.i = getelementptr i8, ptr %dev, i32 -24
  %0 = ptrtoint ptr %ml_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ml_priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %cmd.i) #12
  %2 = getelementptr inbounds i8, ptr %cmd.i, i32 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 140)
  %fwcapinfo.i.i = getelementptr inbounds %struct.lbs_private, ptr %1, i32 0, i32 54
  %4 = ptrtoint ptr %fwcapinfo.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fwcapinfo.i.i, align 4
  %and.i.i = and i32 %5, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %entry.mesh_get_default_parameters.exit.thread_crit_edge, label %lbs_mesh_config_send.exit.i

entry.mesh_get_default_parameters.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %mesh_get_default_parameters.exit.thread

lbs_mesh_config_send.exit.i:                      ; preds = %entry
  %mesh_tlv.i.i.i = getelementptr inbounds %struct.lbs_private, ptr %1, i32 0, i32 13
  %6 = ptrtoint ptr %mesh_tlv.i.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %mesh_tlv.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 293, i16 %7)
  %cmp.i.i.i = icmp eq i16 %7, 293
  %spec.store.select.i.i.i = select i1 %cmp.i.i.i, i16 4268, i16 163
  %8 = tail call i16 @llvm.bswap.i16(i16 %spec.store.select.i.i.i) #12
  %9 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %cmd.i, align 2
  %size.i.i.i = getelementptr inbounds %struct.cmd_header, ptr %cmd.i, i32 0, i32 1
  %type5.i.i.i = getelementptr inbounds %struct.cmd_ds_mesh_config, ptr %cmd.i, i32 0, i32 3
  %10 = ptrtoint ptr %type5.i.i.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 1280, ptr %type5.i.i.i, align 2
  %action6.i.i.i = getelementptr inbounds %struct.cmd_ds_mesh_config, ptr %cmd.i, i32 0, i32 1
  %11 = ptrtoint ptr %action6.i.i.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 768, ptr %action6.i.i.i, align 2
  %12 = ptrtoint ptr %size.i.i.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 -28672, ptr %size.i.i.i, align 2
  %13 = ptrtoint ptr %cmd.i to i32
  %call.i.i.i = call i32 @__lbs_cmd(ptr noundef %1, i16 noundef zeroext %spec.store.select.i.i.i, ptr noundef nonnull %cmd.i, i32 noundef 144, ptr noundef nonnull @lbs_cmd_copyback, i32 noundef %13) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i, label %if.end, label %lbs_mesh_config_send.exit.i.mesh_get_default_parameters.exit.thread_crit_edge

lbs_mesh_config_send.exit.i.mesh_get_default_parameters.exit.thread_crit_edge: ; preds = %lbs_mesh_config_send.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mesh_get_default_parameters.exit.thread

mesh_get_default_parameters.exit.thread:          ; preds = %lbs_mesh_config_send.exit.i.mesh_get_default_parameters.exit.thread_crit_edge, %entry.mesh_get_default_parameters.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %cmd.i) #12
  br label %cleanup

if.end:                                           ; preds = %lbs_mesh_config_send.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %defs.sroa.4.0.data.i.sroa_idx = getelementptr inbounds %struct.cmd_ds_mesh_config, ptr %cmd.i, i32 0, i32 5, i32 18
  %14 = ptrtoint ptr %defs.sroa.4.0.data.i.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %14)
  %defs.sroa.4.0.copyload = load i8, ptr %defs.sroa.4.0.data.i.sroa_idx, align 2
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %cmd.i) #12
  %conv = zext i8 %defs.sroa.4.0.copyload to i32
  %call1 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.19, i32 noundef %conv) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %mesh_get_default_parameters.exit.thread
  %retval.0 = phi i32 [ %call1, %if.end ], [ -95, %mesh_get_default_parameters.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @capability_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #0 align 64 {
entry:
  %cmd.i = alloca %struct.cmd_ds_mesh_config, align 2
  %cmd = alloca %struct.cmd_ds_mesh_config, align 2
  %defs = alloca %struct.mrvl_mesh_defaults, align 1
  %datum = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %cmd) #12
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %defs)
  %0 = call ptr @memset(ptr %defs, i32 255, i32 52)
  %ml_priv = getelementptr i8, ptr %dev, i32 -24
  %1 = ptrtoint ptr %ml_priv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ml_priv, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %datum) #12
  %3 = ptrtoint ptr %datum to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %datum, align 4, !annotation !99
  %4 = getelementptr inbounds i8, ptr %cmd, i32 4
  %5 = call ptr @memset(ptr %4, i32 0, i32 140)
  %call = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.22, ptr noundef nonnull %datum)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %6 = ptrtoint ptr %datum to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %datum, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %7)
  %cmp1 = icmp ugt i32 %7, 255
  br i1 %cmp1, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %8 = ptrtoint ptr %ml_priv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ml_priv, align 8
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %cmd.i) #12
  %10 = getelementptr inbounds i8, ptr %cmd.i, i32 4
  %11 = call ptr @memset(ptr %10, i32 0, i32 140)
  %fwcapinfo.i.i = getelementptr inbounds %struct.lbs_private, ptr %9, i32 0, i32 54
  %12 = ptrtoint ptr %fwcapinfo.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fwcapinfo.i.i, align 4
  %and.i.i = and i32 %13, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.mesh_get_default_parameters.exit_crit_edge, label %lbs_mesh_config_send.exit.i

if.end.mesh_get_default_parameters.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %mesh_get_default_parameters.exit

lbs_mesh_config_send.exit.i:                      ; preds = %if.end
  %mesh_tlv.i.i.i = getelementptr inbounds %struct.lbs_private, ptr %9, i32 0, i32 13
  %14 = ptrtoint ptr %mesh_tlv.i.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %mesh_tlv.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 293, i16 %15)
  %cmp.i.i.i = icmp eq i16 %15, 293
  %spec.store.select.i.i.i = select i1 %cmp.i.i.i, i16 4268, i16 163
  %16 = call i16 @llvm.bswap.i16(i16 %spec.store.select.i.i.i) #12
  %17 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %cmd.i, align 2
  %size.i.i.i = getelementptr inbounds %struct.cmd_header, ptr %cmd.i, i32 0, i32 1
  %type5.i.i.i = getelementptr inbounds %struct.cmd_ds_mesh_config, ptr %cmd.i, i32 0, i32 3
  %18 = ptrtoint ptr %type5.i.i.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 1280, ptr %type5.i.i.i, align 2
  %action6.i.i.i = getelementptr inbounds %struct.cmd_ds_mesh_config, ptr %cmd.i, i32 0, i32 1
  %19 = ptrtoint ptr %action6.i.i.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 768, ptr %action6.i.i.i, align 2
  %20 = ptrtoint ptr %size.i.i.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 -28672, ptr %size.i.i.i, align 2
  %21 = ptrtoint ptr %cmd.i to i32
  %call.i.i.i = call i32 @__lbs_cmd(ptr noundef %9, i16 noundef zeroext %spec.store.select.i.i.i, ptr noundef nonnull %cmd.i, i32 noundef 144, ptr noundef nonnull @lbs_cmd_copyback, i32 noundef %21) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %lbs_mesh_config_send.exit.i.mesh_get_default_parameters.exit_crit_edge

lbs_mesh_config_send.exit.i.mesh_get_default_parameters.exit_crit_edge: ; preds = %lbs_mesh_config_send.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mesh_get_default_parameters.exit

if.end.i:                                         ; preds = %lbs_mesh_config_send.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %data.i = getelementptr inbounds %struct.cmd_ds_mesh_config, ptr %cmd.i, i32 0, i32 5
  %22 = call ptr @memcpy(ptr %defs, ptr %data.i, i32 52)
  br label %mesh_get_default_parameters.exit

mesh_get_default_parameters.exit:                 ; preds = %if.end.i, %lbs_mesh_config_send.exit.i.mesh_get_default_parameters.exit_crit_edge, %if.end.mesh_get_default_parameters.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %cmd.i) #12
  %length = getelementptr inbounds %struct.cmd_ds_mesh_config, ptr %cmd, i32 0, i32 4
  %23 = ptrtoint ptr %length to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 11264, ptr %length, align 2
  %data = getelementptr inbounds %struct.cmd_ds_mesh_config, ptr %cmd, i32 0, i32 5
  %meshie = getelementptr inbounds %struct.mrvl_mesh_defaults, ptr %defs, i32 0, i32 4
  %24 = call ptr @memcpy(ptr %data, ptr %meshie, i32 44)
  %25 = ptrtoint ptr %datum to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %datum, align 4
  %conv = trunc i32 %26 to i8
  %mesh_capability = getelementptr inbounds %struct.cmd_ds_mesh_config, ptr %cmd, i32 0, i32 5, i32 10
  %27 = ptrtoint ptr %mesh_capability to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv, ptr %mesh_capability, align 2
  %fwcapinfo.i = getelementptr inbounds %struct.lbs_private, ptr %2, i32 0, i32 54
  %28 = ptrtoint ptr %fwcapinfo.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %fwcapinfo.i, align 4
  %and.i = and i32 %29, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i17 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i17, label %mesh_get_default_parameters.exit.cleanup_crit_edge, label %lbs_mesh_config_send.exit

mesh_get_default_parameters.exit.cleanup_crit_edge: ; preds = %mesh_get_default_parameters.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lbs_mesh_config_send.exit:                        ; preds = %mesh_get_default_parameters.exit
  %mesh_tlv.i.i = getelementptr inbounds %struct.lbs_private, ptr %2, i32 0, i32 13
  %30 = ptrtoint ptr %mesh_tlv.i.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %mesh_tlv.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 293, i16 %31)
  %cmp.i.i = icmp eq i16 %31, 293
  %spec.store.select.i.i = select i1 %cmp.i.i, i16 4268, i16 163
  %32 = call i16 @llvm.bswap.i16(i16 %spec.store.select.i.i) #12
  %33 = ptrtoint ptr %cmd to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %cmd, align 2
  %size.i.i = getelementptr inbounds %struct.cmd_header, ptr %cmd, i32 0, i32 1
  %result.i.i = getelementptr inbounds %struct.cmd_header, ptr %cmd, i32 0, i32 3
  %34 = ptrtoint ptr %result.i.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 0, ptr %result.i.i, align 2
  %type5.i.i = getelementptr inbounds %struct.cmd_ds_mesh_config, ptr %cmd, i32 0, i32 3
  %35 = ptrtoint ptr %type5.i.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 1024, ptr %type5.i.i, align 2
  %action6.i.i = getelementptr inbounds %struct.cmd_ds_mesh_config, ptr %cmd, i32 0, i32 1
  %36 = ptrtoint ptr %action6.i.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 512, ptr %action6.i.i, align 2
  %37 = ptrtoint ptr %size.i.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 -28672, ptr %size.i.i, align 2
  %38 = ptrtoint ptr %cmd to i32
  %call.i.i = call i32 @__lbs_cmd(ptr noundef %2, i16 noundef zeroext %spec.store.select.i.i, ptr noundef nonnull %cmd, i32 noundef 144, ptr noundef nonnull @lbs_cmd_copyback, i32 noundef %38) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not, label %if.end5, label %lbs_mesh_config_send.exit.cleanup_crit_edge

lbs_mesh_config_send.exit.cleanup_crit_edge:      ; preds = %lbs_mesh_config_send.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %lbs_mesh_config_send.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call6 = call i32 @strlen(ptr noundef %buf) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %lbs_mesh_config_send.exit.cleanup_crit_edge, %mesh_get_default_parameters.exit.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end5 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %call.i.i, %lbs_mesh_config_send.exit.cleanup_crit_edge ], [ -95, %mesh_get_default_parameters.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %datum) #12
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %defs)
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %cmd) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

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
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !13, !15, !17, !18, !19, !20, !22, !24, !25, !26, !28, !30, !31, !32, !34, !36, !38, !40, !41, !43, !44, !46, !48, !50, !52, !54, !55, !57, !59, !60, !62, !63, !65, !67, !69, !71, !72, !74, !75, !76, !77, !78, !79, !81, !82, !84, !85, !87, !88}
!llvm.module.flags = !{!90, !91, !92, !93, !94, !95, !96, !97}
!llvm.ident = !{!98}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/marvell/libertas/mesh.c", i32 867, i32 25}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/marvell/libertas/mesh.c", i32 127, i32 2}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @lbs_mesh_config._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @lbs_mesh_config._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/marvell/libertas/mesh.c", i32 307, i32 8}
!10 = !{ptr @dev_attr_lbs_mesh, !9, !"dev_attr_lbs_mesh", i1 false, i1 false}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/marvell/libertas/mesh.c", i32 273, i32 25}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/marvell/libertas/mesh.c", i32 290, i32 14}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/marvell/libertas/mesh.c", i32 973, i32 3}
!17 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @lbs_add_mesh._entry, !16, !"_entry", i1 false, i1 false}
!19 = !{ptr @lbs_add_mesh._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/marvell/libertas/mesh.c", i32 978, i32 13}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/marvell/libertas/mesh.c", i32 980, i32 3}
!24 = !{ptr @lbs_add_mesh._entry.10, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @lbs_add_mesh._entry_ptr.12, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/marvell/libertas/mesh.c", i32 989, i32 28}
!28 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/marvell/libertas/mesh.c", i32 1013, i32 3}
!30 = !{ptr @lbs_add_mesh._entry.14, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @lbs_add_mesh._entry_ptr.16, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @mesh_netdev_ops, !33, !"mesh_netdev_ops", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/marvell/libertas/mesh.c", i32 950, i32 36}
!34 = !{ptr @lbs_mesh_attr_group, !35, !"lbs_mesh_attr_group", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/marvell/libertas/mesh.c", i32 327, i32 37}
!36 = !{ptr @lbs_mesh_sysfs_entries, !37, !"lbs_mesh_sysfs_entries", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/marvell/libertas/mesh.c", i32 321, i32 26}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/marvell/libertas/mesh.c", i32 313, i32 8}
!40 = !{ptr @dev_attr_anycast_mask, !39, !"dev_attr_anycast_mask", i1 false, i1 false}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/wireless/marvell/libertas/mesh.c", i32 319, i32 8}
!43 = !{ptr @dev_attr_prb_rsp_limit, !42, !"dev_attr_prb_rsp_limit", i1 false, i1 false}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/marvell/libertas/mesh.c", i32 225, i32 25}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/marvell/libertas/mesh.c", i32 794, i32 10}
!48 = !{ptr @boot_opts_group, !49, !"boot_opts_group", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/marvell/libertas/mesh.c", i32 793, i32 37}
!50 = !{ptr @boot_opts_attrs, !51, !"boot_opts_attrs", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/marvell/libertas/mesh.c", i32 786, i32 26}
!52 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/marvell/libertas/mesh.c", i32 778, i32 8}
!54 = !{ptr @dev_attr_bootflag, !53, !"dev_attr_bootflag", i1 false, i1 false}
!55 = !{ptr @.str.22, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/wireless/marvell/libertas/mesh.c", i32 391, i32 20}
!57 = !{ptr @.str.23, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/wireless/marvell/libertas/mesh.c", i32 779, i32 8}
!59 = !{ptr @dev_attr_boottime, !58, !"dev_attr_boottime", i1 false, i1 false}
!60 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/marvell/libertas/mesh.c", i32 780, i32 8}
!62 = !{ptr @dev_attr_channel, !61, !"dev_attr_channel", i1 false, i1 false}
!63 = !{ptr @.str.25, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/wireless/marvell/libertas/mesh.c", i32 807, i32 10}
!65 = !{ptr @mesh_ie_group, !66, !"mesh_ie_group", i1 false, i1 false}
!66 = !{!"../drivers/net/wireless/marvell/libertas/mesh.c", i32 806, i32 37}
!67 = !{ptr @mesh_ie_attrs, !68, !"mesh_ie_attrs", i1 false, i1 false}
!68 = !{!"../drivers/net/wireless/marvell/libertas/mesh.c", i32 798, i32 26}
!69 = !{ptr @.str.26, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/wireless/marvell/libertas/mesh.c", i32 781, i32 8}
!71 = !{ptr @dev_attr_mesh_id, !70, !"dev_attr_mesh_id", i1 false, i1 false}
!72 = !{ptr @.str.27, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/marvell/libertas/mesh.c", i32 533, i32 3}
!74 = !{ptr @.str.28, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.29, !73, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.30, !73, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @mesh_id_show._entry, !73, !"_entry", i1 false, i1 false}
!78 = !{ptr @mesh_id_show._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.31, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/wireless/marvell/libertas/mesh.c", i32 782, i32 8}
!81 = !{ptr @dev_attr_protocol_id, !80, !"dev_attr_protocol_id", i1 false, i1 false}
!82 = !{ptr @.str.32, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/wireless/marvell/libertas/mesh.c", i32 783, i32 8}
!84 = !{ptr @dev_attr_metric_id, !83, !"dev_attr_metric_id", i1 false, i1 false}
!85 = !{ptr @.str.33, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/wireless/marvell/libertas/mesh.c", i32 784, i32 8}
!87 = !{ptr @dev_attr_capability, !86, !"dev_attr_capability", i1 false, i1 false}
!88 = !{ptr @mesh_stat_strings, !89, !"mesh_stat_strings", i1 false, i1 false}
!89 = !{!"../drivers/net/wireless/marvell/libertas/mesh.c", i32 1083, i32 19}
!90 = !{i32 1, !"wchar_size", i32 2}
!91 = !{i32 1, !"min_enum_size", i32 4}
!92 = !{i32 8, !"branch-target-enforcement", i32 0}
!93 = !{i32 8, !"sign-return-address", i32 0}
!94 = !{i32 8, !"sign-return-address-all", i32 0}
!95 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!96 = !{i32 7, !"uwtable", i32 1}
!97 = !{i32 7, !"frame-pointer", i32 2}
!98 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!99 = !{!"auto-init"}
!100 = !{i8 0, i8 2}
