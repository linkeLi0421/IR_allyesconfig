; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/broadcom/brcm80211/brcmsmac/mac80211_if.c_pt.bc'
source_filename = "../drivers/net/wireless/broadcom/brcm80211/brcmsmac/mac80211_if.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.97 }
%union.anon.97 = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.bcma_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.bcma_device_id = type { i16, i16, i8, i8 }
%struct.ieee80211_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.ieee80211_rate = type { i32, i16, i16, i16 }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.brcms_pub = type { ptr, ptr, ptr, i32, i32, i32, ptr, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, [6 x i8], i32, i16, i8, [4 x i8], i32, i32, i8, ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.128, i32 }
%union.anon.128 = type { ptr }
%struct.brcms_info = type { ptr, ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.wait_queue_head, %struct.atomic_t, ptr, %struct.tasklet_struct, i8, %struct.brcms_firmware, ptr, %struct.brcms_ucode, i8, %struct.brcms_led, %struct.led_classdev }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.brcms_firmware = type { i32, [4 x ptr], [4 x ptr], [4 x i32] }
%struct.brcms_ucode = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr }
%struct.brcms_led = type { [32 x i8], ptr }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.brcms_c_info = type { ptr, ptr, ptr, i16, i32, i32, i32, i8, ptr, ptr, ptr, [2 x ptr], i32, ptr, ptr, ptr, i16, i16, i32, [6 x i8], i8, i8, i8, i8, i8, ptr, ptr, i32, i8, i8, i8, i8, i32, [4 x i16], [4 x i16], ptr, ptr, i8, i8, i8, i8, ptr, i16, [4 x i8], [4 x i8], i16, i16, i16, i16, [6 x i16], i16, i16, i16, i16, i16, i8, i8, i8, ptr, i8, ptr, i32, i32, i16, i16, ptr, %struct.scb, ptr, ptr, i16, i16, ptr }
%struct.scb = type { i32, i32, i32, i8, [6 x i8], [8 x i32], [8 x i16], i16, [8 x i16], %struct.scb_ampdu }
%struct.scb_ampdu = type { ptr, i8, i8, i8, i16, i32, [8 x %struct.scb_ampdu_tid_ini] }
%struct.scb_ampdu_tid_ini = type { i8, [64 x i8], ptr, i8 }
%struct.brcms_hardware = type { i8, ptr, [6 x ptr], i32, i16, i16, i32, i8, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [2 x ptr], i16, i8, i16, i16, i16, i16, i8, i32, i32, i16, [6 x ptr], ptr, i32, i8, i32, i32, i32, i32, [6 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.bcma_device = type { ptr, %struct.bcma_device_id, %struct.device, ptr, i32, i8, i8, i8, i32, [8 x i32], i32, ptr, ptr, ptr, %struct.list_head }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.brcms_timer = type { %struct.delayed_work, ptr, ptr, ptr, i32, i8, i8, ptr, ptr }
%struct.firmware = type { i32, ptr, ptr }
%struct.firmware_hdr = type { i32, i32, i32 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.124, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.possible_net_t = type { ptr }
%struct.anon.124 = type { i64, i64, i8 }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.139, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.anon.139 = type { i32, i16 }
%struct.brcms_band = type { i32, i32, i16, i16, i16, i16, ptr, i8, i8, ptr, %struct.brcms_c_rateset, i8, i8, %struct.brcms_c_rateset, [109 x i8], i8, i8, i16, i16, %struct.ieee80211_supported_band }
%struct.brcms_c_rateset = type { i32, [16 x i8], i8, [16 x i8] }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
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
%struct.ieee80211_vif = type { i32, %struct.ieee80211_bss_conf, [6 x i8], i8, i8, i8, i8, [4 x i8], ptr, ptr, i32, i32, ptr, i8, i8, [4 x i8], i8, i8, ptr, [0 x i8] }
%struct.ieee80211_bss_conf = type { ptr, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i16, i16, i64, i32, i8, i32, ptr, [6 x i32], i16, i32, i32, i32, i32, %struct.cfg80211_chan_def, %struct.ieee80211_mu_group_data, [4 x i32], i32, i8, i8, i8, [32 x i8], i32, i8, i32, i32, %struct.ieee80211_p2p_noa_attr, i8, i16, i8, i8, ptr, i8, [6 x i8], i8, i8, i8, i8, %struct.anon.136, %struct.ieee80211_he_obss_pd, %struct.cfg80211_he_bss_color, %struct.ieee80211_fils_discovery, i32, i8, %struct.cfg80211_bitrate_mask, i32, [8 x %struct.ieee80211_tx_pwr_env], i8, i8 }
%struct.ieee80211_mu_group_data = type { [8 x i8], [16 x i8] }
%struct.ieee80211_p2p_noa_attr = type { i8, i8, [4 x %struct.ieee80211_p2p_noa_desc] }
%struct.ieee80211_p2p_noa_desc = type <{ i8, i32, i32, i32 }>
%struct.anon.136 = type { i32, i16 }
%struct.ieee80211_he_obss_pd = type { i8, i8, i8, i8, i8, [8 x i8], [8 x i8] }
%struct.cfg80211_he_bss_color = type { i8, i8, i8 }
%struct.ieee80211_fils_discovery = type { i32, i32 }
%struct.cfg80211_bitrate_mask = type { [6 x %struct.anon.137] }
%struct.anon.137 = type { i32, [10 x i8], [8 x i16], [8 x i16], i32, i32, i32 }
%struct.ieee80211_tx_pwr_env = type { i8, [8 x i8] }
%struct.brcm_rateset = type { i32, [16 x i8] }
%struct.ieee80211_ampdu_params = type { i32, ptr, i16, i16, i16, i8, i16 }
%struct.ieee80211_sta = type <{ [6 x i32], [6 x i8], i16, %struct.ieee80211_sta_ht_cap, [2 x i8], %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_he_cap, %struct.ieee80211_he_6ghz_capa, i8, i16, i8, i8, i8, i8, i32, i32, ptr, i8, i8, i8, i8, i16, i8, i8, i16, [16 x i16], [2 x i8], %struct.ieee80211_sta_txpwr, [17 x ptr], [0 x i8] }>
%struct.ieee80211_sta_he_cap = type <{ i8, %struct.ieee80211_he_cap_elem, %struct.ieee80211_he_mcs_nss_supp, [25 x i8] }>
%struct.ieee80211_he_cap_elem = type { [6 x i8], [11 x i8] }
%struct.ieee80211_he_mcs_nss_supp = type { i16, i16, i16, i16, i16, i16 }
%struct.ieee80211_he_6ghz_capa = type { i16 }
%struct.ieee80211_sta_txpwr = type { i16, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@__UNIQUE_ID_author350 = internal constant [37 x i8] c"brcmsmac.author=Broadcom Corporation\00", section ".modinfo", align 1
@__UNIQUE_ID_description351 = internal constant [59 x i8] c"brcmsmac.description=Broadcom 802.11n wireless LAN driver.\00", section ".modinfo", align 1
@__UNIQUE_ID_file352 = internal constant [72 x i8] c"brcmsmac.file=drivers/net/wireless/broadcom/brcm80211/brcmsmac/brcmsmac\00", section ".modinfo", align 1
@__UNIQUE_ID_license353 = internal constant [30 x i8] c"brcmsmac.license=Dual BSD/GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware354 = internal constant [36 x i8] c"brcmsmac.firmware=brcm/bcm43xx-0.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware355 = internal constant [40 x i8] c"brcmsmac.firmware=brcm/bcm43xx_hdr-0.fw\00", section ".modinfo", align 1
@__param_str_debug = internal constant [15 x i8] c"brcmsmac.debug\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@brcm_msg_level = external dso_local global i32, align 4
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @brcm_msg_level } }, section "__param", align 4
@__UNIQUE_ID_debugtype356 = internal constant [29 x i8] c"brcmsmac.parmtype=debug:uint\00", section ".modinfo", align 1
@brcms_driver_work = internal global { %struct.work_struct, [52 x i8] } { %struct.work_struct { %struct.atomic_t { i32 -48 }, %struct.list_head { ptr getelementptr (i8, ptr @brcms_driver_work, i64 4), ptr getelementptr (i8, ptr @brcms_driver_work, i64 4) }, ptr @brcms_driver_init, %struct.lockdep_map { ptr @brcms_driver_work, [2 x ptr] zeroinitializer, ptr @.str.28, i8 0, i8 0, i8 0, i32 0, i32 0 } }, [52 x i8] zeroinitializer }, align 32
@brcms_bcma_driver = internal global { %struct.bcma_driver, [56 x i8] } { %struct.bcma_driver { ptr @.str.31, ptr @brcms_coreid_table, ptr @brcms_bcma_probe, ptr @brcms_remove, ptr @brcms_suspend, ptr @brcms_resume, ptr null, %struct.device_driver zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@__initcall__kmod_brcmsmac__357_1338_brcms_module_init6 = internal global ptr @brcms_module_init, section ".initcall6.init", align 4
@__exitcall_brcms_module_exit = internal global ptr @brcms_module_exit, section ".exitcall.exit", align 4
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Shouldn't be here %s\0A\00", [42 x i8] zeroinitializer }, align 32
@__func__.brcms_txflowcontrol = private unnamed_addr constant [20 x i8] c"brcms_txflowcontrol\00", align 1
@__func__.brcms_init = private unnamed_addr constant [11 x i8] c"brcms_init\00", align 1
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Initializing wl%d\0A\00", [45 x i8] zeroinitializer }, align 32
@__func__.brcms_reset = private unnamed_addr constant [12 x i8] c"brcms_reset\00", align 1
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Resetting wl%d\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"wl%d: fatal error, reinitializing\0A\00", [61 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@brcms_init_timer.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"(work_completion)(&(&t->dly_wrk)->work)\00", [56 x i8] zeroinitializer }, align 32
@brcms_init_timer.__key.5 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&(&t->dly_wrk)->timer\00", [42 x i8] zeroinitializer }, align 32
@__func__.brcms_add_timer = private unnamed_addr constant [16 x i8] c"brcms_add_timer\00", align 1
@.str.7 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: Already set. Name: %s, per %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"ERROR: ucode buf tag:%d can not be found!\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ERROR: fw hdr len\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"ERROR: ucode tag:%d can not be found!\0A\00", [57 x i8] zeroinitializer }, align 32
@brcms_check_firmwares._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.13, i32 1686, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: invalid bin/hdr fw\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"brcms_check_firmwares\00", [42 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"drivers/net/wireless/broadcom/brcm80211/brcmsmac/mac80211_if.c\00", [33 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@brcms_check_firmwares._entry_ptr = internal global ptr @brcms_check_firmwares._entry, section ".printk_index", align 4
@brcms_check_firmwares._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.12, ptr @.str.13, i32 1691, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: non integral fw hdr file size %zu/%zu\0A\00", [53 x i8] zeroinitializer }, align 32
@brcms_check_firmwares._entry_ptr.18 = internal global ptr @brcms_check_firmwares._entry.16, section ".printk_index", align 4
@brcms_check_firmwares._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.12, ptr @.str.13, i32 1695, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: out of bounds fw file size %zu\0A\00", [60 x i8] zeroinitializer }, align 32
@brcms_check_firmwares._entry_ptr.21 = internal global ptr @brcms_check_firmwares._entry.19, section ".printk_index", align 4
@brcms_check_firmwares._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.12, ptr @.str.13, i32 1707, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: conflicting bin/hdr\0A\00", [39 x i8] zeroinitializer }, align 32
@brcms_check_firmwares._entry_ptr.24 = internal global ptr @brcms_check_firmwares._entry.22, section ".printk_index", align 4
@brcms_check_firmwares._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.12, ptr @.str.13, i32 1715, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: invalid fw_cnt=%d\0A\00", [41 x i8] zeroinitializer }, align 32
@brcms_check_firmwares._entry_ptr.27 = internal global ptr @brcms_check_firmwares._entry.25, section ".printk_index", align 4
@.str.28 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"brcms_driver_work\00", [46 x i8] zeroinitializer }, align 32
@brcms_driver_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.13, i32 1310, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013brcmsmac: %s: register returned %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"brcms_driver_init\00", [46 x i8] zeroinitializer }, align 32
@brcms_driver_init._entry_ptr = internal global ptr @brcms_driver_init._entry, section ".printk_index", align 4
@.str.31 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"brcmsmac\00", [23 x i8] zeroinitializer }, align 32
@brcms_coreid_table = internal global { [4 x %struct.bcma_device_id], [40 x i8] } { [4 x %struct.bcma_device_id] [%struct.bcma_device_id { i16 1215, i16 2066, i8 17, i8 -1 }, %struct.bcma_device_id { i16 1215, i16 2066, i8 23, i8 -1 }, %struct.bcma_device_id { i16 1215, i16 2066, i8 24, i8 -1 }, %struct.bcma_device_id zeroinitializer], [40 x i8] zeroinitializer }, align 32
@brcms_bcma_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.13, i32 1227, ptr @.str.34, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"mfg %x core %x rev %d class %d irq %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"brcms_bcma_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@brcms_bcma_probe._entry_ptr = internal global ptr @brcms_bcma_probe._entry, section ".printk_index", align 4
@brcms_ops = internal constant { %struct.ieee80211_ops, [124 x i8] } { %struct.ieee80211_ops { ptr @brcms_ops_tx, ptr @brcms_ops_start, ptr @brcms_ops_stop, ptr null, ptr null, ptr null, ptr @brcms_ops_add_interface, ptr null, ptr @brcms_ops_remove_interface, ptr @brcms_ops_config, ptr @brcms_ops_bss_info_changed, ptr null, ptr null, ptr null, ptr @brcms_ops_configure_filter, ptr null, ptr @brcms_ops_beacon_set_tim, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @brcms_ops_sw_scan_start, ptr @brcms_ops_sw_scan_complete, ptr null, ptr null, ptr null, ptr null, ptr @brcms_ops_sta_add, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @brcms_ops_conf_tx, ptr @brcms_ops_get_tsf, ptr @brcms_ops_set_tsf, ptr null, ptr null, ptr null, ptr @brcms_ops_ampdu_action, ptr null, ptr @brcms_ops_rfkill_poll, ptr null, ptr null, ptr null, ptr @brcms_ops_flush, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [124 x i8] zeroinitializer }, align 32
@brcms_bcma_probe._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.33, ptr @.str.13, i32 1235, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013brcmsmac: %s: ieee80211_alloc_hw failed\0A\00", [53 x i8] zeroinitializer }, align 32
@brcms_bcma_probe._entry_ptr.37 = internal global ptr @brcms_bcma_probe._entry.35, section ".printk_index", align 4
@brcms_bcma_probe._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.33, ptr @.str.13, i32 1247, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013brcmsmac: %s: brcms_attach failed!\0A\00", [58 x i8] zeroinitializer }, align 32
@brcms_bcma_probe._entry_ptr.40 = internal global ptr @brcms_bcma_probe._entry.38, section ".printk_index", align 4
@.str.41 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ops->tx called while down\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: brcms_up() returned %d\0A\00", [36 x i8] zeroinitializer }, align 32
@__func__.brcms_ops_start = private unnamed_addr constant [16 x i8] c"brcms_ops_start\00", align 1
@.str.43 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s-%d.fw\00", [23 x i8] zeroinitializer }, align 32
@brcms_request_fw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.13, i32 381, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: fail to load firmware %s\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"brcms_request_fw\00", [47 x i8] zeroinitializer }, align 32
@brcms_request_fw._entry_ptr = internal global ptr @brcms_request_fw._entry, section ".printk_index", align 4
@.str.46 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s_hdr-%d.fw\00", [19 x i8] zeroinitializer }, align 32
@brcms_request_fw._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.13, i32 389, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@brcms_request_fw._entry_ptr.48 = internal global ptr @brcms_request_fw._entry.47, section ".printk_index", align 4
@.str.49 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"brcm/bcm43xx\00", [19 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"wl: brcms_ops_stop: chipmatch failed\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"%s: Attempt to add type %d, only STA, AP and AdHoc for now\0A\00", [36 x i8] zeroinitializer }, align 32
@__func__.brcms_ops_add_interface = private unnamed_addr constant [24 x i8] c"brcms_ops_add_interface\00", align 1
@__func__.brcms_ops_config = private unnamed_addr constant [17 x i8] c"brcms_ops_config\00", align 1
@.str.52 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: change monitor mode: %s\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"true\00", [27 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"false\00", [26 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: change power-save mode: %s (implement)\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: Error setting power_level\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: Power level req != actual, %d %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: %s: %sassociated\0A\00", [42 x i8] zeroinitializer }, align 32
@__func__.brcms_ops_bss_info_changed = private unnamed_addr constant [27 x i8] c"brcms_ops_bss_info_changed\00", align 1
@.str.59 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.60 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dis\00", [28 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"changing basic rates failed: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: Beacon enabled: %s\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s: cqm change: threshold %d, hys %d  (implement)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: IBSS joined: %s (implement)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: arp filtering: %d addresses (implement)\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: qos enabled: %s (implement)\0A\00", [63 x i8] zeroinitializer }, align 32
@__func__.brcms_ops_configure_filter = private unnamed_addr constant [27 x i8] c"brcms_ops_configure_filter\00", align 1
@.str.67 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"FIF_ALLMULTI\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"FIF_FCSFAIL\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"FIF_CONTROL\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"FIF_OTHER_BSS\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"FIF_PSPOLL\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"FIF_BCN_PRBRESP_PROMISC\0A\00", [39 x i8] zeroinitializer }, align 32
@__func__.brcms_ops_ampdu_action = private unnamed_addr constant [23 x i8] c"brcms_ops_ampdu_action\00", align 1
@.str.73 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"START: tid %d is not agg'able\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: Invalid command, ignoring\0A\00", [33 x i8] zeroinitializer }, align 32
@__func__.brcms_ops_flush = private unnamed_addr constant [16 x i8] c"brcms_ops_flush\00", align 1
@.str.75 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ret=%d\0A\00", [24 x i8] zeroinitializer }, align 32
@n_adapters_found = internal global { i32, [28 x i8] } zeroinitializer, align 32
@brcms_attach.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.76 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&wl->tx_flush_wq\00", [47 x i8] zeroinitializer }, align 32
@brcms_attach.__key.77 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.78 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&wl->lock\00", [22 x i8] zeroinitializer }, align 32
@brcms_attach.__key.79 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.80 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&wl->isr_lock\00", [18 x i8] zeroinitializer }, align 32
@brcms_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.82, ptr @.str.13, i32 1159, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: attach() failed with code %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"brcms_attach\00", [19 x i8] zeroinitializer }, align 32
@brcms_attach._entry_ptr = internal global ptr @brcms_attach._entry, section ".printk_index", align 4
@brcms_attach._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.82, ptr @.str.13, i32 1169, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"wl%d: request_irq() failed\0A\00", [36 x i8] zeroinitializer }, align 32
@brcms_attach._entry_ptr.85 = internal global ptr @brcms_attach._entry.83, section ".printk_index", align 4
@.str.86 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"linux\00", [26 x i8] zeroinitializer }, align 32
@brcms_attach._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.82, ptr @.str.13, i32 1179, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"wl%d: %s: ieee_hw_init failed!\0A\00", [32 x i8] zeroinitializer }, align 32
@brcms_attach._entry_ptr.89 = internal global ptr @brcms_attach._entry.87, section ".printk_index", align 4
@brcms_attach._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.82, ptr @.str.13, i32 1193, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: ieee80211_register_hw failed, status%d\0A\00", [52 x i8] zeroinitializer }, align 32
@brcms_attach._entry_ptr.92 = internal global ptr @brcms_attach._entry.90, section ".printk_index", align 4
@brcms_attach._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.82, ptr @.str.13, i32 1197, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: regulatory hint failed\0A\00", [36 x i8] zeroinitializer }, align 32
@brcms_attach._entry_ptr.95 = internal global ptr @brcms_attach._entry.93, section ".printk_index", align 4
@.str.96 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"minstrel_ht\00", [20 x i8] zeroinitializer }, align 32
@brcms_2ghz_chantable = internal global { [14 x %struct.ieee80211_channel], [208 x i8] } { [14 x %struct.ieee80211_channel] [%struct.ieee80211_channel { i32 0, i32 2412, i16 0, i16 1, i32 32, i32 0, i32 19, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2417, i16 0, i16 2, i32 32, i32 0, i32 19, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2422, i16 0, i16 3, i32 32, i32 0, i32 19, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2427, i16 0, i16 4, i32 32, i32 0, i32 19, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2432, i16 0, i16 5, i32 0, i32 0, i32 19, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2437, i16 0, i16 6, i32 0, i32 0, i32 19, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2442, i16 0, i16 7, i32 0, i32 0, i32 19, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2447, i16 0, i16 8, i32 16, i32 0, i32 19, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2452, i16 0, i16 9, i32 16, i32 0, i32 19, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2457, i16 0, i16 10, i32 16, i32 0, i32 19, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2462, i16 0, i16 11, i32 16, i32 0, i32 19, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2467, i16 0, i16 12, i32 18, i32 0, i32 19, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2472, i16 0, i16 13, i32 18, i32 0, i32 19, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2484, i16 0, i16 14, i32 114, i32 0, i32 19, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }], [208 x i8] zeroinitializer }, align 32
@legacy_ratetable = internal global { [12 x %struct.ieee80211_rate], [48 x i8] } { [12 x %struct.ieee80211_rate] [%struct.ieee80211_rate { i32 0, i16 10, i16 2, i16 0 }, %struct.ieee80211_rate { i32 1, i16 20, i16 4, i16 0 }, %struct.ieee80211_rate { i32 1, i16 55, i16 11, i16 0 }, %struct.ieee80211_rate { i32 1, i16 110, i16 22, i16 0 }, %struct.ieee80211_rate { i32 0, i16 60, i16 12, i16 0 }, %struct.ieee80211_rate { i32 0, i16 90, i16 18, i16 0 }, %struct.ieee80211_rate { i32 0, i16 120, i16 24, i16 0 }, %struct.ieee80211_rate { i32 0, i16 180, i16 36, i16 0 }, %struct.ieee80211_rate { i32 0, i16 240, i16 48, i16 0 }, %struct.ieee80211_rate { i32 0, i16 360, i16 72, i16 0 }, %struct.ieee80211_rate { i32 0, i16 480, i16 96, i16 0 }, %struct.ieee80211_rate { i32 0, i16 540, i16 108, i16 0 }], [48 x i8] zeroinitializer }, align 32
@brcms_band_2GHz_nphy_template = internal constant { { ptr, ptr, i32, i32, i32, <{ i16, i8, i8, i8, { <{ i8, i8, [8 x i8] }>, i16, i8, [3 x i8] }, i8 }>, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }, [36 x i8] } { { ptr, ptr, i32, i32, i32, <{ i16, i8, i8, i8, { <{ i8, i8, [8 x i8] }>, i16, i8, [3 x i8] }, i8 }>, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr } { ptr @brcms_2ghz_chantable, ptr @legacy_ratetable, i32 0, i32 14, i32 12, <{ i16, i8, i8, i8, { <{ i8, i8, [8 x i8] }>, i16, i8, [3 x i8] }, i8 }> <{ i16 112, i8 1, i8 3, i8 6, { <{ i8, i8, [8 x i8] }>, i16, i8, [3 x i8] } { <{ i8, i8, [8 x i8] }> <{ i8 -1, i8 -1, [8 x i8] zeroinitializer }>, i16 -3071, i8 1, [3 x i8] zeroinitializer }, i8 undef }>, %struct.ieee80211_sta_vht_cap zeroinitializer, %struct.ieee80211_sta_s1g_cap zeroinitializer, %struct.ieee80211_edmg zeroinitializer, i16 0, ptr null }, [36 x i8] zeroinitializer }, align 32
@brcms_5ghz_nphy_chantable = internal global { [24 x %struct.ieee80211_channel], [320 x i8] } { [24 x %struct.ieee80211_channel] [%struct.ieee80211_channel { i32 1, i32 5180, i16 0, i16 36, i32 32, i32 0, i32 21, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5200, i16 0, i16 40, i32 16, i32 0, i32 21, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5220, i16 0, i16 44, i32 32, i32 0, i32 21, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5240, i16 0, i16 48, i32 16, i32 0, i32 21, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5260, i16 0, i16 52, i32 42, i32 0, i32 21, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5280, i16 0, i16 56, i32 26, i32 0, i32 21, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5300, i16 0, i16 60, i32 42, i32 0, i32 21, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5320, i16 0, i16 64, i32 26, i32 0, i32 21, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5500, i16 0, i16 100, i32 42, i32 0, i32 21, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5520, i16 0, i16 104, i32 26, i32 0, i32 21, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5540, i16 0, i16 108, i32 42, i32 0, i32 21, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5560, i16 0, i16 112, i32 26, i32 0, i32 21, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5580, i16 0, i16 116, i32 42, i32 0, i32 21, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5600, i16 0, i16 120, i32 26, i32 0, i32 21, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5620, i16 0, i16 124, i32 42, i32 0, i32 21, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5640, i16 0, i16 128, i32 26, i32 0, i32 21, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5660, i16 0, i16 132, i32 42, i32 0, i32 21, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5680, i16 0, i16 136, i32 26, i32 0, i32 21, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5700, i16 0, i16 140, i32 58, i32 0, i32 21, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5745, i16 0, i16 149, i32 32, i32 0, i32 21, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5765, i16 0, i16 153, i32 16, i32 0, i32 21, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5785, i16 0, i16 157, i32 32, i32 0, i32 21, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5805, i16 0, i16 161, i32 16, i32 0, i32 21, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 1, i32 5825, i16 0, i16 165, i32 48, i32 0, i32 21, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }], [320 x i8] zeroinitializer }, align 32
@brcms_band_5GHz_nphy_template = internal constant { { ptr, ptr, i32, i32, i32, <{ i16, i8, i8, i8, { <{ i8, i8, [8 x i8] }>, i16, i8, [3 x i8] }, i8 }>, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }, [36 x i8] } { { ptr, ptr, i32, i32, i32, <{ i16, i8, i8, i8, { <{ i8, i8, [8 x i8] }>, i16, i8, [3 x i8] }, i8 }>, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr } { ptr @brcms_5ghz_nphy_chantable, ptr getelementptr (i8, ptr @legacy_ratetable, i64 48), i32 1, i32 24, i32 8, <{ i16, i8, i8, i8, { <{ i8, i8, [8 x i8] }>, i16, i8, [3 x i8] }, i8 }> <{ i16 112, i8 1, i8 3, i8 6, { <{ i8, i8, [8 x i8] }>, i16, i8, [3 x i8] } { <{ i8, i8, [8 x i8] }> <{ i8 -1, i8 -1, [8 x i8] zeroinitializer }>, i16 -3071, i8 1, [3 x i8] zeroinitializer }, i8 undef }>, %struct.ieee80211_sta_vht_cap zeroinitializer, %struct.ieee80211_sta_s1g_cap zeroinitializer, %struct.ieee80211_edmg zeroinitializer, i16 0, ptr null }, [36 x i8] zeroinitializer }, align 32
@brcms_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.100, ptr @.str.13, i32 1269, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013brcmsmac: %s: %s: no driver private struct!\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"brcms_suspend\00", [18 x i8] zeroinitializer }, align 32
@brcms_suspend._entry_ptr = internal global ptr @brcms_suspend._entry, section ".printk_index", align 4
@.str.101 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"brcms_suspend ok\0A\00", [46 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 4, i64 8]
@__sancov_gen_cov_switch_values.102 = internal global [4 x i64] [i64 2, i64 16, i64 4, i64 8]
@__sancov_gen_cov_switch_values.103 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.104 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@___asan_gen_.105 = private unnamed_addr constant [18 x i8] c"brcms_driver_work\00", align 1
@___asan_gen_.108 = private unnamed_addr constant [18 x i8] c"brcms_bcma_driver\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1288, i32 27 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1347, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1355, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1366, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1380, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1501, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1527, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1619, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1643, i32 6 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1652, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1685, i32 4 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1689, i32 4 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1694, i32 4 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1705, i32 6 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1714, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1313, i32 8 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1310, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1289, i32 14 }
@___asan_gen_.204 = private unnamed_addr constant [19 x i8] c"brcms_coreid_table\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 96, i32 30 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1225, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant [10 x i8] c"brcms_ops\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 962, i32 35 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1235, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1247, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 410, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 453, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 376, i32 20 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 380, i32 4 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 384, i32 20 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 388, i32 4 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 82, i32 2 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 474, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 496, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 542, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 546, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 553, i32 4 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 559, i32 4 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 594, i32 3 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 654, i32 4 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 698, i32 3 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 710, i32 3 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 717, i32 3 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 723, i32 3 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 732, i32 3 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 750, i32 3 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 752, i32 3 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 754, i32 3 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 756, i32 3 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 758, i32 3 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 760, i32 3 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 847, i32 4 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 876, i32 3 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 917, i32 2 }
@___asan_gen_.339 = private unnamed_addr constant [17 x i8] c"n_adapters_found\00", align 1
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 86, i32 12 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1147, i32 2 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1152, i32 2 }
@___asan_gen_.354 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1153, i32 2 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1158, i32 3 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1169, i32 3 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1175, i32 35 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1178, i32 3 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1192, i32 3 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1197, i32 3 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1110, i32 31 }
@___asan_gen_.399 = private unnamed_addr constant [21 x i8] c"brcms_2ghz_chantable\00", align 1
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 113, i32 33 }
@___asan_gen_.402 = private unnamed_addr constant [17 x i8] c"legacy_ratetable\00", align 1
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 203, i32 30 }
@___asan_gen_.405 = private unnamed_addr constant [30 x i8] c"brcms_band_2GHz_nphy_template\00", align 1
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 218, i32 46 }
@___asan_gen_.408 = private unnamed_addr constant [26 x i8] c"brcms_5ghz_nphy_chantable\00", align 1
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 137, i32 33 }
@___asan_gen_.411 = private unnamed_addr constant [30 x i8] c"brcms_band_5GHz_nphy_template\00", align 1
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 239, i32 46 }
@___asan_gen_.414 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1268, i32 3 }
@___asan_gen_.423 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.424 = private constant [66 x i8] c"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/mac80211_if.c\00", align 1
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1278, i32 2 }
@llvm.compiler.used = appending global [135 x ptr] [ptr @__UNIQUE_ID_author350, ptr @__UNIQUE_ID_debugtype356, ptr @__UNIQUE_ID_description351, ptr @__UNIQUE_ID_file352, ptr @__UNIQUE_ID_firmware354, ptr @__UNIQUE_ID_firmware355, ptr @__UNIQUE_ID_license353, ptr @__exitcall_brcms_module_exit, ptr @__initcall__kmod_brcmsmac__357_1338_brcms_module_init6, ptr @__param_debug, ptr @brcms_attach._entry, ptr @brcms_attach._entry.83, ptr @brcms_attach._entry.87, ptr @brcms_attach._entry.90, ptr @brcms_attach._entry.93, ptr @brcms_attach._entry_ptr, ptr @brcms_attach._entry_ptr.85, ptr @brcms_attach._entry_ptr.89, ptr @brcms_attach._entry_ptr.92, ptr @brcms_attach._entry_ptr.95, ptr @brcms_bcma_probe._entry, ptr @brcms_bcma_probe._entry.35, ptr @brcms_bcma_probe._entry.38, ptr @brcms_bcma_probe._entry_ptr, ptr @brcms_bcma_probe._entry_ptr.37, ptr @brcms_bcma_probe._entry_ptr.40, ptr @brcms_check_firmwares._entry, ptr @brcms_check_firmwares._entry.16, ptr @brcms_check_firmwares._entry.19, ptr @brcms_check_firmwares._entry.22, ptr @brcms_check_firmwares._entry.25, ptr @brcms_check_firmwares._entry_ptr, ptr @brcms_check_firmwares._entry_ptr.18, ptr @brcms_check_firmwares._entry_ptr.21, ptr @brcms_check_firmwares._entry_ptr.24, ptr @brcms_check_firmwares._entry_ptr.27, ptr @brcms_driver_init._entry, ptr @brcms_driver_init._entry_ptr, ptr @brcms_module_exit, ptr @brcms_request_fw._entry, ptr @brcms_request_fw._entry.47, ptr @brcms_request_fw._entry_ptr, ptr @brcms_request_fw._entry_ptr.48, ptr @brcms_suspend._entry, ptr @brcms_suspend._entry_ptr, ptr @brcms_driver_work, ptr @brcms_bcma_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @brcms_init_timer.__key, ptr @.str.4, ptr @brcms_init_timer.__key.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @brcms_coreid_table, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @brcms_ops, ptr @.str.36, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @n_adapters_found, ptr @brcms_attach.__key, ptr @.str.76, ptr @brcms_attach.__key.77, ptr @.str.78, ptr @brcms_attach.__key.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.84, ptr @.str.86, ptr @.str.88, ptr @.str.91, ptr @.str.94, ptr @.str.96, ptr @brcms_2ghz_chantable, ptr @legacy_ratetable, ptr @brcms_band_2GHz_nphy_template, ptr @brcms_5ghz_nphy_chantable, ptr @brcms_band_5GHz_nphy_template, ptr @.str.99, ptr @.str.100, ptr @.str.101], section "llvm.metadata"
@0 = internal global [107 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcms_driver_work to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcms_bcma_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcms_init_timer.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcms_init_timer.__key.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcms_check_firmwares._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcms_check_firmwares._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcms_check_firmwares._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcms_check_firmwares._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcms_check_firmwares._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcms_driver_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcms_coreid_table to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcms_bcma_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcms_ops to i32), i32 452, i32 576, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcms_bcma_probe._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcms_bcma_probe._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcms_request_fw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcms_request_fw._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @n_adapters_found to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcms_attach.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcms_attach.__key.77 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcms_attach.__key.79 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcms_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcms_attach._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcms_attach._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcms_attach._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcms_attach._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcms_2ghz_chantable to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @legacy_ratetable to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcms_band_2GHz_nphy_template to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcms_5ghz_nphy_chantable to i32), i32 1344, i32 1664, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcms_band_5GHz_nphy_template to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcms_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @brcms_dpc(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -164
  %lock = getelementptr i8, ptr %t, i32 -148
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #11
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %up = getelementptr inbounds %struct.brcms_pub, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %up to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %up, align 4, !range !235
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end13_crit_edge, label %if.then

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.then:                                          ; preds = %entry
  %resched = getelementptr i8, ptr %t, i32 24
  %4 = ptrtoint ptr %resched to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %resched, align 4, !range !235
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  br i1 %tobool1.not, label %if.then.if.end_crit_edge, label %if.then2

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %isr_lock = getelementptr i8, ptr %t, i32 -104
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %isr_lock) #11
  %wlc = getelementptr i8, ptr %t, i32 -160
  %6 = ptrtoint ptr %wlc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wlc, align 4
  %call8 = tail call zeroext i1 @brcms_c_intrsupd(ptr noundef %7) #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %isr_lock, i32 noundef %call5) #11
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then.if.end_crit_edge
  %wlc10 = getelementptr i8, ptr %t, i32 -160
  %8 = ptrtoint ptr %wlc10 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wlc10, align 4
  %call11 = tail call zeroext i1 @brcms_c_dpc(ptr noundef %9, i1 noundef zeroext true) #11
  %frombool = zext i1 %call11 to i8
  %10 = ptrtoint ptr %resched to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %frombool, ptr %resched, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.end, %entry.if.end13_crit_edge
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr, align 4
  %up15 = getelementptr inbounds %struct.brcms_pub, ptr %12, i32 0, i32 7
  %13 = ptrtoint ptr %up15 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %up15, align 4, !range !235
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool16.not = icmp eq i8 %14, 0
  br i1 %tobool16.not, label %if.end13.done_crit_edge, label %if.end18

