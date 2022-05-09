; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/broadcom/brcm80211/brcmsmac/channel.c_pt.bc'
source_filename = "../drivers/net/wireless/broadcom/brcm80211/brcmsmac/channel.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.locale_mimo_info = type { [14 x i8], [14 x i8] }
%struct.brcms_regd = type { %struct.country_info, ptr }
%struct.country_info = type { i8, i8 }
%struct.callback_head = type { ptr, ptr }
%struct.ieee80211_reg_rule = type { %struct.ieee80211_freq_range, %struct.ieee80211_power_rule, %struct.ieee80211_wmm_rule, i32, i32, i8 }
%struct.ieee80211_freq_range = type { i32, i32, i32 }
%struct.ieee80211_power_rule = type { i32, i32 }
%struct.ieee80211_wmm_rule = type { [4 x %struct.ieee80211_wmm_ac], [4 x %struct.ieee80211_wmm_ac] }
%struct.ieee80211_wmm_ac = type { i16, i16, i16, i8 }
%struct.brcms_c_info = type { ptr, ptr, ptr, i16, i32, i32, i32, i8, ptr, ptr, ptr, [2 x ptr], i32, ptr, ptr, ptr, i16, i16, i32, [6 x i8], i8, i8, i8, i8, i8, ptr, ptr, i32, i8, i8, i8, i8, i32, [4 x i16], [4 x i16], ptr, ptr, i8, i8, i8, i8, ptr, i16, [4 x i8], [4 x i8], i16, i16, i16, i16, [6 x i16], i16, i16, i16, i16, i16, i8, i8, i8, ptr, i8, ptr, i32, i32, i16, i16, ptr, %struct.scb, ptr, ptr, i16, i16, ptr }
%struct.scb = type { i32, i32, i32, i8, [6 x i8], [8 x i32], [8 x i16], i16, [8 x i16], %struct.scb_ampdu }
%struct.scb_ampdu = type { ptr, i8, i8, i8, i16, i32, [8 x %struct.scb_ampdu_tid_ini] }
%struct.scb_ampdu_tid_ini = type { i8, [64 x i8], ptr, i8 }
%struct.brcms_hardware = type { i8, ptr, [6 x ptr], i32, i16, i16, i32, i8, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [2 x ptr], i16, i8, i16, i16, i16, i16, i8, i32, i32, i16, [6 x ptr], ptr, i32, i8, i32, i32, i32, i32, [6 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.bcma_bus = type { ptr, ptr, ptr, i32, i8, ptr, %struct.bcma_chipinfo, %struct.bcma_boardinfo, ptr, %struct.list_head, i8, i8, %struct.bcma_drv_cc, %struct.bcma_drv_cc_b, [2 x %struct.bcma_drv_pci], %struct.bcma_drv_pcie2, %struct.bcma_drv_mips, %struct.bcma_drv_gmac_cmn, %struct.ssb_sprom }
%struct.bcma_chipinfo = type { i16, i8, i8 }
%struct.bcma_boardinfo = type { i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.bcma_drv_cc = type { ptr, i32, i32, i32, i8, i16, %struct.bcma_chipcommon_pmu, %struct.bcma_pflash, %struct.bcma_sflash, %struct.bcma_nflash, i32, [4 x %struct.bcma_serial_port], i32, ptr, %struct.spinlock, %struct.gpio_chip }
%struct.bcma_chipcommon_pmu = type { ptr, i8, i32 }
%struct.bcma_pflash = type { i8 }
%struct.bcma_sflash = type { i8, i32, i16, i32 }
%struct.bcma_nflash = type { i8, i8 }
%struct.bcma_serial_port = type { ptr, i32, i32, i32, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.130, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.130 = type { ptr }
%struct.bcma_drv_cc_b = type { ptr, i8, ptr }
%struct.bcma_drv_pci = type { ptr, i8 }
%struct.bcma_drv_pcie2 = type { ptr, i16 }
%struct.bcma_drv_mips = type { ptr, i8 }
%struct.bcma_drv_gmac_cmn = type { ptr, %struct.mutex }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ssb_sprom = type { i8, i8, [6 x i8], [6 x i8], [6 x i8], [6 x i8], i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, [2 x i8], i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8], [4 x i8], [4 x i8], [4 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, [4 x %struct.ssb_sprom_core_pwr_info], %struct.anon.131, %struct.anon.132, [8 x i16], [8 x i16], [8 x i16], [8 x i16], i8, [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8 }
%struct.ssb_sprom_core_pwr_info = type { i8, i8, i8, i8, i8, i8, [4 x i16], [4 x i16], [4 x i16], [4 x i16] }
%struct.anon.131 = type { i8, i8, i8, i8 }
%struct.anon.132 = type { %struct.anon.133, %struct.anon.134 }
%struct.anon.133 = type { i8, i8, i8, i8, i8 }
%struct.anon.134 = type { i8, i8, i8, i8, i8 }
%struct.brcms_cm_info = type { ptr, ptr, ptr }
%struct.brcms_pub = type { ptr, ptr, ptr, i32, i32, i32, ptr, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, [6 x i8], i32, i16, i8, [4 x i8], i32, i32, i8, ptr, ptr }
%struct.brcms_protection = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.txpwr_limits = type { [4 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8], i8 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.brcms_band = type { i32, i32, i16, i16, i16, i16, ptr, i8, i8, ptr, %struct.brcms_c_rateset, i8, i8, %struct.brcms_c_rateset, [109 x i8], i8, i8, i16, i16, %struct.ieee80211_supported_band }
%struct.brcms_c_rateset = type { i32, [16 x i8], i8, [16 x i8] }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.bcma_device = type { ptr, %struct.bcma_device_id, %struct.device, ptr, i32, i8, i8, i8, i32, [8 x i32], i32, ptr, ptr, ptr, %struct.list_head }
%struct.bcma_device_id = type { i16, i16, i8, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.brcms_chanvec = type { [28 x i8] }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.128, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.possible_net_t = type { ptr }
%struct.anon.128 = type { i64, i64, i8 }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.138, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.anon.138 = type { i32, i16 }
%struct.brcms_info = type { ptr, ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.wait_queue_head, %struct.atomic_t, ptr, %struct.tasklet_struct, i8, %struct.brcms_firmware, ptr, %struct.brcms_ucode, i8, %struct.brcms_led, %struct.led_classdev }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.2, i32 }
%union.anon.2 = type { ptr }
%struct.brcms_firmware = type { i32, [4 x ptr], [4 x ptr], [4 x i32] }
%struct.brcms_ucode = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr }
%struct.brcms_led = type { [32 x i8], ptr }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.regulatory_request = type { %struct.callback_head, i32, i32, i32, [3 x i8], i32, i8, i8, i32, %struct.list_head }

@.str = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"drivers/net/wireless/broadcom/brcm80211/brcmsmac/channel.c\00", [37 x i8] zeroinitializer }, align 32
@locale_bn = internal constant { %struct.locale_mimo_info, [36 x i8] } { %struct.locale_mimo_info { [14 x i8] c"4444444444444\00", [14 x i8] c"\00\00444444444\00\00\00" }, [36 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@cntry_locales = internal constant { [1 x %struct.brcms_regd], [24 x i8] } { [1 x %struct.brcms_regd] [%struct.brcms_regd { %struct.country_info zeroinitializer, ptr @brcms_regdom_x2 }], [24 x i8] zeroinitializer }, align 32
@brcms_regdom_x2 = internal constant { { %struct.callback_head, i32, [3 x i8], i32, [6 x %struct.ieee80211_reg_rule] }, [140 x i8] } { { %struct.callback_head, i32, [3 x i8], i32, [6 x %struct.ieee80211_reg_rule] } { %struct.callback_head zeroinitializer, i32 6, [3 x i8] c"X2\00", i32 0, [6 x %struct.ieee80211_reg_rule] [%struct.ieee80211_reg_rule { %struct.ieee80211_freq_range { i32 2402000, i32 2472000, i32 40000 }, %struct.ieee80211_power_rule { i32 0, i32 1900 }, %struct.ieee80211_wmm_rule zeroinitializer, i32 0, i32 0, i8 0 }, %struct.ieee80211_reg_rule { %struct.ieee80211_freq_range { i32 2457000, i32 2482000, i32 20000 }, %struct.ieee80211_power_rule { i32 0, i32 1900 }, %struct.ieee80211_wmm_rule zeroinitializer, i32 128, i32 0, i8 0 }, %struct.ieee80211_reg_rule { %struct.ieee80211_freq_range { i32 5170000, i32 5250000, i32 40000 }, %struct.ieee80211_power_rule { i32 0, i32 2100 }, %struct.ieee80211_wmm_rule zeroinitializer, i32 128, i32 0, i8 0 }, %struct.ieee80211_reg_rule { %struct.ieee80211_freq_range { i32 5250000, i32 5330000, i32 40000 }, %struct.ieee80211_power_rule { i32 0, i32 2100 }, %struct.ieee80211_wmm_rule zeroinitializer, i32 144, i32 0, i8 0 }, %struct.ieee80211_reg_rule { %struct.ieee80211_freq_range { i32 5490000, i32 5710000, i32 40000 }, %struct.ieee80211_power_rule { i32 0, i32 2100 }, %struct.ieee80211_wmm_rule zeroinitializer, i32 144, i32 0, i8 0 }, %struct.ieee80211_reg_rule { %struct.ieee80211_freq_range { i32 5735000, i32 5835000, i32 40000 }, %struct.ieee80211_power_rule { i32 0, i32 2100 }, %struct.ieee80211_wmm_rule zeroinitializer, i32 128, i32 0, i8 0 }] }, [140 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"AA\00", [29 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ZZ\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"NA\00", [29 x i8] zeroinitializer }, align 32
@locale_11n = internal constant { { <{ i8, i8, i8, i8, i8, [9 x i8] }>, <{ i8, i8, i8, i8, i8, [9 x i8] }> }, [36 x i8] } { { <{ i8, i8, i8, i8, i8, [9 x i8] }>, <{ i8, i8, i8, i8, i8, [9 x i8] }> } { <{ i8, i8, i8, i8, i8, [9 x i8] }> <{ i8 50, i8 50, i8 50, i8 60, i8 60, [9 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, [9 x i8] }> <{ i8 56, i8 60, i8 60, i8 60, i8 60, [9 x i8] zeroinitializer }> }, [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"wl%d: malformed chanspec 0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"wl%d: %s: no valid channel for \22%s\22\0A\00", [59 x i8] zeroinitializer }, align 32
@__func__.brcms_reg_notifier = private unnamed_addr constant [19 x i8] c"brcms_reg_notifier\00", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 4096, i64 8192]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 32, i64 2048, i64 3072]
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 417, i32 6 }
@___asan_gen_.12 = private unnamed_addr constant [10 x i8] c"locale_bn\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 119, i32 38 }
@___asan_gen_.15 = private unnamed_addr constant [14 x i8] c"cntry_locales\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 144, i32 32 }
@___asan_gen_.18 = private unnamed_addr constant [16 x i8] c"brcms_regdom_x2\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 75, i32 41 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 188, i32 14 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 189, i32 14 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 195, i32 14 }
@___asan_gen_.30 = private unnamed_addr constant [11 x i8] c"locale_11n\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 135, i32 38 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 609, i32 3 }
@___asan_gen_.36 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.37 = private constant [62 x i8] c"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/channel.c\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 727, i32 3 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @.str, ptr @locale_bn, ptr @cntry_locales, ptr @brcms_regdom_x2, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @locale_11n, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @locale_bn to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cntry_locales to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcms_regdom_x2 to i32), i32 596, i32 736, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @locale_11n to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @brcms_c_channel_mgr_attach(ptr noundef %wlc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %wlc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wlc, align 4
  %hw = getelementptr inbounds %struct.brcms_c_info, ptr %wlc, i32 0, i32 2
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  %d11core = getelementptr inbounds %struct.brcms_hardware, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %d11core to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d11core, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %alpha2 = getelementptr inbounds %struct.bcma_bus, ptr %7, i32 0, i32 18, i32 17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 2848, i32 noundef 12) #10
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %1, ptr %call7.i.i, align 8
  %wlc4 = getelementptr inbounds %struct.brcms_cm_info, ptr %call7.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %wlc4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %wlc, ptr %wlc4, align 4
  %cmi = getelementptr inbounds %struct.brcms_c_info, ptr %wlc, i32 0, i32 15
  %11 = ptrtoint ptr %cmi to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call7.i.i, ptr %cmi, align 4
  %call.i = tail call i32 @strncmp(ptr noundef %alpha2, ptr noundef getelementptr inbounds ({ %struct.callback_head, i32, [3 x i8], i32, [6 x %struct.ieee80211_reg_rule] }, ptr @brcms_regdom_x2, i32 0, i32 2), i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  %regd.0.i = select i1 %tobool.not.i, ptr @cntry_locales, ptr null
  %world_regd = getelementptr inbounds %struct.brcms_cm_info, ptr %call7.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %world_regd to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %regd.0.i, ptr %world_regd, align 8
  %13 = ptrtoint ptr %alpha2 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %alpha2, align 1
  %15 = add i8 %14, -65
  call void @__sanitizer_cov_trace_const_cmp1(i8 26, i8 %15)
  %16 = icmp ult i8 %15, 26
  br i1 %16, label %land.lhs.true11.i, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

land.lhs.true11.i:                                ; preds = %if.end
  %arrayidx12.i = getelementptr %struct.bcma_bus, ptr %7, i32 0, i32 18, i32 17, i32 1
  %17 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx12.i, align 1
  %19 = add i8 %18, -65
  call void @__sanitizer_cov_trace_const_cmp1(i8 26, i8 %19)
  %20 = icmp ult i8 %19, 26
  br i1 %20, label %if.end.i, label %land.lhs.true11.i.if.end11thread-pre-split_crit_edge

land.lhs.true11.i.if.end11thread-pre-split_crit_edge: ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11thread-pre-split

if.end.i:                                         ; preds = %land.lhs.true11.i
  %call.i52 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(3) @.str.2, ptr noundef %alpha2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i52)
  %tobool.not.i53 = icmp eq i32 %call.i52, 0
  br i1 %tobool.not.i53, label %if.end.i.if.end11thread-pre-split_crit_edge, label %lor.lhs.false.i

if.end.i.if.end11thread-pre-split_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11thread-pre-split

lor.lhs.false.i:                                  ; preds = %if.end.i
  %call27.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(3) @.str.3, ptr noundef %alpha2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %tobool28.not.i = icmp eq i32 %call27.i, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 88, i8 %14)
  %cmp32.i = icmp eq i8 %14, 88
  %or.cond70.i = select i1 %tobool28.not.i, i1 true, i1 %cmp32.i
  br i1 %or.cond70.i, label %lor.lhs.false.i.if.end11thread-pre-split_crit_edge, label %lor.lhs.false34.i

lor.lhs.false.i.if.end11thread-pre-split_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11thread-pre-split

lor.lhs.false34.i:                                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 81, i8 %14)
  %cmp37.i = icmp eq i8 %14, 81
  call void @__sanitizer_cov_trace_const_cmp1(i8 76, i8 %18)
  %cmp42.i = icmp ugt i8 %18, 76
  %or.cond71.i = select i1 %cmp37.i, i1 %cmp42.i, i1 false
  br i1 %or.cond71.i, label %lor.lhs.false34.i.if.end11thread-pre-split_crit_edge, label %brcms_c_country_valid.exit

lor.lhs.false34.i.if.end11thread-pre-split_crit_edge: ; preds = %lor.lhs.false34.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11thread-pre-split

brcms_c_country_valid.exit:                       ; preds = %lor.lhs.false34.i
  %call51.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(3) @.str.4, ptr noundef %alpha2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51.i)
  %tobool52.not.i.not = icmp eq i32 %call51.i, 0
  br i1 %tobool52.not.i.not, label %brcms_c_country_valid.exit.if.end11thread-pre-split_crit_edge, label %if.then7

brcms_c_country_valid.exit.if.end11thread-pre-split_crit_edge: ; preds = %brcms_c_country_valid.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11thread-pre-split

if.then7:                                         ; preds = %brcms_c_country_valid.exit
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %wlc to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %wlc, align 4
  %srom_ccode = getelementptr inbounds %struct.brcms_pub, ptr %22, i32 0, i32 21
  %call10 = tail call ptr @strncpy(ptr noundef %srom_ccode, ptr noundef %alpha2, i32 noundef 2)
  br label %if.end11thread-pre-split

if.end11thread-pre-split:                         ; preds = %if.then7, %brcms_c_country_valid.exit.if.end11thread-pre-split_crit_edge, %lor.lhs.false34.i.if.end11thread-pre-split_crit_edge, %lor.lhs.false.i.if.end11thread-pre-split_crit_edge, %if.end.i.if.end11thread-pre-split_crit_edge, %land.lhs.true11.i.if.end11thread-pre-split_crit_edge
  %23 = ptrtoint ptr %world_regd to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pr = load ptr, ptr %world_regd, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.end11thread-pre-split, %if.end.if.end11_crit_edge
  %24 = phi ptr [ %.pr, %if.end11thread-pre-split ], [ %regd.0.i, %if.end.if.end11_crit_edge ]
  %tobool.not = icmp eq ptr %24, null
  br i1 %tobool.not, label %if.then13, label %if.end11.if.end19_crit_edge

if.end11.if.end19_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %world_regd to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @cntry_locales, ptr %world_regd, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.then13, %if.end11.if.end19_crit_edge
  %ccode.0 = phi ptr [ %alpha2, %if.end11.if.end19_crit_edge ], [ getelementptr inbounds ({ %struct.callback_head, i32, [3 x i8], i32, [6 x %struct.ieee80211_reg_rule] }, ptr @brcms_regdom_x2, i32 0, i32 2), %if.then13 ]
  %ccode_len.0 = phi i32 [ 2, %if.end11.if.end19_crit_edge ], [ 3, %if.then13 ]
  %country_default = getelementptr inbounds %struct.brcms_c_info, ptr %wlc, i32 0, i32 43
  %call21 = tail call ptr @strncpy(ptr noundef %country_default, ptr noundef %ccode.0, i32 noundef %ccode_len.0)
  %autocountry_default = getelementptr inbounds %struct.brcms_c_info, ptr %wlc, i32 0, i32 44
  %call23 = tail call ptr @strncpy(ptr noundef %autocountry_default, ptr noundef %ccode.0, i32 noundef %ccode_len.0)
  %26 = ptrtoint ptr %wlc4 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %wlc4, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %_n_enab.i = getelementptr inbounds %struct.brcms_pub, ptr %29, i32 0, i32 16
  %30 = ptrtoint ptr %_n_enab.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %_n_enab.i, align 1
  %32 = and i8 %31, 3
  %protection.i = getelementptr inbounds %struct.brcms_c_info, ptr %27, i32 0, i32 58
  %33 = ptrtoint ptr %protection.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %protection.i, align 4
  %nmode_user.i = getelementptr inbounds %struct.brcms_protection, ptr %34, i32 0, i32 4
  %35 = ptrtoint ptr %nmode_user.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %nmode_user.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %32, i8 %36)
  %cmp.not.i = icmp eq i8 %32, %36
  br i1 %cmp.not.i, label %if.end19.brcms_c_set_country.exit_crit_edge, label %if.then.i

if.end19.brcms_c_set_country.exit_crit_edge:      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %brcms_c_set_country.exit

if.then.i:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  %call.i54 = tail call i32 @brcms_c_set_nmode(ptr noundef %27) #7
  br label %brcms_c_set_country.exit

brcms_c_set_country.exit:                         ; preds = %if.then.i, %if.end19.brcms_c_set_country.exit_crit_edge
  %bandstate.i = getelementptr inbounds %struct.brcms_c_info, ptr %27, i32 0, i32 11
  %37 = ptrtoint ptr %bandstate.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %bandstate.i, align 4
  tail call void @brcms_c_stf_ss_update(ptr noundef %27, ptr noundef %38) #7
  %arrayidx5.i = getelementptr %struct.brcms_c_info, ptr %27, i32 0, i32 11, i32 1
  %39 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx5.i, align 4
  tail call void @brcms_c_stf_ss_update(ptr noundef %27, ptr noundef %40) #7
  %41 = ptrtoint ptr %protection.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %protection.i, align 4
  %gmode_user.i = getelementptr inbounds %struct.brcms_protection, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %gmode_user.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %gmode_user.i, align 1
  %call7.i = tail call i32 @brcms_c_set_gmode(ptr noundef %27, i8 noundef zeroext %44, i1 noundef zeroext false) #7
  br label %cleanup

cleanup:                                          ; preds = %brcms_c_set_country.exit, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @brcms_c_channel_mgr_detach(ptr noundef %wlc_cm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %wlc_cm) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @brcms_c_channel_set_chanspec(ptr nocapture noundef readonly %wlc_cm, i16 noundef zeroext %chanspec, i8 noundef zeroext %local_constraint_qdbm) local_unnamed_addr #0 align 64 {
entry:
  %txpwr = alloca %struct.txpwr_limits, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %wlc1 = getelementptr inbounds %struct.brcms_cm_info, ptr %wlc_cm, i32 0, i32 1
  %0 = ptrtoint ptr %wlc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wlc1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %ieee_hw = getelementptr inbounds %struct.brcms_pub, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %ieee_hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ieee_hw, align 4
  %chandef = getelementptr inbounds %struct.ieee80211_conf, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chandef, align 4
  call void @llvm.lifetime.start.p0(i64 101, ptr nonnull %txpwr) #7
  %8 = call ptr @memset(ptr %txpwr, i32 255, i32 101)
  call void @brcms_c_channel_reg_limits(ptr noundef %wlc_cm, i16 noundef zeroext %chanspec, ptr noundef nonnull %txpwr)
  %9 = ptrtoint ptr %txpwr to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %txpwr, align 1
  %11 = call i8 @llvm.umin.i8(i8 %10, i8 %local_constraint_qdbm) #7
  %12 = ptrtoint ptr %txpwr to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %txpwr, align 1
  %arrayidx.1.i = getelementptr inbounds [4 x i8], ptr %txpwr, i32 0, i32 1
  %13 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.1.i, align 1
  %15 = call i8 @llvm.umin.i8(i8 %14, i8 %local_constraint_qdbm) #7
  %16 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %arrayidx.1.i, align 1
  %arrayidx.2.i = getelementptr inbounds [4 x i8], ptr %txpwr, i32 0, i32 2
  %17 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx.2.i, align 1
  %19 = call i8 @llvm.umin.i8(i8 %18, i8 %local_constraint_qdbm) #7
  %20 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %arrayidx.2.i, align 1
  %arrayidx.3.i = getelementptr inbounds [4 x i8], ptr %txpwr, i32 0, i32 3
  %21 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx.3.i, align 1
  %23 = call i8 @llvm.umin.i8(i8 %22, i8 %local_constraint_qdbm) #7
  %24 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %arrayidx.3.i, align 1
  %arrayidx13.i = getelementptr inbounds %struct.txpwr_limits, ptr %txpwr, i32 0, i32 1, i32 0
  %25 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx13.i, align 1
  %27 = call i8 @llvm.umin.i8(i8 %26, i8 %local_constraint_qdbm) #7
  %28 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %arrayidx13.i, align 1
  %arrayidx13.1.i = getelementptr inbounds %struct.txpwr_limits, ptr %txpwr, i32 0, i32 1, i32 1
  %29 = ptrtoint ptr %arrayidx13.1.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx13.1.i, align 1
  %31 = call i8 @llvm.umin.i8(i8 %30, i8 %local_constraint_qdbm) #7
  %32 = ptrtoint ptr %arrayidx13.1.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %arrayidx13.1.i, align 1
  %arrayidx13.2.i = getelementptr inbounds %struct.txpwr_limits, ptr %txpwr, i32 0, i32 1, i32 2
  %33 = ptrtoint ptr %arrayidx13.2.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx13.2.i, align 1
  %35 = call i8 @llvm.umin.i8(i8 %34, i8 %local_constraint_qdbm) #7
  %36 = ptrtoint ptr %arrayidx13.2.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %arrayidx13.2.i, align 1
  %arrayidx13.3.i = getelementptr inbounds %struct.txpwr_limits, ptr %txpwr, i32 0, i32 1, i32 3
  %37 = ptrtoint ptr %arrayidx13.3.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx13.3.i, align 1
  %39 = call i8 @llvm.umin.i8(i8 %38, i8 %local_constraint_qdbm) #7
  %40 = ptrtoint ptr %arrayidx13.3.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %arrayidx13.3.i, align 1
  %arrayidx13.4.i = getelementptr inbounds %struct.txpwr_limits, ptr %txpwr, i32 0, i32 1, i32 4
  %41 = ptrtoint ptr %arrayidx13.4.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx13.4.i, align 1
  %43 = call i8 @llvm.umin.i8(i8 %42, i8 %local_constraint_qdbm) #7
  %44 = ptrtoint ptr %arrayidx13.4.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %43, ptr %arrayidx13.4.i, align 1
  %arrayidx13.5.i = getelementptr inbounds %struct.txpwr_limits, ptr %txpwr, i32 0, i32 1, i32 5
  %45 = ptrtoint ptr %arrayidx13.5.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx13.5.i, align 1
  %47 = call i8 @llvm.umin.i8(i8 %46, i8 %local_constraint_qdbm) #7
  %48 = ptrtoint ptr %arrayidx13.5.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %arrayidx13.5.i, align 1
  %arrayidx13.6.i = getelementptr inbounds %struct.txpwr_limits, ptr %txpwr, i32 0, i32 1, i32 6
  %49 = ptrtoint ptr %arrayidx13.6.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx13.6.i, align 1
  %51 = call i8 @llvm.umin.i8(i8 %50, i8 %local_constraint_qdbm) #7
  %52 = ptrtoint ptr %arrayidx13.6.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %51, ptr %arrayidx13.6.i, align 1
  %arrayidx13.7.i = getelementptr inbounds %struct.txpwr_limits, ptr %txpwr, i32 0, i32 1, i32 7
  %53 = ptrtoint ptr %arrayidx13.7.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx13.7.i, align 1
  %55 = call i8 @llvm.umin.i8(i8 %54, i8 %local_constraint_qdbm) #7
  %56 = ptrtoint ptr %arrayidx13.7.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %55, ptr %arrayidx13.7.i, align 1
  %arrayidx35.i = getelementptr inbounds %struct.txpwr_limits, ptr %txpwr, i32 0, i32 2, i32 0
  %57 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx35.i, align 1
  %59 = call i8 @llvm.umin.i8(i8 %58, i8 %local_constraint_qdbm) #7
  %60 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %59, ptr %arrayidx35.i, align 1
  %arrayidx35.1.i = getelementptr inbounds %struct.txpwr_limits, ptr %txpwr, i32 0, i32 2, i32 1
  %61 = ptrtoint ptr %arrayidx35.1.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx35.1.i, align 1
  %63 = call i8 @llvm.umin.i8(i8 %62, i8 %local_constraint_qdbm) #7
  %64 = ptrtoint ptr %arrayidx35.1.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %63, ptr %arrayidx35.1.i, align 1
  %arrayidx35.2.i = getelementptr inbounds %struct.txpwr_limits, ptr %txpwr, i32 0, i32 2, i32 2
  %65 = ptrtoint ptr %arrayidx35.2.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx35.2.i, align 1
  %67 = call i8 @llvm.umin.i8(i8 %66, i8 %local_constraint_qdbm) #7
  %68 = ptrtoint ptr %arrayidx35.2.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %67, ptr %arrayidx35.2.i, align 1
  %arrayidx35.3.i = getelementptr inbounds %struct.txpwr_limits, ptr %txpwr, i32 0, i32 2, i32 3
  %69 = ptrtoint ptr %arrayidx35.3.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx35.3.i, align 1
  %71 = call i8 @llvm.umin.i8(i8 %70, i8 %local_constraint_qdbm) #7
  %72 = ptrtoint ptr %arrayidx35.3.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %71, ptr %arrayidx35.3.i, align 1
  %arrayidx35.4.i = getelementptr inbounds %struct.txpwr_limits, ptr %txpwr, i32 0, i32 2, i32 4
  %73 = ptrtoint ptr %arrayidx35.4.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx35.4.i, align 1
  %75 = call i8 @llvm.umin.i8(i8 %74, i8 %local_constraint_qdbm) #7
  %76 = ptrtoint ptr %arrayidx35.4.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %75, ptr %arrayidx35.4.i, align 1
  %arrayidx35.5.i = getelementptr inbounds %struct.txpwr_limits, ptr %txpwr, i32 0, i32 2, i32 5
  %77 = ptrtoint ptr %arrayidx35.5.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx35.5.i, align 1
  %79 = call i8 @llvm.umin.i8(i8 %78, i8 %local_constraint_qdbm) #7
  %80 = ptrtoint ptr %arrayidx35.5.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %79, ptr %arrayidx35.5.i, align 1
  %arrayidx35.6.i = getelementptr inbounds %struct.txpwr_limits, ptr %txpwr, i32 0, i32 2, i32 6
  %81 = ptrtoint ptr %arrayidx35.6.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %arrayidx35.6.i, align 1
  %83 = call i8 @llvm.umin.i8(i8 %82, i8 %local_constraint_qdbm) #7
  %84 = ptrtoint ptr %arrayidx35.6.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %83, ptr %arrayidx35.6.i, align 1
  %arrayidx35.7.i = getelementptr inbounds %struct.txpwr_limits, ptr %txpwr, i32 0, i32 2, i32 7
  %85 = ptrtoint ptr %arrayidx35.7.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %arrayidx35.7.i, align 1
  %87 = call i8 @llvm.umin.i8(i8 %86, i8 %local_constraint_qdbm) #7
  %88 = ptrtoint ptr %arrayidx35.7.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %87, ptr %arrayidx35.7.i, align 1
  %arrayidx57.i = getelementptr inbounds %struct.txpwr_limits, ptr %txpwr, i32 0, i32 3, i32 0
  %89 = ptrtoint ptr %arrayidx57.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %arrayidx57.i, align 1
  %91 = call i8 @llvm.umin.i8(i8 %90, i8 %local_constraint_qdbm) #7
  %92 = ptrtoint ptr %arrayidx57.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %91, ptr %arrayidx57.i, align 1
  %arrayidx57.1.i = getelementptr inbounds %struct.txpwr_limits, ptr %txpwr, i32 0, i32 3, i32 1
  %93 = ptrtoint ptr %arrayidx57.1.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %arrayidx57.1.i, align 1
  %95 = call i8 @llvm.umin.i8(i8 %94, i8 %local_constraint_qdbm) #7
  %96 = ptrtoint ptr %arrayidx57.1.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %95, ptr %arrayidx57.1.i, align 1
  %arrayidx57.2.i = getelementptr inbounds %struct.txpwr_limits, ptr %txpwr, i32 0, i32 3, i32 2
  %97 = ptrtoint ptr %arrayidx57.2.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %arrayidx57.2.i, align 1
  %99 = call i8 @llvm.umin.i8(i8 %98, i8 %local_constraint_qdbm) #7
  %100 = ptrtoint ptr %arrayidx57.2.i to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %99, ptr %arrayidx57.2.i, align 1
  %arrayidx57.3.i = getelementptr inbounds %struct.txpwr_limits, ptr %txpwr, i32 0, i32 3, i32 3
  %101 = ptrtoint ptr %arrayidx57.3.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %arrayidx57.3.i, align 1
  %103 = call i8 @llvm.umin.i8(i8 %102, i8 %local_constraint_qdbm) #7
  %104 = ptrtoint ptr %arrayidx57.3.i to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %103, ptr %arrayidx57.3.i, align 1
  %arrayidx57.4.i = getelementptr inbounds %struct.txpwr_limits, ptr %txpwr, i32 0, i32 3, i32 4
  %105 = ptrtoint ptr %arrayidx57.4.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %arrayidx57.4.i, align 1
  %107 = call i8 @llvm.umin.i8(i8 %106, i8 %local_constraint_qdbm) #7
  %108 = ptrtoint ptr %arrayidx57.4.i to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 %107, ptr %arrayidx57.4.i, align 1
  %arrayidx57.5.i = getelementptr inbounds %struct.txpwr_limits, ptr %txpwr, i32 0, i32 3, i32 5
  %109 = ptrtoint ptr %arrayidx57.5.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %arrayidx57.5.i, align 1
  %111 = call i8 @llvm.umin.i8(i8 %110, i8 %local_constraint_qdbm) #7
  %112 = ptrtoint ptr %arrayidx57.5.i to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 %111, ptr %arrayidx57.5.i, align 1
  %arrayidx57.6.i = getelementptr inbounds %struct.txpwr_limits, ptr %txpwr, i32 0, i32 3, i32 6
  %113 = ptrtoint ptr %arrayidx57.6.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %arrayidx57.6.i, align 1
  %115 = call i8 @llvm.umin.i8(i8 %114, i8 %local_constraint_qdbm) #7
  %116 = ptrtoint ptr %arrayidx57.6.i to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 %115, ptr %arrayidx57.6.i, align 1
  %arrayidx57.7.i = getelementptr inbounds %struct.txpwr_limits, ptr %txpwr, i32 0, i32 3, i32 7
  %117 = ptrtoint ptr %arrayidx57.7.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %arrayidx57.7.i, align 1
  %119 = call i8 @llvm.umin.i8(i8 %118, i8 %local_constraint_qdbm) #7
  %120 = ptrtoint ptr %arrayidx57.7.i to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 %119, ptr %arrayidx57.7.i, align 1
  %arrayidx79.i = getelementptr inbounds %struct.txpwr_limits, ptr %txpwr, i32 0, i32 4, i32 0
  %121 = ptrtoint ptr %arrayidx79.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %arrayidx79.i, align 1
  %123 = call i8 @llvm.umin.i8(i8 %122, i8 %local_constraint_qdbm) #7
  %124 = ptrtoint ptr %arrayidx79.i to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 %123, ptr %arrayidx79.i, align 1
  %arrayidx79.1.i = getelementptr inbounds %struct.txpwr_limits, ptr %txpwr, i32 0, i32 4, i32 1
  %125 = ptrtoint ptr %arrayidx79.1.i to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %arrayidx79.1.i, align 1
  %127 = call i8 @llvm.umin.i8(i8 %126, i8 %local_constraint_qdbm) #7
  %128 = ptrtoint ptr %arrayidx79.1.i to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 %127, ptr %arrayidx79.1.i, align 1
  %arrayidx79.2.i = getelementptr inbounds %struct.txpwr_limits, ptr %txpwr, i32 0, i32 4, i32 2
  %129 = ptrtoint ptr %arrayidx79.2.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %arrayidx79.2.i, align 1
  %131 = call i8 @llvm.umin.i8(i8 %130, i8 %local_constraint_qdbm) #7
  %132 = ptrtoint ptr %arrayidx79.2.i to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 %131, ptr %arrayidx79.2.i, align 1
  %arrayidx79.3.i = getelementptr inbounds %struct.txpwr_limits, ptr %txpwr, i32 0, i32 4, i32 3
  %133 = ptrtoint ptr %arrayidx79.3.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %arrayidx79.3.i, align 1
  %135 = call i8 @llvm.umin.i8(i8 %134, i8 %local_constraint_qdbm) #7
  %136 = ptrtoint ptr %arrayidx79.3.i to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 %135, ptr %arrayidx79.3.i, align 1
  %arrayidx79.4.i = getelementptr inbounds %struct.txpwr_limits, ptr %txpwr, i32 0, i32 4, i32 4
  %137 = ptrtoint ptr %arrayidx79.4.i to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %arrayidx79.4.i, align 1
  %139 = call i8 @llvm.umin.i8(i8 %138, i8 %local_constraint_qdbm) #7
  %140 = ptrtoint ptr %arrayidx79.4.i to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 %139, ptr %arrayidx79.4.i, align 1
  %arrayidx79.5.i = getelementptr inbounds %struct.txpwr_limits, ptr %txpwr, i32 0, i32 4, i32 5
  %141 = ptrtoint ptr %arrayidx79.5.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %arrayidx79.5.i, align 1
  %143 = call i8 @llvm.umin.i8(i8 %142, i8 %local_constraint_qdbm) #7
  %144 = ptrtoint ptr %arrayidx79.5.i to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 %143, ptr %arrayidx79.5.i, align 1
  %arrayidx79.6.i = getelementptr inbounds %struct.txpwr_limits, ptr %txpwr, i32 0, i32 4, i32 6
  %145 = ptrtoint ptr %arrayidx79.6.i to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %arrayidx79.6.i, align 1
  %147 = call i8 @llvm.umin.i8(i8 %146, i8 %local_constraint_qdbm) #7
  %148 = ptrtoint ptr %arrayidx79.6.i to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 %147, ptr %arrayidx79.6.i, align 1
  %arrayidx79.7.i = getelementptr inbounds %struct.txpwr_limits, ptr %txpwr, i32 0, i32 4, i32 7
  %149 = ptrtoint ptr %arrayidx79.7.i to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %arrayidx79.7.i, align 1
  %151 = call i8 @llvm.umin.i8(i8 %150, i8 %local_constraint_qdbm) #7
  %152 = ptrtoint ptr %arrayidx79.7.i to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 %151, ptr %arrayidx79.7.i, align 1
  %arrayidx101.i = getelementptr inbounds %struct.txpwr_limits, ptr %txpwr, i32 0, i32 5, i32 0
  %153 = ptrtoint ptr %arrayidx101.i to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %arrayidx101.i, align 1
  %155 = call i8 @llvm.umin.i8(i8 %154, i8 %local_constraint_qdbm) #7
  %156 = ptrtoint ptr %arrayidx101.i to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 %155, ptr %arrayidx101.i, align 1
  %arrayidx101.1.i = getelementptr inbounds %struct.txpwr_limits, ptr %txpwr, i32 0, i32 5, i32 1
  %157 = ptrtoint ptr %arrayidx101.1.i to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %arrayidx101.1.i, align 1
  %159 = call i8 @llvm.umin.i8(i8 %158, i8 %local_constraint_qdbm) #7
  %160 = ptrtoint ptr %arrayidx101.1.i to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 %159, ptr %arrayidx101.1.i, align 1
  %arrayidx101.2.i = getelementptr inbounds %struct.txpwr_limits, ptr %txpwr, i32 0, i32 5, i32 2
  %161 = ptrtoint ptr %arrayidx101.2.i to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %arrayidx101.2.i, align 1
  %163 = call i8 @llvm.umin.i8(i8 %162, i8 %local_constraint_qdbm) #7
  %164 = ptrtoint ptr %arrayidx101.2.i to i32
  call void @__asan_store1_noabort(i32 %164)
  store i8 %163, ptr %arrayidx101.2.i, align 1
  %arrayidx101.3.i = getelementptr inbounds %struct.txpwr_limits, ptr %txpwr, i32 0, i32 5, i32 3
  %165 = ptrtoint ptr %arrayidx101.3.i to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %arrayidx101.3.i, align 1
  %167 = call i8 @llvm.umin.i8(i8 %166, i8 %local_constraint_qdbm) #7
  %168 = ptrtoint ptr %arrayidx101.3.i to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 %167, ptr %arrayidx101.3.i, align 1
  %arrayidx101.4.i = getelementptr inbounds %struct.txpwr_limits, ptr %txpwr, i32 0, i32 5, i32 4
  %169 = ptrtoint ptr %arrayidx101.4.i to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %arrayidx101.4.i, align 1
  %171 = call i8 @llvm.umin.i8(i8 %170, i8 %local_constraint_qdbm) #7
  %172 = ptrtoint ptr %arrayidx101.4.i to i32
  call void @__asan_store1_noabort(i32 %172)
  store i8 %171, ptr %arrayidx101.4.i, align 1
  %arrayidx101.5.i = getelementptr inbounds %struct.txpwr_limits, ptr %txpwr, i32 0, i32 5, i32 5
  %173 = ptrtoint ptr %arrayidx101.5.i to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %arrayidx101.5.i, align 1
  %175 = call i8 @llvm.umin.i8(i8 %174, i8 %local_constraint_qdbm) #7
  %176 = ptrtoint ptr %arrayidx101.5.i to i32
  call void @__asan_store1_noabort(i32 %176)
  store i8 %175, ptr %arrayidx101.5.i, align 1
  %arrayidx101.6.i = getelementptr inbounds %struct.txpwr_limits, ptr %txpwr, i32 0, i32 5, i32 6
  %177 = ptrtoint ptr %arrayidx101.6.i to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %arrayidx101.6.i, align 1
  %179 = call i8 @llvm.umin.i8(i8 %178, i8 %local_constraint_qdbm) #7
  %180 = ptrtoint ptr %arrayidx101.6.i to i32
  call void @__asan_store1_noabort(i32 %180)
  store i8 %179, ptr %arrayidx101.6.i, align 1
  %arrayidx101.7.i = getelementptr inbounds %struct.txpwr_limits, ptr %txpwr, i32 0, i32 5, i32 7
  %181 = ptrtoint ptr %arrayidx101.7.i to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %arrayidx101.7.i, align 1
  %183 = call i8 @llvm.umin.i8(i8 %182, i8 %local_constraint_qdbm) #7
  %184 = ptrtoint ptr %arrayidx101.7.i to i32
  call void @__asan_store1_noabort(i32 %184)
  store i8 %183, ptr %arrayidx101.7.i, align 1
  %arrayidx123.i = getelementptr inbounds %struct.txpwr_limits, ptr %txpwr, i32 0, i32 6, i32 0
  %185 = ptrtoint ptr %arrayidx123.i to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %arrayidx123.i, align 1
  %187 = call i8 @llvm.umin.i8(i8 %186, i8 %local_constraint_qdbm) #7
  %188 = ptrtoint ptr %arrayidx123.i to i32
  call void @__asan_store1_noabort(i32 %188)
  store i8 %187, ptr %arrayidx123.i, align 1
  %arrayidx123.1.i = getelementptr inbounds %struct.txpwr_limits, ptr %txpwr, i32 0, i32 6, i32 1
  %189 = ptrtoint ptr %arrayidx123.1.i to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %arrayidx123.1.i, align 1
  %191 = call i8 @llvm.umin.i8(i8 %190, i8 %local_constraint_qdbm) #7
  %192 = ptrtoint ptr %arrayidx123.1.i to i32
  call void @__asan_store1_noabort(i32 %192)
  store i8 %191, ptr %arrayidx123.1.i, align 1
  %arrayidx123.2.i = getelementptr inbounds %struct.txpwr_limits, ptr %txpwr, i32 0, i32 6, i32 2
  %193 = ptrtoint ptr %arrayidx123.2.i to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %arrayidx123.2.i, align 1
  %195 = call i8 @llvm.umin.i8(i8 %194, i8 %local_constraint_qdbm) #7
  %196 = ptrtoint ptr %arrayidx123.2.i to i32
  call void @__asan_store1_noabort(i32 %196)
  store i8 %195, ptr %arrayidx123.2.i, align 1
  %arrayidx123.3.i = getelementptr inbounds %struct.txpwr_limits, ptr %txpwr, i32 0, i32 6, i32 3
  %197 = ptrtoint ptr %arrayidx123.3.i to i32
  call void @__asan_load1_noabort(i32 %197)
  %198 = load i8, ptr %arrayidx123.3.i, align 1
  %199 = call i8 @llvm.umin.i8(i8 %198, i8 %local_constraint_qdbm) #7
  %200 = ptrtoint ptr %arrayidx123.3.i to i32
  call void @__asan_store1_noabort(i32 %200)
  store i8 %199, ptr %arrayidx123.3.i, align 1
  %arrayidx123.4.i = getelementptr inbounds %struct.txpwr_limits, ptr %txpwr, i32 0, i32 6, i32 4
  %201 = ptrtoint ptr %arrayidx123.4.i to i32
  call void @__asan_load1_noabort(i32 %201)
  %202 = load i8, ptr %arrayidx123.4.i, align 1
  %203 = call i8 @llvm.umin.i8(i8 %202, i8 %local_constraint_qdbm) #7
  %204 = ptrtoint ptr %arrayidx123.4.i to i32
  call void @__asan_store1_noabort(i32 %204)
  store i8 %203, ptr %arrayidx123.4.i, align 1
  %arrayidx123.5.i = getelementptr inbounds %struct.txpwr_limits, ptr %txpwr, i32 0, i32 6, i32 5
  %205 = ptrtoint ptr %arrayidx123.5.i to i32
  call void @__asan_load1_noabort(i32 %205)
  %206 = load i8, ptr %arrayidx123.5.i, align 1
  %207 = call i8 @llvm.umin.i8(i8 %206, i8 %local_constraint_qdbm) #7
  %208 = ptrtoint ptr %arrayidx123.5.i to i32
  call void @__asan_store1_noabort(i32 %208)
  store i8 %207, ptr %arrayidx123.5.i, align 1
  %arrayidx123.6.i = getelementptr inbounds %struct.txpwr_limits, ptr %txpwr, i32 0, i32 6, i32 6
  %209 = ptrtoint ptr %arrayidx123.6.i to i32
  call void @__asan_load1_noabort(i32 %209)
  %210 = load i8, ptr %arrayidx123.6.i, align 1
  %211 = call i8 @llvm.umin.i8(i8 %210, i8 %local_constraint_qdbm) #7
  %212 = ptrtoint ptr %arrayidx123.6.i to i32
  call void @__asan_store1_noabort(i32 %212)
  store i8 %211, ptr %arrayidx123.6.i, align 1
  %arrayidx123.7.i = getelementptr inbounds %struct.txpwr_limits, ptr %txpwr, i32 0, i32 6, i32 7
  %213 = ptrtoint ptr %arrayidx123.7.i to i32
  call void @__asan_load1_noabort(i32 %213)
  %214 = load i8, ptr %arrayidx123.7.i, align 1
  %215 = call i8 @llvm.umin.i8(i8 %214, i8 %local_constraint_qdbm) #7
  %216 = ptrtoint ptr %arrayidx123.7.i to i32
  call void @__asan_store1_noabort(i32 %216)
  store i8 %215, ptr %arrayidx123.7.i, align 1
  %arrayidx145.i = getelementptr inbounds %struct.txpwr_limits, ptr %txpwr, i32 0, i32 7, i32 0
  %217 = ptrtoint ptr %arrayidx145.i to i32
  call void @__asan_load1_noabort(i32 %217)
  %218 = load i8, ptr %arrayidx145.i, align 1
  %219 = call i8 @llvm.umin.i8(i8 %218, i8 %local_constraint_qdbm) #7
  %220 = ptrtoint ptr %arrayidx145.i to i32
  call void @__asan_store1_noabort(i32 %220)
  store i8 %219, ptr %arrayidx145.i, align 1
  %arrayidx145.1.i = getelementptr inbounds %struct.txpwr_limits, ptr %txpwr, i32 0, i32 7, i32 1
  %221 = ptrtoint ptr %arrayidx145.1.i to i32
  call void @__asan_load1_noabort(i32 %221)
  %222 = load i8, ptr %arrayidx145.1.i, align 1
  %223 = call i8 @llvm.umin.i8(i8 %222, i8 %local_constraint_qdbm) #7
  %224 = ptrtoint ptr %arrayidx145.1.i to i32
  call void @__asan_store1_noabort(i32 %224)
  store i8 %223, ptr %arrayidx145.1.i, align 1
  %arrayidx145.2.i = getelementptr inbounds %struct.txpwr_limits, ptr %txpwr, i32 0, i32 7, i32 2
  %225 = ptrtoint ptr %arrayidx145.2.i to i32
  call void @__asan_load1_noabort(i32 %225)
  %226 = load i8, ptr %arrayidx145.2.i, align 1
  %227 = call i8 @llvm.umin.i8(i8 %226, i8 %local_constraint_qdbm) #7
  %228 = ptrtoint ptr %arrayidx145.2.i to i32
  call void @__asan_store1_noabort(i32 %228)
  store i8 %227, ptr %arrayidx145.2.i, align 1
  %arrayidx145.3.i = getelementptr inbounds %struct.txpwr_limits, ptr %txpwr, i32 0, i32 7, i32 3
  %229 = ptrtoint ptr %arrayidx145.3.i to i32
  call void @__asan_load1_noabort(i32 %229)
  %230 = load i8, ptr %arrayidx145.3.i, align 1
  %231 = call i8 @llvm.umin.i8(i8 %230, i8 %local_constraint_qdbm) #7
  %232 = ptrtoint ptr %arrayidx145.3.i to i32
  call void @__asan_store1_noabort(i32 %232)
  store i8 %231, ptr %arrayidx145.3.i, align 1
  %arrayidx145.4.i = getelementptr inbounds %struct.txpwr_limits, ptr %txpwr, i32 0, i32 7, i32 4
  %233 = ptrtoint ptr %arrayidx145.4.i to i32
  call void @__asan_load1_noabort(i32 %233)
  %234 = load i8, ptr %arrayidx145.4.i, align 1
  %235 = call i8 @llvm.umin.i8(i8 %234, i8 %local_constraint_qdbm) #7
  %236 = ptrtoint ptr %arrayidx145.4.i to i32
  call void @__asan_store1_noabort(i32 %236)
  store i8 %235, ptr %arrayidx145.4.i, align 1
  %arrayidx145.5.i = getelementptr inbounds %struct.txpwr_limits, ptr %txpwr, i32 0, i32 7, i32 5
  %237 = ptrtoint ptr %arrayidx145.5.i to i32
  call void @__asan_load1_noabort(i32 %237)
  %238 = load i8, ptr %arrayidx145.5.i, align 1
  %239 = call i8 @llvm.umin.i8(i8 %238, i8 %local_constraint_qdbm) #7
  %240 = ptrtoint ptr %arrayidx145.5.i to i32
  call void @__asan_store1_noabort(i32 %240)
  store i8 %239, ptr %arrayidx145.5.i, align 1
  %arrayidx145.6.i = getelementptr inbounds %struct.txpwr_limits, ptr %txpwr, i32 0, i32 7, i32 6
  %241 = ptrtoint ptr %arrayidx145.6.i to i32
  call void @__asan_load1_noabort(i32 %241)
  %242 = load i8, ptr %arrayidx145.6.i, align 1
  %243 = call i8 @llvm.umin.i8(i8 %242, i8 %local_constraint_qdbm) #7
  %244 = ptrtoint ptr %arrayidx145.6.i to i32
  call void @__asan_store1_noabort(i32 %244)
  store i8 %243, ptr %arrayidx145.6.i, align 1
  %arrayidx145.7.i = getelementptr inbounds %struct.txpwr_limits, ptr %txpwr, i32 0, i32 7, i32 7
  %245 = ptrtoint ptr %arrayidx145.7.i to i32
  call void @__asan_load1_noabort(i32 %245)
  %246 = load i8, ptr %arrayidx145.7.i, align 1
  %247 = call i8 @llvm.umin.i8(i8 %246, i8 %local_constraint_qdbm) #7
  %248 = ptrtoint ptr %arrayidx145.7.i to i32
  call void @__asan_store1_noabort(i32 %248)
  store i8 %247, ptr %arrayidx145.7.i, align 1
  %arrayidx167.i = getelementptr inbounds %struct.txpwr_limits, ptr %txpwr, i32 0, i32 8, i32 0
  %249 = ptrtoint ptr %arrayidx167.i to i32
  call void @__asan_load1_noabort(i32 %249)
  %250 = load i8, ptr %arrayidx167.i, align 1
  %251 = call i8 @llvm.umin.i8(i8 %250, i8 %local_constraint_qdbm) #7
  %252 = ptrtoint ptr %arrayidx167.i to i32
  call void @__asan_store1_noabort(i32 %252)
  store i8 %251, ptr %arrayidx167.i, align 1
  %arrayidx167.1.i = getelementptr inbounds %struct.txpwr_limits, ptr %txpwr, i32 0, i32 8, i32 1
  %253 = ptrtoint ptr %arrayidx167.1.i to i32
  call void @__asan_load1_noabort(i32 %253)
  %254 = load i8, ptr %arrayidx167.1.i, align 1
  %255 = call i8 @llvm.umin.i8(i8 %254, i8 %local_constraint_qdbm) #7
  %256 = ptrtoint ptr %arrayidx167.1.i to i32
  call void @__asan_store1_noabort(i32 %256)
  store i8 %255, ptr %arrayidx167.1.i, align 1
  %arrayidx167.2.i = getelementptr inbounds %struct.txpwr_limits, ptr %txpwr, i32 0, i32 8, i32 2
  %257 = ptrtoint ptr %arrayidx167.2.i to i32
  call void @__asan_load1_noabort(i32 %257)
  %258 = load i8, ptr %arrayidx167.2.i, align 1
  %259 = call i8 @llvm.umin.i8(i8 %258, i8 %local_constraint_qdbm) #7
  %260 = ptrtoint ptr %arrayidx167.2.i to i32
  call void @__asan_store1_noabort(i32 %260)
  store i8 %259, ptr %arrayidx167.2.i, align 1
  %arrayidx167.3.i = getelementptr inbounds %struct.txpwr_limits, ptr %txpwr, i32 0, i32 8, i32 3
  %261 = ptrtoint ptr %arrayidx167.3.i to i32
  call void @__asan_load1_noabort(i32 %261)
  %262 = load i8, ptr %arrayidx167.3.i, align 1
  %263 = call i8 @llvm.umin.i8(i8 %262, i8 %local_constraint_qdbm) #7
  %264 = ptrtoint ptr %arrayidx167.3.i to i32
  call void @__asan_store1_noabort(i32 %264)
  store i8 %263, ptr %arrayidx167.3.i, align 1
  %arrayidx167.4.i = getelementptr inbounds %struct.txpwr_limits, ptr %txpwr, i32 0, i32 8, i32 4
  %265 = ptrtoint ptr %arrayidx167.4.i to i32
  call void @__asan_load1_noabort(i32 %265)
  %266 = load i8, ptr %arrayidx167.4.i, align 1
  %267 = call i8 @llvm.umin.i8(i8 %266, i8 %local_constraint_qdbm) #7
  %268 = ptrtoint ptr %arrayidx167.4.i to i32
  call void @__asan_store1_noabort(i32 %268)
  store i8 %267, ptr %arrayidx167.4.i, align 1
  %arrayidx167.5.i = getelementptr inbounds %struct.txpwr_limits, ptr %txpwr, i32 0, i32 8, i32 5
  %269 = ptrtoint ptr %arrayidx167.5.i to i32
  call void @__asan_load1_noabort(i32 %269)
  %270 = load i8, ptr %arrayidx167.5.i, align 1
  %271 = call i8 @llvm.umin.i8(i8 %270, i8 %local_constraint_qdbm) #7
  %272 = ptrtoint ptr %arrayidx167.5.i to i32
  call void @__asan_store1_noabort(i32 %272)
  store i8 %271, ptr %arrayidx167.5.i, align 1
  %arrayidx167.6.i = getelementptr inbounds %struct.txpwr_limits, ptr %txpwr, i32 0, i32 8, i32 6
  %273 = ptrtoint ptr %arrayidx167.6.i to i32
  call void @__asan_load1_noabort(i32 %273)
  %274 = load i8, ptr %arrayidx167.6.i, align 1
  %275 = call i8 @llvm.umin.i8(i8 %274, i8 %local_constraint_qdbm) #7
  %276 = ptrtoint ptr %arrayidx167.6.i to i32
  call void @__asan_store1_noabort(i32 %276)
  store i8 %275, ptr %arrayidx167.6.i, align 1
  %arrayidx167.7.i = getelementptr inbounds %struct.txpwr_limits, ptr %txpwr, i32 0, i32 8, i32 7
  %277 = ptrtoint ptr %arrayidx167.7.i to i32
  call void @__asan_load1_noabort(i32 %277)
  %278 = load i8, ptr %arrayidx167.7.i, align 1
  %279 = call i8 @llvm.umin.i8(i8 %278, i8 %local_constraint_qdbm) #7
  %280 = ptrtoint ptr %arrayidx167.7.i to i32
  call void @__asan_store1_noabort(i32 %280)
  store i8 %279, ptr %arrayidx167.7.i, align 1
  %arrayidx189.i = getelementptr inbounds %struct.txpwr_limits, ptr %txpwr, i32 0, i32 9, i32 0
  %281 = ptrtoint ptr %arrayidx189.i to i32
  call void @__asan_load1_noabort(i32 %281)
  %282 = load i8, ptr %arrayidx189.i, align 1
  %283 = call i8 @llvm.umin.i8(i8 %282, i8 %local_constraint_qdbm) #7
  %284 = ptrtoint ptr %arrayidx189.i to i32
  call void @__asan_store1_noabort(i32 %284)
  store i8 %283, ptr %arrayidx189.i, align 1
  %arrayidx189.1.i = getelementptr inbounds %struct.txpwr_limits, ptr %txpwr, i32 0, i32 9, i32 1
  %285 = ptrtoint ptr %arrayidx189.1.i to i32
  call void @__asan_load1_noabort(i32 %285)
  %286 = load i8, ptr %arrayidx189.1.i, align 1
  %287 = call i8 @llvm.umin.i8(i8 %286, i8 %local_constraint_qdbm) #7
  %288 = ptrtoint ptr %arrayidx189.1.i to i32
  call void @__asan_store1_noabort(i32 %288)
  store i8 %287, ptr %arrayidx189.1.i, align 1
  %arrayidx189.2.i = getelementptr inbounds %struct.txpwr_limits, ptr %txpwr, i32 0, i32 9, i32 2
  %289 = ptrtoint ptr %arrayidx189.2.i to i32
  call void @__asan_load1_noabort(i32 %289)
  %290 = load i8, ptr %arrayidx189.2.i, align 1
  %291 = call i8 @llvm.umin.i8(i8 %290, i8 %local_constraint_qdbm) #7
  %292 = ptrtoint ptr %arrayidx189.2.i to i32
  call void @__asan_store1_noabort(i32 %292)
  store i8 %291, ptr %arrayidx189.2.i, align 1
  %arrayidx189.3.i = getelementptr inbounds %struct.txpwr_limits, ptr %txpwr, i32 0, i32 9, i32 3
  %293 = ptrtoint ptr %arrayidx189.3.i to i32
  call void @__asan_load1_noabort(i32 %293)
  %294 = load i8, ptr %arrayidx189.3.i, align 1
  %295 = call i8 @llvm.umin.i8(i8 %294, i8 %local_constraint_qdbm) #7
  %296 = ptrtoint ptr %arrayidx189.3.i to i32
  call void @__asan_store1_noabort(i32 %296)
  store i8 %295, ptr %arrayidx189.3.i, align 1
  %arrayidx189.4.i = getelementptr inbounds %struct.txpwr_limits, ptr %txpwr, i32 0, i32 9, i32 4
  %297 = ptrtoint ptr %arrayidx189.4.i to i32
  call void @__asan_load1_noabort(i32 %297)
  %298 = load i8, ptr %arrayidx189.4.i, align 1
  %299 = call i8 @llvm.umin.i8(i8 %298, i8 %local_constraint_qdbm) #7
  %300 = ptrtoint ptr %arrayidx189.4.i to i32
  call void @__asan_store1_noabort(i32 %300)
  store i8 %299, ptr %arrayidx189.4.i, align 1
  %arrayidx189.5.i = getelementptr inbounds %struct.txpwr_limits, ptr %txpwr, i32 0, i32 9, i32 5
  %301 = ptrtoint ptr %arrayidx189.5.i to i32
  call void @__asan_load1_noabort(i32 %301)
  %302 = load i8, ptr %arrayidx189.5.i, align 1
  %303 = call i8 @llvm.umin.i8(i8 %302, i8 %local_constraint_qdbm) #7
  %304 = ptrtoint ptr %arrayidx189.5.i to i32
  call void @__asan_store1_noabort(i32 %304)
  store i8 %303, ptr %arrayidx189.5.i, align 1
  %arrayidx189.6.i = getelementptr inbounds %struct.txpwr_limits, ptr %txpwr, i32 0, i32 9, i32 6
  %305 = ptrtoint ptr %arrayidx189.6.i to i32
  call void @__asan_load1_noabort(i32 %305)
  %306 = load i8, ptr %arrayidx189.6.i, align 1
  %307 = call i8 @llvm.umin.i8(i8 %306, i8 %local_constraint_qdbm) #7
  %308 = ptrtoint ptr %arrayidx189.6.i to i32
  call void @__asan_store1_noabort(i32 %308)
  store i8 %307, ptr %arrayidx189.6.i, align 1
  %arrayidx189.7.i = getelementptr inbounds %struct.txpwr_limits, ptr %txpwr, i32 0, i32 9, i32 7
  %309 = ptrtoint ptr %arrayidx189.7.i to i32
  call void @__asan_load1_noabort(i32 %309)
  %310 = load i8, ptr %arrayidx189.7.i, align 1
  %311 = call i8 @llvm.umin.i8(i8 %310, i8 %local_constraint_qdbm) #7
  %312 = ptrtoint ptr %arrayidx189.7.i to i32
  call void @__asan_store1_noabort(i32 %312)
  store i8 %311, ptr %arrayidx189.7.i, align 1
  %arrayidx211.i = getelementptr inbounds %struct.txpwr_limits, ptr %txpwr, i32 0, i32 10, i32 0
  %313 = ptrtoint ptr %arrayidx211.i to i32
  call void @__asan_load1_noabort(i32 %313)
  %314 = load i8, ptr %arrayidx211.i, align 1
  %315 = call i8 @llvm.umin.i8(i8 %314, i8 %local_constraint_qdbm) #7
  %316 = ptrtoint ptr %arrayidx211.i to i32
  call void @__asan_store1_noabort(i32 %316)
  store i8 %315, ptr %arrayidx211.i, align 1
  %arrayidx211.1.i = getelementptr inbounds %struct.txpwr_limits, ptr %txpwr, i32 0, i32 10, i32 1
  %317 = ptrtoint ptr %arrayidx211.1.i to i32
  call void @__asan_load1_noabort(i32 %317)
  %318 = load i8, ptr %arrayidx211.1.i, align 1
  %319 = call i8 @llvm.umin.i8(i8 %318, i8 %local_constraint_qdbm) #7
  %320 = ptrtoint ptr %arrayidx211.1.i to i32
  call void @__asan_store1_noabort(i32 %320)
  store i8 %319, ptr %arrayidx211.1.i, align 1
  %arrayidx211.2.i = getelementptr inbounds %struct.txpwr_limits, ptr %txpwr, i32 0, i32 10, i32 2
  %321 = ptrtoint ptr %arrayidx211.2.i to i32
  call void @__asan_load1_noabort(i32 %321)
  %322 = load i8, ptr %arrayidx211.2.i, align 1
  %323 = call i8 @llvm.umin.i8(i8 %322, i8 %local_constraint_qdbm) #7
  %324 = ptrtoint ptr %arrayidx211.2.i to i32
  call void @__asan_store1_noabort(i32 %324)
  store i8 %323, ptr %arrayidx211.2.i, align 1
  %arrayidx211.3.i = getelementptr inbounds %struct.txpwr_limits, ptr %txpwr, i32 0, i32 10, i32 3
  %325 = ptrtoint ptr %arrayidx211.3.i to i32
  call void @__asan_load1_noabort(i32 %325)
  %326 = load i8, ptr %arrayidx211.3.i, align 1
  %327 = call i8 @llvm.umin.i8(i8 %326, i8 %local_constraint_qdbm) #7
  %328 = ptrtoint ptr %arrayidx211.3.i to i32
  call void @__asan_store1_noabort(i32 %328)
  store i8 %327, ptr %arrayidx211.3.i, align 1
  %arrayidx211.4.i = getelementptr inbounds %struct.txpwr_limits, ptr %txpwr, i32 0, i32 10, i32 4
  %329 = ptrtoint ptr %arrayidx211.4.i to i32
  call void @__asan_load1_noabort(i32 %329)
  %330 = load i8, ptr %arrayidx211.4.i, align 1
  %331 = call i8 @llvm.umin.i8(i8 %330, i8 %local_constraint_qdbm) #7
  %332 = ptrtoint ptr %arrayidx211.4.i to i32
  call void @__asan_store1_noabort(i32 %332)
  store i8 %331, ptr %arrayidx211.4.i, align 1
  %arrayidx211.5.i = getelementptr inbounds %struct.txpwr_limits, ptr %txpwr, i32 0, i32 10, i32 5
  %333 = ptrtoint ptr %arrayidx211.5.i to i32
  call void @__asan_load1_noabort(i32 %333)
  %334 = load i8, ptr %arrayidx211.5.i, align 1
  %335 = call i8 @llvm.umin.i8(i8 %334, i8 %local_constraint_qdbm) #7
  %336 = ptrtoint ptr %arrayidx211.5.i to i32
  call void @__asan_store1_noabort(i32 %336)
  store i8 %335, ptr %arrayidx211.5.i, align 1
  %arrayidx211.6.i = getelementptr inbounds %struct.txpwr_limits, ptr %txpwr, i32 0, i32 10, i32 6
  %337 = ptrtoint ptr %arrayidx211.6.i to i32
  call void @__asan_load1_noabort(i32 %337)
  %338 = load i8, ptr %arrayidx211.6.i, align 1
  %339 = call i8 @llvm.umin.i8(i8 %338, i8 %local_constraint_qdbm) #7
  %340 = ptrtoint ptr %arrayidx211.6.i to i32
  call void @__asan_store1_noabort(i32 %340)
  store i8 %339, ptr %arrayidx211.6.i, align 1
  %arrayidx211.7.i = getelementptr inbounds %struct.txpwr_limits, ptr %txpwr, i32 0, i32 10, i32 7
  %341 = ptrtoint ptr %arrayidx211.7.i to i32
  call void @__asan_load1_noabort(i32 %341)
  %342 = load i8, ptr %arrayidx211.7.i, align 1
  %343 = call i8 @llvm.umin.i8(i8 %342, i8 %local_constraint_qdbm) #7
  %344 = ptrtoint ptr %arrayidx211.7.i to i32
  call void @__asan_store1_noabort(i32 %344)
  store i8 %343, ptr %arrayidx211.7.i, align 1
  %arrayidx233.i = getelementptr inbounds %struct.txpwr_limits, ptr %txpwr, i32 0, i32 11, i32 0
  %345 = ptrtoint ptr %arrayidx233.i to i32
  call void @__asan_load1_noabort(i32 %345)
  %346 = load i8, ptr %arrayidx233.i, align 1
  %347 = call i8 @llvm.umin.i8(i8 %346, i8 %local_constraint_qdbm) #7
  %348 = ptrtoint ptr %arrayidx233.i to i32
  call void @__asan_store1_noabort(i32 %348)
  store i8 %347, ptr %arrayidx233.i, align 1
  %arrayidx233.1.i = getelementptr inbounds %struct.txpwr_limits, ptr %txpwr, i32 0, i32 11, i32 1
  %349 = ptrtoint ptr %arrayidx233.1.i to i32
  call void @__asan_load1_noabort(i32 %349)
  %350 = load i8, ptr %arrayidx233.1.i, align 1
  %351 = call i8 @llvm.umin.i8(i8 %350, i8 %local_constraint_qdbm) #7
  %352 = ptrtoint ptr %arrayidx233.1.i to i32
  call void @__asan_store1_noabort(i32 %352)
  store i8 %351, ptr %arrayidx233.1.i, align 1
  %arrayidx233.2.i = getelementptr inbounds %struct.txpwr_limits, ptr %txpwr, i32 0, i32 11, i32 2
  %353 = ptrtoint ptr %arrayidx233.2.i to i32
  call void @__asan_load1_noabort(i32 %353)
  %354 = load i8, ptr %arrayidx233.2.i, align 1
  %355 = call i8 @llvm.umin.i8(i8 %354, i8 %local_constraint_qdbm) #7
  %356 = ptrtoint ptr %arrayidx233.2.i to i32
  call void @__asan_store1_noabort(i32 %356)
  store i8 %355, ptr %arrayidx233.2.i, align 1
  %arrayidx233.3.i = getelementptr inbounds %struct.txpwr_limits, ptr %txpwr, i32 0, i32 11, i32 3
  %357 = ptrtoint ptr %arrayidx233.3.i to i32
  call void @__asan_load1_noabort(i32 %357)
  %358 = load i8, ptr %arrayidx233.3.i, align 1
  %359 = call i8 @llvm.umin.i8(i8 %358, i8 %local_constraint_qdbm) #7
  %360 = ptrtoint ptr %arrayidx233.3.i to i32
  call void @__asan_store1_noabort(i32 %360)
  store i8 %359, ptr %arrayidx233.3.i, align 1
  %arrayidx233.4.i = getelementptr inbounds %struct.txpwr_limits, ptr %txpwr, i32 0, i32 11, i32 4
  %361 = ptrtoint ptr %arrayidx233.4.i to i32
  call void @__asan_load1_noabort(i32 %361)
  %362 = load i8, ptr %arrayidx233.4.i, align 1
  %363 = call i8 @llvm.umin.i8(i8 %362, i8 %local_constraint_qdbm) #7
  %364 = ptrtoint ptr %arrayidx233.4.i to i32
  call void @__asan_store1_noabort(i32 %364)
  store i8 %363, ptr %arrayidx233.4.i, align 1
  %arrayidx233.5.i = getelementptr inbounds %struct.txpwr_limits, ptr %txpwr, i32 0, i32 11, i32 5
  %365 = ptrtoint ptr %arrayidx233.5.i to i32
  call void @__asan_load1_noabort(i32 %365)
  %366 = load i8, ptr %arrayidx233.5.i, align 1
  %367 = call i8 @llvm.umin.i8(i8 %366, i8 %local_constraint_qdbm) #7
  %368 = ptrtoint ptr %arrayidx233.5.i to i32
  call void @__asan_store1_noabort(i32 %368)
  store i8 %367, ptr %arrayidx233.5.i, align 1
  %arrayidx233.6.i = getelementptr inbounds %struct.txpwr_limits, ptr %txpwr, i32 0, i32 11, i32 6
  %369 = ptrtoint ptr %arrayidx233.6.i to i32
  call void @__asan_load1_noabort(i32 %369)
  %370 = load i8, ptr %arrayidx233.6.i, align 1
  %371 = call i8 @llvm.umin.i8(i8 %370, i8 %local_constraint_qdbm) #7
  %372 = ptrtoint ptr %arrayidx233.6.i to i32
  call void @__asan_store1_noabort(i32 %372)
  store i8 %371, ptr %arrayidx233.6.i, align 1
  %arrayidx233.7.i = getelementptr inbounds %struct.txpwr_limits, ptr %txpwr, i32 0, i32 11, i32 7
  %373 = ptrtoint ptr %arrayidx233.7.i to i32
  call void @__asan_load1_noabort(i32 %373)
  %374 = load i8, ptr %arrayidx233.7.i, align 1
  %375 = call i8 @llvm.umin.i8(i8 %374, i8 %local_constraint_qdbm) #7
  %376 = ptrtoint ptr %arrayidx233.7.i to i32
  call void @__asan_store1_noabort(i32 %376)
  store i8 %375, ptr %arrayidx233.7.i, align 1
  %arrayidx255.i = getelementptr inbounds %struct.txpwr_limits, ptr %txpwr, i32 0, i32 12, i32 0
  %377 = ptrtoint ptr %arrayidx255.i to i32
  call void @__asan_load1_noabort(i32 %377)
  %378 = load i8, ptr %arrayidx255.i, align 1
  %379 = call i8 @llvm.umin.i8(i8 %378, i8 %local_constraint_qdbm) #7
  %380 = ptrtoint ptr %arrayidx255.i to i32
  call void @__asan_store1_noabort(i32 %380)
  store i8 %379, ptr %arrayidx255.i, align 1
  %arrayidx255.1.i = getelementptr inbounds %struct.txpwr_limits, ptr %txpwr, i32 0, i32 12, i32 1
  %381 = ptrtoint ptr %arrayidx255.1.i to i32
  call void @__asan_load1_noabort(i32 %381)
  %382 = load i8, ptr %arrayidx255.1.i, align 1
  %383 = call i8 @llvm.umin.i8(i8 %382, i8 %local_constraint_qdbm) #7
  %384 = ptrtoint ptr %arrayidx255.1.i to i32
  call void @__asan_store1_noabort(i32 %384)
  store i8 %383, ptr %arrayidx255.1.i, align 1
  %arrayidx255.2.i = getelementptr inbounds %struct.txpwr_limits, ptr %txpwr, i32 0, i32 12, i32 2
  %385 = ptrtoint ptr %arrayidx255.2.i to i32
  call void @__asan_load1_noabort(i32 %385)
  %386 = load i8, ptr %arrayidx255.2.i, align 1
  %387 = call i8 @llvm.umin.i8(i8 %386, i8 %local_constraint_qdbm) #7
  %388 = ptrtoint ptr %arrayidx255.2.i to i32
  call void @__asan_store1_noabort(i32 %388)
  store i8 %387, ptr %arrayidx255.2.i, align 1
  %arrayidx255.3.i = getelementptr inbounds %struct.txpwr_limits, ptr %txpwr, i32 0, i32 12, i32 3
  %389 = ptrtoint ptr %arrayidx255.3.i to i32
  call void @__asan_load1_noabort(i32 %389)
  %390 = load i8, ptr %arrayidx255.3.i, align 1
  %391 = call i8 @llvm.umin.i8(i8 %390, i8 %local_constraint_qdbm) #7
  %392 = ptrtoint ptr %arrayidx255.3.i to i32
  call void @__asan_store1_noabort(i32 %392)
  store i8 %391, ptr %arrayidx255.3.i, align 1
  %arrayidx255.4.i = getelementptr inbounds %struct.txpwr_limits, ptr %txpwr, i32 0, i32 12, i32 4
  %393 = ptrtoint ptr %arrayidx255.4.i to i32
  call void @__asan_load1_noabort(i32 %393)
  %394 = load i8, ptr %arrayidx255.4.i, align 1
  %395 = call i8 @llvm.umin.i8(i8 %394, i8 %local_constraint_qdbm) #7
  %396 = ptrtoint ptr %arrayidx255.4.i to i32
  call void @__asan_store1_noabort(i32 %396)
  store i8 %395, ptr %arrayidx255.4.i, align 1
  %arrayidx255.5.i = getelementptr inbounds %struct.txpwr_limits, ptr %txpwr, i32 0, i32 12, i32 5
  %397 = ptrtoint ptr %arrayidx255.5.i to i32
  call void @__asan_load1_noabort(i32 %397)
  %398 = load i8, ptr %arrayidx255.5.i, align 1
  %399 = call i8 @llvm.umin.i8(i8 %398, i8 %local_constraint_qdbm) #7
  %400 = ptrtoint ptr %arrayidx255.5.i to i32
  call void @__asan_store1_noabort(i32 %400)
  store i8 %399, ptr %arrayidx255.5.i, align 1
  %arrayidx255.6.i = getelementptr inbounds %struct.txpwr_limits, ptr %txpwr, i32 0, i32 12, i32 6
  %401 = ptrtoint ptr %arrayidx255.6.i to i32
  call void @__asan_load1_noabort(i32 %401)
  %402 = load i8, ptr %arrayidx255.6.i, align 1
  %403 = call i8 @llvm.umin.i8(i8 %402, i8 %local_constraint_qdbm) #7
  %404 = ptrtoint ptr %arrayidx255.6.i to i32
  call void @__asan_store1_noabort(i32 %404)
  store i8 %403, ptr %arrayidx255.6.i, align 1
  %arrayidx255.7.i = getelementptr inbounds %struct.txpwr_limits, ptr %txpwr, i32 0, i32 12, i32 7
  %405 = ptrtoint ptr %arrayidx255.7.i to i32
  call void @__asan_load1_noabort(i32 %405)
  %406 = load i8, ptr %arrayidx255.7.i, align 1
  %407 = call i8 @llvm.umin.i8(i8 %406, i8 %local_constraint_qdbm) #7
  %408 = ptrtoint ptr %arrayidx255.7.i to i32
  call void @__asan_store1_noabort(i32 %408)
  store i8 %407, ptr %arrayidx255.7.i, align 1
  %mcs32.i = getelementptr inbounds %struct.txpwr_limits, ptr %txpwr, i32 0, i32 13
  %409 = ptrtoint ptr %mcs32.i to i32
  call void @__asan_load1_noabort(i32 %409)
  %410 = load i8, ptr %mcs32.i, align 1
  %411 = call i8 @llvm.umin.i8(i8 %410, i8 %local_constraint_qdbm) #7
  %412 = ptrtoint ptr %mcs32.i to i32
  call void @__asan_store1_noabort(i32 %412)
  store i8 %411, ptr %mcs32.i, align 1
  %flags = getelementptr inbounds %struct.ieee80211_channel, ptr %7, i32 0, i32 4
  %413 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %413)
  %414 = load i32, ptr %flags, align 4
  %and = and i32 %414, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %protection = getelementptr inbounds %struct.brcms_c_info, ptr %1, i32 0, i32 58
  %415 = ptrtoint ptr %protection to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load ptr, ptr %protection, align 4
  %gmode_user = getelementptr inbounds %struct.brcms_protection, ptr %416, i32 0, i32 2
  %417 = ptrtoint ptr %gmode_user to i32
  call void @__asan_load1_noabort(i32 %417)
  %418 = load i8, ptr %gmode_user, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %.sink = phi i8 [ %418, %if.else ], [ 0, %entry.if.end_crit_edge ]
  %call2 = call i32 @brcms_c_set_gmode(ptr noundef %1, i8 noundef zeroext %.sink, i1 noundef zeroext false) #7
  %hw = getelementptr inbounds %struct.brcms_c_info, ptr %1, i32 0, i32 2
  %419 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %419)
  %420 = load ptr, ptr %hw, align 4
  %421 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load i32, ptr %flags, align 4
  %and4 = and i32 %422, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5 = icmp ne i32 %and4, 0
  call void @brcms_b_set_chanspec(ptr noundef %420, i16 noundef zeroext %chanspec, i1 noundef zeroext %tobool5, ptr noundef nonnull %txpwr) #7
  call void @llvm.lifetime.end.p0(i64 101, ptr nonnull %txpwr) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @brcms_c_channel_reg_limits(ptr nocapture noundef readonly %wlc_cm, i16 noundef zeroext %chanspec, ptr noundef %txpwr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %wlc1 = getelementptr inbounds %struct.brcms_cm_info, ptr %wlc_cm, i32 0, i32 1
  %0 = ptrtoint ptr %wlc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wlc1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %ieee_hw = getelementptr inbounds %struct.brcms_pub, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %ieee_hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ieee_hw, align 4
  %chandef = getelementptr inbounds %struct.ieee80211_conf, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chandef, align 4
  %8 = call ptr @memset(ptr %txpwr, i32 0, i32 101)
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %do.end, label %if.end25, !prof !34

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 417, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end25:                                         ; preds = %entry
  %world_regd = getelementptr inbounds %struct.brcms_cm_info, ptr %wlc_cm, i32 0, i32 2
  %9 = ptrtoint ptr %world_regd to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %world_regd, align 4
  %11 = and i16 %chanspec, 255
  %conv28 = zext i16 %11 to i32
  %12 = and i16 %chanspec, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 4096, i16 %12)
  %cmp.i = icmp eq i16 %12, 4096
  %cond.i = zext i1 %cmp.i to i32
  %arrayidx = getelementptr %struct.brcms_c_info, ptr %1, i32 0, i32 11, i32 %cond.i
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp = icmp eq i32 %16, 1
  %locale_mimo_5G = getelementptr inbounds %struct.country_info, ptr %10, i32 0, i32 1
  %.sink507 = select i1 %cmp, ptr %locale_mimo_5G, ptr %10
  %locale_bn.sink = select i1 %cmp, ptr @locale_11n, ptr @locale_bn
  %17 = ptrtoint ptr %.sink507 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %.sink507, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp.not.i472 = icmp eq i8 %18, 0
  %locale_bn..i = select i1 %cmp.not.i472, ptr %locale_bn.sink, ptr null
  %antgain = getelementptr inbounds %struct.brcms_band, ptr %14, i32 0, i32 16
  %19 = ptrtoint ptr %antgain to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %antgain, align 2
  %conv32 = sext i8 %20 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %16)
  %cmp34 = icmp eq i32 %16, 2
  %spec.select = select i1 %cmp34, i32 88, i32 127
  %max_power = getelementptr inbounds %struct.ieee80211_channel, ptr %7, i32 0, i32 6
  %21 = ptrtoint ptr %max_power to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %max_power, align 4
  %mul = shl i32 %22, 2
  %sub = sub i32 %mul, %conv32
  %23 = tail call i32 @llvm.smax.i32(i32 %sub, i32 0)
  %24 = tail call i32 @llvm.umin.i32(i32 %23, i32 %spec.select)
  %conv58 = trunc i32 %24 to i8
  br i1 %cmp34, label %for.cond.preheader, label %if.end25.if.end60_crit_edge

