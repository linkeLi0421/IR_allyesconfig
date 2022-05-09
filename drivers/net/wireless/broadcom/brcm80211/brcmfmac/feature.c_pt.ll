; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/broadcom/brcm80211/brcmfmac/feature.c_pt.bc'
source_filename = "../drivers/net/wireless/broadcom/brcm80211/brcmfmac/feature.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.brcmf_feat_fwcap = type { i32, ptr }
%struct.brcmf_feat_fwfeat = type { ptr, i32 }
%struct.brcmf_pno_macaddr_le = type { i8, i8, [6 x i8] }
%struct.brcmf_gscan_config = type { i16, i8, i8, i8, i8, i8, i8, i16, [1 x %struct.brcmf_gscan_bucket_config] }
%struct.brcmf_gscan_bucket_config = type { i8, i8, i8, i8, i16, i16 }
%struct.brcmf_pub = type { ptr, ptr, ptr, ptr, ptr, i32, [32 x i8], [6 x i8], [16 x %struct.mac_address], [16 x ptr], [16 x i32], ptr, %struct.mutex, [8192 x i8], %struct.brcmf_fweh_info, [256 x ptr], i32, i32, %struct.brcmf_rev_info, ptr, %struct.notifier_block, %struct.notifier_block, ptr, %struct.work_struct, [256 x i8] }
%struct.mac_address = type { [6 x i8] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.brcmf_fweh_info = type { i8, %struct.work_struct, %struct.spinlock, %struct.list_head, [139 x ptr] }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.brcmf_rev_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [12 x i8], i32, i32, i32, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.124, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.possible_net_t = type { ptr }
%struct.anon.124 = type { i64, i64, i8 }
%struct.brcmf_bus = type { %union.anon, i32, ptr, ptr, i32, %struct.brcmf_bus_stats, i32, i32, i32, i8, i8, ptr, ptr }
%union.anon = type { ptr }
%struct.brcmf_bus_stats = type { %struct.atomic_t, %struct.atomic_t }
%struct.brcmf_if = type { ptr, ptr, ptr, %struct.work_struct, %struct.work_struct, ptr, i32, i32, [6 x i8], i8, %struct.spinlock, %struct.atomic_t, %struct.wait_queue_head, [8 x %struct.in6_addr], i8, i8 }
%struct.in6_addr = type { %union.anon.43 }
%union.anon.43 = type { [4 x i32] }
%struct.brcmf_mp_device = type { i8, i32, i32, i8, i8, i8, ptr, ptr, %union.anon.127 }
%union.anon.127 = type { %struct.brcmfmac_sdio_pd }
%struct.brcmfmac_sdio_pd = type { i32, i32, i8, i32, i32, i8, i16, i16, ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }

@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pfn_gscan_cfg\00", [18 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pfn\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"wowl\00", [27 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"wowl_cap\00", [23 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rsdb_mode\00", [22 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"tdls_enable\00", [20 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mfp\00", [28 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pfn_macaddr\00", [20 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sup_wpa\00", [24 x i8] zeroinitializer }, align 32
@__func__.brcmf_feat_attach = private unnamed_addr constant [18 x i8] c"brcmf_feat_attach\00", align 1
@.str.9 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Features: 0x%02x, disable: 0x%02x\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"features\00", [23 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"fwcap\00", [26 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cap\00", [28 x i8] zeroinitializer }, align 32
@brcmf_feat_firmware_capabilities._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.15, i32 188, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: could not get firmware cap (%d)\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"brcmf_feat_firmware_capabilities\00", [63 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"drivers/net/wireless/broadcom/brcm80211/brcmfmac/feature.c\00", [37 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@brcmf_feat_firmware_capabilities._entry_ptr = internal global ptr @brcmf_feat_firmware_capabilities._entry, section ".printk_index", align 4
@.str.18 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"[ %s]\0A\00", [25 x i8] zeroinitializer }, align 32
@brcmf_fwcap_map = internal constant { [9 x %struct.brcmf_feat_fwcap], [56 x i8] } { [9 x %struct.brcmf_feat_fwcap] [%struct.brcmf_feat_fwcap { i32 0, ptr @.str.20 }, %struct.brcmf_feat_fwcap { i32 1, ptr @.str.21 }, %struct.brcmf_feat_fwcap { i32 4, ptr @.str.22 }, %struct.brcmf_feat_fwcap { i32 14, ptr @.str.23 }, %struct.brcmf_feat_fwcap { i32 15, ptr @.str.24 }, %struct.brcmf_feat_fwcap { i32 16, ptr @.str.24 }, %struct.brcmf_feat_fwcap { i32 18, ptr @.str.25 }, %struct.brcmf_feat_fwcap { i32 19, ptr @.str.26 }, %struct.brcmf_feat_fwcap { i32 20, ptr @.str.27 }], [56 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"enabling feature: %s\0A\00", [42 x i8] zeroinitializer }, align 32
@brcmf_feat_names = internal constant { [21 x ptr], [44 x i8] } { [21 x ptr] [ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48], [44 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mbss\00", [27 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mchan\00", [26 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"p2p\00", [28 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"monitor\00", [24 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rtap\00", [27 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"802.11h\00", [24 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sae\00", [28 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"idauth\00", [25 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MBSS\00", [27 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MCHAN\00", [26 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PNO\00", [28 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"WOWL\00", [27 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"P2P\00", [28 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"RSDB\00", [27 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"TDLS\00", [27 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"SCAN_RANDOM_MAC\00", [16 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"WOWL_ND\00", [24 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"WOWL_GTK\00", [23 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"WOWL_ARP_ND\00", [20 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"MFP\00", [28 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"GSCAN\00", [26 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"FWSUP\00", [26 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MONITOR\00", [24 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"MONITOR_FLAG\00", [19 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"MONITOR_FMT_RADIOTAP\00", [43 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"MONITOR_FMT_HW_RX_HDR\00", [42 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DOT11H\00", [25 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SAE\00", [28 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"FWAUTH\00", [25 x i8] zeroinitializer }, align 32
@__func__.brcmf_feat_iovar_data_set = private unnamed_addr constant [26 x i8] c"brcmf_feat_iovar_data_set\00", align 1
@.str.49 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s feature check failed: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@__func__.brcmf_feat_iovar_int_get = private unnamed_addr constant [25 x i8] c"brcmf_feat_iovar_int_get\00", align 1
@brcmf_feat_fwfeat_map = internal constant { [4 x %struct.brcmf_feat_fwfeat], [32 x i8] } { [4 x %struct.brcmf_feat_fwfeat] [%struct.brcmf_feat_fwfeat { ptr @.str.51, i32 16384 }, %struct.brcmf_feat_fwfeat { ptr @.str.52, i32 16384 }, %struct.brcmf_feat_fwfeat { ptr @.str.53, i32 131072 }, %struct.brcmf_feat_fwfeat { ptr @.str.54, i32 131072 }], [32 x i8] zeroinitializer }, align 32
@__func__.brcmf_feat_firmware_overrides = private unnamed_addr constant [30 x i8] c"brcmf_feat_firmware_overrides\00", align 1
@.str.50 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"enabling firmware feature: %s\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"01-6cb8e269\00", [20 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"01-c47a91a4\00", [20 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"01-801fb449\00", [20 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"01-d2cbb8fd\00", [20 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Features: %08x\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\09%s\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\0AQuirks:   %08x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"AUTO_AUTH\00", [22 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"NEED_MPC\00", [23 x i8] zeroinitializer }, align 32
@brcmf_feat_fwcap_debugfs_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.60, ptr @.str.15, i32 221, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"brcmf_feat_fwcap_debugfs_read\00", [34 x i8] zeroinitializer }, align 32
@brcmf_feat_fwcap_debugfs_read._entry_ptr = internal global ptr @brcmf_feat_fwcap_debugfs_read._entry, section ".printk_index", align 4
@.str.61 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 17221, i64 43430]
@__sancov_gen_cov_switch_values.63 = internal global [4 x i64] [i64 2, i64 32, i64 17200, i64 43362]
@__sancov_gen_cov_switch_values.64 = internal global [4 x i64] [i64 2, i64 32, i64 17193, i64 43236]
@__sancov_gen_cov_switch_values.65 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 32]
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 253, i32 8 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 255, i32 48 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 257, i32 50 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 259, i32 38 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 279, i32 49 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 280, i32 49 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 281, i32 48 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 284, i32 38 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 289, i32 50 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 292, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 316, i32 32 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 317, i32 32 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 186, i32 38 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 188, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 192, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant [16 x i8] c"brcmf_fwcap_map\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 36, i32 38 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 197, i32 4 }
@___asan_gen_.132 = private unnamed_addr constant [17 x i8] c"brcmf_feat_names\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 26, i32 20 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 37, i32 21 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 38, i32 22 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 39, i32 20 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 40, i32 24 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 41, i32 29 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 43, i32 23 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 44, i32 20 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 45, i32 23 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 27, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 171, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant [22 x i8] c"brcmf_feat_fwfeat_map\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 94, i32 39 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 124, i32 4 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 96, i32 4 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 98, i32 4 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 100, i32 4 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 102, i32 4 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 72, i32 18 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 75, i32 20 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 76, i32 18 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 55, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 221, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 232, i32 18 }
@___asan_gen_.267 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.268 = private constant [62 x i8] c"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/feature.c\00", align 1
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 235, i32 19 }
@llvm.compiler.used = appending global [70 x ptr] [ptr @brcmf_feat_firmware_capabilities._entry, ptr @brcmf_feat_firmware_capabilities._entry_ptr, ptr @brcmf_feat_fwcap_debugfs_read._entry, ptr @brcmf_feat_fwcap_debugfs_read._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @brcmf_fwcap_map, ptr @.str.19, ptr @brcmf_feat_names, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @brcmf_feat_fwfeat_map, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62], section "llvm.metadata"
@0 = internal global [68 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_feat_firmware_capabilities._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_fwcap_map to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_feat_names to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_feat_fwfeat_map to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_feat_fwcap_debugfs_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @brcmf_feat_attach(ptr noundef %drvr) local_unnamed_addr #0 align 64 {
entry:
  %data.i137 = alloca i32, align 4
  %data.i128 = alloca i32, align 4
  %data.i119 = alloca i32, align 4
  %data.i110 = alloca i32, align 4
  %data.i100 = alloca i32, align 4
  %data.i = alloca i32, align 4
  %caps.i = alloca [768 x i8], align 1
  %pfn_mac = alloca %struct.brcmf_pno_macaddr_le, align 8
  %gscan_cfg = alloca %struct.brcmf_gscan_config, align 2
  %wowl_cap = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @brcmf_get_ifp(ptr noundef %drvr, i32 noundef 0) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pfn_mac) #6
  %0 = ptrtoint ptr %pfn_mac to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %pfn_mac, align 8
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %gscan_cfg) #6
  %1 = call ptr @memset(ptr %gscan_cfg, i32 255, i32 18)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wowl_cap) #6
  %2 = ptrtoint ptr %wowl_cap to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %wowl_cap, align 4, !annotation !128
  %3 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %call, align 4
  call void @llvm.lifetime.start.p0(i64 768, ptr nonnull %caps.i) #6
  %5 = call ptr @memset(ptr %caps.i, i32 255, i32 768)
  %call.i = call i32 @brcmf_fil_iovar_data_get(ptr noundef %call, ptr noundef nonnull @.str.12, ptr noundef nonnull %caps.i, i32 noundef 768) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %do.body5.i, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %wiphy.i = getelementptr inbounds %struct.brcmf_pub, ptr %4, i32 0, i32 2
  %6 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wiphy.i, align 4
  %dev.i = getelementptr inbounds %struct.wiphy, ptr %7, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef %call.i) #9
  br label %brcmf_feat_firmware_capabilities.exit

do.body5.i:                                       ; preds = %entry
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 4, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.18, ptr noundef nonnull %caps.i) #6
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.body5.i
  %i.031.i = phi i32 [ 0, %do.body5.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %fwcap_id.i = getelementptr [9 x %struct.brcmf_feat_fwcap], ptr @brcmf_fwcap_map, i32 0, i32 %i.031.i, i32 1
  %8 = ptrtoint ptr %fwcap_id.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fwcap_id.i, align 4
  %call10.i = call ptr @strnstr(ptr noundef nonnull %caps.i, ptr noundef %9, i32 noundef 768) #6
  %tobool11.not.i = icmp eq ptr %call10.i, null
  br i1 %tobool11.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then12.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.then12.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i = getelementptr [9 x %struct.brcmf_feat_fwcap], ptr @brcmf_fwcap_map, i32 0, i32 %i.031.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i, align 4
  %arrayidx15.i = getelementptr [21 x ptr], ptr @brcmf_feat_names, i32 0, i32 %11
  %12 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx15.i, align 4
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 4, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.19, ptr noundef %13) #6
  %shl.i = shl nuw i32 1, %11
  %14 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %call, align 4
  %feat_flags.i = getelementptr inbounds %struct.brcmf_pub, ptr %15, i32 0, i32 16
  %16 = ptrtoint ptr %feat_flags.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %feat_flags.i, align 4
  %or.i = or i32 %17, %shl.i
  store i32 %or.i, ptr %feat_flags.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then12.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.031.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 9
  br i1 %exitcond.not.i, label %for.inc.i.brcmf_feat_firmware_capabilities.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.brcmf_feat_firmware_capabilities.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %brcmf_feat_firmware_capabilities.exit

brcmf_feat_firmware_capabilities.exit:            ; preds = %for.inc.i.brcmf_feat_firmware_capabilities.exit_crit_edge, %do.end.i
  call void @llvm.lifetime.end.p0(i64 768, ptr nonnull %caps.i) #6
  %18 = call ptr @memset(ptr %gscan_cfg, i32 0, i32 18)
  %19 = ptrtoint ptr %drvr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %drvr, align 4
  %chip = getelementptr inbounds %struct.brcmf_bus, ptr %20, i32 0, i32 7
  %21 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %chip, align 4
  %23 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values)
  switch i32 %22, label %if.then [
    i32 43430, label %brcmf_feat_firmware_capabilities.exit.if.end_crit_edge
    i32 17221, label %brcmf_feat_firmware_capabilities.exit.if.end_crit_edge156
  ]

brcmf_feat_firmware_capabilities.exit.if.end_crit_edge156: ; preds = %brcmf_feat_firmware_capabilities.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

brcmf_feat_firmware_capabilities.exit.if.end_crit_edge: ; preds = %brcmf_feat_firmware_capabilities.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %brcmf_feat_firmware_capabilities.exit
  %fwil_fwerr.i = getelementptr inbounds %struct.brcmf_if, ptr %call, i32 0, i32 15
  %24 = ptrtoint ptr %fwil_fwerr.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %fwil_fwerr.i, align 1
  %call.i91 = call i32 @brcmf_fil_iovar_data_set(ptr noundef %call, ptr noundef nonnull @.str, ptr noundef nonnull %gscan_cfg, i32 noundef 18) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -23, i32 %call.i91)
  %cmp.not.i = icmp eq i32 %call.i91, -23
  br i1 %cmp.not.i, label %do.body1.i, label %do.body.i

do.body.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 4, ptr noundef nonnull @__func__.brcmf_feat_iovar_data_set, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.40) #6
  %25 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %call, align 4
  %feat_flags.i92 = getelementptr inbounds %struct.brcmf_pub, ptr %26, i32 0, i32 16
  %27 = ptrtoint ptr %feat_flags.i92 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %feat_flags.i92, align 4
  %or.i93 = or i32 %28, 4096
  store i32 %or.i93, ptr %feat_flags.i92, align 4
  br label %if.end

do.body1.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_feat_iovar_data_set, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.40, i32 noundef -23) #6
  br label %if.end

if.end:                                           ; preds = %do.body1.i, %do.body.i, %brcmf_feat_firmware_capabilities.exit.if.end_crit_edge, %brcmf_feat_firmware_capabilities.exit.if.end_crit_edge156
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i) #6
  %29 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -1, ptr %data.i, align 4, !annotation !128
  %fwil_fwerr.i94 = getelementptr inbounds %struct.brcmf_if, ptr %call, i32 0, i32 15
  %30 = ptrtoint ptr %fwil_fwerr.i94 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %fwil_fwerr.i94, align 1
  %call.i95 = call i32 @brcmf_fil_iovar_int_get(ptr noundef %call, ptr noundef nonnull @.str.1, ptr noundef nonnull %data.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i95)
  %cmp.i = icmp eq i32 %call.i95, 0
  br i1 %cmp.i, label %do.body.i98, label %do.body1.i99

do.body.i98:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 4, ptr noundef nonnull @__func__.brcmf_feat_iovar_int_get, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.30) #6
  %31 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %call, align 4
  %feat_flags.i96 = getelementptr inbounds %struct.brcmf_pub, ptr %32, i32 0, i32 16
  %33 = ptrtoint ptr %feat_flags.i96 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %feat_flags.i96, align 4
  %or.i97 = or i32 %34, 4
  store i32 %or.i97, ptr %feat_flags.i96, align 4
  br label %brcmf_feat_iovar_int_get.exit

do.body1.i99:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_feat_iovar_int_get, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.30, i32 noundef %call.i95) #6
  br label %brcmf_feat_iovar_int_get.exit

brcmf_feat_iovar_int_get.exit:                    ; preds = %do.body1.i99, %do.body.i98
  %35 = ptrtoint ptr %fwil_fwerr.i94 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %fwil_fwerr.i94, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i) #6
  %36 = ptrtoint ptr %drvr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %drvr, align 4
  %wowl_supported = getelementptr inbounds %struct.brcmf_bus, ptr %37, i32 0, i32 10
  %38 = ptrtoint ptr %wowl_supported to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %wowl_supported, align 1, !range !129
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool.not = icmp eq i8 %39, 0
  br i1 %tobool.not, label %brcmf_feat_iovar_int_get.exit.if.end6_crit_edge, label %if.then5

brcmf_feat_iovar_int_get.exit.if.end6_crit_edge:  ; preds = %brcmf_feat_iovar_int_get.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then5:                                         ; preds = %brcmf_feat_iovar_int_get.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i100) #6
  %40 = ptrtoint ptr %data.i100 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 -1, ptr %data.i100, align 4, !annotation !128
  %41 = ptrtoint ptr %fwil_fwerr.i94 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 1, ptr %fwil_fwerr.i94, align 1
  %call.i102 = call i32 @brcmf_fil_iovar_int_get(ptr noundef %call, ptr noundef nonnull @.str.2, ptr noundef nonnull %data.i100) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i102)
  %cmp.i103 = icmp eq i32 %call.i102, 0
  br i1 %cmp.i103, label %do.body.i106, label %do.body1.i107

do.body.i106:                                     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 4, ptr noundef nonnull @__func__.brcmf_feat_iovar_int_get, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.31) #6
  %42 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %call, align 4
  %feat_flags.i104 = getelementptr inbounds %struct.brcmf_pub, ptr %43, i32 0, i32 16
  %44 = ptrtoint ptr %feat_flags.i104 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %feat_flags.i104, align 4
  %or.i105 = or i32 %45, 8
  store i32 %or.i105, ptr %feat_flags.i104, align 4
  br label %brcmf_feat_iovar_int_get.exit108