if.end13.done_crit_edge:                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %done

if.end18:                                         ; preds = %if.end13
  %resched19 = getelementptr i8, ptr %t, i32 24
  %15 = ptrtoint ptr %resched19 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %resched19, align 4, !range !235
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool20.not = icmp eq i8 %16, 0
  br i1 %tobool20.not, label %if.else, label %if.then21

if.then21:                                        ; preds = %if.end18
  %state.i = getelementptr inbounds %struct.tasklet_struct, ptr %t, i32 0, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then21.done_crit_edge

if.then21.done_crit_edge:                         ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #13
  br label %done

if.then.i:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__tasklet_schedule(ptr noundef %t) #11
  br label %done

if.else:                                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  %isr_lock.i = getelementptr i8, ptr %t, i32 -104
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %isr_lock.i) #11
  %wlc.i = getelementptr i8, ptr %t, i32 -160
  %17 = ptrtoint ptr %wlc.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %wlc.i, align 4
  tail call void @brcms_c_intrson(ptr noundef %18) #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %isr_lock.i, i32 noundef %call2.i) #11
  br label %done

done:                                             ; preds = %if.else, %if.then.i, %if.then21.done_crit_edge, %if.end13.done_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #11
  %tx_flush_wq = getelementptr i8, ptr %t, i32 -60
  tail call void @__wake_up(ptr noundef %tx_flush_wq, i32 noundef 3, i32 noundef 1, ptr noundef null) #11
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @brcms_c_intrsupd(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @brcms_c_dpc(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @brcms_intrson(ptr noundef %wl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %isr_lock = getelementptr inbounds %struct.brcms_info, ptr %wl, i32 0, i32 5
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %isr_lock) #11
  %wlc = getelementptr inbounds %struct.brcms_info, ptr %wl, i32 0, i32 1
  %0 = ptrtoint ptr %wlc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wlc, align 4
  tail call void @brcms_c_intrson(ptr noundef %1) #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %isr_lock, i32 noundef %call2) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @brcms_module_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call zeroext i1 @cancel_work_sync(ptr noundef nonnull @brcms_driver_work) #11
  tail call void @bcma_driver_unregister(ptr noundef nonnull @brcms_bcma_driver) #11
  tail call void @brcms_debugfs_exit() #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bcma_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcms_debugfs_exit() local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @brcms_module_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @brcms_debugfs_init() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %0, ptr noundef nonnull @brcms_driver_work) #11
  %. = select i1 %call.i.i, i32 0, i32 -16
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @brcms_txflowcontrol(ptr nocapture noundef readonly %wl, ptr nocapture noundef readnone %wlif, i1 noundef zeroext %state, i32 noundef %prio) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %wlc = getelementptr inbounds %struct.brcms_info, ptr %wl, i32 0, i32 1
  %0 = ptrtoint ptr %wlc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wlc, align 4
  %hw = getelementptr inbounds %struct.brcms_c_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  %d11core = getelementptr inbounds %struct.brcms_hardware, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %d11core to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d11core, align 4
  %dev = getelementptr inbounds %struct.bcma_device, ptr %5, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__brcms_err(ptr noundef %dev, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.brcms_txflowcontrol) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brcms_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @brcms_init(ptr nocapture noundef %wl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %wlc = getelementptr inbounds %struct.brcms_info, ptr %wl, i32 0, i32 1
  %0 = ptrtoint ptr %wlc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wlc, align 4
  %hw = getelementptr inbounds %struct.brcms_c_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  %d11core = getelementptr inbounds %struct.brcms_hardware, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %d11core to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d11core, align 4
  %dev = getelementptr inbounds %struct.bcma_device, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wl, align 4
  %unit = getelementptr inbounds %struct.brcms_pub, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %unit, align 4
  tail call void (ptr, i32, ptr, ptr, ...) @__brcms_dbg(ptr noundef %dev, i32 noundef 1, ptr noundef nonnull @__func__.brcms_init, ptr noundef nonnull @.str.1, i32 noundef %9) #11
  %10 = ptrtoint ptr %wlc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wlc, align 4
  %hw.i = getelementptr inbounds %struct.brcms_c_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw.i, align 4
  %d11core.i = getelementptr inbounds %struct.brcms_hardware, ptr %13, i32 0, i32 14
  %14 = ptrtoint ptr %d11core.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %d11core.i, align 4
  %dev.i = getelementptr inbounds %struct.bcma_device, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %wl, align 4
  %unit.i = getelementptr inbounds %struct.brcms_pub, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %unit.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %unit.i, align 4
  tail call void (ptr, i32, ptr, ptr, ...) @__brcms_dbg(ptr noundef %dev.i, i32 noundef 1, ptr noundef nonnull @__func__.brcms_reset, ptr noundef nonnull @.str.2, i32 noundef %19) #11
  %20 = ptrtoint ptr %wlc to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %wlc, align 4
  tail call void @brcms_c_reset(ptr noundef %21) #11
  %resched.i = getelementptr inbounds %struct.brcms_info, ptr %wl, i32 0, i32 10
  %22 = ptrtoint ptr %resched.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %resched.i, align 4
  %23 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %wl, align 4
  %up.i = getelementptr inbounds %struct.brcms_pub, ptr %24, i32 0, i32 7
  %25 = ptrtoint ptr %up.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %up.i, align 4
  %26 = ptrtoint ptr %wlc to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %wlc, align 4
  %mute_tx = getelementptr inbounds %struct.brcms_info, ptr %wl, i32 0, i32 14
  %28 = ptrtoint ptr %mute_tx to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %mute_tx, align 4, !range !235
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool = icmp ne i8 %29, 0
  tail call void @brcms_c_init(ptr noundef %27, i1 noundef zeroext %tobool) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brcms_dbg(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @brcms_reset(ptr nocapture noundef %wl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %wlc = getelementptr inbounds %struct.brcms_info, ptr %wl, i32 0, i32 1
  %0 = ptrtoint ptr %wlc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wlc, align 4
  %hw = getelementptr inbounds %struct.brcms_c_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  %d11core = getelementptr inbounds %struct.brcms_hardware, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %d11core to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d11core, align 4
  %dev = getelementptr inbounds %struct.bcma_device, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wl, align 4
  %unit = getelementptr inbounds %struct.brcms_pub, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %unit, align 4
  tail call void (ptr, i32, ptr, ptr, ...) @__brcms_dbg(ptr noundef %dev, i32 noundef 1, ptr noundef nonnull @__func__.brcms_reset, ptr noundef nonnull @.str.2, i32 noundef %9) #11
  %10 = ptrtoint ptr %wlc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wlc, align 4
  tail call void @brcms_c_reset(ptr noundef %11) #11
  %resched = getelementptr inbounds %struct.brcms_info, ptr %wl, i32 0, i32 10
  %12 = ptrtoint ptr %resched to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %resched, align 4
  %13 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %wl, align 4
  %up = getelementptr inbounds %struct.brcms_pub, ptr %14, i32 0, i32 7
  %15 = ptrtoint ptr %up to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %up, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcms_c_init(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcms_c_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @brcms_fatal_error(ptr nocapture noundef %wl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %wlc = getelementptr inbounds %struct.brcms_info, ptr %wl, i32 0, i32 1
  %0 = ptrtoint ptr %wlc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wlc, align 4
  %hw = getelementptr inbounds %struct.brcms_c_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  %d11core = getelementptr inbounds %struct.brcms_hardware, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %d11core to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d11core, align 4
  %dev = getelementptr inbounds %struct.bcma_device, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %unit = getelementptr inbounds %struct.brcms_pub, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %unit, align 4
  tail call void (ptr, ptr, ...) @__brcms_err(ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef %9) #11
  %10 = ptrtoint ptr %wlc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wlc, align 4
  %hw.i = getelementptr inbounds %struct.brcms_c_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw.i, align 4
  %d11core.i = getelementptr inbounds %struct.brcms_hardware, ptr %13, i32 0, i32 14
  %14 = ptrtoint ptr %d11core.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %d11core.i, align 4
  %dev.i = getelementptr inbounds %struct.bcma_device, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %wl, align 4
  %unit.i = getelementptr inbounds %struct.brcms_pub, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %unit.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %unit.i, align 4
  tail call void (ptr, i32, ptr, ptr, ...) @__brcms_dbg(ptr noundef %dev.i, i32 noundef 1, ptr noundef nonnull @__func__.brcms_reset, ptr noundef nonnull @.str.2, i32 noundef %19) #11
  %20 = ptrtoint ptr %wlc to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %wlc, align 4
  tail call void @brcms_c_reset(ptr noundef %21) #11
  %resched.i = getelementptr inbounds %struct.brcms_info, ptr %wl, i32 0, i32 10
  %22 = ptrtoint ptr %resched.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %resched.i, align 4
  %23 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %wl, align 4
  %up.i = getelementptr inbounds %struct.brcms_pub, ptr %24, i32 0, i32 7
  %25 = ptrtoint ptr %up.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %up.i, align 4
  %26 = load ptr, ptr %wl, align 4
  %ieee_hw = getelementptr inbounds %struct.brcms_pub, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %ieee_hw to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ieee_hw, align 4
  tail call void @ieee80211_restart_hw(ptr noundef %28) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_restart_hw(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcms_c_intrson(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @brcms_intrsoff(ptr noundef %wl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %isr_lock = getelementptr inbounds %struct.brcms_info, ptr %wl, i32 0, i32 5
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %isr_lock) #11
  %wlc = getelementptr inbounds %struct.brcms_info, ptr %wl, i32 0, i32 1
  %0 = ptrtoint ptr %wlc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wlc, align 4
  %call5 = tail call i32 @brcms_c_intrsoff(ptr noundef %1) #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %isr_lock, i32 noundef %call2) #11
  ret i32 %call5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcms_c_intrsoff(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @brcms_intrsrestore(ptr noundef %wl, i32 noundef %macintmask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %isr_lock = getelementptr inbounds %struct.brcms_info, ptr %wl, i32 0, i32 5
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %isr_lock) #11
  %wlc = getelementptr inbounds %struct.brcms_info, ptr %wl, i32 0, i32 1
  %0 = ptrtoint ptr %wlc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wlc, align 4
  tail call void @brcms_c_intrsrestore(ptr noundef %1, i32 noundef %macintmask) #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %isr_lock, i32 noundef %call2) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcms_c_intrsrestore(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @brcms_up(ptr nocapture noundef readonly %wl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wl, align 4
  %up = getelementptr inbounds %struct.brcms_pub, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %up to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %up, align 4, !range !235
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %wlc = getelementptr inbounds %struct.brcms_info, ptr %wl, i32 0, i32 1
  %4 = ptrtoint ptr %wlc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wlc, align 4
  %call = tail call i32 @brcms_c_up(ptr noundef %5) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcms_c_up(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @brcms_down(ptr noundef %wl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %wlc = getelementptr inbounds %struct.brcms_info, ptr %wl, i32 0, i32 1
  %0 = ptrtoint ptr %wlc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wlc, align 4
  %call = tail call i32 @brcms_c_down(ptr noundef %1) #11
  %callbacks1 = getelementptr inbounds %struct.brcms_info, ptr %wl, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %callbacks1, i32 noundef 4) #11
  %2 = ptrtoint ptr %callbacks1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %callbacks1, align 4
  %sub = sub i32 %3, %call
  %lock = getelementptr inbounds %struct.brcms_info, ptr %wl, i32 0, i32 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #11
  %call.i.i1314 = tail call zeroext i1 @__kasan_check_read(ptr noundef %callbacks1, i32 noundef 4) #11
  %4 = ptrtoint ptr %callbacks1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %callbacks1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %sub)
  %cmp15 = icmp ugt i32 %5, %sub
  br i1 %cmp15, label %entry.while.body_crit_edge, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %countdown.016 = phi i32 [ %sub6, %while.body.while.body_crit_edge ], [ 100009, %entry.while.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 2147480) #11
  %sub6 = add nsw i32 %countdown.016, -10
  %call.i.i13 = tail call zeroext i1 @__kasan_check_read(ptr noundef %callbacks1, i32 noundef 4) #11
  %7 = ptrtoint ptr %callbacks1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %callbacks1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %sub)
  %cmp = icmp ugt i32 %8, %sub
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %sub6)
  %cmp5 = icmp ugt i32 %sub6, 9
  %or.cond = select i1 %cmp, i1 %cmp5, i1 false
  br i1 %or.cond, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcms_c_down(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @brcms_init_timer(ptr noundef %wl, ptr noundef %fn, ptr noundef %arg, ptr noundef %name) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2848, i32 noundef 128) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body1

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__init_work(ptr noundef nonnull %call7.i.i, i32 noundef 0) #11
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -64, ptr %call7.i.i, align 8
  %lockdep_map = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.4, ptr noundef nonnull @brcms_init_timer.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry8 = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %entry8 to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %entry8, ptr %entry8, align 4
  %prev.i = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %entry8, ptr %prev.i, align 8
  %func = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @_brcms_timer, ptr %func, align 4
  %timer = getelementptr inbounds %struct.delayed_work, ptr %call7.i.i, i32 0, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.6, ptr noundef nonnull @brcms_init_timer.__key.5) #11
  %wl17 = getelementptr inbounds %struct.brcms_timer, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %wl17 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %wl, ptr %wl17, align 4
  %fn18 = getelementptr inbounds %struct.brcms_timer, ptr %call7.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %fn18 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %fn, ptr %fn18, align 8
  %arg19 = getelementptr inbounds %struct.brcms_timer, ptr %call7.i.i, i32 0, i32 3
  %7 = ptrtoint ptr %arg19 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %arg, ptr %arg19, align 4
  %timers = getelementptr inbounds %struct.brcms_info, ptr %wl, i32 0, i32 8
  %8 = ptrtoint ptr %timers to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %timers, align 4
  %next = getelementptr inbounds %struct.brcms_timer, ptr %call7.i.i, i32 0, i32 7
  %10 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %next, align 8
  store ptr %call7.i.i, ptr %timers, align 4
  %call21 = tail call noalias ptr @kstrdup(ptr noundef %name, i32 noundef 2592) #11
  %name22 = getelementptr inbounds %struct.brcms_timer, ptr %call7.i.i, i32 0, i32 8
  %11 = ptrtoint ptr %name22 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call21, ptr %name22, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body1, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @_brcms_timer(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %wl = getelementptr inbounds %struct.brcms_timer, ptr %work, i32 0, i32 1
  %0 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wl, align 4
  %lock = getelementptr inbounds %struct.brcms_info, ptr %1, i32 0, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #11
  %set = getelementptr inbounds %struct.brcms_timer, ptr %work, i32 0, i32 6
  %2 = ptrtoint ptr %set to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %set, align 1, !range !235
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.then:                                          ; preds = %entry
  %periodic = getelementptr inbounds %struct.brcms_timer, ptr %work, i32 0, i32 5
  %4 = ptrtoint ptr %periodic to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %periodic, align 4, !range !235
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wl, align 4
  %callbacks = getelementptr inbounds %struct.brcms_info, ptr %7, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %callbacks, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %callbacks, i32 1, i32 3, i32 1) #11
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %callbacks, ptr %callbacks, i32 1, ptr elementtype(i32) %callbacks) #11, !srcloc !236
  %9 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %wl, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %ieee_hw = getelementptr inbounds %struct.brcms_pub, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %ieee_hw to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ieee_hw, align 4
  %ms = getelementptr inbounds %struct.brcms_timer, ptr %work, i32 0, i32 4
  %15 = ptrtoint ptr %ms to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ms, align 4
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %16) #11
  tail call void @ieee80211_queue_delayed_work(ptr noundef %14, ptr noundef %work, i32 noundef %call2.i) #11
  br label %if.end

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %set to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %set, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  %fn = getelementptr inbounds %struct.brcms_timer, ptr %work, i32 0, i32 2
  %18 = ptrtoint ptr %fn to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fn, align 4
  %arg = getelementptr inbounds %struct.brcms_timer, ptr %work, i32 0, i32 3
  %20 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arg, align 4
  tail call void %19(ptr noundef %21) #11
  br label %if.end6

if.end6:                                          ; preds = %if.end, %entry.if.end6_crit_edge
  %22 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %wl, align 4
  %callbacks8 = getelementptr inbounds %struct.brcms_info, ptr %23, i32 0, i32 7
  %call.i.i22 = tail call zeroext i1 @__kasan_check_write(ptr noundef %callbacks8, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %callbacks8, i32 1, i32 3, i32 1) #11
  %24 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %callbacks8, ptr %callbacks8, i32 1, ptr elementtype(i32) %callbacks8) #11, !srcloc !237
  %25 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %wl, align 4
  %lock10 = getelementptr inbounds %struct.brcms_info, ptr %26, i32 0, i32 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock10) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @brcms_add_timer(ptr noundef %t, i32 noundef %ms, i32 noundef %periodic) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %wl = getelementptr inbounds %struct.brcms_timer, ptr %t, i32 0, i32 1
  %0 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wl, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %ieee_hw = getelementptr inbounds %struct.brcms_pub, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %ieee_hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ieee_hw, align 4
  %set = getelementptr inbounds %struct.brcms_timer, ptr %t, i32 0, i32 6
  %6 = ptrtoint ptr %set to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %set, align 1, !range !235
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.end.thread, label %if.end

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %ms323 = getelementptr inbounds %struct.brcms_timer, ptr %t, i32 0, i32 4
  %8 = ptrtoint ptr %ms323 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %ms, ptr %ms323, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %periodic)
  %tobool424 = icmp ne i32 %periodic, 0
  %periodic525 = getelementptr inbounds %struct.brcms_timer, ptr %t, i32 0, i32 5
  %frombool26 = zext i1 %tobool424 to i8
  %9 = ptrtoint ptr %periodic525 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %frombool26, ptr %periodic525, align 4
  br label %if.then8

if.end:                                           ; preds = %entry
  %wlc = getelementptr inbounds %struct.brcms_info, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %wlc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wlc, align 4
  %hw2 = getelementptr inbounds %struct.brcms_c_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %hw2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw2, align 4
  %d11core = getelementptr inbounds %struct.brcms_hardware, ptr %13, i32 0, i32 14
  %14 = ptrtoint ptr %d11core to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %d11core, align 4
  %dev = getelementptr inbounds %struct.bcma_device, ptr %15, i32 0, i32 2
  %name = getelementptr inbounds %struct.brcms_timer, ptr %t, i32 0, i32 8
  %16 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %name, align 4
  tail call void (ptr, i32, ptr, ptr, ...) @__brcms_dbg(ptr noundef %dev, i32 noundef 1, ptr noundef nonnull @__func__.brcms_add_timer, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.brcms_add_timer, ptr noundef %17, i32 noundef %periodic) #11
  %18 = ptrtoint ptr %set to i32
  call void @__asan_load1_noabort(i32 %18)
  %.pr = load i8, ptr %set, align 1
  %ms3 = getelementptr inbounds %struct.brcms_timer, ptr %t, i32 0, i32 4
  %19 = ptrtoint ptr %ms3 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %ms, ptr %ms3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %periodic)
  %tobool4 = icmp ne i32 %periodic, 0
  %periodic5 = getelementptr inbounds %struct.brcms_timer, ptr %t, i32 0, i32 5
  %frombool = zext i1 %tobool4 to i8
  %20 = ptrtoint ptr %periodic5 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %frombool, ptr %periodic5, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool7.not = icmp eq i8 %.pr, 0
  br i1 %tobool7.not, label %if.end.if.then8_crit_edge, label %if.end.if.else.i_crit_edge

if.end.if.else.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

if.end.if.then8_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then8

if.then8:                                         ; preds = %if.end.if.then8_crit_edge, %if.end.thread
  %21 = ptrtoint ptr %set to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %set, align 1
  %22 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %wl, align 4
  %callbacks = getelementptr inbounds %struct.brcms_info, ptr %23, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %callbacks, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %callbacks, i32 1, i32 3, i32 1) #11
  %24 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %callbacks, ptr %callbacks, i32 1, ptr elementtype(i32) %callbacks) #11, !srcloc !236
  br label %if.else.i