if.end25.if.end60_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end60

for.cond.preheader:                               ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  %25 = zext i8 %conv58 to i32
  %26 = call ptr @memset(ptr %txpwr, i32 %25, i32 4)
  br label %if.end60

if.end60:                                         ; preds = %for.cond.preheader, %if.end25.if.end60_crit_edge
  %uglygep = getelementptr i8, ptr %txpwr, i32 4
  %arrayidx67 = getelementptr %struct.txpwr_limits, ptr %txpwr, i32 0, i32 3, i32 0
  %27 = zext i8 %conv58 to i32
  %28 = call ptr @memset(ptr %uglygep, i32 %27, i32 16)
  %arrayidx67.1 = getelementptr %struct.txpwr_limits, ptr %txpwr, i32 0, i32 3, i32 1
  %arrayidx70.1 = getelementptr %struct.txpwr_limits, ptr %txpwr, i32 0, i32 4, i32 1
  %29 = call ptr @memset(ptr %arrayidx67, i32 0, i32 16)
  %30 = ptrtoint ptr %antgain to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %antgain, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 24, i8 %31)
  %cmp76 = icmp sgt i8 %31, 24
  %conv75 = sext i8 %31 to i32
  %sub81 = add nsw i32 %conv75, -24
  %delta.0 = select i1 %cmp76, i32 %sub81, i32 0
  %32 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %33)
  %cmp84 = icmp eq i32 %33, 2
  br i1 %cmp84, label %if.then86, label %if.else