do.body1.i107:                                    ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_feat_iovar_int_get, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.31, i32 noundef %call.i102) #6
  br label %brcmf_feat_iovar_int_get.exit108

brcmf_feat_iovar_int_get.exit108:                 ; preds = %do.body1.i107, %do.body.i106
  %46 = ptrtoint ptr %fwil_fwerr.i94 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %fwil_fwerr.i94, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i100) #6
  br label %if.end6

if.end6:                                          ; preds = %brcmf_feat_iovar_int_get.exit108, %brcmf_feat_iovar_int_get.exit.if.end6_crit_edge
  %47 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %call, align 4
  %feat_flags.i109 = getelementptr inbounds %struct.brcmf_pub, ptr %48, i32 0, i32 16
  %49 = ptrtoint ptr %feat_flags.i109 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %feat_flags.i109, align 4
  %and.i = and i32 %50, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end6.if.end27_crit_edge, label %if.then8

if.end6.if.end27_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

if.then8:                                         ; preds = %if.end6
  %call9 = call i32 @brcmf_fil_iovar_int_get(ptr noundef %call, ptr noundef nonnull @.str.3, ptr noundef nonnull %wowl_cap) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then11, label %if.then8.if.end27_crit_edge

if.then8.if.end27_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

if.then11:                                        ; preds = %if.then8
  %51 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %call, align 4
  %feat_flags = getelementptr inbounds %struct.brcmf_pub, ptr %52, i32 0, i32 16
  %53 = ptrtoint ptr %feat_flags to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %feat_flags, align 4
  %or = or i32 %54, 1024
  store i32 %or, ptr %feat_flags, align 4
  %55 = ptrtoint ptr %wowl_cap to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %wowl_cap, align 4
  %and = and i32 %56, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %if.then11.if.end18_crit_edge, label %if.then14