if.else.i:                                        ; preds = %if.then8, %if.end.if.else.i_crit_edge
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %ms) #11
  tail call void @ieee80211_queue_delayed_work(ptr noundef %5, ptr noundef %t, i32 noundef %call2.i) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_queue_delayed_work(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @brcms_del_timer(ptr noundef %t) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %set = getelementptr inbounds %struct.brcms_timer, ptr %t, i32 0, i32 6
  %0 = ptrtoint ptr %set to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %set, align 1, !range !235
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.then

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %set to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %set, align 1
  %call = tail call zeroext i1 @cancel_delayed_work(ptr noundef %t) #11
  br i1 %call, label %if.end, label %if.then.return_crit_edge

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %wl = getelementptr inbounds %struct.brcms_timer, ptr %t, i32 0, i32 1
  %3 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wl, align 4
  %callbacks = getelementptr inbounds %struct.brcms_info, ptr %4, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %callbacks, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %callbacks, i32 1, i32 3, i32 1) #11
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %callbacks, ptr %callbacks, i32 1, ptr elementtype(i32) %callbacks) #11, !srcloc !237
  br label %return

return:                                           ; preds = %if.end, %if.then.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ false, %if.then.return_crit_edge ], [ true, %if.end ], [ true, %entry.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @brcms_free_timer(ptr noundef %t) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %wl1 = getelementptr inbounds %struct.brcms_timer, ptr %t, i32 0, i32 1
  %0 = ptrtoint ptr %wl1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wl1, align 4
  %set.i = getelementptr inbounds %struct.brcms_timer, ptr %t, i32 0, i32 6
  %2 = ptrtoint ptr %set.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %set.i, align 1, !range !235
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %entry.brcms_del_timer.exit_crit_edge, label %if.then.i

entry.brcms_del_timer.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %brcms_del_timer.exit

if.then.i:                                        ; preds = %entry
  %4 = ptrtoint ptr %set.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %set.i, align 1
  %call.i = tail call zeroext i1 @cancel_delayed_work(ptr noundef %t) #11
  br i1 %call.i, label %if.end.i, label %if.then.i.brcms_del_timer.exit_crit_edge

if.then.i.brcms_del_timer.exit_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %brcms_del_timer.exit

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %wl1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wl1, align 4
  %callbacks.i = getelementptr inbounds %struct.brcms_info, ptr %6, i32 0, i32 7
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %callbacks.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %callbacks.i, i32 1, i32 3, i32 1) #11
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %callbacks.i, ptr %callbacks.i, i32 1, ptr elementtype(i32) %callbacks.i) #11, !srcloc !237
  br label %brcms_del_timer.exit

brcms_del_timer.exit:                             ; preds = %if.end.i, %if.then.i.brcms_del_timer.exit_crit_edge, %entry.brcms_del_timer.exit_crit_edge
  %timers = getelementptr inbounds %struct.brcms_info, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %timers to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %timers, align 4
  %cmp = icmp eq ptr %9, %t
  br i1 %cmp, label %brcms_del_timer.exit.cleanup.sink.split_crit_edge, label %brcms_del_timer.exit.while.cond_crit_edge

brcms_del_timer.exit.while.cond_crit_edge:        ; preds = %brcms_del_timer.exit
  br label %while.cond

brcms_del_timer.exit.cleanup.sink.split_crit_edge: ; preds = %brcms_del_timer.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %brcms_del_timer.exit.while.cond_crit_edge
  %tmp.0 = phi ptr [ %11, %while.body.while.cond_crit_edge ], [ %9, %brcms_del_timer.exit.while.cond_crit_edge ]
  %tobool.not = icmp eq ptr %tmp.0, null
  br i1 %tobool.not, label %while.cond.cleanup_crit_edge, label %while.body

while.cond.cleanup_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.body:                                       ; preds = %while.cond
  %next5 = getelementptr inbounds %struct.brcms_timer, ptr %tmp.0, i32 0, i32 7
  %10 = ptrtoint ptr %next5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %next5, align 4
  %cmp6 = icmp eq ptr %11, %t
  br i1 %cmp6, label %if.then7, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond

if.then7:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  %next5.le = getelementptr inbounds %struct.brcms_timer, ptr %tmp.0, i32 0, i32 7
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then7, %brcms_del_timer.exit.cleanup.sink.split_crit_edge
  %next5.le.sink = phi ptr [ %next5.le, %if.then7 ], [ %timers, %brcms_del_timer.exit.cleanup.sink.split_crit_edge ]
  %next8 = getelementptr inbounds %struct.brcms_timer, ptr %t, i32 0, i32 7
  %12 = ptrtoint ptr %next8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %next8, align 4
  %14 = ptrtoint ptr %next5.le.sink to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %next5.le.sink, align 4
  %name10 = getelementptr inbounds %struct.brcms_timer, ptr %t, i32 0, i32 8
  %15 = ptrtoint ptr %name10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %name10, align 4
  tail call void @kfree(ptr noundef %16) #11
  tail call void @kfree(ptr noundef %t) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %while.cond.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @brcms_ucode_init_buf(ptr nocapture noundef readonly %wl, ptr nocapture noundef writeonly %pbuf, i32 noundef %idx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %fw = getelementptr inbounds %struct.brcms_info, ptr %wl, i32 0, i32 11
  %0 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp50.not = icmp eq i32 %1, 0
  br i1 %cmp50.not, label %entry.for.end19_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end19_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end19

for.body:                                         ; preds = %for.inc17.for.body_crit_edge, %entry.for.body_crit_edge
  %i.051 = phi i32 [ %inc18, %for.inc17.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx5 = getelementptr %struct.brcms_info, ptr %wl, i32 0, i32 11, i32 3, i32 %i.051
  %2 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp647.not = icmp eq i32 %3, 0
  br i1 %cmp647.not, label %for.body.for.inc17_crit_edge, label %for.body7.preheader

for.body.for.inc17_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc17

for.body7.preheader:                              ; preds = %for.body
  %arrayidx = getelementptr %struct.brcms_info, ptr %wl, i32 0, i32 11, i32 2, i32 %i.051
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %data = getelementptr inbounds %struct.firmware, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  br label %for.body7

for.body7:                                        ; preds = %for.inc.for.body7_crit_edge, %for.body7.preheader
  %hdr.049 = phi ptr [ %incdec.ptr, %for.inc.for.body7_crit_edge ], [ %7, %for.body7.preheader ]
  %entry1.048 = phi i32 [ %inc, %for.inc.for.body7_crit_edge ], [ 0, %for.body7.preheader ]
  %idx9 = getelementptr inbounds %struct.firmware_hdr, ptr %hdr.049, i32 0, i32 2
  %8 = ptrtoint ptr %idx9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %idx9, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %idx)
  %cmp10 = icmp eq i32 %10, %idx
  br i1 %cmp10, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body7
  %len8.le = getelementptr inbounds %struct.firmware_hdr, ptr %hdr.049, i32 0, i32 1
  %11 = ptrtoint ptr %len8.le to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len8.le, align 4
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %arrayidx12 = getelementptr %struct.brcms_info, ptr %wl, i32 0, i32 11, i32 1, i32 %i.051
  %14 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx12, align 4
  %data13 = getelementptr inbounds %struct.firmware, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %data13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data13, align 4
  %18 = ptrtoint ptr %hdr.049 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %hdr.049, align 4
  %call.i = tail call noalias ptr @kvmalloc_node(i32 noundef %13, i32 noundef 3264, i32 noundef -1) #15
  %20 = ptrtoint ptr %pbuf to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i, ptr %pbuf, align 4
  %cmp14 = icmp eq ptr %call.i, null
  br i1 %cmp14, label %if.then.cleanup20_crit_edge, label %cleanup.thread

if.then.cleanup20_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup20

cleanup.thread:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %21 = tail call i32 @llvm.bswap.i32(i32 %19)
  %add.ptr = getelementptr i8, ptr %17, i32 %21
  %22 = call ptr @memcpy(ptr %call.i, ptr %add.ptr, i32 %13)
  br label %cleanup20

for.inc:                                          ; preds = %for.body7
  %inc = add nuw i32 %entry1.048, 1
  %incdec.ptr = getelementptr %struct.firmware_hdr, ptr %hdr.049, i32 1
  %exitcond.not = icmp eq i32 %inc, %3
  br i1 %exitcond.not, label %for.inc.for.inc17_crit_edge, label %for.inc.for.body7_crit_edge

for.inc.for.body7_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body7

for.inc.for.inc17_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc17

for.inc17:                                        ; preds = %for.inc.for.inc17_crit_edge, %for.body.for.inc17_crit_edge
  %inc18 = add nuw i32 %i.051, 1
  %exitcond55.not = icmp eq i32 %inc18, %1
  br i1 %exitcond55.not, label %for.inc17.for.end19_crit_edge, label %for.inc17.for.body_crit_edge

for.inc17.for.body_crit_edge:                     ; preds = %for.inc17
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc17.for.end19_crit_edge:                    ; preds = %for.inc17
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end19

for.end19:                                        ; preds = %for.inc17.for.end19_crit_edge, %entry.for.end19_crit_edge
  %wlc = getelementptr inbounds %struct.brcms_info, ptr %wl, i32 0, i32 1
  %23 = ptrtoint ptr %wlc to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %wlc, align 4
  %hw = getelementptr inbounds %struct.brcms_c_info, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hw, align 4
  %d11core = getelementptr inbounds %struct.brcms_hardware, ptr %26, i32 0, i32 14
  %27 = ptrtoint ptr %d11core to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %d11core, align 4
  %dev = getelementptr inbounds %struct.bcma_device, ptr %28, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__brcms_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %idx) #11
  %29 = ptrtoint ptr %pbuf to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %pbuf, align 4
  br label %cleanup20

cleanup20:                                        ; preds = %for.end19, %cleanup.thread, %if.then.cleanup20_crit_edge
  %retval.3 = phi i32 [ 0, %cleanup.thread ], [ -61, %if.then.cleanup20_crit_edge ], [ -61, %for.end19 ]
  ret i32 %retval.3
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @brcms_ucode_init_uint(ptr nocapture noundef readonly %wl, ptr nocapture noundef writeonly %n_bytes, i32 noundef %idx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %fw = getelementptr inbounds %struct.brcms_info, ptr %wl, i32 0, i32 11
  %0 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp45.not = icmp eq i32 %1, 0
  br i1 %cmp45.not, label %entry.for.end18_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end18_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end18

for.body:                                         ; preds = %for.inc16.for.body_crit_edge, %entry.for.body_crit_edge
  %i.046 = phi i32 [ %inc17, %for.inc16.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx5 = getelementptr %struct.brcms_info, ptr %wl, i32 0, i32 11, i32 3, i32 %i.046
  %2 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp642.not = icmp eq i32 %3, 0
  br i1 %cmp642.not, label %for.body.for.inc16_crit_edge, label %for.body7.preheader

for.body.for.inc16_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc16

for.body7.preheader:                              ; preds = %for.body
  %arrayidx = getelementptr %struct.brcms_info, ptr %wl, i32 0, i32 11, i32 2, i32 %i.046
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %data = getelementptr inbounds %struct.firmware, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  br label %for.body7

for.body7:                                        ; preds = %for.inc.for.body7_crit_edge, %for.body7.preheader
  %hdr.044 = phi ptr [ %incdec.ptr, %for.inc.for.body7_crit_edge ], [ %7, %for.body7.preheader ]
  %entry1.043 = phi i32 [ %inc, %for.inc.for.body7_crit_edge ], [ 0, %for.body7.preheader ]
  %idx8 = getelementptr inbounds %struct.firmware_hdr, ptr %hdr.044, i32 0, i32 2
  %8 = ptrtoint ptr %idx8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %idx8, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %idx)
  %cmp9 = icmp eq i32 %10, %idx
  br i1 %cmp9, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body7
  %len = getelementptr inbounds %struct.firmware_hdr, ptr %hdr.044, i32 0, i32 1
  %11 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %12)
  %cmp13.not = icmp eq i32 %12, 67108864
  br i1 %cmp13.not, label %if.end, label %if.then14

if.then14:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %wlc = getelementptr inbounds %struct.brcms_info, ptr %wl, i32 0, i32 1
  %13 = ptrtoint ptr %wlc to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %wlc, align 4
  %hw = getelementptr inbounds %struct.brcms_c_info, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hw, align 4
  %d11core = getelementptr inbounds %struct.brcms_hardware, ptr %16, i32 0, i32 14
  %17 = ptrtoint ptr %d11core to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %d11core, align 4
  %dev = getelementptr inbounds %struct.bcma_device, ptr %18, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__brcms_err(ptr noundef %dev, ptr noundef nonnull @.str.9) #11
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx11 = getelementptr %struct.brcms_info, ptr %wl, i32 0, i32 11, i32 1, i32 %i.046
  %19 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx11, align 4
  %data12 = getelementptr inbounds %struct.firmware, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %data12 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data12, align 4
  %23 = ptrtoint ptr %hdr.044 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %hdr.044, align 4
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  %add.ptr = getelementptr i8, ptr %22, i32 %25
  %26 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %add.ptr, align 4
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  %29 = ptrtoint ptr %n_bytes to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %n_bytes, align 4
  br label %cleanup

for.inc:                                          ; preds = %for.body7
  %inc = add nuw i32 %entry1.043, 1
  %incdec.ptr = getelementptr %struct.firmware_hdr, ptr %hdr.044, i32 1
  %exitcond.not = icmp eq i32 %inc, %3
  br i1 %exitcond.not, label %for.inc.for.inc16_crit_edge, label %for.inc.for.body7_crit_edge

for.inc.for.body7_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body7

for.inc.for.inc16_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc16

for.inc16:                                        ; preds = %for.inc.for.inc16_crit_edge, %for.body.for.inc16_crit_edge
  %inc17 = add nuw i32 %i.046, 1
  %exitcond50.not = icmp eq i32 %inc17, %1
  br i1 %exitcond50.not, label %for.inc16.for.end18_crit_edge, label %for.inc16.for.body_crit_edge

for.inc16.for.body_crit_edge:                     ; preds = %for.inc16
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc16.for.end18_crit_edge:                    ; preds = %for.inc16
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end18

for.end18:                                        ; preds = %for.inc16.for.end18_crit_edge, %entry.for.end18_crit_edge
  %wlc19 = getelementptr inbounds %struct.brcms_info, ptr %wl, i32 0, i32 1
  %30 = ptrtoint ptr %wlc19 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %wlc19, align 4
  %hw20 = getelementptr inbounds %struct.brcms_c_info, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %hw20 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hw20, align 4
  %d11core21 = getelementptr inbounds %struct.brcms_hardware, ptr %33, i32 0, i32 14
  %34 = ptrtoint ptr %d11core21 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %d11core21, align 4
  %dev22 = getelementptr inbounds %struct.bcma_device, ptr %35, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__brcms_err(ptr noundef %dev22, ptr noundef nonnull @.str.10, i32 noundef %idx) #11
  br label %cleanup