if.then86:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  %sub87 = add nsw i32 %conv28, -1
  br label %if.end109

if.else:                                          ; preds = %if.end60
  call void @__sanitizer_cov_trace_const_cmp2(i16 52, i16 %11)
  %cmp88 = icmp ult i16 %11, 52
  br i1 %cmp88, label %if.else.if.end109_crit_edge, label %cond.false91

if.else.if.end109_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end109

cond.false91:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp2(i16 62, i16 %11)
  %cmp92 = icmp ult i16 %11, 62
  br i1 %cmp92, label %cond.false91.if.end109_crit_edge, label %cond.false95

cond.false91.if.end109_crit_edge:                 ; preds = %cond.false91
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end109

cond.false95:                                     ; preds = %cond.false91
  call void @__sanitizer_cov_trace_const_cmp2(i16 100, i16 %11)
  %cmp96 = icmp ult i16 %11, 100
  br i1 %cmp96, label %cond.false95.if.end109_crit_edge, label %cond.false99

cond.false95.if.end109_crit_edge:                 ; preds = %cond.false95
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end109

cond.false99:                                     ; preds = %cond.false95
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp2(i16 149, i16 %11)
  %cmp100 = icmp ult i16 %11, 149
  %cond102 = select i1 %cmp100, i32 3, i32 4
  br label %if.end109