if.then11.if.end18_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.then14:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  %57 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %call, align 4
  %feat_flags16 = getelementptr inbounds %struct.brcmf_pub, ptr %58, i32 0, i32 16
  %59 = ptrtoint ptr %feat_flags16 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %feat_flags16, align 4
  %or17 = or i32 %60, 256
  store i32 %or17, ptr %feat_flags16, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then14, %if.then11.if.end18_crit_edge
  %and19 = and i32 %56, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.end18.if.end27_crit_edge, label %if.then21

if.end18.if.end27_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  %61 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %call, align 4
  %feat_flags23 = getelementptr inbounds %struct.brcmf_pub, ptr %62, i32 0, i32 16
  %63 = ptrtoint ptr %feat_flags23 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %feat_flags23, align 4
  %or24 = or i32 %64, 512
  store i32 %or24, ptr %feat_flags23, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then21, %if.end18.if.end27_crit_edge, %if.then8.if.end27_crit_edge, %if.end6.if.end27_crit_edge
  %65 = ptrtoint ptr %drvr to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %drvr, align 4
  %chip29 = getelementptr inbounds %struct.brcmf_bus, ptr %66, i32 0, i32 7
  %67 = ptrtoint ptr %chip29 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %chip29, align 4
  %69 = zext i32 %68 to i64
  call void @__sanitizer_cov_trace_switch(i64 %69, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %68, label %if.end27.sw.epilog_crit_edge [
    i32 17200, label %if.end27.sw.bb_crit_edge
    i32 43362, label %if.end27.sw.bb_crit_edge157
  ]

if.end27.sw.bb_crit_edge157:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end27.sw.bb_crit_edge:                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end27.sw.epilog_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end27.sw.bb_crit_edge, %if.end27.sw.bb_crit_edge157
  %70 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %call, align 4
  %feat_flags31 = getelementptr inbounds %struct.brcmf_pub, ptr %71, i32 0, i32 16
  %72 = ptrtoint ptr %feat_flags31 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %feat_flags31, align 4
  %and32 = and i32 %73, -2
  store i32 %and32, ptr %feat_flags31, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %if.end27.sw.epilog_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i110) #6
  %74 = ptrtoint ptr %data.i110 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 -1, ptr %data.i110, align 4, !annotation !128
  %75 = ptrtoint ptr %fwil_fwerr.i94 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 1, ptr %fwil_fwerr.i94, align 1
  %call.i112 = call i32 @brcmf_fil_iovar_int_get(ptr noundef %call, ptr noundef nonnull @.str.4, ptr noundef nonnull %data.i110) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i112)
  %cmp.i113 = icmp eq i32 %call.i112, 0
  br i1 %cmp.i113, label %do.body.i116, label %do.body1.i117