cleanup:                                          ; preds = %for.end18, %if.end, %if.then14
  %retval.0 = phi i32 [ -42, %if.then14 ], [ 0, %if.end ], [ -42, %for.end18 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @brcms_ucode_free_buf(ptr noundef %p) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kvfree(ptr noundef %p) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @brcms_check_firmwares(ptr nocapture noundef readonly %wl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %wiphy17 = getelementptr inbounds %struct.brcms_info, ptr %wl, i32 0, i32 12
  br label %for.body

for.body:                                         ; preds = %for.inc54.for.body_crit_edge, %entry
  %i.0110 = phi i32 [ 0, %entry ], [ %inc55, %for.inc54.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.brcms_info, ptr %wl, i32 0, i32 11, i32 1, i32 %i.0110
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %arrayidx6 = getelementptr %struct.brcms_info, ptr %wl, i32 0, i32 11, i32 2, i32 %i.0110
  %2 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx6, align 4
  %cmp7 = icmp eq ptr %1, null
  %cmp8 = icmp eq ptr %3, null
  %or.cond102 = select i1 %cmp7, i1 %cmp8, i1 false
  br i1 %or.cond102, label %for.body.land.lhs.true58_crit_edge, label %if.else

for.body.land.lhs.true58_crit_edge:               ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true58

if.else:                                          ; preds = %for.body
  %or.cond103 = select i1 %cmp7, i1 true, i1 %cmp8
  br i1 %or.cond103, label %do.end, label %if.else12

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %wiphy17 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wiphy17, align 4
  %dev = getelementptr inbounds %struct.wiphy, ptr %5, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12) #16
  br label %if.end69

if.else12:                                        ; preds = %if.else
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %3, align 4
  %rem = urem i32 %7, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp eq i32 %rem, 0
  br i1 %tobool.not, label %if.else20, label %do.end16

do.end16:                                         ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %wiphy17 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wiphy17, align 4
  %dev18 = getelementptr inbounds %struct.wiphy, ptr %9, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev18, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.12, i32 noundef %7, i32 noundef 12) #16
  br label %if.end69

if.else20:                                        ; preds = %if.else12
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %1, align 4
  %12 = add i32 %11, -150001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -110001, i32 %12)
  %13 = icmp ult i32 %12, -110001
  br i1 %13, label %do.end29, label %if.else33

do.end29:                                         ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %wiphy17 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %wiphy17, align 4
  %dev31 = getelementptr inbounds %struct.wiphy, ptr %15, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev31, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.12, i32 noundef %11) #16
  br label %if.end69

if.else33:                                        ; preds = %if.else20
  %arrayidx36 = getelementptr %struct.brcms_info, ptr %wl, i32 0, i32 11, i32 3, i32 %i.0110
  %16 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx36, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp37106.not = icmp eq i32 %17, 0
  br i1 %cmp37106.not, label %if.else33.for.inc54_crit_edge, label %for.body41.preheader

if.else33.for.inc54_crit_edge:                    ; preds = %if.else33
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc54

for.body41.preheader:                             ; preds = %if.else33
  %data = getelementptr inbounds %struct.firmware, ptr %3, i32 0, i32 1
  %18 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data, align 4
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %1, align 4
  br label %for.body41

for.body41:                                       ; preds = %for.inc.for.body41_crit_edge, %for.body41.preheader
  %ucode_hdr.0109 = phi ptr [ %incdec.ptr, %for.inc.for.body41_crit_edge ], [ %19, %for.body41.preheader ]
  %entry1.0108 = phi i32 [ %inc, %for.inc.for.body41_crit_edge ], [ 0, %for.body41.preheader ]
  %22 = ptrtoint ptr %ucode_hdr.0109 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ucode_hdr.0109, align 4
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  %len = getelementptr inbounds %struct.firmware_hdr, ptr %ucode_hdr.0109, i32 0, i32 1
  %25 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %len, align 4
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  %add = add i32 %27, %24
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %21)
  %cmp43 = icmp ugt i32 %add, %21
  br i1 %cmp43, label %for.inc.thread, label %for.inc

for.inc.thread:                                   ; preds = %for.body41
  call void @__sanitizer_cov_trace_pc() #13
  %28 = ptrtoint ptr %wiphy17 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %wiphy17, align 4
  %dev49 = getelementptr inbounds %struct.wiphy, ptr %29, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev49, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.12) #16
  br label %if.end69

for.inc:                                          ; preds = %for.body41
  %inc = add nuw i32 %entry1.0108, 1
  %incdec.ptr = getelementptr %struct.firmware_hdr, ptr %ucode_hdr.0109, i32 1
  %30 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx36, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %31)
  %cmp37 = icmp uge i32 %inc, %31
  %32 = or i1 %cmp43, %cmp37
  br i1 %32, label %for.inc.for.inc54_crit_edge, label %for.inc.for.body41_crit_edge

for.inc.for.body41_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body41

for.inc.for.inc54_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc54

for.inc54:                                        ; preds = %for.inc.for.inc54_crit_edge, %if.else33.for.inc54_crit_edge
  %inc55 = add nuw nsw i32 %i.0110, 1
  %cmp = icmp ult i32 %i.0110, 3
  br i1 %cmp, label %for.inc54.for.body_crit_edge, label %for.inc54.land.lhs.true58_crit_edge

for.inc54.land.lhs.true58_crit_edge:              ; preds = %for.inc54
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true58

for.inc54.for.body_crit_edge:                     ; preds = %for.inc54
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

land.lhs.true58:                                  ; preds = %for.inc54.land.lhs.true58_crit_edge, %for.body.land.lhs.true58_crit_edge
  %i.0.lcssa127 = phi i32 [ %inc55, %for.inc54.land.lhs.true58_crit_edge ], [ %i.0110, %for.body.land.lhs.true58_crit_edge ]
  %fw59 = getelementptr inbounds %struct.brcms_info, ptr %wl, i32 0, i32 11
  %33 = ptrtoint ptr %fw59 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %fw59, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %i.0.lcssa127)
  %cmp60.not = icmp eq i32 %34, %i.0.lcssa127
  br i1 %cmp60.not, label %land.lhs.true58.if.end69_crit_edge, label %do.end64

land.lhs.true58.if.end69_crit_edge:               ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

do.end64:                                         ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #13
  %35 = ptrtoint ptr %wiphy17 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %wiphy17, align 4
  %dev66 = getelementptr inbounds %struct.wiphy, ptr %36, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev66, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.12, i32 noundef %34) #16
  br label %if.end69

if.end69:                                         ; preds = %do.end64, %land.lhs.true58.if.end69_crit_edge, %for.inc.thread, %do.end29, %do.end16, %do.end
  %rc.4 = phi i32 [ -9, %do.end64 ], [ 0, %land.lhs.true58.if.end69_crit_edge ], [ -9, %for.inc.thread ], [ -9, %do.end29 ], [ -9, %do.end16 ], [ -9, %do.end ]
  ret i32 %rc.4
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @brcms_rfkill_set_hw_state(ptr noundef %wl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %wlc = getelementptr inbounds %struct.brcms_info, ptr %wl, i32 0, i32 1
  %0 = ptrtoint ptr %wlc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wlc, align 4
  %call = tail call zeroext i1 @brcms_c_check_radio_disabled(ptr noundef %1) #11
  %lock = getelementptr inbounds %struct.brcms_info, ptr %wl, i32 0, i32 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #11
  %2 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wl, align 4
  %ieee_hw = getelementptr inbounds %struct.brcms_pub, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %ieee_hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ieee_hw, align 4
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wiphy, align 8
  tail call void @wiphy_rfkill_set_hw_state_reason(ptr noundef %7, i1 noundef zeroext %call, i32 noundef 1) #11
  br i1 %call, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wl, align 4
  %ieee_hw3 = getelementptr inbounds %struct.brcms_pub, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %ieee_hw3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ieee_hw3, align 4
  %wiphy4 = getelementptr inbounds %struct.ieee80211_hw, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %wiphy4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %wiphy4, align 8
  tail call void @wiphy_rfkill_start_polling(ptr noundef %13) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #11
  ret i1 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @brcms_c_check_radio_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wiphy_rfkill_start_polling(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @brcms_driver_init(ptr nocapture noundef readnone %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__bcma_driver_register(ptr noundef nonnull @brcms_bcma_driver, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, i32 noundef %call) #16
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bcma_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcms_bcma_probe(ptr noundef %pdev) #0 align 64 {
entry:
  %err.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.bcma_device, ptr %pdev, i32 0, i32 2
  %id = getelementptr inbounds %struct.bcma_device, ptr %pdev, i32 0, i32 1
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %id, align 4
  %conv = zext i16 %1 to i32
  %id2 = getelementptr inbounds %struct.bcma_device, ptr %pdev, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %id2 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %id2, align 2
  %conv3 = zext i16 %3 to i32
  %rev = getelementptr inbounds %struct.bcma_device, ptr %pdev, i32 0, i32 1, i32 2
  %4 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %rev, align 4
  %conv5 = zext i8 %5 to i32
  %class = getelementptr inbounds %struct.bcma_device, ptr %pdev, i32 0, i32 1, i32 3
  %6 = ptrtoint ptr %class to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %class, align 1
  %conv7 = zext i8 %7 to i32
  %irq = getelementptr inbounds %struct.bcma_device, ptr %pdev, i32 0, i32 4
  %8 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.32, i32 noundef %conv, i32 noundef %conv3, i32 noundef %conv5, i32 noundef %conv7, i32 noundef %9) #16
  %10 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1215, i16 %11)
  %cmp.not = icmp eq i16 %11, 1215
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %12 = ptrtoint ptr %id2 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %id2, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2066, i16 %13)
  %cmp15.not = icmp eq i16 %13, 2066
  br i1 %cmp15.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call.i = tail call ptr @ieee80211_alloc_hw_nm(i32 noundef 748, ptr noundef nonnull @brcms_ops, ptr noundef null) #11
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %do.end20, label %if.end22

do.end20:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.33) #16
  br label %cleanup

if.end22:                                         ; preds = %if.end
  %wiphy.i = getelementptr inbounds %struct.ieee80211_hw, ptr %call.i, i32 0, i32 1
  %14 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %wiphy.i, align 8
  %parent.i.i = getelementptr inbounds %struct.wiphy, ptr %15, i32 0, i32 56, i32 1
  %16 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %dev, ptr %parent.i.i, align 8
  %drvdata1.i = getelementptr inbounds %struct.bcma_device, ptr %pdev, i32 0, i32 13
  %17 = ptrtoint ptr %drvdata1.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i, ptr %drvdata1.i, align 4
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %call.i, i32 0, i32 3
  %18 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %priv, align 8
  %20 = call ptr @memset(ptr %19, i32 0, i32 748)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err.i) #11
  %21 = load i32, ptr @n_adapters_found, align 4
  %22 = ptrtoint ptr %err.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %err.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.i = icmp slt i32 %21, 0
  br i1 %cmp.i, label %if.end22.do.end29_crit_edge, label %if.end.i

if.end22.do.end29_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end29

if.end.i:                                         ; preds = %if.end22
  %23 = ptrtoint ptr %drvdata1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %drvdata1.i, align 4
  %cmp1.not.i = icmp eq ptr %24, null
  br i1 %cmp1.not.i, label %do.end.i, label %lor.lhs.false.critedge.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 1141, i32 noundef 9, ptr noundef null) #11
  br label %do.end29

lor.lhs.false.critedge.i:                         ; preds = %if.end.i
  %priv.i = getelementptr inbounds %struct.ieee80211_hw, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %priv.i, align 8
  %cmp27.i = icmp eq ptr %26, null
  br i1 %cmp27.i, label %do.end43.i, label %if.end59.i, !prof !238

do.end43.i:                                       ; preds = %lor.lhs.false.critedge.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 1141, i32 noundef 9, ptr noundef null) #11
  br label %do.end29

if.end59.i:                                       ; preds = %lor.lhs.false.critedge.i
  %wiphy.i51 = getelementptr inbounds %struct.ieee80211_hw, ptr %24, i32 0, i32 1
  %27 = ptrtoint ptr %wiphy.i51 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %wiphy.i51, align 8
  %wiphy60.i = getelementptr inbounds %struct.brcms_info, ptr %26, i32 0, i32 12
  %29 = ptrtoint ptr %wiphy60.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %wiphy60.i, align 4
  %callbacks.i = getelementptr inbounds %struct.brcms_info, ptr %26, i32 0, i32 7
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %callbacks.i, i32 noundef 4) #11
  %30 = ptrtoint ptr %callbacks.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile i32 0, ptr %callbacks.i, align 4
  %tx_flush_wq.i = getelementptr inbounds %struct.brcms_info, ptr %26, i32 0, i32 6
  tail call void @__init_waitqueue_head(ptr noundef %tx_flush_wq.i, ptr noundef nonnull @.str.76, ptr noundef nonnull @brcms_attach.__key) #11
  %tasklet.i = getelementptr inbounds %struct.brcms_info, ptr %26, i32 0, i32 9
  tail call void @tasklet_setup(ptr noundef %tasklet.i, ptr noundef nonnull @brcms_dpc) #11
  %lock.i = getelementptr inbounds %struct.brcms_info, ptr %26, i32 0, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.78, ptr noundef nonnull @brcms_attach.__key.77, i16 noundef signext 3) #11
  %isr_lock.i = getelementptr inbounds %struct.brcms_info, ptr %26, i32 0, i32 5
  tail call void @__raw_spin_lock_init(ptr noundef %isr_lock.i, ptr noundef nonnull @.str.80, ptr noundef nonnull @brcms_attach.__key.79, i16 noundef signext 3) #11
  %call72.i = call ptr @brcms_c_attach(ptr noundef nonnull %26, ptr noundef %pdev, i32 noundef %21, i1 noundef zeroext false, ptr noundef nonnull %err.i) #11
  %wlc.i = getelementptr inbounds %struct.brcms_info, ptr %26, i32 0, i32 1
  %31 = ptrtoint ptr %wlc.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call72.i, ptr %wlc.i, align 4
  %tobool74.not.i = icmp eq ptr %call72.i, null
  br i1 %tobool74.not.i, label %do.end78.i, label %if.end80.i

do.end78.i:                                       ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #13
  %32 = ptrtoint ptr %wiphy60.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %wiphy60.i, align 4
  %dev.i = getelementptr inbounds %struct.wiphy, ptr %33, i32 0, i32 56
  %34 = ptrtoint ptr %err.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %err.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.31, i32 noundef %35) #16
  br label %fail.i

if.end80.i:                                       ; preds = %if.end59.i
  %call82.i = call ptr @brcms_c_pub(ptr noundef nonnull %call72.i) #11
  %36 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call82.i, ptr %26, align 4
  %ieee_hw.i = getelementptr inbounds %struct.brcms_pub, ptr %call82.i, i32 0, i32 1
  %37 = ptrtoint ptr %ieee_hw.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %24, ptr %ieee_hw.i, align 4
  %38 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %irq, align 4
  %call.i.i = call i32 @request_threaded_irq(i32 noundef %39, ptr noundef nonnull @brcms_isr, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.31, ptr noundef nonnull %26) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool85.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool85.not.i, label %if.end92.i, label %do.end89.i

do.end89.i:                                       ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #13
  %40 = ptrtoint ptr %wiphy60.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %wiphy60.i, align 4
  %dev91.i = getelementptr inbounds %struct.wiphy, ptr %41, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev91.i, ptr noundef nonnull @.str.84, i32 noundef %21) #16
  br label %fail.i

if.end92.i:                                       ; preds = %if.end80.i
  %42 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %irq, align 4
  %irq94.i = getelementptr inbounds %struct.brcms_info, ptr %26, i32 0, i32 3
  %44 = ptrtoint ptr %irq94.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %irq94.i, align 4
  %45 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %26, align 4
  %call96.i = call i32 @brcms_c_module_register(ptr noundef %46, ptr noundef nonnull @.str.86, ptr noundef nonnull %26, ptr noundef null) #11
  %flags.i.i.i = getelementptr inbounds %struct.ieee80211_hw, ptr %24, i32 0, i32 4
  %47 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %flags.i.i.i, align 4
  %or.i.i16.i.i = or i32 %48, 65680
  store i32 %or.i.i16.i.i, ptr %flags.i.i.i, align 4
  %call.i223.i = call i32 @brcms_c_get_header_len() #11
  %extra_tx_headroom.i.i = getelementptr inbounds %struct.ieee80211_hw, ptr %24, i32 0, i32 5
  %49 = ptrtoint ptr %extra_tx_headroom.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %call.i223.i, ptr %extra_tx_headroom.i.i, align 4
  %queues.i.i = getelementptr inbounds %struct.ieee80211_hw, ptr %24, i32 0, i32 11
  %50 = ptrtoint ptr %queues.i.i to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 4, ptr %queues.i.i, align 4
  %max_rates.i.i = getelementptr inbounds %struct.ieee80211_hw, ptr %24, i32 0, i32 14
  %51 = ptrtoint ptr %max_rates.i.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 2, ptr %max_rates.i.i, align 1
  %52 = ptrtoint ptr %wiphy.i51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %wiphy.i51, align 8
  %interface_modes.i.i = getelementptr inbounds %struct.wiphy, ptr %53, i32 0, i32 9
  %54 = ptrtoint ptr %interface_modes.i.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 14, ptr %interface_modes.i.i, align 4
  %55 = load ptr, ptr %wiphy.i51, align 8
  %arrayidx.i.i.i = getelementptr %struct.wiphy, ptr %55, i32 0, i32 14, i32 1
  %56 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx.i.i.i, align 1
  %58 = or i8 %57, 32
  store i8 %58, ptr %arrayidx.i.i.i, align 1
  %rate_control_algorithm.i.i = getelementptr inbounds %struct.ieee80211_hw, ptr %24, i32 0, i32 2
  %59 = ptrtoint ptr %rate_control_algorithm.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @.str.96, ptr %rate_control_algorithm.i.i, align 4
  %sta_data_size.i.i = getelementptr inbounds %struct.ieee80211_hw, ptr %24, i32 0, i32 8
  %60 = ptrtoint ptr %sta_data_size.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %sta_data_size.i.i, align 8
  %61 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %priv.i, align 8
  %wlc1.i.i.i = getelementptr inbounds %struct.brcms_info, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %wlc1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %wlc1.i.i.i, align 4
  %65 = load ptr, ptr %wiphy.i51, align 8
  %bands.i.i.i = getelementptr inbounds %struct.wiphy, ptr %65, i32 0, i32 53
  %66 = ptrtoint ptr %bands.i.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr null, ptr %bands.i.i.i, align 16
  %67 = load ptr, ptr %wiphy.i51, align 8
  %arrayidx4.i.i.i = getelementptr %struct.wiphy, ptr %67, i32 0, i32 53, i32 1
  %68 = ptrtoint ptr %arrayidx4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr null, ptr %arrayidx4.i.i.i, align 4
  %69 = load ptr, ptr %wlc1.i.i.i, align 4
  %call.i.i224.i = call zeroext i16 @brcms_c_get_phy_type(ptr noundef %69, i32 noundef 0) #11
  %70 = zext i16 %call.i.i224.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %70, ptr @__sancov_gen_cov_switch_values)
  switch i16 %call.i.i224.i, label %if.end92.i.do.end102.i_crit_edge [
    i16 8, label %if.end92.i.if.then.i.i.i_crit_edge
    i16 4, label %if.end92.i.if.then.i.i.i_crit_edge54
  ]

if.end92.i.if.then.i.i.i_crit_edge54:             ; preds = %if.end92.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i.i

if.end92.i.if.then.i.i.i_crit_edge:               ; preds = %if.end92.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i.i

if.end92.i.do.end102.i_crit_edge:                 ; preds = %if.end92.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end102.i

if.then.i.i.i:                                    ; preds = %if.end92.i.if.then.i.i.i_crit_edge, %if.end92.i.if.then.i.i.i_crit_edge54
  %bandstate.i.i.i = getelementptr inbounds %struct.brcms_c_info, ptr %64, i32 0, i32 11
  %71 = ptrtoint ptr %bandstate.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %bandstate.i.i.i, align 4
  %band11.i.i.i = getelementptr inbounds %struct.brcms_band, ptr %72, i32 0, i32 19
  %73 = call ptr @memcpy(ptr %band11.i.i.i, ptr @brcms_band_2GHz_nphy_template, i32 92)
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %call.i.i224.i)
  %cmp13.i.i.i = icmp eq i16 %call.i.i224.i, 8
  br i1 %cmp13.i.i.i, label %if.then15.i.i.i, label %if.then.i.i.i.if.end.i.i.i_crit_edge

if.then.i.i.i.if.end.i.i.i_crit_edge:             ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i.i

if.then15.i.i.i:                                  ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx16.i.i.i = getelementptr %struct.brcms_band, ptr %72, i32 0, i32 19, i32 5, i32 4, i32 0, i32 1
  %74 = ptrtoint ptr %arrayidx16.i.i.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 0, ptr %arrayidx16.i.i.i, align 1
  %rx_highest.i.i.i = getelementptr inbounds %struct.brcms_band, ptr %72, i32 0, i32 19, i32 5, i32 4, i32 1
  %75 = ptrtoint ptr %rx_highest.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %75, i32 2)
  store i16 18432, ptr %rx_highest.i.i.i, align 1
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then15.i.i.i, %if.then.i.i.i.if.end.i.i.i_crit_edge
  %76 = ptrtoint ptr %wiphy.i51 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %wiphy.i51, align 8
  %bands20.i.i.i = getelementptr inbounds %struct.wiphy, ptr %77, i32 0, i32 53
  %78 = ptrtoint ptr %bands20.i.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %band11.i.i.i, ptr %bands20.i.i.i, align 16
  %79 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %62, align 4
  %_nbands.i.i.i = getelementptr inbounds %struct.brcms_pub, ptr %80, i32 0, i32 11
  %81 = ptrtoint ptr %_nbands.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %_nbands.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %82)
  %cmp23.i.i.i = icmp ugt i32 %82, 1
  br i1 %cmp23.i.i.i, label %if.then25.i.i.i, label %if.end.i.i.i.if.end105.i_crit_edge

if.end.i.i.i.if.end105.i_crit_edge:               ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end105.i

if.then25.i.i.i:                                  ; preds = %if.end.i.i.i
  %83 = zext i16 %call.i.i224.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %83, ptr @__sancov_gen_cov_switch_values.102)
  switch i16 %call.i.i224.i, label %if.then25.i.i.i.do.end102.i_crit_edge [
    i16 8, label %if.then25.i.i.i.if.then33.i.i.i_crit_edge
    i16 4, label %if.then25.i.i.i.if.then33.i.i.i_crit_edge55
  ]

if.then25.i.i.i.if.then33.i.i.i_crit_edge55:      ; preds = %if.then25.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then33.i.i.i

if.then25.i.i.i.if.then33.i.i.i_crit_edge:        ; preds = %if.then25.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then33.i.i.i

if.then25.i.i.i.do.end102.i_crit_edge:            ; preds = %if.then25.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end102.i

if.then33.i.i.i:                                  ; preds = %if.then25.i.i.i.if.then33.i.i.i_crit_edge, %if.then25.i.i.i.if.then33.i.i.i_crit_edge55
  %arrayidx35.i.i.i = getelementptr %struct.brcms_c_info, ptr %64, i32 0, i32 11, i32 1
  %84 = ptrtoint ptr %arrayidx35.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %arrayidx35.i.i.i, align 4
  %band36.i.i.i = getelementptr inbounds %struct.brcms_band, ptr %85, i32 0, i32 19
  %86 = call ptr @memcpy(ptr %band36.i.i.i, ptr @brcms_band_5GHz_nphy_template, i32 92)
  %87 = ptrtoint ptr %wiphy.i51 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %wiphy.i51, align 8
  %arrayidx39.i.i.i = getelementptr %struct.wiphy, ptr %88, i32 0, i32 53, i32 1
  %89 = ptrtoint ptr %arrayidx39.i.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %band36.i.i.i, ptr %arrayidx39.i.i.i, align 4
  br label %if.end105.i