if.end109:                                        ; preds = %cond.false99, %cond.false95.if.end109_crit_edge, %cond.false91.if.end109_crit_edge, %if.else.if.end109_crit_edge, %if.then86
  %maxpwr_idx.0 = phi i32 [ %sub87, %if.then86 ], [ 0, %if.else.if.end109_crit_edge ], [ 1, %cond.false91.if.end109_crit_edge ], [ %cond102, %cond.false99 ], [ 2, %cond.false95.if.end109_crit_edge ]
  %arrayidx111 = getelementptr [14 x i8], ptr %locale_bn..i, i32 0, i32 %maxpwr_idx.0
  %34 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx111, align 1
  %conv112 = sext i8 %35 to i32
  %arrayidx114 = getelementptr %struct.locale_mimo_info, ptr %locale_bn..i, i32 0, i32 1, i32 %maxpwr_idx.0
  %36 = ptrtoint ptr %arrayidx114 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx114, align 1
  %conv115 = sext i8 %37 to i32
  %sub116 = sub nsw i32 %conv112, %delta.0
  %sub124 = sub nsw i32 %conv115, %delta.0
  %38 = ptrtoint ptr %uglygep to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %uglygep, align 1
  %arrayidx138 = getelementptr %struct.txpwr_limits, ptr %txpwr, i32 0, i32 5, i32 0
  %40 = ptrtoint ptr %arrayidx138 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %arrayidx138, align 1
  %arrayidx139 = getelementptr %struct.txpwr_limits, ptr %txpwr, i32 0, i32 9, i32 0
  %41 = ptrtoint ptr %arrayidx139 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %arrayidx139, align 1
  %arrayidx137.1 = getelementptr %struct.txpwr_limits, ptr %txpwr, i32 0, i32 1, i32 1
  %42 = ptrtoint ptr %arrayidx137.1 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx137.1, align 1
  %arrayidx138.1 = getelementptr %struct.txpwr_limits, ptr %txpwr, i32 0, i32 5, i32 1
  %44 = ptrtoint ptr %arrayidx138.1 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %43, ptr %arrayidx138.1, align 1
  %arrayidx139.1 = getelementptr %struct.txpwr_limits, ptr %txpwr, i32 0, i32 9, i32 1
  %45 = ptrtoint ptr %arrayidx139.1 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %arrayidx139.1, align 1
  %arrayidx137.2 = getelementptr %struct.txpwr_limits, ptr %txpwr, i32 0, i32 1, i32 2
  %46 = ptrtoint ptr %arrayidx137.2 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx137.2, align 1
  %arrayidx138.2 = getelementptr %struct.txpwr_limits, ptr %txpwr, i32 0, i32 5, i32 2
  %48 = ptrtoint ptr %arrayidx138.2 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %arrayidx138.2, align 1
  %arrayidx139.2 = getelementptr %struct.txpwr_limits, ptr %txpwr, i32 0, i32 9, i32 2
  %49 = ptrtoint ptr %arrayidx139.2 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 0, ptr %arrayidx139.2, align 1
  %arrayidx137.3 = getelementptr %struct.txpwr_limits, ptr %txpwr, i32 0, i32 1, i32 3
  %50 = ptrtoint ptr %arrayidx137.3 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx137.3, align 1
  %arrayidx138.3 = getelementptr %struct.txpwr_limits, ptr %txpwr, i32 0, i32 5, i32 3
  %52 = ptrtoint ptr %arrayidx138.3 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %51, ptr %arrayidx138.3, align 1
  %arrayidx139.3 = getelementptr %struct.txpwr_limits, ptr %txpwr, i32 0, i32 9, i32 3
  %53 = ptrtoint ptr %arrayidx139.3 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 0, ptr %arrayidx139.3, align 1
  %arrayidx137.4 = getelementptr %struct.txpwr_limits, ptr %txpwr, i32 0, i32 1, i32 4
  %54 = ptrtoint ptr %arrayidx137.4 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx137.4, align 1
  %arrayidx138.4 = getelementptr %struct.txpwr_limits, ptr %txpwr, i32 0, i32 5, i32 4
  %56 = ptrtoint ptr %arrayidx138.4 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %55, ptr %arrayidx138.4, align 1
  %arrayidx139.4 = getelementptr %struct.txpwr_limits, ptr %txpwr, i32 0, i32 9, i32 4
  %57 = ptrtoint ptr %arrayidx139.4 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 0, ptr %arrayidx139.4, align 1
  %arrayidx137.5 = getelementptr %struct.txpwr_limits, ptr %txpwr, i32 0, i32 1, i32 5
  %58 = ptrtoint ptr %arrayidx137.5 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx137.5, align 1
  %arrayidx138.5 = getelementptr %struct.txpwr_limits, ptr %txpwr, i32 0, i32 5, i32 5
  %60 = ptrtoint ptr %arrayidx138.5 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %59, ptr %arrayidx138.5, align 1
  %arrayidx139.5 = getelementptr %struct.txpwr_limits, ptr %txpwr, i32 0, i32 9, i32 5
  %61 = ptrtoint ptr %arrayidx139.5 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 0, ptr %arrayidx139.5, align 1
  %arrayidx137.6 = getelementptr %struct.txpwr_limits, ptr %txpwr, i32 0, i32 1, i32 6
  %62 = ptrtoint ptr %arrayidx137.6 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx137.6, align 1
  %arrayidx138.6 = getelementptr %struct.txpwr_limits, ptr %txpwr, i32 0, i32 5, i32 6
  %64 = ptrtoint ptr %arrayidx138.6 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %63, ptr %arrayidx138.6, align 1
  %arrayidx139.6 = getelementptr %struct.txpwr_limits, ptr %txpwr, i32 0, i32 9, i32 6
  %65 = ptrtoint ptr %arrayidx139.6 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 0, ptr %arrayidx139.6, align 1
  %arrayidx137.7 = getelementptr %struct.txpwr_limits, ptr %txpwr, i32 0, i32 1, i32 7
  %66 = ptrtoint ptr %arrayidx137.7 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx137.7, align 1
  %arrayidx138.7 = getelementptr %struct.txpwr_limits, ptr %txpwr, i32 0, i32 5, i32 7
  %68 = ptrtoint ptr %arrayidx138.7 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %67, ptr %arrayidx138.7, align 1
  %arrayidx139.7 = getelementptr %struct.txpwr_limits, ptr %txpwr, i32 0, i32 9, i32 7
  %69 = ptrtoint ptr %arrayidx139.7 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 0, ptr %arrayidx139.7, align 1
  %70 = tail call i32 @llvm.smax.i32(i32 %sub116, i32 0)
  %71 = tail call i32 @llvm.smax.i32(i32 %sub124, i32 0)
  %conv147 = trunc i32 %70 to i8
  %conv149 = trunc i32 %71 to i8
  %uglygep499 = getelementptr i8, ptr %txpwr, i32 44
  %72 = zext i8 %conv147 to i32
  %73 = call ptr @memset(ptr %uglygep499, i32 %72, i32 8)
  %uglygep500 = getelementptr i8, ptr %txpwr, i32 76
  %74 = zext i8 %conv149 to i32
  %75 = call ptr @memset(ptr %uglygep500, i32 %74, i32 8)
  %cmp154 = icmp eq ptr %locale_bn..i, @locale_bn
  br i1 %cmp154, label %if.then156, label %if.end109.if.end176_crit_edge