do.body.i116:                                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 4, ptr noundef nonnull @__func__.brcmf_feat_iovar_int_get, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.33) #6
  %76 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %call, align 4
  %feat_flags.i114 = getelementptr inbounds %struct.brcmf_pub, ptr %77, i32 0, i32 16
  %78 = ptrtoint ptr %feat_flags.i114 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %feat_flags.i114, align 4
  %or.i115 = or i32 %79, 32
  store i32 %or.i115, ptr %feat_flags.i114, align 4
  br label %brcmf_feat_iovar_int_get.exit118

do.body1.i117:                                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_feat_iovar_int_get, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.33, i32 noundef %call.i112) #6
  br label %brcmf_feat_iovar_int_get.exit118

brcmf_feat_iovar_int_get.exit118:                 ; preds = %do.body1.i117, %do.body.i116
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i110) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i119) #6
  %80 = ptrtoint ptr %data.i119 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 -1, ptr %data.i119, align 4, !annotation !128
  %81 = ptrtoint ptr %fwil_fwerr.i94 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 1, ptr %fwil_fwerr.i94, align 1
  %call.i121 = call i32 @brcmf_fil_iovar_int_get(ptr noundef %call, ptr noundef nonnull @.str.5, ptr noundef nonnull %data.i119) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i121)
  %cmp.i122 = icmp eq i32 %call.i121, 0
  br i1 %cmp.i122, label %do.body.i125, label %do.body1.i126