do.end102.i:                                      ; preds = %if.then25.i.i.i.do.end102.i_crit_edge, %if.end92.i.do.end102.i_crit_edge
  %90 = ptrtoint ptr %wiphy60.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %wiphy60.i, align 4
  %dev104.i = getelementptr inbounds %struct.wiphy, ptr %91, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev104.i, ptr noundef nonnull @.str.88, i32 noundef %21, ptr noundef nonnull @.str.82) #16
  br label %fail.i

if.end105.i:                                      ; preds = %if.then33.i.i.i, %if.end.i.i.i.if.end105.i_crit_edge
  %92 = ptrtoint ptr %wlc.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %wlc.i, align 4
  call void @brcms_c_regd_init(ptr noundef %93) #11
  %94 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %26, align 4
  %cur_etheraddr.i = getelementptr inbounds %struct.brcms_pub, ptr %95, i32 0, i32 17
  %96 = ptrtoint ptr %cur_etheraddr.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %perm.sroa.0.0.copyload.i = load i32, ptr %cur_etheraddr.i, align 4
  %perm.sroa.9.0.cur_etheraddr.sroa_idx.i = getelementptr inbounds %struct.brcms_pub, ptr %95, i32 0, i32 17, i32 4
  %97 = ptrtoint ptr %perm.sroa.9.0.cur_etheraddr.sroa_idx.i to i32
  call void @__asan_load2_noabort(i32 %97)
  %perm.sroa.9.0.copyload.i = load i16, ptr %perm.sroa.9.0.cur_etheraddr.sroa_idx.i, align 4
  %98 = and i32 %perm.sroa.0.0.copyload.i, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %tobool.i.not.i.i = icmp eq i32 %98, 0
  %conv.i.i.i = zext i16 %perm.sroa.9.0.copyload.i to i32
  %or.i.i.i = or i32 %perm.sroa.0.0.copyload.i, %conv.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i)
  %cmp.i.i.i = icmp ne i32 %or.i.i.i, 0
  %or.cond.i = select i1 %tobool.i.not.i.i, i1 %cmp.i.i.i, i1 false
  br i1 %or.cond.i, label %if.end144.critedge.i, label %do.end128.i, !prof !239

do.end128.i:                                      ; preds = %if.end105.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 1186, i32 noundef 9, ptr noundef null) #11
  br label %fail.i

if.end144.critedge.i:                             ; preds = %if.end105.i
  %99 = ptrtoint ptr %wiphy.i51 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %wiphy.i51, align 8
  %perm_addr.i.i = getelementptr inbounds %struct.wiphy, ptr %100, i32 0, i32 1
  %101 = ptrtoint ptr %perm_addr.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %perm.sroa.0.0.copyload.i, ptr %perm_addr.i.i, align 4
  %perm.sroa.9.0.perm_addr.i.sroa_idx.i = getelementptr inbounds %struct.wiphy, ptr %100, i32 0, i32 1, i32 4
  %102 = ptrtoint ptr %perm.sroa.9.0.perm_addr.i.sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 %perm.sroa.9.0.copyload.i, ptr %perm.sroa.9.0.perm_addr.i.sroa_idx.i, align 4
  %call146.i = call i32 @ieee80211_register_hw(ptr noundef nonnull %24) #11
  %103 = ptrtoint ptr %err.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %call146.i, ptr %err.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call146.i)
  %tobool147.not.i = icmp eq i32 %call146.i, 0
  br i1 %tobool147.not.i, label %if.end144.critedge.i.if.end154.i_crit_edge, label %do.end151.i

if.end144.critedge.i.if.end154.i_crit_edge:       ; preds = %if.end144.critedge.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end154.i

do.end151.i:                                      ; preds = %if.end144.critedge.i
  call void @__sanitizer_cov_trace_pc() #13
  %104 = ptrtoint ptr %wiphy60.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %wiphy60.i, align 4
  %dev153.i = getelementptr inbounds %struct.wiphy, ptr %105, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev153.i, ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.82, i32 noundef %call146.i) #16
  br label %if.end154.i

if.end154.i:                                      ; preds = %do.end151.i, %if.end144.critedge.i.if.end154.i_crit_edge
  %106 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %26, align 4
  %srom_ccode.i = getelementptr inbounds %struct.brcms_pub, ptr %107, i32 0, i32 21
  %108 = ptrtoint ptr %srom_ccode.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %srom_ccode.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %109)
  %tobool156.not.i = icmp eq i8 %109, 0
  br i1 %tobool156.not.i, label %if.end154.i.if.end32_crit_edge, label %land.lhs.true.i

if.end154.i.if.end32_crit_edge:                   ; preds = %if.end154.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32

land.lhs.true.i:                                  ; preds = %if.end154.i
  %110 = ptrtoint ptr %wiphy60.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %wiphy60.i, align 4
  %call161.i = call i32 @regulatory_hint(ptr noundef %111, ptr noundef %srom_ccode.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call161.i)
  %tobool162.not.i = icmp eq i32 %call161.i, 0
  br i1 %tobool162.not.i, label %land.lhs.true.i.if.end32_crit_edge, label %do.end166.i

land.lhs.true.i.if.end32_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32

do.end166.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  %112 = ptrtoint ptr %wiphy60.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %wiphy60.i, align 4
  %dev168.i = getelementptr inbounds %struct.wiphy, ptr %113, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev168.i, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.82) #16
  br label %if.end32

fail.i:                                           ; preds = %do.end128.i, %do.end102.i, %do.end89.i, %do.end78.i
  call fastcc void @brcms_free(ptr noundef nonnull %26) #11
  br label %do.end29

do.end29:                                         ; preds = %fail.i, %do.end43.i, %do.end.i, %if.end22.do.end29_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err.i) #11
  %call31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.33) #16
  call void @ieee80211_free_hw(ptr noundef nonnull %call.i) #11
  br label %cleanup

if.end32:                                         ; preds = %do.end166.i, %land.lhs.true.i.if.end32_crit_edge, %if.end154.i.if.end32_crit_edge
  %114 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %26, align 4
  call void @brcms_debugfs_attach(ptr noundef %115) #11
  %116 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %26, align 4
  call void @brcms_debugfs_create_files(ptr noundef %117) #11
  %118 = load i32, ptr @n_adapters_found, align 4
  %inc.i = add i32 %118, 1
  store i32 %inc.i, ptr @n_adapters_found, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err.i) #11
  %call33 = call i32 @brcms_led_register(ptr noundef nonnull %26) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %do.end29, %do.end20, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end32 ], [ -19, %do.end29 ], [ -12, %do.end20 ], [ -19, %lor.lhs.false.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @brcms_remove(ptr nocapture noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %drvdata.i = getelementptr inbounds %struct.bcma_device, ptr %pdev, i32 0, i32 13
  %0 = ptrtoint ptr %drvdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drvdata.i, align 4
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  %wlc = getelementptr inbounds %struct.brcms_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %wlc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wlc, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @brcms_led_unregister(ptr noundef %3) #11
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %ieee_hw = getelementptr inbounds %struct.brcms_pub, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %ieee_hw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ieee_hw, align 4
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wiphy, align 8
  tail call void @wiphy_rfkill_set_hw_state_reason(ptr noundef %11, i1 noundef zeroext false, i32 noundef 1) #11
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 4
  %ieee_hw2 = getelementptr inbounds %struct.brcms_pub, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %ieee_hw2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ieee_hw2, align 4
  %wiphy3 = getelementptr inbounds %struct.ieee80211_hw, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %wiphy3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %wiphy3, align 8
  %rfkill.i = getelementptr inbounds %struct.wiphy, ptr %17, i32 0, i32 82
  %18 = ptrtoint ptr %rfkill.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rfkill.i, align 8
  tail call void @rfkill_pause_polling(ptr noundef %19) #11
  tail call void @ieee80211_unregister_hw(ptr noundef %1) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call fastcc void @brcms_free(ptr noundef %3)
  %20 = ptrtoint ptr %drvdata.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %drvdata.i, align 4
  tail call void @ieee80211_free_hw(ptr noundef %1) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcms_suspend(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %drvdata.i = getelementptr inbounds %struct.bcma_device, ptr %pdev, i32 0, i32 13
  %0 = ptrtoint ptr %drvdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drvdata.i, align 4
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.100) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %lock = getelementptr inbounds %struct.brcms_info, ptr %3, i32 0, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #11
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %hw_up = getelementptr inbounds %struct.brcms_pub, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %hw_up to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %hw_up, align 2
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #11
  %wlc = getelementptr inbounds %struct.brcms_info, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %wlc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %wlc, align 4
  %hw3 = getelementptr inbounds %struct.brcms_c_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %hw3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw3, align 4
  %d11core = getelementptr inbounds %struct.brcms_hardware, ptr %10, i32 0, i32 14
  %11 = ptrtoint ptr %d11core to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %d11core, align 4
  %dev = getelementptr inbounds %struct.bcma_device, ptr %12, i32 0, i32 2
  tail call void (ptr, i32, ptr, ptr, ...) @__brcms_dbg(ptr noundef %dev, i32 noundef 1, ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.101) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ 0, %if.end ], [ -19, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @brcms_resume(ptr nocapture noundef readnone %pdev) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcms_led_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_free_hw(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_alloc_hw_nm(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @brcms_ops_tx(ptr noundef %hw, ptr nocapture noundef readonly %control, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %lock = getelementptr inbounds %struct.brcms_info, ptr %1, i32 0, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #11
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %up = getelementptr inbounds %struct.brcms_pub, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %up to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %up, align 4, !range !235
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  %wlc = getelementptr inbounds %struct.brcms_info, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %wlc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wlc, align 4
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %hw1 = getelementptr inbounds %struct.brcms_c_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw1, align 4
  %d11core = getelementptr inbounds %struct.brcms_hardware, ptr %9, i32 0, i32 14
  %10 = ptrtoint ptr %d11core to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %d11core, align 4
  %dev = getelementptr inbounds %struct.bcma_device, ptr %11, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__brcms_err(ptr noundef %dev, ptr noundef nonnull @.str.41) #11
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #11
  br label %done

if.end:                                           ; preds = %entry
  %call3 = tail call zeroext i1 @brcms_c_sendpkt_mac80211(ptr noundef %7, ptr noundef %skb, ptr noundef %hw) #11
  br i1 %call3, label %if.then4, label %if.end.done_crit_edge

if.end.done_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %done

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %control, align 4
  %rate_driver_data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %14 = ptrtoint ptr %rate_driver_data to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %rate_driver_data, align 8
  br label %done

done:                                             ; preds = %if.then4, %if.end.done_crit_edge, %if.then
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcms_ops_start(ptr noundef %hw) #0 align 64 {
entry:
  %fw_name.i = alloca [100 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %bcm43xx_bomminor = getelementptr inbounds %struct.brcms_info, ptr %1, i32 0, i32 13, i32 14
  %2 = ptrtoint ptr %bcm43xx_bomminor to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bcm43xx_bomminor, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.then, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

if.then:                                          ; preds = %entry
  %wlc = getelementptr inbounds %struct.brcms_info, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %wlc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wlc, align 4
  %hw1 = getelementptr inbounds %struct.brcms_c_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw1, align 4
  %d11core = getelementptr inbounds %struct.brcms_hardware, ptr %7, i32 0, i32 14
  %8 = ptrtoint ptr %d11core to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %d11core, align 4
  %dev.i = getelementptr inbounds %struct.bcma_device, ptr %9, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %fw_name.i) #11
  %10 = call ptr @memset(ptr %fw_name.i, i32 255, i32 100)
  %fw.i = getelementptr inbounds %struct.brcms_info, ptr %1, i32 0, i32 11
  %11 = call ptr @memset(ptr %fw.i, i32 0, i32 52)
  %call.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %fw_name.i, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.49, i32 noundef 0) #11
  %arrayidx4.i = getelementptr %struct.brcms_info, ptr %1, i32 0, i32 11, i32 1, i32 0
  %call6.i = call i32 @request_firmware(ptr noundef %arrayidx4.i, ptr noundef nonnull %fw_name.i, ptr noundef %dev.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool.not.i, label %if.end10.i, label %if.then.brcms_request_fw.exit.thread_crit_edge

if.then.brcms_request_fw.exit.thread_crit_edge:   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %brcms_request_fw.exit.thread

if.end10.i:                                       ; preds = %if.then
  %call13.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %fw_name.i, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.49, i32 noundef 0) #11
  %arrayidx15.i = getelementptr %struct.brcms_info, ptr %1, i32 0, i32 11, i32 2, i32 0
  %call17.i = call i32 @request_firmware(ptr noundef %arrayidx15.i, ptr noundef nonnull %fw_name.i, ptr noundef %dev.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %brcms_request_fw.exit, label %if.end10.i.brcms_request_fw.exit.thread_crit_edge

if.end10.i.brcms_request_fw.exit.thread_crit_edge: ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %brcms_request_fw.exit.thread

brcms_request_fw.exit.thread:                     ; preds = %if.end10.i.brcms_request_fw.exit.thread_crit_edge, %if.then.brcms_request_fw.exit.thread_crit_edge
  %wiphy.i = getelementptr inbounds %struct.brcms_info, ptr %1, i32 0, i32 12
  %12 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %wiphy.i, align 4
  %dev8.i = getelementptr inbounds %struct.wiphy, ptr %13, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev8.i, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.31, ptr noundef nonnull %fw_name.i) #16
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %fw_name.i) #11
  br label %cleanup

brcms_request_fw.exit:                            ; preds = %if.end10.i
  %14 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx15.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %div.i = udiv i32 %17, 12
  %arrayidx31.i = getelementptr %struct.brcms_info, ptr %1, i32 0, i32 11, i32 3, i32 0
  %18 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %div.i, ptr %arrayidx31.i, align 4
  %19 = ptrtoint ptr %fw.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %fw.i, align 4
  %ucode.i = getelementptr inbounds %struct.brcms_info, ptr %1, i32 0, i32 13
  %call33.i = call i32 @brcms_ucode_data_init(ptr noundef %1, ptr noundef %ucode.i) #11
  %20 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx4.i, align 4
  call void @release_firmware(ptr noundef %21) #11
  %22 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx15.i, align 4
  call void @release_firmware(ptr noundef %23) #11
  %arrayidx.1.i.i = getelementptr %struct.brcms_info, ptr %1, i32 0, i32 11, i32 1, i32 1
  %24 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.1.i.i, align 4
  call void @release_firmware(ptr noundef %25) #11
  %arrayidx2.1.i.i = getelementptr %struct.brcms_info, ptr %1, i32 0, i32 11, i32 2, i32 1
  %26 = ptrtoint ptr %arrayidx2.1.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx2.1.i.i, align 4
  call void @release_firmware(ptr noundef %27) #11
  %arrayidx.2.i.i = getelementptr %struct.brcms_info, ptr %1, i32 0, i32 11, i32 1, i32 2
  %28 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.2.i.i, align 4
  call void @release_firmware(ptr noundef %29) #11
  %arrayidx2.2.i.i = getelementptr %struct.brcms_info, ptr %1, i32 0, i32 11, i32 2, i32 2
  %30 = ptrtoint ptr %arrayidx2.2.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx2.2.i.i, align 4
  call void @release_firmware(ptr noundef %31) #11
  %arrayidx.3.i.i = getelementptr %struct.brcms_info, ptr %1, i32 0, i32 11, i32 1, i32 3
  %32 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.3.i.i, align 4
  call void @release_firmware(ptr noundef %33) #11
  %arrayidx2.3.i.i = getelementptr %struct.brcms_info, ptr %1, i32 0, i32 11, i32 2, i32 3
  %34 = ptrtoint ptr %arrayidx2.3.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx2.3.i.i, align 4
  call void @release_firmware(ptr noundef %35) #11
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %fw_name.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i)
  %tobool2.not = icmp eq i32 %call33.i, 0
  br i1 %tobool2.not, label %brcms_request_fw.exit.if.end4_crit_edge, label %brcms_request_fw.exit.cleanup_crit_edge

brcms_request_fw.exit.cleanup_crit_edge:          ; preds = %brcms_request_fw.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

brcms_request_fw.exit.if.end4_crit_edge:          ; preds = %brcms_request_fw.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

if.end4:                                          ; preds = %brcms_request_fw.exit.if.end4_crit_edge, %entry.if.end4_crit_edge
  call void @ieee80211_wake_queues(ptr noundef %hw) #11
  %lock = getelementptr inbounds %struct.brcms_info, ptr %1, i32 0, i32 4
  call void @_raw_spin_lock_bh(ptr noundef %lock) #11
  %wlc.i = getelementptr inbounds %struct.brcms_info, ptr %1, i32 0, i32 1
  %36 = ptrtoint ptr %wlc.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %wlc.i, align 4
  %call.i49 = call zeroext i1 @brcms_c_check_radio_disabled(ptr noundef %37) #11
  call void @_raw_spin_unlock_bh(ptr noundef %lock) #11
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %1, align 4
  %ieee_hw.i = getelementptr inbounds %struct.brcms_pub, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %ieee_hw.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ieee_hw.i, align 4
  %wiphy.i50 = getelementptr inbounds %struct.ieee80211_hw, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %wiphy.i50 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %wiphy.i50, align 8
  call void @wiphy_rfkill_set_hw_state_reason(ptr noundef %43, i1 noundef zeroext %call.i49, i32 noundef 1) #11
  br i1 %call.i49, label %if.then.i, label %if.then8.critedge

if.then.i:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %1, align 4
  %ieee_hw3.i = getelementptr inbounds %struct.brcms_pub, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %ieee_hw3.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ieee_hw3.i, align 4
  %wiphy4.i = getelementptr inbounds %struct.ieee80211_hw, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %wiphy4.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %wiphy4.i, align 8
  call void @wiphy_rfkill_start_polling(ptr noundef %49) #11
  call void @_raw_spin_lock_bh(ptr noundef %lock) #11
  call void @_raw_spin_unlock_bh(ptr noundef %lock) #11
  br label %if.end9

if.then8.critedge:                                ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  call void @_raw_spin_lock_bh(ptr noundef %lock) #11
  call void @_raw_spin_unlock_bh(ptr noundef %lock) #11
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %1, align 4
  %ieee_hw = getelementptr inbounds %struct.brcms_pub, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %ieee_hw to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ieee_hw, align 4
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %wiphy, align 8
  %rfkill.i = getelementptr inbounds %struct.wiphy, ptr %55, i32 0, i32 82
  %56 = ptrtoint ptr %rfkill.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %rfkill.i, align 8
  call void @rfkill_pause_polling(ptr noundef %57) #11
  br label %if.end9

if.end9:                                          ; preds = %if.then8.critedge, %if.then.i
  call void @_raw_spin_lock_bh(ptr noundef %lock) #11
  %mute_tx = getelementptr inbounds %struct.brcms_info, ptr %1, i32 0, i32 14
  %58 = ptrtoint ptr %mute_tx to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 1, ptr %mute_tx, align 4
  %59 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %1, align 4
  %up = getelementptr inbounds %struct.brcms_pub, ptr %60, i32 0, i32 7
  %61 = ptrtoint ptr %up to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %up, align 4, !range !235
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool12.not = icmp eq i8 %62, 0
  %tobool12.not.not = xor i1 %tobool12.not, true
  %brmerge = select i1 %tobool12.not.not, i1 true, i1 %call.i49
  br i1 %brmerge, label %if.end19.thread60, label %if.then15

if.end19.thread60:                                ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %.mux = select i1 %tobool12.not, i32 -132, i32 -19
  call void @_raw_spin_unlock_bh(ptr noundef %lock) #11
  br label %if.then21

if.then15:                                        ; preds = %if.end9
  br i1 %tobool12.not, label %if.end19, label %if.end19.thread

if.end19.thread:                                  ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #13
  call void @_raw_spin_unlock_bh(ptr noundef %lock) #11
  br label %if.end25

if.end19:                                         ; preds = %if.then15
  %63 = ptrtoint ptr %wlc.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %wlc.i, align 4
  %call.i53 = call i32 @brcms_c_up(ptr noundef %64) #11
  call void @_raw_spin_unlock_bh(ptr noundef %lock) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i53)
  %cmp.not = icmp eq i32 %call.i53, 0
  br i1 %cmp.not, label %if.end19.if.end25_crit_edge, label %if.end19.if.then21_crit_edge

if.end19.if.then21_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then21

if.end19.if.end25_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

if.then21:                                        ; preds = %if.end19.if.then21_crit_edge, %if.end19.thread60
  %err.063 = phi i32 [ %.mux, %if.end19.thread60 ], [ %call.i53, %if.end19.if.then21_crit_edge ]
  %65 = ptrtoint ptr %wlc.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %wlc.i, align 4
  %hw23 = getelementptr inbounds %struct.brcms_c_info, ptr %66, i32 0, i32 2
  %67 = ptrtoint ptr %hw23 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %hw23, align 4
  %d11core24 = getelementptr inbounds %struct.brcms_hardware, ptr %68, i32 0, i32 14
  %69 = ptrtoint ptr %d11core24 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %d11core24, align 4
  %dev = getelementptr inbounds %struct.bcma_device, ptr %70, i32 0, i32 2
  call void (ptr, ptr, ...) @__brcms_err(ptr noundef %dev, ptr noundef nonnull @.str.42, ptr noundef nonnull @__func__.brcms_ops_start, i32 noundef %err.063) #11
  br label %if.end25

if.end25:                                         ; preds = %if.then21, %if.end19.if.end25_crit_edge, %if.end19.thread
  %err.059 = phi i32 [ 0, %if.end19.thread ], [ %err.063, %if.then21 ], [ 0, %if.end19.if.end25_crit_edge ]
  %71 = ptrtoint ptr %wlc.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %wlc.i, align 4
  %hw27 = getelementptr inbounds %struct.brcms_c_info, ptr %72, i32 0, i32 2
  %73 = ptrtoint ptr %hw27 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %hw27, align 4
  %d11core28 = getelementptr inbounds %struct.brcms_hardware, ptr %74, i32 0, i32 14
  %75 = ptrtoint ptr %d11core28 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %d11core28, align 4
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %76, align 8
  call void @bcma_core_pci_power_save(ptr noundef %78, i1 noundef zeroext true) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %brcms_request_fw.exit.cleanup_crit_edge, %brcms_request_fw.exit.thread
  %retval.0 = phi i32 [ %err.059, %if.end25 ], [ -2, %brcms_request_fw.exit.cleanup_crit_edge ], [ -2, %brcms_request_fw.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @brcms_ops_stop(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  tail call void @ieee80211_stop_queues(ptr noundef %hw) #11
  %wlc = getelementptr inbounds %struct.brcms_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %wlc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wlc, align 4
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.brcms_info, ptr %1, i32 0, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #11
  %4 = ptrtoint ptr %wlc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wlc, align 4
  %hw2 = getelementptr inbounds %struct.brcms_c_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %hw2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw2, align 4
  %d11core = getelementptr inbounds %struct.brcms_hardware, ptr %7, i32 0, i32 14
  %8 = ptrtoint ptr %d11core to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %d11core, align 4
  %call = tail call zeroext i1 @brcms_c_chipmatch(ptr noundef %9) #11
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #11
  %10 = ptrtoint ptr %wlc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wlc, align 4
  %hw10 = getelementptr inbounds %struct.brcms_c_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %hw10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw10, align 4
  %d11core11 = getelementptr inbounds %struct.brcms_hardware, ptr %13, i32 0, i32 14
  %14 = ptrtoint ptr %d11core11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %d11core11, align 4
  br i1 %call, label %if.end8, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.bcma_device, ptr %15, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__brcms_err(ptr noundef %dev, ptr noundef nonnull @.str.50) #11
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 8
  tail call void @bcma_core_pci_power_save(ptr noundef %17, i1 noundef zeroext false) #11
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #11
  tail call void @brcms_down(ptr noundef %1)
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then4, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcms_ops_add_interface(ptr nocapture noundef readonly %hw, ptr noundef %vif) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %2 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vif, align 8
  %.off = add i32 %3, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off)
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %wlc = getelementptr inbounds %struct.brcms_info, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %wlc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wlc, align 4
  %hw6 = getelementptr inbounds %struct.brcms_c_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %hw6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw6, align 4
  %d11core = getelementptr inbounds %struct.brcms_hardware, ptr %7, i32 0, i32 14
  %8 = ptrtoint ptr %d11core to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %d11core, align 4
  %dev = getelementptr inbounds %struct.bcma_device, ptr %9, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__brcms_err(ptr noundef %dev, ptr noundef nonnull @.str.51, ptr noundef nonnull @__func__.brcms_ops_add_interface, i32 noundef %3) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.brcms_info, ptr %1, i32 0, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #11
  %wlc8 = getelementptr inbounds %struct.brcms_info, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %wlc8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wlc8, align 4
  %vif9 = getelementptr inbounds %struct.brcms_c_info, ptr %11, i32 0, i32 67
  %12 = ptrtoint ptr %vif9 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %vif, ptr %vif9, align 4
  %mute_tx = getelementptr inbounds %struct.brcms_info, ptr %1, i32 0, i32 14
  %13 = ptrtoint ptr %mute_tx to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %mute_tx, align 4
  %14 = load ptr, ptr %wlc8, align 4
  tail call void @brcms_c_mute(ptr noundef %14, i1 noundef zeroext false) #11
  %15 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %vif, align 8
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.103)
  switch i32 %16, label %if.end.if.end33_crit_edge [
    i32 2, label %if.then13
    i32 3, label %if.then17
    i32 1, label %if.then27
  ]

if.end.if.end33_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %wlc8 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %wlc8, align 4
  %addr = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 2
  tail call void @brcms_c_start_station(ptr noundef %19, ptr noundef %addr) #11
  br label %if.end33

if.then17:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %20 = ptrtoint ptr %wlc8 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %wlc8, align 4
  %addr19 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 2
  %bss_conf = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1
  %22 = ptrtoint ptr %bss_conf to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bss_conf, align 8
  %ssid = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 39
  %ssid_len = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 40
  %24 = ptrtoint ptr %ssid_len to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ssid_len, align 8
  tail call void @brcms_c_start_ap(ptr noundef %21, ptr noundef %addr19, ptr noundef %23, ptr noundef %ssid, i32 noundef %25) #11
  br label %if.end33

if.then27:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %26 = ptrtoint ptr %wlc8 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %wlc8, align 4
  %addr29 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 2
  tail call void @brcms_c_start_adhoc(ptr noundef %27, ptr noundef %addr29) #11
  br label %if.end33

if.end33:                                         ; preds = %if.then27, %if.then17, %if.then13, %if.end.if.end33_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %if.then
  %retval.0 = phi i32 [ -95, %if.then ], [ 0, %if.end33 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @brcms_ops_remove_interface(ptr nocapture noundef readonly %hw, ptr nocapture noundef readnone %vif) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %lock = getelementptr inbounds %struct.brcms_info, ptr %1, i32 0, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #11
  %wlc = getelementptr inbounds %struct.brcms_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %wlc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wlc, align 4
  %vif1 = getelementptr inbounds %struct.brcms_c_info, ptr %3, i32 0, i32 67
  %4 = ptrtoint ptr %vif1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %vif1, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcms_ops_config(ptr nocapture noundef readonly %hw, i32 noundef %changed) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %wlc = getelementptr inbounds %struct.brcms_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %wlc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wlc, align 4
  %hw2 = getelementptr inbounds %struct.brcms_c_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %hw2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw2, align 4
  %d11core = getelementptr inbounds %struct.brcms_hardware, ptr %5, i32 0, i32 14
  %6 = ptrtoint ptr %d11core to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d11core, align 4
  %lock = getelementptr inbounds %struct.brcms_info, ptr %1, i32 0, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #11
  %and = and i32 %changed, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %wlc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wlc, align 4
  %listen_interval = getelementptr inbounds %struct.ieee80211_conf, ptr %hw, i32 0, i32 3
  %10 = ptrtoint ptr %listen_interval to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %listen_interval, align 4
  %conv = trunc i16 %11 to i8
  tail call void @brcms_c_set_beacon_listen_interval(ptr noundef %9, i8 noundef zeroext %conv) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and4 = and i32 %changed, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end.if.end9_crit_edge, label %if.then6

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.bcma_device, ptr %7, i32 0, i32 2
  %12 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %hw, align 4
  %and7 = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  %cond = select i1 %tobool8.not, ptr @.str.54, ptr @.str.53
  tail call void (ptr, i32, ptr, ptr, ...) @__brcms_dbg(ptr noundef %dev, i32 noundef 1, ptr noundef nonnull @__func__.brcms_ops_config, ptr noundef nonnull @.str.52, ptr noundef nonnull @__func__.brcms_ops_config, ptr noundef nonnull %cond) #11
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end.if.end9_crit_edge
  %and10 = and i32 %changed, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end9.if.end18_crit_edge, label %if.then12

if.end9.if.end18_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %dev13 = getelementptr inbounds %struct.bcma_device, ptr %7, i32 0, i32 2
  %14 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %hw, align 4
  %and15 = and i32 %15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  %cond17 = select i1 %tobool16.not, ptr @.str.54, ptr @.str.53
  tail call void (ptr, ptr, ...) @__brcms_err(ptr noundef %dev13, ptr noundef nonnull @.str.55, ptr noundef nonnull @__func__.brcms_ops_config, ptr noundef nonnull %cond17) #11
  br label %if.end18

if.end18:                                         ; preds = %if.then12, %if.end9.if.end18_crit_edge
  %and19 = and i32 %changed, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.end18.if.end36_crit_edge, label %if.then21

if.end18.if.end36_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

if.then21:                                        ; preds = %if.end18
  %16 = ptrtoint ptr %wlc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %wlc, align 4
  %power_level = getelementptr inbounds %struct.ieee80211_conf, ptr %hw, i32 0, i32 1
  %18 = ptrtoint ptr %power_level to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %power_level, align 4
  %call = tail call i32 @brcms_c_set_tx_power(ptr noundef %17, i32 noundef %19) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then24, label %if.end26

if.then24:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #13
  %dev25 = getelementptr inbounds %struct.bcma_device, ptr %7, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__brcms_err(ptr noundef %dev25, ptr noundef nonnull @.str.56, ptr noundef nonnull @__func__.brcms_ops_config) #11
  br label %config_out

if.end26:                                         ; preds = %if.then21
  %20 = ptrtoint ptr %wlc to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %wlc, align 4
  %call28 = tail call i32 @brcms_c_get_tx_power(ptr noundef %21) #11
  %22 = ptrtoint ptr %power_level to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %power_level, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call28, i32 %23)
  %cmp30.not = icmp eq i32 %call28, %23
  br i1 %cmp30.not, label %if.end26.if.end36_crit_edge, label %if.then32

if.end26.if.end36_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

if.then32:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  %dev33 = getelementptr inbounds %struct.bcma_device, ptr %7, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__brcms_err(ptr noundef %dev33, ptr noundef nonnull @.str.57, ptr noundef nonnull @__func__.brcms_ops_config, i32 noundef %23, i32 noundef %call28) #11
  br label %if.end36

if.end36:                                         ; preds = %if.then32, %if.end26.if.end36_crit_edge, %if.end18.if.end36_crit_edge
  %err.0 = phi i32 [ %call, %if.then32 ], [ %call, %if.end26.if.end36_crit_edge ], [ 0, %if.end18.if.end36_crit_edge ]
  %and37 = and i32 %changed, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.end36.if.end51_crit_edge, label %if.then39

if.end36.if.end51_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end51

if.then39:                                        ; preds = %if.end36
  %width = getelementptr inbounds %struct.ieee80211_conf, ptr %hw, i32 0, i32 7, i32 1
  %24 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %width, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %25)
  %switch = icmp ult i32 %25, 2
  br i1 %switch, label %if.then46, label %if.then39.if.end51_crit_edge