if.end109.if.end176_crit_edge:                    ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end176

if.then156:                                       ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #9
  %76 = add nsw i16 %11, -3
  call void @__sanitizer_cov_trace_const_cmp2(i16 9, i16 %76)
  %77 = icmp ult i16 %76, 9
  %conv170 = select i1 %77, i8 64, i8 0
  %78 = ptrtoint ptr %arrayidx138 to i32
  call void @__asan_storeN_noabort(i32 %78, i32 8)
  store i64 4629771061636907072, ptr %arrayidx138, align 1
  %79 = zext i8 %conv170 to i32
  %80 = call ptr @memset(ptr %arrayidx139, i32 %79, i32 8)
  br label %if.end176

if.end176:                                        ; preds = %if.then156, %if.end109.if.end176_crit_edge
  %conv192.pre-phi = phi i8 [ %conv170, %if.then156 ], [ %conv149, %if.end109.if.end176_crit_edge ]
  %maxpwr20.0 = phi i32 [ 64, %if.then156 ], [ %70, %if.end109.if.end176_crit_edge ]
  %uglygep503 = getelementptr i8, ptr %txpwr, i32 52
  %81 = ptrtoint ptr %uglygep503 to i32
  call void @__asan_storeN_noabort(i32 %81, i32 8)
  store i64 0, ptr %uglygep503, align 1
  %uglygep504 = getelementptr i8, ptr %txpwr, i32 84
  %82 = ptrtoint ptr %uglygep504 to i32
  call void @__asan_storeN_noabort(i32 %82, i32 8)
  store i64 0, ptr %uglygep504, align 1
  %conv190 = trunc i32 %maxpwr20.0 to i8
  %uglygep505 = getelementptr i8, ptr %txpwr, i32 60
  %83 = zext i8 %conv190 to i32
  %84 = call ptr @memset(ptr %uglygep505, i32 %83, i32 8)
  %uglygep506 = getelementptr i8, ptr %txpwr, i32 92
  %85 = zext i8 %conv192.pre-phi to i32
  %86 = call ptr @memset(ptr %uglygep506, i32 %85, i32 9)
  br label %for.body201

for.body201:                                      ; preds = %for.inc228.for.body201_crit_edge, %if.end176
  %i.7483 = phi i32 [ 0, %if.end176 ], [ %inc229, %for.inc228.for.body201_crit_edge ]
  %j.0480 = phi i32 [ 0, %if.end176 ], [ %inc230, %for.inc228.for.body201_crit_edge ]
  %arrayidx203 = getelementptr %struct.txpwr_limits, ptr %txpwr, i32 0, i32 4, i32 %i.7483
  %87 = ptrtoint ptr %arrayidx203 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %arrayidx203, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %cmp205 = icmp eq i8 %88, 0
  br i1 %cmp205, label %if.then207, label %for.body201.if.end212_crit_edge

for.body201.if.end212_crit_edge:                  ; preds = %for.body201
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end212

if.then207:                                       ; preds = %for.body201
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx209 = getelementptr %struct.txpwr_limits, ptr %txpwr, i32 0, i32 10, i32 %j.0480
  %89 = ptrtoint ptr %arrayidx209 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %arrayidx209, align 1
  %91 = ptrtoint ptr %arrayidx203 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %90, ptr %arrayidx203, align 1
  br label %if.end212

if.end212:                                        ; preds = %if.then207, %for.body201.if.end212_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.7483)
  %cmp213 = icmp eq i32 %i.7483, 0
  br i1 %cmp213, label %if.then215, label %if.end212.for.inc228_crit_edge

if.end212.for.inc228_crit_edge:                   ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc228

if.then215:                                       ; preds = %if.end212
  %92 = ptrtoint ptr %arrayidx70.1 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %arrayidx70.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %cmp219 = icmp eq i8 %93, 0
  br i1 %cmp219, label %if.then221, label %if.then215.for.inc228_crit_edge

if.then215.for.inc228_crit_edge:                  ; preds = %if.then215
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc228

if.then221:                                       ; preds = %if.then215
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx223 = getelementptr %struct.txpwr_limits, ptr %txpwr, i32 0, i32 10, i32 %j.0480
  %94 = ptrtoint ptr %arrayidx223 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %arrayidx223, align 1
  %96 = ptrtoint ptr %arrayidx70.1 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %95, ptr %arrayidx70.1, align 1
  br label %for.inc228

for.inc228:                                       ; preds = %if.then221, %if.then215.for.inc228_crit_edge, %if.end212.for.inc228_crit_edge
  %i.8 = phi i32 [ 1, %if.then221 ], [ 1, %if.then215.for.inc228_crit_edge ], [ %i.7483, %if.end212.for.inc228_crit_edge ]
  %inc229 = add nuw nsw i32 %i.8, 1
  %inc230 = add i32 %j.0480, 1
  %cmp199 = icmp ult i32 %i.8, 7
  br i1 %cmp199, label %for.inc228.for.body201_crit_edge, label %for.body235.preheader

for.inc228.for.body201_crit_edge:                 ; preds = %for.inc228
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body201

for.body235.preheader:                            ; preds = %for.inc228
  %97 = ptrtoint ptr %arrayidx139 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %arrayidx139, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %cmp239 = icmp eq i8 %98, 0
  br i1 %cmp239, label %if.then241, label %for.body235.preheader.for.inc247_crit_edge

for.body235.preheader.for.inc247_crit_edge:       ; preds = %for.body235.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc247

if.then241:                                       ; preds = %for.body235.preheader
  call void @__sanitizer_cov_trace_pc() #9
  %99 = ptrtoint ptr %uglygep500 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %uglygep500, align 1
  %101 = ptrtoint ptr %arrayidx139 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %100, ptr %arrayidx139, align 1
  br label %for.inc247

for.inc247:                                       ; preds = %if.then241, %for.body235.preheader.for.inc247_crit_edge
  %102 = ptrtoint ptr %arrayidx139.1 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %arrayidx139.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %103)
  %cmp239.1 = icmp eq i8 %103, 0
  br i1 %cmp239.1, label %if.then241.1, label %for.inc247.for.inc247.1_crit_edge

for.inc247.for.inc247.1_crit_edge:                ; preds = %for.inc247
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc247.1

if.then241.1:                                     ; preds = %for.inc247
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx243.1 = getelementptr %struct.txpwr_limits, ptr %txpwr, i32 0, i32 10, i32 1
  %104 = ptrtoint ptr %arrayidx243.1 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %arrayidx243.1, align 1
  %106 = ptrtoint ptr %arrayidx139.1 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %105, ptr %arrayidx139.1, align 1
  br label %for.inc247.1

for.inc247.1:                                     ; preds = %if.then241.1, %for.inc247.for.inc247.1_crit_edge
  %107 = ptrtoint ptr %arrayidx139.2 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %arrayidx139.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %108)
  %cmp239.2 = icmp eq i8 %108, 0
  br i1 %cmp239.2, label %if.then241.2, label %for.inc247.1.for.inc247.2_crit_edge

for.inc247.1.for.inc247.2_crit_edge:              ; preds = %for.inc247.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc247.2

if.then241.2:                                     ; preds = %for.inc247.1
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx243.2 = getelementptr %struct.txpwr_limits, ptr %txpwr, i32 0, i32 10, i32 2
  %109 = ptrtoint ptr %arrayidx243.2 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %arrayidx243.2, align 1
  %111 = ptrtoint ptr %arrayidx139.2 to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %110, ptr %arrayidx139.2, align 1
  br label %for.inc247.2

for.inc247.2:                                     ; preds = %if.then241.2, %for.inc247.1.for.inc247.2_crit_edge
  %112 = ptrtoint ptr %arrayidx139.3 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %arrayidx139.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %113)
  %cmp239.3 = icmp eq i8 %113, 0
  br i1 %cmp239.3, label %if.then241.3, label %for.inc247.2.for.inc247.3_crit_edge

for.inc247.2.for.inc247.3_crit_edge:              ; preds = %for.inc247.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc247.3

if.then241.3:                                     ; preds = %for.inc247.2
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx243.3 = getelementptr %struct.txpwr_limits, ptr %txpwr, i32 0, i32 10, i32 3
  %114 = ptrtoint ptr %arrayidx243.3 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %arrayidx243.3, align 1
  %116 = ptrtoint ptr %arrayidx139.3 to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 %115, ptr %arrayidx139.3, align 1
  br label %for.inc247.3

for.inc247.3:                                     ; preds = %if.then241.3, %for.inc247.2.for.inc247.3_crit_edge
  %117 = ptrtoint ptr %arrayidx139.4 to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %arrayidx139.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %118)
  %cmp239.4 = icmp eq i8 %118, 0
  br i1 %cmp239.4, label %if.then241.4, label %for.inc247.3.for.inc247.4_crit_edge

for.inc247.3.for.inc247.4_crit_edge:              ; preds = %for.inc247.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc247.4

if.then241.4:                                     ; preds = %for.inc247.3
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx243.4 = getelementptr %struct.txpwr_limits, ptr %txpwr, i32 0, i32 10, i32 4
  %119 = ptrtoint ptr %arrayidx243.4 to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %arrayidx243.4, align 1
  %121 = ptrtoint ptr %arrayidx139.4 to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 %120, ptr %arrayidx139.4, align 1
  br label %for.inc247.4

for.inc247.4:                                     ; preds = %if.then241.4, %for.inc247.3.for.inc247.4_crit_edge
  %122 = ptrtoint ptr %arrayidx139.5 to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %arrayidx139.5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %123)
  %cmp239.5 = icmp eq i8 %123, 0
  br i1 %cmp239.5, label %if.then241.5, label %for.inc247.4.for.inc247.5_crit_edge

for.inc247.4.for.inc247.5_crit_edge:              ; preds = %for.inc247.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc247.5

if.then241.5:                                     ; preds = %for.inc247.4
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx243.5 = getelementptr %struct.txpwr_limits, ptr %txpwr, i32 0, i32 10, i32 5
  %124 = ptrtoint ptr %arrayidx243.5 to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %arrayidx243.5, align 1
  %126 = ptrtoint ptr %arrayidx139.5 to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 %125, ptr %arrayidx139.5, align 1
  br label %for.inc247.5

for.inc247.5:                                     ; preds = %if.then241.5, %for.inc247.4.for.inc247.5_crit_edge
  %127 = ptrtoint ptr %arrayidx139.6 to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %arrayidx139.6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %128)
  %cmp239.6 = icmp eq i8 %128, 0
  br i1 %cmp239.6, label %if.then241.6, label %for.inc247.5.for.inc247.6_crit_edge

for.inc247.5.for.inc247.6_crit_edge:              ; preds = %for.inc247.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc247.6

if.then241.6:                                     ; preds = %for.inc247.5
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx243.6 = getelementptr %struct.txpwr_limits, ptr %txpwr, i32 0, i32 10, i32 6
  %129 = ptrtoint ptr %arrayidx243.6 to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %arrayidx243.6, align 1
  %131 = ptrtoint ptr %arrayidx139.6 to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 %130, ptr %arrayidx139.6, align 1
  br label %for.inc247.6

for.inc247.6:                                     ; preds = %if.then241.6, %for.inc247.5.for.inc247.6_crit_edge
  %132 = ptrtoint ptr %arrayidx139.7 to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %arrayidx139.7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %133)
  %cmp239.7 = icmp eq i8 %133, 0
  br i1 %cmp239.7, label %if.then241.7, label %for.inc247.6.for.body253.preheader_crit_edge

for.inc247.6.for.body253.preheader_crit_edge:     ; preds = %for.inc247.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body253.preheader

if.then241.7:                                     ; preds = %for.inc247.6
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx243.7 = getelementptr %struct.txpwr_limits, ptr %txpwr, i32 0, i32 10, i32 7
  %134 = ptrtoint ptr %arrayidx243.7 to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %arrayidx243.7, align 1
  %136 = ptrtoint ptr %arrayidx139.7 to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 %135, ptr %arrayidx139.7, align 1
  br label %for.body253.preheader

for.body253.preheader:                            ; preds = %if.then241.7, %for.inc247.6.for.body253.preheader_crit_edge
  br label %for.body253

for.body253:                                      ; preds = %for.inc281.for.body253_crit_edge, %for.body253.preheader
  %i.10489 = phi i32 [ %inc282, %for.inc281.for.body253_crit_edge ], [ 0, %for.body253.preheader ]
  %j.1486 = phi i32 [ %inc283, %for.inc281.for.body253_crit_edge ], [ 0, %for.body253.preheader ]
  %arrayidx255 = getelementptr %struct.txpwr_limits, ptr %txpwr, i32 0, i32 3, i32 %i.10489
  %137 = ptrtoint ptr %arrayidx255 to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %arrayidx255, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %138)
  %cmp257 = icmp eq i8 %138, 0
  br i1 %cmp257, label %if.then259, label %for.body253.if.end264_crit_edge

for.body253.if.end264_crit_edge:                  ; preds = %for.body253
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end264

if.then259:                                       ; preds = %for.body253
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx261 = getelementptr %struct.txpwr_limits, ptr %txpwr, i32 0, i32 9, i32 %j.1486
  %139 = ptrtoint ptr %arrayidx261 to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %arrayidx261, align 1
  %141 = ptrtoint ptr %arrayidx255 to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 %140, ptr %arrayidx255, align 1
  br label %if.end264

if.end264:                                        ; preds = %if.then259, %for.body253.if.end264_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.10489)
  %cmp265 = icmp eq i32 %i.10489, 0
  br i1 %cmp265, label %if.then267, label %if.end264.for.inc281_crit_edge

if.end264.for.inc281_crit_edge:                   ; preds = %if.end264
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc281

if.then267:                                       ; preds = %if.end264
  %142 = ptrtoint ptr %arrayidx67.1 to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %arrayidx67.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %143)
  %cmp272 = icmp eq i8 %143, 0
  br i1 %cmp272, label %if.then274, label %if.then267.for.inc281_crit_edge

if.then267.for.inc281_crit_edge:                  ; preds = %if.then267
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc281

if.then274:                                       ; preds = %if.then267
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx276 = getelementptr %struct.txpwr_limits, ptr %txpwr, i32 0, i32 9, i32 %j.1486
  %144 = ptrtoint ptr %arrayidx276 to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %arrayidx276, align 1
  %146 = ptrtoint ptr %arrayidx67.1 to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 %145, ptr %arrayidx67.1, align 1
  br label %for.inc281

for.inc281:                                       ; preds = %if.then274, %if.then267.for.inc281_crit_edge, %if.end264.for.inc281_crit_edge
  %i.11 = phi i32 [ 1, %if.then274 ], [ 1, %if.then267.for.inc281_crit_edge ], [ %i.10489, %if.end264.for.inc281_crit_edge ]
  %inc282 = add nuw nsw i32 %i.11, 1
  %inc283 = add i32 %j.1486, 1
  %cmp251 = icmp ult i32 %i.11, 7
  br i1 %cmp251, label %for.inc281.for.body253_crit_edge, label %for.body288.preheader

for.inc281.for.body253_crit_edge:                 ; preds = %for.inc281
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body253

for.body288.preheader:                            ; preds = %for.inc281
  %147 = ptrtoint ptr %uglygep503 to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %uglygep503, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %148)
  %cmp292 = icmp eq i8 %148, 0
  br i1 %cmp292, label %if.then294, label %for.body288.preheader.if.end299_crit_edge

for.body288.preheader.if.end299_crit_edge:        ; preds = %for.body288.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end299

if.then294:                                       ; preds = %for.body288.preheader
  call void @__sanitizer_cov_trace_pc() #9
  %149 = ptrtoint ptr %uglygep499 to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %uglygep499, align 1
  %151 = ptrtoint ptr %uglygep503 to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 %150, ptr %uglygep503, align 1
  br label %if.end299

if.end299:                                        ; preds = %if.then294, %for.body288.preheader.if.end299_crit_edge
  %152 = ptrtoint ptr %uglygep504 to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %uglygep504, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %153)
  %cmp303 = icmp eq i8 %153, 0
  br i1 %cmp303, label %if.then305, label %if.end299.for.inc311_crit_edge