do.body.i125:                                     ; preds = %brcmf_feat_iovar_int_get.exit118
  call void @__sanitizer_cov_trace_pc() #8
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 4, ptr noundef nonnull @__func__.brcmf_feat_iovar_int_get, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.34) #6
  %82 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %call, align 4
  %feat_flags.i123 = getelementptr inbounds %struct.brcmf_pub, ptr %83, i32 0, i32 16
  %84 = ptrtoint ptr %feat_flags.i123 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %feat_flags.i123, align 4
  %or.i124 = or i32 %85, 64
  store i32 %or.i124, ptr %feat_flags.i123, align 4
  br label %brcmf_feat_iovar_int_get.exit127

do.body1.i126:                                    ; preds = %brcmf_feat_iovar_int_get.exit118
  call void @__sanitizer_cov_trace_pc() #8
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_feat_iovar_int_get, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.34, i32 noundef %call.i121) #6
  br label %brcmf_feat_iovar_int_get.exit127

brcmf_feat_iovar_int_get.exit127:                 ; preds = %do.body1.i126, %do.body.i125
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i119) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i128) #6
  %86 = ptrtoint ptr %data.i128 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 -1, ptr %data.i128, align 4, !annotation !128
  %87 = ptrtoint ptr %fwil_fwerr.i94 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 1, ptr %fwil_fwerr.i94, align 1
  %call.i130 = call i32 @brcmf_fil_iovar_int_get(ptr noundef %call, ptr noundef nonnull @.str.6, ptr noundef nonnull %data.i128) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i130)
  %cmp.i131 = icmp eq i32 %call.i130, 0
  br i1 %cmp.i131, label %do.body.i134, label %do.body1.i135

do.body.i134:                                     ; preds = %brcmf_feat_iovar_int_get.exit127
  call void @__sanitizer_cov_trace_pc() #8
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 4, ptr noundef nonnull @__func__.brcmf_feat_iovar_int_get, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.39) #6
  %88 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %call, align 4
  %feat_flags.i132 = getelementptr inbounds %struct.brcmf_pub, ptr %89, i32 0, i32 16
  %90 = ptrtoint ptr %feat_flags.i132 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %feat_flags.i132, align 4
  %or.i133 = or i32 %91, 2048
  store i32 %or.i133, ptr %feat_flags.i132, align 4
  br label %brcmf_feat_iovar_int_get.exit136

do.body1.i135:                                    ; preds = %brcmf_feat_iovar_int_get.exit127
  call void @__sanitizer_cov_trace_pc() #8
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_feat_iovar_int_get, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.39, i32 noundef %call.i130) #6
  br label %brcmf_feat_iovar_int_get.exit136

brcmf_feat_iovar_int_get.exit136:                 ; preds = %do.body1.i135, %do.body.i134
  %92 = ptrtoint ptr %fwil_fwerr.i94 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 0, ptr %fwil_fwerr.i94, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i128) #6
  %93 = ptrtoint ptr %pfn_mac to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 1, ptr %pfn_mac, align 8
  %call33 = call i32 @brcmf_fil_iovar_data_get(ptr noundef %call, ptr noundef nonnull @.str.7, ptr noundef nonnull %pfn_mac, i32 noundef 8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.then35, label %brcmf_feat_iovar_int_get.exit136.if.end39_crit_edge

brcmf_feat_iovar_int_get.exit136.if.end39_crit_edge: ; preds = %brcmf_feat_iovar_int_get.exit136
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

if.then35:                                        ; preds = %brcmf_feat_iovar_int_get.exit136
  call void @__sanitizer_cov_trace_pc() #8
  %94 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %call, align 4
  %feat_flags37 = getelementptr inbounds %struct.brcmf_pub, ptr %95, i32 0, i32 16
  %96 = ptrtoint ptr %feat_flags37 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %feat_flags37, align 4
  %or38 = or i32 %97, 128
  store i32 %or38, ptr %feat_flags37, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then35, %brcmf_feat_iovar_int_get.exit136.if.end39_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i137) #6
  %98 = ptrtoint ptr %data.i137 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 -1, ptr %data.i137, align 4, !annotation !128
  %99 = ptrtoint ptr %fwil_fwerr.i94 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 1, ptr %fwil_fwerr.i94, align 1
  %call.i139 = call i32 @brcmf_fil_iovar_int_get(ptr noundef %call, ptr noundef nonnull @.str.8, ptr noundef nonnull %data.i137) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i139)
  %cmp.i140 = icmp eq i32 %call.i139, 0
  br i1 %cmp.i140, label %do.body.i143, label %do.body1.i144

do.body.i143:                                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 4, ptr noundef nonnull @__func__.brcmf_feat_iovar_int_get, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.41) #6
  %100 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %call, align 4
  %feat_flags.i141 = getelementptr inbounds %struct.brcmf_pub, ptr %101, i32 0, i32 16
  %102 = ptrtoint ptr %feat_flags.i141 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %feat_flags.i141, align 4
  %or.i142 = or i32 %103, 8192
  store i32 %or.i142, ptr %feat_flags.i141, align 4
  br label %brcmf_feat_iovar_int_get.exit145

do.body1.i144:                                    ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_feat_iovar_int_get, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.41, i32 noundef %call.i139) #6
  br label %brcmf_feat_iovar_int_get.exit145

brcmf_feat_iovar_int_get.exit145:                 ; preds = %do.body1.i144, %do.body.i143
  %104 = ptrtoint ptr %fwil_fwerr.i94 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 0, ptr %fwil_fwerr.i94, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i137) #6
  %settings = getelementptr inbounds %struct.brcmf_pub, ptr %drvr, i32 0, i32 22
  %105 = ptrtoint ptr %settings to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %settings, align 4
  %feature_disable = getelementptr inbounds %struct.brcmf_mp_device, ptr %106, i32 0, i32 1
  %107 = ptrtoint ptr %feature_disable to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %feature_disable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %tobool40.not = icmp eq i32 %108, 0
  br i1 %tobool40.not, label %brcmf_feat_iovar_int_get.exit145.if.end51_crit_edge, label %do.body

brcmf_feat_iovar_int_get.exit145.if.end51_crit_edge: ; preds = %brcmf_feat_iovar_int_get.exit145
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end51