if.then39.if.end51_crit_edge:                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end51

if.then46:                                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #13
  %chandef = getelementptr inbounds %struct.ieee80211_conf, ptr %hw, i32 0, i32 7
  %26 = ptrtoint ptr %wlc to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %wlc, align 4
  %28 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %chandef, align 4
  %hw_value = getelementptr inbounds %struct.ieee80211_channel, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %hw_value, align 2
  %call49 = tail call i32 @brcms_c_set_channel(ptr noundef %27, i16 noundef zeroext %31) #11
  br label %if.end51

if.end51:                                         ; preds = %if.then46, %if.then39.if.end51_crit_edge, %if.end36.if.end51_crit_edge
  %err.1 = phi i32 [ %call49, %if.then46 ], [ %err.0, %if.end36.if.end51_crit_edge ], [ -524, %if.then39.if.end51_crit_edge ]
  %and52 = and i32 %changed, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %if.end51.config_out_crit_edge, label %if.then54

if.end51.config_out_crit_edge:                    ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #13
  br label %config_out

if.then54:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #13
  %32 = ptrtoint ptr %wlc to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %wlc, align 4
  %short_frame_max_tx_count = getelementptr inbounds %struct.ieee80211_conf, ptr %hw, i32 0, i32 6
  %34 = ptrtoint ptr %short_frame_max_tx_count to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %short_frame_max_tx_count, align 4
  %conv56 = zext i8 %35 to i16
  %long_frame_max_tx_count = getelementptr inbounds %struct.ieee80211_conf, ptr %hw, i32 0, i32 5
  %36 = ptrtoint ptr %long_frame_max_tx_count to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %long_frame_max_tx_count, align 1
  %conv57 = zext i8 %37 to i16
  %call58 = tail call i32 @brcms_c_set_rate_limit(ptr noundef %33, i16 noundef zeroext %conv56, i16 noundef zeroext %conv57) #11
  br label %config_out

config_out:                                       ; preds = %if.then54, %if.end51.config_out_crit_edge, %if.then24
  %err.2 = phi i32 [ %call, %if.then24 ], [ %call58, %if.then54 ], [ %err.1, %if.end51.config_out_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #11
  ret i32 %err.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @brcms_ops_bss_info_changed(ptr noundef %hw, ptr noundef %vif, ptr noundef %info, i32 noundef %changed) #0 align 64 {
entry:
  %rs = alloca %struct.brcm_rateset, align 4
  %tim_offset = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %wlc = getelementptr inbounds %struct.brcms_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %wlc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wlc, align 4
  %hw1 = getelementptr inbounds %struct.brcms_c_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw1, align 4
  %d11core = getelementptr inbounds %struct.brcms_hardware, ptr %5, i32 0, i32 14
  %6 = ptrtoint ptr %d11core to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d11core, align 4
  %and = and i32 %changed, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.bcma_device, ptr %7, i32 0, i32 2
  %assoc = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %info, i32 0, i32 10
  %8 = ptrtoint ptr %assoc to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %assoc, align 1, !range !235
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool2.not = icmp eq i8 %9, 0
  %cond = select i1 %tobool2.not, ptr @.str.60, ptr @.str.59
  tail call void (ptr, ptr, ...) @__brcms_err(ptr noundef %dev, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.31, ptr noundef nonnull @__func__.brcms_ops_bss_info_changed, ptr noundef nonnull %cond) #11
  %lock = getelementptr inbounds %struct.brcms_info, ptr %1, i32 0, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #11
  %10 = ptrtoint ptr %wlc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wlc, align 4
  %12 = ptrtoint ptr %assoc to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %assoc, align 1, !range !235
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool5 = icmp ne i8 %13, 0
  tail call void @brcms_c_associate_upd(ptr noundef %11, i1 noundef zeroext %tobool5) #11
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and7 = and i32 %changed, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end.if.end16_crit_edge, label %if.then9

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %use_short_slot = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %info, i32 0, i32 16
  %14 = ptrtoint ptr %use_short_slot to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %use_short_slot, align 2, !range !235
  %lock13 = getelementptr inbounds %struct.brcms_info, ptr %1, i32 0, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %lock13) #11
  %16 = ptrtoint ptr %wlc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %wlc, align 4
  tail call void @brcms_c_set_shortslot_override(ptr noundef %17, i8 noundef signext %15) #11
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock13) #11
  br label %if.end16

if.end16:                                         ; preds = %if.then9, %if.end.if.end16_crit_edge
  %and17 = and i32 %changed, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.end16.if.end30_crit_edge, label %if.then19

if.end16.if.end30_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  %ht_operation_mode = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %info, i32 0, i32 27
  %18 = ptrtoint ptr %ht_operation_mode to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %ht_operation_mode, align 8
  %lock20 = getelementptr inbounds %struct.brcms_info, ptr %1, i32 0, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %lock20) #11
  %20 = ptrtoint ptr %wlc to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %wlc, align 4
  %conv = zext i16 %19 to i32
  %and22 = and i32 %conv, 3
  tail call void @brcms_c_protection_upd(ptr noundef %21, i32 noundef 11, i32 noundef %and22) #11
  %22 = ptrtoint ptr %wlc to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %wlc, align 4
  %and25 = and i32 %conv, 4
  tail call void @brcms_c_protection_upd(ptr noundef %23, i32 noundef 13, i32 noundef %and25) #11
  %24 = ptrtoint ptr %wlc to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %wlc, align 4
  %and28 = and i32 %conv, 16
  tail call void @brcms_c_protection_upd(ptr noundef %25, i32 noundef 16, i32 noundef %and28) #11
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock20) #11
  br label %if.end30

if.end30:                                         ; preds = %if.then19, %if.end16.if.end30_crit_edge
  %and31 = and i32 %changed, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.end30.if.end52_crit_edge, label %if.then33

if.end30.if.end52_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end52

if.then33:                                        ; preds = %if.end30
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %rs) #11
  %lock34 = getelementptr inbounds %struct.brcms_info, ptr %1, i32 0, i32 4
  %26 = call ptr @memset(ptr %rs, i32 255, i32 20)
  tail call void @_raw_spin_lock_bh(ptr noundef %lock34) #11
  %27 = ptrtoint ptr %wlc to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %wlc, align 4
  call void @brcms_c_get_current_rateset(ptr noundef %28, ptr noundef nonnull %rs) #11
  call void @_raw_spin_unlock_bh(ptr noundef %lock34) #11
  %basic_rates = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %info, i32 0, i32 24
  %29 = ptrtoint ptr %basic_rates to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %basic_rates, align 8
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 1
  %31 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %wiphy, align 8
  %33 = ptrtoint ptr %wlc to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %wlc, align 4
  %call = call i32 @brcms_c_get_curband(ptr noundef %34) #11
  %arrayidx = getelementptr %struct.wiphy, ptr %32, i32 0, i32 53, i32 %call
  %35 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx, align 4
  %n_bitrates = getelementptr inbounds %struct.ieee80211_supported_band, ptr %36, i32 0, i32 4
  %37 = ptrtoint ptr %n_bitrates to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %n_bitrates, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp221.not = icmp eq i32 %38, 0
  br i1 %cmp221.not, label %if.then33.for.end_crit_edge, label %for.body.lr.ph

if.then33.for.end_crit_edge:                      ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.then33
  %bitrates = getelementptr inbounds %struct.ieee80211_supported_band, ptr %36, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %brcms_set_basic_rate.exit.for.body_crit_edge, %for.body.lr.ph
  %i.0224 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %brcms_set_basic_rate.exit.for.body_crit_edge ]
  %br_mask.0222 = phi i32 [ %30, %for.body.lr.ph ], [ %shr, %brcms_set_basic_rate.exit.for.body_crit_edge ]
  %39 = ptrtoint ptr %bitrates to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %bitrates, align 4
  %bitrate = getelementptr %struct.ieee80211_rate, ptr %40, i32 %i.0224, i32 1
  %41 = ptrtoint ptr %bitrate to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %bitrate, align 4
  %43 = udiv i16 %42, 5
  %44 = ptrtoint ptr %rs to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %rs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp22.not.i = icmp eq i32 %45, 0
  br i1 %cmp22.not.i, label %for.body.brcms_set_basic_rate.exit_crit_edge, label %for.body.for.body.i_crit_edge

for.body.for.body.i_crit_edge:                    ; preds = %for.body
  br label %for.body.i

for.body.brcms_set_basic_rate.exit_crit_edge:     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %brcms_set_basic_rate.exit

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %i.023.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %45
  br i1 %exitcond.not.i, label %for.cond.i.brcms_set_basic_rate.exit_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.cond.i.brcms_set_basic_rate.exit_crit_edge:   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %brcms_set_basic_rate.exit

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.for.body.i_crit_edge
  %i.023.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %for.body.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.brcm_rateset, ptr %rs, i32 0, i32 1, i32 %i.023.i
  %46 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx.i, align 1
  %48 = and i8 %47, 127
  %49 = zext i8 %48 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %43, i16 %49)
  %cmp2.not.i = icmp eq i16 %43, %49
  br i1 %cmp2.not.i, label %if.end.i, label %for.cond.i

if.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %50 = trunc i32 %br_mask.0222 to i8
  %51 = shl i8 %50, 7
  %storemerge.in.v.i = or i8 %48, %51
  %52 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %storemerge.in.v.i, ptr %arrayidx.i, align 1
  br label %brcms_set_basic_rate.exit

brcms_set_basic_rate.exit:                        ; preds = %if.end.i, %for.cond.i.brcms_set_basic_rate.exit_crit_edge, %for.body.brcms_set_basic_rate.exit_crit_edge
  %shr = lshr i32 %br_mask.0222, 1
  %inc = add nuw i32 %i.0224, 1
  %53 = ptrtoint ptr %n_bitrates to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %n_bitrates, align 4
  %cmp = icmp ult i32 %inc, %54
  br i1 %cmp, label %brcms_set_basic_rate.exit.for.body_crit_edge, label %brcms_set_basic_rate.exit.for.end_crit_edge

brcms_set_basic_rate.exit.for.end_crit_edge:      ; preds = %brcms_set_basic_rate.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

brcms_set_basic_rate.exit.for.body_crit_edge:     ; preds = %brcms_set_basic_rate.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %brcms_set_basic_rate.exit.for.end_crit_edge, %if.then33.for.end_crit_edge
  call void @_raw_spin_lock_bh(ptr noundef %lock34) #11
  %55 = ptrtoint ptr %wlc to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %wlc, align 4
  %call46 = call i32 @brcms_c_set_rateset(ptr noundef %56, ptr noundef nonnull %rs) #11
  call void @_raw_spin_unlock_bh(ptr noundef %lock34) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool48.not = icmp eq i32 %call46, 0
  br i1 %tobool48.not, label %for.end.if.end51_crit_edge, label %if.then49

for.end.if.end51_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end51

if.then49:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %dev50 = getelementptr inbounds %struct.bcma_device, ptr %7, i32 0, i32 2
  call void (ptr, ptr, ...) @__brcms_err(ptr noundef %dev50, ptr noundef nonnull @.str.61, i32 noundef %call46) #11
  br label %if.end51

if.end51:                                         ; preds = %if.then49, %for.end.if.end51_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %rs) #11
  br label %if.end52

if.end52:                                         ; preds = %if.end51, %if.end30.if.end52_crit_edge
  %and53 = and i32 %changed, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %if.end52.if.end60_crit_edge, label %if.then55

if.end52.if.end60_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end60

if.then55:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #13
  %lock56 = getelementptr inbounds %struct.brcms_info, ptr %1, i32 0, i32 4
  call void @_raw_spin_lock_bh(ptr noundef %lock56) #11
  %57 = ptrtoint ptr %wlc to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %wlc, align 4
  %beacon_int = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %info, i32 0, i32 19
  %59 = ptrtoint ptr %beacon_int to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %beacon_int, align 2
  %call58 = call i32 @brcms_c_set_beacon_period(ptr noundef %58, i16 noundef zeroext %60) #11
  call void @_raw_spin_unlock_bh(ptr noundef %lock56) #11
  br label %if.end60

if.end60:                                         ; preds = %if.then55, %if.end52.if.end60_crit_edge
  %and61 = and i32 %changed, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %if.end60.if.end67_crit_edge, label %if.then63

if.end60.if.end67_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end67

if.then63:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #13
  %lock64 = getelementptr inbounds %struct.brcms_info, ptr %1, i32 0, i32 4
  call void @_raw_spin_lock_bh(ptr noundef %lock64) #11
  %61 = ptrtoint ptr %wlc to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %wlc, align 4
  %63 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %info, align 8
  call void @brcms_c_set_addrmatch(ptr noundef %62, i32 noundef 3, ptr noundef %64) #11
  call void @_raw_spin_unlock_bh(ptr noundef %lock64) #11
  br label %if.end67

if.end67:                                         ; preds = %if.then63, %if.end60.if.end67_crit_edge
  %and68 = and i32 %changed, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %tobool69.not = icmp eq i32 %and68, 0
  br i1 %tobool69.not, label %if.end67.if.end74_crit_edge, label %if.then70

if.end67.if.end74_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end74

if.then70:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #13
  %lock71 = getelementptr inbounds %struct.brcms_info, ptr %1, i32 0, i32 4
  call void @_raw_spin_lock_bh(ptr noundef %lock71) #11
  %65 = ptrtoint ptr %wlc to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %wlc, align 4
  %ssid = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %info, i32 0, i32 39
  %ssid_len = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %info, i32 0, i32 40
  %67 = ptrtoint ptr %ssid_len to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %ssid_len, align 8
  call void @brcms_c_set_ssid(ptr noundef %66, ptr noundef %ssid, i32 noundef %68) #11
  call void @_raw_spin_unlock_bh(ptr noundef %lock71) #11
  br label %if.end74

if.end74:                                         ; preds = %if.then70, %if.end67.if.end74_crit_edge
  %and75 = and i32 %changed, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %tobool76.not = icmp eq i32 %and75, 0
  br i1 %tobool76.not, label %if.end74.if.end83_crit_edge, label %if.then77

if.end74.if.end83_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end83

if.then77:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tim_offset) #11
  %69 = ptrtoint ptr %tim_offset to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 0, ptr %tim_offset, align 2
  %lock78 = getelementptr inbounds %struct.brcms_info, ptr %1, i32 0, i32 4
  call void @_raw_spin_lock_bh(ptr noundef %lock78) #11
  %call79 = call ptr @ieee80211_beacon_get_tim(ptr noundef %hw, ptr noundef %vif, ptr noundef nonnull %tim_offset, ptr noundef null) #11
  %70 = ptrtoint ptr %wlc to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %wlc, align 4
  %72 = ptrtoint ptr %tim_offset to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %tim_offset, align 2
  %dtim_period = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %info, i32 0, i32 18
  %74 = ptrtoint ptr %dtim_period to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %dtim_period, align 8
  %conv81 = zext i8 %75 to i16
  call void @brcms_c_set_new_beacon(ptr noundef %71, ptr noundef %call79, i16 noundef zeroext %73, i16 noundef zeroext %conv81) #11
  call void @_raw_spin_unlock_bh(ptr noundef %lock78) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tim_offset) #11
  br label %if.end83

if.end83:                                         ; preds = %if.then77, %if.end74.if.end83_crit_edge
  %and84 = and i32 %changed, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and84)
  %tobool85.not = icmp eq i32 %and84, 0
  br i1 %tobool85.not, label %if.end83.if.end91_crit_edge, label %if.then86

if.end83.if.end91_crit_edge:                      ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end91