if.end299.for.inc311_crit_edge:                   ; preds = %if.end299
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc311

if.then305:                                       ; preds = %if.end299
  call void @__sanitizer_cov_trace_pc() #9
  %154 = ptrtoint ptr %uglygep500 to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %uglygep500, align 1
  %156 = ptrtoint ptr %uglygep504 to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 %155, ptr %uglygep504, align 1
  br label %for.inc311

for.inc311:                                       ; preds = %if.then305, %if.end299.for.inc311_crit_edge
  %arrayidx290.1 = getelementptr %struct.txpwr_limits, ptr %txpwr, i32 0, i32 7, i32 1
  %157 = ptrtoint ptr %arrayidx290.1 to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %arrayidx290.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %158)
  %cmp292.1 = icmp eq i8 %158, 0
  br i1 %cmp292.1, label %if.then294.1, label %for.inc311.if.end299.1_crit_edge

for.inc311.if.end299.1_crit_edge:                 ; preds = %for.inc311
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end299.1

if.then294.1:                                     ; preds = %for.inc311
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx296.1 = getelementptr %struct.txpwr_limits, ptr %txpwr, i32 0, i32 6, i32 1
  %159 = ptrtoint ptr %arrayidx296.1 to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %arrayidx296.1, align 1
  %161 = ptrtoint ptr %arrayidx290.1 to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 %160, ptr %arrayidx290.1, align 1
  br label %if.end299.1

if.end299.1:                                      ; preds = %if.then294.1, %for.inc311.if.end299.1_crit_edge
  %arrayidx301.1 = getelementptr %struct.txpwr_limits, ptr %txpwr, i32 0, i32 11, i32 1
  %162 = ptrtoint ptr %arrayidx301.1 to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %arrayidx301.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %163)
  %cmp303.1 = icmp eq i8 %163, 0
  br i1 %cmp303.1, label %if.then305.1, label %if.end299.1.for.inc311.1_crit_edge

if.end299.1.for.inc311.1_crit_edge:               ; preds = %if.end299.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc311.1

if.then305.1:                                     ; preds = %if.end299.1
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx307.1 = getelementptr %struct.txpwr_limits, ptr %txpwr, i32 0, i32 10, i32 1
  %164 = ptrtoint ptr %arrayidx307.1 to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %arrayidx307.1, align 1
  %166 = ptrtoint ptr %arrayidx301.1 to i32
  call void @__asan_store1_noabort(i32 %166)
  store i8 %165, ptr %arrayidx301.1, align 1
  br label %for.inc311.1

for.inc311.1:                                     ; preds = %if.then305.1, %if.end299.1.for.inc311.1_crit_edge
  %arrayidx290.2 = getelementptr %struct.txpwr_limits, ptr %txpwr, i32 0, i32 7, i32 2
  %167 = ptrtoint ptr %arrayidx290.2 to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %arrayidx290.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %168)
  %cmp292.2 = icmp eq i8 %168, 0
  br i1 %cmp292.2, label %if.then294.2, label %for.inc311.1.if.end299.2_crit_edge

for.inc311.1.if.end299.2_crit_edge:               ; preds = %for.inc311.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end299.2

if.then294.2:                                     ; preds = %for.inc311.1
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx296.2 = getelementptr %struct.txpwr_limits, ptr %txpwr, i32 0, i32 6, i32 2
  %169 = ptrtoint ptr %arrayidx296.2 to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %arrayidx296.2, align 1
  %171 = ptrtoint ptr %arrayidx290.2 to i32
  call void @__asan_store1_noabort(i32 %171)
  store i8 %170, ptr %arrayidx290.2, align 1
  br label %if.end299.2

if.end299.2:                                      ; preds = %if.then294.2, %for.inc311.1.if.end299.2_crit_edge
  %arrayidx301.2 = getelementptr %struct.txpwr_limits, ptr %txpwr, i32 0, i32 11, i32 2
  %172 = ptrtoint ptr %arrayidx301.2 to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %arrayidx301.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %173)
  %cmp303.2 = icmp eq i8 %173, 0
  br i1 %cmp303.2, label %if.then305.2, label %if.end299.2.for.inc311.2_crit_edge

if.end299.2.for.inc311.2_crit_edge:               ; preds = %if.end299.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc311.2

if.then305.2:                                     ; preds = %if.end299.2
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx307.2 = getelementptr %struct.txpwr_limits, ptr %txpwr, i32 0, i32 10, i32 2
  %174 = ptrtoint ptr %arrayidx307.2 to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %arrayidx307.2, align 1
  %176 = ptrtoint ptr %arrayidx301.2 to i32
  call void @__asan_store1_noabort(i32 %176)
  store i8 %175, ptr %arrayidx301.2, align 1
  br label %for.inc311.2

for.inc311.2:                                     ; preds = %if.then305.2, %if.end299.2.for.inc311.2_crit_edge
  %arrayidx290.3 = getelementptr %struct.txpwr_limits, ptr %txpwr, i32 0, i32 7, i32 3
  %177 = ptrtoint ptr %arrayidx290.3 to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %arrayidx290.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %178)
  %cmp292.3 = icmp eq i8 %178, 0
  br i1 %cmp292.3, label %if.then294.3, label %for.inc311.2.if.end299.3_crit_edge

for.inc311.2.if.end299.3_crit_edge:               ; preds = %for.inc311.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end299.3

if.then294.3:                                     ; preds = %for.inc311.2
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx296.3 = getelementptr %struct.txpwr_limits, ptr %txpwr, i32 0, i32 6, i32 3
  %179 = ptrtoint ptr %arrayidx296.3 to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %arrayidx296.3, align 1
  %181 = ptrtoint ptr %arrayidx290.3 to i32
  call void @__asan_store1_noabort(i32 %181)
  store i8 %180, ptr %arrayidx290.3, align 1
  br label %if.end299.3

if.end299.3:                                      ; preds = %if.then294.3, %for.inc311.2.if.end299.3_crit_edge
  %arrayidx301.3 = getelementptr %struct.txpwr_limits, ptr %txpwr, i32 0, i32 11, i32 3
  %182 = ptrtoint ptr %arrayidx301.3 to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %arrayidx301.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %183)
  %cmp303.3 = icmp eq i8 %183, 0
  br i1 %cmp303.3, label %if.then305.3, label %if.end299.3.for.inc311.3_crit_edge

if.end299.3.for.inc311.3_crit_edge:               ; preds = %if.end299.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc311.3

if.then305.3:                                     ; preds = %if.end299.3
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx307.3 = getelementptr %struct.txpwr_limits, ptr %txpwr, i32 0, i32 10, i32 3
  %184 = ptrtoint ptr %arrayidx307.3 to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %arrayidx307.3, align 1
  %186 = ptrtoint ptr %arrayidx301.3 to i32
  call void @__asan_store1_noabort(i32 %186)
  store i8 %185, ptr %arrayidx301.3, align 1
  br label %for.inc311.3

for.inc311.3:                                     ; preds = %if.then305.3, %if.end299.3.for.inc311.3_crit_edge
  %arrayidx290.4 = getelementptr %struct.txpwr_limits, ptr %txpwr, i32 0, i32 7, i32 4
  %187 = ptrtoint ptr %arrayidx290.4 to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %arrayidx290.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %188)
  %cmp292.4 = icmp eq i8 %188, 0
  br i1 %cmp292.4, label %if.then294.4, label %for.inc311.3.if.end299.4_crit_edge

for.inc311.3.if.end299.4_crit_edge:               ; preds = %for.inc311.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end299.4

if.then294.4:                                     ; preds = %for.inc311.3
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx296.4 = getelementptr %struct.txpwr_limits, ptr %txpwr, i32 0, i32 6, i32 4
  %189 = ptrtoint ptr %arrayidx296.4 to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %arrayidx296.4, align 1
  %191 = ptrtoint ptr %arrayidx290.4 to i32
  call void @__asan_store1_noabort(i32 %191)
  store i8 %190, ptr %arrayidx290.4, align 1
  br label %if.end299.4

if.end299.4:                                      ; preds = %if.then294.4, %for.inc311.3.if.end299.4_crit_edge
  %arrayidx301.4 = getelementptr %struct.txpwr_limits, ptr %txpwr, i32 0, i32 11, i32 4
  %192 = ptrtoint ptr %arrayidx301.4 to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %arrayidx301.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %193)
  %cmp303.4 = icmp eq i8 %193, 0
  br i1 %cmp303.4, label %if.then305.4, label %if.end299.4.for.inc311.4_crit_edge

if.end299.4.for.inc311.4_crit_edge:               ; preds = %if.end299.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc311.4

if.then305.4:                                     ; preds = %if.end299.4
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx307.4 = getelementptr %struct.txpwr_limits, ptr %txpwr, i32 0, i32 10, i32 4
  %194 = ptrtoint ptr %arrayidx307.4 to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %arrayidx307.4, align 1
  %196 = ptrtoint ptr %arrayidx301.4 to i32
  call void @__asan_store1_noabort(i32 %196)
  store i8 %195, ptr %arrayidx301.4, align 1
  br label %for.inc311.4

for.inc311.4:                                     ; preds = %if.then305.4, %if.end299.4.for.inc311.4_crit_edge
  %arrayidx290.5 = getelementptr %struct.txpwr_limits, ptr %txpwr, i32 0, i32 7, i32 5
  %197 = ptrtoint ptr %arrayidx290.5 to i32
  call void @__asan_load1_noabort(i32 %197)
  %198 = load i8, ptr %arrayidx290.5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %198)
  %cmp292.5 = icmp eq i8 %198, 0
  br i1 %cmp292.5, label %if.then294.5, label %for.inc311.4.if.end299.5_crit_edge

for.inc311.4.if.end299.5_crit_edge:               ; preds = %for.inc311.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end299.5

if.then294.5:                                     ; preds = %for.inc311.4
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx296.5 = getelementptr %struct.txpwr_limits, ptr %txpwr, i32 0, i32 6, i32 5
  %199 = ptrtoint ptr %arrayidx296.5 to i32
  call void @__asan_load1_noabort(i32 %199)
  %200 = load i8, ptr %arrayidx296.5, align 1
  %201 = ptrtoint ptr %arrayidx290.5 to i32
  call void @__asan_store1_noabort(i32 %201)
  store i8 %200, ptr %arrayidx290.5, align 1
  br label %if.end299.5

if.end299.5:                                      ; preds = %if.then294.5, %for.inc311.4.if.end299.5_crit_edge
  %arrayidx301.5 = getelementptr %struct.txpwr_limits, ptr %txpwr, i32 0, i32 11, i32 5
  %202 = ptrtoint ptr %arrayidx301.5 to i32
  call void @__asan_load1_noabort(i32 %202)
  %203 = load i8, ptr %arrayidx301.5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %203)
  %cmp303.5 = icmp eq i8 %203, 0
  br i1 %cmp303.5, label %if.then305.5, label %if.end299.5.for.inc311.5_crit_edge

if.end299.5.for.inc311.5_crit_edge:               ; preds = %if.end299.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc311.5

if.then305.5:                                     ; preds = %if.end299.5
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx307.5 = getelementptr %struct.txpwr_limits, ptr %txpwr, i32 0, i32 10, i32 5
  %204 = ptrtoint ptr %arrayidx307.5 to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %arrayidx307.5, align 1
  %206 = ptrtoint ptr %arrayidx301.5 to i32
  call void @__asan_store1_noabort(i32 %206)
  store i8 %205, ptr %arrayidx301.5, align 1
  br label %for.inc311.5

for.inc311.5:                                     ; preds = %if.then305.5, %if.end299.5.for.inc311.5_crit_edge
  %arrayidx290.6 = getelementptr %struct.txpwr_limits, ptr %txpwr, i32 0, i32 7, i32 6
  %207 = ptrtoint ptr %arrayidx290.6 to i32
  call void @__asan_load1_noabort(i32 %207)
  %208 = load i8, ptr %arrayidx290.6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %208)
  %cmp292.6 = icmp eq i8 %208, 0
  br i1 %cmp292.6, label %if.then294.6, label %for.inc311.5.if.end299.6_crit_edge

for.inc311.5.if.end299.6_crit_edge:               ; preds = %for.inc311.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end299.6

if.then294.6:                                     ; preds = %for.inc311.5
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx296.6 = getelementptr %struct.txpwr_limits, ptr %txpwr, i32 0, i32 6, i32 6
  %209 = ptrtoint ptr %arrayidx296.6 to i32
  call void @__asan_load1_noabort(i32 %209)
  %210 = load i8, ptr %arrayidx296.6, align 1
  %211 = ptrtoint ptr %arrayidx290.6 to i32
  call void @__asan_store1_noabort(i32 %211)
  store i8 %210, ptr %arrayidx290.6, align 1
  br label %if.end299.6

if.end299.6:                                      ; preds = %if.then294.6, %for.inc311.5.if.end299.6_crit_edge
  %arrayidx301.6 = getelementptr %struct.txpwr_limits, ptr %txpwr, i32 0, i32 11, i32 6
  %212 = ptrtoint ptr %arrayidx301.6 to i32
  call void @__asan_load1_noabort(i32 %212)
  %213 = load i8, ptr %arrayidx301.6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %213)
  %cmp303.6 = icmp eq i8 %213, 0
  br i1 %cmp303.6, label %if.then305.6, label %if.end299.6.for.inc311.6_crit_edge

if.end299.6.for.inc311.6_crit_edge:               ; preds = %if.end299.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc311.6

if.then305.6:                                     ; preds = %if.end299.6
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx307.6 = getelementptr %struct.txpwr_limits, ptr %txpwr, i32 0, i32 10, i32 6
  %214 = ptrtoint ptr %arrayidx307.6 to i32
  call void @__asan_load1_noabort(i32 %214)
  %215 = load i8, ptr %arrayidx307.6, align 1
  %216 = ptrtoint ptr %arrayidx301.6 to i32
  call void @__asan_store1_noabort(i32 %216)
  store i8 %215, ptr %arrayidx301.6, align 1
  br label %for.inc311.6

for.inc311.6:                                     ; preds = %if.then305.6, %if.end299.6.for.inc311.6_crit_edge
  %arrayidx290.7 = getelementptr %struct.txpwr_limits, ptr %txpwr, i32 0, i32 7, i32 7
  %217 = ptrtoint ptr %arrayidx290.7 to i32
  call void @__asan_load1_noabort(i32 %217)
  %218 = load i8, ptr %arrayidx290.7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %218)
  %cmp292.7 = icmp eq i8 %218, 0
  br i1 %cmp292.7, label %if.then294.7, label %for.inc311.6.if.end299.7_crit_edge

for.inc311.6.if.end299.7_crit_edge:               ; preds = %for.inc311.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end299.7

if.then294.7:                                     ; preds = %for.inc311.6
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx296.7 = getelementptr %struct.txpwr_limits, ptr %txpwr, i32 0, i32 6, i32 7
  %219 = ptrtoint ptr %arrayidx296.7 to i32
  call void @__asan_load1_noabort(i32 %219)
  %220 = load i8, ptr %arrayidx296.7, align 1
  %221 = ptrtoint ptr %arrayidx290.7 to i32
  call void @__asan_store1_noabort(i32 %221)
  store i8 %220, ptr %arrayidx290.7, align 1
  br label %if.end299.7

if.end299.7:                                      ; preds = %if.then294.7, %for.inc311.6.if.end299.7_crit_edge
  %arrayidx301.7 = getelementptr %struct.txpwr_limits, ptr %txpwr, i32 0, i32 11, i32 7
  %222 = ptrtoint ptr %arrayidx301.7 to i32
  call void @__asan_load1_noabort(i32 %222)
  %223 = load i8, ptr %arrayidx301.7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %223)
  %cmp303.7 = icmp eq i8 %223, 0
  br i1 %cmp303.7, label %if.then305.7, label %if.end299.7.cleanup_crit_edge

if.end299.7.cleanup_crit_edge:                    ; preds = %if.end299.7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then305.7:                                     ; preds = %if.end299.7
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx307.7 = getelementptr %struct.txpwr_limits, ptr %txpwr, i32 0, i32 10, i32 7
  %224 = ptrtoint ptr %arrayidx307.7 to i32
  call void @__asan_load1_noabort(i32 %224)
  %225 = load i8, ptr %arrayidx307.7, align 1
  %226 = ptrtoint ptr %arrayidx301.7 to i32
  call void @__asan_store1_noabort(i32 %226)
  store i8 %225, ptr %arrayidx301.7, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then305.7, %if.end299.7.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcms_c_set_gmode(ptr noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcms_b_set_chanspec(ptr noundef, i16 noundef zeroext, i1 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @brcms_c_valid_chanspec_db(ptr nocapture noundef readonly %wlc_cm, i16 noundef zeroext %chspec) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %wlc1.i = getelementptr inbounds %struct.brcms_cm_info, ptr %wlc_cm, i32 0, i32 1
  %0 = ptrtoint ptr %wlc1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wlc1.i, align 4
  %conv.i.i = zext i16 %chspec to i32
  %and.i.i = and i16 %chspec, -4096
  %2 = zext i16 %and.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i16 %and.i.i, label %entry.if.then.i_crit_edge [
    i16 4096, label %entry.if.end.i.i_crit_edge
    i16 8192, label %entry.if.end.i.i_crit_edge1
  ]

entry.if.end.i.i_crit_edge1:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.end.i.i:                                       ; preds = %entry.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge1
  %and7.i.i = and i32 %conv.i.i, 3072
  %3 = zext i32 %and7.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %and7.i.i, label %if.end.i.i.if.then.i_crit_edge [
    i32 2048, label %brcms_c_chspec_malformed.exit.i
    i32 3072, label %if.else.i.i
  ]

if.end.i.i.if.then.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.else.i.i:                                      ; preds = %if.end.i.i
  %and29.i.i = and i32 %conv.i.i, 768
  %4 = add nsw i32 %and29.i.i, -768
  call void @__sanitizer_cov_trace_const_cmp4(i32 -512, i32 %4)
  %switch.selectcmp.i.i = icmp ult i32 %4, -512
  br i1 %switch.selectcmp.i.i, label %if.else.i.i.if.then.i_crit_edge, label %if.else.i.i.if.end.i_crit_edge

if.else.i.i.if.end.i_crit_edge:                   ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.else.i.i.if.then.i_crit_edge:                  ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

brcms_c_chspec_malformed.exit.i:                  ; preds = %if.end.i.i
  %and23.i.i = and i32 %conv.i.i, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %and23.i.i)
  %cmp24.i.not.i = icmp eq i32 %and23.i.i, 768
  br i1 %cmp24.i.not.i, label %brcms_c_chspec_malformed.exit.i.if.end.i_crit_edge, label %brcms_c_chspec_malformed.exit.i.if.then.i_crit_edge

brcms_c_chspec_malformed.exit.i.if.then.i_crit_edge: ; preds = %brcms_c_chspec_malformed.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

brcms_c_chspec_malformed.exit.i.if.end.i_crit_edge: ; preds = %brcms_c_chspec_malformed.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %brcms_c_chspec_malformed.exit.i.if.then.i_crit_edge, %if.else.i.i.if.then.i_crit_edge, %if.end.i.i.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  %hw.i = getelementptr inbounds %struct.brcms_c_info, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw.i, align 4
  %d11core.i = getelementptr inbounds %struct.brcms_hardware, ptr %6, i32 0, i32 14
  %7 = ptrtoint ptr %d11core.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %d11core.i, align 4
  %dev.i = getelementptr inbounds %struct.bcma_device, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %unit.i = getelementptr inbounds %struct.brcms_pub, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %unit.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %unit.i, align 4
  tail call void (ptr, ptr, ...) @__brcms_err(ptr noundef %dev.i, ptr noundef nonnull @.str.6, i32 noundef %12, i32 noundef %conv.i.i) #7
  br label %brcms_c_valid_chanspec_ext.exit

if.end.i:                                         ; preds = %brcms_c_chspec_malformed.exit.i.if.end.i_crit_edge, %if.else.i.i.if.end.i_crit_edge
  %13 = and i16 %chspec, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 14, i16 %13)
  %cmp.i = icmp ugt i16 %13, 14
  call void @__sanitizer_cov_trace_const_cmp2(i16 4096, i16 %and.i.i)
  %cmp.i.i = icmp ne i16 %and.i.i, 4096
  %cmp7.not.i = xor i1 %cmp.i.i, %cmp.i
  br label %brcms_c_valid_chanspec_ext.exit

brcms_c_valid_chanspec_ext.exit:                  ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i1 [ false, %if.then.i ], [ %cmp7.not.i, %if.end.i ]
  ret i1 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @brcms_c_regd_init(ptr nocapture noundef readonly %wlc) local_unnamed_addr #0 align 64 {
entry:
  %sup_chan = alloca %struct.brcms_chanvec, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %wiphy1 = getelementptr inbounds %struct.brcms_c_info, ptr %wlc, i32 0, i32 65
  %0 = ptrtoint ptr %wiphy1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wiphy1, align 4
  %cmi = getelementptr inbounds %struct.brcms_c_info, ptr %wlc, i32 0, i32 15
  %2 = ptrtoint ptr %cmi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cmi, align 4
  %world_regd = getelementptr inbounds %struct.brcms_cm_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %world_regd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %world_regd, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %sup_chan) #7
  %6 = call ptr @memset(ptr %sup_chan, i32 255, i32 28)
  %7 = ptrtoint ptr %wlc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %wlc, align 4
  %_nbands44 = getelementptr inbounds %struct.brcms_pub, ptr %8, i32 0, i32 11
  %9 = ptrtoint ptr %_nbands44 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %_nbands44, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp45.not = icmp eq i32 %10, 0
  br i1 %cmp45.not, label %entry.for.end18_crit_edge, label %for.body.lr.ph