do.body:                                          ; preds = %brcmf_feat_iovar_int_get.exit145
  call void @__sanitizer_cov_trace_pc() #8
  %109 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %call, align 4
  %feat_flags43 = getelementptr inbounds %struct.brcmf_pub, ptr %110, i32 0, i32 16
  %111 = ptrtoint ptr %feat_flags43 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %feat_flags43, align 4
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 4, ptr noundef nonnull @__func__.brcmf_feat_attach, ptr noundef nonnull @.str.9, i32 noundef %112, i32 noundef %108) #6
  %113 = ptrtoint ptr %settings to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %settings, align 4
  %feature_disable47 = getelementptr inbounds %struct.brcmf_mp_device, ptr %114, i32 0, i32 1
  %115 = ptrtoint ptr %feature_disable47 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %feature_disable47, align 4
  %neg = xor i32 %116, -1
  %117 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %call, align 4
  %feat_flags49 = getelementptr inbounds %struct.brcmf_pub, ptr %118, i32 0, i32 16
  %119 = ptrtoint ptr %feat_flags49 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %feat_flags49, align 4
  %and50 = and i32 %120, %neg
  store i32 %and50, ptr %feat_flags49, align 4
  br label %if.end51

if.end51:                                         ; preds = %do.body, %brcmf_feat_iovar_int_get.exit145.if.end51_crit_edge
  %fwver.i = getelementptr inbounds %struct.brcmf_pub, ptr %drvr, i32 0, i32 6
  %call.i146 = call i32 @strcmp(ptr noundef nonnull dereferenceable(12) @.str.51, ptr noundef %fwver.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i146)
  %tobool.not.i147 = icmp eq i32 %call.i146, 0
  br i1 %tobool.not.i147, label %if.end51.for.end.i_crit_edge, label %for.inc.i148

if.end51.for.end.i_crit_edge:                     ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.inc.i148:                                     ; preds = %if.end51
  %call.1.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(12) @.str.52, ptr noundef %fwver.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %tobool.not.1.i = icmp eq i32 %call.1.i, 0
  br i1 %tobool.not.1.i, label %for.inc.i148.for.end.i_crit_edge, label %for.inc.1.i

for.inc.i148.for.end.i_crit_edge:                 ; preds = %for.inc.i148
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.inc.1.i:                                      ; preds = %for.inc.i148
  %call.2.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(12) @.str.53, ptr noundef %fwver.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i)
  %tobool.not.2.i = icmp eq i32 %call.2.i, 0
  br i1 %tobool.not.2.i, label %for.inc.1.i.for.end.i_crit_edge, label %for.inc.2.i

for.inc.1.i.for.end.i_crit_edge:                  ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %call.3.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(12) @.str.54, ptr noundef %fwver.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3.i)
  %tobool.not.3.i = icmp eq i32 %call.3.i, 0
  br i1 %tobool.not.3.i, label %for.inc.2.i.for.end.i_crit_edge, label %for.inc.2.i.brcmf_feat_firmware_overrides.exit_crit_edge

for.inc.2.i.brcmf_feat_firmware_overrides.exit_crit_edge: ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %brcmf_feat_firmware_overrides.exit

for.inc.2.i.for.end.i_crit_edge:                  ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.2.i.for.end.i_crit_edge, %for.inc.1.i.for.end.i_crit_edge, %for.inc.i148.for.end.i_crit_edge, %if.end51.for.end.i_crit_edge
  %i.031.lcssa.i = phi i32 [ 0, %if.end51.for.end.i_crit_edge ], [ 1, %for.inc.i148.for.end.i_crit_edge ], [ 2, %for.inc.1.i.for.end.i_crit_edge ], [ 3, %for.inc.2.i.for.end.i_crit_edge ]
  %feat_flags1.i = getelementptr [4 x %struct.brcmf_feat_fwfeat], ptr @brcmf_feat_fwfeat_map, i32 0, i32 %i.031.lcssa.i, i32 1
  %121 = ptrtoint ptr %feat_flags1.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %feat_flags1.i, align 4
  br label %for.body7.i

for.body7.i:                                      ; preds = %for.inc12.i.for.body7.i_crit_edge, %for.end.i
  %i.132.i = phi i32 [ 0, %for.end.i ], [ %inc13.i, %for.inc12.i.for.body7.i_crit_edge ]
  %shl.i149 = shl nuw nsw i32 1, %i.132.i
  %and.i150 = and i32 %shl.i149, %122
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i150)
  %tobool8.not.i = icmp eq i32 %and.i150, 0
  br i1 %tobool8.not.i, label %for.body7.i.for.inc12.i_crit_edge, label %do.body.i151

for.body7.i.for.inc12.i_crit_edge:                ; preds = %for.body7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc12.i

do.body.i151:                                     ; preds = %for.body7.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx10.i = getelementptr [21 x ptr], ptr @brcmf_feat_names, i32 0, i32 %i.132.i
  %123 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %arrayidx10.i, align 4
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 4, ptr noundef nonnull @__func__.brcmf_feat_firmware_overrides, ptr noundef nonnull @.str.50, ptr noundef %124) #6
  br label %for.inc12.i

for.inc12.i:                                      ; preds = %do.body.i151, %for.body7.i.for.inc12.i_crit_edge
  %inc13.i = add nuw nsw i32 %i.132.i, 1
  %exitcond.not.i152 = icmp eq i32 %inc13.i, 21
  br i1 %exitcond.not.i152, label %for.end14.i, label %for.inc12.i.for.body7.i_crit_edge

for.inc12.i.for.body7.i_crit_edge:                ; preds = %for.inc12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body7.i

for.end14.i:                                      ; preds = %for.inc12.i
  call void @__sanitizer_cov_trace_pc() #8
  %feat_flags15.i = getelementptr inbounds %struct.brcmf_pub, ptr %drvr, i32 0, i32 16
  %125 = ptrtoint ptr %feat_flags15.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %feat_flags15.i, align 4
  %or.i153 = or i32 %126, %122
  store i32 %or.i153, ptr %feat_flags15.i, align 4
  br label %brcmf_feat_firmware_overrides.exit