if.then86:                                        ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #13
  %lock87 = getelementptr inbounds %struct.brcms_info, ptr %1, i32 0, i32 4
  call void @_raw_spin_lock_bh(ptr noundef %lock87) #11
  %call88 = call ptr @ieee80211_proberesp_get(ptr noundef %hw, ptr noundef %vif) #11
  %76 = ptrtoint ptr %wlc to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %wlc, align 4
  call void @brcms_c_set_new_probe_resp(ptr noundef %77, ptr noundef %call88) #11
  call void @_raw_spin_unlock_bh(ptr noundef %lock87) #11
  br label %if.end91

if.end91:                                         ; preds = %if.then86, %if.end83.if.end91_crit_edge
  %and92 = and i32 %changed, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and92)
  %tobool93.not = icmp eq i32 %and92, 0
  br i1 %tobool93.not, label %if.end91.if.end110_crit_edge, label %if.then94

if.end91.if.end110_crit_edge:                     ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end110

if.then94:                                        ; preds = %if.end91
  %dev95 = getelementptr inbounds %struct.bcma_device, ptr %7, i32 0, i32 2
  %enable_beacon = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %info, i32 0, i32 17
  %78 = ptrtoint ptr %enable_beacon to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %enable_beacon, align 1, !range !235
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool96.not = icmp eq i8 %79, 0
  %cond98 = select i1 %tobool96.not, ptr @.str.54, ptr @.str.53
  call void (ptr, ptr, ...) @__brcms_err(ptr noundef %dev95, ptr noundef nonnull @.str.62, ptr noundef nonnull @__func__.brcms_ops_bss_info_changed, ptr noundef nonnull %cond98) #11
  %80 = ptrtoint ptr %enable_beacon to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %enable_beacon, align 1, !range !235
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool100.not = icmp eq i8 %81, 0
  br i1 %tobool100.not, label %if.then94.if.else107_crit_edge, label %land.lhs.true

if.then94.if.else107_crit_edge:                   ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else107

land.lhs.true:                                    ; preds = %if.then94
  %wiphy102 = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 1
  %82 = ptrtoint ptr %wiphy102 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %wiphy102, align 8
  %flags = getelementptr inbounds %struct.wiphy, ptr %83, i32 0, i32 11
  %84 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %flags, align 32
  %and103 = and i32 %85, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and103)
  %tobool104.not = icmp eq i32 %and103, 0
  br i1 %tobool104.not, label %land.lhs.true.if.else107_crit_edge, label %land.lhs.true.if.end110.sink.split_crit_edge

land.lhs.true.if.end110.sink.split_crit_edge:     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end110.sink.split

land.lhs.true.if.else107_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else107

if.else107:                                       ; preds = %land.lhs.true.if.else107_crit_edge, %if.then94.if.else107_crit_edge
  br label %if.end110.sink.split

if.end110.sink.split:                             ; preds = %if.else107, %land.lhs.true.if.end110.sink.split_crit_edge
  %.sink229 = phi i1 [ false, %if.else107 ], [ true, %land.lhs.true.if.end110.sink.split_crit_edge ]
  %86 = ptrtoint ptr %wlc to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %wlc, align 4
  call void @brcms_c_enable_probe_resp(ptr noundef %87, i1 noundef zeroext %.sink229) #11
  br label %if.end110

if.end110:                                        ; preds = %if.end110.sink.split, %if.end91.if.end110_crit_edge
  %and111 = and i32 %changed, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and111)
  %tobool112.not = icmp eq i32 %and111, 0
  br i1 %tobool112.not, label %if.end110.if.end115_crit_edge, label %if.then113

if.end110.if.end115_crit_edge:                    ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end115

if.then113:                                       ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #13
  %dev114 = getelementptr inbounds %struct.bcma_device, ptr %7, i32 0, i32 2
  %cqm_rssi_thold = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %info, i32 0, i32 28
  %88 = ptrtoint ptr %cqm_rssi_thold to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %cqm_rssi_thold, align 4
  %cqm_rssi_hyst = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %info, i32 0, i32 29
  %90 = ptrtoint ptr %cqm_rssi_hyst to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %cqm_rssi_hyst, align 8
  call void (ptr, ptr, ...) @__brcms_err(ptr noundef %dev114, ptr noundef nonnull @.str.63, ptr noundef nonnull @__func__.brcms_ops_bss_info_changed, i32 noundef %89, i32 noundef %91) #11
  br label %if.end115

if.end115:                                        ; preds = %if.then113, %if.end110.if.end115_crit_edge
  %and116 = and i32 %changed, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and116)
  %tobool117.not = icmp eq i32 %and116, 0
  br i1 %tobool117.not, label %if.end115.if.end123_crit_edge, label %if.then118

if.end115.if.end123_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end123

if.then118:                                       ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #13
  %dev119 = getelementptr inbounds %struct.bcma_device, ptr %7, i32 0, i32 2
  %ibss_joined = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %info, i32 0, i32 11
  %92 = ptrtoint ptr %ibss_joined to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %ibss_joined, align 8, !range !235
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %tobool120.not = icmp eq i8 %93, 0
  %cond122 = select i1 %tobool120.not, ptr @.str.54, ptr @.str.53
  call void (ptr, ptr, ...) @__brcms_err(ptr noundef %dev119, ptr noundef nonnull @.str.64, ptr noundef nonnull @__func__.brcms_ops_bss_info_changed, ptr noundef nonnull %cond122) #11
  br label %if.end123

if.end123:                                        ; preds = %if.then118, %if.end115.if.end123_crit_edge
  %and124 = and i32 %changed, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and124)
  %tobool125.not = icmp eq i32 %and124, 0
  br i1 %tobool125.not, label %if.end123.if.end128_crit_edge, label %if.then126

if.end123.if.end128_crit_edge:                    ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end128

if.then126:                                       ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #13
  %dev127 = getelementptr inbounds %struct.bcma_device, ptr %7, i32 0, i32 2
  %arp_addr_cnt = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %info, i32 0, i32 35
  %94 = ptrtoint ptr %arp_addr_cnt to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %arp_addr_cnt, align 8
  call void (ptr, ptr, ...) @__brcms_err(ptr noundef %dev127, ptr noundef nonnull @.str.65, ptr noundef nonnull @__func__.brcms_ops_bss_info_changed, i32 noundef %95) #11
  br label %if.end128

if.end128:                                        ; preds = %if.then126, %if.end123.if.end128_crit_edge
  %and129 = and i32 %changed, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and129)
  %tobool130.not = icmp eq i32 %and129, 0
  br i1 %tobool130.not, label %if.end128.if.end136_crit_edge, label %if.then131

if.end128.if.end136_crit_edge:                    ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end136

if.then131:                                       ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #13
  %dev132 = getelementptr inbounds %struct.bcma_device, ptr %7, i32 0, i32 2
  %qos = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %info, i32 0, i32 36
  %96 = ptrtoint ptr %qos to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %qos, align 4, !range !235
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %tobool133.not = icmp eq i8 %97, 0
  %cond135 = select i1 %tobool133.not, ptr @.str.54, ptr @.str.53
  call void (ptr, ptr, ...) @__brcms_err(ptr noundef %dev132, ptr noundef nonnull @.str.66, ptr noundef nonnull @__func__.brcms_ops_bss_info_changed, ptr noundef nonnull %cond135) #11
  br label %if.end136

if.end136:                                        ; preds = %if.then131, %if.end128.if.end136_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @brcms_ops_configure_filter(ptr nocapture noundef readonly %hw, i32 noundef %changed_flags, ptr nocapture noundef %total_flags, i64 noundef %multicast) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %wlc = getelementptr inbounds %struct.brcms_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %wlc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wlc, align 4
  %hw1 = getelementptr inbounds %struct.brcms_c_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw1, align 4
  %d11core = getelementptr inbounds %struct.brcms_hardware, ptr %5, i32 0, i32 14
  %6 = ptrtoint ptr %d11core to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d11core, align 4
  %8 = ptrtoint ptr %total_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %total_flags, align 4
  %and2 = and i32 %9, 246
  store i32 %and2, ptr %total_flags, align 4
  %and3 = and i32 %changed_flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool.not = icmp eq i32 %and3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.bcma_device, ptr %7, i32 0, i32 2
  tail call void (ptr, i32, ptr, ptr, ...) @__brcms_dbg(ptr noundef %dev, i32 noundef 1, ptr noundef nonnull @__func__.brcms_ops_configure_filter, ptr noundef nonnull @.str.67) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and4 = and i32 %changed_flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end.if.end8_crit_edge, label %if.then6

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %dev7 = getelementptr inbounds %struct.bcma_device, ptr %7, i32 0, i32 2
  tail call void (ptr, i32, ptr, ptr, ...) @__brcms_dbg(ptr noundef %dev7, i32 noundef 1, ptr noundef nonnull @__func__.brcms_ops_configure_filter, ptr noundef nonnull @.str.68) #11
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end.if.end8_crit_edge
  %and9 = and i32 %changed_flags, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end8.if.end13_crit_edge, label %if.then11

if.end8.if.end13_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  %dev12 = getelementptr inbounds %struct.bcma_device, ptr %7, i32 0, i32 2
  tail call void (ptr, i32, ptr, ptr, ...) @__brcms_dbg(ptr noundef %dev12, i32 noundef 1, ptr noundef nonnull @__func__.brcms_ops_configure_filter, ptr noundef nonnull @.str.69) #11
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end8.if.end13_crit_edge
  %and14 = and i32 %changed_flags, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end13.if.end18_crit_edge, label %if.then16

if.end13.if.end18_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  %dev17 = getelementptr inbounds %struct.bcma_device, ptr %7, i32 0, i32 2
  tail call void (ptr, i32, ptr, ptr, ...) @__brcms_dbg(ptr noundef %dev17, i32 noundef 1, ptr noundef nonnull @__func__.brcms_ops_configure_filter, ptr noundef nonnull @.str.70) #11
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end13.if.end18_crit_edge
  %and19 = and i32 %changed_flags, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.end18.if.end23_crit_edge, label %if.then21

if.end18.if.end23_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  %dev22 = getelementptr inbounds %struct.bcma_device, ptr %7, i32 0, i32 2
  tail call void (ptr, i32, ptr, ptr, ...) @__brcms_dbg(ptr noundef %dev22, i32 noundef 1, ptr noundef nonnull @__func__.brcms_ops_configure_filter, ptr noundef nonnull @.str.71) #11
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.end18.if.end23_crit_edge
  %and24 = and i32 %changed_flags, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.end23.if.end28_crit_edge, label %if.then26

if.end23.if.end28_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

if.then26:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  %dev27 = getelementptr inbounds %struct.bcma_device, ptr %7, i32 0, i32 2
  tail call void (ptr, i32, ptr, ptr, ...) @__brcms_dbg(ptr noundef %dev27, i32 noundef 1, ptr noundef nonnull @__func__.brcms_ops_configure_filter, ptr noundef nonnull @.str.72) #11
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.end23.if.end28_crit_edge
  %lock = getelementptr inbounds %struct.brcms_info, ptr %1, i32 0, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #11
  %10 = ptrtoint ptr %wlc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wlc, align 4
  %12 = ptrtoint ptr %total_flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %total_flags, align 4
  tail call void @brcms_c_mac_promisc(ptr noundef %11, i32 noundef %13) #11
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcms_ops_beacon_set_tim(ptr noundef %hw, ptr nocapture noundef readnone %sta, i1 noundef zeroext %set) #0 align 64 {
entry:
  %tim_offset = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tim_offset) #11
  %2 = ptrtoint ptr %tim_offset to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %tim_offset, align 2
  %lock = getelementptr inbounds %struct.brcms_info, ptr %1, i32 0, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #11
  %wlc = getelementptr inbounds %struct.brcms_info, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %wlc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wlc, align 4
  %vif = getelementptr inbounds %struct.brcms_c_info, ptr %4, i32 0, i32 67
  %5 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %vif, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %if.end

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.end:                                           ; preds = %entry
  %call = call ptr @ieee80211_beacon_get_tim(ptr noundef %hw, ptr noundef nonnull %6, ptr noundef nonnull %tim_offset, ptr noundef null) #11
  %tobool3.not = icmp eq ptr %call, null
  br i1 %tobool3.not, label %if.end.if.end8_crit_edge, label %if.then4

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %wlc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %wlc, align 4
  %9 = ptrtoint ptr %tim_offset to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %tim_offset, align 2
  %vif7 = getelementptr inbounds %struct.brcms_c_info, ptr %8, i32 0, i32 67
  %11 = ptrtoint ptr %vif7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %vif7, align 4
  %dtim_period = getelementptr inbounds %struct.ieee80211_vif, ptr %12, i32 0, i32 1, i32 18
  %13 = ptrtoint ptr %dtim_period to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %dtim_period, align 8
  %conv = zext i8 %14 to i16
  call void @brcms_c_set_new_beacon(ptr noundef %8, ptr noundef nonnull %call, i16 noundef zeroext %10, i16 noundef zeroext %conv) #11
  br label %if.end8

if.end8:                                          ; preds = %if.then4, %if.end.if.end8_crit_edge, %entry.if.end8_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %lock) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tim_offset) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @brcms_ops_sw_scan_start(ptr nocapture noundef readonly %hw, ptr nocapture noundef readnone %vif, ptr nocapture noundef readnone %mac_addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %lock = getelementptr inbounds %struct.brcms_info, ptr %1, i32 0, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #11
  %wlc = getelementptr inbounds %struct.brcms_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %wlc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wlc, align 4
  tail call void @brcms_c_scan_start(ptr noundef %3) #11
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @brcms_ops_sw_scan_complete(ptr nocapture noundef readonly %hw, ptr nocapture noundef readnone %vif) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %lock = getelementptr inbounds %struct.brcms_info, ptr %1, i32 0, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #11
  %wlc = getelementptr inbounds %struct.brcms_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %wlc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wlc, align 4
  tail call void @brcms_c_scan_stop(ptr noundef %3) #11
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcms_ops_sta_add(ptr nocapture noundef readonly %hw, ptr nocapture noundef readnone %vif, ptr nocapture noundef readnone %sta) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %wlc = getelementptr inbounds %struct.brcms_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %wlc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wlc, align 4
  %pri_scb = getelementptr inbounds %struct.brcms_c_info, ptr %3, i32 0, i32 66
  tail call void @brcms_c_init_scb(ptr noundef %pri_scb) #11
  %scb_ampdu = getelementptr inbounds %struct.brcms_c_info, ptr %3, i32 0, i32 66, i32 9
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %global_ampdu = getelementptr inbounds %struct.brcms_pub, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %global_ampdu to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %scb_ampdu, ptr %global_ampdu, align 4
  %7 = load ptr, ptr %1, align 4
  %global_ampdu2 = getelementptr inbounds %struct.brcms_pub, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %global_ampdu2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %global_ampdu2, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %pri_scb, ptr %9, align 4
  %11 = load ptr, ptr %1, align 4
  %global_ampdu5 = getelementptr inbounds %struct.brcms_pub, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %global_ampdu5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %global_ampdu5, align 4
  %max_pdu = getelementptr inbounds %struct.scb_ampdu, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %max_pdu to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 16, ptr %max_pdu, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcms_ops_conf_tx(ptr nocapture noundef readonly %hw, ptr nocapture noundef readnone %vif, i16 noundef zeroext %queue, ptr noundef %params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %lock = getelementptr inbounds %struct.brcms_info, ptr %1, i32 0, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #11
  %wlc = getelementptr inbounds %struct.brcms_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %wlc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wlc, align 4
  tail call void @brcms_c_wme_setparams(ptr noundef %3, i16 noundef zeroext %queue, ptr noundef %params, i1 noundef zeroext true) #11
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @brcms_ops_get_tsf(ptr nocapture noundef readonly %hw, ptr nocapture noundef readnone %vif) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %lock = getelementptr inbounds %struct.brcms_info, ptr %1, i32 0, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #11
  %wlc = getelementptr inbounds %struct.brcms_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %wlc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wlc, align 4
  %call = tail call i64 @brcms_c_tsf_get(ptr noundef %3) #11
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #11
  ret i64 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @brcms_ops_set_tsf(ptr nocapture noundef readonly %hw, ptr nocapture noundef readnone %vif, i64 noundef %tsf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %lock = getelementptr inbounds %struct.brcms_info, ptr %1, i32 0, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #11
  %wlc = getelementptr inbounds %struct.brcms_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %wlc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wlc, align 4
  tail call void @brcms_c_tsf_set(ptr noundef %3, i64 noundef %tsf) #11
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcms_ops_ampdu_action(ptr nocapture noundef readonly %hw, ptr noundef %vif, ptr nocapture noundef readonly %params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %wlc = getelementptr inbounds %struct.brcms_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %wlc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wlc, align 4
  %pri_scb = getelementptr inbounds %struct.brcms_c_info, ptr %3, i32 0, i32 66
  %sta1 = getelementptr inbounds %struct.ieee80211_ampdu_params, ptr %params, i32 0, i32 1
  %4 = ptrtoint ptr %sta1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sta1, align 4
  %tid3 = getelementptr inbounds %struct.ieee80211_ampdu_params, ptr %params, i32 0, i32 2
  %6 = ptrtoint ptr %tid3 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %tid3, align 4
  %buf_size4 = getelementptr inbounds %struct.ieee80211_ampdu_params, ptr %params, i32 0, i32 4
  %8 = ptrtoint ptr %buf_size4 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %buf_size4, align 4
  %conv = trunc i16 %9 to i8
  %10 = ptrtoint ptr %pri_scb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pri_scb, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1091581186, i32 %11)
  %cmp.not = icmp eq i32 %11, -1091581186
  br i1 %cmp.not, label %if.end26, label %do.end, !prof !240

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 835, i32 noundef 9, ptr noundef null) #11
  br label %cleanup

if.end26:                                         ; preds = %entry
  %12 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %params, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.104)
  switch i32 %13, label %sw.default [
    i32 0, label %if.end26.cleanup_crit_edge
    i32 1, label %if.end26.cleanup_crit_edge78
    i32 2, label %sw.bb
    i32 3, label %if.end26.sw.bb37_crit_edge
    i32 4, label %if.end26.sw.bb37_crit_edge79
    i32 5, label %if.end26.sw.bb37_crit_edge80
    i32 6, label %sw.bb41
  ]

if.end26.sw.bb37_crit_edge80:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb37

if.end26.sw.bb37_crit_edge79:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb37

if.end26.sw.bb37_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb37

if.end26.cleanup_crit_edge78:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %if.end26
  %lock = getelementptr inbounds %struct.brcms_info, ptr %1, i32 0, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #11
  %15 = ptrtoint ptr %wlc to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %wlc, align 4
  %conv28 = trunc i16 %7 to i8
  %call = tail call zeroext i1 @brcms_c_aggregatable(ptr noundef %16, i8 noundef zeroext %conv28) #11
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #11
  br i1 %call, label %sw.bb.cleanup_crit_edge, label %if.then32

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then32:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %wlc to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %wlc, align 4
  %hw34 = getelementptr inbounds %struct.brcms_c_info, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %hw34 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hw34, align 4
  %d11core = getelementptr inbounds %struct.brcms_hardware, ptr %20, i32 0, i32 14
  %21 = ptrtoint ptr %d11core to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %d11core, align 4
  %dev = getelementptr inbounds %struct.bcma_device, ptr %22, i32 0, i32 2
  %conv35 = zext i16 %7 to i32
  tail call void (ptr, i32, ptr, ptr, ...) @__brcms_dbg(ptr noundef %dev, i32 noundef 64, ptr noundef nonnull @__func__.brcms_ops_ampdu_action, ptr noundef nonnull @.str.73, i32 noundef %conv35) #11
  br label %cleanup

sw.bb37:                                          ; preds = %if.end26.sw.bb37_crit_edge, %if.end26.sw.bb37_crit_edge79, %if.end26.sw.bb37_crit_edge80
  %lock38 = getelementptr inbounds %struct.brcms_info, ptr %1, i32 0, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %lock38) #11
  %23 = ptrtoint ptr %wlc to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %wlc, align 4
  tail call void @brcms_c_ampdu_flush(ptr noundef %24, ptr noundef %5, i16 noundef zeroext %7) #11
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock38) #11
  %addr = getelementptr inbounds %struct.ieee80211_sta, ptr %5, i32 0, i32 1
  tail call void @ieee80211_stop_tx_ba_cb_irqsafe(ptr noundef %vif, ptr noundef %addr, i16 noundef zeroext %7) #11
  br label %cleanup

sw.bb41:                                          ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  %lock42 = getelementptr inbounds %struct.brcms_info, ptr %1, i32 0, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %lock42) #11
  %25 = ptrtoint ptr %wlc to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %wlc, align 4
  %conv44 = trunc i16 %7 to i8
  %ampdu_factor = getelementptr inbounds %struct.ieee80211_sta, ptr %5, i32 0, i32 3, i32 2
  %27 = ptrtoint ptr %ampdu_factor to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %ampdu_factor, align 1
  %conv45 = zext i8 %28 to i32
  %shl = shl i32 8192, %conv45
  %sub = add i32 %shl, -1
  tail call void @brcms_c_ampdu_tx_operational(ptr noundef %26, i8 noundef zeroext %conv44, i8 noundef zeroext %conv, i32 noundef %sub) #11
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock42) #11
  br label %cleanup