entry.for.end18_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end18

for.body.lr.ph:                                   ; preds = %entry
  %bands = getelementptr inbounds %struct.wiphy, ptr %1, i32 0, i32 53
  %arrayidx5 = getelementptr %struct.wiphy, ptr %1, i32 0, i32 53, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc16.for.body_crit_edge, %for.body.lr.ph
  %band_idx.046 = phi i32 [ 0, %for.body.lr.ph ], [ %inc17, %for.inc16.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.brcms_c_info, ptr %wlc, i32 0, i32 11, i32 %band_idx.046
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  %pi = getelementptr inbounds %struct.brcms_band, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pi, align 4
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %12, align 4
  call void @wlc_phy_chanspec_band_validch(ptr noundef %14, i32 noundef %16, ptr noundef nonnull %sup_chan) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %band_idx.046)
  %cmp2 = icmp eq i32 %band_idx.046, 0
  %sband.0.in = select i1 %cmp2, ptr %bands, ptr %arrayidx5
  %17 = ptrtoint ptr %sband.0.in to i32
  call void @__asan_load4_noabort(i32 %17)
  %sband.0 = load ptr, ptr %sband.0.in, align 4
  %n_channels = getelementptr inbounds %struct.ieee80211_supported_band, ptr %sband.0, i32 0, i32 3
  %18 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %n_channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp741 = icmp sgt i32 %19, 0
  br i1 %cmp741, label %for.body.for.body8_crit_edge, label %for.body.for.inc16_crit_edge

for.body.for.inc16_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc16

for.body.for.body8_crit_edge:                     ; preds = %for.body
  br label %for.body8

for.body8:                                        ; preds = %for.inc.for.body8_crit_edge, %for.body.for.body8_crit_edge
  %i.042 = phi i32 [ %inc, %for.inc.for.body8_crit_edge ], [ 0, %for.body.for.body8_crit_edge ]
  %20 = ptrtoint ptr %sband.0 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sband.0, align 4
  %hw_value = getelementptr %struct.ieee80211_channel, ptr %21, i32 %i.042, i32 3
  %22 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %hw_value, align 2
  %conv = zext i16 %23 to i32
  %div40 = lshr i32 %conv, 3
  %arrayidx10 = getelementptr i8, ptr %sup_chan, i32 %div40
  %24 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx10, align 1
  %conv11 = zext i8 %25 to i32
  %rem = and i32 %conv, 7
  %shl = shl nuw nsw i32 1, %rem
  %and = and i32 %shl, %conv11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then14, label %for.body8.for.inc_crit_edge

for.body8.for.inc_crit_edge:                      ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then14:                                        ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #9
  %flags = getelementptr %struct.ieee80211_channel, ptr %21, i32 %i.042, i32 4
  %26 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flags, align 4
  %or = or i32 %27, 1
  store i32 %or, ptr %flags, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then14, %for.body8.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.042, 1
  %28 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %n_channels, align 4
  %cmp7 = icmp slt i32 %inc, %29
  br i1 %cmp7, label %for.inc.for.body8_crit_edge, label %for.inc.for.inc16_crit_edge

for.inc.for.inc16_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc16

for.inc.for.body8_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body8

for.inc16:                                        ; preds = %for.inc.for.inc16_crit_edge, %for.body.for.inc16_crit_edge
  %inc17 = add nuw i32 %band_idx.046, 1
  %30 = ptrtoint ptr %wlc to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %wlc, align 4
  %_nbands = getelementptr inbounds %struct.brcms_pub, ptr %31, i32 0, i32 11
  %32 = ptrtoint ptr %_nbands to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %_nbands, align 4
  %cmp = icmp ult i32 %inc17, %33
  br i1 %cmp, label %for.inc16.for.body_crit_edge, label %for.inc16.for.end18_crit_edge

for.inc16.for.end18_crit_edge:                    ; preds = %for.inc16
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end18

for.inc16.for.body_crit_edge:                     ; preds = %for.inc16
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end18:                                        ; preds = %for.inc16.for.end18_crit_edge, %entry.for.end18_crit_edge
  %34 = ptrtoint ptr %wiphy1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %wiphy1, align 4
  %reg_notifier = getelementptr inbounds %struct.wiphy, ptr %35, i32 0, i32 54
  %36 = ptrtoint ptr %reg_notifier to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @brcms_reg_notifier, ptr %reg_notifier, align 8
  %37 = load ptr, ptr %wiphy1, align 4
  %regulatory_flags = getelementptr inbounds %struct.wiphy, ptr %37, i32 0, i32 12
  %38 = ptrtoint ptr %regulatory_flags to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %regulatory_flags, align 4
  %or21 = or i32 %39, 3
  store i32 %or21, ptr %regulatory_flags, align 4
  %40 = load ptr, ptr %wiphy1, align 4
  %regdomain = getelementptr inbounds %struct.brcms_regd, ptr %5, i32 0, i32 1
  %41 = ptrtoint ptr %regdomain to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regdomain, align 4
  call void @wiphy_apply_custom_regulatory(ptr noundef %40, ptr noundef %42) #7
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc26.i.for.body.i_crit_edge, %for.end18
  %band.044.i = phi i32 [ 0, %for.end18 ], [ %inc27.i, %for.inc26.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.wiphy, ptr %1, i32 0, i32 53, i32 %band.044.i
  %43 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %44, null
  br i1 %tobool.not.i, label %for.body.i.for.inc26.i_crit_edge, label %for.cond1.preheader.i

for.body.i.for.inc26.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc26.i

for.cond1.preheader.i:                            ; preds = %for.body.i
  %n_channels.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %44, i32 0, i32 3
  %45 = ptrtoint ptr %n_channels.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %n_channels.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp241.i = icmp sgt i32 %46, 0
  br i1 %cmp241.i, label %for.cond1.preheader.i.for.body3.i_crit_edge, label %for.cond1.preheader.i.for.inc26.i_crit_edge

for.cond1.preheader.i.for.inc26.i_crit_edge:      ; preds = %for.cond1.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc26.i

for.cond1.preheader.i.for.body3.i_crit_edge:      ; preds = %for.cond1.preheader.i
  br label %for.body3.i

for.body3.i:                                      ; preds = %for.inc.i.for.body3.i_crit_edge, %for.cond1.preheader.i.for.body3.i_crit_edge
  %i.042.i = phi i32 [ %inc.i, %for.inc.i.for.body3.i_crit_edge ], [ 0, %for.cond1.preheader.i.for.body3.i_crit_edge ]
  %47 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %44, align 4
  %flags.i = getelementptr %struct.ieee80211_channel, ptr %48, i32 %i.042.i, i32 4
  %49 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %50, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool5.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool5.not.i, label %if.end7.i, label %for.body3.i.for.inc.i_crit_edge

for.body3.i.for.inc.i_crit_edge:                  ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end7.i:                                        ; preds = %for.body3.i
  %beacon_found.i = getelementptr %struct.ieee80211_channel, ptr %48, i32 %i.042.i, i32 8
  %51 = ptrtoint ptr %beacon_found.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %beacon_found.i, align 4, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool20.not.i = icmp eq i8 %52, 0
  br i1 %tobool20.not.i, label %if.end7.i.for.inc.i_crit_edge, label %for.inc.sink.split.i

if.end7.i.for.inc.i_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

for.inc.sink.split.i:                             ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  %and18.i = and i32 %50, -3
  %53 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %and18.i, ptr %flags.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %for.inc.sink.split.i, %if.end7.i.for.inc.i_crit_edge, %for.body3.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.042.i, 1
  %54 = ptrtoint ptr %n_channels.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %n_channels.i, align 4
  %cmp2.i = icmp slt i32 %inc.i, %55
  br i1 %cmp2.i, label %for.inc.i.for.body3.i_crit_edge, label %for.inc.i.for.inc26.i_crit_edge

for.inc.i.for.inc26.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc26.i

for.inc.i.for.body3.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body3.i

for.inc26.i:                                      ; preds = %for.inc.i.for.inc26.i_crit_edge, %for.cond1.preheader.i.for.inc26.i_crit_edge, %for.body.i.for.inc26.i_crit_edge
  %inc27.i = add nuw nsw i32 %band.044.i, 1
  %exitcond.not.i = icmp eq i32 %inc27.i, 6
  br i1 %exitcond.not.i, label %brcms_reg_apply_beaconing_flags.exit, label %for.inc26.i.for.body.i_crit_edge

for.inc26.i.for.body.i_crit_edge:                 ; preds = %for.inc26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

brcms_reg_apply_beaconing_flags.exit:             ; preds = %for.inc26.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %sup_chan) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wlc_phy_chanspec_band_validch(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @brcms_reg_notifier(ptr noundef %wiphy, ptr noundef %request) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @wiphy_to_ieee80211_hw(ptr noundef %wiphy) #7
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %wlc1 = getelementptr inbounds %struct.brcms_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %wlc1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wlc1, align 4
  %arrayidx.i = getelementptr %struct.wiphy, ptr %wiphy, i32 0, i32 53, i32 1
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.brcms_reg_apply_radar_flags.exit_crit_edge, label %for.cond.preheader.i

entry.brcms_reg_apply_radar_flags.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %brcms_reg_apply_radar_flags.exit

for.cond.preheader.i:                             ; preds = %entry
  %n_channels.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %n_channels.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %n_channels.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp16.i = icmp sgt i32 %7, 0
  br i1 %cmp16.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.brcms_reg_apply_radar_flags.exit_crit_edge

for.cond.preheader.i.brcms_reg_apply_radar_flags.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %brcms_reg_apply_radar_flags.exit

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.017.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  %center_freq.i = getelementptr %struct.ieee80211_channel, ptr %9, i32 %i.017.i, i32 1
  %10 = ptrtoint ptr %center_freq.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %center_freq.i, align 4
  %conv.i = trunc i32 %11 to i16
  %12 = add i16 %conv.i, -5260
  call void @__sanitizer_cov_trace_const_cmp2(i16 441, i16 %12)
  %13 = icmp ult i16 %12, 441
  br i1 %13, label %if.end3.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end3.i:                                        ; preds = %for.body.i
  %flags.i = getelementptr %struct.ieee80211_channel, ptr %9, i32 %i.017.i, i32 4
  %14 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool4.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool4.not.i, label %if.then5.i, label %if.end3.i.for.inc.i_crit_edge

if.end3.i.for.inc.i_crit_edge:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then5.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  %or.i = or i32 %15, 10
  %16 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %or.i, ptr %flags.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then5.i, %if.end3.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.017.i, 1
  %17 = ptrtoint ptr %n_channels.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %n_channels.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %18
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.brcms_reg_apply_radar_flags.exit_crit_edge

for.inc.i.brcms_reg_apply_radar_flags.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %brcms_reg_apply_radar_flags.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

brcms_reg_apply_radar_flags.exit:                 ; preds = %for.inc.i.brcms_reg_apply_radar_flags.exit_crit_edge, %for.cond.preheader.i.brcms_reg_apply_radar_flags.exit_crit_edge, %entry.brcms_reg_apply_radar_flags.exit_crit_edge
  %initiator = getelementptr inbounds %struct.regulatory_request, ptr %request, i32 0, i32 2
  %19 = ptrtoint ptr %initiator to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %initiator, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %20)
  %cmp = icmp eq i32 %20, 3
  br i1 %cmp, label %brcms_reg_apply_radar_flags.exit.for.body.i67_crit_edge, label %brcms_reg_apply_radar_flags.exit.for.body_crit_edge

brcms_reg_apply_radar_flags.exit.for.body_crit_edge: ; preds = %brcms_reg_apply_radar_flags.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

brcms_reg_apply_radar_flags.exit.for.body.i67_crit_edge: ; preds = %brcms_reg_apply_radar_flags.exit
  br label %for.body.i67

for.body.i67:                                     ; preds = %for.inc26.i.for.body.i67_crit_edge, %brcms_reg_apply_radar_flags.exit.for.body.i67_crit_edge
  %band.044.i = phi i32 [ %inc27.i, %for.inc26.i.for.body.i67_crit_edge ], [ 0, %brcms_reg_apply_radar_flags.exit.for.body.i67_crit_edge ]
  %arrayidx.i65 = getelementptr %struct.wiphy, ptr %wiphy, i32 0, i32 53, i32 %band.044.i
  %21 = ptrtoint ptr %arrayidx.i65 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.i65, align 4
  %tobool.not.i66 = icmp eq ptr %22, null
  br i1 %tobool.not.i66, label %for.body.i67.for.inc26.i_crit_edge, label %for.cond1.preheader.i

for.body.i67.for.inc26.i_crit_edge:               ; preds = %for.body.i67
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc26.i

for.cond1.preheader.i:                            ; preds = %for.body.i67
  %n_channels.i68 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %n_channels.i68 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %n_channels.i68, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp241.i = icmp sgt i32 %24, 0
  br i1 %cmp241.i, label %for.cond1.preheader.i.for.body3.i_crit_edge, label %for.cond1.preheader.i.for.inc26.i_crit_edge

for.cond1.preheader.i.for.inc26.i_crit_edge:      ; preds = %for.cond1.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc26.i

for.cond1.preheader.i.for.body3.i_crit_edge:      ; preds = %for.cond1.preheader.i
  br label %for.body3.i

for.body3.i:                                      ; preds = %for.inc.i73.for.body3.i_crit_edge, %for.cond1.preheader.i.for.body3.i_crit_edge
  %i.042.i = phi i32 [ %inc.i72, %for.inc.i73.for.body3.i_crit_edge ], [ 0, %for.cond1.preheader.i.for.body3.i_crit_edge ]
  %25 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %22, align 4
  %flags.i69 = getelementptr %struct.ieee80211_channel, ptr %26, i32 %i.042.i, i32 4
  %27 = ptrtoint ptr %flags.i69 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flags.i69, align 4
  %and.i70 = and i32 %28, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i70)
  %tobool5.not.i = icmp eq i32 %and.i70, 0
  br i1 %tobool5.not.i, label %if.end7.i, label %for.body3.i.for.inc.i73_crit_edge

for.body3.i.for.inc.i73_crit_edge:                ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i73

if.end7.i:                                        ; preds = %for.body3.i
  %center_freq.i71 = getelementptr %struct.ieee80211_channel, ptr %26, i32 %i.042.i, i32 1
  %29 = ptrtoint ptr %center_freq.i71 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %center_freq.i71, align 4
  %mul.i = mul i32 %30, 1000
  %call.i = tail call ptr @freq_reg_info(ptr noundef %wiphy, i32 noundef %mul.i) #7
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end7.i.for.inc.i73_crit_edge, label %if.end12.i

if.end7.i.for.inc.i73_crit_edge:                  ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i73

if.end12.i:                                       ; preds = %if.end7.i
  %flags13.i = getelementptr inbounds %struct.ieee80211_reg_rule, ptr %call.i, i32 0, i32 3
  %31 = ptrtoint ptr %flags13.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %flags13.i, align 4
  %and14.i = and i32 %32, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  br i1 %tobool15.not.i, label %if.then16.i, label %if.end12.i.for.inc.i73_crit_edge

if.end12.i.for.inc.i73_crit_edge:                 ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i73

if.then16.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %flags.i69 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %flags.i69, align 4
  %and18.i = and i32 %34, -3
  store i32 %and18.i, ptr %flags.i69, align 4
  br label %for.inc.i73

for.inc.i73:                                      ; preds = %if.then16.i, %if.end12.i.for.inc.i73_crit_edge, %if.end7.i.for.inc.i73_crit_edge, %for.body3.i.for.inc.i73_crit_edge
  %inc.i72 = add nuw nsw i32 %i.042.i, 1
  %35 = ptrtoint ptr %n_channels.i68 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %n_channels.i68, align 4
  %cmp2.i = icmp slt i32 %inc.i72, %36
  br i1 %cmp2.i, label %for.inc.i73.for.body3.i_crit_edge, label %for.inc.i73.for.inc26.i_crit_edge

for.inc.i73.for.inc26.i_crit_edge:                ; preds = %for.inc.i73
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc26.i

for.inc.i73.for.body3.i_crit_edge:                ; preds = %for.inc.i73
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body3.i

for.inc26.i:                                      ; preds = %for.inc.i73.for.inc26.i_crit_edge, %for.cond1.preheader.i.for.inc26.i_crit_edge, %for.body.i67.for.inc26.i_crit_edge
  %inc27.i = add nuw nsw i32 %band.044.i, 1
  %exitcond.not.i = icmp eq i32 %inc27.i, 6
  br i1 %exitcond.not.i, label %for.inc26.i.for.body_crit_edge, label %for.inc26.i.for.body.i67_crit_edge

for.inc26.i.for.body.i67_crit_edge:               ; preds = %for.inc26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i67

for.inc26.i.for.body_crit_edge:                   ; preds = %for.inc26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body:                                         ; preds = %for.inc26.i.for.body_crit_edge, %brcms_reg_apply_radar_flags.exit.for.body_crit_edge
  %arrayidx = getelementptr %struct.wiphy, ptr %wiphy, i32 0, i32 53, i32 0
  %37 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx, align 4
  %tobool4.not = icmp eq ptr %38, null
  br i1 %tobool4.not, label %for.body.for.inc17_crit_edge, label %land.rhs9.lr.ph

for.body.for.inc17_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc17

land.rhs9.lr.ph:                                  ; preds = %for.body
  %n_channels = getelementptr inbounds %struct.ieee80211_supported_band, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %n_channels, align 4
  %smax = call i32 @llvm.smax.i32(i32 %40, i32 0)
  br label %land.rhs9

land.rhs9:                                        ; preds = %for.body12.land.rhs9_crit_edge, %land.rhs9.lr.ph
  %i.075 = phi i32 [ 0, %land.rhs9.lr.ph ], [ %inc, %for.body12.land.rhs9_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.075, i32 %smax)
  %exitcond.not = icmp eq i32 %i.075, %smax
  br i1 %exitcond.not, label %land.rhs9.for.inc17.loopexit_crit_edge, label %for.body12

land.rhs9.for.inc17.loopexit_crit_edge:           ; preds = %land.rhs9
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc17.loopexit

for.body12:                                       ; preds = %land.rhs9
  %41 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %38, align 4
  %flags = getelementptr %struct.ieee80211_channel, ptr %42, i32 %i.075, i32 4
  %43 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %flags, align 4
  %and = and i32 %44, 1
  %tobool14.not = icmp eq i32 %and, 0
  %inc = add nuw i32 %i.075, 1
  br i1 %tobool14.not, label %for.body12.for.inc17.loopexit_crit_edge, label %for.body12.land.rhs9_crit_edge

for.body12.land.rhs9_crit_edge:                   ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs9

for.body12.for.inc17.loopexit_crit_edge:          ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc17.loopexit

for.inc17.loopexit:                               ; preds = %for.body12.for.inc17.loopexit_crit_edge, %land.rhs9.for.inc17.loopexit_crit_edge
  %45 = xor i1 %exitcond.not, true
  br label %for.inc17

for.inc17:                                        ; preds = %for.inc17.loopexit, %for.body.for.inc17_crit_edge
  %ch_found.3.off0 = phi i1 [ false, %for.body.for.inc17_crit_edge ], [ %45, %for.inc17.loopexit ]
  br i1 %ch_found.3.off0, label %for.inc17.for.end19_crit_edge, label %for.body.1

for.inc17.for.end19_crit_edge:                    ; preds = %for.inc17
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end19

for.body.1:                                       ; preds = %for.inc17
  %arrayidx.1 = getelementptr %struct.wiphy, ptr %wiphy, i32 0, i32 53, i32 1
  %46 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx.1, align 4
  %tobool4.not.1 = icmp eq ptr %47, null
  br i1 %tobool4.not.1, label %for.body.1.for.inc17.1_crit_edge, label %land.rhs9.lr.ph.1.critedge

for.body.1.for.inc17.1_crit_edge:                 ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc17.1

land.rhs9.lr.ph.1.critedge:                       ; preds = %for.body.1
  %n_channels.1 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %47, i32 0, i32 3
  %48 = ptrtoint ptr %n_channels.1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %n_channels.1, align 4
  %smax.1 = call i32 @llvm.smax.i32(i32 %49, i32 0)
  br label %land.rhs9.1

land.rhs9.1:                                      ; preds = %for.body12.1.land.rhs9.1_crit_edge, %land.rhs9.lr.ph.1.critedge
  %i.075.1 = phi i32 [ 0, %land.rhs9.lr.ph.1.critedge ], [ %inc.1, %for.body12.1.land.rhs9.1_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.075.1, i32 %smax.1)
  %exitcond.not.1 = icmp eq i32 %i.075.1, %smax.1
  br i1 %exitcond.not.1, label %land.rhs9.1.for.inc17.loopexit.1_crit_edge, label %for.body12.1

land.rhs9.1.for.inc17.loopexit.1_crit_edge:       ; preds = %land.rhs9.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc17.loopexit.1

for.body12.1:                                     ; preds = %land.rhs9.1
  %50 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %47, align 4
  %flags.1 = getelementptr %struct.ieee80211_channel, ptr %51, i32 %i.075.1, i32 4
  %52 = ptrtoint ptr %flags.1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %flags.1, align 4
  %and.1 = and i32 %53, 1
  %tobool14.not.1 = icmp eq i32 %and.1, 0
  %inc.1 = add nuw i32 %i.075.1, 1
  br i1 %tobool14.not.1, label %for.body12.1.for.inc17.loopexit.1_crit_edge, label %for.body12.1.land.rhs9.1_crit_edge