brcmf_feat_firmware_overrides.exit:               ; preds = %for.end14.i, %for.inc.2.i.brcmf_feat_firmware_overrides.exit_crit_edge
  %127 = ptrtoint ptr %drvr to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %drvr, align 4
  %chip53 = getelementptr inbounds %struct.brcmf_bus, ptr %128, i32 0, i32 7
  %129 = ptrtoint ptr %chip53 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %chip53, align 4
  %131 = zext i32 %130 to i64
  call void @__sanitizer_cov_trace_switch(i64 %131, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %130, label %brcmf_feat_firmware_overrides.exit.sw.epilog60_crit_edge [
    i32 43236, label %brcmf_feat_firmware_overrides.exit.sw.epilog60.sink.split_crit_edge
    i32 17193, label %sw.bb56
  ]

brcmf_feat_firmware_overrides.exit.sw.epilog60.sink.split_crit_edge: ; preds = %brcmf_feat_firmware_overrides.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog60.sink.split

brcmf_feat_firmware_overrides.exit.sw.epilog60_crit_edge: ; preds = %brcmf_feat_firmware_overrides.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog60

sw.bb56:                                          ; preds = %brcmf_feat_firmware_overrides.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog60.sink.split

sw.epilog60.sink.split:                           ; preds = %sw.bb56, %brcmf_feat_firmware_overrides.exit.sw.epilog60.sink.split_crit_edge
  %.sink154 = phi i32 [ 2, %sw.bb56 ], [ 1, %brcmf_feat_firmware_overrides.exit.sw.epilog60.sink.split_crit_edge ]
  %chip_quirks = getelementptr inbounds %struct.brcmf_pub, ptr %drvr, i32 0, i32 17
  %132 = ptrtoint ptr %chip_quirks to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %chip_quirks, align 4
  %or58 = or i32 %133, %.sink154
  store i32 %or58, ptr %chip_quirks, align 4
  br label %sw.epilog60

sw.epilog60:                                      ; preds = %sw.epilog60.sink.split, %brcmf_feat_firmware_overrides.exit.sw.epilog60_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wowl_cap) #6
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %gscan_cfg) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pfn_mac) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @brcmf_get_ifp(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @brcmf_feat_is_enabled(ptr nocapture noundef readonly %ifp, i32 noundef %id) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ifp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ifp, align 4
  %feat_flags = getelementptr inbounds %struct.brcmf_pub, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %feat_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %feat_flags, align 4
  %shl = shl nuw i32 1, %id
  %and = and i32 %3, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  ret i1 %tobool
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_fil_iovar_int_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_fil_iovar_data_get(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brcmf_dbg(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @brcmf_feat_debugfs_create(ptr noundef %drvr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @brcmf_debugfs_add_entry(ptr noundef %drvr, ptr noundef nonnull @.str.10, ptr noundef nonnull @brcmf_feat_debugfs_read) #6
  tail call void @brcmf_debugfs_add_entry(ptr noundef %drvr, ptr noundef nonnull @.str.11, ptr noundef nonnull @brcmf_feat_fwcap_debugfs_read) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_debugfs_add_entry(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmf_feat_debugfs_read(ptr noundef %seq, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %drvr = getelementptr inbounds %struct.brcmf_bus, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %drvr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %drvr, align 4
  %feat_flags = getelementptr inbounds %struct.brcmf_pub, ptr %5, i32 0, i32 16
  %6 = ptrtoint ptr %feat_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %feat_flags, align 4
  %chip_quirks = getelementptr inbounds %struct.brcmf_pub, ptr %5, i32 0, i32 17
  %8 = ptrtoint ptr %chip_quirks to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %chip_quirks, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.55, i32 noundef %7) #6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %id.028 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %shl = shl nuw nsw i32 1, %id.028
  %and = and i32 %shl, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr [21 x ptr], ptr @brcmf_feat_names, i32 0, i32 %id.028
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.56, ptr noundef %11) #6
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %id.028, 1
  %exitcond.not = icmp eq i32 %inc, 21
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.57, i32 noundef %9) #6
  %and6 = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %for.end.for.inc11_crit_edge, label %if.then8

for.end.for.inc11_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc11

if.then8:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.58) #6
  br label %for.inc11

for.inc11:                                        ; preds = %if.then8, %for.end.for.inc11_crit_edge
  %and6.1 = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.1)
  %tobool7.not.1 = icmp eq i32 %and6.1, 0
  br i1 %tobool7.not.1, label %for.inc11.for.inc11.1_crit_edge, label %if.then8.1

for.inc11.for.inc11.1_crit_edge:                  ; preds = %for.inc11
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc11.1

if.then8.1:                                       ; preds = %for.inc11
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.59) #6
  br label %for.inc11.1

for.inc11.1:                                      ; preds = %if.then8.1, %for.inc11.for.inc11.1_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmf_feat_fwcap_debugfs_read(ptr noundef %seq, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  %caps = alloca [769 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %drvr1 = getelementptr inbounds %struct.brcmf_bus, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %drvr1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %drvr1, align 4
  %call2 = tail call ptr @brcmf_get_ifp(ptr noundef %5, i32 noundef 0) #6
  call void @llvm.lifetime.start.p0(i64 769, ptr nonnull %caps) #6
  %6 = call ptr @memset(ptr %caps, i32 0, i32 769)
  %call3 = call i32 @brcmf_fil_iovar_data_get(ptr noundef %call2, ptr noundef nonnull @.str.12, ptr noundef nonnull %caps, i32 noundef 769) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %entry.for.cond_crit_edge, label %do.end

entry.for.cond_crit_edge:                         ; preds = %entry
  br label %for.cond

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %wiphy = getelementptr inbounds %struct.brcmf_pub, ptr %5, i32 0, i32 2
  %7 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %wiphy, align 4
  %dev = getelementptr inbounds %struct.wiphy, ptr %8, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.60, i32 noundef %call3) #9
  br label %cleanup

for.cond:                                         ; preds = %for.inc, %entry.for.cond_crit_edge
  %tmp.0 = phi ptr [ %incdec.ptr, %for.inc ], [ %caps, %entry.for.cond_crit_edge ]
  %9 = ptrtoint ptr %tmp.0 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %tmp.0, align 1
  %11 = zext i8 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.65)
  switch i8 %10, label %for.cond.for.inc_crit_edge [
    i8 0, label %for.end
    i8 32, label %if.then10
  ]