sw.default:                                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  %hw48 = getelementptr inbounds %struct.brcms_c_info, ptr %3, i32 0, i32 2
  %29 = ptrtoint ptr %hw48 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hw48, align 4
  %d11core49 = getelementptr inbounds %struct.brcms_hardware, ptr %30, i32 0, i32 14
  %31 = ptrtoint ptr %d11core49 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %d11core49, align 4
  %dev50 = getelementptr inbounds %struct.bcma_device, ptr %32, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__brcms_err(ptr noundef %dev50, ptr noundef nonnull @.str.74, ptr noundef nonnull @__func__.brcms_ops_ampdu_action) #11
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb41, %sw.bb37, %if.then32, %sw.bb.cleanup_crit_edge, %if.end26.cleanup_crit_edge, %if.end26.cleanup_crit_edge78, %do.end
  %retval.0 = phi i32 [ -43, %do.end ], [ -22, %if.then32 ], [ 1, %sw.bb.cleanup_crit_edge ], [ 0, %sw.default ], [ 0, %sw.bb41 ], [ 0, %sw.bb37 ], [ 0, %if.end26.cleanup_crit_edge ], [ 0, %if.end26.cleanup_crit_edge78 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @brcms_ops_rfkill_poll(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %lock = getelementptr inbounds %struct.brcms_info, ptr %1, i32 0, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #11
  %wlc = getelementptr inbounds %struct.brcms_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %wlc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wlc, align 4
  %call = tail call zeroext i1 @brcms_c_check_radio_disabled(ptr noundef %3) #11
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #11
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %ieee_hw = getelementptr inbounds %struct.brcms_pub, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %ieee_hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ieee_hw, align 4
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wiphy, align 8
  tail call void @wiphy_rfkill_set_hw_state_reason(ptr noundef %9, i1 noundef zeroext %call, i32 noundef 1) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @brcms_ops_flush(ptr nocapture noundef readonly %hw, ptr nocapture noundef readnone %vif, i32 noundef %queues, i1 noundef zeroext %drop) #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  tail call void @__might_sleep(ptr noundef nonnull @.str.13, i32 noundef 915) #11
  %lock.i = getelementptr inbounds %struct.brcms_info, ptr %1, i32 0, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #11
  %wlc.i = getelementptr inbounds %struct.brcms_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %wlc.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wlc.i, align 4
  %call.i = tail call zeroext i1 @brcms_c_tx_flush_completed(ptr noundef %3) #11
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #11
  br i1 %call.i, label %entry.if.end36_crit_edge, label %if.then11

entry.if.end36_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

if.then11:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #11
  %4 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #11
  %tx_flush_wq = getelementptr inbounds %struct.brcms_info, ptr %1, i32 0, i32 6
  br label %for.cond

for.cond:                                         ; preds = %cleanup, %if.then11
  %__ret12.0 = phi i32 [ 50, %if.then11 ], [ %call33, %cleanup ]
  %call14 = call i32 @prepare_to_wait_event(ptr noundef %tx_flush_wq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #11
  call void @_raw_spin_lock_bh(ptr noundef %lock.i) #11
  %5 = ptrtoint ptr %wlc.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wlc.i, align 4
  %call.i54 = call zeroext i1 @brcms_c_tx_flush_completed(ptr noundef %6) #11
  call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret12.0)
  %tobool20.not = icmp eq i32 %__ret12.0, 0
  %7 = select i1 %call.i54, i1 %tobool20.not, i1 false
  %__ret12.1 = select i1 %7, i32 1, i32 %__ret12.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret12.1)
  %tobool26.not = icmp eq i32 %__ret12.1, 0
  %8 = select i1 %call.i54, i1 true, i1 %tobool26.not
  br i1 %8, label %for.end, label %cleanup

cleanup:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  %call33 = call i32 @schedule_timeout(i32 noundef %__ret12.1) #11
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  call void @finish_wait(ptr noundef %tx_flush_wq, ptr noundef nonnull %__wq_entry) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #11
  br label %if.end36

if.end36:                                         ; preds = %for.end, %entry.if.end36_crit_edge
  %__ret.1 = phi i32 [ 50, %entry.if.end36_crit_edge ], [ %__ret12.1, %for.end ]
  %9 = ptrtoint ptr %wlc.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %wlc.i, align 4
  %hw38 = getelementptr inbounds %struct.brcms_c_info, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %hw38 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw38, align 4
  %d11core = getelementptr inbounds %struct.brcms_hardware, ptr %12, i32 0, i32 14
  %13 = ptrtoint ptr %d11core to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %d11core, align 4
  %dev = getelementptr inbounds %struct.bcma_device, ptr %14, i32 0, i32 2
  %call39 = call i32 @jiffies_to_msecs(i32 noundef %__ret.1) #11
  call void (ptr, i32, ptr, ptr, ...) @__brcms_dbg(ptr noundef %dev, i32 noundef 2, ptr noundef nonnull @__func__.brcms_ops_flush, ptr noundef nonnull @.str.75, i32 noundef %call39) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @brcms_c_sendpkt_mac80211(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_wake_queues(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bcma_core_pci_power_save(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcms_ucode_data_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rfkill_pause_polling(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_stop_queues(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @brcms_c_chipmatch(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcms_c_mute(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcms_c_start_station(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcms_c_start_ap(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcms_c_start_adhoc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcms_c_set_beacon_listen_interval(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcms_c_set_tx_power(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcms_c_get_tx_power(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcms_c_set_channel(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcms_c_set_rate_limit(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcms_c_associate_upd(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcms_c_set_shortslot_override(ptr noundef, i8 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcms_c_protection_upd(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcms_c_get_current_rateset(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcms_c_get_curband(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcms_c_set_rateset(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcms_c_set_beacon_period(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcms_c_set_addrmatch(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcms_c_set_ssid(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_beacon_get_tim(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcms_c_set_new_beacon(ptr noundef, ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_proberesp_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcms_c_set_new_probe_resp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcms_c_enable_probe_resp(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcms_c_mac_promisc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcms_c_scan_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcms_c_scan_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcms_c_init_scb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcms_c_wme_setparams(ptr noundef, i16 noundef zeroext, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @brcms_c_tsf_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcms_c_tsf_set(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @brcms_c_aggregatable(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcms_c_ampdu_flush(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_stop_tx_ba_cb_irqsafe(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcms_c_ampdu_tx_operational(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @brcms_c_tx_flush_completed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @brcms_c_attach(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @brcms_c_pub(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcms_isr(i32 noundef %irq, ptr noundef %dev_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %isr_lock = getelementptr inbounds %struct.brcms_info, ptr %dev_id, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %isr_lock) #11
  %wlc = getelementptr inbounds %struct.brcms_info, ptr %dev_id, i32 0, i32 1
  %0 = ptrtoint ptr %wlc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wlc, align 4
  %call = tail call zeroext i1 @brcms_c_isr(ptr noundef %1) #11
  br i1 %call, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  %state.i = getelementptr inbounds %struct.brcms_info, ptr %dev_id, i32 0, i32 9, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %tasklet = getelementptr inbounds %struct.brcms_info, ptr %dev_id, i32 0, i32 9
  tail call void @__tasklet_schedule(ptr noundef %tasklet) #11
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ 0, %entry.if.end_crit_edge ], [ 1, %if.then.if.end_crit_edge ], [ 1, %if.then.i ]
  tail call void @_raw_spin_unlock(ptr noundef %isr_lock) #11
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcms_c_module_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcms_c_regd_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_register_hw(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulatory_hint(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcms_debugfs_attach(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcms_debugfs_create_files(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @brcms_free(ptr noundef %wl) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %fw = getelementptr inbounds %struct.brcms_info, ptr %wl, i32 0, i32 11
  %0 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %ucode = getelementptr inbounds %struct.brcms_info, ptr %wl, i32 0, i32 13
  tail call void @brcms_ucode_data_free(ptr noundef %ucode) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %irq = getelementptr inbounds %struct.brcms_info, ptr %wl, i32 0, i32 3
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %if.end.if.end4_crit_edge, label %if.then2

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call ptr @free_irq(i32 noundef %3, ptr noundef %wl) #11
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  %tasklet = getelementptr inbounds %struct.brcms_info, ptr %wl, i32 0, i32 9
  tail call void @tasklet_kill(ptr noundef %tasklet) #11
  %4 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wl, align 4
  %tobool5.not = icmp eq ptr %5, null
  br i1 %tobool5.not, label %if.end4.if.end10_crit_edge, label %if.then6

if.end4.if.end10_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @brcms_debugfs_detach(ptr noundef nonnull %5) #11
  %6 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wl, align 4
  %call9 = tail call i32 @brcms_c_module_unregister(ptr noundef %7, ptr noundef nonnull @.str.86, ptr noundef %wl) #11
  br label %if.end10

if.end10:                                         ; preds = %if.then6, %if.end4.if.end10_crit_edge
  %wlc = getelementptr inbounds %struct.brcms_info, ptr %wl, i32 0, i32 1
  %8 = ptrtoint ptr %wlc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wlc, align 4
  %tobool11.not = icmp eq ptr %9, null
  br i1 %tobool11.not, label %if.end10.if.end17_crit_edge, label %if.then12

if.end10.if.end17_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  %call14 = tail call i32 @brcms_c_detach(ptr noundef nonnull %9) #11
  %10 = ptrtoint ptr %wlc to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %wlc, align 4
  %11 = ptrtoint ptr %wl to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %wl, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then12, %if.end10.if.end17_crit_edge
  %callbacks = getelementptr inbounds %struct.brcms_info, ptr %wl, i32 0, i32 7
  %call.i.i41 = tail call zeroext i1 @__kasan_check_read(ptr noundef %callbacks, i32 noundef 4) #11
  %12 = ptrtoint ptr %callbacks to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %callbacks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp42 = icmp sgt i32 %13, 0
  br i1 %cmp42, label %if.end17.while.body_crit_edge, label %if.end17.while.end_crit_edge

if.end17.while.end_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

if.end17.while.body_crit_edge:                    ; preds = %if.end17
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end17.while.body_crit_edge
  tail call void @schedule() #11
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %callbacks, i32 noundef 4) #11
  %14 = ptrtoint ptr %callbacks to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %callbacks, align 4
  %cmp = icmp sgt i32 %15, 0
  br i1 %cmp, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.end17.while.end_crit_edge
  %timers = getelementptr inbounds %struct.brcms_info, ptr %wl, i32 0, i32 8
  %16 = ptrtoint ptr %timers to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %timers, align 4
  %tobool19.not43 = icmp eq ptr %17, null
  br i1 %tobool19.not43, label %while.end.for.end_crit_edge, label %while.end.for.body_crit_edge

while.end.for.body_crit_edge:                     ; preds = %while.end
  br label %for.body

while.end.for.end_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %while.end.for.body_crit_edge
  %t.044 = phi ptr [ %19, %for.body.for.body_crit_edge ], [ %17, %while.end.for.body_crit_edge ]
  %next20 = getelementptr inbounds %struct.brcms_timer, ptr %t.044, i32 0, i32 7
  %18 = ptrtoint ptr %next20 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %next20, align 4
  %name = getelementptr inbounds %struct.brcms_timer, ptr %t.044, i32 0, i32 8
  %20 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %name, align 4
  tail call void @kfree(ptr noundef %21) #11
  tail call void @kfree(ptr noundef nonnull %t.044) #11
  %tobool19.not = icmp eq ptr %19, null
  br i1 %tobool19.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %while.end.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @brcms_c_isr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcms_c_get_header_len() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @brcms_c_get_phy_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcms_ucode_data_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcms_debugfs_detach(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcms_c_module_unregister(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcms_c_detach(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcms_led_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_unregister_hw(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcms_debugfs_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @wiphy_rfkill_set_hw_state_reason(ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 107)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 107)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !14, !16, !18, !20, !21, !23, !24, !26, !27, !29, !31, !32, !33, !34, !36, !37, !39, !41, !43, !45, !46, !47, !48, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !68, !70, !71, !73, !74, !75, !76, !78, !80, !82, !84, !85, !86, !87, !88, !90, !91, !92, !94, !95, !96, !98, !100, !102, !103, !105, !107, !108, !109, !110, !112, !114, !115, !117, !119, !121, !123, !124, !126, !127, !128, !129, !131, !133, !135, !137, !138, !139, !140, !142, !144, !146, !148, !150, !152, !154, !155, !157, !159, !161, !163, !165, !167, !168, !170, !172, !173, !175, !176, !178, !179, !181, !182, !184, !185, !186, !187, !189, !190, !191, !193, !195, !196, !197, !199, !200, !201, !203, !204, !205, !207, !209, !211, !213, !215, !217, !219, !221, !222, !223, !224}
!llvm.module.flags = !{!226, !227, !228, !229, !230, !231, !232, !233}
!llvm.ident = !{!234}

!0 = !{ptr @__UNIQUE_ID_author350, !1, !"__UNIQUE_ID_author350", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/mac80211_if.c", i32 88, i32 1}
!2 = !{ptr @__UNIQUE_ID_description351, !3, !"__UNIQUE_ID_description351", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/mac80211_if.c", i32 89, i32 1}
!4 = !{ptr @__UNIQUE_ID_file352, !5, !"__UNIQUE_ID_file352", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/mac80211_if.c", i32 90, i32 1}
!6 = !{ptr @__UNIQUE_ID_license353, !5, !"__UNIQUE_ID_license353", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_firmware354, !8, !"__UNIQUE_ID_firmware354", i1 false, i1 false}
!8 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/mac80211_if.c", i32 92, i32 1}
!9 = !{ptr @__UNIQUE_ID_firmware355, !10, !"__UNIQUE_ID_firmware355", i1 false, i1 false}
!10 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/mac80211_if.c", i32 93, i32 1}
!11 = !{ptr @__param_debug, !12, !"__param_debug", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/mac80211_if.c", i32 110, i32 1}
!13 = !{ptr @__UNIQUE_ID_debugtype356, !12, !"__UNIQUE_ID_debugtype356", i1 false, i1 false}
!14 = !{ptr @__initcall__kmod_brcmsmac__357_1338_brcms_module_init6, !15, !"__initcall__kmod_brcmsmac__357_1338_brcms_module_init6", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/mac80211_if.c", i32 1338, i32 1}
!16 = !{ptr @__exitcall_brcms_module_exit, !17, !"__exitcall_brcms_module_exit", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/mac80211_if.c", i32 1339, i32 1}
!18 = !{ptr @.str, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/mac80211_if.c", i32 1347, i32 2}
!20 = !{ptr @__func__.brcms_txflowcontrol, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @__func__.brcms_init, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/mac80211_if.c", i32 1355, i32 2}
!23 = !{ptr @.str.1, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @__func__.brcms_reset, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/mac80211_if.c", i32 1366, i32 2}
!26 = !{ptr @.str.2, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.3, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/mac80211_if.c", i32 1380, i32 2}
!29 = !{ptr @brcms_init_timer.__key, !30, !"__key", i1 false, i1 false}
!30 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/mac80211_if.c", i32 1501, i32 2}
!31 = !{ptr @.str.4, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @brcms_init_timer.__key.5, !30, !"__key", i1 false, i1 false}
!33 = !{ptr @.str.6, !30, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @__func__.brcms_add_timer, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/mac80211_if.c", i32 1527, i32 3}
!36 = !{ptr @.str.7, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.8, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/mac80211_if.c", i32 1619, i32 2}
!39 = !{ptr @.str.9, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/mac80211_if.c", i32 1643, i32 6}
!41 = !{ptr @.str.10, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/mac80211_if.c", i32 1652, i32 2}
!43 = !{ptr @.str.11, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/mac80211_if.c", i32 1685, i32 4}
!45 = !{ptr @.str.12, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.13, !44, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @brcms_check_firmwares._entry, !44, !"_entry", i1 false, i1 false}
!50 = !{ptr @brcms_check_firmwares._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.17, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/mac80211_if.c", i32 1689, i32 4}
!53 = !{ptr @brcms_check_firmwares._entry.16, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @brcms_check_firmwares._entry_ptr.18, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.20, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/mac80211_if.c", i32 1694, i32 4}
!57 = !{ptr @brcms_check_firmwares._entry.19, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @brcms_check_firmwares._entry_ptr.21, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.23, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/mac80211_if.c", i32 1705, i32 6}
!61 = !{ptr @brcms_check_firmwares._entry.22, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @brcms_check_firmwares._entry_ptr.24, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.26, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/mac80211_if.c", i32 1714, i32 3}
!65 = !{ptr @brcms_check_firmwares._entry.25, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @brcms_check_firmwares._entry_ptr.27, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @__param_str_debug, !12, !"__param_str_debug", i1 false, i1 false}
!68 = !{ptr @.str.28, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/mac80211_if.c", i32 1313, i32 8}
!70 = !{ptr @brcms_driver_work, !69, !"brcms_driver_work", i1 false, i1 false}
!71 = !{ptr @.str.29, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/mac80211_if.c", i32 1310, i32 3}
!73 = !{ptr @.str.30, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @brcms_driver_init._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @brcms_driver_init._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.31, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/mac80211_if.c", i32 1289, i32 14}
!78 = !{ptr @brcms_bcma_driver, !79, !"brcms_bcma_driver", i1 false, i1 false}
!79 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/mac80211_if.c", i32 1288, i32 27}
!80 = !{ptr @brcms_coreid_table, !81, !"brcms_coreid_table", i1 false, i1 false}
!81 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/mac80211_if.c", i32 96, i32 30}
!82 = !{ptr @.str.32, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/mac80211_if.c", i32 1225, i32 2}
!84 = !{ptr @.str.33, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.34, !83, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @brcms_bcma_probe._entry, !83, !"_entry", i1 false, i1 false}
!87 = !{ptr @brcms_bcma_probe._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.36, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/mac80211_if.c", i32 1235, i32 3}
!90 = !{ptr @brcms_bcma_probe._entry.35, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @brcms_bcma_probe._entry_ptr.37, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.39, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/mac80211_if.c", i32 1247, i32 3}
!94 = !{ptr @brcms_bcma_probe._entry.38, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @brcms_bcma_probe._entry_ptr.40, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @brcms_ops, !97, !"brcms_ops", i1 false, i1 false}
!97 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/mac80211_if.c", i32 962, i32 35}
!98 = !{ptr @.str.41, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/mac80211_if.c", i32 410, i32 3}
!100 = !{ptr @.str.42, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/mac80211_if.c", i32 453, i32 3}
!102 = !{ptr @__func__.brcms_ops_start, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @.str.43, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/mac80211_if.c", i32 376, i32 20}
!105 = !{ptr @.str.44, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/mac80211_if.c", i32 380, i32 4}
!107 = !{ptr @.str.45, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @brcms_request_fw._entry, !106, !"_entry", i1 false, i1 false}
!109 = !{ptr @brcms_request_fw._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.46, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/mac80211_if.c", i32 384, i32 20}
!112 = !{ptr @brcms_request_fw._entry.47, !113, !"_entry", i1 false, i1 false}
!113 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/mac80211_if.c", i32 388, i32 4}
!114 = !{ptr @brcms_request_fw._entry_ptr.48, !113, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.49, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/mac80211_if.c", i32 82, i32 2}
!117 = distinct !{null, !118, !"brcms_firmwares", i1 false, i1 false}
!118 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/mac80211_if.c", i32 81, i32 27}
!119 = !{ptr @.str.50, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/mac80211_if.c", i32 474, i32 3}
!121 = !{ptr @.str.51, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/mac80211_if.c", i32 496, i32 3}
!123 = !{ptr @__func__.brcms_ops_add_interface, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @__func__.brcms_ops_config, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/mac80211_if.c", i32 542, i32 3}
!126 = !{ptr @.str.52, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @.str.53, !125, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @.str.54, !125, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @.str.55, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/mac80211_if.c", i32 546, i32 3}
!131 = !{ptr @.str.56, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/mac80211_if.c", i32 553, i32 4}
!133 = !{ptr @.str.57, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/mac80211_if.c", i32 559, i32 4}
!135 = !{ptr @.str.58, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/mac80211_if.c", i32 594, i32 3}
!137 = !{ptr @__func__.brcms_ops_bss_info_changed, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @.str.59, !136, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @.str.60, !136, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @.str.61, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/mac80211_if.c", i32 654, i32 4}
!142 = !{ptr @.str.62, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/mac80211_if.c", i32 698, i32 3}
!144 = !{ptr @.str.63, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/mac80211_if.c", i32 710, i32 3}
!146 = !{ptr @.str.64, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/mac80211_if.c", i32 717, i32 3}
!148 = !{ptr @.str.65, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/mac80211_if.c", i32 723, i32 3}
!150 = !{ptr @.str.66, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/mac80211_if.c", i32 732, i32 3}
!152 = !{ptr @__func__.brcms_ops_configure_filter, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/mac80211_if.c", i32 750, i32 3}
!154 = !{ptr @.str.67, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @.str.68, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/mac80211_if.c", i32 752, i32 3}
!157 = !{ptr @.str.69, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/mac80211_if.c", i32 754, i32 3}
!159 = !{ptr @.str.70, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/mac80211_if.c", i32 756, i32 3}
!161 = !{ptr @.str.71, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/mac80211_if.c", i32 758, i32 3}
!163 = !{ptr @.str.72, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/mac80211_if.c", i32 760, i32 3}
!165 = !{ptr @__func__.brcms_ops_ampdu_action, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/mac80211_if.c", i32 847, i32 4}
!167 = !{ptr @.str.73, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @.str.74, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/mac80211_if.c", i32 876, i32 3}
!170 = !{ptr @__func__.brcms_ops_flush, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/mac80211_if.c", i32 917, i32 2}
!172 = !{ptr @.str.75, !171, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @brcms_attach.__key, !174, !"__key", i1 false, i1 false}
!174 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/mac80211_if.c", i32 1147, i32 2}
!175 = !{ptr @.str.76, !174, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @brcms_attach.__key.77, !177, !"__key", i1 false, i1 false}
!177 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/mac80211_if.c", i32 1152, i32 2}
!178 = !{ptr @.str.78, !177, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @brcms_attach.__key.79, !180, !"__key", i1 false, i1 false}
!180 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/mac80211_if.c", i32 1153, i32 2}
!181 = !{ptr @.str.80, !180, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @.str.81, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/mac80211_if.c", i32 1158, i32 3}
!184 = !{ptr @.str.82, !183, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @brcms_attach._entry, !183, !"_entry", i1 false, i1 false}
!186 = !{ptr @brcms_attach._entry_ptr, !183, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @.str.84, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/mac80211_if.c", i32 1169, i32 3}
!189 = !{ptr @brcms_attach._entry.83, !188, !"_entry", i1 false, i1 false}
!190 = !{ptr @brcms_attach._entry_ptr.85, !188, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @.str.86, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/mac80211_if.c", i32 1175, i32 35}
!193 = !{ptr @.str.88, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/mac80211_if.c", i32 1178, i32 3}
!195 = !{ptr @brcms_attach._entry.87, !194, !"_entry", i1 false, i1 false}
!196 = !{ptr @brcms_attach._entry_ptr.89, !194, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @.str.91, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/mac80211_if.c", i32 1192, i32 3}
!199 = !{ptr @brcms_attach._entry.90, !198, !"_entry", i1 false, i1 false}
!200 = !{ptr @brcms_attach._entry_ptr.92, !198, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @.str.94, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/mac80211_if.c", i32 1197, i32 3}
!203 = !{ptr @brcms_attach._entry.93, !202, !"_entry", i1 false, i1 false}
!204 = !{ptr @brcms_attach._entry_ptr.95, !202, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @n_adapters_found, !206, !"n_adapters_found", i1 false, i1 false}
!206 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/mac80211_if.c", i32 86, i32 12}
!207 = !{ptr @.str.96, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/mac80211_if.c", i32 1110, i32 31}
!209 = !{ptr @brcms_band_2GHz_nphy_template, !210, !"brcms_band_2GHz_nphy_template", i1 false, i1 false}
!210 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/mac80211_if.c", i32 218, i32 46}
!211 = !{ptr @brcms_2ghz_chantable, !212, !"brcms_2ghz_chantable", i1 false, i1 false}
!212 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/mac80211_if.c", i32 113, i32 33}
!213 = !{ptr @legacy_ratetable, !214, !"legacy_ratetable", i1 false, i1 false}
!214 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/mac80211_if.c", i32 203, i32 30}
!215 = !{ptr @brcms_band_5GHz_nphy_template, !216, !"brcms_band_5GHz_nphy_template", i1 false, i1 false}
!216 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/mac80211_if.c", i32 239, i32 46}
!217 = !{ptr @brcms_5ghz_nphy_chantable, !218, !"brcms_5ghz_nphy_chantable", i1 false, i1 false}
!218 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/mac80211_if.c", i32 137, i32 33}
!219 = !{ptr @.str.99, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/mac80211_if.c", i32 1268, i32 3}
!221 = !{ptr @.str.100, !220, !"<string literal>", i1 false, i1 false}
!222 = !{ptr @brcms_suspend._entry, !220, !"_entry", i1 false, i1 false}
!223 = !{ptr @brcms_suspend._entry_ptr, !220, !"_entry_ptr", i1 false, i1 false}
!224 = !{ptr @.str.101, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/mac80211_if.c", i32 1278, i32 2}
!226 = !{i32 1, !"wchar_size", i32 2}
!227 = !{i32 1, !"min_enum_size", i32 4}
!228 = !{i32 8, !"branch-target-enforcement", i32 0}
!229 = !{i32 8, !"sign-return-address", i32 0}
!230 = !{i32 8, !"sign-return-address-all", i32 0}
!231 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!232 = !{i32 7, !"uwtable", i32 1}
!233 = !{i32 7, !"frame-pointer", i32 2}
!234 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!235 = !{i8 0, i8 2}
!236 = !{i64 2148410033, i64 2148410059, i64 2148410088, i64 2148410122, i64 2148410153, i64 2148410176}
!237 = !{i64 2148412498, i64 2148412524, i64 2148412553, i64 2148412587, i64 2148412618, i64 2148412641}
!238 = !{!"branch_weights", i32 1, i32 2000}
!239 = !{!"branch_weights", i32 -102759400, i32 4193255}
!240 = !{!"branch_weights", i32 2000, i32 1}