for.body12.1.land.rhs9.1_crit_edge:               ; preds = %for.body12.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs9.1

for.body12.1.for.inc17.loopexit.1_crit_edge:      ; preds = %for.body12.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc17.loopexit.1

for.inc17.loopexit.1:                             ; preds = %for.body12.1.for.inc17.loopexit.1_crit_edge, %land.rhs9.1.for.inc17.loopexit.1_crit_edge
  %54 = xor i1 %exitcond.not.1, true
  br label %for.inc17.1

for.inc17.1:                                      ; preds = %for.inc17.loopexit.1, %for.body.1.for.inc17.1_crit_edge
  %ch_found.3.off0.1 = phi i1 [ %ch_found.3.off0, %for.body.1.for.inc17.1_crit_edge ], [ %54, %for.inc17.loopexit.1 ]
  br i1 %ch_found.3.off0.1, label %for.inc17.1.for.end19_crit_edge, label %for.body.2

for.inc17.1.for.end19_crit_edge:                  ; preds = %for.inc17.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end19

for.body.2:                                       ; preds = %for.inc17.1
  %arrayidx.2 = getelementptr %struct.wiphy, ptr %wiphy, i32 0, i32 53, i32 2
  %55 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx.2, align 4
  %tobool4.not.2 = icmp eq ptr %56, null
  br i1 %tobool4.not.2, label %for.body.2.for.inc17.2_crit_edge, label %land.rhs9.lr.ph.2.critedge

for.body.2.for.inc17.2_crit_edge:                 ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc17.2

land.rhs9.lr.ph.2.critedge:                       ; preds = %for.body.2
  %n_channels.2 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %56, i32 0, i32 3
  %57 = ptrtoint ptr %n_channels.2 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %n_channels.2, align 4
  %smax.2 = call i32 @llvm.smax.i32(i32 %58, i32 0)
  br label %land.rhs9.2

land.rhs9.2:                                      ; preds = %for.body12.2.land.rhs9.2_crit_edge, %land.rhs9.lr.ph.2.critedge
  %i.075.2 = phi i32 [ 0, %land.rhs9.lr.ph.2.critedge ], [ %inc.2, %for.body12.2.land.rhs9.2_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.075.2, i32 %smax.2)
  %exitcond.not.2 = icmp eq i32 %i.075.2, %smax.2
  br i1 %exitcond.not.2, label %land.rhs9.2.for.inc17.loopexit.2_crit_edge, label %for.body12.2

land.rhs9.2.for.inc17.loopexit.2_crit_edge:       ; preds = %land.rhs9.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc17.loopexit.2

for.body12.2:                                     ; preds = %land.rhs9.2
  %59 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %56, align 4
  %flags.2 = getelementptr %struct.ieee80211_channel, ptr %60, i32 %i.075.2, i32 4
  %61 = ptrtoint ptr %flags.2 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %flags.2, align 4
  %and.2 = and i32 %62, 1
  %tobool14.not.2 = icmp eq i32 %and.2, 0
  %inc.2 = add nuw i32 %i.075.2, 1
  br i1 %tobool14.not.2, label %for.body12.2.for.inc17.loopexit.2_crit_edge, label %for.body12.2.land.rhs9.2_crit_edge

for.body12.2.land.rhs9.2_crit_edge:               ; preds = %for.body12.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs9.2

for.body12.2.for.inc17.loopexit.2_crit_edge:      ; preds = %for.body12.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc17.loopexit.2

for.inc17.loopexit.2:                             ; preds = %for.body12.2.for.inc17.loopexit.2_crit_edge, %land.rhs9.2.for.inc17.loopexit.2_crit_edge
  %63 = xor i1 %exitcond.not.2, true
  br label %for.inc17.2

for.inc17.2:                                      ; preds = %for.inc17.loopexit.2, %for.body.2.for.inc17.2_crit_edge
  %ch_found.3.off0.2 = phi i1 [ %ch_found.3.off0.1, %for.body.2.for.inc17.2_crit_edge ], [ %63, %for.inc17.loopexit.2 ]
  br i1 %ch_found.3.off0.2, label %for.inc17.2.for.end19_crit_edge, label %for.body.3

for.inc17.2.for.end19_crit_edge:                  ; preds = %for.inc17.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end19

for.body.3:                                       ; preds = %for.inc17.2
  %arrayidx.3 = getelementptr %struct.wiphy, ptr %wiphy, i32 0, i32 53, i32 3
  %64 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx.3, align 4
  %tobool4.not.3 = icmp eq ptr %65, null
  br i1 %tobool4.not.3, label %for.body.3.for.inc17.3_crit_edge, label %land.rhs9.lr.ph.3.critedge

for.body.3.for.inc17.3_crit_edge:                 ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc17.3

land.rhs9.lr.ph.3.critedge:                       ; preds = %for.body.3
  %n_channels.3 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %65, i32 0, i32 3
  %66 = ptrtoint ptr %n_channels.3 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %n_channels.3, align 4
  %smax.3 = call i32 @llvm.smax.i32(i32 %67, i32 0)
  br label %land.rhs9.3

land.rhs9.3:                                      ; preds = %for.body12.3.land.rhs9.3_crit_edge, %land.rhs9.lr.ph.3.critedge
  %i.075.3 = phi i32 [ 0, %land.rhs9.lr.ph.3.critedge ], [ %inc.3, %for.body12.3.land.rhs9.3_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.075.3, i32 %smax.3)
  %exitcond.not.3 = icmp eq i32 %i.075.3, %smax.3
  br i1 %exitcond.not.3, label %land.rhs9.3.for.inc17.loopexit.3_crit_edge, label %for.body12.3

land.rhs9.3.for.inc17.loopexit.3_crit_edge:       ; preds = %land.rhs9.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc17.loopexit.3

for.body12.3:                                     ; preds = %land.rhs9.3
  %68 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %65, align 4
  %flags.3 = getelementptr %struct.ieee80211_channel, ptr %69, i32 %i.075.3, i32 4
  %70 = ptrtoint ptr %flags.3 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %flags.3, align 4
  %and.3 = and i32 %71, 1
  %tobool14.not.3 = icmp eq i32 %and.3, 0
  %inc.3 = add nuw i32 %i.075.3, 1
  br i1 %tobool14.not.3, label %for.body12.3.for.inc17.loopexit.3_crit_edge, label %for.body12.3.land.rhs9.3_crit_edge

for.body12.3.land.rhs9.3_crit_edge:               ; preds = %for.body12.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs9.3

for.body12.3.for.inc17.loopexit.3_crit_edge:      ; preds = %for.body12.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc17.loopexit.3

for.inc17.loopexit.3:                             ; preds = %for.body12.3.for.inc17.loopexit.3_crit_edge, %land.rhs9.3.for.inc17.loopexit.3_crit_edge
  %72 = xor i1 %exitcond.not.3, true
  br label %for.inc17.3

for.inc17.3:                                      ; preds = %for.inc17.loopexit.3, %for.body.3.for.inc17.3_crit_edge
  %ch_found.3.off0.3 = phi i1 [ %ch_found.3.off0.2, %for.body.3.for.inc17.3_crit_edge ], [ %72, %for.inc17.loopexit.3 ]
  br i1 %ch_found.3.off0.3, label %for.inc17.3.for.end19_crit_edge, label %for.body.4

for.inc17.3.for.end19_crit_edge:                  ; preds = %for.inc17.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end19

for.body.4:                                       ; preds = %for.inc17.3
  %arrayidx.4 = getelementptr %struct.wiphy, ptr %wiphy, i32 0, i32 53, i32 4
  %73 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %arrayidx.4, align 4
  %tobool4.not.4 = icmp eq ptr %74, null
  br i1 %tobool4.not.4, label %for.body.4.for.inc17.4_crit_edge, label %land.rhs9.lr.ph.4.critedge

for.body.4.for.inc17.4_crit_edge:                 ; preds = %for.body.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc17.4

land.rhs9.lr.ph.4.critedge:                       ; preds = %for.body.4
  %n_channels.4 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %74, i32 0, i32 3
  %75 = ptrtoint ptr %n_channels.4 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %n_channels.4, align 4
  %smax.4 = call i32 @llvm.smax.i32(i32 %76, i32 0)
  br label %land.rhs9.4

land.rhs9.4:                                      ; preds = %for.body12.4.land.rhs9.4_crit_edge, %land.rhs9.lr.ph.4.critedge
  %i.075.4 = phi i32 [ 0, %land.rhs9.lr.ph.4.critedge ], [ %inc.4, %for.body12.4.land.rhs9.4_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.075.4, i32 %smax.4)
  %exitcond.not.4 = icmp eq i32 %i.075.4, %smax.4
  br i1 %exitcond.not.4, label %land.rhs9.4.for.inc17.loopexit.4_crit_edge, label %for.body12.4

land.rhs9.4.for.inc17.loopexit.4_crit_edge:       ; preds = %land.rhs9.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc17.loopexit.4

for.body12.4:                                     ; preds = %land.rhs9.4
  %77 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %74, align 4
  %flags.4 = getelementptr %struct.ieee80211_channel, ptr %78, i32 %i.075.4, i32 4
  %79 = ptrtoint ptr %flags.4 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %flags.4, align 4
  %and.4 = and i32 %80, 1
  %tobool14.not.4 = icmp eq i32 %and.4, 0
  %inc.4 = add nuw i32 %i.075.4, 1
  br i1 %tobool14.not.4, label %for.body12.4.for.inc17.loopexit.4_crit_edge, label %for.body12.4.land.rhs9.4_crit_edge

for.body12.4.land.rhs9.4_crit_edge:               ; preds = %for.body12.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs9.4

for.body12.4.for.inc17.loopexit.4_crit_edge:      ; preds = %for.body12.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc17.loopexit.4

for.inc17.loopexit.4:                             ; preds = %for.body12.4.for.inc17.loopexit.4_crit_edge, %land.rhs9.4.for.inc17.loopexit.4_crit_edge
  %81 = xor i1 %exitcond.not.4, true
  br label %for.inc17.4

for.inc17.4:                                      ; preds = %for.inc17.loopexit.4, %for.body.4.for.inc17.4_crit_edge
  %ch_found.3.off0.4 = phi i1 [ %ch_found.3.off0.3, %for.body.4.for.inc17.4_crit_edge ], [ %81, %for.inc17.loopexit.4 ]
  br i1 %ch_found.3.off0.4, label %for.inc17.4.for.end19_crit_edge, label %for.body.5

for.inc17.4.for.end19_crit_edge:                  ; preds = %for.inc17.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end19

for.body.5:                                       ; preds = %for.inc17.4
  %arrayidx.5 = getelementptr %struct.wiphy, ptr %wiphy, i32 0, i32 53, i32 5
  %82 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %arrayidx.5, align 4
  %tobool4.not.5 = icmp eq ptr %83, null
  br i1 %tobool4.not.5, label %for.body.5.for.end19_crit_edge, label %land.rhs9.lr.ph.5.critedge

for.body.5.for.end19_crit_edge:                   ; preds = %for.body.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end19

land.rhs9.lr.ph.5.critedge:                       ; preds = %for.body.5
  %n_channels.5 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %83, i32 0, i32 3
  %84 = ptrtoint ptr %n_channels.5 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %n_channels.5, align 4
  %smax.5 = call i32 @llvm.smax.i32(i32 %85, i32 0)
  br label %land.rhs9.5

land.rhs9.5:                                      ; preds = %for.body12.5.land.rhs9.5_crit_edge, %land.rhs9.lr.ph.5.critedge
  %i.075.5 = phi i32 [ 0, %land.rhs9.lr.ph.5.critedge ], [ %inc.5, %for.body12.5.land.rhs9.5_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.075.5, i32 %smax.5)
  %exitcond.not.5 = icmp eq i32 %i.075.5, %smax.5
  br i1 %exitcond.not.5, label %land.rhs9.5.for.inc17.loopexit.5_crit_edge, label %for.body12.5

land.rhs9.5.for.inc17.loopexit.5_crit_edge:       ; preds = %land.rhs9.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc17.loopexit.5

for.body12.5:                                     ; preds = %land.rhs9.5
  %86 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %83, align 4
  %flags.5 = getelementptr %struct.ieee80211_channel, ptr %87, i32 %i.075.5, i32 4
  %88 = ptrtoint ptr %flags.5 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %flags.5, align 4
  %and.5 = and i32 %89, 1
  %tobool14.not.5 = icmp eq i32 %and.5, 0
  %inc.5 = add nuw i32 %i.075.5, 1
  br i1 %tobool14.not.5, label %for.body12.5.for.inc17.loopexit.5_crit_edge, label %for.body12.5.land.rhs9.5_crit_edge

for.body12.5.land.rhs9.5_crit_edge:               ; preds = %for.body12.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs9.5

for.body12.5.for.inc17.loopexit.5_crit_edge:      ; preds = %for.body12.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc17.loopexit.5

for.inc17.loopexit.5:                             ; preds = %for.body12.5.for.inc17.loopexit.5_crit_edge, %land.rhs9.5.for.inc17.loopexit.5_crit_edge
  %90 = xor i1 %exitcond.not.5, true
  br label %for.end19

for.end19:                                        ; preds = %for.inc17.loopexit.5, %for.body.5.for.end19_crit_edge, %for.inc17.4.for.end19_crit_edge, %for.inc17.3.for.end19_crit_edge, %for.inc17.2.for.end19_crit_edge, %for.inc17.1.for.end19_crit_edge, %for.inc17.for.end19_crit_edge
  %ch_found.3.off0.lcssa = phi i1 [ %ch_found.3.off0, %for.inc17.for.end19_crit_edge ], [ %ch_found.3.off0.1, %for.inc17.1.for.end19_crit_edge ], [ %ch_found.3.off0.2, %for.inc17.2.for.end19_crit_edge ], [ %ch_found.3.off0.3, %for.inc17.3.for.end19_crit_edge ], [ %ch_found.3.off0.4, %for.inc17.4.for.end19_crit_edge ], [ %ch_found.3.off0.4, %for.body.5.for.end19_crit_edge ], [ %90, %for.inc17.loopexit.5 ]
  br i1 %ch_found.3.off0.lcssa, label %if.then21, label %if.else

if.then21:                                        ; preds = %for.end19
  call void @__sanitizer_cov_trace_pc() #9
  %91 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %3, align 4
  %radio_disabled = getelementptr inbounds %struct.brcms_pub, ptr %92, i32 0, i32 18
  %93 = ptrtoint ptr %radio_disabled to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %radio_disabled, align 4
  %and22 = and i32 %94, -9
  store i32 %and22, ptr %radio_disabled, align 4
  br label %if.end27

if.else:                                          ; preds = %for.end19
  call void @__sanitizer_cov_trace_pc() #9
  %95 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %3, align 4
  %radio_disabled24 = getelementptr inbounds %struct.brcms_pub, ptr %96, i32 0, i32 18
  %97 = ptrtoint ptr %radio_disabled24 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %radio_disabled24, align 4
  %or = or i32 %98, 8
  store i32 %or, ptr %radio_disabled24, align 4
  %hw25 = getelementptr inbounds %struct.brcms_c_info, ptr %3, i32 0, i32 2
  %99 = ptrtoint ptr %hw25 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %hw25, align 4
  %d11core = getelementptr inbounds %struct.brcms_hardware, ptr %100, i32 0, i32 14
  %101 = ptrtoint ptr %d11core to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %d11core, align 4
  %dev = getelementptr inbounds %struct.bcma_device, ptr %102, i32 0, i32 2
  %103 = load ptr, ptr %3, align 4
  %unit = getelementptr inbounds %struct.brcms_pub, ptr %103, i32 0, i32 4
  %104 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %unit, align 4
  %alpha2 = getelementptr inbounds %struct.regulatory_request, ptr %request, i32 0, i32 4
  tail call void (ptr, ptr, ...) @__brcms_err(ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef %105, ptr noundef nonnull @__func__.brcms_reg_notifier, ptr noundef %alpha2) #7
  br label %if.end27

if.end27:                                         ; preds = %if.else, %if.then21
  %106 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %3, align 4
  %_nbands = getelementptr inbounds %struct.brcms_pub, ptr %107, i32 0, i32 11
  %108 = ptrtoint ptr %_nbands to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %_nbands, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %109)
  %cmp29 = icmp ugt i32 %109, 1
  br i1 %cmp29, label %if.end27.if.then32_crit_edge, label %lor.lhs.false

if.end27.if.then32_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then32

lor.lhs.false:                                    ; preds = %if.end27
  %band30 = getelementptr inbounds %struct.brcms_c_info, ptr %3, i32 0, i32 9
  %110 = ptrtoint ptr %band30 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %band30, align 4
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %111, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %113)
  %cmp31 = icmp eq i32 %113, 2
  br i1 %cmp31, label %lor.lhs.false.if.then32_crit_edge, label %lor.lhs.false.if.end37_crit_edge

lor.lhs.false.if.end37_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

lor.lhs.false.if.then32_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then32

if.then32:                                        ; preds = %lor.lhs.false.if.then32_crit_edge, %if.end27.if.then32_crit_edge
  %band33 = getelementptr inbounds %struct.brcms_c_info, ptr %3, i32 0, i32 9
  %114 = ptrtoint ptr %band33 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %band33, align 4
  %pi = getelementptr inbounds %struct.brcms_band, ptr %115, i32 0, i32 6
  %116 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %pi, align 4
  %alpha234 = getelementptr inbounds %struct.regulatory_request, ptr %request, i32 0, i32 4
  %118 = ptrtoint ptr %alpha234 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %alpha234, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 74, i8 %119)
  %cmp.i74 = icmp eq i8 %119, 74
  br i1 %cmp.i74, label %land.rhs.i, label %if.then32.brcms_c_japan_ccode.exit_crit_edge

if.then32.brcms_c_japan_ccode.exit_crit_edge:     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #9
  br label %brcms_c_japan_ccode.exit

land.rhs.i:                                       ; preds = %if.then32
  %arrayidx2.i = getelementptr %struct.regulatory_request, ptr %request, i32 0, i32 4, i32 1
  %120 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %arrayidx2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 80, i8 %121)
  %cmp4.i = icmp eq i8 %121, 80
  br i1 %cmp4.i, label %land.rhs.i.brcms_c_japan_ccode.exit_crit_edge, label %lor.rhs.i

land.rhs.i.brcms_c_japan_ccode.exit_crit_edge:    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %brcms_c_japan_ccode.exit

lor.rhs.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  %122 = add i8 %121, -49
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %122)
  %123 = icmp ult i8 %122, 9
  br label %brcms_c_japan_ccode.exit

brcms_c_japan_ccode.exit:                         ; preds = %lor.rhs.i, %land.rhs.i.brcms_c_japan_ccode.exit_crit_edge, %if.then32.brcms_c_japan_ccode.exit_crit_edge
  %124 = phi i1 [ false, %if.then32.brcms_c_japan_ccode.exit_crit_edge ], [ true, %land.rhs.i.brcms_c_japan_ccode.exit_crit_edge ], [ %123, %lor.rhs.i ]
  tail call void @wlc_phy_chanspec_ch14_widefilter_set(ptr noundef %117, i1 noundef zeroext %124) #7
  br label %if.end37

if.end37:                                         ; preds = %brcms_c_japan_ccode.exit, %lor.lhs.false.if.end37_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wiphy_apply_custom_regulatory(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcms_c_set_nmode(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcms_c_stf_ss_update(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brcms_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @wiphy_to_ieee80211_hw(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @wlc_phy_chanspec_ch14_widefilter_set(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @freq_reg_info(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24}
!llvm.module.flags = !{!25, !26, !27, !28, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/channel.c", i32 417, i32 6}
!2 = !{ptr @cntry_locales, !3, !"cntry_locales", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/channel.c", i32 144, i32 32}
!4 = !{ptr @brcms_regdom_x2, !5, !"brcms_regdom_x2", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/channel.c", i32 75, i32 41}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/channel.c", i32 188, i32 14}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/channel.c", i32 189, i32 14}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/channel.c", i32 195, i32 14}
!12 = distinct !{null, !13, !"g_mimo_5g_table", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/channel.c", i32 140, i32 39}
!14 = !{ptr @locale_11n, !15, !"locale_11n", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/channel.c", i32 135, i32 38}
!16 = distinct !{null, !17, !"g_mimo_2g_table", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/channel.c", i32 128, i32 39}
!18 = !{ptr @locale_bn, !19, !"locale_bn", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/channel.c", i32 119, i32 38}
!20 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/channel.c", i32 609, i32 3}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmsmac/channel.c", i32 727, i32 3}
!24 = !{ptr @__func__.brcms_reg_notifier, !23, !"<string literal>", i1 false, i1 false}
!25 = !{i32 1, !"wchar_size", i32 2}
!26 = !{i32 1, !"min_enum_size", i32 4}
!27 = !{i32 8, !"branch-target-enforcement", i32 0}
!28 = !{i32 8, !"sign-return-address", i32 0}
!29 = !{i32 8, !"sign-return-address-all", i32 0}
!30 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!31 = !{i32 7, !"uwtable", i32 1}
!32 = !{i32 7, !"frame-pointer", i32 2}
!33 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!34 = !{!"branch_weights", i32 1, i32 2000}
!35 = !{i8 0, i8 2}