for.cond.for.inc_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then10:                                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %tmp.0 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 10, ptr %tmp.0, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.then10, %for.cond.for.inc_crit_edge
  %incdec.ptr = getelementptr i8, ptr %tmp.0, i32 1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.61, ptr noundef nonnull %caps) #6
  %cmp14 = icmp ugt ptr %tmp.0, %caps
  br i1 %cmp14, label %land.lhs.true, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true:                                    ; preds = %for.end
  %add.ptr = getelementptr i8, ptr %tmp.0, i32 -1
  %13 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %add.ptr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %14)
  %cmp17.not = icmp eq i8 %14, 10
  br i1 %cmp17.not, label %land.lhs.true.cleanup_crit_edge, label %if.then19

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then19:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.62) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then19, %land.lhs.true.cleanup_crit_edge, %for.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call3, %do.end ], [ 0, %if.then19 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %for.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 769, ptr nonnull %caps) #6
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @brcmf_feat_is_quirk_enabled(ptr nocapture noundef readonly %ifp, i32 noundef %quirk) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ifp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ifp, align 4
  %chip_quirks = getelementptr inbounds %struct.brcmf_pub, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %chip_quirks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chip_quirks, align 4
  %shl = shl nuw i32 1, %quirk
  %and = and i32 %3, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  ret i1 %tobool
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strnstr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_fil_iovar_data_set(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 68)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 68)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !21, !23, !25, !27, !29, !30, !31, !32, !33, !34, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !81, !83, !85, !87, !89, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !109, !111, !113, !114, !115, !117}
!llvm.module.flags = !{!119, !120, !121, !122, !123, !124, !125, !126}
!llvm.ident = !{!127}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/feature.c", i32 253, i32 8}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/feature.c", i32 255, i32 48}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/feature.c", i32 257, i32 50}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/feature.c", i32 259, i32 38}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/feature.c", i32 279, i32 49}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/feature.c", i32 280, i32 49}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/feature.c", i32 281, i32 48}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/feature.c", i32 284, i32 38}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/feature.c", i32 289, i32 50}
!18 = !{ptr @__func__.brcmf_feat_attach, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/feature.c", i32 292, i32 3}
!20 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/feature.c", i32 316, i32 32}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/feature.c", i32 317, i32 32}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/feature.c", i32 186, i32 38}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/feature.c", i32 188, i32 3}
!29 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.15, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.16, !28, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.17, !28, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @brcmf_feat_firmware_capabilities._entry, !28, !"_entry", i1 false, i1 false}
!34 = !{ptr @brcmf_feat_firmware_capabilities._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.18, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/feature.c", i32 192, i32 2}
!37 = !{ptr @.str.19, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/feature.c", i32 197, i32 4}
!39 = !{ptr @.str.20, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/feature.c", i32 37, i32 21}
!41 = !{ptr @.str.21, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/feature.c", i32 38, i32 22}
!43 = !{ptr @.str.22, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/feature.c", i32 39, i32 20}
!45 = !{ptr @.str.23, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/feature.c", i32 40, i32 24}
!47 = !{ptr @.str.24, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/feature.c", i32 41, i32 29}
!49 = !{ptr @.str.25, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/feature.c", i32 43, i32 23}
!51 = !{ptr @.str.26, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/feature.c", i32 44, i32 20}
!53 = !{ptr @.str.27, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/feature.c", i32 45, i32 23}
!55 = !{ptr @brcmf_fwcap_map, !56, !"brcmf_fwcap_map", i1 false, i1 false}
!56 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/feature.c", i32 36, i32 38}
!57 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/feature.c", i32 27, i32 2}
!59 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.30, !58, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.31, !58, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.32, !58, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.33, !58, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.34, !58, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.35, !58, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.36, !58, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.37, !58, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.38, !58, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.39, !58, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.40, !58, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.41, !58, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.42, !58, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.43, !58, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.44, !58, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.45, !58, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.46, !58, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.47, !58, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.48, !58, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @brcmf_feat_names, !80, !"brcmf_feat_names", i1 false, i1 false}
!80 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/feature.c", i32 26, i32 20}
!81 = !{ptr @__func__.brcmf_feat_iovar_data_set, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/feature.c", i32 168, i32 3}
!83 = !{ptr @.str.49, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/feature.c", i32 171, i32 3}
!85 = !{ptr @__func__.brcmf_feat_iovar_int_get, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/feature.c", i32 147, i32 3}
!87 = !{ptr @__func__.brcmf_feat_firmware_overrides, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/feature.c", i32 124, i32 4}
!89 = !{ptr @.str.50, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.51, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/feature.c", i32 96, i32 4}
!92 = !{ptr @.str.52, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/feature.c", i32 98, i32 4}
!94 = !{ptr @.str.53, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/feature.c", i32 100, i32 4}
!96 = !{ptr @.str.54, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/feature.c", i32 102, i32 4}
!98 = !{ptr @brcmf_feat_fwfeat_map, !99, !"brcmf_feat_fwfeat_map", i1 false, i1 false}
!99 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/feature.c", i32 94, i32 39}
!100 = !{ptr @.str.55, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/feature.c", i32 72, i32 18}
!102 = !{ptr @.str.56, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/feature.c", i32 75, i32 20}
!104 = !{ptr @.str.57, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/feature.c", i32 76, i32 18}
!106 = !{ptr @.str.58, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/feature.c", i32 55, i32 2}
!108 = !{ptr @.str.59, !107, !"<string literal>", i1 false, i1 false}
!109 = distinct !{null, !110, !"brcmf_quirk_names", i1 false, i1 false}
!110 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/feature.c", i32 54, i32 27}
!111 = !{ptr @.str.60, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/feature.c", i32 221, i32 3}
!113 = !{ptr @brcmf_feat_fwcap_debugfs_read._entry, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @brcmf_feat_fwcap_debugfs_read._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.61, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/feature.c", i32 232, i32 18}
!117 = !{ptr @.str.62, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/feature.c", i32 235, i32 19}
!119 = !{i32 1, !"wchar_size", i32 2}
!120 = !{i32 1, !"min_enum_size", i32 4}
!121 = !{i32 8, !"branch-target-enforcement", i32 0}
!122 = !{i32 8, !"sign-return-address", i32 0}
!123 = !{i32 8, !"sign-return-address-all", i32 0}
!124 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!125 = !{i32 7, !"uwtable", i32 1}
!126 = !{i32 7, !"frame-pointer", i32 2}
!127 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!128 = !{!"auto-init"}
!129 = !{i8 0, i8 2}
